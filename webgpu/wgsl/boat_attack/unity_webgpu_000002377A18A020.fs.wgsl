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
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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

@group(0) @binding(12) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(19) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(21) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_980 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb31 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2325 : LightCookies;

@group(0) @binding(15) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(17) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2522 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_2809 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

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

@group(0) @binding(16) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_2408 : f32;
  var x_2420 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2945 : f32;
  var x_2955 : f32;
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
  var x_4528 : f32;
  var x_4541 : f32;
  var x_4589 : f32;
  var x_4600 : vec3<f32>;
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
  let x_862 : vec4<f32> = vs_TEXCOORD0;
  let x_865 : f32 = x_28.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_862.z, x_862.w), x_865);
  u_xlat2 = x_866;
  let x_871 : vec4<f32> = vs_TEXCOORD0;
  let x_874 : f32 = x_28.x_GlobalMipBias.x;
  let x_875 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_871.z, x_871.w), x_874);
  let x_876 : vec3<f32> = vec3<f32>(x_875.x, x_875.y, x_875.z);
  let x_877 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat2;
  let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_884 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat1;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat79;
  u_xlat79 = (x_891 + 0.5f);
  let x_893 : f32 = u_xlat79;
  let x_895 : vec4<f32> = u_xlat3;
  let x_897 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_901 : f32 = u_xlat2.w;
  u_xlat79 = max(x_901, 0.00009999999747378752f);
  let x_904 : vec4<f32> = u_xlat2;
  let x_906 : f32 = u_xlat79;
  let x_908 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) / vec3<f32>(x_906, x_906, x_906));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_912 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_912) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_918 : f32 = u_xlat52;
  let x_919 : f32 = u_xlat79;
  u_xlat80 = (x_918 + -(x_919));
  let x_922 : f32 = u_xlat79;
  let x_924 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec3<f32> = u_xlat0;
  let x_938 : vec4<f32> = u_xlat4;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.x, x_936.x) * vec3<f32>(x_938.x, x_938.y, x_938.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat52;
  u_xlat0.x = (-(x_946) + 1.0f);
  let x_951 : f32 = u_xlat0.x;
  let x_953 : f32 = u_xlat0.x;
  u_xlat52 = (x_951 * x_953);
  let x_955 : f32 = u_xlat52;
  u_xlat52 = max(x_955, 0.0078125f);
  let x_958 : f32 = u_xlat52;
  let x_959 : f32 = u_xlat52;
  u_xlat79 = (x_958 * x_959);
  let x_961 : f32 = u_xlat80;
  u_xlat80 = (x_961 + 1.0f);
  let x_963 : f32 = u_xlat80;
  u_xlat80 = clamp(x_963, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat52;
  u_xlat81 = ((x_966 * 4.0f) + 2.0f);
  let x_969 : f32 = u_xlat26;
  u_xlat26 = min(x_969, 1.0f);
  let x_982 : f32 = x_980.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_982);
  let x_984 : bool = u_xlatb82;
  if (x_984) {
    let x_988 : f32 = x_980.x_MainLightShadowParams.y;
    u_xlatb82 = (x_988 == 1.0f);
    let x_990 : bool = u_xlatb82;
    if (x_990) {
      let x_994 : vec4<f32> = vs_TEXCOORD8;
      let x_997 : vec4<f32> = x_980.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_994.x, x_994.y, x_994.x, x_994.y) + x_997);
      let x_1001 : vec4<f32> = u_xlat5;
      let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
      let x_1005 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1002.x, x_1002.y, x_1005);
      let x_1017 : vec3<f32> = txVec0;
      let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
      u_xlat6.x = x_1019;
      let x_1022 : vec4<f32> = u_xlat5;
      let x_1023 : vec2<f32> = vec2<f32>(x_1022.z, x_1022.w);
      let x_1025 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
      let x_1032 : vec3<f32> = txVec1;
      let x_1034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1032.xy, x_1032.z);
      u_xlat6.y = x_1034;
      let x_1036 : vec4<f32> = vs_TEXCOORD8;
      let x_1039 : vec4<f32> = x_980.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1036.x, x_1036.y, x_1036.x, x_1036.y) + x_1039);
      let x_1042 : vec4<f32> = u_xlat5;
      let x_1043 : vec2<f32> = vec2<f32>(x_1042.x, x_1042.y);
      let x_1045 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1043.x, x_1043.y, x_1045);
      let x_1052 : vec3<f32> = txVec2;
      let x_1054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1052.xy, x_1052.z);
      u_xlat6.z = x_1054;
      let x_1057 : vec4<f32> = u_xlat5;
      let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
      let x_1060 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
      let x_1067 : vec3<f32> = txVec3;
      let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1067.xy, x_1067.z);
      u_xlat6.w = x_1069;
      let x_1072 : vec4<f32> = u_xlat6;
      u_xlat82 = dot(x_1072, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1079 : f32 = x_980.x_MainLightShadowParams.y;
      u_xlatb5 = (x_1079 == 2.0f);
      let x_1081 : bool = u_xlatb5;
      if (x_1081) {
        let x_1084 : vec4<f32> = vs_TEXCOORD8;
        let x_1087 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.z, x_1087.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1091 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat5;
        let x_1095 : vec2<f32> = floor(vec2<f32>(x_1093.x, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1100 : vec4<f32> = vs_TEXCOORD8;
        let x_1103 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.z, x_1103.w)) + -(vec2<f32>(x_1106.x, x_1106.y)));
        let x_1110 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1110.x, x_1110.x, x_1110.y, x_1110.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1114 : vec4<f32> = u_xlat6;
        let x_1116 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1114.x, x_1114.x, x_1114.z, x_1114.z) * vec4<f32>(x_1116.x, x_1116.x, x_1116.z, x_1116.z));
        let x_1119 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = (vec2<f32>(x_1119.y, x_1119.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1124 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1123.x, x_1124.y, x_1123.y, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1129 : vec2<f32> = u_xlat57;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1129));
        let x_1132 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1135 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1135) + vec2<f32>(1.0f, 1.0f));
        let x_1139 : vec2<f32> = u_xlat57;
        let x_1141 : vec2<f32> = min(x_1139, vec2<f32>(0.0f, 0.0f));
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1147 : vec4<f32> = u_xlat8;
        let x_1150 : vec2<f32> = u_xlat59;
        let x_1151 : vec2<f32> = ((-(vec2<f32>(x_1144.x, x_1144.y)) * vec2<f32>(x_1147.x, x_1147.y)) + x_1150);
        let x_1152 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1154 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1154, vec2<f32>(0.0f, 0.0f));
        let x_1156 : vec2<f32> = u_xlat57;
        let x_1158 : vec2<f32> = u_xlat57;
        let x_1160 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_1156) * x_1158) + vec2<f32>(x_1160.y, x_1160.w));
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = (vec2<f32>(x_1163.x, x_1163.y) + vec2<f32>(1.0f, 1.0f));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1168 + vec2<f32>(1.0f, 1.0f));
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1174 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1175 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec2<f32> = u_xlat59;
        let x_1178 : vec2<f32> = (x_1177 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1184 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1186 : vec2<f32> = u_xlat57;
        let x_1187 : vec2<f32> = (x_1186 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_1190.y, x_1190.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1194 : f32 = u_xlat8.x;
        u_xlat9.z = x_1194;
        let x_1197 : f32 = u_xlat57.x;
        u_xlat9.w = x_1197;
        let x_1200 : f32 = u_xlat10.x;
        u_xlat7.z = x_1200;
        let x_1203 : f32 = u_xlat6.x;
        u_xlat7.w = x_1203;
        let x_1205 : vec4<f32> = u_xlat7;
        let x_1207 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_1205.z, x_1205.w, x_1205.x, x_1205.z) + vec4<f32>(x_1207.z, x_1207.w, x_1207.x, x_1207.z));
        let x_1211 : f32 = u_xlat9.y;
        u_xlat8.z = x_1211;
        let x_1214 : f32 = u_xlat57.y;
        u_xlat8.w = x_1214;
        let x_1217 : f32 = u_xlat7.y;
        u_xlat10.z = x_1217;
        let x_1220 : f32 = u_xlat6.z;
        u_xlat10.w = x_1220;
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1224 : vec4<f32> = u_xlat10;
        let x_1226 : vec3<f32> = (vec3<f32>(x_1222.z, x_1222.y, x_1222.w) + vec3<f32>(x_1224.z, x_1224.y, x_1224.w));
        let x_1227 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1231 : vec4<f32> = u_xlat11;
        let x_1233 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.z, x_1229.w) / vec3<f32>(x_1231.z, x_1231.w, x_1231.y));
        let x_1234 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1241 : vec3<f32> = (vec3<f32>(x_1236.x, x_1236.y, x_1236.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat10;
        let x_1246 : vec4<f32> = u_xlat6;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1244.z, x_1244.y, x_1244.w) / vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat8;
        let x_1253 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.y, x_1251.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
        let x_1256 : vec4<f32> = u_xlat7;
        let x_1259 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1256.y, x_1256.x, x_1256.z) * vec3<f32>(x_1259.x, x_1259.x, x_1259.x));
        let x_1262 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1267 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1269 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * vec3<f32>(x_1267.y, x_1267.y, x_1267.y));
        let x_1270 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
        let x_1273 : f32 = u_xlat8.x;
        u_xlat7.w = x_1273;
        let x_1275 : vec4<f32> = u_xlat5;
        let x_1278 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y) * vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y)) + vec4<f32>(x_1281.y, x_1281.w, x_1281.x, x_1281.w));
        let x_1284 : vec4<f32> = u_xlat5;
        let x_1287 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1284.x, x_1284.y) * vec2<f32>(x_1287.x, x_1287.y)) + vec2<f32>(x_1290.z, x_1290.w));
        let x_1294 : f32 = u_xlat7.y;
        u_xlat8.w = x_1294;
        let x_1296 : vec4<f32> = u_xlat8;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.y, x_1296.z);
        let x_1298 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1298.x, x_1297.x, x_1298.z, x_1297.y);
        let x_1300 : vec4<f32> = u_xlat5;
        let x_1303 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y) * vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y)) + vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1306.y));
        let x_1309 : vec4<f32> = u_xlat5;
        let x_1312 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y) * vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y)) + vec4<f32>(x_1315.w, x_1315.y, x_1315.w, x_1315.z));
        let x_1318 : vec4<f32> = u_xlat5;
        let x_1321 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y) * vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y)) + vec4<f32>(x_1324.x, x_1324.w, x_1324.z, x_1324.w));
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.x, x_1327.y) * vec4<f32>(x_1329.z, x_1329.w, x_1329.y, x_1329.z));
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1332.y, x_1332.y, x_1332.z, x_1332.z) * x_1334);
        let x_1337 : f32 = u_xlat6.z;
        let x_1339 : f32 = u_xlat11.y;
        u_xlat5.x = (x_1337 * x_1339);
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.x, x_1343.y);
        let x_1346 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1354 : vec3<f32> = txVec4;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat31.x = x_1356;
        let x_1359 : vec4<f32> = u_xlat9;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.z, x_1359.w);
        let x_1362 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec5;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1369.xy, x_1369.z);
        u_xlat6.x = x_1371;
        let x_1374 : f32 = u_xlat6.x;
        let x_1376 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1374 * x_1376);
        let x_1380 : f32 = u_xlat12.x;
        let x_1382 : f32 = u_xlat31.x;
        let x_1385 : f32 = u_xlat6.x;
        u_xlat31.x = ((x_1380 * x_1382) + x_1385);
        let x_1389 : vec2<f32> = u_xlat57;
        let x_1391 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec6;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1398.xy, x_1398.z);
        u_xlat57.x = x_1400;
        let x_1403 : f32 = u_xlat12.z;
        let x_1405 : f32 = u_xlat57.x;
        let x_1408 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1403 * x_1405) + x_1408);
        let x_1412 : vec4<f32> = u_xlat8;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec7;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1422.xy, x_1422.z);
        u_xlat57.x = x_1424;
        let x_1427 : f32 = u_xlat12.w;
        let x_1429 : f32 = u_xlat57.x;
        let x_1432 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1427 * x_1429) + x_1432);
        let x_1436 : vec4<f32> = u_xlat10;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec8;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat57.x = x_1448;
        let x_1451 : f32 = u_xlat13.x;
        let x_1453 : f32 = u_xlat57.x;
        let x_1456 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1451 * x_1453) + x_1456);
        let x_1460 : vec4<f32> = u_xlat10;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.z, x_1460.w);
        let x_1463 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec9;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1470.xy, x_1470.z);
        u_xlat57.x = x_1472;
        let x_1475 : f32 = u_xlat13.y;
        let x_1477 : f32 = u_xlat57.x;
        let x_1480 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1475 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat8;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.z, x_1484.w);
        let x_1487 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec10;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat57.x = x_1496;
        let x_1499 : f32 = u_xlat13.z;
        let x_1501 : f32 = u_xlat57.x;
        let x_1504 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1499 * x_1501) + x_1504);
        let x_1508 : vec4<f32> = u_xlat7;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec11;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat57.x = x_1520;
        let x_1523 : f32 = u_xlat13.w;
        let x_1525 : f32 = u_xlat57.x;
        let x_1528 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1523 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat7;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec12;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat57.x = x_1544;
        let x_1547 : f32 = u_xlat5.x;
        let x_1549 : f32 = u_xlat57.x;
        let x_1552 : f32 = u_xlat31.x;
        u_xlat82 = ((x_1547 * x_1549) + x_1552);
      } else {
        let x_1555 : vec4<f32> = vs_TEXCOORD8;
        let x_1558 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1561 : vec2<f32> = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.z, x_1558.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1562 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
        let x_1564 : vec4<f32> = u_xlat5;
        let x_1566 : vec2<f32> = floor(vec2<f32>(x_1564.x, x_1564.y));
        let x_1567 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1566.x, x_1566.y, x_1567.z, x_1567.w);
        let x_1569 : vec4<f32> = vs_TEXCOORD8;
        let x_1572 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1575 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1569.x, x_1569.y) * vec2<f32>(x_1572.z, x_1572.w)) + -(vec2<f32>(x_1575.x, x_1575.y)));
        let x_1579 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1579.x, x_1579.x, x_1579.y, x_1579.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1582 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1582.x, x_1582.x, x_1582.z, x_1582.z) * vec4<f32>(x_1584.x, x_1584.x, x_1584.z, x_1584.z));
        let x_1587 : vec4<f32> = u_xlat7;
        let x_1591 : vec2<f32> = (vec2<f32>(x_1587.y, x_1587.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1592 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1592.x, x_1591.x, x_1592.z, x_1591.y);
        let x_1594 : vec4<f32> = u_xlat7;
        let x_1597 : vec2<f32> = u_xlat57;
        let x_1599 : vec2<f32> = ((vec2<f32>(x_1594.x, x_1594.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1597));
        let x_1600 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1599.x, x_1600.y, x_1599.y, x_1600.w);
        let x_1602 : vec2<f32> = u_xlat57;
        let x_1604 : vec2<f32> = (-(x_1602) + vec2<f32>(1.0f, 1.0f));
        let x_1605 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
        let x_1607 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1607, vec2<f32>(0.0f, 0.0f));
        let x_1609 : vec2<f32> = u_xlat59;
        let x_1611 : vec2<f32> = u_xlat59;
        let x_1613 : vec4<f32> = u_xlat7;
        let x_1615 : vec2<f32> = ((-(x_1609) * x_1611) + vec2<f32>(x_1613.x, x_1613.y));
        let x_1616 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1615.x, x_1615.y, x_1616.z, x_1616.w);
        let x_1618 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1618, vec2<f32>(0.0f, 0.0f));
        let x_1621 : vec2<f32> = u_xlat59;
        let x_1623 : vec2<f32> = u_xlat59;
        let x_1625 : vec4<f32> = u_xlat6;
        let x_1627 : vec2<f32> = ((-(x_1621) * x_1623) + vec2<f32>(x_1625.y, x_1625.w));
        let x_1628 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1627.x, x_1628.y, x_1627.y);
        let x_1630 : vec4<f32> = u_xlat7;
        let x_1632 : vec2<f32> = (vec2<f32>(x_1630.x, x_1630.y) + vec2<f32>(2.0f, 2.0f));
        let x_1633 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
        let x_1635 : vec3<f32> = u_xlat32;
        let x_1637 : vec2<f32> = (vec2<f32>(x_1635.x, x_1635.z) + vec2<f32>(2.0f, 2.0f));
        let x_1638 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1638.x, x_1637.x, x_1638.z, x_1637.y);
        let x_1641 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1641 * 0.08163200318813323975f);
        let x_1645 : vec4<f32> = u_xlat6;
        let x_1648 : vec3<f32> = (vec3<f32>(x_1645.z, x_1645.x, x_1645.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1649 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
        let x_1651 : vec4<f32> = u_xlat7;
        let x_1654 : vec2<f32> = (vec2<f32>(x_1651.x, x_1651.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1655 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1654.x, x_1654.y, x_1655.z, x_1655.w);
        let x_1658 : f32 = u_xlat10.y;
        u_xlat9.x = x_1658;
        let x_1660 : vec2<f32> = u_xlat57;
        let x_1667 : vec2<f32> = ((vec2<f32>(x_1660.x, x_1660.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1668 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1668.x, x_1667.x, x_1668.z, x_1667.y);
        let x_1670 : vec2<f32> = u_xlat57;
        let x_1674 : vec2<f32> = ((vec2<f32>(x_1670.x, x_1670.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1675 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1675.w);
        let x_1678 : f32 = u_xlat6.x;
        u_xlat7.y = x_1678;
        let x_1681 : f32 = u_xlat8.y;
        u_xlat7.w = x_1681;
        let x_1683 : vec4<f32> = u_xlat7;
        let x_1684 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1683 + x_1684);
        let x_1686 : vec2<f32> = u_xlat57;
        let x_1689 : vec2<f32> = ((vec2<f32>(x_1686.y, x_1686.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1690 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1690.x, x_1689.x, x_1690.z, x_1689.y);
        let x_1692 : vec2<f32> = u_xlat57;
        let x_1695 : vec2<f32> = ((vec2<f32>(x_1692.y, x_1692.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1695.x, x_1696.y, x_1695.y, x_1696.w);
        let x_1699 : f32 = u_xlat6.y;
        u_xlat8.y = x_1699;
        let x_1701 : vec4<f32> = u_xlat8;
        let x_1702 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1701 + x_1702);
        let x_1704 : vec4<f32> = u_xlat7;
        let x_1705 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1704 / x_1705);
        let x_1707 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1707 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1713 : vec4<f32> = u_xlat8;
        let x_1714 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1713 / x_1714);
        let x_1716 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1716 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1718 : vec4<f32> = u_xlat7;
        let x_1721 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1718.w, x_1718.x, x_1718.y, x_1718.z) * vec4<f32>(x_1721.x, x_1721.x, x_1721.x, x_1721.x));
        let x_1724 : vec4<f32> = u_xlat8;
        let x_1727 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1724.x, x_1724.w, x_1724.y, x_1724.z) * vec4<f32>(x_1727.y, x_1727.y, x_1727.y, x_1727.y));
        let x_1730 : vec4<f32> = u_xlat7;
        let x_1731 : vec3<f32> = vec3<f32>(x_1730.y, x_1730.z, x_1730.w);
        let x_1732 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1731.x, x_1732.y, x_1731.y, x_1731.z);
        let x_1735 : f32 = u_xlat8.x;
        u_xlat10.y = x_1735;
        let x_1737 : vec4<f32> = u_xlat5;
        let x_1740 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1743 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1737.x, x_1737.y, x_1737.x, x_1737.y) * vec4<f32>(x_1740.x, x_1740.y, x_1740.x, x_1740.y)) + vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1743.y));
        let x_1746 : vec4<f32> = u_xlat5;
        let x_1749 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1752 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1749.x, x_1749.y)) + vec2<f32>(x_1752.w, x_1752.y));
        let x_1756 : f32 = u_xlat10.y;
        u_xlat7.y = x_1756;
        let x_1759 : f32 = u_xlat8.z;
        u_xlat10.y = x_1759;
        let x_1761 : vec4<f32> = u_xlat5;
        let x_1764 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1767 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1761.x, x_1761.y, x_1761.x, x_1761.y) * vec4<f32>(x_1764.x, x_1764.y, x_1764.x, x_1764.y)) + vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1767.y));
        let x_1770 : vec4<f32> = u_xlat5;
        let x_1773 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1776 : vec4<f32> = u_xlat10;
        let x_1778 : vec2<f32> = ((vec2<f32>(x_1770.x, x_1770.y) * vec2<f32>(x_1773.x, x_1773.y)) + vec2<f32>(x_1776.w, x_1776.y));
        let x_1779 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1778.x, x_1778.y, x_1779.z, x_1779.w);
        let x_1782 : f32 = u_xlat10.y;
        u_xlat7.z = x_1782;
        let x_1785 : vec4<f32> = u_xlat5;
        let x_1788 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1785.x, x_1785.y, x_1785.x, x_1785.y) * vec4<f32>(x_1788.x, x_1788.y, x_1788.x, x_1788.y)) + vec4<f32>(x_1791.x, x_1791.y, x_1791.x, x_1791.z));
        let x_1795 : f32 = u_xlat8.w;
        u_xlat10.y = x_1795;
        let x_1798 : vec4<f32> = u_xlat5;
        let x_1801 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1798.x, x_1798.y, x_1798.x, x_1798.y) * vec4<f32>(x_1801.x, x_1801.y, x_1801.x, x_1801.y)) + vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1804.y));
        let x_1808 : vec4<f32> = u_xlat5;
        let x_1811 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1814 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(x_1811.x, x_1811.y)) + vec2<f32>(x_1814.w, x_1814.y));
        let x_1818 : f32 = u_xlat10.y;
        u_xlat7.w = x_1818;
        let x_1821 : vec4<f32> = u_xlat5;
        let x_1824 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.x, x_1827.w));
        let x_1830 : vec4<f32> = u_xlat10;
        let x_1831 : vec3<f32> = vec3<f32>(x_1830.x, x_1830.z, x_1830.w);
        let x_1832 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1831.x, x_1832.y, x_1831.y, x_1831.z);
        let x_1834 : vec4<f32> = u_xlat5;
        let x_1837 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1840 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1834.x, x_1834.y, x_1834.x, x_1834.y) * vec4<f32>(x_1837.x, x_1837.y, x_1837.x, x_1837.y)) + vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1840.y));
        let x_1844 : vec4<f32> = u_xlat5;
        let x_1847 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1850 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(x_1847.x, x_1847.y)) + vec2<f32>(x_1850.w, x_1850.y));
        let x_1854 : f32 = u_xlat7.x;
        u_xlat8.x = x_1854;
        let x_1856 : vec4<f32> = u_xlat5;
        let x_1859 : vec4<f32> = x_980.x_MainLightShadowmapSize;
        let x_1862 : vec4<f32> = u_xlat8;
        let x_1864 : vec2<f32> = ((vec2<f32>(x_1856.x, x_1856.y) * vec2<f32>(x_1859.x, x_1859.y)) + vec2<f32>(x_1862.x, x_1862.y));
        let x_1865 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1864.x, x_1864.y, x_1865.z, x_1865.w);
        let x_1868 : vec4<f32> = u_xlat6;
        let x_1870 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1868.x, x_1868.x, x_1868.x, x_1868.x) * x_1870);
        let x_1873 : vec4<f32> = u_xlat6;
        let x_1875 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1873.y, x_1873.y, x_1873.y, x_1873.y) * x_1875);
        let x_1878 : vec4<f32> = u_xlat6;
        let x_1880 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1878.z, x_1878.z, x_1878.z, x_1878.z) * x_1880);
        let x_1882 : vec4<f32> = u_xlat6;
        let x_1884 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1882.w, x_1882.w, x_1882.w, x_1882.w) * x_1884);
        let x_1887 : vec4<f32> = u_xlat11;
        let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
        let x_1890 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
        let x_1897 : vec3<f32> = txVec13;
        let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1897.xy, x_1897.z);
        u_xlat7.x = x_1899;
        let x_1902 : vec4<f32> = u_xlat11;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
        let x_1905 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1913 : vec3<f32> = txVec14;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1913.xy, x_1913.z);
        u_xlat85 = x_1915;
        let x_1916 : f32 = u_xlat85;
        let x_1918 : f32 = u_xlat16.y;
        u_xlat85 = (x_1916 * x_1918);
        let x_1921 : f32 = u_xlat16.x;
        let x_1923 : f32 = u_xlat7.x;
        let x_1925 : f32 = u_xlat85;
        u_xlat7.x = ((x_1921 * x_1923) + x_1925);
        let x_1929 : vec2<f32> = u_xlat57;
        let x_1931 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1929.x, x_1929.y, x_1931);
        let x_1938 : vec3<f32> = txVec15;
        let x_1940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1938.xy, x_1938.z);
        u_xlat57.x = x_1940;
        let x_1943 : f32 = u_xlat16.z;
        let x_1945 : f32 = u_xlat57.x;
        let x_1948 : f32 = u_xlat7.x;
        u_xlat57.x = ((x_1943 * x_1945) + x_1948);
        let x_1952 : vec4<f32> = u_xlat14;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1963 : vec3<f32> = txVec16;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat83 = x_1965;
        let x_1967 : f32 = u_xlat16.w;
        let x_1968 : f32 = u_xlat83;
        let x_1971 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1967 * x_1968) + x_1971);
        let x_1975 : vec4<f32> = u_xlat12;
        let x_1976 : vec2<f32> = vec2<f32>(x_1975.x, x_1975.y);
        let x_1978 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec17;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1985.xy, x_1985.z);
        u_xlat83 = x_1987;
        let x_1989 : f32 = u_xlat17.x;
        let x_1990 : f32 = u_xlat83;
        let x_1993 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1989 * x_1990) + x_1993);
        let x_1997 : vec4<f32> = u_xlat12;
        let x_1998 : vec2<f32> = vec2<f32>(x_1997.z, x_1997.w);
        let x_2000 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec18;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2007.xy, x_2007.z);
        u_xlat83 = x_2009;
        let x_2011 : f32 = u_xlat17.y;
        let x_2012 : f32 = u_xlat83;
        let x_2015 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2011 * x_2012) + x_2015);
        let x_2019 : vec4<f32> = u_xlat13;
        let x_2020 : vec2<f32> = vec2<f32>(x_2019.x, x_2019.y);
        let x_2022 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec19;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2029.xy, x_2029.z);
        u_xlat83 = x_2031;
        let x_2033 : f32 = u_xlat17.z;
        let x_2034 : f32 = u_xlat83;
        let x_2037 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2033 * x_2034) + x_2037);
        let x_2041 : vec4<f32> = u_xlat14;
        let x_2042 : vec2<f32> = vec2<f32>(x_2041.z, x_2041.w);
        let x_2044 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2042.x, x_2042.y, x_2044);
        let x_2051 : vec3<f32> = txVec20;
        let x_2053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2051.xy, x_2051.z);
        u_xlat83 = x_2053;
        let x_2055 : f32 = u_xlat17.w;
        let x_2056 : f32 = u_xlat83;
        let x_2059 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2055 * x_2056) + x_2059);
        let x_2063 : vec4<f32> = u_xlat15;
        let x_2064 : vec2<f32> = vec2<f32>(x_2063.x, x_2063.y);
        let x_2066 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
        let x_2073 : vec3<f32> = txVec21;
        let x_2075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2073.xy, x_2073.z);
        u_xlat83 = x_2075;
        let x_2077 : f32 = u_xlat18.x;
        let x_2078 : f32 = u_xlat83;
        let x_2081 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2077 * x_2078) + x_2081);
        let x_2085 : vec4<f32> = u_xlat15;
        let x_2086 : vec2<f32> = vec2<f32>(x_2085.z, x_2085.w);
        let x_2088 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
        let x_2095 : vec3<f32> = txVec22;
        let x_2097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2095.xy, x_2095.z);
        u_xlat83 = x_2097;
        let x_2099 : f32 = u_xlat18.y;
        let x_2100 : f32 = u_xlat83;
        let x_2103 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2099 * x_2100) + x_2103);
        let x_2107 : vec2<f32> = u_xlat33;
        let x_2109 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2107.x, x_2107.y, x_2109);
        let x_2116 : vec3<f32> = txVec23;
        let x_2118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2116.xy, x_2116.z);
        u_xlat83 = x_2118;
        let x_2120 : f32 = u_xlat18.z;
        let x_2121 : f32 = u_xlat83;
        let x_2124 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2120 * x_2121) + x_2124);
        let x_2128 : vec2<f32> = u_xlat65;
        let x_2130 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
        let x_2137 : vec3<f32> = txVec24;
        let x_2139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
        u_xlat83 = x_2139;
        let x_2141 : f32 = u_xlat18.w;
        let x_2142 : f32 = u_xlat83;
        let x_2145 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2141 * x_2142) + x_2145);
        let x_2149 : vec4<f32> = u_xlat10;
        let x_2150 : vec2<f32> = vec2<f32>(x_2149.x, x_2149.y);
        let x_2152 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2150.x, x_2150.y, x_2152);
        let x_2159 : vec3<f32> = txVec25;
        let x_2161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2159.xy, x_2159.z);
        u_xlat83 = x_2161;
        let x_2163 : f32 = u_xlat6.x;
        let x_2164 : f32 = u_xlat83;
        let x_2167 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2163 * x_2164) + x_2167);
        let x_2171 : vec4<f32> = u_xlat10;
        let x_2172 : vec2<f32> = vec2<f32>(x_2171.z, x_2171.w);
        let x_2174 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2172.x, x_2172.y, x_2174);
        let x_2181 : vec3<f32> = txVec26;
        let x_2183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2181.xy, x_2181.z);
        u_xlat83 = x_2183;
        let x_2185 : f32 = u_xlat6.y;
        let x_2186 : f32 = u_xlat83;
        let x_2189 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2185 * x_2186) + x_2189);
        let x_2193 : vec2<f32> = u_xlat60;
        let x_2195 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2193.x, x_2193.y, x_2195);
        let x_2202 : vec3<f32> = txVec27;
        let x_2204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2202.xy, x_2202.z);
        u_xlat83 = x_2204;
        let x_2206 : f32 = u_xlat6.z;
        let x_2207 : f32 = u_xlat83;
        let x_2210 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2206 * x_2207) + x_2210);
        let x_2214 : vec4<f32> = u_xlat5;
        let x_2215 : vec2<f32> = vec2<f32>(x_2214.x, x_2214.y);
        let x_2217 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2215.x, x_2215.y, x_2217);
        let x_2224 : vec3<f32> = txVec28;
        let x_2226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2224.xy, x_2224.z);
        u_xlat5.x = x_2226;
        let x_2229 : f32 = u_xlat6.w;
        let x_2231 : f32 = u_xlat5.x;
        let x_2234 : f32 = u_xlat57.x;
        u_xlat82 = ((x_2229 * x_2231) + x_2234);
      }
    }
  } else {
    let x_2238 : vec4<f32> = vs_TEXCOORD8;
    let x_2239 : vec2<f32> = vec2<f32>(x_2238.x, x_2238.y);
    let x_2241 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2239.x, x_2239.y, x_2241);
    let x_2248 : vec3<f32> = txVec29;
    let x_2250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2248.xy, x_2248.z);
    u_xlat82 = x_2250;
  }
  let x_2252 : f32 = x_980.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_2252) + 1.0f);
  let x_2256 : f32 = u_xlat82;
  let x_2258 : f32 = x_980.x_MainLightShadowParams.x;
  let x_2261 : f32 = u_xlat5.x;
  u_xlat82 = ((x_2256 * x_2258) + x_2261);
  let x_2264 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_2264);
  let x_2270 : f32 = vs_TEXCOORD8.z;
  u_xlatb31.x = (x_2270 >= 1.0f);
  let x_2274 : bool = u_xlatb31.x;
  let x_2275 : bool = u_xlatb5;
  u_xlatb5 = (x_2274 | x_2275);
  let x_2277 : bool = u_xlatb5;
  let x_2278 : f32 = u_xlat82;
  u_xlat82 = select(x_2278, 1.0f, x_2277);
  let x_2282 : vec3<f32> = vs_TEXCOORD7;
  let x_2285 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_2287 : vec3<f32> = (x_2282 + -(x_2285));
  let x_2288 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
  let x_2290 : vec4<f32> = u_xlat5;
  let x_2292 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2290.x, x_2290.y, x_2290.z), vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
  let x_2297 : f32 = u_xlat5.x;
  let x_2299 : f32 = x_980.x_MainLightShadowParams.z;
  let x_2302 : f32 = x_980.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2297 * x_2299) + x_2302);
  let x_2306 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2306, 0.0f, 1.0f);
  let x_2309 : f32 = u_xlat82;
  u_xlat57.x = (-(x_2309) + 1.0f);
  let x_2314 : f32 = u_xlat31.x;
  let x_2316 : f32 = u_xlat57.x;
  let x_2318 : f32 = u_xlat82;
  u_xlat82 = ((x_2314 * x_2316) + x_2318);
  let x_2327 : f32 = x_2325.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_2327 == -1.0f));
  let x_2331 : bool = u_xlatb31.x;
  if (x_2331) {
    let x_2334 : vec3<f32> = vs_TEXCOORD7;
    let x_2337 : vec4<f32> = x_2325.x_MainLightWorldToLight[1i];
    let x_2339 : vec2<f32> = (vec2<f32>(x_2334.y, x_2334.y) * vec2<f32>(x_2337.x, x_2337.y));
    let x_2340 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2339.x, x_2339.y, x_2340.z);
    let x_2343 : vec4<f32> = x_2325.x_MainLightWorldToLight[0i];
    let x_2345 : vec3<f32> = vs_TEXCOORD7;
    let x_2348 : vec3<f32> = u_xlat31;
    let x_2350 : vec2<f32> = ((vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(x_2345.x, x_2345.x)) + vec2<f32>(x_2348.x, x_2348.y));
    let x_2351 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2350.x, x_2350.y, x_2351.z);
    let x_2354 : vec4<f32> = x_2325.x_MainLightWorldToLight[2i];
    let x_2356 : vec3<f32> = vs_TEXCOORD7;
    let x_2359 : vec3<f32> = u_xlat31;
    let x_2361 : vec2<f32> = ((vec2<f32>(x_2354.x, x_2354.y) * vec2<f32>(x_2356.z, x_2356.z)) + vec2<f32>(x_2359.x, x_2359.y));
    let x_2362 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2361.x, x_2361.y, x_2362.z);
    let x_2364 : vec3<f32> = u_xlat31;
    let x_2367 : vec4<f32> = x_2325.x_MainLightWorldToLight[3i];
    let x_2369 : vec2<f32> = (vec2<f32>(x_2364.x, x_2364.y) + vec2<f32>(x_2367.x, x_2367.y));
    let x_2370 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2369.x, x_2369.y, x_2370.z);
    let x_2372 : vec3<f32> = u_xlat31;
    let x_2375 : vec2<f32> = ((vec2<f32>(x_2372.x, x_2372.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2376 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2375.x, x_2375.y, x_2376.z);
    let x_2383 : vec3<f32> = u_xlat31;
    let x_2386 : f32 = x_28.x_GlobalMipBias.x;
    let x_2387 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2383.x, x_2383.y), x_2386);
    u_xlat6 = x_2387;
    let x_2389 : f32 = x_2325.x_MainLightCookieTextureFormat;
    let x_2391 : f32 = x_2325.x_MainLightCookieTextureFormat;
    let x_2393 : f32 = x_2325.x_MainLightCookieTextureFormat;
    let x_2395 : f32 = x_2325.x_MainLightCookieTextureFormat;
    let x_2396 : vec4<f32> = vec4<f32>(x_2389, x_2391, x_2393, x_2395);
    let x_2403 : vec4<bool> = (vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2396.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_2403.x, x_2403.y);
    let x_2406 : bool = u_xlatb31.y;
    if (x_2406) {
      let x_2412 : f32 = u_xlat6.w;
      x_2408 = x_2412;
    } else {
      let x_2415 : f32 = u_xlat6.x;
      x_2408 = x_2415;
    }
    let x_2416 : f32 = x_2408;
    u_xlat57.x = x_2416;
    let x_2419 : bool = u_xlatb31.x;
    if (x_2419) {
      let x_2423 : vec4<f32> = u_xlat6;
      x_2420 = vec3<f32>(x_2423.x, x_2423.y, x_2423.z);
    } else {
      let x_2426 : vec2<f32> = u_xlat57;
      x_2420 = vec3<f32>(x_2426.x, x_2426.x, x_2426.x);
    }
    let x_2428 : vec3<f32> = x_2420;
    u_xlat31 = x_2428;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_2433 : vec3<f32> = u_xlat31;
  let x_2435 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat31 = (x_2433 * vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
  let x_2439 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2439;
  let x_2442 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2442;
  let x_2445 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2445;
  let x_2448 : vec4<f32> = u_xlat6;
  let x_2451 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(vec3<f32>(x_2448.x, x_2448.y, x_2448.z)), vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : f32 = u_xlat84;
  let x_2455 : f32 = u_xlat84;
  u_xlat84 = (x_2454 + x_2455);
  let x_2457 : vec4<f32> = u_xlat1;
  let x_2459 : f32 = u_xlat84;
  let x_2463 : vec4<f32> = u_xlat6;
  let x_2466 : vec3<f32> = ((vec3<f32>(x_2457.x, x_2457.y, x_2457.z) * -(vec3<f32>(x_2459, x_2459, x_2459))) + -(vec3<f32>(x_2463.x, x_2463.y, x_2463.z)));
  let x_2467 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
  let x_2469 : vec4<f32> = u_xlat1;
  let x_2471 : vec4<f32> = u_xlat6;
  u_xlat84 = dot(vec3<f32>(x_2469.x, x_2469.y, x_2469.z), vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
  let x_2474 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2474, 0.0f, 1.0f);
  let x_2476 : f32 = u_xlat84;
  u_xlat84 = (-(x_2476) + 1.0f);
  let x_2479 : f32 = u_xlat84;
  let x_2480 : f32 = u_xlat84;
  u_xlat84 = (x_2479 * x_2480);
  let x_2482 : f32 = u_xlat84;
  let x_2483 : f32 = u_xlat84;
  u_xlat84 = (x_2482 * x_2483);
  let x_2486 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2486) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2493 : f32 = u_xlat0.x;
  let x_2494 : f32 = u_xlat85;
  u_xlat0.x = (x_2493 * x_2494);
  let x_2498 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2498 * 6.0f);
  let x_2510 : vec4<f32> = u_xlat7;
  let x_2513 : f32 = u_xlat0.x;
  let x_2514 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2510.x, x_2510.y, x_2510.z), x_2513);
  u_xlat7 = x_2514;
  let x_2516 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2516 + -1.0f);
  let x_2524 : f32 = x_2522.unity_SpecCube0_HDR.w;
  let x_2526 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2524 * x_2526) + 1.0f);
  let x_2531 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2531, 0.0f);
  let x_2535 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2535);
  let x_2539 : f32 = u_xlat0.x;
  let x_2541 : f32 = x_2522.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2539 * x_2541);
  let x_2545 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2545);
  let x_2549 : f32 = u_xlat0.x;
  let x_2551 : f32 = x_2522.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2549 * x_2551);
  let x_2554 : vec4<f32> = u_xlat7;
  let x_2556 : vec3<f32> = u_xlat0;
  let x_2558 : vec3<f32> = (vec3<f32>(x_2554.x, x_2554.y, x_2554.z) * vec3<f32>(x_2556.x, x_2556.x, x_2556.x));
  let x_2559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
  let x_2561 : f32 = u_xlat52;
  let x_2563 : f32 = u_xlat52;
  let x_2567 : vec2<f32> = ((vec2<f32>(x_2561, x_2561) * vec2<f32>(x_2563, x_2563)) + vec2<f32>(-1.0f, 1.0f));
  let x_2568 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2567.x, x_2568.y, x_2567.y);
  let x_2571 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2571);
  let x_2573 : vec4<f32> = u_xlat4;
  let x_2576 : f32 = u_xlat80;
  let x_2578 : vec3<f32> = (-(vec3<f32>(x_2573.x, x_2573.y, x_2573.z)) + vec3<f32>(x_2576, x_2576, x_2576));
  let x_2579 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
  let x_2581 : f32 = u_xlat84;
  let x_2583 : vec4<f32> = u_xlat8;
  let x_2586 : vec4<f32> = u_xlat4;
  let x_2588 : vec3<f32> = ((vec3<f32>(x_2581, x_2581, x_2581) * vec3<f32>(x_2583.x, x_2583.y, x_2583.z)) + vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
  let x_2589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2588.x, x_2588.y, x_2588.z, x_2589.w);
  let x_2591 : f32 = u_xlat52;
  let x_2593 : vec4<f32> = u_xlat8;
  let x_2595 : vec3<f32> = (vec3<f32>(x_2591, x_2591, x_2591) * vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
  let x_2596 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
  let x_2598 : vec4<f32> = u_xlat7;
  let x_2600 : vec4<f32> = u_xlat8;
  let x_2602 : vec3<f32> = (vec3<f32>(x_2598.x, x_2598.y, x_2598.z) * vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
  let x_2603 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
  let x_2605 : vec4<f32> = u_xlat2;
  let x_2607 : vec4<f32> = u_xlat3;
  let x_2610 : vec4<f32> = u_xlat7;
  let x_2612 : vec3<f32> = ((vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2607.x, x_2607.y, x_2607.z)) + vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
  let x_2615 : f32 = u_xlat82;
  let x_2617 : f32 = x_2522.unity_LightData.z;
  u_xlat52 = (x_2615 * x_2617);
  let x_2619 : vec4<f32> = u_xlat1;
  let x_2622 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2619.x, x_2619.y, x_2619.z), vec3<f32>(x_2622.x, x_2622.y, x_2622.z));
  let x_2625 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2625, 0.0f, 1.0f);
  let x_2627 : f32 = u_xlat52;
  let x_2628 : f32 = u_xlat80;
  u_xlat52 = (x_2627 * x_2628);
  let x_2630 : f32 = u_xlat52;
  let x_2632 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2630, x_2630, x_2630) * x_2632);
  let x_2634 : vec4<f32> = u_xlat6;
  let x_2637 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2639 : vec3<f32> = (vec3<f32>(x_2634.x, x_2634.y, x_2634.z) + vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
  let x_2640 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
  let x_2642 : vec4<f32> = u_xlat7;
  let x_2644 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2642.x, x_2642.y, x_2642.z), vec3<f32>(x_2644.x, x_2644.y, x_2644.z));
  let x_2647 : f32 = u_xlat52;
  u_xlat52 = max(x_2647, 1.17549435e-38f);
  let x_2650 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2650);
  let x_2652 : f32 = u_xlat52;
  let x_2654 : vec4<f32> = u_xlat7;
  let x_2656 : vec3<f32> = (vec3<f32>(x_2652, x_2652, x_2652) * vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
  let x_2657 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
  let x_2659 : vec4<f32> = u_xlat1;
  let x_2661 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2659.x, x_2659.y, x_2659.z), vec3<f32>(x_2661.x, x_2661.y, x_2661.z));
  let x_2664 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2664, 0.0f, 1.0f);
  let x_2667 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2669 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2667.x, x_2667.y, x_2667.z), vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
  let x_2672 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2672, 0.0f, 1.0f);
  let x_2674 : f32 = u_xlat52;
  let x_2675 : f32 = u_xlat52;
  u_xlat52 = (x_2674 * x_2675);
  let x_2677 : f32 = u_xlat52;
  let x_2679 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2677 * x_2679) + 1.00001001358032226562f);
  let x_2683 : f32 = u_xlat80;
  let x_2684 : f32 = u_xlat80;
  u_xlat80 = (x_2683 * x_2684);
  let x_2686 : f32 = u_xlat52;
  let x_2687 : f32 = u_xlat52;
  u_xlat52 = (x_2686 * x_2687);
  let x_2689 : f32 = u_xlat80;
  u_xlat80 = max(x_2689, 0.10000000149011611938f);
  let x_2692 : f32 = u_xlat52;
  let x_2693 : f32 = u_xlat80;
  u_xlat52 = (x_2692 * x_2693);
  let x_2695 : f32 = u_xlat81;
  let x_2696 : f32 = u_xlat52;
  u_xlat52 = (x_2695 * x_2696);
  let x_2698 : f32 = u_xlat79;
  let x_2699 : f32 = u_xlat52;
  u_xlat52 = (x_2698 / x_2699);
  let x_2701 : vec4<f32> = u_xlat4;
  let x_2703 : f32 = u_xlat52;
  let x_2706 : vec4<f32> = u_xlat3;
  let x_2708 : vec3<f32> = ((vec3<f32>(x_2701.x, x_2701.y, x_2701.z) * vec3<f32>(x_2703, x_2703, x_2703)) + vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
  let x_2709 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
  let x_2711 : vec3<f32> = u_xlat31;
  let x_2712 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2711 * vec3<f32>(x_2712.x, x_2712.y, x_2712.z));
  let x_2716 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2718 : f32 = x_2522.unity_LightData.y;
  u_xlat52 = min(x_2716, x_2718);
  let x_2722 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2722));
  let x_2726 : f32 = u_xlat5.x;
  let x_2728 : f32 = x_980.x_AdditionalShadowFadeParams.x;
  let x_2731 : f32 = x_980.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2726 * x_2728) + x_2731);
  let x_2733 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2733, 0.0f, 1.0f);
  let x_2737 : f32 = x_2325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2739 : f32 = x_2325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2741 : f32 = x_2325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2743 : f32 = x_2325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2744 : vec4<f32> = vec4<f32>(x_2737, x_2739, x_2741, x_2743);
  let x_2750 : vec4<bool> = (vec4<f32>(x_2744.x, x_2744.y, x_2744.z, x_2744.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2750.x, x_2750.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2762 : u32 = u_xlatu_loop_1;
    let x_2763 : u32 = u_xlatu52;
    if ((x_2762 < x_2763)) {
    } else {
      break;
    }
    let x_2766 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_2766 >> 2u);
    let x_2770 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2770 & 3u));
    let x_2773 : u32 = u_xlatu5;
    let x_2776 : vec4<f32> = x_2522.unity_LightIndices[bitcast<i32>(x_2773)];
    let x_2786 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2791 : vec4<u32> = indexable[x_2786];
    u_xlat5.x = dot(x_2776, bitcast<vec4<f32>>(x_2791));
    let x_2797 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_2797);
    let x_2799 : vec3<f32> = vs_TEXCOORD7;
    let x_2810 : i32 = u_xlati5;
    let x_2812 : vec4<f32> = x_2809.x_AdditionalLightsPosition[x_2810];
    let x_2815 : i32 = u_xlati5;
    let x_2817 : vec4<f32> = x_2809.x_AdditionalLightsPosition[x_2815];
    let x_2819 : vec3<f32> = ((-(x_2799) * vec3<f32>(x_2812.w, x_2812.w, x_2812.w)) + vec3<f32>(x_2817.x, x_2817.y, x_2817.z));
    let x_2820 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2819.x, x_2819.y, x_2819.z, x_2820.w);
    let x_2822 : vec4<f32> = u_xlat9;
    let x_2824 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2822.x, x_2822.y, x_2822.z), vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
    let x_2827 : f32 = u_xlat84;
    u_xlat84 = max(x_2827, 0.00006103515625f);
    let x_2829 : f32 = u_xlat84;
    u_xlat59.x = inverseSqrt(x_2829);
    let x_2832 : vec2<f32> = u_xlat59;
    let x_2834 : vec4<f32> = u_xlat9;
    let x_2836 : vec3<f32> = (vec3<f32>(x_2832.x, x_2832.x, x_2832.x) * vec3<f32>(x_2834.x, x_2834.y, x_2834.z));
    let x_2837 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2836.x, x_2836.y, x_2836.z, x_2837.w);
    let x_2839 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2839);
    let x_2841 : f32 = u_xlat84;
    let x_2842 : i32 = u_xlati5;
    let x_2844 : f32 = x_2809.x_AdditionalLightsAttenuation[x_2842].x;
    u_xlat84 = (x_2841 * x_2844);
    let x_2846 : f32 = u_xlat84;
    let x_2848 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2846) * x_2848) + 1.0f);
    let x_2851 : f32 = u_xlat84;
    u_xlat84 = max(x_2851, 0.0f);
    let x_2853 : f32 = u_xlat84;
    let x_2854 : f32 = u_xlat84;
    u_xlat84 = (x_2853 * x_2854);
    let x_2856 : f32 = u_xlat84;
    let x_2857 : f32 = u_xlat85;
    u_xlat84 = (x_2856 * x_2857);
    let x_2859 : i32 = u_xlati5;
    let x_2861 : vec4<f32> = x_2809.x_AdditionalLightsSpotDir[x_2859];
    let x_2863 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2861.x, x_2861.y, x_2861.z), vec3<f32>(x_2863.x, x_2863.y, x_2863.z));
    let x_2866 : f32 = u_xlat85;
    let x_2867 : i32 = u_xlati5;
    let x_2869 : f32 = x_2809.x_AdditionalLightsAttenuation[x_2867].z;
    let x_2871 : i32 = u_xlati5;
    let x_2873 : f32 = x_2809.x_AdditionalLightsAttenuation[x_2871].w;
    u_xlat85 = ((x_2866 * x_2869) + x_2873);
    let x_2875 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2875, 0.0f, 1.0f);
    let x_2877 : f32 = u_xlat85;
    let x_2878 : f32 = u_xlat85;
    u_xlat85 = (x_2877 * x_2878);
    let x_2880 : f32 = u_xlat84;
    let x_2881 : f32 = u_xlat85;
    u_xlat84 = (x_2880 * x_2881);
    let x_2884 : i32 = u_xlati5;
    let x_2886 : f32 = x_980.x_AdditionalShadowParams[x_2884].w;
    u_xlati85 = i32(x_2886);
    let x_2889 : i32 = u_xlati85;
    u_xlatb86 = (x_2889 >= 0i);
    let x_2891 : bool = u_xlatb86;
    if (x_2891) {
      let x_2895 : i32 = u_xlati5;
      let x_2897 : f32 = x_980.x_AdditionalShadowParams[x_2895].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2897, x_2897, x_2897, x_2897))));
      let x_2901 : bool = u_xlatb86;
      if (x_2901) {
        let x_2906 : vec4<f32> = u_xlat10;
        let x_2909 : vec4<f32> = u_xlat10;
        let x_2912 : vec4<bool> = (abs(vec4<f32>(x_2906.z, x_2906.z, x_2906.y, x_2906.z)) >= abs(vec4<f32>(x_2909.x, x_2909.y, x_2909.x, x_2909.x)));
        let x_2914 : vec3<bool> = vec3<bool>(x_2912.x, x_2912.y, x_2912.z);
        let x_2915 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
        let x_2918 : bool = u_xlatb11.y;
        let x_2920 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2918 & x_2920);
        let x_2922 : vec4<f32> = u_xlat10;
        let x_2925 : vec4<bool> = (-(vec4<f32>(x_2922.z, x_2922.y, x_2922.z, x_2922.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2926 : vec3<bool> = vec3<bool>(x_2925.x, x_2925.y, x_2925.w);
        let x_2927 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2926.x, x_2926.y, x_2927.z, x_2926.z);
        let x_2930 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2930);
        let x_2935 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2935);
        let x_2941 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2941);
        let x_2944 : bool = u_xlatb11.z;
        if (x_2944) {
          let x_2949 : f32 = u_xlat11.y;
          x_2945 = x_2949;
        } else {
          let x_2951 : f32 = u_xlat87;
          x_2945 = x_2951;
        }
        let x_2952 : f32 = x_2945;
        u_xlat87 = x_2952;
        let x_2954 : bool = u_xlatb86;
        if (x_2954) {
          let x_2959 : f32 = u_xlat11.x;
          x_2955 = x_2959;
        } else {
          let x_2961 : f32 = u_xlat87;
          x_2955 = x_2961;
        }
        let x_2962 : f32 = x_2955;
        u_xlat86 = x_2962;
        let x_2963 : i32 = u_xlati5;
        let x_2965 : f32 = x_980.x_AdditionalShadowParams[x_2963].w;
        u_xlat87 = trunc(x_2965);
        let x_2967 : f32 = u_xlat86;
        let x_2968 : f32 = u_xlat87;
        u_xlat86 = (x_2967 + x_2968);
        let x_2970 : f32 = u_xlat86;
        u_xlati85 = i32(x_2970);
      }
      let x_2972 : i32 = u_xlati85;
      u_xlati85 = (x_2972 << bitcast<u32>(2i));
      let x_2974 : vec3<f32> = vs_TEXCOORD7;
      let x_2976 : i32 = u_xlati85;
      let x_2979 : i32 = u_xlati85;
      let x_2983 : vec4<f32> = x_980.x_AdditionalLightsWorldToShadow[((x_2976 + 1i) / 4i)][((x_2979 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2974.y, x_2974.y, x_2974.y, x_2974.y) * x_2983);
      let x_2985 : i32 = u_xlati85;
      let x_2987 : i32 = u_xlati85;
      let x_2990 : vec4<f32> = x_980.x_AdditionalLightsWorldToShadow[(x_2985 / 4i)][(x_2987 % 4i)];
      let x_2991 : vec3<f32> = vs_TEXCOORD7;
      let x_2994 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2990 * vec4<f32>(x_2991.x, x_2991.x, x_2991.x, x_2991.x)) + x_2994);
      let x_2996 : i32 = u_xlati85;
      let x_2999 : i32 = u_xlati85;
      let x_3003 : vec4<f32> = x_980.x_AdditionalLightsWorldToShadow[((x_2996 + 2i) / 4i)][((x_2999 + 2i) % 4i)];
      let x_3004 : vec3<f32> = vs_TEXCOORD7;
      let x_3007 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3003 * vec4<f32>(x_3004.z, x_3004.z, x_3004.z, x_3004.z)) + x_3007);
      let x_3009 : vec4<f32> = u_xlat11;
      let x_3010 : i32 = u_xlati85;
      let x_3013 : i32 = u_xlati85;
      let x_3017 : vec4<f32> = x_980.x_AdditionalLightsWorldToShadow[((x_3010 + 3i) / 4i)][((x_3013 + 3i) % 4i)];
      u_xlat11 = (x_3009 + x_3017);
      let x_3019 : vec4<f32> = u_xlat11;
      let x_3021 : vec4<f32> = u_xlat11;
      let x_3023 : vec3<f32> = (vec3<f32>(x_3019.x, x_3019.y, x_3019.z) / vec3<f32>(x_3021.w, x_3021.w, x_3021.w));
      let x_3024 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3023.x, x_3023.y, x_3023.z, x_3024.w);
      let x_3027 : i32 = u_xlati5;
      let x_3029 : f32 = x_980.x_AdditionalShadowParams[x_3027].y;
      u_xlatb85 = (0.0f < x_3029);
      let x_3031 : bool = u_xlatb85;
      if (x_3031) {
        let x_3034 : i32 = u_xlati5;
        let x_3036 : f32 = x_980.x_AdditionalShadowParams[x_3034].y;
        u_xlatb85 = (1.0f == x_3036);
        let x_3038 : bool = u_xlatb85;
        if (x_3038) {
          let x_3041 : vec4<f32> = u_xlat11;
          let x_3044 : vec4<f32> = x_980.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3041.x, x_3041.y, x_3041.x, x_3041.y) + x_3044);
          let x_3047 : vec4<f32> = u_xlat12;
          let x_3048 : vec2<f32> = vec2<f32>(x_3047.x, x_3047.y);
          let x_3050 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3048.x, x_3048.y, x_3050);
          let x_3058 : vec3<f32> = txVec30;
          let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
          u_xlat13.x = x_3060;
          let x_3063 : vec4<f32> = u_xlat12;
          let x_3064 : vec2<f32> = vec2<f32>(x_3063.z, x_3063.w);
          let x_3066 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
          let x_3073 : vec3<f32> = txVec31;
          let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
          u_xlat13.y = x_3075;
          let x_3077 : vec4<f32> = u_xlat11;
          let x_3080 : vec4<f32> = x_980.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y) + x_3080);
          let x_3083 : vec4<f32> = u_xlat12;
          let x_3084 : vec2<f32> = vec2<f32>(x_3083.x, x_3083.y);
          let x_3086 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
          let x_3093 : vec3<f32> = txVec32;
          let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
          u_xlat13.z = x_3095;
          let x_3098 : vec4<f32> = u_xlat12;
          let x_3099 : vec2<f32> = vec2<f32>(x_3098.z, x_3098.w);
          let x_3101 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
          let x_3108 : vec3<f32> = txVec33;
          let x_3110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
          u_xlat13.w = x_3110;
          let x_3112 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3112, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3115 : i32 = u_xlati5;
          let x_3117 : f32 = x_980.x_AdditionalShadowParams[x_3115].y;
          u_xlatb86 = (2.0f == x_3117);
          let x_3119 : bool = u_xlatb86;
          if (x_3119) {
            let x_3122 : vec4<f32> = u_xlat11;
            let x_3125 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3128 : vec2<f32> = ((vec2<f32>(x_3122.x, x_3122.y) * vec2<f32>(x_3125.z, x_3125.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3129 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3128.x, x_3128.y, x_3129.z, x_3129.w);
            let x_3131 : vec4<f32> = u_xlat12;
            let x_3133 : vec2<f32> = floor(vec2<f32>(x_3131.x, x_3131.y));
            let x_3134 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3133.x, x_3133.y, x_3134.z, x_3134.w);
            let x_3137 : vec4<f32> = u_xlat11;
            let x_3140 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3143 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3137.x, x_3137.y) * vec2<f32>(x_3140.z, x_3140.w)) + -(vec2<f32>(x_3143.x, x_3143.y)));
            let x_3147 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3147.x, x_3147.x, x_3147.y, x_3147.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3150 : vec4<f32> = u_xlat13;
            let x_3152 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3150.x, x_3150.x, x_3150.z, x_3150.z) * vec4<f32>(x_3152.x, x_3152.x, x_3152.z, x_3152.z));
            let x_3155 : vec4<f32> = u_xlat14;
            let x_3157 : vec2<f32> = (vec2<f32>(x_3155.y, x_3155.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3158 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3157.x, x_3158.y, x_3157.y, x_3158.w);
            let x_3160 : vec4<f32> = u_xlat14;
            let x_3163 : vec2<f32> = u_xlat64;
            let x_3165 : vec2<f32> = ((vec2<f32>(x_3160.x, x_3160.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3163));
            let x_3166 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3165.x, x_3165.y, x_3166.z, x_3166.w);
            let x_3169 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3169) + vec2<f32>(1.0f, 1.0f));
            let x_3172 : vec2<f32> = u_xlat64;
            let x_3173 : vec2<f32> = min(x_3172, vec2<f32>(0.0f, 0.0f));
            let x_3174 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3173.x, x_3173.y, x_3174.z, x_3174.w);
            let x_3176 : vec4<f32> = u_xlat15;
            let x_3179 : vec4<f32> = u_xlat15;
            let x_3182 : vec2<f32> = u_xlat66;
            let x_3183 : vec2<f32> = ((-(vec2<f32>(x_3176.x, x_3176.y)) * vec2<f32>(x_3179.x, x_3179.y)) + x_3182);
            let x_3184 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3186 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3186, vec2<f32>(0.0f, 0.0f));
            let x_3188 : vec2<f32> = u_xlat64;
            let x_3190 : vec2<f32> = u_xlat64;
            let x_3192 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3188) * x_3190) + vec2<f32>(x_3192.y, x_3192.w));
            let x_3195 : vec4<f32> = u_xlat15;
            let x_3197 : vec2<f32> = (vec2<f32>(x_3195.x, x_3195.y) + vec2<f32>(1.0f, 1.0f));
            let x_3198 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3197.x, x_3197.y, x_3198.z, x_3198.w);
            let x_3200 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3200 + vec2<f32>(1.0f, 1.0f));
            let x_3202 : vec4<f32> = u_xlat14;
            let x_3204 : vec2<f32> = (vec2<f32>(x_3202.x, x_3202.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3205 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3204.x, x_3204.y, x_3205.z, x_3205.w);
            let x_3207 : vec2<f32> = u_xlat66;
            let x_3208 : vec2<f32> = (x_3207 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3209 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3208.x, x_3208.y, x_3209.z, x_3209.w);
            let x_3211 : vec4<f32> = u_xlat15;
            let x_3213 : vec2<f32> = (vec2<f32>(x_3211.x, x_3211.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3214 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3213.x, x_3213.y, x_3214.z, x_3214.w);
            let x_3216 : vec2<f32> = u_xlat64;
            let x_3217 : vec2<f32> = (x_3216 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3218 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3217.x, x_3217.y, x_3218.z, x_3218.w);
            let x_3220 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3220.y, x_3220.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3224 : f32 = u_xlat15.x;
            u_xlat16.z = x_3224;
            let x_3227 : f32 = u_xlat64.x;
            u_xlat16.w = x_3227;
            let x_3230 : f32 = u_xlat17.x;
            u_xlat14.z = x_3230;
            let x_3233 : f32 = u_xlat13.x;
            u_xlat14.w = x_3233;
            let x_3235 : vec4<f32> = u_xlat14;
            let x_3237 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3235.z, x_3235.w, x_3235.x, x_3235.z) + vec4<f32>(x_3237.z, x_3237.w, x_3237.x, x_3237.z));
            let x_3241 : f32 = u_xlat16.y;
            u_xlat15.z = x_3241;
            let x_3244 : f32 = u_xlat64.y;
            u_xlat15.w = x_3244;
            let x_3247 : f32 = u_xlat14.y;
            u_xlat17.z = x_3247;
            let x_3250 : f32 = u_xlat13.z;
            u_xlat17.w = x_3250;
            let x_3252 : vec4<f32> = u_xlat15;
            let x_3254 : vec4<f32> = u_xlat17;
            let x_3256 : vec3<f32> = (vec3<f32>(x_3252.z, x_3252.y, x_3252.w) + vec3<f32>(x_3254.z, x_3254.y, x_3254.w));
            let x_3257 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3256.x, x_3256.y, x_3256.z, x_3257.w);
            let x_3259 : vec4<f32> = u_xlat14;
            let x_3261 : vec4<f32> = u_xlat18;
            let x_3263 : vec3<f32> = (vec3<f32>(x_3259.x, x_3259.z, x_3259.w) / vec3<f32>(x_3261.z, x_3261.w, x_3261.y));
            let x_3264 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3263.x, x_3263.y, x_3263.z, x_3264.w);
            let x_3266 : vec4<f32> = u_xlat14;
            let x_3268 : vec3<f32> = (vec3<f32>(x_3266.x, x_3266.y, x_3266.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3269 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3268.x, x_3268.y, x_3268.z, x_3269.w);
            let x_3271 : vec4<f32> = u_xlat17;
            let x_3273 : vec4<f32> = u_xlat13;
            let x_3275 : vec3<f32> = (vec3<f32>(x_3271.z, x_3271.y, x_3271.w) / vec3<f32>(x_3273.x, x_3273.y, x_3273.z));
            let x_3276 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3275.x, x_3275.y, x_3275.z, x_3276.w);
            let x_3278 : vec4<f32> = u_xlat15;
            let x_3280 : vec3<f32> = (vec3<f32>(x_3278.x, x_3278.y, x_3278.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3281 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
            let x_3283 : vec4<f32> = u_xlat14;
            let x_3286 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3288 : vec3<f32> = (vec3<f32>(x_3283.y, x_3283.x, x_3283.z) * vec3<f32>(x_3286.x, x_3286.x, x_3286.x));
            let x_3289 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3288.x, x_3288.y, x_3288.z, x_3289.w);
            let x_3291 : vec4<f32> = u_xlat15;
            let x_3294 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3296 : vec3<f32> = (vec3<f32>(x_3291.x, x_3291.y, x_3291.z) * vec3<f32>(x_3294.y, x_3294.y, x_3294.y));
            let x_3297 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3297.w);
            let x_3300 : f32 = u_xlat15.x;
            u_xlat14.w = x_3300;
            let x_3302 : vec4<f32> = u_xlat12;
            let x_3305 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3302.x, x_3302.y, x_3302.x, x_3302.y) * vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y)) + vec4<f32>(x_3308.y, x_3308.w, x_3308.x, x_3308.w));
            let x_3311 : vec4<f32> = u_xlat12;
            let x_3314 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3317 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3311.x, x_3311.y) * vec2<f32>(x_3314.x, x_3314.y)) + vec2<f32>(x_3317.z, x_3317.w));
            let x_3321 : f32 = u_xlat14.y;
            u_xlat15.w = x_3321;
            let x_3323 : vec4<f32> = u_xlat15;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.y, x_3323.z);
            let x_3325 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3325.x, x_3324.x, x_3325.z, x_3324.y);
            let x_3327 : vec4<f32> = u_xlat12;
            let x_3330 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3333 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3327.x, x_3327.y, x_3327.x, x_3327.y) * vec4<f32>(x_3330.x, x_3330.y, x_3330.x, x_3330.y)) + vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3333.y));
            let x_3336 : vec4<f32> = u_xlat12;
            let x_3339 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3342 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3336.x, x_3336.y, x_3336.x, x_3336.y) * vec4<f32>(x_3339.x, x_3339.y, x_3339.x, x_3339.y)) + vec4<f32>(x_3342.w, x_3342.y, x_3342.w, x_3342.z));
            let x_3345 : vec4<f32> = u_xlat12;
            let x_3348 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3351 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3345.x, x_3345.y, x_3345.x, x_3345.y) * vec4<f32>(x_3348.x, x_3348.y, x_3348.x, x_3348.y)) + vec4<f32>(x_3351.x, x_3351.w, x_3351.z, x_3351.w));
            let x_3355 : vec4<f32> = u_xlat13;
            let x_3357 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3355.x, x_3355.x, x_3355.x, x_3355.y) * vec4<f32>(x_3357.z, x_3357.w, x_3357.y, x_3357.z));
            let x_3361 : vec4<f32> = u_xlat13;
            let x_3363 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3361.y, x_3361.y, x_3361.z, x_3361.z) * x_3363);
            let x_3366 : f32 = u_xlat13.z;
            let x_3368 : f32 = u_xlat18.y;
            u_xlat86 = (x_3366 * x_3368);
            let x_3371 : vec4<f32> = u_xlat16;
            let x_3372 : vec2<f32> = vec2<f32>(x_3371.x, x_3371.y);
            let x_3374 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3381 : vec3<f32> = txVec34;
            let x_3383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3381.xy, x_3381.z);
            u_xlat87 = x_3383;
            let x_3385 : vec4<f32> = u_xlat16;
            let x_3386 : vec2<f32> = vec2<f32>(x_3385.z, x_3385.w);
            let x_3388 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3396 : vec3<f32> = txVec35;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat88 = x_3398;
            let x_3399 : f32 = u_xlat88;
            let x_3401 : f32 = u_xlat19.y;
            u_xlat88 = (x_3399 * x_3401);
            let x_3404 : f32 = u_xlat19.x;
            let x_3405 : f32 = u_xlat87;
            let x_3407 : f32 = u_xlat88;
            u_xlat87 = ((x_3404 * x_3405) + x_3407);
            let x_3410 : vec2<f32> = u_xlat64;
            let x_3412 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec36;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat88 = x_3421;
            let x_3423 : f32 = u_xlat19.z;
            let x_3424 : f32 = u_xlat88;
            let x_3426 : f32 = u_xlat87;
            u_xlat87 = ((x_3423 * x_3424) + x_3426);
            let x_3429 : vec4<f32> = u_xlat15;
            let x_3430 : vec2<f32> = vec2<f32>(x_3429.x, x_3429.y);
            let x_3432 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3439 : vec3<f32> = txVec37;
            let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
            u_xlat88 = x_3441;
            let x_3443 : f32 = u_xlat19.w;
            let x_3444 : f32 = u_xlat88;
            let x_3446 : f32 = u_xlat87;
            u_xlat87 = ((x_3443 * x_3444) + x_3446);
            let x_3449 : vec4<f32> = u_xlat17;
            let x_3450 : vec2<f32> = vec2<f32>(x_3449.x, x_3449.y);
            let x_3452 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3450.x, x_3450.y, x_3452);
            let x_3459 : vec3<f32> = txVec38;
            let x_3461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3459.xy, x_3459.z);
            u_xlat88 = x_3461;
            let x_3463 : f32 = u_xlat20.x;
            let x_3464 : f32 = u_xlat88;
            let x_3466 : f32 = u_xlat87;
            u_xlat87 = ((x_3463 * x_3464) + x_3466);
            let x_3469 : vec4<f32> = u_xlat17;
            let x_3470 : vec2<f32> = vec2<f32>(x_3469.z, x_3469.w);
            let x_3472 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec39;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat88 = x_3481;
            let x_3483 : f32 = u_xlat20.y;
            let x_3484 : f32 = u_xlat88;
            let x_3486 : f32 = u_xlat87;
            u_xlat87 = ((x_3483 * x_3484) + x_3486);
            let x_3489 : vec4<f32> = u_xlat15;
            let x_3490 : vec2<f32> = vec2<f32>(x_3489.z, x_3489.w);
            let x_3492 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec40;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat88 = x_3501;
            let x_3503 : f32 = u_xlat20.z;
            let x_3504 : f32 = u_xlat88;
            let x_3506 : f32 = u_xlat87;
            u_xlat87 = ((x_3503 * x_3504) + x_3506);
            let x_3509 : vec4<f32> = u_xlat14;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.x, x_3509.y);
            let x_3512 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec41;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat88 = x_3521;
            let x_3523 : f32 = u_xlat20.w;
            let x_3524 : f32 = u_xlat88;
            let x_3526 : f32 = u_xlat87;
            u_xlat87 = ((x_3523 * x_3524) + x_3526);
            let x_3529 : vec4<f32> = u_xlat14;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.z, x_3529.w);
            let x_3532 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec42;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat88 = x_3541;
            let x_3542 : f32 = u_xlat86;
            let x_3543 : f32 = u_xlat88;
            let x_3545 : f32 = u_xlat87;
            u_xlat85 = ((x_3542 * x_3543) + x_3545);
          } else {
            let x_3548 : vec4<f32> = u_xlat11;
            let x_3551 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3554 : vec2<f32> = ((vec2<f32>(x_3548.x, x_3548.y) * vec2<f32>(x_3551.z, x_3551.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3555 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3554.x, x_3554.y, x_3555.z, x_3555.w);
            let x_3557 : vec4<f32> = u_xlat12;
            let x_3559 : vec2<f32> = floor(vec2<f32>(x_3557.x, x_3557.y));
            let x_3560 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3559.x, x_3559.y, x_3560.z, x_3560.w);
            let x_3562 : vec4<f32> = u_xlat11;
            let x_3565 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3568 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3562.x, x_3562.y) * vec2<f32>(x_3565.z, x_3565.w)) + -(vec2<f32>(x_3568.x, x_3568.y)));
            let x_3572 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3572.x, x_3572.x, x_3572.y, x_3572.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3575 : vec4<f32> = u_xlat13;
            let x_3577 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3575.x, x_3575.x, x_3575.z, x_3575.z) * vec4<f32>(x_3577.x, x_3577.x, x_3577.z, x_3577.z));
            let x_3580 : vec4<f32> = u_xlat14;
            let x_3582 : vec2<f32> = (vec2<f32>(x_3580.y, x_3580.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3583 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3583.x, x_3582.x, x_3583.z, x_3582.y);
            let x_3585 : vec4<f32> = u_xlat14;
            let x_3588 : vec2<f32> = u_xlat64;
            let x_3590 : vec2<f32> = ((vec2<f32>(x_3585.x, x_3585.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3588));
            let x_3591 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3590.x, x_3591.y, x_3590.y, x_3591.w);
            let x_3593 : vec2<f32> = u_xlat64;
            let x_3595 : vec2<f32> = (-(x_3593) + vec2<f32>(1.0f, 1.0f));
            let x_3596 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3595.x, x_3595.y, x_3596.z, x_3596.w);
            let x_3598 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3598, vec2<f32>(0.0f, 0.0f));
            let x_3600 : vec2<f32> = u_xlat66;
            let x_3602 : vec2<f32> = u_xlat66;
            let x_3604 : vec4<f32> = u_xlat14;
            let x_3606 : vec2<f32> = ((-(x_3600) * x_3602) + vec2<f32>(x_3604.x, x_3604.y));
            let x_3607 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3606.x, x_3606.y, x_3607.z, x_3607.w);
            let x_3609 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3609, vec2<f32>(0.0f, 0.0f));
            let x_3612 : vec2<f32> = u_xlat66;
            let x_3614 : vec2<f32> = u_xlat66;
            let x_3616 : vec4<f32> = u_xlat13;
            let x_3618 : vec2<f32> = ((-(x_3612) * x_3614) + vec2<f32>(x_3616.y, x_3616.w));
            let x_3619 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3618.x, x_3619.y, x_3618.y);
            let x_3621 : vec4<f32> = u_xlat14;
            let x_3623 : vec2<f32> = (vec2<f32>(x_3621.x, x_3621.y) + vec2<f32>(2.0f, 2.0f));
            let x_3624 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3623.x, x_3623.y, x_3624.z, x_3624.w);
            let x_3626 : vec3<f32> = u_xlat39;
            let x_3628 : vec2<f32> = (vec2<f32>(x_3626.x, x_3626.z) + vec2<f32>(2.0f, 2.0f));
            let x_3629 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3629.x, x_3628.x, x_3629.z, x_3628.y);
            let x_3632 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3632 * 0.08163200318813323975f);
            let x_3635 : vec4<f32> = u_xlat13;
            let x_3637 : vec3<f32> = (vec3<f32>(x_3635.z, x_3635.x, x_3635.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3638 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3637.x, x_3637.y, x_3637.z, x_3638.w);
            let x_3640 : vec4<f32> = u_xlat14;
            let x_3642 : vec2<f32> = (vec2<f32>(x_3640.x, x_3640.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3643 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3642.x, x_3642.y, x_3643.z, x_3643.w);
            let x_3646 : f32 = u_xlat17.y;
            u_xlat16.x = x_3646;
            let x_3648 : vec2<f32> = u_xlat64;
            let x_3651 : vec2<f32> = ((vec2<f32>(x_3648.x, x_3648.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3652 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3652.x, x_3651.x, x_3652.z, x_3651.y);
            let x_3654 : vec2<f32> = u_xlat64;
            let x_3657 : vec2<f32> = ((vec2<f32>(x_3654.x, x_3654.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3658 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3657.x, x_3658.y, x_3657.y, x_3658.w);
            let x_3661 : f32 = u_xlat13.x;
            u_xlat14.y = x_3661;
            let x_3664 : f32 = u_xlat15.y;
            u_xlat14.w = x_3664;
            let x_3666 : vec4<f32> = u_xlat14;
            let x_3667 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3666 + x_3667);
            let x_3669 : vec2<f32> = u_xlat64;
            let x_3672 : vec2<f32> = ((vec2<f32>(x_3669.y, x_3669.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3673 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3673.x, x_3672.x, x_3673.z, x_3672.y);
            let x_3675 : vec2<f32> = u_xlat64;
            let x_3678 : vec2<f32> = ((vec2<f32>(x_3675.y, x_3675.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3679 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3678.x, x_3679.y, x_3678.y, x_3679.w);
            let x_3682 : f32 = u_xlat13.y;
            u_xlat15.y = x_3682;
            let x_3684 : vec4<f32> = u_xlat15;
            let x_3685 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3684 + x_3685);
            let x_3687 : vec4<f32> = u_xlat14;
            let x_3688 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3687 / x_3688);
            let x_3690 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3690 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3692 : vec4<f32> = u_xlat15;
            let x_3693 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3692 / x_3693);
            let x_3695 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3695 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3697 : vec4<f32> = u_xlat14;
            let x_3700 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3697.w, x_3697.x, x_3697.y, x_3697.z) * vec4<f32>(x_3700.x, x_3700.x, x_3700.x, x_3700.x));
            let x_3703 : vec4<f32> = u_xlat15;
            let x_3706 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3703.x, x_3703.w, x_3703.y, x_3703.z) * vec4<f32>(x_3706.y, x_3706.y, x_3706.y, x_3706.y));
            let x_3709 : vec4<f32> = u_xlat14;
            let x_3710 : vec3<f32> = vec3<f32>(x_3709.y, x_3709.z, x_3709.w);
            let x_3711 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3710.x, x_3711.y, x_3710.y, x_3710.z);
            let x_3714 : f32 = u_xlat15.x;
            u_xlat17.y = x_3714;
            let x_3716 : vec4<f32> = u_xlat12;
            let x_3719 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3722 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3716.x, x_3716.y, x_3716.x, x_3716.y) * vec4<f32>(x_3719.x, x_3719.y, x_3719.x, x_3719.y)) + vec4<f32>(x_3722.x, x_3722.y, x_3722.z, x_3722.y));
            let x_3725 : vec4<f32> = u_xlat12;
            let x_3728 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3731 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3725.x, x_3725.y) * vec2<f32>(x_3728.x, x_3728.y)) + vec2<f32>(x_3731.w, x_3731.y));
            let x_3735 : f32 = u_xlat17.y;
            u_xlat14.y = x_3735;
            let x_3738 : f32 = u_xlat15.z;
            u_xlat17.y = x_3738;
            let x_3740 : vec4<f32> = u_xlat12;
            let x_3743 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3746 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3740.x, x_3740.y, x_3740.x, x_3740.y) * vec4<f32>(x_3743.x, x_3743.y, x_3743.x, x_3743.y)) + vec4<f32>(x_3746.x, x_3746.y, x_3746.z, x_3746.y));
            let x_3749 : vec4<f32> = u_xlat12;
            let x_3752 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3755 : vec4<f32> = u_xlat17;
            let x_3757 : vec2<f32> = ((vec2<f32>(x_3749.x, x_3749.y) * vec2<f32>(x_3752.x, x_3752.y)) + vec2<f32>(x_3755.w, x_3755.y));
            let x_3758 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3757.x, x_3757.y, x_3758.z, x_3758.w);
            let x_3761 : f32 = u_xlat17.y;
            u_xlat14.z = x_3761;
            let x_3764 : vec4<f32> = u_xlat12;
            let x_3767 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3770 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3764.x, x_3764.y, x_3764.x, x_3764.y) * vec4<f32>(x_3767.x, x_3767.y, x_3767.x, x_3767.y)) + vec4<f32>(x_3770.x, x_3770.y, x_3770.x, x_3770.z));
            let x_3774 : f32 = u_xlat15.w;
            u_xlat17.y = x_3774;
            let x_3777 : vec4<f32> = u_xlat12;
            let x_3780 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3783 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3777.x, x_3777.y, x_3777.x, x_3777.y) * vec4<f32>(x_3780.x, x_3780.y, x_3780.x, x_3780.y)) + vec4<f32>(x_3783.x, x_3783.y, x_3783.z, x_3783.y));
            let x_3787 : vec4<f32> = u_xlat12;
            let x_3790 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3793 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3787.x, x_3787.y) * vec2<f32>(x_3790.x, x_3790.y)) + vec2<f32>(x_3793.w, x_3793.y));
            let x_3797 : f32 = u_xlat17.y;
            u_xlat14.w = x_3797;
            let x_3800 : vec4<f32> = u_xlat12;
            let x_3803 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3806 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3800.x, x_3800.y) * vec2<f32>(x_3803.x, x_3803.y)) + vec2<f32>(x_3806.x, x_3806.w));
            let x_3809 : vec4<f32> = u_xlat17;
            let x_3810 : vec3<f32> = vec3<f32>(x_3809.x, x_3809.z, x_3809.w);
            let x_3811 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3810.x, x_3811.y, x_3810.y, x_3810.z);
            let x_3813 : vec4<f32> = u_xlat12;
            let x_3816 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3819 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3813.x, x_3813.y, x_3813.x, x_3813.y) * vec4<f32>(x_3816.x, x_3816.y, x_3816.x, x_3816.y)) + vec4<f32>(x_3819.x, x_3819.y, x_3819.z, x_3819.y));
            let x_3823 : vec4<f32> = u_xlat12;
            let x_3826 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3829 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3823.x, x_3823.y) * vec2<f32>(x_3826.x, x_3826.y)) + vec2<f32>(x_3829.w, x_3829.y));
            let x_3833 : f32 = u_xlat14.x;
            u_xlat15.x = x_3833;
            let x_3835 : vec4<f32> = u_xlat12;
            let x_3838 : vec4<f32> = x_980.x_AdditionalShadowmapSize;
            let x_3841 : vec4<f32> = u_xlat15;
            let x_3843 : vec2<f32> = ((vec2<f32>(x_3835.x, x_3835.y) * vec2<f32>(x_3838.x, x_3838.y)) + vec2<f32>(x_3841.x, x_3841.y));
            let x_3844 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3843.x, x_3843.y, x_3844.z, x_3844.w);
            let x_3847 : vec4<f32> = u_xlat13;
            let x_3849 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3847.x, x_3847.x, x_3847.x, x_3847.x) * x_3849);
            let x_3852 : vec4<f32> = u_xlat13;
            let x_3854 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3852.y, x_3852.y, x_3852.y, x_3852.y) * x_3854);
            let x_3857 : vec4<f32> = u_xlat13;
            let x_3859 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3857.z, x_3857.z, x_3857.z, x_3857.z) * x_3859);
            let x_3861 : vec4<f32> = u_xlat13;
            let x_3863 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3861.w, x_3861.w, x_3861.w, x_3861.w) * x_3863);
            let x_3866 : vec4<f32> = u_xlat18;
            let x_3867 : vec2<f32> = vec2<f32>(x_3866.x, x_3866.y);
            let x_3869 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3867.x, x_3867.y, x_3869);
            let x_3876 : vec3<f32> = txVec43;
            let x_3878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3876.xy, x_3876.z);
            u_xlat86 = x_3878;
            let x_3880 : vec4<f32> = u_xlat18;
            let x_3881 : vec2<f32> = vec2<f32>(x_3880.z, x_3880.w);
            let x_3883 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3881.x, x_3881.y, x_3883);
            let x_3890 : vec3<f32> = txVec44;
            let x_3892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3890.xy, x_3890.z);
            u_xlat87 = x_3892;
            let x_3893 : f32 = u_xlat87;
            let x_3895 : f32 = u_xlat23.y;
            u_xlat87 = (x_3893 * x_3895);
            let x_3898 : f32 = u_xlat23.x;
            let x_3899 : f32 = u_xlat86;
            let x_3901 : f32 = u_xlat87;
            u_xlat86 = ((x_3898 * x_3899) + x_3901);
            let x_3904 : vec2<f32> = u_xlat64;
            let x_3906 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3904.x, x_3904.y, x_3906);
            let x_3913 : vec3<f32> = txVec45;
            let x_3915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3913.xy, x_3913.z);
            u_xlat87 = x_3915;
            let x_3917 : f32 = u_xlat23.z;
            let x_3918 : f32 = u_xlat87;
            let x_3920 : f32 = u_xlat86;
            u_xlat86 = ((x_3917 * x_3918) + x_3920);
            let x_3923 : vec4<f32> = u_xlat21;
            let x_3924 : vec2<f32> = vec2<f32>(x_3923.x, x_3923.y);
            let x_3926 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3924.x, x_3924.y, x_3926);
            let x_3933 : vec3<f32> = txVec46;
            let x_3935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3933.xy, x_3933.z);
            u_xlat87 = x_3935;
            let x_3937 : f32 = u_xlat23.w;
            let x_3938 : f32 = u_xlat87;
            let x_3940 : f32 = u_xlat86;
            u_xlat86 = ((x_3937 * x_3938) + x_3940);
            let x_3943 : vec4<f32> = u_xlat19;
            let x_3944 : vec2<f32> = vec2<f32>(x_3943.x, x_3943.y);
            let x_3946 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3944.x, x_3944.y, x_3946);
            let x_3953 : vec3<f32> = txVec47;
            let x_3955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3953.xy, x_3953.z);
            u_xlat87 = x_3955;
            let x_3957 : f32 = u_xlat24.x;
            let x_3958 : f32 = u_xlat87;
            let x_3960 : f32 = u_xlat86;
            u_xlat86 = ((x_3957 * x_3958) + x_3960);
            let x_3963 : vec4<f32> = u_xlat19;
            let x_3964 : vec2<f32> = vec2<f32>(x_3963.z, x_3963.w);
            let x_3966 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3964.x, x_3964.y, x_3966);
            let x_3973 : vec3<f32> = txVec48;
            let x_3975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3973.xy, x_3973.z);
            u_xlat87 = x_3975;
            let x_3977 : f32 = u_xlat24.y;
            let x_3978 : f32 = u_xlat87;
            let x_3980 : f32 = u_xlat86;
            u_xlat86 = ((x_3977 * x_3978) + x_3980);
            let x_3983 : vec4<f32> = u_xlat20;
            let x_3984 : vec2<f32> = vec2<f32>(x_3983.x, x_3983.y);
            let x_3986 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3984.x, x_3984.y, x_3986);
            let x_3993 : vec3<f32> = txVec49;
            let x_3995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3993.xy, x_3993.z);
            u_xlat87 = x_3995;
            let x_3997 : f32 = u_xlat24.z;
            let x_3998 : f32 = u_xlat87;
            let x_4000 : f32 = u_xlat86;
            u_xlat86 = ((x_3997 * x_3998) + x_4000);
            let x_4003 : vec4<f32> = u_xlat21;
            let x_4004 : vec2<f32> = vec2<f32>(x_4003.z, x_4003.w);
            let x_4006 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4004.x, x_4004.y, x_4006);
            let x_4013 : vec3<f32> = txVec50;
            let x_4015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4013.xy, x_4013.z);
            u_xlat87 = x_4015;
            let x_4017 : f32 = u_xlat24.w;
            let x_4018 : f32 = u_xlat87;
            let x_4020 : f32 = u_xlat86;
            u_xlat86 = ((x_4017 * x_4018) + x_4020);
            let x_4023 : vec4<f32> = u_xlat22;
            let x_4024 : vec2<f32> = vec2<f32>(x_4023.x, x_4023.y);
            let x_4026 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4024.x, x_4024.y, x_4026);
            let x_4033 : vec3<f32> = txVec51;
            let x_4035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4033.xy, x_4033.z);
            u_xlat87 = x_4035;
            let x_4037 : f32 = u_xlat25.x;
            let x_4038 : f32 = u_xlat87;
            let x_4040 : f32 = u_xlat86;
            u_xlat86 = ((x_4037 * x_4038) + x_4040);
            let x_4043 : vec4<f32> = u_xlat22;
            let x_4044 : vec2<f32> = vec2<f32>(x_4043.z, x_4043.w);
            let x_4046 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4044.x, x_4044.y, x_4046);
            let x_4053 : vec3<f32> = txVec52;
            let x_4055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4053.xy, x_4053.z);
            u_xlat87 = x_4055;
            let x_4057 : f32 = u_xlat25.y;
            let x_4058 : f32 = u_xlat87;
            let x_4060 : f32 = u_xlat86;
            u_xlat86 = ((x_4057 * x_4058) + x_4060);
            let x_4063 : vec2<f32> = u_xlat40;
            let x_4065 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4063.x, x_4063.y, x_4065);
            let x_4072 : vec3<f32> = txVec53;
            let x_4074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4072.xy, x_4072.z);
            u_xlat87 = x_4074;
            let x_4076 : f32 = u_xlat25.z;
            let x_4077 : f32 = u_xlat87;
            let x_4079 : f32 = u_xlat86;
            u_xlat86 = ((x_4076 * x_4077) + x_4079);
            let x_4082 : vec2<f32> = u_xlat72;
            let x_4084 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4082.x, x_4082.y, x_4084);
            let x_4091 : vec3<f32> = txVec54;
            let x_4093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4091.xy, x_4091.z);
            u_xlat87 = x_4093;
            let x_4095 : f32 = u_xlat25.w;
            let x_4096 : f32 = u_xlat87;
            let x_4098 : f32 = u_xlat86;
            u_xlat86 = ((x_4095 * x_4096) + x_4098);
            let x_4101 : vec4<f32> = u_xlat17;
            let x_4102 : vec2<f32> = vec2<f32>(x_4101.x, x_4101.y);
            let x_4104 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4102.x, x_4102.y, x_4104);
            let x_4111 : vec3<f32> = txVec55;
            let x_4113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4111.xy, x_4111.z);
            u_xlat87 = x_4113;
            let x_4115 : f32 = u_xlat13.x;
            let x_4116 : f32 = u_xlat87;
            let x_4118 : f32 = u_xlat86;
            u_xlat86 = ((x_4115 * x_4116) + x_4118);
            let x_4121 : vec4<f32> = u_xlat17;
            let x_4122 : vec2<f32> = vec2<f32>(x_4121.z, x_4121.w);
            let x_4124 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4122.x, x_4122.y, x_4124);
            let x_4131 : vec3<f32> = txVec56;
            let x_4133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4131.xy, x_4131.z);
            u_xlat87 = x_4133;
            let x_4135 : f32 = u_xlat13.y;
            let x_4136 : f32 = u_xlat87;
            let x_4138 : f32 = u_xlat86;
            u_xlat86 = ((x_4135 * x_4136) + x_4138);
            let x_4141 : vec2<f32> = u_xlat67;
            let x_4143 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4141.x, x_4141.y, x_4143);
            let x_4150 : vec3<f32> = txVec57;
            let x_4152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4150.xy, x_4150.z);
            u_xlat87 = x_4152;
            let x_4154 : f32 = u_xlat13.z;
            let x_4155 : f32 = u_xlat87;
            let x_4157 : f32 = u_xlat86;
            u_xlat86 = ((x_4154 * x_4155) + x_4157);
            let x_4160 : vec4<f32> = u_xlat12;
            let x_4161 : vec2<f32> = vec2<f32>(x_4160.x, x_4160.y);
            let x_4163 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4161.x, x_4161.y, x_4163);
            let x_4170 : vec3<f32> = txVec58;
            let x_4172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4170.xy, x_4170.z);
            u_xlat87 = x_4172;
            let x_4174 : f32 = u_xlat13.w;
            let x_4175 : f32 = u_xlat87;
            let x_4177 : f32 = u_xlat86;
            u_xlat85 = ((x_4174 * x_4175) + x_4177);
          }
        }
      } else {
        let x_4181 : vec4<f32> = u_xlat11;
        let x_4182 : vec2<f32> = vec2<f32>(x_4181.x, x_4181.y);
        let x_4184 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4182.x, x_4182.y, x_4184);
        let x_4191 : vec3<f32> = txVec59;
        let x_4193 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4191.xy, x_4191.z);
        u_xlat85 = x_4193;
      }
      let x_4194 : i32 = u_xlati5;
      let x_4196 : f32 = x_980.x_AdditionalShadowParams[x_4194].x;
      u_xlat86 = (1.0f + -(x_4196));
      let x_4199 : f32 = u_xlat85;
      let x_4200 : i32 = u_xlati5;
      let x_4202 : f32 = x_980.x_AdditionalShadowParams[x_4200].x;
      let x_4204 : f32 = u_xlat86;
      u_xlat85 = ((x_4199 * x_4202) + x_4204);
      let x_4207 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4207);
      let x_4211 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4211 >= 1.0f);
      let x_4213 : bool = u_xlatb86;
      let x_4214 : bool = u_xlatb87;
      u_xlatb86 = (x_4213 | x_4214);
      let x_4216 : bool = u_xlatb86;
      let x_4217 : f32 = u_xlat85;
      u_xlat85 = select(x_4217, 1.0f, x_4216);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4220 : f32 = u_xlat85;
    u_xlat86 = (-(x_4220) + 1.0f);
    let x_4223 : f32 = u_xlat80;
    let x_4224 : f32 = u_xlat86;
    let x_4226 : f32 = u_xlat85;
    u_xlat85 = ((x_4223 * x_4224) + x_4226);
    let x_4229 : i32 = u_xlati5;
    u_xlati86 = (1i << bitcast<u32>((x_4229 & 31i)));
    let x_4232 : i32 = u_xlati86;
    let x_4235 : f32 = x_2325.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4232) & bitcast<u32>(x_4235)));
    let x_4239 : i32 = u_xlati86;
    if ((x_4239 != 0i)) {
      let x_4243 : i32 = u_xlati5;
      let x_4245 : f32 = x_2325.x_AdditionalLightsLightTypes[x_4243].el;
      u_xlati86 = i32(x_4245);
      let x_4248 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4248 != 0i));
      let x_4252 : i32 = u_xlati5;
      u_xlati88 = (x_4252 << bitcast<u32>(2i));
      let x_4254 : i32 = u_xlati87;
      if ((x_4254 != 0i)) {
        let x_4258 : vec3<f32> = vs_TEXCOORD7;
        let x_4260 : i32 = u_xlati88;
        let x_4263 : i32 = u_xlati88;
        let x_4267 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4260 + 1i) / 4i)][((x_4263 + 1i) % 4i)];
        let x_4269 : vec3<f32> = (vec3<f32>(x_4258.y, x_4258.y, x_4258.y) * vec3<f32>(x_4267.x, x_4267.y, x_4267.w));
        let x_4270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4269.x, x_4269.y, x_4269.z, x_4270.w);
        let x_4272 : i32 = u_xlati88;
        let x_4274 : i32 = u_xlati88;
        let x_4277 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[(x_4272 / 4i)][(x_4274 % 4i)];
        let x_4279 : vec3<f32> = vs_TEXCOORD7;
        let x_4282 : vec4<f32> = u_xlat11;
        let x_4284 : vec3<f32> = ((vec3<f32>(x_4277.x, x_4277.y, x_4277.w) * vec3<f32>(x_4279.x, x_4279.x, x_4279.x)) + vec3<f32>(x_4282.x, x_4282.y, x_4282.z));
        let x_4285 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4284.x, x_4284.y, x_4284.z, x_4285.w);
        let x_4287 : i32 = u_xlati88;
        let x_4290 : i32 = u_xlati88;
        let x_4294 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4287 + 2i) / 4i)][((x_4290 + 2i) % 4i)];
        let x_4296 : vec3<f32> = vs_TEXCOORD7;
        let x_4299 : vec4<f32> = u_xlat11;
        let x_4301 : vec3<f32> = ((vec3<f32>(x_4294.x, x_4294.y, x_4294.w) * vec3<f32>(x_4296.z, x_4296.z, x_4296.z)) + vec3<f32>(x_4299.x, x_4299.y, x_4299.z));
        let x_4302 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4301.x, x_4301.y, x_4301.z, x_4302.w);
        let x_4304 : vec4<f32> = u_xlat11;
        let x_4306 : i32 = u_xlati88;
        let x_4309 : i32 = u_xlati88;
        let x_4313 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4306 + 3i) / 4i)][((x_4309 + 3i) % 4i)];
        let x_4315 : vec3<f32> = (vec3<f32>(x_4304.x, x_4304.y, x_4304.z) + vec3<f32>(x_4313.x, x_4313.y, x_4313.w));
        let x_4316 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4315.x, x_4315.y, x_4315.z, x_4316.w);
        let x_4318 : vec4<f32> = u_xlat11;
        let x_4320 : vec4<f32> = u_xlat11;
        let x_4322 : vec2<f32> = (vec2<f32>(x_4318.x, x_4318.y) / vec2<f32>(x_4320.z, x_4320.z));
        let x_4323 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4322.x, x_4322.y, x_4323.z, x_4323.w);
        let x_4325 : vec4<f32> = u_xlat11;
        let x_4328 : vec2<f32> = ((vec2<f32>(x_4325.x, x_4325.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4329 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4328.x, x_4328.y, x_4329.z, x_4329.w);
        let x_4331 : vec4<f32> = u_xlat11;
        let x_4335 : vec2<f32> = clamp(vec2<f32>(x_4331.x, x_4331.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4336 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4335.x, x_4335.y, x_4336.z, x_4336.w);
        let x_4338 : i32 = u_xlati5;
        let x_4340 : vec4<f32> = x_2325.x_AdditionalLightsCookieAtlasUVRects[x_4338];
        let x_4342 : vec4<f32> = u_xlat11;
        let x_4345 : i32 = u_xlati5;
        let x_4347 : vec4<f32> = x_2325.x_AdditionalLightsCookieAtlasUVRects[x_4345];
        let x_4349 : vec2<f32> = ((vec2<f32>(x_4340.x, x_4340.y) * vec2<f32>(x_4342.x, x_4342.y)) + vec2<f32>(x_4347.z, x_4347.w));
        let x_4350 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4349.x, x_4349.y, x_4350.z, x_4350.w);
      } else {
        let x_4353 : i32 = u_xlati86;
        u_xlatb86 = (x_4353 == 1i);
        let x_4355 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4355);
        let x_4357 : i32 = u_xlati86;
        if ((x_4357 != 0i)) {
          let x_4362 : vec3<f32> = vs_TEXCOORD7;
          let x_4364 : i32 = u_xlati88;
          let x_4367 : i32 = u_xlati88;
          let x_4371 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4364 + 1i) / 4i)][((x_4367 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4362.y, x_4362.y) * vec2<f32>(x_4371.x, x_4371.y));
          let x_4374 : i32 = u_xlati88;
          let x_4376 : i32 = u_xlati88;
          let x_4379 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[(x_4374 / 4i)][(x_4376 % 4i)];
          let x_4381 : vec3<f32> = vs_TEXCOORD7;
          let x_4384 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4379.x, x_4379.y) * vec2<f32>(x_4381.x, x_4381.x)) + x_4384);
          let x_4386 : i32 = u_xlati88;
          let x_4389 : i32 = u_xlati88;
          let x_4393 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4386 + 2i) / 4i)][((x_4389 + 2i) % 4i)];
          let x_4395 : vec3<f32> = vs_TEXCOORD7;
          let x_4398 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4393.x, x_4393.y) * vec2<f32>(x_4395.z, x_4395.z)) + x_4398);
          let x_4400 : vec2<f32> = u_xlat63;
          let x_4401 : i32 = u_xlati88;
          let x_4404 : i32 = u_xlati88;
          let x_4408 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4401 + 3i) / 4i)][((x_4404 + 3i) % 4i)];
          u_xlat63 = (x_4400 + vec2<f32>(x_4408.x, x_4408.y));
          let x_4411 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4411 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4414 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4414);
          let x_4416 : i32 = u_xlati5;
          let x_4418 : vec4<f32> = x_2325.x_AdditionalLightsCookieAtlasUVRects[x_4416];
          let x_4420 : vec2<f32> = u_xlat63;
          let x_4422 : i32 = u_xlati5;
          let x_4424 : vec4<f32> = x_2325.x_AdditionalLightsCookieAtlasUVRects[x_4422];
          let x_4426 : vec2<f32> = ((vec2<f32>(x_4418.x, x_4418.y) * x_4420) + vec2<f32>(x_4424.z, x_4424.w));
          let x_4427 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4426.x, x_4426.y, x_4427.z, x_4427.w);
        } else {
          let x_4430 : vec3<f32> = vs_TEXCOORD7;
          let x_4432 : i32 = u_xlati88;
          let x_4435 : i32 = u_xlati88;
          let x_4439 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4432 + 1i) / 4i)][((x_4435 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4430.y, x_4430.y, x_4430.y, x_4430.y) * x_4439);
          let x_4441 : i32 = u_xlati88;
          let x_4443 : i32 = u_xlati88;
          let x_4446 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[(x_4441 / 4i)][(x_4443 % 4i)];
          let x_4447 : vec3<f32> = vs_TEXCOORD7;
          let x_4450 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4446 * vec4<f32>(x_4447.x, x_4447.x, x_4447.x, x_4447.x)) + x_4450);
          let x_4452 : i32 = u_xlati88;
          let x_4455 : i32 = u_xlati88;
          let x_4459 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4452 + 2i) / 4i)][((x_4455 + 2i) % 4i)];
          let x_4460 : vec3<f32> = vs_TEXCOORD7;
          let x_4463 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4459 * vec4<f32>(x_4460.z, x_4460.z, x_4460.z, x_4460.z)) + x_4463);
          let x_4465 : vec4<f32> = u_xlat12;
          let x_4466 : i32 = u_xlati88;
          let x_4469 : i32 = u_xlati88;
          let x_4473 : vec4<f32> = x_2325.x_AdditionalLightsWorldToLights[((x_4466 + 3i) / 4i)][((x_4469 + 3i) % 4i)];
          u_xlat12 = (x_4465 + x_4473);
          let x_4475 : vec4<f32> = u_xlat12;
          let x_4477 : vec4<f32> = u_xlat12;
          let x_4479 : vec3<f32> = (vec3<f32>(x_4475.x, x_4475.y, x_4475.z) / vec3<f32>(x_4477.w, x_4477.w, x_4477.w));
          let x_4480 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4479.x, x_4479.y, x_4479.z, x_4480.w);
          let x_4482 : vec4<f32> = u_xlat12;
          let x_4484 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4482.x, x_4482.y, x_4482.z), vec3<f32>(x_4484.x, x_4484.y, x_4484.z));
          let x_4487 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4487);
          let x_4489 : f32 = u_xlat86;
          let x_4491 : vec4<f32> = u_xlat12;
          let x_4493 : vec3<f32> = (vec3<f32>(x_4489, x_4489, x_4489) * vec3<f32>(x_4491.x, x_4491.y, x_4491.z));
          let x_4494 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4493.x, x_4493.y, x_4493.z, x_4494.w);
          let x_4496 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4496.x, x_4496.y, x_4496.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4501 : f32 = u_xlat86;
          u_xlat86 = max(x_4501, 0.00000099999999747524f);
          let x_4504 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4504);
          let x_4506 : f32 = u_xlat86;
          let x_4508 : vec4<f32> = u_xlat12;
          let x_4510 : vec3<f32> = (vec3<f32>(x_4506, x_4506, x_4506) * vec3<f32>(x_4508.z, x_4508.x, x_4508.y));
          let x_4511 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4510.x, x_4510.y, x_4510.z, x_4511.w);
          let x_4514 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4514);
          let x_4518 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4518, 0.0f, 1.0f);
          let x_4522 : vec4<f32> = u_xlat13;
          let x_4524 : vec4<bool> = (vec4<f32>(x_4522.y, x_4522.z, x_4522.y, x_4522.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4524.x, x_4524.y);
          let x_4527 : bool = u_xlatb63.x;
          if (x_4527) {
            let x_4532 : f32 = u_xlat13.x;
            x_4528 = x_4532;
          } else {
            let x_4535 : f32 = u_xlat13.x;
            x_4528 = -(x_4535);
          }
          let x_4537 : f32 = x_4528;
          u_xlat63.x = x_4537;
          let x_4540 : bool = u_xlatb63.y;
          if (x_4540) {
            let x_4545 : f32 = u_xlat13.x;
            x_4541 = x_4545;
          } else {
            let x_4548 : f32 = u_xlat13.x;
            x_4541 = -(x_4548);
          }
          let x_4550 : f32 = x_4541;
          u_xlat63.y = x_4550;
          let x_4552 : vec4<f32> = u_xlat12;
          let x_4554 : f32 = u_xlat86;
          let x_4557 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4552.x, x_4552.y) * vec2<f32>(x_4554, x_4554)) + x_4557);
          let x_4559 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4559 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4562 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4562, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4566 : i32 = u_xlati5;
          let x_4568 : vec4<f32> = x_2325.x_AdditionalLightsCookieAtlasUVRects[x_4566];
          let x_4570 : vec2<f32> = u_xlat63;
          let x_4572 : i32 = u_xlati5;
          let x_4574 : vec4<f32> = x_2325.x_AdditionalLightsCookieAtlasUVRects[x_4572];
          let x_4576 : vec2<f32> = ((vec2<f32>(x_4568.x, x_4568.y) * x_4570) + vec2<f32>(x_4574.z, x_4574.w));
          let x_4577 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4576.x, x_4576.y, x_4577.z, x_4577.w);
        }
      }
      let x_4584 : vec4<f32> = u_xlat11;
      let x_4586 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4584.x, x_4584.y), 0.0f);
      u_xlat11 = x_4586;
      let x_4588 : bool = u_xlatb7.y;
      if (x_4588) {
        let x_4593 : f32 = u_xlat11.w;
        x_4589 = x_4593;
      } else {
        let x_4596 : f32 = u_xlat11.x;
        x_4589 = x_4596;
      }
      let x_4597 : f32 = x_4589;
      u_xlat86 = x_4597;
      let x_4599 : bool = u_xlatb7.x;
      if (x_4599) {
        let x_4603 : vec4<f32> = u_xlat11;
        x_4600 = vec3<f32>(x_4603.x, x_4603.y, x_4603.z);
      } else {
        let x_4606 : f32 = u_xlat86;
        x_4600 = vec3<f32>(x_4606, x_4606, x_4606);
      }
      let x_4608 : vec3<f32> = x_4600;
      let x_4609 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4608.x, x_4608.y, x_4608.z, x_4609.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4615 : vec4<f32> = u_xlat11;
    let x_4617 : i32 = u_xlati5;
    let x_4619 : vec4<f32> = x_2809.x_AdditionalLightsColor[x_4617];
    let x_4621 : vec3<f32> = (vec3<f32>(x_4615.x, x_4615.y, x_4615.z) * vec3<f32>(x_4619.x, x_4619.y, x_4619.z));
    let x_4622 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4621.x, x_4621.y, x_4621.z, x_4622.w);
    let x_4624 : f32 = u_xlat84;
    let x_4625 : f32 = u_xlat85;
    u_xlat5.x = (x_4624 * x_4625);
    let x_4628 : vec4<f32> = u_xlat1;
    let x_4630 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4628.x, x_4628.y, x_4628.z), vec3<f32>(x_4630.x, x_4630.y, x_4630.z));
    let x_4633 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4633, 0.0f, 1.0f);
    let x_4636 : f32 = u_xlat5.x;
    let x_4637 : f32 = u_xlat84;
    u_xlat5.x = (x_4636 * x_4637);
    let x_4640 : vec4<f32> = u_xlat5;
    let x_4642 : vec4<f32> = u_xlat11;
    let x_4644 : vec3<f32> = (vec3<f32>(x_4640.x, x_4640.x, x_4640.x) * vec3<f32>(x_4642.x, x_4642.y, x_4642.z));
    let x_4645 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4644.x, x_4644.y, x_4644.z, x_4645.w);
    let x_4647 : vec4<f32> = u_xlat9;
    let x_4649 : vec2<f32> = u_xlat59;
    let x_4652 : vec4<f32> = u_xlat6;
    let x_4654 : vec3<f32> = ((vec3<f32>(x_4647.x, x_4647.y, x_4647.z) * vec3<f32>(x_4649.x, x_4649.x, x_4649.x)) + vec3<f32>(x_4652.x, x_4652.y, x_4652.z));
    let x_4655 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4654.x, x_4654.y, x_4654.z, x_4655.w);
    let x_4657 : vec4<f32> = u_xlat9;
    let x_4659 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4657.x, x_4657.y, x_4657.z), vec3<f32>(x_4659.x, x_4659.y, x_4659.z));
    let x_4664 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_4664, 1.17549435e-38f);
    let x_4668 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_4668);
    let x_4671 : vec4<f32> = u_xlat5;
    let x_4673 : vec4<f32> = u_xlat9;
    let x_4675 : vec3<f32> = (vec3<f32>(x_4671.x, x_4671.x, x_4671.x) * vec3<f32>(x_4673.x, x_4673.y, x_4673.z));
    let x_4676 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4675.x, x_4675.y, x_4675.z, x_4676.w);
    let x_4678 : vec4<f32> = u_xlat1;
    let x_4680 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4678.x, x_4678.y, x_4678.z), vec3<f32>(x_4680.x, x_4680.y, x_4680.z));
    let x_4685 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_4685, 0.0f, 1.0f);
    let x_4688 : vec4<f32> = u_xlat10;
    let x_4690 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4688.x, x_4688.y, x_4688.z), vec3<f32>(x_4690.x, x_4690.y, x_4690.z));
    let x_4693 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4693, 0.0f, 1.0f);
    let x_4696 : f32 = u_xlat5.x;
    let x_4698 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4696 * x_4698);
    let x_4702 : f32 = u_xlat5.x;
    let x_4704 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_4702 * x_4704) + 1.00001001358032226562f);
    let x_4708 : f32 = u_xlat84;
    let x_4709 : f32 = u_xlat84;
    u_xlat84 = (x_4708 * x_4709);
    let x_4712 : f32 = u_xlat5.x;
    let x_4714 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4712 * x_4714);
    let x_4717 : f32 = u_xlat84;
    u_xlat84 = max(x_4717, 0.10000000149011611938f);
    let x_4720 : f32 = u_xlat5.x;
    let x_4721 : f32 = u_xlat84;
    u_xlat5.x = (x_4720 * x_4721);
    let x_4724 : f32 = u_xlat81;
    let x_4726 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4724 * x_4726);
    let x_4729 : f32 = u_xlat79;
    let x_4731 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4729 / x_4731);
    let x_4734 : vec4<f32> = u_xlat4;
    let x_4736 : vec4<f32> = u_xlat5;
    let x_4739 : vec4<f32> = u_xlat3;
    let x_4741 : vec3<f32> = ((vec3<f32>(x_4734.x, x_4734.y, x_4734.z) * vec3<f32>(x_4736.x, x_4736.x, x_4736.x)) + vec3<f32>(x_4739.x, x_4739.y, x_4739.z));
    let x_4742 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4741.x, x_4741.y, x_4741.z, x_4742.w);
    let x_4744 : vec4<f32> = u_xlat9;
    let x_4746 : vec4<f32> = u_xlat11;
    let x_4749 : vec4<f32> = u_xlat8;
    let x_4751 : vec3<f32> = ((vec3<f32>(x_4744.x, x_4744.y, x_4744.z) * vec3<f32>(x_4746.x, x_4746.y, x_4746.z)) + vec3<f32>(x_4749.x, x_4749.y, x_4749.z));
    let x_4752 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4751.x, x_4751.y, x_4751.z, x_4752.w);

    continuing {
      let x_4754 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4754 + bitcast<u32>(1i));
    }
  }
  let x_4756 : vec4<f32> = u_xlat2;
  let x_4758 : f32 = u_xlat26;
  let x_4761 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4756.x, x_4756.y, x_4756.z) * vec3<f32>(x_4758, x_4758, x_4758)) + x_4761);
  let x_4763 : vec4<f32> = u_xlat8;
  let x_4765 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4763.x, x_4763.y, x_4763.z) + x_4765);
  let x_4769 : f32 = u_xlat78;
  let x_4771 : vec3<f32> = u_xlat0;
  let x_4772 : vec3<f32> = (vec3<f32>(x_4769, x_4769, x_4769) * x_4771);
  let x_4773 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4772.x, x_4772.y, x_4772.z, x_4773.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


