diagnostic(off, derivative_uniformity);

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
}

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

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

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

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1048 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat54 : f32;

@group(1) @binding(5) var<uniform> x_2504 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu54 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati54 : i32;

@group(1) @binding(1) var<uniform> x_3014 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_LinearClamp : sampler;

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
  var x_2455 : f32;
  var x_2587 : f32;
  var x_2598 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3143 : f32;
  var x_3153 : f32;
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
  var x_4724 : f32;
  var x_4737 : f32;
  var x_4785 : f32;
  var x_4796 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = x_58.x_MaskMapRemapScale0;
  let x_69 : vec4<f32> = x_58.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_62.x, x_62.y, x_62.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_69.x, x_69.y, x_69.w));
  let x_76 : vec4<f32> = x_58.x_MaskMapRemapScale1;
  let x_81 : vec4<f32> = x_58.x_MaskMapRemapOffset1;
  let x_83 : vec3<f32> = ((vec3<f32>(x_76.x, x_76.y, x_76.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_81.x, x_81.y, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = x_58.x_MaskMapRemapScale2;
  let x_94 : vec4<f32> = x_58.x_MaskMapRemapOffset2;
  let x_96 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.y, x_89.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_94.x, x_94.y, x_94.w));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_102 : vec4<f32> = x_58.x_MaskMapRemapScale3;
  let x_107 : vec4<f32> = x_58.x_MaskMapRemapOffset3;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.w, x_102.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_107.x, x_107.w, x_107.y));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_115 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_119 : vec2<f32> = (vec2<f32>(x_115.z, x_115.w) + vec2<f32>(-1.0f, -1.0f));
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  let x_124 : vec4<f32> = u_xlat4;
  let x_128 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(0.5f, 0.5f));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat4;
  let x_134 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_136 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_134.x, x_134.y));
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_144 : vec4<f32> = u_xlat4;
  let x_147 : f32 = x_28.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat4 = x_148;
  let x_150 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_150, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_164 : f32 = x_28.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat5 = x_165;
  let x_171 : vec4<f32> = vs_TEXCOORD1;
  let x_174 : f32 = x_28.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat6 = x_175;
  let x_182 : vec4<f32> = vs_TEXCOORD2;
  let x_185 : f32 = x_28.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_182.x, x_182.y), x_185);
  u_xlat7 = x_186;
  let x_192 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : f32 = x_28.x_GlobalMipBias.x;
  let x_196 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_192.z, x_192.w), x_195);
  u_xlat8 = x_196;
  let x_200 : f32 = u_xlat5.w;
  u_xlat9.x = x_200;
  let x_203 : f32 = u_xlat6.w;
  u_xlat9.y = x_203;
  let x_207 : f32 = u_xlat7.w;
  u_xlat9.z = x_207;
  let x_211 : f32 = u_xlat8.w;
  u_xlat9.w = x_211;
  let x_214 : vec4<f32> = u_xlat9;
  let x_217 : f32 = x_58.x_Smoothness0;
  let x_220 : f32 = x_58.x_Smoothness1;
  let x_223 : f32 = x_58.x_Smoothness2;
  let x_226 : f32 = x_58.x_Smoothness3;
  u_xlat10 = (x_214 * vec4<f32>(x_217, x_220, x_223, x_226));
  let x_233 : f32 = x_58.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_233);
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_236) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat9;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_239 + -(x_240));
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_243 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_247, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_251 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_251 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_255);
  let x_258 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_258 + -(x_259));
  let x_264 : f32 = u_xlat12.x;
  let x_267 : f32 = x_58.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.y;
  let x_274 : f32 = x_58.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_271 * x_274);
  let x_278 : f32 = u_xlat12.z;
  let x_281 : f32 = x_58.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_278 * x_281);
  let x_285 : f32 = u_xlat12.w;
  let x_288 : f32 = x_58.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_285 * x_288);
  let x_291 : vec4<f32> = u_xlat11;
  let x_292 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_291 + x_292);
  let x_294 : bool = u_xlatb79;
  let x_295 : vec4<f32> = u_xlat11;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_296, x_295, vec4<bool>(x_294, x_294, x_294, x_294));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_301, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_305 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_305);
  let x_307 : bool = u_xlatb80;
  if (((select(0i, 1i, x_307) * -1i) != 0i)) {
    discard;
  }
  let x_314 : f32 = u_xlat79;
  u_xlat79 = (x_314 + 0.00006103515625f);
  let x_317 : vec4<f32> = u_xlat4;
  let x_318 : f32 = u_xlat79;
  u_xlat4 = (x_317 / vec4<f32>(x_318, x_318, x_318, x_318));
  let x_321 : vec4<f32> = u_xlat4;
  let x_324 : vec4<f32> = x_58.x_DiffuseRemapScale0;
  let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_58.x_DiffuseRemapScale1;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat12;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec4<f32> = u_xlat11;
  let x_349 : vec4<f32> = u_xlat6;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : vec4<f32> = x_58.x_DiffuseRemapScale2;
  let x_359 : vec3<f32> = (vec3<f32>(x_354.z, x_354.z, x_354.z) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat5;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat4;
  let x_375 : vec4<f32> = x_58.x_DiffuseRemapScale3;
  let x_377 : vec3<f32> = (vec3<f32>(x_372.w, x_372.w, x_372.w) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat8;
  let x_382 : vec4<f32> = u_xlat6;
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.y, x_382.z)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_395 : vec4<f32> = vs_TEXCOORD1;
  let x_398 : f32 = x_28.x_GlobalMipBias.x;
  let x_399 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_395.x, x_395.y), x_398);
  let x_400 : vec3<f32> = vec3<f32>(x_399.x, x_399.y, x_399.w);
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : f32 = u_xlat6.x;
  let x_406 : f32 = u_xlat6.z;
  u_xlat6.x = (x_404 * x_406);
  let x_409 : vec4<f32> = u_xlat6;
  let x_414 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_417.x, x_417.y), vec2<f32>(x_419.x, x_419.y));
  let x_422 : f32 = u_xlat79;
  u_xlat79 = min(x_422, 1.0f);
  let x_424 : f32 = u_xlat79;
  u_xlat79 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_427);
  let x_429 : f32 = u_xlat79;
  u_xlat7.z = max(x_429, 0.0000000000000001f);
  let x_433 : vec4<f32> = u_xlat6;
  let x_436 : f32 = x_58.x_NormalScale0;
  let x_438 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_436, x_436));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_445 : vec4<f32> = vs_TEXCOORD1;
  let x_448 : f32 = x_28.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_445.z, x_445.w), x_448);
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.w);
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat6.x;
  let x_456 : f32 = u_xlat6.z;
  u_xlat6.x = (x_454 * x_456);
  let x_459 : vec4<f32> = u_xlat6;
  let x_462 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat6;
  let x_467 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_465.x, x_465.y), vec2<f32>(x_467.x, x_467.y));
  let x_470 : f32 = u_xlat79;
  u_xlat79 = min(x_470, 1.0f);
  let x_472 : f32 = u_xlat79;
  u_xlat79 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_475);
  let x_477 : f32 = u_xlat79;
  u_xlat8.z = max(x_477, 0.0000000000000001f);
  let x_480 : vec4<f32> = u_xlat6;
  let x_483 : f32 = x_58.x_NormalScale1;
  let x_485 : f32 = x_58.x_NormalScale1;
  let x_486 : vec2<f32> = vec2<f32>(x_483, x_485);
  let x_490 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_486.x, x_486.y));
  let x_491 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec4<f32> = u_xlat8;
  let x_497 : vec3<f32> = (vec3<f32>(x_493.y, x_493.y, x_493.y) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : vec4<f32> = u_xlat6;
  let x_507 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_514 : vec4<f32> = vs_TEXCOORD2;
  let x_517 : f32 = x_28.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_514.x, x_514.y), x_517);
  let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.w);
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat7.z;
  u_xlat7.x = (x_523 * x_525);
  let x_528 : vec4<f32> = u_xlat7;
  let x_531 : vec2<f32> = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat7;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_534.x, x_534.y), vec2<f32>(x_536.x, x_536.y));
  let x_539 : f32 = u_xlat79;
  u_xlat79 = min(x_539, 1.0f);
  let x_541 : f32 = u_xlat79;
  u_xlat79 = (-(x_541) + 1.0f);
  let x_544 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_544);
  let x_546 : f32 = u_xlat79;
  u_xlat8.z = max(x_546, 0.0000000000000001f);
  let x_549 : vec4<f32> = u_xlat7;
  let x_553 : f32 = x_58.x_NormalScale2;
  let x_555 : f32 = x_58.x_NormalScale2;
  let x_556 : vec2<f32> = vec2<f32>(x_553, x_555);
  let x_560 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_556.x, x_556.y));
  let x_561 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec4<f32> = u_xlat8;
  let x_568 : vec4<f32> = u_xlat6;
  let x_570 : vec3<f32> = ((vec3<f32>(x_563.z, x_563.z, x_563.z) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_577 : vec4<f32> = vs_TEXCOORD2;
  let x_580 : f32 = x_28.x_GlobalMipBias.x;
  let x_581 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_577.z, x_577.w), x_580);
  let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.w);
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = u_xlat7.x;
  let x_588 : f32 = u_xlat7.z;
  u_xlat7.x = (x_586 * x_588);
  let x_591 : vec4<f32> = u_xlat7;
  let x_594 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat7;
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_597.x, x_597.y), vec2<f32>(x_599.x, x_599.y));
  let x_602 : f32 = u_xlat79;
  u_xlat79 = min(x_602, 1.0f);
  let x_604 : f32 = u_xlat79;
  u_xlat79 = (-(x_604) + 1.0f);
  let x_607 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_607);
  let x_609 : f32 = u_xlat79;
  u_xlat8.z = max(x_609, 0.0000000000000001f);
  let x_612 : vec4<f32> = u_xlat7;
  let x_616 : f32 = x_58.x_NormalScale3;
  let x_618 : f32 = x_58.x_NormalScale3;
  let x_619 : vec2<f32> = vec2<f32>(x_616, x_618);
  let x_623 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(x_619.x, x_619.y));
  let x_624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat8;
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.w, x_626.w, x_626.w) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : f32 = u_xlat6.z;
  u_xlat6.w = (x_637 + 0.00000999999974737875f);
  let x_641 : vec4<f32> = u_xlat6;
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_641.x, x_641.y, x_641.w), vec3<f32>(x_643.x, x_643.y, x_643.w));
  let x_646 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat79;
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.w));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = x_58.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_656;
  let x_659 : f32 = x_58.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_659;
  let x_662 : f32 = x_58.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_662;
  let x_665 : f32 = x_58.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_665;
  let x_668 : f32 = x_58.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_668;
  let x_671 : f32 = x_58.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_671;
  let x_674 : f32 = x_58.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_674;
  let x_677 : f32 = x_58.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_677;
  let x_679 : vec4<f32> = u_xlat7;
  let x_680 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_679 + x_680);
  let x_683 : f32 = u_xlat0.z;
  u_xlat8.x = x_683;
  let x_686 : f32 = u_xlat1.z;
  u_xlat8.y = x_686;
  let x_689 : f32 = u_xlat2.z;
  u_xlat8.z = x_689;
  let x_692 : f32 = u_xlat3.y;
  u_xlat8.w = x_692;
  let x_694 : vec4<f32> = u_xlat9;
  let x_697 : f32 = x_58.x_Smoothness0;
  let x_699 : f32 = x_58.x_Smoothness1;
  let x_701 : f32 = x_58.x_Smoothness2;
  let x_703 : f32 = x_58.x_Smoothness3;
  let x_706 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_694) * vec4<f32>(x_697, x_699, x_701, x_703)) + x_706);
  let x_710 : f32 = x_58.x_LayerHasMask0;
  let x_713 : f32 = x_58.x_LayerHasMask1;
  let x_716 : f32 = x_58.x_LayerHasMask2;
  let x_719 : f32 = x_58.x_LayerHasMask3;
  let x_721 : vec4<f32> = u_xlat8;
  let x_723 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_710, x_713, x_716, x_719) * x_721) + x_723);
  let x_726 : vec4<f32> = u_xlat4;
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_726, x_727);
  let x_730 : f32 = u_xlat0.x;
  u_xlat8.x = x_730;
  let x_733 : f32 = u_xlat1.x;
  u_xlat8.y = x_733;
  let x_736 : f32 = u_xlat2.x;
  u_xlat8.z = x_736;
  let x_739 : f32 = u_xlat3.x;
  u_xlat8.w = x_739;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_58.x_Metallic0;
  let x_747 : f32 = x_58.x_Metallic1;
  let x_750 : f32 = x_58.x_Metallic2;
  let x_753 : f32 = x_58.x_Metallic3;
  u_xlat8 = (x_741 + -(vec4<f32>(x_744, x_747, x_750, x_753)));
  let x_758 : f32 = x_58.x_LayerHasMask0;
  let x_760 : f32 = x_58.x_LayerHasMask1;
  let x_762 : f32 = x_58.x_LayerHasMask2;
  let x_764 : f32 = x_58.x_LayerHasMask3;
  let x_766 : vec4<f32> = u_xlat8;
  let x_769 : f32 = x_58.x_Metallic0;
  let x_771 : f32 = x_58.x_Metallic1;
  let x_773 : f32 = x_58.x_Metallic2;
  let x_775 : f32 = x_58.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_758, x_760, x_762, x_764) * x_766) + vec4<f32>(x_769, x_771, x_773, x_775));
  let x_778 : vec4<f32> = u_xlat4;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_778, x_779);
  let x_783 : f32 = u_xlat0.y;
  u_xlat3.x = x_783;
  let x_786 : f32 = u_xlat1.y;
  u_xlat3.y = x_786;
  let x_789 : f32 = u_xlat2.y;
  u_xlat3.z = x_789;
  let x_791 : vec4<f32> = u_xlat7;
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_791) + x_793);
  let x_796 : f32 = x_58.x_LayerHasMask0;
  let x_798 : f32 = x_58.x_LayerHasMask1;
  let x_800 : f32 = x_58.x_LayerHasMask2;
  let x_802 : f32 = x_58.x_LayerHasMask3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_796, x_798, x_800, x_802) * x_804) + x_806);
  let x_809 : vec4<f32> = u_xlat4;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_809, x_810);
  let x_812 : vec4<f32> = u_xlat6;
  let x_815 : vec4<f32> = vs_TEXCOORD5;
  let x_817 : vec3<f32> = (vec3<f32>(x_812.y, x_812.y, x_812.y) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD4;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.x, x_820.x) * -(vec3<f32>(x_823.x, x_823.y, x_823.z))) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat6;
  let x_835 : vec4<f32> = vs_TEXCOORD3;
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec3<f32> = ((vec3<f32>(x_832.z, x_832.z, x_832.z) * vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_848);
  let x_850 : f32 = u_xlat79;
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_859 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_859 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = vs_TEXCOORD7;
  let x_878 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres1;
  let x_881 : vec3<f32> = (x_876 + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = vs_TEXCOORD7;
  let x_886 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres2;
  let x_889 : vec3<f32> = (x_884 + -(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = vs_TEXCOORD7;
  let x_894 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres3;
  let x_897 : vec3<f32> = (x_892 + -(vec3<f32>(x_894.x, x_894.y, x_894.z)));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_906 : vec4<f32> = u_xlat3;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_912 : vec4<f32> = u_xlat4;
  let x_914 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_918 : vec4<f32> = u_xlat6;
  let x_920 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_926 : vec4<f32> = u_xlat2;
  let x_928 : vec4<f32> = x_868.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_926 < x_928);
  let x_931 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_931);
  let x_935 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_935);
  let x_939 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_939);
  let x_943 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_943);
  let x_947 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_947);
  let x_952 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_952);
  let x_956 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_956);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat3;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) + vec3<f32>(x_961.y, x_961.z, x_961.w));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = max(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_970.x, x_969.x, x_969.y, x_969.z);
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_978) + 4.0f);
  let x_985 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_985);
  let x_989 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_989) << bitcast<u32>(2i));
  let x_993 : vec3<f32> = vs_TEXCOORD7;
  let x_995 : i32 = u_xlati2;
  let x_998 : i32 = u_xlati2;
  let x_1002 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_995 + 1i) / 4i)][((x_998 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_993.y, x_993.y, x_993.y) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : i32 = u_xlati2;
  let x_1007 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1005 / 4i)][(x_1007 % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.x, x_1012.x, x_1012.x)) + x_1015);
  let x_1017 : i32 = u_xlati2;
  let x_1020 : i32 = u_xlati2;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + x_1029);
  let x_1031 : vec3<f32> = u_xlat28;
  let x_1032 : i32 = u_xlati2;
  let x_1035 : i32 = u_xlati2;
  let x_1039 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1032 + 3i) / 4i)][((x_1035 + 3i) % 4i)];
  let x_1041 : vec3<f32> = (x_1031 + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  u_xlat1.w = 1.0f;
  let x_1050 : vec4<f32> = x_1048.unity_SHAr;
  let x_1051 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1050, x_1051);
  let x_1055 : vec4<f32> = x_1048.unity_SHAg;
  let x_1056 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1055, x_1056);
  let x_1060 : vec4<f32> = x_1048.unity_SHAb;
  let x_1061 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1060, x_1061);
  let x_1064 : vec4<f32> = u_xlat1;
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1064.y, x_1064.z, x_1064.z, x_1064.x) * vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.z));
  let x_1070 : vec4<f32> = x_1048.unity_SHBr;
  let x_1071 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1070, x_1071);
  let x_1075 : vec4<f32> = x_1048.unity_SHBg;
  let x_1076 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1075, x_1076);
  let x_1080 : vec4<f32> = x_1048.unity_SHBb;
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1080, x_1081);
  let x_1085 : f32 = u_xlat1.y;
  let x_1087 : f32 = u_xlat1.y;
  u_xlat79 = (x_1085 * x_1087);
  let x_1090 : f32 = u_xlat1.x;
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat79;
  u_xlat79 = ((x_1090 * x_1092) + -(x_1094));
  let x_1099 : vec4<f32> = x_1048.unity_SHC;
  let x_1101 : f32 = u_xlat79;
  let x_1104 : vec4<f32> = u_xlat6;
  let x_1106 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101, x_1101, x_1101)) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat3;
  let x_1111 : vec4<f32> = u_xlat4;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) + vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1116 : vec4<f32> = u_xlat3;
  let x_1118 : vec3<f32> = max(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1122 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1122) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1128 : f32 = u_xlat79;
  u_xlat80 = (-(x_1128) + 1.0f);
  let x_1131 : f32 = u_xlat79;
  let x_1133 : vec4<f32> = u_xlat5;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat5;
  let x_1142 : vec3<f32> = (vec3<f32>(x_1138.x, x_1138.y, x_1138.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1143 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec3<f32> = u_xlat0;
  let x_1147 : vec4<f32> = u_xlat5;
  let x_1152 : vec3<f32> = ((vec3<f32>(x_1145.x, x_1145.x, x_1145.x) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1155) + 1.0f);
  let x_1160 : f32 = u_xlat0.x;
  let x_1162 : f32 = u_xlat0.x;
  u_xlat79 = (x_1160 * x_1162);
  let x_1164 : f32 = u_xlat79;
  u_xlat79 = max(x_1164, 0.0078125f);
  let x_1168 : f32 = u_xlat79;
  let x_1169 : f32 = u_xlat79;
  u_xlat81 = (x_1168 * x_1169);
  let x_1171 : f32 = u_xlat52;
  let x_1172 : f32 = u_xlat80;
  u_xlat52 = (x_1171 + x_1172);
  let x_1174 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1174, 0.0f, 1.0f);
  let x_1176 : f32 = u_xlat79;
  u_xlat80 = ((x_1176 * 4.0f) + 2.0f);
  let x_1179 : f32 = u_xlat26;
  u_xlat26 = min(x_1179, 1.0f);
  let x_1183 : f32 = x_868.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_1183);
  let x_1185 : bool = u_xlatb82;
  if (x_1185) {
    let x_1189 : f32 = x_868.x_MainLightShadowParams.y;
    u_xlatb82 = (x_1189 == 1.0f);
    let x_1191 : bool = u_xlatb82;
    if (x_1191) {
      let x_1194 : vec4<f32> = u_xlat2;
      let x_1197 : vec4<f32> = x_868.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) + x_1197);
      let x_1201 : vec4<f32> = u_xlat6;
      let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
      let x_1204 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
      let x_1216 : vec3<f32> = txVec0;
      let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
      u_xlat7.x = x_1218;
      let x_1221 : vec4<f32> = u_xlat6;
      let x_1222 : vec2<f32> = vec2<f32>(x_1221.z, x_1221.w);
      let x_1224 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
      let x_1231 : vec3<f32> = txVec1;
      let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1231.xy, x_1231.z);
      u_xlat7.y = x_1233;
      let x_1235 : vec4<f32> = u_xlat2;
      let x_1238 : vec4<f32> = x_868.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y) + x_1238);
      let x_1241 : vec4<f32> = u_xlat6;
      let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
      let x_1244 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
      let x_1251 : vec3<f32> = txVec2;
      let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
      u_xlat7.z = x_1253;
      let x_1256 : vec4<f32> = u_xlat6;
      let x_1257 : vec2<f32> = vec2<f32>(x_1256.z, x_1256.w);
      let x_1259 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
      let x_1266 : vec3<f32> = txVec3;
      let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
      u_xlat7.w = x_1268;
      let x_1271 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_1271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1278 : f32 = x_868.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1278 == 2.0f);
      let x_1280 : bool = u_xlatb83;
      if (x_1280) {
        let x_1283 : vec4<f32> = u_xlat2;
        let x_1286 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1289 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(x_1286.z, x_1286.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1290 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1294 : vec2<f32> = floor(vec2<f32>(x_1292.x, x_1292.y));
        let x_1295 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1299 : vec4<f32> = u_xlat2;
        let x_1302 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.z, x_1302.w)) + -(vec2<f32>(x_1305.x, x_1305.y)));
        let x_1309 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1309.x, x_1309.x, x_1309.y, x_1309.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1313 : vec4<f32> = u_xlat7;
        let x_1315 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1313.x, x_1313.x, x_1313.z, x_1313.z) * vec4<f32>(x_1315.x, x_1315.x, x_1315.z, x_1315.z));
        let x_1318 : vec4<f32> = u_xlat8;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1318.y, x_1318.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1323.w);
        let x_1325 : vec4<f32> = u_xlat8;
        let x_1328 : vec2<f32> = u_xlat58;
        let x_1330 : vec2<f32> = ((vec2<f32>(x_1325.x, x_1325.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1328));
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        let x_1334 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1334) + vec2<f32>(1.0f, 1.0f));
        let x_1338 : vec2<f32> = u_xlat58;
        let x_1340 : vec2<f32> = min(x_1338, vec2<f32>(0.0f, 0.0f));
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1349 : vec2<f32> = u_xlat60;
        let x_1350 : vec2<f32> = ((-(vec2<f32>(x_1343.x, x_1343.y)) * vec2<f32>(x_1346.x, x_1346.y)) + x_1349);
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1353, vec2<f32>(0.0f, 0.0f));
        let x_1355 : vec2<f32> = u_xlat58;
        let x_1357 : vec2<f32> = u_xlat58;
        let x_1359 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1355) * x_1357) + vec2<f32>(x_1359.y, x_1359.w));
        let x_1362 : vec4<f32> = u_xlat9;
        let x_1364 : vec2<f32> = (vec2<f32>(x_1362.x, x_1362.y) + vec2<f32>(1.0f, 1.0f));
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1367 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1367 + vec2<f32>(1.0f, 1.0f));
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1373 : vec2<f32> = (vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1374 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
        let x_1376 : vec2<f32> = u_xlat60;
        let x_1377 : vec2<f32> = (x_1376 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1378 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
        let x_1380 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1383 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
        let x_1385 : vec2<f32> = u_xlat58;
        let x_1386 : vec2<f32> = (x_1385 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1387 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
        let x_1389 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1389.y, x_1389.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1393 : f32 = u_xlat9.x;
        u_xlat10.z = x_1393;
        let x_1396 : f32 = u_xlat58.x;
        u_xlat10.w = x_1396;
        let x_1399 : f32 = u_xlat11.x;
        u_xlat8.z = x_1399;
        let x_1402 : f32 = u_xlat7.x;
        u_xlat8.w = x_1402;
        let x_1404 : vec4<f32> = u_xlat8;
        let x_1406 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1404.z, x_1404.w, x_1404.x, x_1404.z) + vec4<f32>(x_1406.z, x_1406.w, x_1406.x, x_1406.z));
        let x_1410 : f32 = u_xlat10.y;
        u_xlat9.z = x_1410;
        let x_1413 : f32 = u_xlat58.y;
        u_xlat9.w = x_1413;
        let x_1416 : f32 = u_xlat8.y;
        u_xlat11.z = x_1416;
        let x_1419 : f32 = u_xlat7.z;
        u_xlat11.w = x_1419;
        let x_1421 : vec4<f32> = u_xlat9;
        let x_1423 : vec4<f32> = u_xlat11;
        let x_1425 : vec3<f32> = (vec3<f32>(x_1421.z, x_1421.y, x_1421.w) + vec3<f32>(x_1423.z, x_1423.y, x_1423.w));
        let x_1426 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1430 : vec4<f32> = u_xlat12;
        let x_1432 : vec3<f32> = (vec3<f32>(x_1428.x, x_1428.z, x_1428.w) / vec3<f32>(x_1430.z, x_1430.w, x_1430.y));
        let x_1433 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
        let x_1435 : vec4<f32> = u_xlat8;
        let x_1441 : vec3<f32> = (vec3<f32>(x_1435.x, x_1435.y, x_1435.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat11;
        let x_1446 : vec4<f32> = u_xlat7;
        let x_1448 : vec3<f32> = (vec3<f32>(x_1444.z, x_1444.y, x_1444.w) / vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1453 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1454 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat8;
        let x_1459 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1461 : vec3<f32> = (vec3<f32>(x_1456.y, x_1456.x, x_1456.z) * vec3<f32>(x_1459.x, x_1459.x, x_1459.x));
        let x_1462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1467 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1469 : vec3<f32> = (vec3<f32>(x_1464.x, x_1464.y, x_1464.z) * vec3<f32>(x_1467.y, x_1467.y, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
        let x_1473 : f32 = u_xlat9.x;
        u_xlat8.w = x_1473;
        let x_1475 : vec4<f32> = u_xlat6;
        let x_1478 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1481 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y) * vec4<f32>(x_1478.x, x_1478.y, x_1478.x, x_1478.y)) + vec4<f32>(x_1481.y, x_1481.w, x_1481.x, x_1481.w));
        let x_1484 : vec4<f32> = u_xlat6;
        let x_1487 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(x_1487.x, x_1487.y)) + vec2<f32>(x_1490.z, x_1490.w));
        let x_1494 : f32 = u_xlat8.y;
        u_xlat9.w = x_1494;
        let x_1496 : vec4<f32> = u_xlat9;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.y, x_1496.z);
        let x_1498 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1498.x, x_1497.x, x_1498.z, x_1497.y);
        let x_1500 : vec4<f32> = u_xlat6;
        let x_1503 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1506 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y) * vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y)) + vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1506.y));
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y) * vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y)) + vec4<f32>(x_1515.w, x_1515.y, x_1515.w, x_1515.z));
        let x_1518 : vec4<f32> = u_xlat6;
        let x_1521 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y) * vec4<f32>(x_1521.x, x_1521.y, x_1521.x, x_1521.y)) + vec4<f32>(x_1524.x, x_1524.w, x_1524.z, x_1524.w));
        let x_1527 : vec4<f32> = u_xlat7;
        let x_1529 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1527.x, x_1527.x, x_1527.x, x_1527.y) * vec4<f32>(x_1529.z, x_1529.w, x_1529.y, x_1529.z));
        let x_1533 : vec4<f32> = u_xlat7;
        let x_1535 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1533.y, x_1533.y, x_1533.z, x_1533.z) * x_1535);
        let x_1539 : f32 = u_xlat7.z;
        let x_1541 : f32 = u_xlat12.y;
        u_xlat83 = (x_1539 * x_1541);
        let x_1544 : vec4<f32> = u_xlat10;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
        let x_1547 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec4;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1554.xy, x_1554.z);
        u_xlat6.x = x_1556;
        let x_1559 : vec4<f32> = u_xlat10;
        let x_1560 : vec2<f32> = vec2<f32>(x_1559.z, x_1559.w);
        let x_1562 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1570 : vec3<f32> = txVec5;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat32 = x_1572;
        let x_1573 : f32 = u_xlat32;
        let x_1575 : f32 = u_xlat13.y;
        u_xlat32 = (x_1573 * x_1575);
        let x_1578 : f32 = u_xlat13.x;
        let x_1580 : f32 = u_xlat6.x;
        let x_1582 : f32 = u_xlat32;
        u_xlat6.x = ((x_1578 * x_1580) + x_1582);
        let x_1586 : vec2<f32> = u_xlat58;
        let x_1588 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec6;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1595.xy, x_1595.z);
        u_xlat32 = x_1597;
        let x_1599 : f32 = u_xlat13.z;
        let x_1600 : f32 = u_xlat32;
        let x_1603 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1599 * x_1600) + x_1603);
        let x_1607 : vec4<f32> = u_xlat9;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.x, x_1607.y);
        let x_1610 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec7;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1617.xy, x_1617.z);
        u_xlat32 = x_1619;
        let x_1621 : f32 = u_xlat13.w;
        let x_1622 : f32 = u_xlat32;
        let x_1625 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1621 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat11;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec8;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat32 = x_1641;
        let x_1643 : f32 = u_xlat14.x;
        let x_1644 : f32 = u_xlat32;
        let x_1647 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1643 * x_1644) + x_1647);
        let x_1651 : vec4<f32> = u_xlat11;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec9;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
        u_xlat32 = x_1663;
        let x_1665 : f32 = u_xlat14.y;
        let x_1666 : f32 = u_xlat32;
        let x_1669 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1665 * x_1666) + x_1669);
        let x_1673 : vec4<f32> = u_xlat9;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.z, x_1673.w);
        let x_1676 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec10;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat32 = x_1685;
        let x_1687 : f32 = u_xlat14.z;
        let x_1688 : f32 = u_xlat32;
        let x_1691 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1687 * x_1688) + x_1691);
        let x_1695 : vec4<f32> = u_xlat8;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.x, x_1695.y);
        let x_1698 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec11;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1705.xy, x_1705.z);
        u_xlat32 = x_1707;
        let x_1709 : f32 = u_xlat14.w;
        let x_1710 : f32 = u_xlat32;
        let x_1713 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1709 * x_1710) + x_1713);
        let x_1717 : vec4<f32> = u_xlat8;
        let x_1718 : vec2<f32> = vec2<f32>(x_1717.z, x_1717.w);
        let x_1720 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec12;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1727.xy, x_1727.z);
        u_xlat32 = x_1729;
        let x_1730 : f32 = u_xlat83;
        let x_1731 : f32 = u_xlat32;
        let x_1734 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1730 * x_1731) + x_1734);
      } else {
        let x_1737 : vec4<f32> = u_xlat2;
        let x_1740 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1743 : vec2<f32> = ((vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(x_1740.z, x_1740.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1744 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        let x_1746 : vec4<f32> = u_xlat6;
        let x_1748 : vec2<f32> = floor(vec2<f32>(x_1746.x, x_1746.y));
        let x_1749 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
        let x_1751 : vec4<f32> = u_xlat2;
        let x_1754 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(x_1754.z, x_1754.w)) + -(vec2<f32>(x_1757.x, x_1757.y)));
        let x_1761 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1761.x, x_1761.x, x_1761.y, x_1761.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1766 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1764.x, x_1764.x, x_1764.z, x_1764.z) * vec4<f32>(x_1766.x, x_1766.x, x_1766.z, x_1766.z));
        let x_1769 : vec4<f32> = u_xlat8;
        let x_1773 : vec2<f32> = (vec2<f32>(x_1769.y, x_1769.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1774 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1774.x, x_1773.x, x_1774.z, x_1773.y);
        let x_1776 : vec4<f32> = u_xlat8;
        let x_1779 : vec2<f32> = u_xlat58;
        let x_1781 : vec2<f32> = ((vec2<f32>(x_1776.x, x_1776.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1779));
        let x_1782 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1781.x, x_1782.y, x_1781.y, x_1782.w);
        let x_1784 : vec2<f32> = u_xlat58;
        let x_1786 : vec2<f32> = (-(x_1784) + vec2<f32>(1.0f, 1.0f));
        let x_1787 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
        let x_1789 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1789, vec2<f32>(0.0f, 0.0f));
        let x_1791 : vec2<f32> = u_xlat60;
        let x_1793 : vec2<f32> = u_xlat60;
        let x_1795 : vec4<f32> = u_xlat8;
        let x_1797 : vec2<f32> = ((-(x_1791) * x_1793) + vec2<f32>(x_1795.x, x_1795.y));
        let x_1798 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
        let x_1800 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1800, vec2<f32>(0.0f, 0.0f));
        let x_1803 : vec2<f32> = u_xlat60;
        let x_1805 : vec2<f32> = u_xlat60;
        let x_1807 : vec4<f32> = u_xlat7;
        let x_1809 : vec2<f32> = ((-(x_1803) * x_1805) + vec2<f32>(x_1807.y, x_1807.w));
        let x_1810 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1809.x, x_1810.y, x_1809.y);
        let x_1812 : vec4<f32> = u_xlat8;
        let x_1814 : vec2<f32> = (vec2<f32>(x_1812.x, x_1812.y) + vec2<f32>(2.0f, 2.0f));
        let x_1815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
        let x_1817 : vec3<f32> = u_xlat33;
        let x_1819 : vec2<f32> = (vec2<f32>(x_1817.x, x_1817.z) + vec2<f32>(2.0f, 2.0f));
        let x_1820 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1820.x, x_1819.x, x_1820.z, x_1819.y);
        let x_1823 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1823 * 0.08163200318813323975f);
        let x_1827 : vec4<f32> = u_xlat7;
        let x_1830 : vec3<f32> = (vec3<f32>(x_1827.z, x_1827.x, x_1827.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1831 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);
        let x_1833 : vec4<f32> = u_xlat8;
        let x_1836 : vec2<f32> = (vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1837 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1836.x, x_1836.y, x_1837.z, x_1837.w);
        let x_1840 : f32 = u_xlat11.y;
        u_xlat10.x = x_1840;
        let x_1842 : vec2<f32> = u_xlat58;
        let x_1849 : vec2<f32> = ((vec2<f32>(x_1842.x, x_1842.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1850 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1850.x, x_1849.x, x_1850.z, x_1849.y);
        let x_1852 : vec2<f32> = u_xlat58;
        let x_1856 : vec2<f32> = ((vec2<f32>(x_1852.x, x_1852.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1857 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1856.x, x_1857.y, x_1856.y, x_1857.w);
        let x_1860 : f32 = u_xlat7.x;
        u_xlat8.y = x_1860;
        let x_1863 : f32 = u_xlat9.y;
        u_xlat8.w = x_1863;
        let x_1865 : vec4<f32> = u_xlat8;
        let x_1866 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1865 + x_1866);
        let x_1868 : vec2<f32> = u_xlat58;
        let x_1871 : vec2<f32> = ((vec2<f32>(x_1868.y, x_1868.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1872 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1872.x, x_1871.x, x_1872.z, x_1871.y);
        let x_1874 : vec2<f32> = u_xlat58;
        let x_1877 : vec2<f32> = ((vec2<f32>(x_1874.y, x_1874.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1878 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1877.x, x_1878.y, x_1877.y, x_1878.w);
        let x_1881 : f32 = u_xlat7.y;
        u_xlat9.y = x_1881;
        let x_1883 : vec4<f32> = u_xlat9;
        let x_1884 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1883 + x_1884);
        let x_1886 : vec4<f32> = u_xlat8;
        let x_1887 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1886 / x_1887);
        let x_1889 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1889 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1895 : vec4<f32> = u_xlat9;
        let x_1896 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1895 / x_1896);
        let x_1898 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1898 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1900 : vec4<f32> = u_xlat8;
        let x_1903 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1900.w, x_1900.x, x_1900.y, x_1900.z) * vec4<f32>(x_1903.x, x_1903.x, x_1903.x, x_1903.x));
        let x_1906 : vec4<f32> = u_xlat9;
        let x_1909 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1906.x, x_1906.w, x_1906.y, x_1906.z) * vec4<f32>(x_1909.y, x_1909.y, x_1909.y, x_1909.y));
        let x_1912 : vec4<f32> = u_xlat8;
        let x_1913 : vec3<f32> = vec3<f32>(x_1912.y, x_1912.z, x_1912.w);
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1913.x, x_1914.y, x_1913.y, x_1913.z);
        let x_1917 : f32 = u_xlat9.x;
        u_xlat11.y = x_1917;
        let x_1919 : vec4<f32> = u_xlat6;
        let x_1922 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1925 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1919.x, x_1919.y, x_1919.x, x_1919.y) * vec4<f32>(x_1922.x, x_1922.y, x_1922.x, x_1922.y)) + vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1925.y));
        let x_1928 : vec4<f32> = u_xlat6;
        let x_1931 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1934 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1928.x, x_1928.y) * vec2<f32>(x_1931.x, x_1931.y)) + vec2<f32>(x_1934.w, x_1934.y));
        let x_1938 : f32 = u_xlat11.y;
        u_xlat8.y = x_1938;
        let x_1941 : f32 = u_xlat9.z;
        u_xlat11.y = x_1941;
        let x_1943 : vec4<f32> = u_xlat6;
        let x_1946 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1949 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1943.x, x_1943.y, x_1943.x, x_1943.y) * vec4<f32>(x_1946.x, x_1946.y, x_1946.x, x_1946.y)) + vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1949.y));
        let x_1952 : vec4<f32> = u_xlat6;
        let x_1955 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1958 : vec4<f32> = u_xlat11;
        let x_1960 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1955.x, x_1955.y)) + vec2<f32>(x_1958.w, x_1958.y));
        let x_1961 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1960.x, x_1960.y, x_1961.z, x_1961.w);
        let x_1964 : f32 = u_xlat11.y;
        u_xlat8.z = x_1964;
        let x_1967 : vec4<f32> = u_xlat6;
        let x_1970 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1973 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1967.x, x_1967.y, x_1967.x, x_1967.y) * vec4<f32>(x_1970.x, x_1970.y, x_1970.x, x_1970.y)) + vec4<f32>(x_1973.x, x_1973.y, x_1973.x, x_1973.z));
        let x_1977 : f32 = u_xlat9.w;
        u_xlat11.y = x_1977;
        let x_1980 : vec4<f32> = u_xlat6;
        let x_1983 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1986 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1980.x, x_1980.y, x_1980.x, x_1980.y) * vec4<f32>(x_1983.x, x_1983.y, x_1983.x, x_1983.y)) + vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1986.y));
        let x_1990 : vec4<f32> = u_xlat6;
        let x_1993 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1996 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1990.x, x_1990.y) * vec2<f32>(x_1993.x, x_1993.y)) + vec2<f32>(x_1996.w, x_1996.y));
        let x_2000 : f32 = u_xlat11.y;
        u_xlat8.w = x_2000;
        let x_2003 : vec4<f32> = u_xlat6;
        let x_2006 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2009 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_2003.x, x_2003.y) * vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(x_2009.x, x_2009.w));
        let x_2012 : vec4<f32> = u_xlat11;
        let x_2013 : vec3<f32> = vec3<f32>(x_2012.x, x_2012.z, x_2012.w);
        let x_2014 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2013.x, x_2014.y, x_2013.y, x_2013.z);
        let x_2016 : vec4<f32> = u_xlat6;
        let x_2019 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2022 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2016.x, x_2016.y, x_2016.x, x_2016.y) * vec4<f32>(x_2019.x, x_2019.y, x_2019.x, x_2019.y)) + vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2022.y));
        let x_2026 : vec4<f32> = u_xlat6;
        let x_2029 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2032 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2026.x, x_2026.y) * vec2<f32>(x_2029.x, x_2029.y)) + vec2<f32>(x_2032.w, x_2032.y));
        let x_2036 : f32 = u_xlat8.x;
        u_xlat9.x = x_2036;
        let x_2038 : vec4<f32> = u_xlat6;
        let x_2041 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2044 : vec4<f32> = u_xlat9;
        let x_2046 : vec2<f32> = ((vec2<f32>(x_2038.x, x_2038.y) * vec2<f32>(x_2041.x, x_2041.y)) + vec2<f32>(x_2044.x, x_2044.y));
        let x_2047 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2046.x, x_2046.y, x_2047.z, x_2047.w);
        let x_2050 : vec4<f32> = u_xlat7;
        let x_2052 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2050.x, x_2050.x, x_2050.x, x_2050.x) * x_2052);
        let x_2055 : vec4<f32> = u_xlat7;
        let x_2057 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2055.y, x_2055.y, x_2055.y, x_2055.y) * x_2057);
        let x_2060 : vec4<f32> = u_xlat7;
        let x_2062 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2060.z, x_2060.z, x_2060.z, x_2060.z) * x_2062);
        let x_2064 : vec4<f32> = u_xlat7;
        let x_2066 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2064.w, x_2064.w, x_2064.w, x_2064.w) * x_2066);
        let x_2069 : vec4<f32> = u_xlat12;
        let x_2070 : vec2<f32> = vec2<f32>(x_2069.x, x_2069.y);
        let x_2072 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2070.x, x_2070.y, x_2072);
        let x_2079 : vec3<f32> = txVec13;
        let x_2081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2079.xy, x_2079.z);
        u_xlat83 = x_2081;
        let x_2083 : vec4<f32> = u_xlat12;
        let x_2084 : vec2<f32> = vec2<f32>(x_2083.z, x_2083.w);
        let x_2086 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
        let x_2093 : vec3<f32> = txVec14;
        let x_2095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2093.xy, x_2093.z);
        u_xlat8.x = x_2095;
        let x_2098 : f32 = u_xlat8.x;
        let x_2100 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2098 * x_2100);
        let x_2104 : f32 = u_xlat17.x;
        let x_2105 : f32 = u_xlat83;
        let x_2108 : f32 = u_xlat8.x;
        u_xlat83 = ((x_2104 * x_2105) + x_2108);
        let x_2111 : vec2<f32> = u_xlat58;
        let x_2113 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec15;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2120.xy, x_2120.z);
        u_xlat58.x = x_2122;
        let x_2125 : f32 = u_xlat17.z;
        let x_2127 : f32 = u_xlat58.x;
        let x_2129 : f32 = u_xlat83;
        u_xlat83 = ((x_2125 * x_2127) + x_2129);
        let x_2132 : vec4<f32> = u_xlat15;
        let x_2133 : vec2<f32> = vec2<f32>(x_2132.x, x_2132.y);
        let x_2135 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2133.x, x_2133.y, x_2135);
        let x_2142 : vec3<f32> = txVec16;
        let x_2144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2142.xy, x_2142.z);
        u_xlat58.x = x_2144;
        let x_2147 : f32 = u_xlat17.w;
        let x_2149 : f32 = u_xlat58.x;
        let x_2151 : f32 = u_xlat83;
        u_xlat83 = ((x_2147 * x_2149) + x_2151);
        let x_2154 : vec4<f32> = u_xlat13;
        let x_2155 : vec2<f32> = vec2<f32>(x_2154.x, x_2154.y);
        let x_2157 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2164 : vec3<f32> = txVec17;
        let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2164.xy, x_2164.z);
        u_xlat58.x = x_2166;
        let x_2169 : f32 = u_xlat18.x;
        let x_2171 : f32 = u_xlat58.x;
        let x_2173 : f32 = u_xlat83;
        u_xlat83 = ((x_2169 * x_2171) + x_2173);
        let x_2176 : vec4<f32> = u_xlat13;
        let x_2177 : vec2<f32> = vec2<f32>(x_2176.z, x_2176.w);
        let x_2179 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
        let x_2186 : vec3<f32> = txVec18;
        let x_2188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2186.xy, x_2186.z);
        u_xlat58.x = x_2188;
        let x_2191 : f32 = u_xlat18.y;
        let x_2193 : f32 = u_xlat58.x;
        let x_2195 : f32 = u_xlat83;
        u_xlat83 = ((x_2191 * x_2193) + x_2195);
        let x_2198 : vec4<f32> = u_xlat14;
        let x_2199 : vec2<f32> = vec2<f32>(x_2198.x, x_2198.y);
        let x_2201 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2199.x, x_2199.y, x_2201);
        let x_2208 : vec3<f32> = txVec19;
        let x_2210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2208.xy, x_2208.z);
        u_xlat58.x = x_2210;
        let x_2213 : f32 = u_xlat18.z;
        let x_2215 : f32 = u_xlat58.x;
        let x_2217 : f32 = u_xlat83;
        u_xlat83 = ((x_2213 * x_2215) + x_2217);
        let x_2220 : vec4<f32> = u_xlat15;
        let x_2221 : vec2<f32> = vec2<f32>(x_2220.z, x_2220.w);
        let x_2223 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
        let x_2230 : vec3<f32> = txVec20;
        let x_2232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2230.xy, x_2230.z);
        u_xlat58.x = x_2232;
        let x_2235 : f32 = u_xlat18.w;
        let x_2237 : f32 = u_xlat58.x;
        let x_2239 : f32 = u_xlat83;
        u_xlat83 = ((x_2235 * x_2237) + x_2239);
        let x_2242 : vec4<f32> = u_xlat16;
        let x_2243 : vec2<f32> = vec2<f32>(x_2242.x, x_2242.y);
        let x_2245 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2243.x, x_2243.y, x_2245);
        let x_2252 : vec3<f32> = txVec21;
        let x_2254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2252.xy, x_2252.z);
        u_xlat58.x = x_2254;
        let x_2257 : f32 = u_xlat19.x;
        let x_2259 : f32 = u_xlat58.x;
        let x_2261 : f32 = u_xlat83;
        u_xlat83 = ((x_2257 * x_2259) + x_2261);
        let x_2264 : vec4<f32> = u_xlat16;
        let x_2265 : vec2<f32> = vec2<f32>(x_2264.z, x_2264.w);
        let x_2267 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2265.x, x_2265.y, x_2267);
        let x_2274 : vec3<f32> = txVec22;
        let x_2276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2274.xy, x_2274.z);
        u_xlat58.x = x_2276;
        let x_2279 : f32 = u_xlat19.y;
        let x_2281 : f32 = u_xlat58.x;
        let x_2283 : f32 = u_xlat83;
        u_xlat83 = ((x_2279 * x_2281) + x_2283);
        let x_2286 : vec2<f32> = u_xlat34;
        let x_2288 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2286.x, x_2286.y, x_2288);
        let x_2295 : vec3<f32> = txVec23;
        let x_2297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2295.xy, x_2295.z);
        u_xlat58.x = x_2297;
        let x_2300 : f32 = u_xlat19.z;
        let x_2302 : f32 = u_xlat58.x;
        let x_2304 : f32 = u_xlat83;
        u_xlat83 = ((x_2300 * x_2302) + x_2304);
        let x_2307 : vec2<f32> = u_xlat66;
        let x_2309 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2307.x, x_2307.y, x_2309);
        let x_2316 : vec3<f32> = txVec24;
        let x_2318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2316.xy, x_2316.z);
        u_xlat58.x = x_2318;
        let x_2321 : f32 = u_xlat19.w;
        let x_2323 : f32 = u_xlat58.x;
        let x_2325 : f32 = u_xlat83;
        u_xlat83 = ((x_2321 * x_2323) + x_2325);
        let x_2328 : vec4<f32> = u_xlat11;
        let x_2329 : vec2<f32> = vec2<f32>(x_2328.x, x_2328.y);
        let x_2331 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
        let x_2338 : vec3<f32> = txVec25;
        let x_2340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
        u_xlat58.x = x_2340;
        let x_2343 : f32 = u_xlat7.x;
        let x_2345 : f32 = u_xlat58.x;
        let x_2347 : f32 = u_xlat83;
        u_xlat83 = ((x_2343 * x_2345) + x_2347);
        let x_2350 : vec4<f32> = u_xlat11;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.z, x_2350.w);
        let x_2353 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
        let x_2360 : vec3<f32> = txVec26;
        let x_2362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2360.xy, x_2360.z);
        u_xlat58.x = x_2362;
        let x_2365 : f32 = u_xlat7.y;
        let x_2367 : f32 = u_xlat58.x;
        let x_2369 : f32 = u_xlat83;
        u_xlat83 = ((x_2365 * x_2367) + x_2369);
        let x_2372 : vec2<f32> = u_xlat61;
        let x_2374 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2372.x, x_2372.y, x_2374);
        let x_2381 : vec3<f32> = txVec27;
        let x_2383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2381.xy, x_2381.z);
        u_xlat58.x = x_2383;
        let x_2386 : f32 = u_xlat7.z;
        let x_2388 : f32 = u_xlat58.x;
        let x_2390 : f32 = u_xlat83;
        u_xlat83 = ((x_2386 * x_2388) + x_2390);
        let x_2393 : vec4<f32> = u_xlat6;
        let x_2394 : vec2<f32> = vec2<f32>(x_2393.x, x_2393.y);
        let x_2396 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2394.x, x_2394.y, x_2396);
        let x_2403 : vec3<f32> = txVec28;
        let x_2405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2403.xy, x_2403.z);
        u_xlat6.x = x_2405;
        let x_2408 : f32 = u_xlat7.w;
        let x_2410 : f32 = u_xlat6.x;
        let x_2412 : f32 = u_xlat83;
        u_xlat82 = ((x_2408 * x_2410) + x_2412);
      }
    }
  } else {
    let x_2416 : vec4<f32> = u_xlat2;
    let x_2417 : vec2<f32> = vec2<f32>(x_2416.x, x_2416.y);
    let x_2419 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2417.x, x_2417.y, x_2419);
    let x_2426 : vec3<f32> = txVec29;
    let x_2428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2426.xy, x_2426.z);
    u_xlat82 = x_2428;
  }
  let x_2430 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2430) + 1.0f);
  let x_2434 : f32 = u_xlat82;
  let x_2436 : f32 = x_868.x_MainLightShadowParams.x;
  let x_2439 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2434 * x_2436) + x_2439);
  let x_2444 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2444);
  let x_2448 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2448 >= 1.0f);
  let x_2450 : bool = u_xlatb54;
  let x_2451 : bool = u_xlatb28;
  u_xlatb28 = (x_2450 | x_2451);
  let x_2453 : bool = u_xlatb28;
  if (x_2453) {
    x_2455 = 1.0f;
  } else {
    let x_2460 : f32 = u_xlat2.x;
    x_2455 = x_2460;
  }
  let x_2461 : f32 = x_2455;
  u_xlat2.x = x_2461;
  let x_2463 : vec3<f32> = vs_TEXCOORD7;
  let x_2466 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_2468 : vec3<f32> = (x_2463 + -(x_2466));
  let x_2469 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
  let x_2471 : vec4<f32> = u_xlat6;
  let x_2473 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_2471.x, x_2471.y, x_2471.z), vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
  let x_2479 : f32 = u_xlat28.x;
  let x_2481 : f32 = x_868.x_MainLightShadowParams.z;
  let x_2484 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2479 * x_2481) + x_2484);
  let x_2486 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2486, 0.0f, 1.0f);
  let x_2489 : f32 = u_xlat2.x;
  u_xlat82 = (-(x_2489) + 1.0f);
  let x_2492 : f32 = u_xlat54;
  let x_2493 : f32 = u_xlat82;
  let x_2496 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2492 * x_2493) + x_2496);
  let x_2506 : f32 = x_2504.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2506 == -1.0f));
  let x_2508 : bool = u_xlatb54;
  if (x_2508) {
    let x_2511 : vec3<f32> = vs_TEXCOORD7;
    let x_2514 : vec4<f32> = x_2504.x_MainLightWorldToLight[1i];
    let x_2516 : vec2<f32> = (vec2<f32>(x_2511.y, x_2511.y) * vec2<f32>(x_2514.x, x_2514.y));
    let x_2517 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2516.x, x_2516.y, x_2517.z, x_2517.w);
    let x_2520 : vec4<f32> = x_2504.x_MainLightWorldToLight[0i];
    let x_2522 : vec3<f32> = vs_TEXCOORD7;
    let x_2525 : vec4<f32> = u_xlat6;
    let x_2527 : vec2<f32> = ((vec2<f32>(x_2520.x, x_2520.y) * vec2<f32>(x_2522.x, x_2522.x)) + vec2<f32>(x_2525.x, x_2525.y));
    let x_2528 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2527.x, x_2527.y, x_2528.z, x_2528.w);
    let x_2531 : vec4<f32> = x_2504.x_MainLightWorldToLight[2i];
    let x_2533 : vec3<f32> = vs_TEXCOORD7;
    let x_2536 : vec4<f32> = u_xlat6;
    let x_2538 : vec2<f32> = ((vec2<f32>(x_2531.x, x_2531.y) * vec2<f32>(x_2533.z, x_2533.z)) + vec2<f32>(x_2536.x, x_2536.y));
    let x_2539 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2538.x, x_2538.y, x_2539.z, x_2539.w);
    let x_2541 : vec4<f32> = u_xlat6;
    let x_2544 : vec4<f32> = x_2504.x_MainLightWorldToLight[3i];
    let x_2546 : vec2<f32> = (vec2<f32>(x_2541.x, x_2541.y) + vec2<f32>(x_2544.x, x_2544.y));
    let x_2547 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2546.x, x_2546.y, x_2547.z, x_2547.w);
    let x_2549 : vec4<f32> = u_xlat6;
    let x_2552 : vec2<f32> = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2553 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
    let x_2560 : vec4<f32> = u_xlat6;
    let x_2563 : f32 = x_28.x_GlobalMipBias.x;
    let x_2564 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2560.x, x_2560.y), x_2563);
    u_xlat6 = x_2564;
    let x_2569 : f32 = x_2504.x_MainLightCookieTextureFormat;
    let x_2571 : f32 = x_2504.x_MainLightCookieTextureFormat;
    let x_2573 : f32 = x_2504.x_MainLightCookieTextureFormat;
    let x_2575 : f32 = x_2504.x_MainLightCookieTextureFormat;
    let x_2576 : vec4<f32> = vec4<f32>(x_2569, x_2571, x_2573, x_2575);
    let x_2583 : vec4<bool> = (vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2576.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2583.x, x_2583.y);
    let x_2586 : bool = u_xlatb7.y;
    if (x_2586) {
      let x_2591 : f32 = u_xlat6.w;
      x_2587 = x_2591;
    } else {
      let x_2594 : f32 = u_xlat6.x;
      x_2587 = x_2594;
    }
    let x_2595 : f32 = x_2587;
    u_xlat54 = x_2595;
    let x_2597 : bool = u_xlatb7.x;
    if (x_2597) {
      let x_2601 : vec4<f32> = u_xlat6;
      x_2598 = vec3<f32>(x_2601.x, x_2601.y, x_2601.z);
    } else {
      let x_2604 : f32 = u_xlat54;
      x_2598 = vec3<f32>(x_2604, x_2604, x_2604);
    }
    let x_2606 : vec3<f32> = x_2598;
    let x_2607 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2613 : vec4<f32> = u_xlat6;
  let x_2616 : vec4<f32> = x_28.x_MainLightColor;
  let x_2618 : vec3<f32> = (vec3<f32>(x_2613.x, x_2613.y, x_2613.z) * vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
  let x_2619 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
  let x_2623 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2623;
  let x_2626 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2626;
  let x_2629 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2629;
  let x_2631 : vec4<f32> = u_xlat7;
  let x_2634 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2631.x, x_2631.y, x_2631.z)), vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
  let x_2637 : f32 = u_xlat54;
  let x_2638 : f32 = u_xlat54;
  u_xlat54 = (x_2637 + x_2638);
  let x_2640 : vec4<f32> = u_xlat1;
  let x_2642 : f32 = u_xlat54;
  let x_2646 : vec4<f32> = u_xlat7;
  let x_2649 : vec3<f32> = ((vec3<f32>(x_2640.x, x_2640.y, x_2640.z) * -(vec3<f32>(x_2642, x_2642, x_2642))) + -(vec3<f32>(x_2646.x, x_2646.y, x_2646.z)));
  let x_2650 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
  let x_2652 : vec4<f32> = u_xlat1;
  let x_2654 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2652.x, x_2652.y, x_2652.z), vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
  let x_2657 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2657, 0.0f, 1.0f);
  let x_2659 : f32 = u_xlat54;
  u_xlat54 = (-(x_2659) + 1.0f);
  let x_2662 : f32 = u_xlat54;
  let x_2663 : f32 = u_xlat54;
  u_xlat54 = (x_2662 * x_2663);
  let x_2665 : f32 = u_xlat54;
  let x_2666 : f32 = u_xlat54;
  u_xlat54 = (x_2665 * x_2666);
  let x_2669 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2669) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2676 : f32 = u_xlat0.x;
  let x_2677 : f32 = u_xlat82;
  u_xlat0.x = (x_2676 * x_2677);
  let x_2681 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2681 * 6.0f);
  let x_2693 : vec4<f32> = u_xlat8;
  let x_2696 : f32 = u_xlat0.x;
  let x_2697 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2693.x, x_2693.y, x_2693.z), x_2696);
  u_xlat8 = x_2697;
  let x_2699 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2699 + -1.0f);
  let x_2703 : f32 = x_1048.unity_SpecCube0_HDR.w;
  let x_2705 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2703 * x_2705) + 1.0f);
  let x_2710 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2710, 0.0f);
  let x_2714 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2714);
  let x_2718 : f32 = u_xlat0.x;
  let x_2720 : f32 = x_1048.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2718 * x_2720);
  let x_2724 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2724);
  let x_2728 : f32 = u_xlat0.x;
  let x_2730 : f32 = x_1048.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2728 * x_2730);
  let x_2733 : vec4<f32> = u_xlat8;
  let x_2735 : vec3<f32> = u_xlat0;
  let x_2737 : vec3<f32> = (vec3<f32>(x_2733.x, x_2733.y, x_2733.z) * vec3<f32>(x_2735.x, x_2735.x, x_2735.x));
  let x_2738 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2737.x, x_2737.y, x_2737.z, x_2738.w);
  let x_2740 : f32 = u_xlat79;
  let x_2742 : f32 = u_xlat79;
  let x_2746 : vec2<f32> = ((vec2<f32>(x_2740, x_2740) * vec2<f32>(x_2742, x_2742)) + vec2<f32>(-1.0f, 1.0f));
  let x_2747 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2746.x, x_2746.y, x_2747.z, x_2747.w);
  let x_2750 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2750);
  let x_2754 : vec4<f32> = u_xlat5;
  let x_2757 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2754.x, x_2754.y, x_2754.z)) + vec3<f32>(x_2757, x_2757, x_2757));
  let x_2760 : f32 = u_xlat54;
  let x_2762 : vec3<f32> = u_xlat35;
  let x_2764 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2760, x_2760, x_2760) * x_2762) + vec3<f32>(x_2764.x, x_2764.y, x_2764.z));
  let x_2767 : vec3<f32> = u_xlat0;
  let x_2769 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2767.x, x_2767.x, x_2767.x) * x_2769);
  let x_2771 : vec4<f32> = u_xlat8;
  let x_2773 : vec3<f32> = u_xlat35;
  let x_2774 : vec3<f32> = (vec3<f32>(x_2771.x, x_2771.y, x_2771.z) * x_2773);
  let x_2775 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
  let x_2777 : vec4<f32> = u_xlat3;
  let x_2779 : vec4<f32> = u_xlat4;
  let x_2782 : vec4<f32> = u_xlat8;
  let x_2784 : vec3<f32> = ((vec3<f32>(x_2777.x, x_2777.y, x_2777.z) * vec3<f32>(x_2779.x, x_2779.y, x_2779.z)) + vec3<f32>(x_2782.x, x_2782.y, x_2782.z));
  let x_2785 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
  let x_2788 : f32 = u_xlat2.x;
  let x_2790 : f32 = x_1048.unity_LightData.z;
  u_xlat0.x = (x_2788 * x_2790);
  let x_2793 : vec4<f32> = u_xlat1;
  let x_2796 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2793.x, x_2793.y, x_2793.z), vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
  let x_2799 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2799, 0.0f, 1.0f);
  let x_2801 : f32 = u_xlat52;
  let x_2803 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2801 * x_2803);
  let x_2806 : vec3<f32> = u_xlat0;
  let x_2808 : vec4<f32> = u_xlat6;
  let x_2810 : vec3<f32> = (vec3<f32>(x_2806.x, x_2806.x, x_2806.x) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
  let x_2811 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
  let x_2813 : vec4<f32> = u_xlat7;
  let x_2816 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2818 : vec3<f32> = (vec3<f32>(x_2813.x, x_2813.y, x_2813.z) + vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
  let x_2819 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
  let x_2821 : vec4<f32> = u_xlat8;
  let x_2823 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2821.x, x_2821.y, x_2821.z), vec3<f32>(x_2823.x, x_2823.y, x_2823.z));
  let x_2828 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2828, 1.17549435e-38f);
  let x_2833 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2833);
  let x_2836 : vec3<f32> = u_xlat0;
  let x_2838 : vec4<f32> = u_xlat8;
  let x_2840 : vec3<f32> = (vec3<f32>(x_2836.x, x_2836.x, x_2836.x) * vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
  let x_2841 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
  let x_2843 : vec4<f32> = u_xlat1;
  let x_2845 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2843.x, x_2843.y, x_2843.z), vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
  let x_2850 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2850, 0.0f, 1.0f);
  let x_2854 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2856 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2854.x, x_2854.y, x_2854.z), vec3<f32>(x_2856.x, x_2856.y, x_2856.z));
  let x_2861 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2861, 0.0f, 1.0f);
  let x_2864 : vec3<f32> = u_xlat0;
  let x_2866 : vec3<f32> = u_xlat0;
  let x_2868 : vec2<f32> = (vec2<f32>(x_2864.x, x_2864.z) * vec2<f32>(x_2866.x, x_2866.z));
  let x_2869 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2868.x, x_2869.y, x_2868.y);
  let x_2872 : f32 = u_xlat0.x;
  let x_2874 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2872 * x_2874) + 1.00001001358032226562f);
  let x_2880 : f32 = u_xlat0.x;
  let x_2882 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2880 * x_2882);
  let x_2886 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2886, 0.10000000149011611938f);
  let x_2889 : f32 = u_xlat52;
  let x_2891 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2889 * x_2891);
  let x_2894 : f32 = u_xlat80;
  let x_2896 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2894 * x_2896);
  let x_2899 : f32 = u_xlat81;
  let x_2901 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2899 / x_2901);
  let x_2904 : vec4<f32> = u_xlat5;
  let x_2906 : vec3<f32> = u_xlat0;
  let x_2909 : vec4<f32> = u_xlat4;
  let x_2911 : vec3<f32> = ((vec3<f32>(x_2904.x, x_2904.y, x_2904.z) * vec3<f32>(x_2906.x, x_2906.x, x_2906.x)) + vec3<f32>(x_2909.x, x_2909.y, x_2909.z));
  let x_2912 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2911.x, x_2911.y, x_2911.z, x_2912.w);
  let x_2914 : vec4<f32> = u_xlat6;
  let x_2916 : vec4<f32> = u_xlat8;
  let x_2918 : vec3<f32> = (vec3<f32>(x_2914.x, x_2914.y, x_2914.z) * vec3<f32>(x_2916.x, x_2916.y, x_2916.z));
  let x_2919 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2918.x, x_2918.y, x_2918.z, x_2919.w);
  let x_2922 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2924 : f32 = x_1048.unity_LightData.y;
  u_xlat0.x = min(x_2922, x_2924);
  let x_2929 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2929));
  let x_2933 : f32 = u_xlat28.x;
  let x_2935 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_2938 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2933 * x_2935) + x_2938);
  let x_2940 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2940, 0.0f, 1.0f);
  let x_2943 : f32 = x_2504.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2945 : f32 = x_2504.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2947 : f32 = x_2504.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2949 : f32 = x_2504.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2950 : vec4<f32> = vec4<f32>(x_2943, x_2945, x_2947, x_2949);
  let x_2956 : vec4<bool> = (vec4<f32>(x_2950.x, x_2950.y, x_2950.z, x_2950.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2957 : vec2<bool> = vec2<bool>(x_2956.x, x_2956.y);
  let x_2958 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2957.x, x_2957.y, x_2958.z, x_2958.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2970 : u32 = u_xlatu_loop_1;
    let x_2971 : u32 = u_xlatu0;
    if ((x_2970 < x_2971)) {
    } else {
      break;
    }
    let x_2974 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2974 >> 2u);
    let x_2977 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2977 & 3u));
    let x_2980 : u32 = u_xlatu54;
    let x_2983 : vec4<f32> = x_1048.unity_LightIndices[bitcast<i32>(x_2980)];
    let x_2993 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2998 : vec4<u32> = indexable[x_2993];
    u_xlat54 = dot(x_2983, bitcast<vec4<f32>>(x_2998));
    let x_3002 : f32 = u_xlat54;
    u_xlati54 = i32(x_3002);
    let x_3004 : vec3<f32> = vs_TEXCOORD7;
    let x_3015 : i32 = u_xlati54;
    let x_3017 : vec4<f32> = x_3014.x_AdditionalLightsPosition[x_3015];
    let x_3020 : i32 = u_xlati54;
    let x_3022 : vec4<f32> = x_3014.x_AdditionalLightsPosition[x_3020];
    u_xlat35 = ((-(x_3004) * vec3<f32>(x_3017.w, x_3017.w, x_3017.w)) + vec3<f32>(x_3022.x, x_3022.y, x_3022.z));
    let x_3025 : vec3<f32> = u_xlat35;
    let x_3026 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_3025, x_3026);
    let x_3028 : f32 = u_xlat82;
    u_xlat82 = max(x_3028, 0.00006103515625f);
    let x_3030 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3030);
    let x_3032 : f32 = u_xlat83;
    let x_3034 : vec3<f32> = u_xlat35;
    let x_3035 : vec3<f32> = (vec3<f32>(x_3032, x_3032, x_3032) * x_3034);
    let x_3036 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);
    let x_3039 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3039);
    let x_3041 : f32 = u_xlat82;
    let x_3042 : i32 = u_xlati54;
    let x_3044 : f32 = x_3014.x_AdditionalLightsAttenuation[x_3042].x;
    u_xlat82 = (x_3041 * x_3044);
    let x_3046 : f32 = u_xlat82;
    let x_3048 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3046) * x_3048) + 1.0f);
    let x_3051 : f32 = u_xlat82;
    u_xlat82 = max(x_3051, 0.0f);
    let x_3053 : f32 = u_xlat82;
    let x_3054 : f32 = u_xlat82;
    u_xlat82 = (x_3053 * x_3054);
    let x_3056 : f32 = u_xlat82;
    let x_3057 : f32 = u_xlat84;
    u_xlat82 = (x_3056 * x_3057);
    let x_3059 : i32 = u_xlati54;
    let x_3061 : vec4<f32> = x_3014.x_AdditionalLightsSpotDir[x_3059];
    let x_3063 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3061.x, x_3061.y, x_3061.z), vec3<f32>(x_3063.x, x_3063.y, x_3063.z));
    let x_3066 : f32 = u_xlat84;
    let x_3067 : i32 = u_xlati54;
    let x_3069 : f32 = x_3014.x_AdditionalLightsAttenuation[x_3067].z;
    let x_3071 : i32 = u_xlati54;
    let x_3073 : f32 = x_3014.x_AdditionalLightsAttenuation[x_3071].w;
    u_xlat84 = ((x_3066 * x_3069) + x_3073);
    let x_3075 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3075, 0.0f, 1.0f);
    let x_3077 : f32 = u_xlat84;
    let x_3078 : f32 = u_xlat84;
    u_xlat84 = (x_3077 * x_3078);
    let x_3080 : f32 = u_xlat82;
    let x_3081 : f32 = u_xlat84;
    u_xlat82 = (x_3080 * x_3081);
    let x_3084 : i32 = u_xlati54;
    let x_3086 : f32 = x_868.x_AdditionalShadowParams[x_3084].w;
    u_xlati84 = i32(x_3086);
    let x_3089 : i32 = u_xlati84;
    u_xlatb85 = (x_3089 >= 0i);
    let x_3091 : bool = u_xlatb85;
    if (x_3091) {
      let x_3095 : i32 = u_xlati54;
      let x_3097 : f32 = x_868.x_AdditionalShadowParams[x_3095].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3097, x_3097, x_3097, x_3097))));
      let x_3101 : bool = u_xlatb85;
      if (x_3101) {
        let x_3105 : vec4<f32> = u_xlat10;
        let x_3108 : vec4<f32> = u_xlat10;
        let x_3111 : vec4<bool> = (abs(vec4<f32>(x_3105.z, x_3105.z, x_3105.y, x_3105.z)) >= abs(vec4<f32>(x_3108.x, x_3108.y, x_3108.x, x_3108.x)));
        let x_3113 : vec3<bool> = vec3<bool>(x_3111.x, x_3111.y, x_3111.z);
        let x_3114 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3113.x, x_3113.y, x_3113.z, x_3114.w);
        let x_3117 : bool = u_xlatb11.y;
        let x_3119 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3117 & x_3119);
        let x_3121 : vec4<f32> = u_xlat10;
        let x_3124 : vec4<bool> = (-(vec4<f32>(x_3121.z, x_3121.y, x_3121.z, x_3121.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3125 : vec3<bool> = vec3<bool>(x_3124.x, x_3124.y, x_3124.w);
        let x_3126 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3125.x, x_3125.y, x_3126.z, x_3125.z);
        let x_3129 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3129);
        let x_3134 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3134);
        let x_3139 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_3139);
        let x_3142 : bool = u_xlatb11.z;
        if (x_3142) {
          let x_3147 : f32 = u_xlat11.y;
          x_3143 = x_3147;
        } else {
          let x_3149 : f32 = u_xlat86;
          x_3143 = x_3149;
        }
        let x_3150 : f32 = x_3143;
        u_xlat86 = x_3150;
        let x_3152 : bool = u_xlatb85;
        if (x_3152) {
          let x_3157 : f32 = u_xlat11.x;
          x_3153 = x_3157;
        } else {
          let x_3159 : f32 = u_xlat86;
          x_3153 = x_3159;
        }
        let x_3160 : f32 = x_3153;
        u_xlat85 = x_3160;
        let x_3161 : i32 = u_xlati54;
        let x_3163 : f32 = x_868.x_AdditionalShadowParams[x_3161].w;
        u_xlat86 = trunc(x_3163);
        let x_3165 : f32 = u_xlat85;
        let x_3166 : f32 = u_xlat86;
        u_xlat85 = (x_3165 + x_3166);
        let x_3168 : f32 = u_xlat85;
        u_xlati84 = i32(x_3168);
      }
      let x_3170 : i32 = u_xlati84;
      u_xlati84 = (x_3170 << bitcast<u32>(2i));
      let x_3172 : vec3<f32> = vs_TEXCOORD7;
      let x_3174 : i32 = u_xlati84;
      let x_3177 : i32 = u_xlati84;
      let x_3181 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3174 + 1i) / 4i)][((x_3177 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3172.y, x_3172.y, x_3172.y, x_3172.y) * x_3181);
      let x_3183 : i32 = u_xlati84;
      let x_3185 : i32 = u_xlati84;
      let x_3188 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_3183 / 4i)][(x_3185 % 4i)];
      let x_3189 : vec3<f32> = vs_TEXCOORD7;
      let x_3192 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3188 * vec4<f32>(x_3189.x, x_3189.x, x_3189.x, x_3189.x)) + x_3192);
      let x_3194 : i32 = u_xlati84;
      let x_3197 : i32 = u_xlati84;
      let x_3201 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3194 + 2i) / 4i)][((x_3197 + 2i) % 4i)];
      let x_3202 : vec3<f32> = vs_TEXCOORD7;
      let x_3205 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3201 * vec4<f32>(x_3202.z, x_3202.z, x_3202.z, x_3202.z)) + x_3205);
      let x_3207 : vec4<f32> = u_xlat11;
      let x_3208 : i32 = u_xlati84;
      let x_3211 : i32 = u_xlati84;
      let x_3215 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3208 + 3i) / 4i)][((x_3211 + 3i) % 4i)];
      u_xlat11 = (x_3207 + x_3215);
      let x_3217 : vec4<f32> = u_xlat11;
      let x_3219 : vec4<f32> = u_xlat11;
      let x_3221 : vec3<f32> = (vec3<f32>(x_3217.x, x_3217.y, x_3217.z) / vec3<f32>(x_3219.w, x_3219.w, x_3219.w));
      let x_3222 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3221.x, x_3221.y, x_3221.z, x_3222.w);
      let x_3225 : i32 = u_xlati54;
      let x_3227 : f32 = x_868.x_AdditionalShadowParams[x_3225].y;
      u_xlatb84 = (0.0f < x_3227);
      let x_3229 : bool = u_xlatb84;
      if (x_3229) {
        let x_3232 : i32 = u_xlati54;
        let x_3234 : f32 = x_868.x_AdditionalShadowParams[x_3232].y;
        u_xlatb84 = (1.0f == x_3234);
        let x_3236 : bool = u_xlatb84;
        if (x_3236) {
          let x_3239 : vec4<f32> = u_xlat11;
          let x_3242 : vec4<f32> = x_868.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3239.x, x_3239.y, x_3239.x, x_3239.y) + x_3242);
          let x_3245 : vec4<f32> = u_xlat12;
          let x_3246 : vec2<f32> = vec2<f32>(x_3245.x, x_3245.y);
          let x_3248 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
          let x_3256 : vec3<f32> = txVec30;
          let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
          u_xlat13.x = x_3258;
          let x_3261 : vec4<f32> = u_xlat12;
          let x_3262 : vec2<f32> = vec2<f32>(x_3261.z, x_3261.w);
          let x_3264 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
          let x_3271 : vec3<f32> = txVec31;
          let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
          u_xlat13.y = x_3273;
          let x_3275 : vec4<f32> = u_xlat11;
          let x_3278 : vec4<f32> = x_868.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3275.x, x_3275.y, x_3275.x, x_3275.y) + x_3278);
          let x_3281 : vec4<f32> = u_xlat12;
          let x_3282 : vec2<f32> = vec2<f32>(x_3281.x, x_3281.y);
          let x_3284 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
          let x_3291 : vec3<f32> = txVec32;
          let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
          u_xlat13.z = x_3293;
          let x_3296 : vec4<f32> = u_xlat12;
          let x_3297 : vec2<f32> = vec2<f32>(x_3296.z, x_3296.w);
          let x_3299 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3297.x, x_3297.y, x_3299);
          let x_3306 : vec3<f32> = txVec33;
          let x_3308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
          u_xlat13.w = x_3308;
          let x_3310 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3310, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3313 : i32 = u_xlati54;
          let x_3315 : f32 = x_868.x_AdditionalShadowParams[x_3313].y;
          u_xlatb85 = (2.0f == x_3315);
          let x_3317 : bool = u_xlatb85;
          if (x_3317) {
            let x_3320 : vec4<f32> = u_xlat11;
            let x_3323 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3326 : vec2<f32> = ((vec2<f32>(x_3320.x, x_3320.y) * vec2<f32>(x_3323.z, x_3323.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3327 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3326.x, x_3326.y, x_3327.z, x_3327.w);
            let x_3329 : vec4<f32> = u_xlat12;
            let x_3331 : vec2<f32> = floor(vec2<f32>(x_3329.x, x_3329.y));
            let x_3332 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3331.x, x_3331.y, x_3332.z, x_3332.w);
            let x_3335 : vec4<f32> = u_xlat11;
            let x_3338 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3341 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3335.x, x_3335.y) * vec2<f32>(x_3338.z, x_3338.w)) + -(vec2<f32>(x_3341.x, x_3341.y)));
            let x_3345 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3345.x, x_3345.x, x_3345.y, x_3345.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3348 : vec4<f32> = u_xlat13;
            let x_3350 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3348.x, x_3348.x, x_3348.z, x_3348.z) * vec4<f32>(x_3350.x, x_3350.x, x_3350.z, x_3350.z));
            let x_3353 : vec4<f32> = u_xlat14;
            let x_3355 : vec2<f32> = (vec2<f32>(x_3353.y, x_3353.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3356 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3355.x, x_3356.y, x_3355.y, x_3356.w);
            let x_3358 : vec4<f32> = u_xlat14;
            let x_3361 : vec2<f32> = u_xlat64;
            let x_3363 : vec2<f32> = ((vec2<f32>(x_3358.x, x_3358.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3361));
            let x_3364 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3363.x, x_3363.y, x_3364.z, x_3364.w);
            let x_3366 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3366) + vec2<f32>(1.0f, 1.0f));
            let x_3369 : vec2<f32> = u_xlat64;
            let x_3370 : vec2<f32> = min(x_3369, vec2<f32>(0.0f, 0.0f));
            let x_3371 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3370.x, x_3370.y, x_3371.z, x_3371.w);
            let x_3373 : vec4<f32> = u_xlat15;
            let x_3376 : vec4<f32> = u_xlat15;
            let x_3379 : vec2<f32> = u_xlat66;
            let x_3380 : vec2<f32> = ((-(vec2<f32>(x_3373.x, x_3373.y)) * vec2<f32>(x_3376.x, x_3376.y)) + x_3379);
            let x_3381 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3380.x, x_3380.y, x_3381.z, x_3381.w);
            let x_3383 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3383, vec2<f32>(0.0f, 0.0f));
            let x_3385 : vec2<f32> = u_xlat64;
            let x_3387 : vec2<f32> = u_xlat64;
            let x_3389 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3385) * x_3387) + vec2<f32>(x_3389.y, x_3389.w));
            let x_3392 : vec4<f32> = u_xlat15;
            let x_3394 : vec2<f32> = (vec2<f32>(x_3392.x, x_3392.y) + vec2<f32>(1.0f, 1.0f));
            let x_3395 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3394.x, x_3394.y, x_3395.z, x_3395.w);
            let x_3397 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3397 + vec2<f32>(1.0f, 1.0f));
            let x_3399 : vec4<f32> = u_xlat14;
            let x_3401 : vec2<f32> = (vec2<f32>(x_3399.x, x_3399.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3402 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3401.x, x_3401.y, x_3402.z, x_3402.w);
            let x_3404 : vec2<f32> = u_xlat66;
            let x_3405 : vec2<f32> = (x_3404 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3406 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3405.x, x_3405.y, x_3406.z, x_3406.w);
            let x_3408 : vec4<f32> = u_xlat15;
            let x_3410 : vec2<f32> = (vec2<f32>(x_3408.x, x_3408.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3411 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3410.x, x_3410.y, x_3411.z, x_3411.w);
            let x_3413 : vec2<f32> = u_xlat64;
            let x_3414 : vec2<f32> = (x_3413 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3415 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3414.x, x_3414.y, x_3415.z, x_3415.w);
            let x_3417 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3417.y, x_3417.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3421 : f32 = u_xlat15.x;
            u_xlat16.z = x_3421;
            let x_3424 : f32 = u_xlat64.x;
            u_xlat16.w = x_3424;
            let x_3427 : f32 = u_xlat17.x;
            u_xlat14.z = x_3427;
            let x_3430 : f32 = u_xlat13.x;
            u_xlat14.w = x_3430;
            let x_3432 : vec4<f32> = u_xlat14;
            let x_3434 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3432.z, x_3432.w, x_3432.x, x_3432.z) + vec4<f32>(x_3434.z, x_3434.w, x_3434.x, x_3434.z));
            let x_3438 : f32 = u_xlat16.y;
            u_xlat15.z = x_3438;
            let x_3441 : f32 = u_xlat64.y;
            u_xlat15.w = x_3441;
            let x_3444 : f32 = u_xlat14.y;
            u_xlat17.z = x_3444;
            let x_3447 : f32 = u_xlat13.z;
            u_xlat17.w = x_3447;
            let x_3449 : vec4<f32> = u_xlat15;
            let x_3451 : vec4<f32> = u_xlat17;
            let x_3453 : vec3<f32> = (vec3<f32>(x_3449.z, x_3449.y, x_3449.w) + vec3<f32>(x_3451.z, x_3451.y, x_3451.w));
            let x_3454 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3453.x, x_3453.y, x_3453.z, x_3454.w);
            let x_3456 : vec4<f32> = u_xlat14;
            let x_3458 : vec4<f32> = u_xlat18;
            let x_3460 : vec3<f32> = (vec3<f32>(x_3456.x, x_3456.z, x_3456.w) / vec3<f32>(x_3458.z, x_3458.w, x_3458.y));
            let x_3461 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
            let x_3463 : vec4<f32> = u_xlat14;
            let x_3465 : vec3<f32> = (vec3<f32>(x_3463.x, x_3463.y, x_3463.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3466 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
            let x_3468 : vec4<f32> = u_xlat17;
            let x_3470 : vec4<f32> = u_xlat13;
            let x_3472 : vec3<f32> = (vec3<f32>(x_3468.z, x_3468.y, x_3468.w) / vec3<f32>(x_3470.x, x_3470.y, x_3470.z));
            let x_3473 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3472.x, x_3472.y, x_3472.z, x_3473.w);
            let x_3475 : vec4<f32> = u_xlat15;
            let x_3477 : vec3<f32> = (vec3<f32>(x_3475.x, x_3475.y, x_3475.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3478 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3477.x, x_3477.y, x_3477.z, x_3478.w);
            let x_3480 : vec4<f32> = u_xlat14;
            let x_3483 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3485 : vec3<f32> = (vec3<f32>(x_3480.y, x_3480.x, x_3480.z) * vec3<f32>(x_3483.x, x_3483.x, x_3483.x));
            let x_3486 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3485.x, x_3485.y, x_3485.z, x_3486.w);
            let x_3488 : vec4<f32> = u_xlat15;
            let x_3491 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3493 : vec3<f32> = (vec3<f32>(x_3488.x, x_3488.y, x_3488.z) * vec3<f32>(x_3491.y, x_3491.y, x_3491.y));
            let x_3494 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3493.x, x_3493.y, x_3493.z, x_3494.w);
            let x_3497 : f32 = u_xlat15.x;
            u_xlat14.w = x_3497;
            let x_3499 : vec4<f32> = u_xlat12;
            let x_3502 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3505 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3499.x, x_3499.y, x_3499.x, x_3499.y) * vec4<f32>(x_3502.x, x_3502.y, x_3502.x, x_3502.y)) + vec4<f32>(x_3505.y, x_3505.w, x_3505.x, x_3505.w));
            let x_3508 : vec4<f32> = u_xlat12;
            let x_3511 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3514 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3508.x, x_3508.y) * vec2<f32>(x_3511.x, x_3511.y)) + vec2<f32>(x_3514.z, x_3514.w));
            let x_3518 : f32 = u_xlat14.y;
            u_xlat15.w = x_3518;
            let x_3520 : vec4<f32> = u_xlat15;
            let x_3521 : vec2<f32> = vec2<f32>(x_3520.y, x_3520.z);
            let x_3522 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3522.x, x_3521.x, x_3522.z, x_3521.y);
            let x_3524 : vec4<f32> = u_xlat12;
            let x_3527 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3530 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3524.x, x_3524.y, x_3524.x, x_3524.y) * vec4<f32>(x_3527.x, x_3527.y, x_3527.x, x_3527.y)) + vec4<f32>(x_3530.x, x_3530.y, x_3530.z, x_3530.y));
            let x_3533 : vec4<f32> = u_xlat12;
            let x_3536 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3539 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3533.x, x_3533.y, x_3533.x, x_3533.y) * vec4<f32>(x_3536.x, x_3536.y, x_3536.x, x_3536.y)) + vec4<f32>(x_3539.w, x_3539.y, x_3539.w, x_3539.z));
            let x_3542 : vec4<f32> = u_xlat12;
            let x_3545 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3548 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3542.x, x_3542.y, x_3542.x, x_3542.y) * vec4<f32>(x_3545.x, x_3545.y, x_3545.x, x_3545.y)) + vec4<f32>(x_3548.x, x_3548.w, x_3548.z, x_3548.w));
            let x_3551 : vec4<f32> = u_xlat13;
            let x_3553 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3551.x, x_3551.x, x_3551.x, x_3551.y) * vec4<f32>(x_3553.z, x_3553.w, x_3553.y, x_3553.z));
            let x_3557 : vec4<f32> = u_xlat13;
            let x_3559 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3557.y, x_3557.y, x_3557.z, x_3557.z) * x_3559);
            let x_3562 : f32 = u_xlat13.z;
            let x_3564 : f32 = u_xlat18.y;
            u_xlat85 = (x_3562 * x_3564);
            let x_3567 : vec4<f32> = u_xlat16;
            let x_3568 : vec2<f32> = vec2<f32>(x_3567.x, x_3567.y);
            let x_3570 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3568.x, x_3568.y, x_3570);
            let x_3577 : vec3<f32> = txVec34;
            let x_3579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3577.xy, x_3577.z);
            u_xlat86 = x_3579;
            let x_3581 : vec4<f32> = u_xlat16;
            let x_3582 : vec2<f32> = vec2<f32>(x_3581.z, x_3581.w);
            let x_3584 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3582.x, x_3582.y, x_3584);
            let x_3592 : vec3<f32> = txVec35;
            let x_3594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3592.xy, x_3592.z);
            u_xlat88 = x_3594;
            let x_3595 : f32 = u_xlat88;
            let x_3597 : f32 = u_xlat19.y;
            u_xlat88 = (x_3595 * x_3597);
            let x_3600 : f32 = u_xlat19.x;
            let x_3601 : f32 = u_xlat86;
            let x_3603 : f32 = u_xlat88;
            u_xlat86 = ((x_3600 * x_3601) + x_3603);
            let x_3606 : vec2<f32> = u_xlat64;
            let x_3608 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3606.x, x_3606.y, x_3608);
            let x_3615 : vec3<f32> = txVec36;
            let x_3617 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3615.xy, x_3615.z);
            u_xlat88 = x_3617;
            let x_3619 : f32 = u_xlat19.z;
            let x_3620 : f32 = u_xlat88;
            let x_3622 : f32 = u_xlat86;
            u_xlat86 = ((x_3619 * x_3620) + x_3622);
            let x_3625 : vec4<f32> = u_xlat15;
            let x_3626 : vec2<f32> = vec2<f32>(x_3625.x, x_3625.y);
            let x_3628 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3626.x, x_3626.y, x_3628);
            let x_3635 : vec3<f32> = txVec37;
            let x_3637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3635.xy, x_3635.z);
            u_xlat88 = x_3637;
            let x_3639 : f32 = u_xlat19.w;
            let x_3640 : f32 = u_xlat88;
            let x_3642 : f32 = u_xlat86;
            u_xlat86 = ((x_3639 * x_3640) + x_3642);
            let x_3645 : vec4<f32> = u_xlat17;
            let x_3646 : vec2<f32> = vec2<f32>(x_3645.x, x_3645.y);
            let x_3648 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3646.x, x_3646.y, x_3648);
            let x_3655 : vec3<f32> = txVec38;
            let x_3657 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3655.xy, x_3655.z);
            u_xlat88 = x_3657;
            let x_3659 : f32 = u_xlat20.x;
            let x_3660 : f32 = u_xlat88;
            let x_3662 : f32 = u_xlat86;
            u_xlat86 = ((x_3659 * x_3660) + x_3662);
            let x_3665 : vec4<f32> = u_xlat17;
            let x_3666 : vec2<f32> = vec2<f32>(x_3665.z, x_3665.w);
            let x_3668 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3666.x, x_3666.y, x_3668);
            let x_3675 : vec3<f32> = txVec39;
            let x_3677 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3675.xy, x_3675.z);
            u_xlat88 = x_3677;
            let x_3679 : f32 = u_xlat20.y;
            let x_3680 : f32 = u_xlat88;
            let x_3682 : f32 = u_xlat86;
            u_xlat86 = ((x_3679 * x_3680) + x_3682);
            let x_3685 : vec4<f32> = u_xlat15;
            let x_3686 : vec2<f32> = vec2<f32>(x_3685.z, x_3685.w);
            let x_3688 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3686.x, x_3686.y, x_3688);
            let x_3695 : vec3<f32> = txVec40;
            let x_3697 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3695.xy, x_3695.z);
            u_xlat88 = x_3697;
            let x_3699 : f32 = u_xlat20.z;
            let x_3700 : f32 = u_xlat88;
            let x_3702 : f32 = u_xlat86;
            u_xlat86 = ((x_3699 * x_3700) + x_3702);
            let x_3705 : vec4<f32> = u_xlat14;
            let x_3706 : vec2<f32> = vec2<f32>(x_3705.x, x_3705.y);
            let x_3708 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3706.x, x_3706.y, x_3708);
            let x_3715 : vec3<f32> = txVec41;
            let x_3717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3715.xy, x_3715.z);
            u_xlat88 = x_3717;
            let x_3719 : f32 = u_xlat20.w;
            let x_3720 : f32 = u_xlat88;
            let x_3722 : f32 = u_xlat86;
            u_xlat86 = ((x_3719 * x_3720) + x_3722);
            let x_3725 : vec4<f32> = u_xlat14;
            let x_3726 : vec2<f32> = vec2<f32>(x_3725.z, x_3725.w);
            let x_3728 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3726.x, x_3726.y, x_3728);
            let x_3735 : vec3<f32> = txVec42;
            let x_3737 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3735.xy, x_3735.z);
            u_xlat88 = x_3737;
            let x_3738 : f32 = u_xlat85;
            let x_3739 : f32 = u_xlat88;
            let x_3741 : f32 = u_xlat86;
            u_xlat84 = ((x_3738 * x_3739) + x_3741);
          } else {
            let x_3744 : vec4<f32> = u_xlat11;
            let x_3747 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3750 : vec2<f32> = ((vec2<f32>(x_3744.x, x_3744.y) * vec2<f32>(x_3747.z, x_3747.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3751 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3750.x, x_3750.y, x_3751.z, x_3751.w);
            let x_3753 : vec4<f32> = u_xlat12;
            let x_3755 : vec2<f32> = floor(vec2<f32>(x_3753.x, x_3753.y));
            let x_3756 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3755.x, x_3755.y, x_3756.z, x_3756.w);
            let x_3758 : vec4<f32> = u_xlat11;
            let x_3761 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3764 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3758.x, x_3758.y) * vec2<f32>(x_3761.z, x_3761.w)) + -(vec2<f32>(x_3764.x, x_3764.y)));
            let x_3768 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3768.x, x_3768.x, x_3768.y, x_3768.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3771 : vec4<f32> = u_xlat13;
            let x_3773 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3771.x, x_3771.x, x_3771.z, x_3771.z) * vec4<f32>(x_3773.x, x_3773.x, x_3773.z, x_3773.z));
            let x_3776 : vec4<f32> = u_xlat14;
            let x_3778 : vec2<f32> = (vec2<f32>(x_3776.y, x_3776.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3779 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3779.x, x_3778.x, x_3779.z, x_3778.y);
            let x_3781 : vec4<f32> = u_xlat14;
            let x_3784 : vec2<f32> = u_xlat64;
            let x_3786 : vec2<f32> = ((vec2<f32>(x_3781.x, x_3781.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3784));
            let x_3787 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3786.x, x_3787.y, x_3786.y, x_3787.w);
            let x_3789 : vec2<f32> = u_xlat64;
            let x_3791 : vec2<f32> = (-(x_3789) + vec2<f32>(1.0f, 1.0f));
            let x_3792 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3791.x, x_3791.y, x_3792.z, x_3792.w);
            let x_3794 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3794, vec2<f32>(0.0f, 0.0f));
            let x_3796 : vec2<f32> = u_xlat66;
            let x_3798 : vec2<f32> = u_xlat66;
            let x_3800 : vec4<f32> = u_xlat14;
            let x_3802 : vec2<f32> = ((-(x_3796) * x_3798) + vec2<f32>(x_3800.x, x_3800.y));
            let x_3803 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3802.x, x_3802.y, x_3803.z, x_3803.w);
            let x_3805 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3805, vec2<f32>(0.0f, 0.0f));
            let x_3808 : vec2<f32> = u_xlat66;
            let x_3810 : vec2<f32> = u_xlat66;
            let x_3812 : vec4<f32> = u_xlat13;
            let x_3814 : vec2<f32> = ((-(x_3808) * x_3810) + vec2<f32>(x_3812.y, x_3812.w));
            let x_3815 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3814.x, x_3815.y, x_3814.y);
            let x_3817 : vec4<f32> = u_xlat14;
            let x_3819 : vec2<f32> = (vec2<f32>(x_3817.x, x_3817.y) + vec2<f32>(2.0f, 2.0f));
            let x_3820 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3819.x, x_3819.y, x_3820.z, x_3820.w);
            let x_3822 : vec3<f32> = u_xlat39;
            let x_3824 : vec2<f32> = (vec2<f32>(x_3822.x, x_3822.z) + vec2<f32>(2.0f, 2.0f));
            let x_3825 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3825.x, x_3824.x, x_3825.z, x_3824.y);
            let x_3828 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3828 * 0.08163200318813323975f);
            let x_3831 : vec4<f32> = u_xlat13;
            let x_3833 : vec3<f32> = (vec3<f32>(x_3831.z, x_3831.x, x_3831.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3834 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3833.x, x_3833.y, x_3833.z, x_3834.w);
            let x_3836 : vec4<f32> = u_xlat14;
            let x_3838 : vec2<f32> = (vec2<f32>(x_3836.x, x_3836.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3839 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3838.x, x_3838.y, x_3839.z, x_3839.w);
            let x_3842 : f32 = u_xlat17.y;
            u_xlat16.x = x_3842;
            let x_3844 : vec2<f32> = u_xlat64;
            let x_3847 : vec2<f32> = ((vec2<f32>(x_3844.x, x_3844.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3848 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3848.x, x_3847.x, x_3848.z, x_3847.y);
            let x_3850 : vec2<f32> = u_xlat64;
            let x_3853 : vec2<f32> = ((vec2<f32>(x_3850.x, x_3850.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3854 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3853.x, x_3854.y, x_3853.y, x_3854.w);
            let x_3857 : f32 = u_xlat13.x;
            u_xlat14.y = x_3857;
            let x_3860 : f32 = u_xlat15.y;
            u_xlat14.w = x_3860;
            let x_3862 : vec4<f32> = u_xlat14;
            let x_3863 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3862 + x_3863);
            let x_3865 : vec2<f32> = u_xlat64;
            let x_3868 : vec2<f32> = ((vec2<f32>(x_3865.y, x_3865.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3869 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3869.x, x_3868.x, x_3869.z, x_3868.y);
            let x_3871 : vec2<f32> = u_xlat64;
            let x_3874 : vec2<f32> = ((vec2<f32>(x_3871.y, x_3871.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3875 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3874.x, x_3875.y, x_3874.y, x_3875.w);
            let x_3878 : f32 = u_xlat13.y;
            u_xlat15.y = x_3878;
            let x_3880 : vec4<f32> = u_xlat15;
            let x_3881 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3880 + x_3881);
            let x_3883 : vec4<f32> = u_xlat14;
            let x_3884 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3883 / x_3884);
            let x_3886 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3886 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3888 : vec4<f32> = u_xlat15;
            let x_3889 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3888 / x_3889);
            let x_3891 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3891 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3893 : vec4<f32> = u_xlat14;
            let x_3896 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3893.w, x_3893.x, x_3893.y, x_3893.z) * vec4<f32>(x_3896.x, x_3896.x, x_3896.x, x_3896.x));
            let x_3899 : vec4<f32> = u_xlat15;
            let x_3902 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3899.x, x_3899.w, x_3899.y, x_3899.z) * vec4<f32>(x_3902.y, x_3902.y, x_3902.y, x_3902.y));
            let x_3905 : vec4<f32> = u_xlat14;
            let x_3906 : vec3<f32> = vec3<f32>(x_3905.y, x_3905.z, x_3905.w);
            let x_3907 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3906.x, x_3907.y, x_3906.y, x_3906.z);
            let x_3910 : f32 = u_xlat15.x;
            u_xlat17.y = x_3910;
            let x_3912 : vec4<f32> = u_xlat12;
            let x_3915 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3918 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3912.x, x_3912.y, x_3912.x, x_3912.y) * vec4<f32>(x_3915.x, x_3915.y, x_3915.x, x_3915.y)) + vec4<f32>(x_3918.x, x_3918.y, x_3918.z, x_3918.y));
            let x_3921 : vec4<f32> = u_xlat12;
            let x_3924 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3927 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3921.x, x_3921.y) * vec2<f32>(x_3924.x, x_3924.y)) + vec2<f32>(x_3927.w, x_3927.y));
            let x_3931 : f32 = u_xlat17.y;
            u_xlat14.y = x_3931;
            let x_3934 : f32 = u_xlat15.z;
            u_xlat17.y = x_3934;
            let x_3936 : vec4<f32> = u_xlat12;
            let x_3939 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3942 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3936.x, x_3936.y, x_3936.x, x_3936.y) * vec4<f32>(x_3939.x, x_3939.y, x_3939.x, x_3939.y)) + vec4<f32>(x_3942.x, x_3942.y, x_3942.z, x_3942.y));
            let x_3945 : vec4<f32> = u_xlat12;
            let x_3948 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3951 : vec4<f32> = u_xlat17;
            let x_3953 : vec2<f32> = ((vec2<f32>(x_3945.x, x_3945.y) * vec2<f32>(x_3948.x, x_3948.y)) + vec2<f32>(x_3951.w, x_3951.y));
            let x_3954 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3953.x, x_3953.y, x_3954.z, x_3954.w);
            let x_3957 : f32 = u_xlat17.y;
            u_xlat14.z = x_3957;
            let x_3960 : vec4<f32> = u_xlat12;
            let x_3963 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3966 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3960.x, x_3960.y, x_3960.x, x_3960.y) * vec4<f32>(x_3963.x, x_3963.y, x_3963.x, x_3963.y)) + vec4<f32>(x_3966.x, x_3966.y, x_3966.x, x_3966.z));
            let x_3970 : f32 = u_xlat15.w;
            u_xlat17.y = x_3970;
            let x_3973 : vec4<f32> = u_xlat12;
            let x_3976 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3979 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3973.x, x_3973.y, x_3973.x, x_3973.y) * vec4<f32>(x_3976.x, x_3976.y, x_3976.x, x_3976.y)) + vec4<f32>(x_3979.x, x_3979.y, x_3979.z, x_3979.y));
            let x_3983 : vec4<f32> = u_xlat12;
            let x_3986 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3989 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3983.x, x_3983.y) * vec2<f32>(x_3986.x, x_3986.y)) + vec2<f32>(x_3989.w, x_3989.y));
            let x_3993 : f32 = u_xlat17.y;
            u_xlat14.w = x_3993;
            let x_3996 : vec4<f32> = u_xlat12;
            let x_3999 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_4002 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3996.x, x_3996.y) * vec2<f32>(x_3999.x, x_3999.y)) + vec2<f32>(x_4002.x, x_4002.w));
            let x_4005 : vec4<f32> = u_xlat17;
            let x_4006 : vec3<f32> = vec3<f32>(x_4005.x, x_4005.z, x_4005.w);
            let x_4007 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4006.x, x_4007.y, x_4006.y, x_4006.z);
            let x_4009 : vec4<f32> = u_xlat12;
            let x_4012 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_4015 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4009.x, x_4009.y, x_4009.x, x_4009.y) * vec4<f32>(x_4012.x, x_4012.y, x_4012.x, x_4012.y)) + vec4<f32>(x_4015.x, x_4015.y, x_4015.z, x_4015.y));
            let x_4019 : vec4<f32> = u_xlat12;
            let x_4022 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_4025 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4019.x, x_4019.y) * vec2<f32>(x_4022.x, x_4022.y)) + vec2<f32>(x_4025.w, x_4025.y));
            let x_4029 : f32 = u_xlat14.x;
            u_xlat15.x = x_4029;
            let x_4031 : vec4<f32> = u_xlat12;
            let x_4034 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_4037 : vec4<f32> = u_xlat15;
            let x_4039 : vec2<f32> = ((vec2<f32>(x_4031.x, x_4031.y) * vec2<f32>(x_4034.x, x_4034.y)) + vec2<f32>(x_4037.x, x_4037.y));
            let x_4040 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4039.x, x_4039.y, x_4040.z, x_4040.w);
            let x_4043 : vec4<f32> = u_xlat13;
            let x_4045 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4043.x, x_4043.x, x_4043.x, x_4043.x) * x_4045);
            let x_4048 : vec4<f32> = u_xlat13;
            let x_4050 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4048.y, x_4048.y, x_4048.y, x_4048.y) * x_4050);
            let x_4053 : vec4<f32> = u_xlat13;
            let x_4055 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4053.z, x_4053.z, x_4053.z, x_4053.z) * x_4055);
            let x_4057 : vec4<f32> = u_xlat13;
            let x_4059 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4057.w, x_4057.w, x_4057.w, x_4057.w) * x_4059);
            let x_4062 : vec4<f32> = u_xlat18;
            let x_4063 : vec2<f32> = vec2<f32>(x_4062.x, x_4062.y);
            let x_4065 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4063.x, x_4063.y, x_4065);
            let x_4072 : vec3<f32> = txVec43;
            let x_4074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4072.xy, x_4072.z);
            u_xlat85 = x_4074;
            let x_4076 : vec4<f32> = u_xlat18;
            let x_4077 : vec2<f32> = vec2<f32>(x_4076.z, x_4076.w);
            let x_4079 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4077.x, x_4077.y, x_4079);
            let x_4086 : vec3<f32> = txVec44;
            let x_4088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4086.xy, x_4086.z);
            u_xlat86 = x_4088;
            let x_4089 : f32 = u_xlat86;
            let x_4091 : f32 = u_xlat23.y;
            u_xlat86 = (x_4089 * x_4091);
            let x_4094 : f32 = u_xlat23.x;
            let x_4095 : f32 = u_xlat85;
            let x_4097 : f32 = u_xlat86;
            u_xlat85 = ((x_4094 * x_4095) + x_4097);
            let x_4100 : vec2<f32> = u_xlat64;
            let x_4102 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4100.x, x_4100.y, x_4102);
            let x_4109 : vec3<f32> = txVec45;
            let x_4111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4109.xy, x_4109.z);
            u_xlat86 = x_4111;
            let x_4113 : f32 = u_xlat23.z;
            let x_4114 : f32 = u_xlat86;
            let x_4116 : f32 = u_xlat85;
            u_xlat85 = ((x_4113 * x_4114) + x_4116);
            let x_4119 : vec4<f32> = u_xlat21;
            let x_4120 : vec2<f32> = vec2<f32>(x_4119.x, x_4119.y);
            let x_4122 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4120.x, x_4120.y, x_4122);
            let x_4129 : vec3<f32> = txVec46;
            let x_4131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4129.xy, x_4129.z);
            u_xlat86 = x_4131;
            let x_4133 : f32 = u_xlat23.w;
            let x_4134 : f32 = u_xlat86;
            let x_4136 : f32 = u_xlat85;
            u_xlat85 = ((x_4133 * x_4134) + x_4136);
            let x_4139 : vec4<f32> = u_xlat19;
            let x_4140 : vec2<f32> = vec2<f32>(x_4139.x, x_4139.y);
            let x_4142 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4140.x, x_4140.y, x_4142);
            let x_4149 : vec3<f32> = txVec47;
            let x_4151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4149.xy, x_4149.z);
            u_xlat86 = x_4151;
            let x_4153 : f32 = u_xlat24.x;
            let x_4154 : f32 = u_xlat86;
            let x_4156 : f32 = u_xlat85;
            u_xlat85 = ((x_4153 * x_4154) + x_4156);
            let x_4159 : vec4<f32> = u_xlat19;
            let x_4160 : vec2<f32> = vec2<f32>(x_4159.z, x_4159.w);
            let x_4162 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4160.x, x_4160.y, x_4162);
            let x_4169 : vec3<f32> = txVec48;
            let x_4171 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4169.xy, x_4169.z);
            u_xlat86 = x_4171;
            let x_4173 : f32 = u_xlat24.y;
            let x_4174 : f32 = u_xlat86;
            let x_4176 : f32 = u_xlat85;
            u_xlat85 = ((x_4173 * x_4174) + x_4176);
            let x_4179 : vec4<f32> = u_xlat20;
            let x_4180 : vec2<f32> = vec2<f32>(x_4179.x, x_4179.y);
            let x_4182 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4180.x, x_4180.y, x_4182);
            let x_4189 : vec3<f32> = txVec49;
            let x_4191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4189.xy, x_4189.z);
            u_xlat86 = x_4191;
            let x_4193 : f32 = u_xlat24.z;
            let x_4194 : f32 = u_xlat86;
            let x_4196 : f32 = u_xlat85;
            u_xlat85 = ((x_4193 * x_4194) + x_4196);
            let x_4199 : vec4<f32> = u_xlat21;
            let x_4200 : vec2<f32> = vec2<f32>(x_4199.z, x_4199.w);
            let x_4202 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4200.x, x_4200.y, x_4202);
            let x_4209 : vec3<f32> = txVec50;
            let x_4211 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4209.xy, x_4209.z);
            u_xlat86 = x_4211;
            let x_4213 : f32 = u_xlat24.w;
            let x_4214 : f32 = u_xlat86;
            let x_4216 : f32 = u_xlat85;
            u_xlat85 = ((x_4213 * x_4214) + x_4216);
            let x_4219 : vec4<f32> = u_xlat22;
            let x_4220 : vec2<f32> = vec2<f32>(x_4219.x, x_4219.y);
            let x_4222 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4220.x, x_4220.y, x_4222);
            let x_4229 : vec3<f32> = txVec51;
            let x_4231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4229.xy, x_4229.z);
            u_xlat86 = x_4231;
            let x_4233 : f32 = u_xlat25.x;
            let x_4234 : f32 = u_xlat86;
            let x_4236 : f32 = u_xlat85;
            u_xlat85 = ((x_4233 * x_4234) + x_4236);
            let x_4239 : vec4<f32> = u_xlat22;
            let x_4240 : vec2<f32> = vec2<f32>(x_4239.z, x_4239.w);
            let x_4242 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4240.x, x_4240.y, x_4242);
            let x_4249 : vec3<f32> = txVec52;
            let x_4251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4249.xy, x_4249.z);
            u_xlat86 = x_4251;
            let x_4253 : f32 = u_xlat25.y;
            let x_4254 : f32 = u_xlat86;
            let x_4256 : f32 = u_xlat85;
            u_xlat85 = ((x_4253 * x_4254) + x_4256);
            let x_4259 : vec2<f32> = u_xlat40;
            let x_4261 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4259.x, x_4259.y, x_4261);
            let x_4268 : vec3<f32> = txVec53;
            let x_4270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4268.xy, x_4268.z);
            u_xlat86 = x_4270;
            let x_4272 : f32 = u_xlat25.z;
            let x_4273 : f32 = u_xlat86;
            let x_4275 : f32 = u_xlat85;
            u_xlat85 = ((x_4272 * x_4273) + x_4275);
            let x_4278 : vec2<f32> = u_xlat72;
            let x_4280 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4278.x, x_4278.y, x_4280);
            let x_4287 : vec3<f32> = txVec54;
            let x_4289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4287.xy, x_4287.z);
            u_xlat86 = x_4289;
            let x_4291 : f32 = u_xlat25.w;
            let x_4292 : f32 = u_xlat86;
            let x_4294 : f32 = u_xlat85;
            u_xlat85 = ((x_4291 * x_4292) + x_4294);
            let x_4297 : vec4<f32> = u_xlat17;
            let x_4298 : vec2<f32> = vec2<f32>(x_4297.x, x_4297.y);
            let x_4300 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4298.x, x_4298.y, x_4300);
            let x_4307 : vec3<f32> = txVec55;
            let x_4309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4307.xy, x_4307.z);
            u_xlat86 = x_4309;
            let x_4311 : f32 = u_xlat13.x;
            let x_4312 : f32 = u_xlat86;
            let x_4314 : f32 = u_xlat85;
            u_xlat85 = ((x_4311 * x_4312) + x_4314);
            let x_4317 : vec4<f32> = u_xlat17;
            let x_4318 : vec2<f32> = vec2<f32>(x_4317.z, x_4317.w);
            let x_4320 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4318.x, x_4318.y, x_4320);
            let x_4327 : vec3<f32> = txVec56;
            let x_4329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4327.xy, x_4327.z);
            u_xlat86 = x_4329;
            let x_4331 : f32 = u_xlat13.y;
            let x_4332 : f32 = u_xlat86;
            let x_4334 : f32 = u_xlat85;
            u_xlat85 = ((x_4331 * x_4332) + x_4334);
            let x_4337 : vec2<f32> = u_xlat67;
            let x_4339 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4337.x, x_4337.y, x_4339);
            let x_4346 : vec3<f32> = txVec57;
            let x_4348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4346.xy, x_4346.z);
            u_xlat86 = x_4348;
            let x_4350 : f32 = u_xlat13.z;
            let x_4351 : f32 = u_xlat86;
            let x_4353 : f32 = u_xlat85;
            u_xlat85 = ((x_4350 * x_4351) + x_4353);
            let x_4356 : vec4<f32> = u_xlat12;
            let x_4357 : vec2<f32> = vec2<f32>(x_4356.x, x_4356.y);
            let x_4359 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4357.x, x_4357.y, x_4359);
            let x_4366 : vec3<f32> = txVec58;
            let x_4368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4366.xy, x_4366.z);
            u_xlat86 = x_4368;
            let x_4370 : f32 = u_xlat13.w;
            let x_4371 : f32 = u_xlat86;
            let x_4373 : f32 = u_xlat85;
            u_xlat84 = ((x_4370 * x_4371) + x_4373);
          }
        }
      } else {
        let x_4377 : vec4<f32> = u_xlat11;
        let x_4378 : vec2<f32> = vec2<f32>(x_4377.x, x_4377.y);
        let x_4380 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4378.x, x_4378.y, x_4380);
        let x_4387 : vec3<f32> = txVec59;
        let x_4389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4387.xy, x_4387.z);
        u_xlat84 = x_4389;
      }
      let x_4390 : i32 = u_xlati54;
      let x_4392 : f32 = x_868.x_AdditionalShadowParams[x_4390].x;
      u_xlat85 = (1.0f + -(x_4392));
      let x_4395 : f32 = u_xlat84;
      let x_4396 : i32 = u_xlati54;
      let x_4398 : f32 = x_868.x_AdditionalShadowParams[x_4396].x;
      let x_4400 : f32 = u_xlat85;
      u_xlat84 = ((x_4395 * x_4398) + x_4400);
      let x_4403 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4403);
      let x_4407 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4407 >= 1.0f);
      let x_4409 : bool = u_xlatb85;
      let x_4410 : bool = u_xlatb86;
      u_xlatb85 = (x_4409 | x_4410);
      let x_4412 : bool = u_xlatb85;
      let x_4413 : f32 = u_xlat84;
      u_xlat84 = select(x_4413, 1.0f, x_4412);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4416 : f32 = u_xlat84;
    u_xlat85 = (-(x_4416) + 1.0f);
    let x_4419 : f32 = u_xlat52;
    let x_4420 : f32 = u_xlat85;
    let x_4422 : f32 = u_xlat84;
    u_xlat84 = ((x_4419 * x_4420) + x_4422);
    let x_4425 : i32 = u_xlati54;
    u_xlati85 = (1i << bitcast<u32>((x_4425 & 31i)));
    let x_4428 : i32 = u_xlati85;
    let x_4431 : f32 = x_2504.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4428) & bitcast<u32>(x_4431)));
    let x_4435 : i32 = u_xlati85;
    if ((x_4435 != 0i)) {
      let x_4439 : i32 = u_xlati54;
      let x_4441 : f32 = x_2504.x_AdditionalLightsLightTypes[x_4439].el;
      u_xlati85 = i32(x_4441);
      let x_4444 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4444 != 0i));
      let x_4448 : i32 = u_xlati54;
      u_xlati88 = (x_4448 << bitcast<u32>(2i));
      let x_4450 : i32 = u_xlati86;
      if ((x_4450 != 0i)) {
        let x_4454 : vec3<f32> = vs_TEXCOORD7;
        let x_4456 : i32 = u_xlati88;
        let x_4459 : i32 = u_xlati88;
        let x_4463 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4456 + 1i) / 4i)][((x_4459 + 1i) % 4i)];
        let x_4465 : vec3<f32> = (vec3<f32>(x_4454.y, x_4454.y, x_4454.y) * vec3<f32>(x_4463.x, x_4463.y, x_4463.w));
        let x_4466 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4465.x, x_4465.y, x_4465.z, x_4466.w);
        let x_4468 : i32 = u_xlati88;
        let x_4470 : i32 = u_xlati88;
        let x_4473 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[(x_4468 / 4i)][(x_4470 % 4i)];
        let x_4475 : vec3<f32> = vs_TEXCOORD7;
        let x_4478 : vec4<f32> = u_xlat11;
        let x_4480 : vec3<f32> = ((vec3<f32>(x_4473.x, x_4473.y, x_4473.w) * vec3<f32>(x_4475.x, x_4475.x, x_4475.x)) + vec3<f32>(x_4478.x, x_4478.y, x_4478.z));
        let x_4481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4480.x, x_4480.y, x_4480.z, x_4481.w);
        let x_4483 : i32 = u_xlati88;
        let x_4486 : i32 = u_xlati88;
        let x_4490 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4483 + 2i) / 4i)][((x_4486 + 2i) % 4i)];
        let x_4492 : vec3<f32> = vs_TEXCOORD7;
        let x_4495 : vec4<f32> = u_xlat11;
        let x_4497 : vec3<f32> = ((vec3<f32>(x_4490.x, x_4490.y, x_4490.w) * vec3<f32>(x_4492.z, x_4492.z, x_4492.z)) + vec3<f32>(x_4495.x, x_4495.y, x_4495.z));
        let x_4498 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4497.x, x_4497.y, x_4497.z, x_4498.w);
        let x_4500 : vec4<f32> = u_xlat11;
        let x_4502 : i32 = u_xlati88;
        let x_4505 : i32 = u_xlati88;
        let x_4509 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4502 + 3i) / 4i)][((x_4505 + 3i) % 4i)];
        let x_4511 : vec3<f32> = (vec3<f32>(x_4500.x, x_4500.y, x_4500.z) + vec3<f32>(x_4509.x, x_4509.y, x_4509.w));
        let x_4512 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4511.x, x_4511.y, x_4511.z, x_4512.w);
        let x_4514 : vec4<f32> = u_xlat11;
        let x_4516 : vec4<f32> = u_xlat11;
        let x_4518 : vec2<f32> = (vec2<f32>(x_4514.x, x_4514.y) / vec2<f32>(x_4516.z, x_4516.z));
        let x_4519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4518.x, x_4518.y, x_4519.z, x_4519.w);
        let x_4521 : vec4<f32> = u_xlat11;
        let x_4524 : vec2<f32> = ((vec2<f32>(x_4521.x, x_4521.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4525 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4524.x, x_4524.y, x_4525.z, x_4525.w);
        let x_4527 : vec4<f32> = u_xlat11;
        let x_4531 : vec2<f32> = clamp(vec2<f32>(x_4527.x, x_4527.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4532 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4531.x, x_4531.y, x_4532.z, x_4532.w);
        let x_4534 : i32 = u_xlati54;
        let x_4536 : vec4<f32> = x_2504.x_AdditionalLightsCookieAtlasUVRects[x_4534];
        let x_4538 : vec4<f32> = u_xlat11;
        let x_4541 : i32 = u_xlati54;
        let x_4543 : vec4<f32> = x_2504.x_AdditionalLightsCookieAtlasUVRects[x_4541];
        let x_4545 : vec2<f32> = ((vec2<f32>(x_4536.x, x_4536.y) * vec2<f32>(x_4538.x, x_4538.y)) + vec2<f32>(x_4543.z, x_4543.w));
        let x_4546 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4545.x, x_4545.y, x_4546.z, x_4546.w);
      } else {
        let x_4549 : i32 = u_xlati85;
        u_xlatb85 = (x_4549 == 1i);
        let x_4551 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4551);
        let x_4553 : i32 = u_xlati85;
        if ((x_4553 != 0i)) {
          let x_4558 : vec3<f32> = vs_TEXCOORD7;
          let x_4560 : i32 = u_xlati88;
          let x_4563 : i32 = u_xlati88;
          let x_4567 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4560 + 1i) / 4i)][((x_4563 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4558.y, x_4558.y) * vec2<f32>(x_4567.x, x_4567.y));
          let x_4570 : i32 = u_xlati88;
          let x_4572 : i32 = u_xlati88;
          let x_4575 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[(x_4570 / 4i)][(x_4572 % 4i)];
          let x_4577 : vec3<f32> = vs_TEXCOORD7;
          let x_4580 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4575.x, x_4575.y) * vec2<f32>(x_4577.x, x_4577.x)) + x_4580);
          let x_4582 : i32 = u_xlati88;
          let x_4585 : i32 = u_xlati88;
          let x_4589 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4582 + 2i) / 4i)][((x_4585 + 2i) % 4i)];
          let x_4591 : vec3<f32> = vs_TEXCOORD7;
          let x_4594 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4589.x, x_4589.y) * vec2<f32>(x_4591.z, x_4591.z)) + x_4594);
          let x_4596 : vec2<f32> = u_xlat63;
          let x_4597 : i32 = u_xlati88;
          let x_4600 : i32 = u_xlati88;
          let x_4604 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4597 + 3i) / 4i)][((x_4600 + 3i) % 4i)];
          u_xlat63 = (x_4596 + vec2<f32>(x_4604.x, x_4604.y));
          let x_4607 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4607 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4610 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4610);
          let x_4612 : i32 = u_xlati54;
          let x_4614 : vec4<f32> = x_2504.x_AdditionalLightsCookieAtlasUVRects[x_4612];
          let x_4616 : vec2<f32> = u_xlat63;
          let x_4618 : i32 = u_xlati54;
          let x_4620 : vec4<f32> = x_2504.x_AdditionalLightsCookieAtlasUVRects[x_4618];
          let x_4622 : vec2<f32> = ((vec2<f32>(x_4614.x, x_4614.y) * x_4616) + vec2<f32>(x_4620.z, x_4620.w));
          let x_4623 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4622.x, x_4622.y, x_4623.z, x_4623.w);
        } else {
          let x_4626 : vec3<f32> = vs_TEXCOORD7;
          let x_4628 : i32 = u_xlati88;
          let x_4631 : i32 = u_xlati88;
          let x_4635 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4628 + 1i) / 4i)][((x_4631 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4626.y, x_4626.y, x_4626.y, x_4626.y) * x_4635);
          let x_4637 : i32 = u_xlati88;
          let x_4639 : i32 = u_xlati88;
          let x_4642 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[(x_4637 / 4i)][(x_4639 % 4i)];
          let x_4643 : vec3<f32> = vs_TEXCOORD7;
          let x_4646 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4642 * vec4<f32>(x_4643.x, x_4643.x, x_4643.x, x_4643.x)) + x_4646);
          let x_4648 : i32 = u_xlati88;
          let x_4651 : i32 = u_xlati88;
          let x_4655 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4648 + 2i) / 4i)][((x_4651 + 2i) % 4i)];
          let x_4656 : vec3<f32> = vs_TEXCOORD7;
          let x_4659 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4655 * vec4<f32>(x_4656.z, x_4656.z, x_4656.z, x_4656.z)) + x_4659);
          let x_4661 : vec4<f32> = u_xlat12;
          let x_4662 : i32 = u_xlati88;
          let x_4665 : i32 = u_xlati88;
          let x_4669 : vec4<f32> = x_2504.x_AdditionalLightsWorldToLights[((x_4662 + 3i) / 4i)][((x_4665 + 3i) % 4i)];
          u_xlat12 = (x_4661 + x_4669);
          let x_4671 : vec4<f32> = u_xlat12;
          let x_4673 : vec4<f32> = u_xlat12;
          let x_4675 : vec3<f32> = (vec3<f32>(x_4671.x, x_4671.y, x_4671.z) / vec3<f32>(x_4673.w, x_4673.w, x_4673.w));
          let x_4676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4675.x, x_4675.y, x_4675.z, x_4676.w);
          let x_4678 : vec4<f32> = u_xlat12;
          let x_4680 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4678.x, x_4678.y, x_4678.z), vec3<f32>(x_4680.x, x_4680.y, x_4680.z));
          let x_4683 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4683);
          let x_4685 : f32 = u_xlat85;
          let x_4687 : vec4<f32> = u_xlat12;
          let x_4689 : vec3<f32> = (vec3<f32>(x_4685, x_4685, x_4685) * vec3<f32>(x_4687.x, x_4687.y, x_4687.z));
          let x_4690 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4689.x, x_4689.y, x_4689.z, x_4690.w);
          let x_4692 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4692.x, x_4692.y, x_4692.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4697 : f32 = u_xlat85;
          u_xlat85 = max(x_4697, 0.00000099999999747524f);
          let x_4700 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4700);
          let x_4702 : f32 = u_xlat85;
          let x_4704 : vec4<f32> = u_xlat12;
          let x_4706 : vec3<f32> = (vec3<f32>(x_4702, x_4702, x_4702) * vec3<f32>(x_4704.z, x_4704.x, x_4704.y));
          let x_4707 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4706.x, x_4706.y, x_4706.z, x_4707.w);
          let x_4710 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4710);
          let x_4714 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4714, 0.0f, 1.0f);
          let x_4718 : vec4<f32> = u_xlat13;
          let x_4720 : vec4<bool> = (vec4<f32>(x_4718.y, x_4718.z, x_4718.y, x_4718.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4720.x, x_4720.y);
          let x_4723 : bool = u_xlatb63.x;
          if (x_4723) {
            let x_4728 : f32 = u_xlat13.x;
            x_4724 = x_4728;
          } else {
            let x_4731 : f32 = u_xlat13.x;
            x_4724 = -(x_4731);
          }
          let x_4733 : f32 = x_4724;
          u_xlat63.x = x_4733;
          let x_4736 : bool = u_xlatb63.y;
          if (x_4736) {
            let x_4741 : f32 = u_xlat13.x;
            x_4737 = x_4741;
          } else {
            let x_4744 : f32 = u_xlat13.x;
            x_4737 = -(x_4744);
          }
          let x_4746 : f32 = x_4737;
          u_xlat63.y = x_4746;
          let x_4748 : vec4<f32> = u_xlat12;
          let x_4750 : f32 = u_xlat85;
          let x_4753 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4748.x, x_4748.y) * vec2<f32>(x_4750, x_4750)) + x_4753);
          let x_4755 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4755 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4758 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4758, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4762 : i32 = u_xlati54;
          let x_4764 : vec4<f32> = x_2504.x_AdditionalLightsCookieAtlasUVRects[x_4762];
          let x_4766 : vec2<f32> = u_xlat63;
          let x_4768 : i32 = u_xlati54;
          let x_4770 : vec4<f32> = x_2504.x_AdditionalLightsCookieAtlasUVRects[x_4768];
          let x_4772 : vec2<f32> = ((vec2<f32>(x_4764.x, x_4764.y) * x_4766) + vec2<f32>(x_4770.z, x_4770.w));
          let x_4773 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4772.x, x_4772.y, x_4773.z, x_4773.w);
        }
      }
      let x_4780 : vec4<f32> = u_xlat11;
      let x_4782 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4780.x, x_4780.y), 0.0f);
      u_xlat11 = x_4782;
      let x_4784 : bool = u_xlatb2.y;
      if (x_4784) {
        let x_4789 : f32 = u_xlat11.w;
        x_4785 = x_4789;
      } else {
        let x_4792 : f32 = u_xlat11.x;
        x_4785 = x_4792;
      }
      let x_4793 : f32 = x_4785;
      u_xlat85 = x_4793;
      let x_4795 : bool = u_xlatb2.x;
      if (x_4795) {
        let x_4799 : vec4<f32> = u_xlat11;
        x_4796 = vec3<f32>(x_4799.x, x_4799.y, x_4799.z);
      } else {
        let x_4802 : f32 = u_xlat85;
        x_4796 = vec3<f32>(x_4802, x_4802, x_4802);
      }
      let x_4804 : vec3<f32> = x_4796;
      let x_4805 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4804.x, x_4804.y, x_4804.z, x_4805.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4811 : vec4<f32> = u_xlat11;
    let x_4813 : i32 = u_xlati54;
    let x_4815 : vec4<f32> = x_3014.x_AdditionalLightsColor[x_4813];
    let x_4817 : vec3<f32> = (vec3<f32>(x_4811.x, x_4811.y, x_4811.z) * vec3<f32>(x_4815.x, x_4815.y, x_4815.z));
    let x_4818 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4817.x, x_4817.y, x_4817.z, x_4818.w);
    let x_4820 : f32 = u_xlat82;
    let x_4821 : f32 = u_xlat84;
    u_xlat54 = (x_4820 * x_4821);
    let x_4823 : vec4<f32> = u_xlat1;
    let x_4825 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4823.x, x_4823.y, x_4823.z), vec3<f32>(x_4825.x, x_4825.y, x_4825.z));
    let x_4828 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4828, 0.0f, 1.0f);
    let x_4830 : f32 = u_xlat54;
    let x_4831 : f32 = u_xlat82;
    u_xlat54 = (x_4830 * x_4831);
    let x_4833 : f32 = u_xlat54;
    let x_4835 : vec4<f32> = u_xlat11;
    let x_4837 : vec3<f32> = (vec3<f32>(x_4833, x_4833, x_4833) * vec3<f32>(x_4835.x, x_4835.y, x_4835.z));
    let x_4838 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4837.x, x_4837.y, x_4837.z, x_4838.w);
    let x_4840 : vec3<f32> = u_xlat35;
    let x_4841 : f32 = u_xlat83;
    let x_4844 : vec4<f32> = u_xlat7;
    u_xlat35 = ((x_4840 * vec3<f32>(x_4841, x_4841, x_4841)) + vec3<f32>(x_4844.x, x_4844.y, x_4844.z));
    let x_4847 : vec3<f32> = u_xlat35;
    let x_4848 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(x_4847, x_4848);
    let x_4850 : f32 = u_xlat54;
    u_xlat54 = max(x_4850, 1.17549435e-38f);
    let x_4852 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4852);
    let x_4854 : f32 = u_xlat54;
    let x_4856 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4854, x_4854, x_4854) * x_4856);
    let x_4858 : vec4<f32> = u_xlat1;
    let x_4860 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(vec3<f32>(x_4858.x, x_4858.y, x_4858.z), x_4860);
    let x_4862 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4862, 0.0f, 1.0f);
    let x_4864 : vec4<f32> = u_xlat10;
    let x_4866 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4864.x, x_4864.y, x_4864.z), x_4866);
    let x_4868 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4868, 0.0f, 1.0f);
    let x_4870 : f32 = u_xlat54;
    let x_4871 : f32 = u_xlat54;
    u_xlat54 = (x_4870 * x_4871);
    let x_4873 : f32 = u_xlat54;
    let x_4875 : f32 = u_xlat9.x;
    u_xlat54 = ((x_4873 * x_4875) + 1.00001001358032226562f);
    let x_4878 : f32 = u_xlat82;
    let x_4879 : f32 = u_xlat82;
    u_xlat82 = (x_4878 * x_4879);
    let x_4881 : f32 = u_xlat54;
    let x_4882 : f32 = u_xlat54;
    u_xlat54 = (x_4881 * x_4882);
    let x_4884 : f32 = u_xlat82;
    u_xlat82 = max(x_4884, 0.10000000149011611938f);
    let x_4886 : f32 = u_xlat54;
    let x_4887 : f32 = u_xlat82;
    u_xlat54 = (x_4886 * x_4887);
    let x_4889 : f32 = u_xlat80;
    let x_4890 : f32 = u_xlat54;
    u_xlat54 = (x_4889 * x_4890);
    let x_4892 : f32 = u_xlat81;
    let x_4893 : f32 = u_xlat54;
    u_xlat54 = (x_4892 / x_4893);
    let x_4895 : vec4<f32> = u_xlat5;
    let x_4897 : f32 = u_xlat54;
    let x_4900 : vec4<f32> = u_xlat4;
    u_xlat35 = ((vec3<f32>(x_4895.x, x_4895.y, x_4895.z) * vec3<f32>(x_4897, x_4897, x_4897)) + vec3<f32>(x_4900.x, x_4900.y, x_4900.z));
    let x_4903 : vec3<f32> = u_xlat35;
    let x_4904 : vec4<f32> = u_xlat11;
    let x_4907 : vec4<f32> = u_xlat8;
    let x_4909 : vec3<f32> = ((x_4903 * vec3<f32>(x_4904.x, x_4904.y, x_4904.z)) + vec3<f32>(x_4907.x, x_4907.y, x_4907.z));
    let x_4910 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4909.x, x_4909.y, x_4909.z, x_4910.w);

    continuing {
      let x_4912 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4912 + bitcast<u32>(1i));
    }
  }
  let x_4914 : vec4<f32> = u_xlat3;
  let x_4916 : f32 = u_xlat26;
  let x_4919 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4914.x, x_4914.y, x_4914.z) * vec3<f32>(x_4916, x_4916, x_4916)) + vec3<f32>(x_4919.x, x_4919.y, x_4919.z));
  let x_4922 : vec4<f32> = u_xlat8;
  let x_4924 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4922.x, x_4922.y, x_4922.z) + x_4924);
  let x_4928 : f32 = u_xlat78;
  let x_4930 : vec3<f32> = u_xlat0;
  let x_4931 : vec3<f32> = (vec3<f32>(x_4928, x_4928, x_4928) * x_4930);
  let x_4932 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4931.x, x_4931.y, x_4931.z, x_4932.w);
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


