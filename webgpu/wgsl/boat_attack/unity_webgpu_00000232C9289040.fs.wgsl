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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(8) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

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

@group(1) @binding(4) var<uniform> x_610 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2263 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2451 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu84 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2742 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

fn main_1() {
  var x_583 : vec3<f32>;
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
  var x_2216 : f32;
  var x_2346 : f32;
  var x_2357 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2896 : f32;
  var x_2906 : f32;
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
  var x_4484 : f32;
  var x_4497 : f32;
  var x_4555 : f32;
  var x_4566 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = x_59.x_MaskMapRemapScale0;
  let x_70 : vec4<f32> = x_59.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_63.x, x_63.y, x_63.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_70.x, x_70.y, x_70.w));
  let x_77 : vec4<f32> = x_59.x_MaskMapRemapScale1;
  let x_82 : vec4<f32> = x_59.x_MaskMapRemapOffset1;
  let x_84 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_82.x, x_82.y, x_82.w));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_90 : vec4<f32> = x_59.x_MaskMapRemapScale2;
  let x_95 : vec4<f32> = x_59.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_101 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_106 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.w, x_101.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_106.x, x_106.w, x_106.y));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_108.z);
  let x_114 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_118 : vec2<f32> = (vec2<f32>(x_114.z, x_114.w) + vec2<f32>(-1.0f, -1.0f));
  let x_119 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = u_xlat4;
  let x_127 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(0.5f, 0.5f));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat4;
  let x_133 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_135 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) * vec2<f32>(x_133.x, x_133.y));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_143 : vec4<f32> = u_xlat4;
  let x_146 : f32 = x_29.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_143.x, x_143.y), x_146);
  u_xlat4 = x_147;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_149, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_160 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : f32 = x_29.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_160.x, x_160.y), x_163);
  u_xlat5 = x_164;
  let x_170 : vec4<f32> = vs_TEXCOORD1;
  let x_173 : f32 = x_29.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_170.z, x_170.w), x_173);
  u_xlat6 = x_174;
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_181.x, x_181.y), x_184);
  u_xlat7 = x_185;
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : f32 = x_29.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_191.z, x_191.w), x_194);
  u_xlat8 = x_195;
  let x_199 : f32 = u_xlat5.w;
  u_xlat9.x = x_199;
  let x_202 : f32 = u_xlat6.w;
  u_xlat9.y = x_202;
  let x_206 : f32 = u_xlat7.w;
  u_xlat9.z = x_206;
  let x_210 : f32 = u_xlat8.w;
  u_xlat9.w = x_210;
  let x_213 : vec4<f32> = u_xlat9;
  let x_216 : f32 = x_59.x_Smoothness0;
  let x_219 : f32 = x_59.x_Smoothness1;
  let x_222 : f32 = x_59.x_Smoothness2;
  let x_225 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_213 * vec4<f32>(x_216, x_219, x_222, x_225));
  let x_232 : f32 = x_59.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_232);
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_235) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat9;
  let x_239 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_238 + -(x_239));
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_242 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_246, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_250 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_254);
  let x_257 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_257 + -(x_258));
  let x_263 : f32 = u_xlat12.x;
  let x_266 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.y;
  let x_273 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_270 * x_273);
  let x_277 : f32 = u_xlat12.z;
  let x_280 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_277 * x_280);
  let x_284 : f32 = u_xlat12.w;
  let x_287 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_284 * x_287);
  let x_290 : vec4<f32> = u_xlat11;
  let x_291 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_290 + x_291);
  let x_293 : bool = u_xlatb79;
  let x_294 : vec4<f32> = u_xlat11;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_295, x_294, vec4<bool>(x_293, x_293, x_293, x_293));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_300, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_304 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_304);
  let x_306 : bool = u_xlatb80;
  if (((select(0i, 1i, x_306) * -1i) != 0i)) {
    discard;
  }
  let x_313 : f32 = u_xlat79;
  u_xlat79 = (x_313 + 0.00006103515625f);
  let x_316 : vec4<f32> = u_xlat4;
  let x_317 : f32 = u_xlat79;
  u_xlat4 = (x_316 / vec4<f32>(x_317, x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec4<f32> = u_xlat12;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat11;
  let x_348 : vec4<f32> = u_xlat6;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_356 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.z, x_353.z, x_353.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.y, x_363.z)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_376 : vec3<f32> = (vec3<f32>(x_371.w, x_371.w, x_371.w) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_390;
  let x_393 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_393;
  let x_396 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_396;
  let x_399 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_399;
  let x_402 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_402;
  let x_405 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_405;
  let x_408 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_408;
  let x_411 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_411;
  let x_413 : vec4<f32> = u_xlat6;
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_413 + x_414);
  let x_417 : f32 = u_xlat0.z;
  u_xlat7.x = x_417;
  let x_420 : f32 = u_xlat1.z;
  u_xlat7.y = x_420;
  let x_423 : f32 = u_xlat2.z;
  u_xlat7.z = x_423;
  let x_426 : f32 = u_xlat3.y;
  u_xlat7.w = x_426;
  let x_428 : vec4<f32> = u_xlat9;
  let x_431 : f32 = x_59.x_Smoothness0;
  let x_433 : f32 = x_59.x_Smoothness1;
  let x_435 : f32 = x_59.x_Smoothness2;
  let x_437 : f32 = x_59.x_Smoothness3;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_428) * vec4<f32>(x_431, x_433, x_435, x_437)) + x_440);
  let x_444 : f32 = x_59.x_LayerHasMask0;
  let x_447 : f32 = x_59.x_LayerHasMask1;
  let x_450 : f32 = x_59.x_LayerHasMask2;
  let x_453 : f32 = x_59.x_LayerHasMask3;
  let x_455 : vec4<f32> = u_xlat7;
  let x_457 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_444, x_447, x_450, x_453) * x_455) + x_457);
  let x_460 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_460, x_461);
  let x_464 : f32 = u_xlat0.x;
  u_xlat7.x = x_464;
  let x_467 : f32 = u_xlat1.x;
  u_xlat7.y = x_467;
  let x_470 : f32 = u_xlat2.x;
  u_xlat7.z = x_470;
  let x_473 : f32 = u_xlat3.x;
  u_xlat7.w = x_473;
  let x_475 : vec4<f32> = u_xlat7;
  let x_478 : f32 = x_59.x_Metallic0;
  let x_481 : f32 = x_59.x_Metallic1;
  let x_484 : f32 = x_59.x_Metallic2;
  let x_487 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_475 + -(vec4<f32>(x_478, x_481, x_484, x_487)));
  let x_492 : f32 = x_59.x_LayerHasMask0;
  let x_494 : f32 = x_59.x_LayerHasMask1;
  let x_496 : f32 = x_59.x_LayerHasMask2;
  let x_498 : f32 = x_59.x_LayerHasMask3;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : f32 = x_59.x_Metallic0;
  let x_505 : f32 = x_59.x_Metallic1;
  let x_507 : f32 = x_59.x_Metallic2;
  let x_509 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_492, x_494, x_496, x_498) * x_500) + vec4<f32>(x_503, x_505, x_507, x_509));
  let x_512 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_512, x_513);
  let x_517 : f32 = u_xlat0.y;
  u_xlat3.x = x_517;
  let x_520 : f32 = u_xlat1.y;
  u_xlat3.y = x_520;
  let x_523 : f32 = u_xlat2.y;
  u_xlat3.z = x_523;
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_525) + x_527);
  let x_530 : f32 = x_59.x_LayerHasMask0;
  let x_532 : f32 = x_59.x_LayerHasMask1;
  let x_534 : f32 = x_59.x_LayerHasMask2;
  let x_536 : f32 = x_59.x_LayerHasMask3;
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_530, x_532, x_534, x_536) * x_538) + x_540);
  let x_543 : vec4<f32> = u_xlat4;
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_543, x_544);
  let x_548 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_548 == 0.0f);
  let x_553 : vec3<f32> = vs_TEXCOORD7;
  let x_557 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_553) + x_557);
  let x_559 : vec3<f32> = u_xlat27;
  let x_560 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_559, x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat27;
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat27 = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_572 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_572;
  let x_575 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_575;
  let x_579 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_579;
  let x_581 : bool = u_xlatb1;
  if (x_581) {
    let x_586 : vec3<f32> = u_xlat27;
    x_583 = x_586;
  } else {
    let x_588 : vec3<f32> = u_xlat2;
    x_583 = x_588;
  }
  let x_589 : vec3<f32> = x_583;
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  u_xlat79 = dot(x_593, x_594);
  let x_596 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_596);
  let x_598 : f32 = u_xlat79;
  let x_600 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_598, x_598, x_598) * x_600);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres0;
  let x_615 : vec3<f32> = (x_602 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_620 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres1;
  let x_623 : vec3<f32> = (x_618 + -(vec3<f32>(x_620.x, x_620.y, x_620.z)));
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres2;
  let x_632 : vec3<f32> = (x_626 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec3<f32> = vs_TEXCOORD7;
  let x_637 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres3;
  let x_640 : vec3<f32> = (x_635 + -(vec3<f32>(x_637.x, x_637.y, x_637.z)));
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat3;
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_655 : vec4<f32> = u_xlat6;
  let x_657 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_661 : vec4<f32> = u_xlat7;
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_669 : vec4<f32> = u_xlat3;
  let x_671 : vec4<f32> = x_610.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_669 < x_671);
  let x_674 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_686);
  let x_690 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_690);
  let x_695 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_695);
  let x_699 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_699);
  let x_702 : vec4<f32> = u_xlat3;
  let x_704 : vec4<f32> = u_xlat4;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) + vec3<f32>(x_704.y, x_704.z, x_704.w));
  let x_707 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat3;
  let x_712 : vec3<f32> = max(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_713 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_713.x, x_712.x, x_712.y, x_712.z);
  let x_715 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_715, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_720 : f32 = u_xlat79;
  u_xlat79 = (-(x_720) + 4.0f);
  let x_725 : f32 = u_xlat79;
  u_xlatu79 = u32(x_725);
  let x_729 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_729) << bitcast<u32>(2i));
  let x_732 : vec3<f32> = vs_TEXCOORD7;
  let x_734 : i32 = u_xlati79;
  let x_737 : i32 = u_xlati79;
  let x_741 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_734 + 1i) / 4i)][((x_737 + 1i) % 4i)];
  let x_743 : vec3<f32> = (vec3<f32>(x_732.y, x_732.y, x_732.y) * vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati79;
  let x_748 : i32 = u_xlati79;
  let x_751 : vec4<f32> = x_610.x_MainLightWorldToShadow[(x_746 / 4i)][(x_748 % 4i)];
  let x_753 : vec3<f32> = vs_TEXCOORD7;
  let x_756 : vec4<f32> = u_xlat3;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753.x, x_753.x, x_753.x)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : i32 = u_xlati79;
  let x_764 : i32 = u_xlati79;
  let x_768 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_761 + 2i) / 4i)][((x_764 + 2i) % 4i)];
  let x_770 : vec3<f32> = vs_TEXCOORD7;
  let x_773 : vec4<f32> = u_xlat3;
  let x_775 : vec3<f32> = ((vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770.z, x_770.z, x_770.z)) + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat3;
  let x_780 : i32 = u_xlati79;
  let x_783 : i32 = u_xlati79;
  let x_787 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_780 + 3i) / 4i)][((x_783 + 3i) % 4i)];
  let x_789 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_794 : f32 = vs_TEXCOORD7.y;
  let x_796 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat79 = (x_794 * x_796);
  let x_799 : f32 = x_29.unity_MatrixV[0i].z;
  let x_801 : f32 = vs_TEXCOORD7.x;
  let x_803 : f32 = u_xlat79;
  u_xlat79 = ((x_799 * x_801) + x_803);
  let x_806 : f32 = x_29.unity_MatrixV[2i].z;
  let x_808 : f32 = vs_TEXCOORD7.z;
  let x_810 : f32 = u_xlat79;
  u_xlat79 = ((x_806 * x_808) + x_810);
  let x_812 : f32 = u_xlat79;
  let x_814 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat79 = (x_812 + x_814);
  let x_816 : f32 = u_xlat79;
  let x_819 : f32 = x_29.x_ProjectionParams.y;
  u_xlat79 = (-(x_816) + -(x_819));
  let x_822 : f32 = u_xlat79;
  u_xlat79 = max(x_822, 0.0f);
  let x_824 : f32 = u_xlat79;
  let x_826 : f32 = x_29.unity_FogParams.x;
  u_xlat79 = (x_824 * x_826);
  let x_833 : vec4<f32> = vs_TEXCOORD0;
  let x_836 : f32 = x_29.x_GlobalMipBias.x;
  let x_837 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_833.z, x_833.w), x_836);
  u_xlat4 = x_837;
  let x_842 : vec4<f32> = vs_TEXCOORD0;
  let x_845 : f32 = x_29.x_GlobalMipBias.x;
  let x_846 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_842.z, x_842.w), x_845);
  let x_847 : vec3<f32> = vec3<f32>(x_846.x, x_846.y, x_846.z);
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat4;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_858 : vec3<f32> = u_xlat2;
  let x_859 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_858, vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat80;
  u_xlat80 = (x_862 + 0.5f);
  let x_864 : f32 = u_xlat80;
  let x_866 : vec4<f32> = u_xlat6;
  let x_868 : vec3<f32> = (vec3<f32>(x_864, x_864, x_864) * vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_872 : f32 = u_xlat4.w;
  u_xlat80 = max(x_872, 0.00009999999747378752f);
  let x_875 : vec4<f32> = u_xlat4;
  let x_877 : f32 = u_xlat80;
  let x_879 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) / vec3<f32>(x_877, x_877, x_877));
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_883 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_883) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_889 : f32 = u_xlat52;
  let x_890 : f32 = u_xlat80;
  u_xlat81 = (x_889 + -(x_890));
  let x_893 : f32 = u_xlat80;
  let x_895 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat5;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec3<f32> = u_xlat0;
  let x_909 : vec4<f32> = u_xlat5;
  let x_914 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.x, x_907.x) * vec3<f32>(x_909.x, x_909.y, x_909.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_915 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : f32 = u_xlat52;
  u_xlat0.x = (-(x_917) + 1.0f);
  let x_922 : f32 = u_xlat0.x;
  let x_924 : f32 = u_xlat0.x;
  u_xlat52 = (x_922 * x_924);
  let x_926 : f32 = u_xlat52;
  u_xlat52 = max(x_926, 0.0078125f);
  let x_929 : f32 = u_xlat52;
  let x_930 : f32 = u_xlat52;
  u_xlat80 = (x_929 * x_930);
  let x_932 : f32 = u_xlat81;
  u_xlat81 = (x_932 + 1.0f);
  let x_934 : f32 = u_xlat81;
  u_xlat81 = clamp(x_934, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat52;
  u_xlat82 = ((x_937 * 4.0f) + 2.0f);
  let x_940 : f32 = u_xlat26;
  u_xlat26 = min(x_940, 1.0f);
  let x_944 : f32 = x_610.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_944);
  let x_946 : bool = u_xlatb83;
  if (x_946) {
    let x_950 : f32 = x_610.x_MainLightShadowParams.y;
    u_xlatb83 = (x_950 == 1.0f);
    let x_952 : bool = u_xlatb83;
    if (x_952) {
      let x_955 : vec4<f32> = u_xlat3;
      let x_958 : vec4<f32> = x_610.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_955.x, x_955.y, x_955.x, x_955.y) + x_958);
      let x_961 : vec4<f32> = u_xlat7;
      let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
      let x_964 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_962.x, x_962.y, x_964);
      let x_976 : vec3<f32> = txVec0;
      let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
      u_xlat8.x = x_978;
      let x_981 : vec4<f32> = u_xlat7;
      let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
      let x_984 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_982.x, x_982.y, x_984);
      let x_991 : vec3<f32> = txVec1;
      let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
      u_xlat8.y = x_993;
      let x_995 : vec4<f32> = u_xlat3;
      let x_998 : vec4<f32> = x_610.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_995.x, x_995.y, x_995.x, x_995.y) + x_998);
      let x_1001 : vec4<f32> = u_xlat7;
      let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
      let x_1004 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
      let x_1011 : vec3<f32> = txVec2;
      let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1011.xy, x_1011.z);
      u_xlat8.z = x_1013;
      let x_1016 : vec4<f32> = u_xlat7;
      let x_1017 : vec2<f32> = vec2<f32>(x_1016.z, x_1016.w);
      let x_1019 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
      let x_1026 : vec3<f32> = txVec3;
      let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
      u_xlat8.w = x_1028;
      let x_1031 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_1031, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1038 : f32 = x_610.x_MainLightShadowParams.y;
      u_xlatb84 = (x_1038 == 2.0f);
      let x_1040 : bool = u_xlatb84;
      if (x_1040) {
        let x_1043 : vec4<f32> = u_xlat3;
        let x_1046 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(x_1046.z, x_1046.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1054 : vec2<f32> = floor(vec2<f32>(x_1052.x, x_1052.y));
        let x_1055 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1059 : vec4<f32> = u_xlat3;
        let x_1062 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.z, x_1062.w)) + -(vec2<f32>(x_1065.x, x_1065.y)));
        let x_1069 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1069.x, x_1069.x, x_1069.y, x_1069.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1073.x, x_1073.x, x_1073.z, x_1073.z) * vec4<f32>(x_1075.x, x_1075.x, x_1075.z, x_1075.z));
        let x_1078 : vec4<f32> = u_xlat9;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1078.y, x_1078.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1088 : vec2<f32> = u_xlat59;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1088));
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1094 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1094) + vec2<f32>(1.0f, 1.0f));
        let x_1098 : vec2<f32> = u_xlat59;
        let x_1100 : vec2<f32> = min(x_1098, vec2<f32>(0.0f, 0.0f));
        let x_1101 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat10;
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1109 : vec2<f32> = u_xlat61;
        let x_1110 : vec2<f32> = ((-(vec2<f32>(x_1103.x, x_1103.y)) * vec2<f32>(x_1106.x, x_1106.y)) + x_1109);
        let x_1111 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1113, vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec2<f32> = u_xlat59;
        let x_1117 : vec2<f32> = u_xlat59;
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1115) * x_1117) + vec2<f32>(x_1119.y, x_1119.w));
        let x_1122 : vec4<f32> = u_xlat10;
        let x_1124 : vec2<f32> = (vec2<f32>(x_1122.x, x_1122.y) + vec2<f32>(1.0f, 1.0f));
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1127 + vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1133 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec2<f32> = u_xlat61;
        let x_1137 : vec2<f32> = (x_1136 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat10;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec2<f32> = u_xlat59;
        let x_1146 : vec2<f32> = (x_1145 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1147 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1149.y, x_1149.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1153 : f32 = u_xlat10.x;
        u_xlat11.z = x_1153;
        let x_1156 : f32 = u_xlat59.x;
        u_xlat11.w = x_1156;
        let x_1159 : f32 = u_xlat12.x;
        u_xlat9.z = x_1159;
        let x_1162 : f32 = u_xlat8.x;
        u_xlat9.w = x_1162;
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1166 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1164.z, x_1164.w, x_1164.x, x_1164.z) + vec4<f32>(x_1166.z, x_1166.w, x_1166.x, x_1166.z));
        let x_1170 : f32 = u_xlat11.y;
        u_xlat10.z = x_1170;
        let x_1173 : f32 = u_xlat59.y;
        u_xlat10.w = x_1173;
        let x_1176 : f32 = u_xlat9.y;
        u_xlat12.z = x_1176;
        let x_1179 : f32 = u_xlat8.z;
        u_xlat12.w = x_1179;
        let x_1181 : vec4<f32> = u_xlat10;
        let x_1183 : vec4<f32> = u_xlat12;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1181.z, x_1181.y, x_1181.w) + vec3<f32>(x_1183.z, x_1183.y, x_1183.w));
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1190 : vec4<f32> = u_xlat13;
        let x_1192 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.z, x_1188.w) / vec3<f32>(x_1190.z, x_1190.w, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1200 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.y, x_1195.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat12;
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1207 : vec3<f32> = (vec3<f32>(x_1203.z, x_1203.y, x_1203.w) / vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
        let x_1208 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1212 : vec3<f32> = (vec3<f32>(x_1210.x, x_1210.y, x_1210.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1218 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1220 : vec3<f32> = (vec3<f32>(x_1215.y, x_1215.x, x_1215.z) * vec3<f32>(x_1218.x, x_1218.x, x_1218.x));
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1226 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) * vec3<f32>(x_1226.y, x_1226.y, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1232 : f32 = u_xlat10.x;
        u_xlat9.w = x_1232;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1237 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y) * vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y)) + vec4<f32>(x_1240.y, x_1240.w, x_1240.x, x_1240.w));
        let x_1243 : vec4<f32> = u_xlat7;
        let x_1246 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1249.z, x_1249.w));
        let x_1253 : f32 = u_xlat9.y;
        u_xlat10.w = x_1253;
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.y, x_1255.z);
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1257.x, x_1256.x, x_1257.z, x_1256.y);
        let x_1259 : vec4<f32> = u_xlat7;
        let x_1262 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1265.y));
        let x_1268 : vec4<f32> = u_xlat7;
        let x_1271 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.w, x_1274.y, x_1274.w, x_1274.z));
        let x_1277 : vec4<f32> = u_xlat7;
        let x_1280 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.x, x_1283.w, x_1283.z, x_1283.w));
        let x_1287 : vec4<f32> = u_xlat8;
        let x_1289 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1287.x, x_1287.x, x_1287.x, x_1287.y) * vec4<f32>(x_1289.z, x_1289.w, x_1289.y, x_1289.z));
        let x_1293 : vec4<f32> = u_xlat8;
        let x_1295 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1293.y, x_1293.y, x_1293.z, x_1293.z) * x_1295);
        let x_1299 : f32 = u_xlat8.z;
        let x_1301 : f32 = u_xlat13.y;
        u_xlat84 = (x_1299 * x_1301);
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec4;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat7.x = x_1316;
        let x_1319 : vec4<f32> = u_xlat11;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.z, x_1319.w);
        let x_1322 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1330 : vec3<f32> = txVec5;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat33 = x_1332;
        let x_1333 : f32 = u_xlat33;
        let x_1335 : f32 = u_xlat14.y;
        u_xlat33 = (x_1333 * x_1335);
        let x_1338 : f32 = u_xlat14.x;
        let x_1340 : f32 = u_xlat7.x;
        let x_1342 : f32 = u_xlat33;
        u_xlat7.x = ((x_1338 * x_1340) + x_1342);
        let x_1346 : vec2<f32> = u_xlat59;
        let x_1348 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec6;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat33 = x_1357;
        let x_1359 : f32 = u_xlat14.z;
        let x_1360 : f32 = u_xlat33;
        let x_1363 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1359 * x_1360) + x_1363);
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec7;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat33 = x_1379;
        let x_1381 : f32 = u_xlat14.w;
        let x_1382 : f32 = u_xlat33;
        let x_1385 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec8;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat33 = x_1401;
        let x_1403 : f32 = u_xlat15.x;
        let x_1404 : f32 = u_xlat33;
        let x_1407 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1403 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.z, x_1411.w);
        let x_1414 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec9;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat33 = x_1423;
        let x_1425 : f32 = u_xlat15.y;
        let x_1426 : f32 = u_xlat33;
        let x_1429 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat10;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.z, x_1433.w);
        let x_1436 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec10;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat33 = x_1445;
        let x_1447 : f32 = u_xlat15.z;
        let x_1448 : f32 = u_xlat33;
        let x_1451 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat9;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec11;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat33 = x_1467;
        let x_1469 : f32 = u_xlat15.w;
        let x_1470 : f32 = u_xlat33;
        let x_1473 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat9;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec12;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat33 = x_1489;
        let x_1490 : f32 = u_xlat84;
        let x_1491 : f32 = u_xlat33;
        let x_1494 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1490 * x_1491) + x_1494);
      } else {
        let x_1497 : vec4<f32> = u_xlat3;
        let x_1500 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1503 : vec2<f32> = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1500.z, x_1500.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1504 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
        let x_1506 : vec4<f32> = u_xlat7;
        let x_1508 : vec2<f32> = floor(vec2<f32>(x_1506.x, x_1506.y));
        let x_1509 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1511 : vec4<f32> = u_xlat3;
        let x_1514 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1511.x, x_1511.y) * vec2<f32>(x_1514.z, x_1514.w)) + -(vec2<f32>(x_1517.x, x_1517.y)));
        let x_1521 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1521.x, x_1521.x, x_1521.y, x_1521.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1524 : vec4<f32> = u_xlat8;
        let x_1526 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1524.x, x_1524.x, x_1524.z, x_1524.z) * vec4<f32>(x_1526.x, x_1526.x, x_1526.z, x_1526.z));
        let x_1529 : vec4<f32> = u_xlat9;
        let x_1533 : vec2<f32> = (vec2<f32>(x_1529.y, x_1529.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1534 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1534.x, x_1533.x, x_1534.z, x_1533.y);
        let x_1536 : vec4<f32> = u_xlat9;
        let x_1539 : vec2<f32> = u_xlat59;
        let x_1541 : vec2<f32> = ((vec2<f32>(x_1536.x, x_1536.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1539));
        let x_1542 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1541.x, x_1542.y, x_1541.y, x_1542.w);
        let x_1544 : vec2<f32> = u_xlat59;
        let x_1546 : vec2<f32> = (-(x_1544) + vec2<f32>(1.0f, 1.0f));
        let x_1547 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1546.x, x_1546.y, x_1547.z, x_1547.w);
        let x_1549 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1549, vec2<f32>(0.0f, 0.0f));
        let x_1551 : vec2<f32> = u_xlat61;
        let x_1553 : vec2<f32> = u_xlat61;
        let x_1555 : vec4<f32> = u_xlat9;
        let x_1557 : vec2<f32> = ((-(x_1551) * x_1553) + vec2<f32>(x_1555.x, x_1555.y));
        let x_1558 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
        let x_1560 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1560, vec2<f32>(0.0f, 0.0f));
        let x_1563 : vec2<f32> = u_xlat61;
        let x_1565 : vec2<f32> = u_xlat61;
        let x_1567 : vec4<f32> = u_xlat8;
        let x_1569 : vec2<f32> = ((-(x_1563) * x_1565) + vec2<f32>(x_1567.y, x_1567.w));
        let x_1570 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1569.x, x_1570.y, x_1569.y);
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1575 : vec2<f32> = (vec2<f32>(x_1572.x, x_1572.y) + vec2<f32>(2.0f, 2.0f));
        let x_1576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1575.x, x_1575.y, x_1576.z, x_1576.w);
        let x_1578 : vec3<f32> = u_xlat34;
        let x_1580 : vec2<f32> = (vec2<f32>(x_1578.x, x_1578.z) + vec2<f32>(2.0f, 2.0f));
        let x_1581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1581.x, x_1580.x, x_1581.z, x_1580.y);
        let x_1584 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1584 * 0.08163200318813323975f);
        let x_1588 : vec4<f32> = u_xlat8;
        let x_1591 : vec3<f32> = (vec3<f32>(x_1588.z, x_1588.x, x_1588.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1592 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1592.w);
        let x_1594 : vec4<f32> = u_xlat9;
        let x_1597 : vec2<f32> = (vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1597.x, x_1597.y, x_1598.z, x_1598.w);
        let x_1601 : f32 = u_xlat12.y;
        u_xlat11.x = x_1601;
        let x_1603 : vec2<f32> = u_xlat59;
        let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1611 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1611.x, x_1610.x, x_1611.z, x_1610.y);
        let x_1613 : vec2<f32> = u_xlat59;
        let x_1617 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1617.x, x_1618.y, x_1617.y, x_1618.w);
        let x_1621 : f32 = u_xlat8.x;
        u_xlat9.y = x_1621;
        let x_1624 : f32 = u_xlat10.y;
        u_xlat9.w = x_1624;
        let x_1626 : vec4<f32> = u_xlat9;
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1626 + x_1627);
        let x_1629 : vec2<f32> = u_xlat59;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1629.y, x_1629.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1633 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1633.x, x_1632.x, x_1633.z, x_1632.y);
        let x_1635 : vec2<f32> = u_xlat59;
        let x_1638 : vec2<f32> = ((vec2<f32>(x_1635.y, x_1635.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1639 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1638.x, x_1639.y, x_1638.y, x_1639.w);
        let x_1642 : f32 = u_xlat8.y;
        u_xlat10.y = x_1642;
        let x_1644 : vec4<f32> = u_xlat10;
        let x_1645 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1644 + x_1645);
        let x_1647 : vec4<f32> = u_xlat9;
        let x_1648 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1647 / x_1648);
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1650 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1656 : vec4<f32> = u_xlat10;
        let x_1657 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1656 / x_1657);
        let x_1659 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1659 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1661 : vec4<f32> = u_xlat9;
        let x_1664 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1661.w, x_1661.x, x_1661.y, x_1661.z) * vec4<f32>(x_1664.x, x_1664.x, x_1664.x, x_1664.x));
        let x_1667 : vec4<f32> = u_xlat10;
        let x_1670 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1667.x, x_1667.w, x_1667.y, x_1667.z) * vec4<f32>(x_1670.y, x_1670.y, x_1670.y, x_1670.y));
        let x_1673 : vec4<f32> = u_xlat9;
        let x_1674 : vec3<f32> = vec3<f32>(x_1673.y, x_1673.z, x_1673.w);
        let x_1675 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1674.z);
        let x_1678 : f32 = u_xlat10.x;
        u_xlat12.y = x_1678;
        let x_1680 : vec4<f32> = u_xlat7;
        let x_1683 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1686 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1680.x, x_1680.y, x_1680.x, x_1680.y) * vec4<f32>(x_1683.x, x_1683.y, x_1683.x, x_1683.y)) + vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1686.y));
        let x_1689 : vec4<f32> = u_xlat7;
        let x_1692 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1695 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1692.x, x_1692.y)) + vec2<f32>(x_1695.w, x_1695.y));
        let x_1699 : f32 = u_xlat12.y;
        u_xlat9.y = x_1699;
        let x_1702 : f32 = u_xlat10.z;
        u_xlat12.y = x_1702;
        let x_1704 : vec4<f32> = u_xlat7;
        let x_1707 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1704.x, x_1704.y, x_1704.x, x_1704.y) * vec4<f32>(x_1707.x, x_1707.y, x_1707.x, x_1707.y)) + vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1710.y));
        let x_1713 : vec4<f32> = u_xlat7;
        let x_1716 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1719 : vec4<f32> = u_xlat12;
        let x_1721 : vec2<f32> = ((vec2<f32>(x_1713.x, x_1713.y) * vec2<f32>(x_1716.x, x_1716.y)) + vec2<f32>(x_1719.w, x_1719.y));
        let x_1722 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1721.x, x_1721.y, x_1722.z, x_1722.w);
        let x_1725 : f32 = u_xlat12.y;
        u_xlat9.z = x_1725;
        let x_1728 : vec4<f32> = u_xlat7;
        let x_1731 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y) * vec4<f32>(x_1731.x, x_1731.y, x_1731.x, x_1731.y)) + vec4<f32>(x_1734.x, x_1734.y, x_1734.x, x_1734.z));
        let x_1738 : f32 = u_xlat10.w;
        u_xlat12.y = x_1738;
        let x_1741 : vec4<f32> = u_xlat7;
        let x_1744 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y) * vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y)) + vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1747.y));
        let x_1751 : vec4<f32> = u_xlat7;
        let x_1754 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(x_1754.x, x_1754.y)) + vec2<f32>(x_1757.w, x_1757.y));
        let x_1761 : f32 = u_xlat12.y;
        u_xlat9.w = x_1761;
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1767 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.x, x_1770.w));
        let x_1773 : vec4<f32> = u_xlat12;
        let x_1774 : vec3<f32> = vec3<f32>(x_1773.x, x_1773.z, x_1773.w);
        let x_1775 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1774.x, x_1775.y, x_1774.y, x_1774.z);
        let x_1777 : vec4<f32> = u_xlat7;
        let x_1780 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1783 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1777.x, x_1777.y, x_1777.x, x_1777.y) * vec4<f32>(x_1780.x, x_1780.y, x_1780.x, x_1780.y)) + vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1783.y));
        let x_1787 : vec4<f32> = u_xlat7;
        let x_1790 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1787.x, x_1787.y) * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1793.w, x_1793.y));
        let x_1797 : f32 = u_xlat9.x;
        u_xlat10.x = x_1797;
        let x_1799 : vec4<f32> = u_xlat7;
        let x_1802 : vec4<f32> = x_610.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat10;
        let x_1807 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(x_1802.x, x_1802.y)) + vec2<f32>(x_1805.x, x_1805.y));
        let x_1808 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
        let x_1811 : vec4<f32> = u_xlat8;
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1811.x, x_1811.x, x_1811.x, x_1811.x) * x_1813);
        let x_1816 : vec4<f32> = u_xlat8;
        let x_1818 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1816.y, x_1816.y, x_1816.y, x_1816.y) * x_1818);
        let x_1821 : vec4<f32> = u_xlat8;
        let x_1823 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1821.z, x_1821.z, x_1821.z, x_1821.z) * x_1823);
        let x_1825 : vec4<f32> = u_xlat8;
        let x_1827 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1825.w, x_1825.w, x_1825.w, x_1825.w) * x_1827);
        let x_1830 : vec4<f32> = u_xlat13;
        let x_1831 : vec2<f32> = vec2<f32>(x_1830.x, x_1830.y);
        let x_1833 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec13;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1840.xy, x_1840.z);
        u_xlat84 = x_1842;
        let x_1844 : vec4<f32> = u_xlat13;
        let x_1845 : vec2<f32> = vec2<f32>(x_1844.z, x_1844.w);
        let x_1847 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1845.x, x_1845.y, x_1847);
        let x_1854 : vec3<f32> = txVec14;
        let x_1856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1854.xy, x_1854.z);
        u_xlat9.x = x_1856;
        let x_1859 : f32 = u_xlat9.x;
        let x_1861 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1859 * x_1861);
        let x_1865 : f32 = u_xlat18.x;
        let x_1866 : f32 = u_xlat84;
        let x_1869 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1865 * x_1866) + x_1869);
        let x_1872 : vec2<f32> = u_xlat59;
        let x_1874 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1872.x, x_1872.y, x_1874);
        let x_1881 : vec3<f32> = txVec15;
        let x_1883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1881.xy, x_1881.z);
        u_xlat59.x = x_1883;
        let x_1886 : f32 = u_xlat18.z;
        let x_1888 : f32 = u_xlat59.x;
        let x_1890 : f32 = u_xlat84;
        u_xlat84 = ((x_1886 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat16;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec16;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat59.x = x_1905;
        let x_1908 : f32 = u_xlat18.w;
        let x_1910 : f32 = u_xlat59.x;
        let x_1912 : f32 = u_xlat84;
        u_xlat84 = ((x_1908 * x_1910) + x_1912);
        let x_1915 : vec4<f32> = u_xlat14;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.x, x_1915.y);
        let x_1918 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec17;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1925.xy, x_1925.z);
        u_xlat59.x = x_1927;
        let x_1930 : f32 = u_xlat19.x;
        let x_1932 : f32 = u_xlat59.x;
        let x_1934 : f32 = u_xlat84;
        u_xlat84 = ((x_1930 * x_1932) + x_1934);
        let x_1937 : vec4<f32> = u_xlat14;
        let x_1938 : vec2<f32> = vec2<f32>(x_1937.z, x_1937.w);
        let x_1940 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec18;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
        u_xlat59.x = x_1949;
        let x_1952 : f32 = u_xlat19.y;
        let x_1954 : f32 = u_xlat59.x;
        let x_1956 : f32 = u_xlat84;
        u_xlat84 = ((x_1952 * x_1954) + x_1956);
        let x_1959 : vec4<f32> = u_xlat15;
        let x_1960 : vec2<f32> = vec2<f32>(x_1959.x, x_1959.y);
        let x_1962 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
        let x_1969 : vec3<f32> = txVec19;
        let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1969.xy, x_1969.z);
        u_xlat59.x = x_1971;
        let x_1974 : f32 = u_xlat19.z;
        let x_1976 : f32 = u_xlat59.x;
        let x_1978 : f32 = u_xlat84;
        u_xlat84 = ((x_1974 * x_1976) + x_1978);
        let x_1981 : vec4<f32> = u_xlat16;
        let x_1982 : vec2<f32> = vec2<f32>(x_1981.z, x_1981.w);
        let x_1984 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
        let x_1991 : vec3<f32> = txVec20;
        let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1991.xy, x_1991.z);
        u_xlat59.x = x_1993;
        let x_1996 : f32 = u_xlat19.w;
        let x_1998 : f32 = u_xlat59.x;
        let x_2000 : f32 = u_xlat84;
        u_xlat84 = ((x_1996 * x_1998) + x_2000);
        let x_2003 : vec4<f32> = u_xlat17;
        let x_2004 : vec2<f32> = vec2<f32>(x_2003.x, x_2003.y);
        let x_2006 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2004.x, x_2004.y, x_2006);
        let x_2013 : vec3<f32> = txVec21;
        let x_2015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2013.xy, x_2013.z);
        u_xlat59.x = x_2015;
        let x_2018 : f32 = u_xlat20.x;
        let x_2020 : f32 = u_xlat59.x;
        let x_2022 : f32 = u_xlat84;
        u_xlat84 = ((x_2018 * x_2020) + x_2022);
        let x_2025 : vec4<f32> = u_xlat17;
        let x_2026 : vec2<f32> = vec2<f32>(x_2025.z, x_2025.w);
        let x_2028 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
        let x_2035 : vec3<f32> = txVec22;
        let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2035.xy, x_2035.z);
        u_xlat59.x = x_2037;
        let x_2040 : f32 = u_xlat20.y;
        let x_2042 : f32 = u_xlat59.x;
        let x_2044 : f32 = u_xlat84;
        u_xlat84 = ((x_2040 * x_2042) + x_2044);
        let x_2047 : vec2<f32> = u_xlat35;
        let x_2049 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2047.x, x_2047.y, x_2049);
        let x_2056 : vec3<f32> = txVec23;
        let x_2058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2056.xy, x_2056.z);
        u_xlat59.x = x_2058;
        let x_2061 : f32 = u_xlat20.z;
        let x_2063 : f32 = u_xlat59.x;
        let x_2065 : f32 = u_xlat84;
        u_xlat84 = ((x_2061 * x_2063) + x_2065);
        let x_2068 : vec2<f32> = u_xlat67;
        let x_2070 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec24;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat59.x = x_2079;
        let x_2082 : f32 = u_xlat20.w;
        let x_2084 : f32 = u_xlat59.x;
        let x_2086 : f32 = u_xlat84;
        u_xlat84 = ((x_2082 * x_2084) + x_2086);
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.x, x_2089.y);
        let x_2092 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec25;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
        u_xlat59.x = x_2101;
        let x_2104 : f32 = u_xlat8.x;
        let x_2106 : f32 = u_xlat59.x;
        let x_2108 : f32 = u_xlat84;
        u_xlat84 = ((x_2104 * x_2106) + x_2108);
        let x_2111 : vec4<f32> = u_xlat12;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.z, x_2111.w);
        let x_2114 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec26;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
        u_xlat59.x = x_2123;
        let x_2126 : f32 = u_xlat8.y;
        let x_2128 : f32 = u_xlat59.x;
        let x_2130 : f32 = u_xlat84;
        u_xlat84 = ((x_2126 * x_2128) + x_2130);
        let x_2133 : vec2<f32> = u_xlat62;
        let x_2135 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2133.x, x_2133.y, x_2135);
        let x_2142 : vec3<f32> = txVec27;
        let x_2144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2142.xy, x_2142.z);
        u_xlat59.x = x_2144;
        let x_2147 : f32 = u_xlat8.z;
        let x_2149 : f32 = u_xlat59.x;
        let x_2151 : f32 = u_xlat84;
        u_xlat84 = ((x_2147 * x_2149) + x_2151);
        let x_2154 : vec4<f32> = u_xlat7;
        let x_2155 : vec2<f32> = vec2<f32>(x_2154.x, x_2154.y);
        let x_2157 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2164 : vec3<f32> = txVec28;
        let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2164.xy, x_2164.z);
        u_xlat7.x = x_2166;
        let x_2169 : f32 = u_xlat8.w;
        let x_2171 : f32 = u_xlat7.x;
        let x_2173 : f32 = u_xlat84;
        u_xlat83 = ((x_2169 * x_2171) + x_2173);
      }
    }
  } else {
    let x_2177 : vec4<f32> = u_xlat3;
    let x_2178 : vec2<f32> = vec2<f32>(x_2177.x, x_2177.y);
    let x_2180 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
    let x_2187 : vec3<f32> = txVec29;
    let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
    u_xlat83 = x_2189;
  }
  let x_2191 : f32 = x_610.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2191) + 1.0f);
  let x_2195 : f32 = u_xlat83;
  let x_2197 : f32 = x_610.x_MainLightShadowParams.x;
  let x_2200 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2195 * x_2197) + x_2200);
  let x_2205 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2205);
  let x_2209 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2209 >= 1.0f);
  let x_2211 : bool = u_xlatb55;
  let x_2212 : bool = u_xlatb29;
  u_xlatb29 = (x_2211 | x_2212);
  let x_2214 : bool = u_xlatb29;
  if (x_2214) {
    x_2216 = 1.0f;
  } else {
    let x_2221 : f32 = u_xlat3.x;
    x_2216 = x_2221;
  }
  let x_2222 : f32 = x_2216;
  u_xlat3.x = x_2222;
  let x_2224 : vec3<f32> = vs_TEXCOORD7;
  let x_2226 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2228 : vec3<f32> = (x_2224 + -(x_2226));
  let x_2229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2232 : vec4<f32> = u_xlat7;
  let x_2234 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2232.x, x_2232.y, x_2232.z), vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2238 : f32 = u_xlat29;
  let x_2240 : f32 = x_610.x_MainLightShadowParams.z;
  let x_2243 : f32 = x_610.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2238 * x_2240) + x_2243);
  let x_2245 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2245, 0.0f, 1.0f);
  let x_2248 : f32 = u_xlat3.x;
  u_xlat83 = (-(x_2248) + 1.0f);
  let x_2251 : f32 = u_xlat55;
  let x_2252 : f32 = u_xlat83;
  let x_2255 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2251 * x_2252) + x_2255);
  let x_2265 : f32 = x_2263.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2265 == -1.0f));
  let x_2267 : bool = u_xlatb55;
  if (x_2267) {
    let x_2270 : vec3<f32> = vs_TEXCOORD7;
    let x_2273 : vec4<f32> = x_2263.x_MainLightWorldToLight[1i];
    let x_2275 : vec2<f32> = (vec2<f32>(x_2270.y, x_2270.y) * vec2<f32>(x_2273.x, x_2273.y));
    let x_2276 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2275.x, x_2275.y, x_2276.z, x_2276.w);
    let x_2279 : vec4<f32> = x_2263.x_MainLightWorldToLight[0i];
    let x_2281 : vec3<f32> = vs_TEXCOORD7;
    let x_2284 : vec4<f32> = u_xlat7;
    let x_2286 : vec2<f32> = ((vec2<f32>(x_2279.x, x_2279.y) * vec2<f32>(x_2281.x, x_2281.x)) + vec2<f32>(x_2284.x, x_2284.y));
    let x_2287 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2286.x, x_2286.y, x_2287.z, x_2287.w);
    let x_2290 : vec4<f32> = x_2263.x_MainLightWorldToLight[2i];
    let x_2292 : vec3<f32> = vs_TEXCOORD7;
    let x_2295 : vec4<f32> = u_xlat7;
    let x_2297 : vec2<f32> = ((vec2<f32>(x_2290.x, x_2290.y) * vec2<f32>(x_2292.z, x_2292.z)) + vec2<f32>(x_2295.x, x_2295.y));
    let x_2298 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2297.x, x_2297.y, x_2298.z, x_2298.w);
    let x_2300 : vec4<f32> = u_xlat7;
    let x_2303 : vec4<f32> = x_2263.x_MainLightWorldToLight[3i];
    let x_2305 : vec2<f32> = (vec2<f32>(x_2300.x, x_2300.y) + vec2<f32>(x_2303.x, x_2303.y));
    let x_2306 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2305.x, x_2305.y, x_2306.z, x_2306.w);
    let x_2308 : vec4<f32> = u_xlat7;
    let x_2311 : vec2<f32> = ((vec2<f32>(x_2308.x, x_2308.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2312 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2311.x, x_2311.y, x_2312.z, x_2312.w);
    let x_2319 : vec4<f32> = u_xlat7;
    let x_2322 : f32 = x_29.x_GlobalMipBias.x;
    let x_2323 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2319.x, x_2319.y), x_2322);
    u_xlat7 = x_2323;
    let x_2328 : f32 = x_2263.x_MainLightCookieTextureFormat;
    let x_2330 : f32 = x_2263.x_MainLightCookieTextureFormat;
    let x_2332 : f32 = x_2263.x_MainLightCookieTextureFormat;
    let x_2334 : f32 = x_2263.x_MainLightCookieTextureFormat;
    let x_2335 : vec4<f32> = vec4<f32>(x_2328, x_2330, x_2332, x_2334);
    let x_2342 : vec4<bool> = (vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2335.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2342.x, x_2342.y);
    let x_2345 : bool = u_xlatb8.y;
    if (x_2345) {
      let x_2350 : f32 = u_xlat7.w;
      x_2346 = x_2350;
    } else {
      let x_2353 : f32 = u_xlat7.x;
      x_2346 = x_2353;
    }
    let x_2354 : f32 = x_2346;
    u_xlat55 = x_2354;
    let x_2356 : bool = u_xlatb8.x;
    if (x_2356) {
      let x_2360 : vec4<f32> = u_xlat7;
      x_2357 = vec3<f32>(x_2360.x, x_2360.y, x_2360.z);
    } else {
      let x_2363 : f32 = u_xlat55;
      x_2357 = vec3<f32>(x_2363, x_2363, x_2363);
    }
    let x_2365 : vec3<f32> = x_2357;
    let x_2366 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2372 : vec4<f32> = u_xlat7;
  let x_2375 : vec4<f32> = x_29.x_MainLightColor;
  let x_2377 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) * vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2380 : vec4<f32> = u_xlat1;
  let x_2383 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(-(vec3<f32>(x_2380.x, x_2380.y, x_2380.z)), x_2383);
  let x_2385 : f32 = u_xlat55;
  let x_2386 : f32 = u_xlat55;
  u_xlat55 = (x_2385 + x_2386);
  let x_2388 : vec3<f32> = u_xlat2;
  let x_2389 : f32 = u_xlat55;
  let x_2393 : vec4<f32> = u_xlat1;
  let x_2396 : vec3<f32> = ((x_2388 * -(vec3<f32>(x_2389, x_2389, x_2389))) + -(vec3<f32>(x_2393.x, x_2393.y, x_2393.z)));
  let x_2397 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
  let x_2399 : vec3<f32> = u_xlat2;
  let x_2400 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(x_2399, vec3<f32>(x_2400.x, x_2400.y, x_2400.z));
  let x_2403 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2403, 0.0f, 1.0f);
  let x_2405 : f32 = u_xlat55;
  u_xlat55 = (-(x_2405) + 1.0f);
  let x_2408 : f32 = u_xlat55;
  let x_2409 : f32 = u_xlat55;
  u_xlat55 = (x_2408 * x_2409);
  let x_2411 : f32 = u_xlat55;
  let x_2412 : f32 = u_xlat55;
  u_xlat55 = (x_2411 * x_2412);
  let x_2415 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2415) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2422 : f32 = u_xlat0.x;
  let x_2423 : f32 = u_xlat83;
  u_xlat0.x = (x_2422 * x_2423);
  let x_2427 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2427 * 6.0f);
  let x_2439 : vec4<f32> = u_xlat8;
  let x_2442 : f32 = u_xlat0.x;
  let x_2443 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2439.x, x_2439.y, x_2439.z), x_2442);
  u_xlat8 = x_2443;
  let x_2445 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2445 + -1.0f);
  let x_2453 : f32 = x_2451.unity_SpecCube0_HDR.w;
  let x_2455 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2453 * x_2455) + 1.0f);
  let x_2460 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2460, 0.0f);
  let x_2464 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2464);
  let x_2468 : f32 = u_xlat0.x;
  let x_2470 : f32 = x_2451.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2468 * x_2470);
  let x_2474 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2474);
  let x_2478 : f32 = u_xlat0.x;
  let x_2480 : f32 = x_2451.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2478 * x_2480);
  let x_2483 : vec4<f32> = u_xlat8;
  let x_2485 : vec3<f32> = u_xlat0;
  let x_2487 : vec3<f32> = (vec3<f32>(x_2483.x, x_2483.y, x_2483.z) * vec3<f32>(x_2485.x, x_2485.x, x_2485.x));
  let x_2488 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
  let x_2490 : f32 = u_xlat52;
  let x_2492 : f32 = u_xlat52;
  let x_2496 : vec2<f32> = ((vec2<f32>(x_2490, x_2490) * vec2<f32>(x_2492, x_2492)) + vec2<f32>(-1.0f, 1.0f));
  let x_2497 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2496.x, x_2497.y, x_2496.y);
  let x_2500 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2500);
  let x_2502 : vec4<f32> = u_xlat5;
  let x_2505 : f32 = u_xlat81;
  let x_2507 : vec3<f32> = (-(vec3<f32>(x_2502.x, x_2502.y, x_2502.z)) + vec3<f32>(x_2505, x_2505, x_2505));
  let x_2508 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
  let x_2510 : f32 = u_xlat55;
  let x_2512 : vec4<f32> = u_xlat9;
  let x_2515 : vec4<f32> = u_xlat5;
  let x_2517 : vec3<f32> = ((vec3<f32>(x_2510, x_2510, x_2510) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z)) + vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2518 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
  let x_2520 : f32 = u_xlat52;
  let x_2522 : vec4<f32> = u_xlat9;
  let x_2524 : vec3<f32> = (vec3<f32>(x_2520, x_2520, x_2520) * vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
  let x_2525 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
  let x_2527 : vec4<f32> = u_xlat8;
  let x_2529 : vec4<f32> = u_xlat9;
  let x_2531 : vec3<f32> = (vec3<f32>(x_2527.x, x_2527.y, x_2527.z) * vec3<f32>(x_2529.x, x_2529.y, x_2529.z));
  let x_2532 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
  let x_2534 : vec4<f32> = u_xlat4;
  let x_2536 : vec4<f32> = u_xlat6;
  let x_2539 : vec4<f32> = u_xlat8;
  let x_2541 : vec3<f32> = ((vec3<f32>(x_2534.x, x_2534.y, x_2534.z) * vec3<f32>(x_2536.x, x_2536.y, x_2536.z)) + vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
  let x_2542 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
  let x_2545 : f32 = u_xlat3.x;
  let x_2547 : f32 = x_2451.unity_LightData.z;
  u_xlat52 = (x_2545 * x_2547);
  let x_2549 : vec3<f32> = u_xlat2;
  let x_2551 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(x_2549, vec3<f32>(x_2551.x, x_2551.y, x_2551.z));
  let x_2556 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2556, 0.0f, 1.0f);
  let x_2559 : f32 = u_xlat52;
  let x_2561 : f32 = u_xlat3.x;
  u_xlat52 = (x_2559 * x_2561);
  let x_2563 : f32 = u_xlat52;
  let x_2565 : vec4<f32> = u_xlat7;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2563, x_2563, x_2563) * vec3<f32>(x_2565.x, x_2565.y, x_2565.z));
  let x_2568 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2567.x, x_2568.y, x_2567.y, x_2567.z);
  let x_2570 : vec4<f32> = u_xlat1;
  let x_2573 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2575 : vec3<f32> = (vec3<f32>(x_2570.x, x_2570.y, x_2570.z) + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
  let x_2578 : vec4<f32> = u_xlat7;
  let x_2580 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2583 : f32 = u_xlat52;
  u_xlat52 = max(x_2583, 1.17549435e-38f);
  let x_2586 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2586);
  let x_2588 : f32 = u_xlat52;
  let x_2590 : vec4<f32> = u_xlat7;
  let x_2592 : vec3<f32> = (vec3<f32>(x_2588, x_2588, x_2588) * vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
  let x_2593 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
  let x_2595 : vec3<f32> = u_xlat2;
  let x_2596 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_2595, vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
  let x_2599 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2599, 0.0f, 1.0f);
  let x_2602 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2604 : vec4<f32> = u_xlat7;
  u_xlat83 = dot(vec3<f32>(x_2602.x, x_2602.y, x_2602.z), vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
  let x_2607 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2607, 0.0f, 1.0f);
  let x_2609 : f32 = u_xlat52;
  let x_2610 : f32 = u_xlat52;
  u_xlat52 = (x_2609 * x_2610);
  let x_2612 : f32 = u_xlat52;
  let x_2614 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2612 * x_2614) + 1.00001001358032226562f);
  let x_2618 : f32 = u_xlat83;
  let x_2619 : f32 = u_xlat83;
  u_xlat83 = (x_2618 * x_2619);
  let x_2621 : f32 = u_xlat52;
  let x_2622 : f32 = u_xlat52;
  u_xlat52 = (x_2621 * x_2622);
  let x_2624 : f32 = u_xlat83;
  u_xlat83 = max(x_2624, 0.10000000149011611938f);
  let x_2627 : f32 = u_xlat52;
  let x_2628 : f32 = u_xlat83;
  u_xlat52 = (x_2627 * x_2628);
  let x_2630 : f32 = u_xlat82;
  let x_2631 : f32 = u_xlat52;
  u_xlat52 = (x_2630 * x_2631);
  let x_2633 : f32 = u_xlat80;
  let x_2634 : f32 = u_xlat52;
  u_xlat52 = (x_2633 / x_2634);
  let x_2636 : vec4<f32> = u_xlat5;
  let x_2638 : f32 = u_xlat52;
  let x_2641 : vec4<f32> = u_xlat6;
  let x_2643 : vec3<f32> = ((vec3<f32>(x_2636.x, x_2636.y, x_2636.z) * vec3<f32>(x_2638, x_2638, x_2638)) + vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
  let x_2646 : vec4<f32> = u_xlat3;
  let x_2648 : vec4<f32> = u_xlat7;
  let x_2650 : vec3<f32> = (vec3<f32>(x_2646.x, x_2646.z, x_2646.w) * vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
  let x_2651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2650.x, x_2651.y, x_2650.y, x_2650.z);
  let x_2654 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2656 : f32 = x_2451.unity_LightData.y;
  u_xlat52 = min(x_2654, x_2656);
  let x_2659 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2659));
  let x_2662 : f32 = u_xlat29;
  let x_2664 : f32 = x_610.x_AdditionalShadowFadeParams.x;
  let x_2667 : f32 = x_610.x_AdditionalShadowFadeParams.y;
  u_xlat29 = ((x_2662 * x_2664) + x_2667);
  let x_2669 : f32 = u_xlat29;
  u_xlat29 = clamp(x_2669, 0.0f, 1.0f);
  let x_2673 : f32 = x_2263.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2675 : f32 = x_2263.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2677 : f32 = x_2263.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2679 : f32 = x_2263.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2680 : vec4<f32> = vec4<f32>(x_2673, x_2675, x_2677, x_2679);
  let x_2686 : vec4<bool> = (vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2680.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2686.x, x_2686.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2698 : u32 = u_xlatu_loop_1;
    let x_2699 : u32 = u_xlatu52;
    if ((x_2698 < x_2699)) {
    } else {
      break;
    }
    let x_2702 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2702 >> 2u);
    let x_2705 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2705 & 3u));
    let x_2708 : u32 = u_xlatu84;
    let x_2711 : vec4<f32> = x_2451.unity_LightIndices[bitcast<i32>(x_2708)];
    let x_2721 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2726 : vec4<u32> = indexable[x_2721];
    u_xlat84 = dot(x_2711, bitcast<vec4<f32>>(x_2726));
    let x_2730 : f32 = u_xlat84;
    u_xlati84 = i32(x_2730);
    let x_2732 : vec3<f32> = vs_TEXCOORD7;
    let x_2743 : i32 = u_xlati84;
    let x_2745 : vec4<f32> = x_2742.x_AdditionalLightsPosition[x_2743];
    let x_2748 : i32 = u_xlati84;
    let x_2750 : vec4<f32> = x_2742.x_AdditionalLightsPosition[x_2748];
    let x_2752 : vec3<f32> = ((-(x_2732) * vec3<f32>(x_2745.w, x_2745.w, x_2745.w)) + vec3<f32>(x_2750.x, x_2750.y, x_2750.z));
    let x_2753 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
    let x_2755 : vec4<f32> = u_xlat9;
    let x_2757 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_2755.x, x_2755.y, x_2755.z), vec3<f32>(x_2757.x, x_2757.y, x_2757.z));
    let x_2762 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2762, 0.00006103515625f);
    let x_2767 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_2767);
    let x_2769 : f32 = u_xlat85;
    let x_2771 : vec4<f32> = u_xlat9;
    let x_2773 : vec3<f32> = (vec3<f32>(x_2769, x_2769, x_2769) * vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
    let x_2774 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
    let x_2778 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_2778);
    let x_2781 : f32 = u_xlat59.x;
    let x_2782 : i32 = u_xlati84;
    let x_2784 : f32 = x_2742.x_AdditionalLightsAttenuation[x_2782].x;
    u_xlat59.x = (x_2781 * x_2784);
    let x_2788 : f32 = u_xlat59.x;
    let x_2791 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_2788) * x_2791) + 1.0f);
    let x_2796 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2796, 0.0f);
    let x_2800 : f32 = u_xlat59.x;
    let x_2802 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2800 * x_2802);
    let x_2806 : f32 = u_xlat59.x;
    let x_2807 : f32 = u_xlat86;
    u_xlat59.x = (x_2806 * x_2807);
    let x_2810 : i32 = u_xlati84;
    let x_2812 : vec4<f32> = x_2742.x_AdditionalLightsSpotDir[x_2810];
    let x_2814 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2812.x, x_2812.y, x_2812.z), vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
    let x_2817 : f32 = u_xlat86;
    let x_2818 : i32 = u_xlati84;
    let x_2820 : f32 = x_2742.x_AdditionalLightsAttenuation[x_2818].z;
    let x_2822 : i32 = u_xlati84;
    let x_2824 : f32 = x_2742.x_AdditionalLightsAttenuation[x_2822].w;
    u_xlat86 = ((x_2817 * x_2820) + x_2824);
    let x_2826 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2826, 0.0f, 1.0f);
    let x_2828 : f32 = u_xlat86;
    let x_2829 : f32 = u_xlat86;
    u_xlat86 = (x_2828 * x_2829);
    let x_2832 : f32 = u_xlat59.x;
    let x_2833 : f32 = u_xlat86;
    u_xlat59.x = (x_2832 * x_2833);
    let x_2837 : i32 = u_xlati84;
    let x_2839 : f32 = x_610.x_AdditionalShadowParams[x_2837].w;
    u_xlati86 = i32(x_2839);
    let x_2842 : i32 = u_xlati86;
    u_xlatb87 = (x_2842 >= 0i);
    let x_2844 : bool = u_xlatb87;
    if (x_2844) {
      let x_2848 : i32 = u_xlati84;
      let x_2850 : f32 = x_610.x_AdditionalShadowParams[x_2848].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2850, x_2850, x_2850, x_2850))));
      let x_2854 : bool = u_xlatb87;
      if (x_2854) {
        let x_2858 : vec4<f32> = u_xlat10;
        let x_2861 : vec4<f32> = u_xlat10;
        let x_2864 : vec4<bool> = (abs(vec4<f32>(x_2858.z, x_2858.z, x_2858.y, x_2858.z)) >= abs(vec4<f32>(x_2861.x, x_2861.y, x_2861.x, x_2861.x)));
        let x_2866 : vec3<bool> = vec3<bool>(x_2864.x, x_2864.y, x_2864.z);
        let x_2867 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2866.x, x_2866.y, x_2866.z, x_2867.w);
        let x_2870 : bool = u_xlatb11.y;
        let x_2872 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2870 & x_2872);
        let x_2874 : vec4<f32> = u_xlat10;
        let x_2877 : vec4<bool> = (-(vec4<f32>(x_2874.z, x_2874.y, x_2874.z, x_2874.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2878 : vec3<bool> = vec3<bool>(x_2877.x, x_2877.y, x_2877.w);
        let x_2879 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2878.x, x_2878.y, x_2879.z, x_2878.z);
        let x_2882 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2882);
        let x_2887 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2887);
        let x_2892 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2892);
        let x_2895 : bool = u_xlatb11.z;
        if (x_2895) {
          let x_2900 : f32 = u_xlat11.y;
          x_2896 = x_2900;
        } else {
          let x_2902 : f32 = u_xlat88;
          x_2896 = x_2902;
        }
        let x_2903 : f32 = x_2896;
        u_xlat88 = x_2903;
        let x_2905 : bool = u_xlatb87;
        if (x_2905) {
          let x_2910 : f32 = u_xlat11.x;
          x_2906 = x_2910;
        } else {
          let x_2912 : f32 = u_xlat88;
          x_2906 = x_2912;
        }
        let x_2913 : f32 = x_2906;
        u_xlat87 = x_2913;
        let x_2914 : i32 = u_xlati84;
        let x_2916 : f32 = x_610.x_AdditionalShadowParams[x_2914].w;
        u_xlat88 = trunc(x_2916);
        let x_2918 : f32 = u_xlat87;
        let x_2919 : f32 = u_xlat88;
        u_xlat87 = (x_2918 + x_2919);
        let x_2921 : f32 = u_xlat87;
        u_xlati86 = i32(x_2921);
      }
      let x_2923 : i32 = u_xlati86;
      u_xlati86 = (x_2923 << bitcast<u32>(2i));
      let x_2925 : vec3<f32> = vs_TEXCOORD7;
      let x_2927 : i32 = u_xlati86;
      let x_2930 : i32 = u_xlati86;
      let x_2934 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_2927 + 1i) / 4i)][((x_2930 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2925.y, x_2925.y, x_2925.y, x_2925.y) * x_2934);
      let x_2936 : i32 = u_xlati86;
      let x_2938 : i32 = u_xlati86;
      let x_2941 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[(x_2936 / 4i)][(x_2938 % 4i)];
      let x_2942 : vec3<f32> = vs_TEXCOORD7;
      let x_2945 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2941 * vec4<f32>(x_2942.x, x_2942.x, x_2942.x, x_2942.x)) + x_2945);
      let x_2947 : i32 = u_xlati86;
      let x_2950 : i32 = u_xlati86;
      let x_2954 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_2947 + 2i) / 4i)][((x_2950 + 2i) % 4i)];
      let x_2955 : vec3<f32> = vs_TEXCOORD7;
      let x_2958 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2954 * vec4<f32>(x_2955.z, x_2955.z, x_2955.z, x_2955.z)) + x_2958);
      let x_2960 : vec4<f32> = u_xlat11;
      let x_2961 : i32 = u_xlati86;
      let x_2964 : i32 = u_xlati86;
      let x_2968 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_2961 + 3i) / 4i)][((x_2964 + 3i) % 4i)];
      u_xlat11 = (x_2960 + x_2968);
      let x_2970 : vec4<f32> = u_xlat11;
      let x_2972 : vec4<f32> = u_xlat11;
      let x_2974 : vec3<f32> = (vec3<f32>(x_2970.x, x_2970.y, x_2970.z) / vec3<f32>(x_2972.w, x_2972.w, x_2972.w));
      let x_2975 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2974.x, x_2974.y, x_2974.z, x_2975.w);
      let x_2978 : i32 = u_xlati84;
      let x_2980 : f32 = x_610.x_AdditionalShadowParams[x_2978].y;
      u_xlatb86 = (0.0f < x_2980);
      let x_2982 : bool = u_xlatb86;
      if (x_2982) {
        let x_2985 : i32 = u_xlati84;
        let x_2987 : f32 = x_610.x_AdditionalShadowParams[x_2985].y;
        u_xlatb86 = (1.0f == x_2987);
        let x_2989 : bool = u_xlatb86;
        if (x_2989) {
          let x_2992 : vec4<f32> = u_xlat11;
          let x_2995 : vec4<f32> = x_610.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2992.x, x_2992.y, x_2992.x, x_2992.y) + x_2995);
          let x_2998 : vec4<f32> = u_xlat12;
          let x_2999 : vec2<f32> = vec2<f32>(x_2998.x, x_2998.y);
          let x_3001 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2999.x, x_2999.y, x_3001);
          let x_3009 : vec3<f32> = txVec30;
          let x_3011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3009.xy, x_3009.z);
          u_xlat13.x = x_3011;
          let x_3014 : vec4<f32> = u_xlat12;
          let x_3015 : vec2<f32> = vec2<f32>(x_3014.z, x_3014.w);
          let x_3017 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
          let x_3024 : vec3<f32> = txVec31;
          let x_3026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
          u_xlat13.y = x_3026;
          let x_3028 : vec4<f32> = u_xlat11;
          let x_3031 : vec4<f32> = x_610.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3028.x, x_3028.y, x_3028.x, x_3028.y) + x_3031);
          let x_3034 : vec4<f32> = u_xlat12;
          let x_3035 : vec2<f32> = vec2<f32>(x_3034.x, x_3034.y);
          let x_3037 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3035.x, x_3035.y, x_3037);
          let x_3044 : vec3<f32> = txVec32;
          let x_3046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3044.xy, x_3044.z);
          u_xlat13.z = x_3046;
          let x_3049 : vec4<f32> = u_xlat12;
          let x_3050 : vec2<f32> = vec2<f32>(x_3049.z, x_3049.w);
          let x_3052 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
          let x_3059 : vec3<f32> = txVec33;
          let x_3061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
          u_xlat13.w = x_3061;
          let x_3063 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3063, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3066 : i32 = u_xlati84;
          let x_3068 : f32 = x_610.x_AdditionalShadowParams[x_3066].y;
          u_xlatb87 = (2.0f == x_3068);
          let x_3070 : bool = u_xlatb87;
          if (x_3070) {
            let x_3073 : vec4<f32> = u_xlat11;
            let x_3076 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3079 : vec2<f32> = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.z, x_3076.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3080 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3079.x, x_3079.y, x_3080.z, x_3080.w);
            let x_3082 : vec4<f32> = u_xlat12;
            let x_3084 : vec2<f32> = floor(vec2<f32>(x_3082.x, x_3082.y));
            let x_3085 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3084.x, x_3084.y, x_3085.z, x_3085.w);
            let x_3088 : vec4<f32> = u_xlat11;
            let x_3091 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3094 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3088.x, x_3088.y) * vec2<f32>(x_3091.z, x_3091.w)) + -(vec2<f32>(x_3094.x, x_3094.y)));
            let x_3098 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3098.x, x_3098.x, x_3098.y, x_3098.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3101 : vec4<f32> = u_xlat13;
            let x_3103 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3101.x, x_3101.x, x_3101.z, x_3101.z) * vec4<f32>(x_3103.x, x_3103.x, x_3103.z, x_3103.z));
            let x_3106 : vec4<f32> = u_xlat14;
            let x_3108 : vec2<f32> = (vec2<f32>(x_3106.y, x_3106.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3109 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3108.x, x_3109.y, x_3108.y, x_3109.w);
            let x_3111 : vec4<f32> = u_xlat14;
            let x_3114 : vec2<f32> = u_xlat64;
            let x_3116 : vec2<f32> = ((vec2<f32>(x_3111.x, x_3111.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3114));
            let x_3117 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3116.x, x_3116.y, x_3117.z, x_3117.w);
            let x_3120 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3120) + vec2<f32>(1.0f, 1.0f));
            let x_3123 : vec2<f32> = u_xlat64;
            let x_3124 : vec2<f32> = min(x_3123, vec2<f32>(0.0f, 0.0f));
            let x_3125 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3124.x, x_3124.y, x_3125.z, x_3125.w);
            let x_3127 : vec4<f32> = u_xlat15;
            let x_3130 : vec4<f32> = u_xlat15;
            let x_3133 : vec2<f32> = u_xlat66;
            let x_3134 : vec2<f32> = ((-(vec2<f32>(x_3127.x, x_3127.y)) * vec2<f32>(x_3130.x, x_3130.y)) + x_3133);
            let x_3135 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3134.x, x_3134.y, x_3135.z, x_3135.w);
            let x_3137 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3137, vec2<f32>(0.0f, 0.0f));
            let x_3139 : vec2<f32> = u_xlat64;
            let x_3141 : vec2<f32> = u_xlat64;
            let x_3143 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3139) * x_3141) + vec2<f32>(x_3143.y, x_3143.w));
            let x_3146 : vec4<f32> = u_xlat15;
            let x_3148 : vec2<f32> = (vec2<f32>(x_3146.x, x_3146.y) + vec2<f32>(1.0f, 1.0f));
            let x_3149 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3148.x, x_3148.y, x_3149.z, x_3149.w);
            let x_3151 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3151 + vec2<f32>(1.0f, 1.0f));
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3155 : vec2<f32> = (vec2<f32>(x_3153.x, x_3153.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3156 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3155.x, x_3155.y, x_3156.z, x_3156.w);
            let x_3158 : vec2<f32> = u_xlat66;
            let x_3159 : vec2<f32> = (x_3158 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3160 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3159.x, x_3159.y, x_3160.z, x_3160.w);
            let x_3162 : vec4<f32> = u_xlat15;
            let x_3164 : vec2<f32> = (vec2<f32>(x_3162.x, x_3162.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3165 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3164.x, x_3164.y, x_3165.z, x_3165.w);
            let x_3167 : vec2<f32> = u_xlat64;
            let x_3168 : vec2<f32> = (x_3167 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3169 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3168.x, x_3168.y, x_3169.z, x_3169.w);
            let x_3171 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3171.y, x_3171.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3175 : f32 = u_xlat15.x;
            u_xlat16.z = x_3175;
            let x_3178 : f32 = u_xlat64.x;
            u_xlat16.w = x_3178;
            let x_3181 : f32 = u_xlat17.x;
            u_xlat14.z = x_3181;
            let x_3184 : f32 = u_xlat13.x;
            u_xlat14.w = x_3184;
            let x_3186 : vec4<f32> = u_xlat14;
            let x_3188 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3186.z, x_3186.w, x_3186.x, x_3186.z) + vec4<f32>(x_3188.z, x_3188.w, x_3188.x, x_3188.z));
            let x_3192 : f32 = u_xlat16.y;
            u_xlat15.z = x_3192;
            let x_3195 : f32 = u_xlat64.y;
            u_xlat15.w = x_3195;
            let x_3198 : f32 = u_xlat14.y;
            u_xlat17.z = x_3198;
            let x_3201 : f32 = u_xlat13.z;
            u_xlat17.w = x_3201;
            let x_3203 : vec4<f32> = u_xlat15;
            let x_3205 : vec4<f32> = u_xlat17;
            let x_3207 : vec3<f32> = (vec3<f32>(x_3203.z, x_3203.y, x_3203.w) + vec3<f32>(x_3205.z, x_3205.y, x_3205.w));
            let x_3208 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3207.x, x_3207.y, x_3207.z, x_3208.w);
            let x_3210 : vec4<f32> = u_xlat14;
            let x_3212 : vec4<f32> = u_xlat18;
            let x_3214 : vec3<f32> = (vec3<f32>(x_3210.x, x_3210.z, x_3210.w) / vec3<f32>(x_3212.z, x_3212.w, x_3212.y));
            let x_3215 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3214.x, x_3214.y, x_3214.z, x_3215.w);
            let x_3217 : vec4<f32> = u_xlat14;
            let x_3219 : vec3<f32> = (vec3<f32>(x_3217.x, x_3217.y, x_3217.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3220 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3219.x, x_3219.y, x_3219.z, x_3220.w);
            let x_3222 : vec4<f32> = u_xlat17;
            let x_3224 : vec4<f32> = u_xlat13;
            let x_3226 : vec3<f32> = (vec3<f32>(x_3222.z, x_3222.y, x_3222.w) / vec3<f32>(x_3224.x, x_3224.y, x_3224.z));
            let x_3227 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3226.x, x_3226.y, x_3226.z, x_3227.w);
            let x_3229 : vec4<f32> = u_xlat15;
            let x_3231 : vec3<f32> = (vec3<f32>(x_3229.x, x_3229.y, x_3229.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3232 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3232.w);
            let x_3234 : vec4<f32> = u_xlat14;
            let x_3237 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3239 : vec3<f32> = (vec3<f32>(x_3234.y, x_3234.x, x_3234.z) * vec3<f32>(x_3237.x, x_3237.x, x_3237.x));
            let x_3240 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3239.x, x_3239.y, x_3239.z, x_3240.w);
            let x_3242 : vec4<f32> = u_xlat15;
            let x_3245 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3247 : vec3<f32> = (vec3<f32>(x_3242.x, x_3242.y, x_3242.z) * vec3<f32>(x_3245.y, x_3245.y, x_3245.y));
            let x_3248 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3247.x, x_3247.y, x_3247.z, x_3248.w);
            let x_3251 : f32 = u_xlat15.x;
            u_xlat14.w = x_3251;
            let x_3253 : vec4<f32> = u_xlat12;
            let x_3256 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3259 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3253.x, x_3253.y, x_3253.x, x_3253.y) * vec4<f32>(x_3256.x, x_3256.y, x_3256.x, x_3256.y)) + vec4<f32>(x_3259.y, x_3259.w, x_3259.x, x_3259.w));
            let x_3262 : vec4<f32> = u_xlat12;
            let x_3265 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3268 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3262.x, x_3262.y) * vec2<f32>(x_3265.x, x_3265.y)) + vec2<f32>(x_3268.z, x_3268.w));
            let x_3272 : f32 = u_xlat14.y;
            u_xlat15.w = x_3272;
            let x_3274 : vec4<f32> = u_xlat15;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.y, x_3274.z);
            let x_3276 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3276.x, x_3275.x, x_3276.z, x_3275.y);
            let x_3278 : vec4<f32> = u_xlat12;
            let x_3281 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3284 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3278.x, x_3278.y, x_3278.x, x_3278.y) * vec4<f32>(x_3281.x, x_3281.y, x_3281.x, x_3281.y)) + vec4<f32>(x_3284.x, x_3284.y, x_3284.z, x_3284.y));
            let x_3287 : vec4<f32> = u_xlat12;
            let x_3290 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3293 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3287.x, x_3287.y, x_3287.x, x_3287.y) * vec4<f32>(x_3290.x, x_3290.y, x_3290.x, x_3290.y)) + vec4<f32>(x_3293.w, x_3293.y, x_3293.w, x_3293.z));
            let x_3296 : vec4<f32> = u_xlat12;
            let x_3299 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3302 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3296.x, x_3296.y, x_3296.x, x_3296.y) * vec4<f32>(x_3299.x, x_3299.y, x_3299.x, x_3299.y)) + vec4<f32>(x_3302.x, x_3302.w, x_3302.z, x_3302.w));
            let x_3305 : vec4<f32> = u_xlat13;
            let x_3307 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3305.x, x_3305.x, x_3305.x, x_3305.y) * vec4<f32>(x_3307.z, x_3307.w, x_3307.y, x_3307.z));
            let x_3310 : vec4<f32> = u_xlat13;
            let x_3312 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3310.y, x_3310.y, x_3310.z, x_3310.z) * x_3312);
            let x_3315 : f32 = u_xlat13.z;
            let x_3317 : f32 = u_xlat18.y;
            u_xlat87 = (x_3315 * x_3317);
            let x_3320 : vec4<f32> = u_xlat16;
            let x_3321 : vec2<f32> = vec2<f32>(x_3320.x, x_3320.y);
            let x_3323 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3321.x, x_3321.y, x_3323);
            let x_3330 : vec3<f32> = txVec34;
            let x_3332 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3330.xy, x_3330.z);
            u_xlat88 = x_3332;
            let x_3334 : vec4<f32> = u_xlat16;
            let x_3335 : vec2<f32> = vec2<f32>(x_3334.z, x_3334.w);
            let x_3337 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3335.x, x_3335.y, x_3337);
            let x_3345 : vec3<f32> = txVec35;
            let x_3347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3345.xy, x_3345.z);
            u_xlat89 = x_3347;
            let x_3348 : f32 = u_xlat89;
            let x_3350 : f32 = u_xlat19.y;
            u_xlat89 = (x_3348 * x_3350);
            let x_3353 : f32 = u_xlat19.x;
            let x_3354 : f32 = u_xlat88;
            let x_3356 : f32 = u_xlat89;
            u_xlat88 = ((x_3353 * x_3354) + x_3356);
            let x_3359 : vec2<f32> = u_xlat64;
            let x_3361 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec36;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat89 = x_3370;
            let x_3372 : f32 = u_xlat19.z;
            let x_3373 : f32 = u_xlat89;
            let x_3375 : f32 = u_xlat88;
            u_xlat88 = ((x_3372 * x_3373) + x_3375);
            let x_3378 : vec4<f32> = u_xlat15;
            let x_3379 : vec2<f32> = vec2<f32>(x_3378.x, x_3378.y);
            let x_3381 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec37;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat89 = x_3390;
            let x_3392 : f32 = u_xlat19.w;
            let x_3393 : f32 = u_xlat89;
            let x_3395 : f32 = u_xlat88;
            u_xlat88 = ((x_3392 * x_3393) + x_3395);
            let x_3398 : vec4<f32> = u_xlat17;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec38;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat89 = x_3410;
            let x_3412 : f32 = u_xlat20.x;
            let x_3413 : f32 = u_xlat89;
            let x_3415 : f32 = u_xlat88;
            u_xlat88 = ((x_3412 * x_3413) + x_3415);
            let x_3418 : vec4<f32> = u_xlat17;
            let x_3419 : vec2<f32> = vec2<f32>(x_3418.z, x_3418.w);
            let x_3421 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3419.x, x_3419.y, x_3421);
            let x_3428 : vec3<f32> = txVec39;
            let x_3430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3428.xy, x_3428.z);
            u_xlat89 = x_3430;
            let x_3432 : f32 = u_xlat20.y;
            let x_3433 : f32 = u_xlat89;
            let x_3435 : f32 = u_xlat88;
            u_xlat88 = ((x_3432 * x_3433) + x_3435);
            let x_3438 : vec4<f32> = u_xlat15;
            let x_3439 : vec2<f32> = vec2<f32>(x_3438.z, x_3438.w);
            let x_3441 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3439.x, x_3439.y, x_3441);
            let x_3448 : vec3<f32> = txVec40;
            let x_3450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3448.xy, x_3448.z);
            u_xlat89 = x_3450;
            let x_3452 : f32 = u_xlat20.z;
            let x_3453 : f32 = u_xlat89;
            let x_3455 : f32 = u_xlat88;
            u_xlat88 = ((x_3452 * x_3453) + x_3455);
            let x_3458 : vec4<f32> = u_xlat14;
            let x_3459 : vec2<f32> = vec2<f32>(x_3458.x, x_3458.y);
            let x_3461 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3459.x, x_3459.y, x_3461);
            let x_3468 : vec3<f32> = txVec41;
            let x_3470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3468.xy, x_3468.z);
            u_xlat89 = x_3470;
            let x_3472 : f32 = u_xlat20.w;
            let x_3473 : f32 = u_xlat89;
            let x_3475 : f32 = u_xlat88;
            u_xlat88 = ((x_3472 * x_3473) + x_3475);
            let x_3478 : vec4<f32> = u_xlat14;
            let x_3479 : vec2<f32> = vec2<f32>(x_3478.z, x_3478.w);
            let x_3481 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3479.x, x_3479.y, x_3481);
            let x_3488 : vec3<f32> = txVec42;
            let x_3490 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3488.xy, x_3488.z);
            u_xlat89 = x_3490;
            let x_3491 : f32 = u_xlat87;
            let x_3492 : f32 = u_xlat89;
            let x_3494 : f32 = u_xlat88;
            u_xlat86 = ((x_3491 * x_3492) + x_3494);
          } else {
            let x_3497 : vec4<f32> = u_xlat11;
            let x_3500 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3503 : vec2<f32> = ((vec2<f32>(x_3497.x, x_3497.y) * vec2<f32>(x_3500.z, x_3500.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3504 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3503.x, x_3503.y, x_3504.z, x_3504.w);
            let x_3506 : vec4<f32> = u_xlat12;
            let x_3508 : vec2<f32> = floor(vec2<f32>(x_3506.x, x_3506.y));
            let x_3509 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3508.x, x_3508.y, x_3509.z, x_3509.w);
            let x_3511 : vec4<f32> = u_xlat11;
            let x_3514 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3517 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3511.x, x_3511.y) * vec2<f32>(x_3514.z, x_3514.w)) + -(vec2<f32>(x_3517.x, x_3517.y)));
            let x_3521 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3521.x, x_3521.x, x_3521.y, x_3521.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3524 : vec4<f32> = u_xlat13;
            let x_3526 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3524.x, x_3524.x, x_3524.z, x_3524.z) * vec4<f32>(x_3526.x, x_3526.x, x_3526.z, x_3526.z));
            let x_3529 : vec4<f32> = u_xlat14;
            let x_3531 : vec2<f32> = (vec2<f32>(x_3529.y, x_3529.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3532 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3532.x, x_3531.x, x_3532.z, x_3531.y);
            let x_3534 : vec4<f32> = u_xlat14;
            let x_3537 : vec2<f32> = u_xlat64;
            let x_3539 : vec2<f32> = ((vec2<f32>(x_3534.x, x_3534.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3537));
            let x_3540 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3539.x, x_3540.y, x_3539.y, x_3540.w);
            let x_3542 : vec2<f32> = u_xlat64;
            let x_3544 : vec2<f32> = (-(x_3542) + vec2<f32>(1.0f, 1.0f));
            let x_3545 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3544.x, x_3544.y, x_3545.z, x_3545.w);
            let x_3547 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3547, vec2<f32>(0.0f, 0.0f));
            let x_3549 : vec2<f32> = u_xlat66;
            let x_3551 : vec2<f32> = u_xlat66;
            let x_3553 : vec4<f32> = u_xlat14;
            let x_3555 : vec2<f32> = ((-(x_3549) * x_3551) + vec2<f32>(x_3553.x, x_3553.y));
            let x_3556 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3555.x, x_3555.y, x_3556.z, x_3556.w);
            let x_3558 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3558, vec2<f32>(0.0f, 0.0f));
            let x_3561 : vec2<f32> = u_xlat66;
            let x_3563 : vec2<f32> = u_xlat66;
            let x_3565 : vec4<f32> = u_xlat13;
            let x_3567 : vec2<f32> = ((-(x_3561) * x_3563) + vec2<f32>(x_3565.y, x_3565.w));
            let x_3568 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3567.x, x_3568.y, x_3567.y);
            let x_3570 : vec4<f32> = u_xlat14;
            let x_3572 : vec2<f32> = (vec2<f32>(x_3570.x, x_3570.y) + vec2<f32>(2.0f, 2.0f));
            let x_3573 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3572.x, x_3572.y, x_3573.z, x_3573.w);
            let x_3575 : vec3<f32> = u_xlat39;
            let x_3577 : vec2<f32> = (vec2<f32>(x_3575.x, x_3575.z) + vec2<f32>(2.0f, 2.0f));
            let x_3578 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3578.x, x_3577.x, x_3578.z, x_3577.y);
            let x_3581 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3581 * 0.08163200318813323975f);
            let x_3584 : vec4<f32> = u_xlat13;
            let x_3586 : vec3<f32> = (vec3<f32>(x_3584.z, x_3584.x, x_3584.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3587 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3586.x, x_3586.y, x_3586.z, x_3587.w);
            let x_3589 : vec4<f32> = u_xlat14;
            let x_3591 : vec2<f32> = (vec2<f32>(x_3589.x, x_3589.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3592 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3591.x, x_3591.y, x_3592.z, x_3592.w);
            let x_3595 : f32 = u_xlat17.y;
            u_xlat16.x = x_3595;
            let x_3597 : vec2<f32> = u_xlat64;
            let x_3600 : vec2<f32> = ((vec2<f32>(x_3597.x, x_3597.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3601 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3601.x, x_3600.x, x_3601.z, x_3600.y);
            let x_3603 : vec2<f32> = u_xlat64;
            let x_3606 : vec2<f32> = ((vec2<f32>(x_3603.x, x_3603.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3607 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3606.x, x_3607.y, x_3606.y, x_3607.w);
            let x_3610 : f32 = u_xlat13.x;
            u_xlat14.y = x_3610;
            let x_3613 : f32 = u_xlat15.y;
            u_xlat14.w = x_3613;
            let x_3615 : vec4<f32> = u_xlat14;
            let x_3616 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3615 + x_3616);
            let x_3618 : vec2<f32> = u_xlat64;
            let x_3621 : vec2<f32> = ((vec2<f32>(x_3618.y, x_3618.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3622 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3622.x, x_3621.x, x_3622.z, x_3621.y);
            let x_3624 : vec2<f32> = u_xlat64;
            let x_3627 : vec2<f32> = ((vec2<f32>(x_3624.y, x_3624.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3628 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3627.x, x_3628.y, x_3627.y, x_3628.w);
            let x_3631 : f32 = u_xlat13.y;
            u_xlat15.y = x_3631;
            let x_3633 : vec4<f32> = u_xlat15;
            let x_3634 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3633 + x_3634);
            let x_3636 : vec4<f32> = u_xlat14;
            let x_3637 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3636 / x_3637);
            let x_3639 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3639 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3641 : vec4<f32> = u_xlat15;
            let x_3642 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3641 / x_3642);
            let x_3644 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3644 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3646 : vec4<f32> = u_xlat14;
            let x_3649 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3646.w, x_3646.x, x_3646.y, x_3646.z) * vec4<f32>(x_3649.x, x_3649.x, x_3649.x, x_3649.x));
            let x_3652 : vec4<f32> = u_xlat15;
            let x_3655 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3652.x, x_3652.w, x_3652.y, x_3652.z) * vec4<f32>(x_3655.y, x_3655.y, x_3655.y, x_3655.y));
            let x_3658 : vec4<f32> = u_xlat14;
            let x_3659 : vec3<f32> = vec3<f32>(x_3658.y, x_3658.z, x_3658.w);
            let x_3660 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3659.x, x_3660.y, x_3659.y, x_3659.z);
            let x_3663 : f32 = u_xlat15.x;
            u_xlat17.y = x_3663;
            let x_3665 : vec4<f32> = u_xlat12;
            let x_3668 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3671 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3665.x, x_3665.y, x_3665.x, x_3665.y) * vec4<f32>(x_3668.x, x_3668.y, x_3668.x, x_3668.y)) + vec4<f32>(x_3671.x, x_3671.y, x_3671.z, x_3671.y));
            let x_3674 : vec4<f32> = u_xlat12;
            let x_3677 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3680 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3674.x, x_3674.y) * vec2<f32>(x_3677.x, x_3677.y)) + vec2<f32>(x_3680.w, x_3680.y));
            let x_3684 : f32 = u_xlat17.y;
            u_xlat14.y = x_3684;
            let x_3687 : f32 = u_xlat15.z;
            u_xlat17.y = x_3687;
            let x_3689 : vec4<f32> = u_xlat12;
            let x_3692 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3695 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3689.x, x_3689.y, x_3689.x, x_3689.y) * vec4<f32>(x_3692.x, x_3692.y, x_3692.x, x_3692.y)) + vec4<f32>(x_3695.x, x_3695.y, x_3695.z, x_3695.y));
            let x_3698 : vec4<f32> = u_xlat12;
            let x_3701 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3704 : vec4<f32> = u_xlat17;
            let x_3706 : vec2<f32> = ((vec2<f32>(x_3698.x, x_3698.y) * vec2<f32>(x_3701.x, x_3701.y)) + vec2<f32>(x_3704.w, x_3704.y));
            let x_3707 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3706.x, x_3706.y, x_3707.z, x_3707.w);
            let x_3710 : f32 = u_xlat17.y;
            u_xlat14.z = x_3710;
            let x_3713 : vec4<f32> = u_xlat12;
            let x_3716 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3719 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3713.x, x_3713.y, x_3713.x, x_3713.y) * vec4<f32>(x_3716.x, x_3716.y, x_3716.x, x_3716.y)) + vec4<f32>(x_3719.x, x_3719.y, x_3719.x, x_3719.z));
            let x_3723 : f32 = u_xlat15.w;
            u_xlat17.y = x_3723;
            let x_3726 : vec4<f32> = u_xlat12;
            let x_3729 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3732 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3726.x, x_3726.y, x_3726.x, x_3726.y) * vec4<f32>(x_3729.x, x_3729.y, x_3729.x, x_3729.y)) + vec4<f32>(x_3732.x, x_3732.y, x_3732.z, x_3732.y));
            let x_3736 : vec4<f32> = u_xlat12;
            let x_3739 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3742 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3736.x, x_3736.y) * vec2<f32>(x_3739.x, x_3739.y)) + vec2<f32>(x_3742.w, x_3742.y));
            let x_3746 : f32 = u_xlat17.y;
            u_xlat14.w = x_3746;
            let x_3749 : vec4<f32> = u_xlat12;
            let x_3752 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3755 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3749.x, x_3749.y) * vec2<f32>(x_3752.x, x_3752.y)) + vec2<f32>(x_3755.x, x_3755.w));
            let x_3758 : vec4<f32> = u_xlat17;
            let x_3759 : vec3<f32> = vec3<f32>(x_3758.x, x_3758.z, x_3758.w);
            let x_3760 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3759.x, x_3760.y, x_3759.y, x_3759.z);
            let x_3762 : vec4<f32> = u_xlat12;
            let x_3765 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3768 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3762.x, x_3762.y, x_3762.x, x_3762.y) * vec4<f32>(x_3765.x, x_3765.y, x_3765.x, x_3765.y)) + vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3768.y));
            let x_3771 : vec4<f32> = u_xlat12;
            let x_3774 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3777 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3771.x, x_3771.y) * vec2<f32>(x_3774.x, x_3774.y)) + vec2<f32>(x_3777.w, x_3777.y));
            let x_3781 : f32 = u_xlat14.x;
            u_xlat15.x = x_3781;
            let x_3783 : vec4<f32> = u_xlat12;
            let x_3786 : vec4<f32> = x_610.x_AdditionalShadowmapSize;
            let x_3789 : vec4<f32> = u_xlat15;
            let x_3791 : vec2<f32> = ((vec2<f32>(x_3783.x, x_3783.y) * vec2<f32>(x_3786.x, x_3786.y)) + vec2<f32>(x_3789.x, x_3789.y));
            let x_3792 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3791.x, x_3791.y, x_3792.z, x_3792.w);
            let x_3795 : vec4<f32> = u_xlat13;
            let x_3797 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3795.x, x_3795.x, x_3795.x, x_3795.x) * x_3797);
            let x_3800 : vec4<f32> = u_xlat13;
            let x_3802 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3800.y, x_3800.y, x_3800.y, x_3800.y) * x_3802);
            let x_3805 : vec4<f32> = u_xlat13;
            let x_3807 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3805.z, x_3805.z, x_3805.z, x_3805.z) * x_3807);
            let x_3809 : vec4<f32> = u_xlat13;
            let x_3811 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3809.w, x_3809.w, x_3809.w, x_3809.w) * x_3811);
            let x_3814 : vec4<f32> = u_xlat18;
            let x_3815 : vec2<f32> = vec2<f32>(x_3814.x, x_3814.y);
            let x_3817 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3815.x, x_3815.y, x_3817);
            let x_3824 : vec3<f32> = txVec43;
            let x_3826 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3824.xy, x_3824.z);
            u_xlat87 = x_3826;
            let x_3828 : vec4<f32> = u_xlat18;
            let x_3829 : vec2<f32> = vec2<f32>(x_3828.z, x_3828.w);
            let x_3831 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3829.x, x_3829.y, x_3831);
            let x_3838 : vec3<f32> = txVec44;
            let x_3840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3838.xy, x_3838.z);
            u_xlat88 = x_3840;
            let x_3841 : f32 = u_xlat88;
            let x_3843 : f32 = u_xlat23.y;
            u_xlat88 = (x_3841 * x_3843);
            let x_3846 : f32 = u_xlat23.x;
            let x_3847 : f32 = u_xlat87;
            let x_3849 : f32 = u_xlat88;
            u_xlat87 = ((x_3846 * x_3847) + x_3849);
            let x_3852 : vec2<f32> = u_xlat64;
            let x_3854 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3852.x, x_3852.y, x_3854);
            let x_3861 : vec3<f32> = txVec45;
            let x_3863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3861.xy, x_3861.z);
            u_xlat88 = x_3863;
            let x_3865 : f32 = u_xlat23.z;
            let x_3866 : f32 = u_xlat88;
            let x_3868 : f32 = u_xlat87;
            u_xlat87 = ((x_3865 * x_3866) + x_3868);
            let x_3871 : vec4<f32> = u_xlat21;
            let x_3872 : vec2<f32> = vec2<f32>(x_3871.x, x_3871.y);
            let x_3874 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3872.x, x_3872.y, x_3874);
            let x_3881 : vec3<f32> = txVec46;
            let x_3883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3881.xy, x_3881.z);
            u_xlat88 = x_3883;
            let x_3885 : f32 = u_xlat23.w;
            let x_3886 : f32 = u_xlat88;
            let x_3888 : f32 = u_xlat87;
            u_xlat87 = ((x_3885 * x_3886) + x_3888);
            let x_3891 : vec4<f32> = u_xlat19;
            let x_3892 : vec2<f32> = vec2<f32>(x_3891.x, x_3891.y);
            let x_3894 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3892.x, x_3892.y, x_3894);
            let x_3901 : vec3<f32> = txVec47;
            let x_3903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3901.xy, x_3901.z);
            u_xlat88 = x_3903;
            let x_3905 : f32 = u_xlat24.x;
            let x_3906 : f32 = u_xlat88;
            let x_3908 : f32 = u_xlat87;
            u_xlat87 = ((x_3905 * x_3906) + x_3908);
            let x_3911 : vec4<f32> = u_xlat19;
            let x_3912 : vec2<f32> = vec2<f32>(x_3911.z, x_3911.w);
            let x_3914 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3912.x, x_3912.y, x_3914);
            let x_3921 : vec3<f32> = txVec48;
            let x_3923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3921.xy, x_3921.z);
            u_xlat88 = x_3923;
            let x_3925 : f32 = u_xlat24.y;
            let x_3926 : f32 = u_xlat88;
            let x_3928 : f32 = u_xlat87;
            u_xlat87 = ((x_3925 * x_3926) + x_3928);
            let x_3931 : vec4<f32> = u_xlat20;
            let x_3932 : vec2<f32> = vec2<f32>(x_3931.x, x_3931.y);
            let x_3934 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3932.x, x_3932.y, x_3934);
            let x_3941 : vec3<f32> = txVec49;
            let x_3943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3941.xy, x_3941.z);
            u_xlat88 = x_3943;
            let x_3945 : f32 = u_xlat24.z;
            let x_3946 : f32 = u_xlat88;
            let x_3948 : f32 = u_xlat87;
            u_xlat87 = ((x_3945 * x_3946) + x_3948);
            let x_3951 : vec4<f32> = u_xlat21;
            let x_3952 : vec2<f32> = vec2<f32>(x_3951.z, x_3951.w);
            let x_3954 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3952.x, x_3952.y, x_3954);
            let x_3961 : vec3<f32> = txVec50;
            let x_3963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3961.xy, x_3961.z);
            u_xlat88 = x_3963;
            let x_3965 : f32 = u_xlat24.w;
            let x_3966 : f32 = u_xlat88;
            let x_3968 : f32 = u_xlat87;
            u_xlat87 = ((x_3965 * x_3966) + x_3968);
            let x_3971 : vec4<f32> = u_xlat22;
            let x_3972 : vec2<f32> = vec2<f32>(x_3971.x, x_3971.y);
            let x_3974 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3972.x, x_3972.y, x_3974);
            let x_3981 : vec3<f32> = txVec51;
            let x_3983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3981.xy, x_3981.z);
            u_xlat88 = x_3983;
            let x_3985 : f32 = u_xlat25.x;
            let x_3986 : f32 = u_xlat88;
            let x_3988 : f32 = u_xlat87;
            u_xlat87 = ((x_3985 * x_3986) + x_3988);
            let x_3991 : vec4<f32> = u_xlat22;
            let x_3992 : vec2<f32> = vec2<f32>(x_3991.z, x_3991.w);
            let x_3994 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3992.x, x_3992.y, x_3994);
            let x_4001 : vec3<f32> = txVec52;
            let x_4003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4001.xy, x_4001.z);
            u_xlat88 = x_4003;
            let x_4005 : f32 = u_xlat25.y;
            let x_4006 : f32 = u_xlat88;
            let x_4008 : f32 = u_xlat87;
            u_xlat87 = ((x_4005 * x_4006) + x_4008);
            let x_4011 : vec2<f32> = u_xlat40;
            let x_4013 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4011.x, x_4011.y, x_4013);
            let x_4020 : vec3<f32> = txVec53;
            let x_4022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4020.xy, x_4020.z);
            u_xlat88 = x_4022;
            let x_4024 : f32 = u_xlat25.z;
            let x_4025 : f32 = u_xlat88;
            let x_4027 : f32 = u_xlat87;
            u_xlat87 = ((x_4024 * x_4025) + x_4027);
            let x_4030 : vec2<f32> = u_xlat72;
            let x_4032 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4030.x, x_4030.y, x_4032);
            let x_4039 : vec3<f32> = txVec54;
            let x_4041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4039.xy, x_4039.z);
            u_xlat88 = x_4041;
            let x_4043 : f32 = u_xlat25.w;
            let x_4044 : f32 = u_xlat88;
            let x_4046 : f32 = u_xlat87;
            u_xlat87 = ((x_4043 * x_4044) + x_4046);
            let x_4049 : vec4<f32> = u_xlat17;
            let x_4050 : vec2<f32> = vec2<f32>(x_4049.x, x_4049.y);
            let x_4052 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4050.x, x_4050.y, x_4052);
            let x_4059 : vec3<f32> = txVec55;
            let x_4061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4059.xy, x_4059.z);
            u_xlat88 = x_4061;
            let x_4063 : f32 = u_xlat13.x;
            let x_4064 : f32 = u_xlat88;
            let x_4066 : f32 = u_xlat87;
            u_xlat87 = ((x_4063 * x_4064) + x_4066);
            let x_4069 : vec4<f32> = u_xlat17;
            let x_4070 : vec2<f32> = vec2<f32>(x_4069.z, x_4069.w);
            let x_4072 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4070.x, x_4070.y, x_4072);
            let x_4079 : vec3<f32> = txVec56;
            let x_4081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4079.xy, x_4079.z);
            u_xlat88 = x_4081;
            let x_4083 : f32 = u_xlat13.y;
            let x_4084 : f32 = u_xlat88;
            let x_4086 : f32 = u_xlat87;
            u_xlat87 = ((x_4083 * x_4084) + x_4086);
            let x_4089 : vec2<f32> = u_xlat67;
            let x_4091 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4089.x, x_4089.y, x_4091);
            let x_4098 : vec3<f32> = txVec57;
            let x_4100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4098.xy, x_4098.z);
            u_xlat88 = x_4100;
            let x_4102 : f32 = u_xlat13.z;
            let x_4103 : f32 = u_xlat88;
            let x_4105 : f32 = u_xlat87;
            u_xlat87 = ((x_4102 * x_4103) + x_4105);
            let x_4108 : vec4<f32> = u_xlat12;
            let x_4109 : vec2<f32> = vec2<f32>(x_4108.x, x_4108.y);
            let x_4111 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4109.x, x_4109.y, x_4111);
            let x_4118 : vec3<f32> = txVec58;
            let x_4120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4118.xy, x_4118.z);
            u_xlat88 = x_4120;
            let x_4122 : f32 = u_xlat13.w;
            let x_4123 : f32 = u_xlat88;
            let x_4125 : f32 = u_xlat87;
            u_xlat86 = ((x_4122 * x_4123) + x_4125);
          }
        }
      } else {
        let x_4129 : vec4<f32> = u_xlat11;
        let x_4130 : vec2<f32> = vec2<f32>(x_4129.x, x_4129.y);
        let x_4132 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4130.x, x_4130.y, x_4132);
        let x_4139 : vec3<f32> = txVec59;
        let x_4141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4139.xy, x_4139.z);
        u_xlat86 = x_4141;
      }
      let x_4142 : i32 = u_xlati84;
      let x_4144 : f32 = x_610.x_AdditionalShadowParams[x_4142].x;
      u_xlat87 = (1.0f + -(x_4144));
      let x_4147 : f32 = u_xlat86;
      let x_4148 : i32 = u_xlati84;
      let x_4150 : f32 = x_610.x_AdditionalShadowParams[x_4148].x;
      let x_4152 : f32 = u_xlat87;
      u_xlat86 = ((x_4147 * x_4150) + x_4152);
      let x_4155 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4155);
      let x_4159 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4159 >= 1.0f);
      let x_4161 : bool = u_xlatb87;
      let x_4162 : bool = u_xlatb88;
      u_xlatb87 = (x_4161 | x_4162);
      let x_4164 : bool = u_xlatb87;
      let x_4165 : f32 = u_xlat86;
      u_xlat86 = select(x_4165, 1.0f, x_4164);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4168 : f32 = u_xlat86;
    u_xlat87 = (-(x_4168) + 1.0f);
    let x_4171 : f32 = u_xlat29;
    let x_4172 : f32 = u_xlat87;
    let x_4174 : f32 = u_xlat86;
    u_xlat86 = ((x_4171 * x_4172) + x_4174);
    let x_4177 : i32 = u_xlati84;
    u_xlati87 = (1i << bitcast<u32>((x_4177 & 31i)));
    let x_4180 : i32 = u_xlati87;
    let x_4183 : f32 = x_2263.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4180) & bitcast<u32>(x_4183)));
    let x_4187 : i32 = u_xlati87;
    if ((x_4187 != 0i)) {
      let x_4191 : i32 = u_xlati84;
      let x_4193 : f32 = x_2263.x_AdditionalLightsLightTypes[x_4191].el;
      u_xlati87 = i32(x_4193);
      let x_4196 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4196 != 0i));
      let x_4200 : i32 = u_xlati84;
      u_xlati11 = (x_4200 << bitcast<u32>(2i));
      let x_4202 : i32 = u_xlati88;
      if ((x_4202 != 0i)) {
        let x_4207 : vec3<f32> = vs_TEXCOORD7;
        let x_4209 : i32 = u_xlati11;
        let x_4212 : i32 = u_xlati11;
        let x_4216 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4209 + 1i) / 4i)][((x_4212 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4207.y, x_4207.y, x_4207.y) * vec3<f32>(x_4216.x, x_4216.y, x_4216.w));
        let x_4219 : i32 = u_xlati11;
        let x_4221 : i32 = u_xlati11;
        let x_4224 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[(x_4219 / 4i)][(x_4221 % 4i)];
        let x_4226 : vec3<f32> = vs_TEXCOORD7;
        let x_4229 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4224.x, x_4224.y, x_4224.w) * vec3<f32>(x_4226.x, x_4226.x, x_4226.x)) + x_4229);
        let x_4231 : i32 = u_xlati11;
        let x_4234 : i32 = u_xlati11;
        let x_4238 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4231 + 2i) / 4i)][((x_4234 + 2i) % 4i)];
        let x_4240 : vec3<f32> = vs_TEXCOORD7;
        let x_4243 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4238.x, x_4238.y, x_4238.w) * vec3<f32>(x_4240.z, x_4240.z, x_4240.z)) + x_4243);
        let x_4245 : vec3<f32> = u_xlat37;
        let x_4246 : i32 = u_xlati11;
        let x_4249 : i32 = u_xlati11;
        let x_4253 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4246 + 3i) / 4i)][((x_4249 + 3i) % 4i)];
        u_xlat37 = (x_4245 + vec3<f32>(x_4253.x, x_4253.y, x_4253.w));
        let x_4256 : vec3<f32> = u_xlat37;
        let x_4258 : vec3<f32> = u_xlat37;
        let x_4260 : vec2<f32> = (vec2<f32>(x_4256.x, x_4256.y) / vec2<f32>(x_4258.z, x_4258.z));
        let x_4261 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4260.x, x_4260.y, x_4261.z);
        let x_4263 : vec3<f32> = u_xlat37;
        let x_4266 : vec2<f32> = ((vec2<f32>(x_4263.x, x_4263.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4267 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4266.x, x_4266.y, x_4267.z);
        let x_4269 : vec3<f32> = u_xlat37;
        let x_4273 : vec2<f32> = clamp(vec2<f32>(x_4269.x, x_4269.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4274 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4273.x, x_4273.y, x_4274.z);
        let x_4276 : i32 = u_xlati84;
        let x_4278 : vec4<f32> = x_2263.x_AdditionalLightsCookieAtlasUVRects[x_4276];
        let x_4280 : vec3<f32> = u_xlat37;
        let x_4283 : i32 = u_xlati84;
        let x_4285 : vec4<f32> = x_2263.x_AdditionalLightsCookieAtlasUVRects[x_4283];
        let x_4287 : vec2<f32> = ((vec2<f32>(x_4278.x, x_4278.y) * vec2<f32>(x_4280.x, x_4280.y)) + vec2<f32>(x_4285.z, x_4285.w));
        let x_4288 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4287.x, x_4287.y, x_4288.z);
      } else {
        let x_4291 : i32 = u_xlati87;
        u_xlatb87 = (x_4291 == 1i);
        let x_4293 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4293);
        let x_4295 : i32 = u_xlati87;
        if ((x_4295 != 0i)) {
          let x_4299 : vec3<f32> = vs_TEXCOORD7;
          let x_4301 : i32 = u_xlati11;
          let x_4304 : i32 = u_xlati11;
          let x_4308 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4301 + 1i) / 4i)][((x_4304 + 1i) % 4i)];
          let x_4310 : vec2<f32> = (vec2<f32>(x_4299.y, x_4299.y) * vec2<f32>(x_4308.x, x_4308.y));
          let x_4311 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4310.x, x_4310.y, x_4311.z, x_4311.w);
          let x_4313 : i32 = u_xlati11;
          let x_4315 : i32 = u_xlati11;
          let x_4318 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[(x_4313 / 4i)][(x_4315 % 4i)];
          let x_4320 : vec3<f32> = vs_TEXCOORD7;
          let x_4323 : vec4<f32> = u_xlat12;
          let x_4325 : vec2<f32> = ((vec2<f32>(x_4318.x, x_4318.y) * vec2<f32>(x_4320.x, x_4320.x)) + vec2<f32>(x_4323.x, x_4323.y));
          let x_4326 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4325.x, x_4325.y, x_4326.z, x_4326.w);
          let x_4328 : i32 = u_xlati11;
          let x_4331 : i32 = u_xlati11;
          let x_4335 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4328 + 2i) / 4i)][((x_4331 + 2i) % 4i)];
          let x_4337 : vec3<f32> = vs_TEXCOORD7;
          let x_4340 : vec4<f32> = u_xlat12;
          let x_4342 : vec2<f32> = ((vec2<f32>(x_4335.x, x_4335.y) * vec2<f32>(x_4337.z, x_4337.z)) + vec2<f32>(x_4340.x, x_4340.y));
          let x_4343 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4342.x, x_4342.y, x_4343.z, x_4343.w);
          let x_4345 : vec4<f32> = u_xlat12;
          let x_4347 : i32 = u_xlati11;
          let x_4350 : i32 = u_xlati11;
          let x_4354 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4347 + 3i) / 4i)][((x_4350 + 3i) % 4i)];
          let x_4356 : vec2<f32> = (vec2<f32>(x_4345.x, x_4345.y) + vec2<f32>(x_4354.x, x_4354.y));
          let x_4357 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4356.x, x_4356.y, x_4357.z, x_4357.w);
          let x_4359 : vec4<f32> = u_xlat12;
          let x_4362 : vec2<f32> = ((vec2<f32>(x_4359.x, x_4359.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4363 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4362.x, x_4362.y, x_4363.z, x_4363.w);
          let x_4365 : vec4<f32> = u_xlat12;
          let x_4367 : vec2<f32> = fract(vec2<f32>(x_4365.x, x_4365.y));
          let x_4368 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4367.x, x_4367.y, x_4368.z, x_4368.w);
          let x_4370 : i32 = u_xlati84;
          let x_4372 : vec4<f32> = x_2263.x_AdditionalLightsCookieAtlasUVRects[x_4370];
          let x_4374 : vec4<f32> = u_xlat12;
          let x_4377 : i32 = u_xlati84;
          let x_4379 : vec4<f32> = x_2263.x_AdditionalLightsCookieAtlasUVRects[x_4377];
          let x_4381 : vec2<f32> = ((vec2<f32>(x_4372.x, x_4372.y) * vec2<f32>(x_4374.x, x_4374.y)) + vec2<f32>(x_4379.z, x_4379.w));
          let x_4382 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4381.x, x_4381.y, x_4382.z);
        } else {
          let x_4385 : vec3<f32> = vs_TEXCOORD7;
          let x_4387 : i32 = u_xlati11;
          let x_4390 : i32 = u_xlati11;
          let x_4394 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4387 + 1i) / 4i)][((x_4390 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4385.y, x_4385.y, x_4385.y, x_4385.y) * x_4394);
          let x_4396 : i32 = u_xlati11;
          let x_4398 : i32 = u_xlati11;
          let x_4401 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[(x_4396 / 4i)][(x_4398 % 4i)];
          let x_4402 : vec3<f32> = vs_TEXCOORD7;
          let x_4405 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4401 * vec4<f32>(x_4402.x, x_4402.x, x_4402.x, x_4402.x)) + x_4405);
          let x_4407 : i32 = u_xlati11;
          let x_4410 : i32 = u_xlati11;
          let x_4414 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4407 + 2i) / 4i)][((x_4410 + 2i) % 4i)];
          let x_4415 : vec3<f32> = vs_TEXCOORD7;
          let x_4418 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4414 * vec4<f32>(x_4415.z, x_4415.z, x_4415.z, x_4415.z)) + x_4418);
          let x_4420 : vec4<f32> = u_xlat12;
          let x_4421 : i32 = u_xlati11;
          let x_4424 : i32 = u_xlati11;
          let x_4428 : vec4<f32> = x_2263.x_AdditionalLightsWorldToLights[((x_4421 + 3i) / 4i)][((x_4424 + 3i) % 4i)];
          u_xlat12 = (x_4420 + x_4428);
          let x_4430 : vec4<f32> = u_xlat12;
          let x_4432 : vec4<f32> = u_xlat12;
          let x_4434 : vec3<f32> = (vec3<f32>(x_4430.x, x_4430.y, x_4430.z) / vec3<f32>(x_4432.w, x_4432.w, x_4432.w));
          let x_4435 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4434.x, x_4434.y, x_4434.z, x_4435.w);
          let x_4437 : vec4<f32> = u_xlat12;
          let x_4439 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4437.x, x_4437.y, x_4437.z), vec3<f32>(x_4439.x, x_4439.y, x_4439.z));
          let x_4442 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4442);
          let x_4444 : f32 = u_xlat87;
          let x_4446 : vec4<f32> = u_xlat12;
          let x_4448 : vec3<f32> = (vec3<f32>(x_4444, x_4444, x_4444) * vec3<f32>(x_4446.x, x_4446.y, x_4446.z));
          let x_4449 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4448.x, x_4448.y, x_4448.z, x_4449.w);
          let x_4451 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4451.x, x_4451.y, x_4451.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4456 : f32 = u_xlat87;
          u_xlat87 = max(x_4456, 0.00000099999999747524f);
          let x_4459 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4459);
          let x_4461 : f32 = u_xlat87;
          let x_4463 : vec4<f32> = u_xlat12;
          let x_4465 : vec3<f32> = (vec3<f32>(x_4461, x_4461, x_4461) * vec3<f32>(x_4463.z, x_4463.x, x_4463.y));
          let x_4466 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4465.x, x_4465.y, x_4465.z, x_4466.w);
          let x_4469 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4469);
          let x_4473 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4473, 0.0f, 1.0f);
          let x_4476 : vec4<f32> = u_xlat13;
          let x_4478 : vec4<bool> = (vec4<f32>(x_4476.y, x_4476.y, x_4476.y, x_4476.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4479 : vec2<bool> = vec2<bool>(x_4478.x, x_4478.w);
          let x_4480 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4479.x, x_4480.y, x_4480.z, x_4479.y);
          let x_4483 : bool = u_xlatb11.x;
          if (x_4483) {
            let x_4488 : f32 = u_xlat13.x;
            x_4484 = x_4488;
          } else {
            let x_4491 : f32 = u_xlat13.x;
            x_4484 = -(x_4491);
          }
          let x_4493 : f32 = x_4484;
          u_xlat11.x = x_4493;
          let x_4496 : bool = u_xlatb11.w;
          if (x_4496) {
            let x_4501 : f32 = u_xlat13.x;
            x_4497 = x_4501;
          } else {
            let x_4504 : f32 = u_xlat13.x;
            x_4497 = -(x_4504);
          }
          let x_4506 : f32 = x_4497;
          u_xlat11.w = x_4506;
          let x_4508 : vec4<f32> = u_xlat12;
          let x_4510 : f32 = u_xlat87;
          let x_4513 : vec4<f32> = u_xlat11;
          let x_4515 : vec2<f32> = ((vec2<f32>(x_4508.x, x_4508.y) * vec2<f32>(x_4510, x_4510)) + vec2<f32>(x_4513.x, x_4513.w));
          let x_4516 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4515.x, x_4516.y, x_4516.z, x_4515.y);
          let x_4518 : vec4<f32> = u_xlat11;
          let x_4521 : vec2<f32> = ((vec2<f32>(x_4518.x, x_4518.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4522 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4521.x, x_4522.y, x_4522.z, x_4521.y);
          let x_4524 : vec4<f32> = u_xlat11;
          let x_4528 : vec2<f32> = clamp(vec2<f32>(x_4524.x, x_4524.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4529 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4528.x, x_4529.y, x_4529.z, x_4528.y);
          let x_4531 : i32 = u_xlati84;
          let x_4533 : vec4<f32> = x_2263.x_AdditionalLightsCookieAtlasUVRects[x_4531];
          let x_4535 : vec4<f32> = u_xlat11;
          let x_4538 : i32 = u_xlati84;
          let x_4540 : vec4<f32> = x_2263.x_AdditionalLightsCookieAtlasUVRects[x_4538];
          let x_4542 : vec2<f32> = ((vec2<f32>(x_4533.x, x_4533.y) * vec2<f32>(x_4535.x, x_4535.w)) + vec2<f32>(x_4540.z, x_4540.w));
          let x_4543 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4542.x, x_4542.y, x_4543.z);
        }
      }
      let x_4550 : vec3<f32> = u_xlat37;
      let x_4552 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4550.x, x_4550.y), 0.0f);
      u_xlat11 = x_4552;
      let x_4554 : bool = u_xlatb7.y;
      if (x_4554) {
        let x_4559 : f32 = u_xlat11.w;
        x_4555 = x_4559;
      } else {
        let x_4562 : f32 = u_xlat11.x;
        x_4555 = x_4562;
      }
      let x_4563 : f32 = x_4555;
      u_xlat87 = x_4563;
      let x_4565 : bool = u_xlatb7.x;
      if (x_4565) {
        let x_4569 : vec4<f32> = u_xlat11;
        x_4566 = vec3<f32>(x_4569.x, x_4569.y, x_4569.z);
      } else {
        let x_4572 : f32 = u_xlat87;
        x_4566 = vec3<f32>(x_4572, x_4572, x_4572);
      }
      let x_4574 : vec3<f32> = x_4566;
      let x_4575 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4574.x, x_4574.y, x_4574.z, x_4575.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4581 : vec4<f32> = u_xlat11;
    let x_4583 : i32 = u_xlati84;
    let x_4585 : vec4<f32> = x_2742.x_AdditionalLightsColor[x_4583];
    let x_4587 : vec3<f32> = (vec3<f32>(x_4581.x, x_4581.y, x_4581.z) * vec3<f32>(x_4585.x, x_4585.y, x_4585.z));
    let x_4588 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4587.x, x_4587.y, x_4587.z, x_4588.w);
    let x_4591 : f32 = u_xlat59.x;
    let x_4592 : f32 = u_xlat86;
    u_xlat84 = (x_4591 * x_4592);
    let x_4594 : vec3<f32> = u_xlat2;
    let x_4595 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_4594, vec3<f32>(x_4595.x, x_4595.y, x_4595.z));
    let x_4600 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4600, 0.0f, 1.0f);
    let x_4603 : f32 = u_xlat84;
    let x_4605 : f32 = u_xlat59.x;
    u_xlat84 = (x_4603 * x_4605);
    let x_4607 : f32 = u_xlat84;
    let x_4609 : vec4<f32> = u_xlat11;
    let x_4611 : vec3<f32> = (vec3<f32>(x_4607, x_4607, x_4607) * vec3<f32>(x_4609.x, x_4609.y, x_4609.z));
    let x_4612 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4611.x, x_4611.y, x_4611.z, x_4612.w);
    let x_4614 : vec4<f32> = u_xlat9;
    let x_4616 : f32 = u_xlat85;
    let x_4619 : vec4<f32> = u_xlat1;
    let x_4621 : vec3<f32> = ((vec3<f32>(x_4614.x, x_4614.y, x_4614.z) * vec3<f32>(x_4616, x_4616, x_4616)) + vec3<f32>(x_4619.x, x_4619.y, x_4619.z));
    let x_4622 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4621.x, x_4621.y, x_4621.z, x_4622.w);
    let x_4624 : vec4<f32> = u_xlat9;
    let x_4626 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4624.x, x_4624.y, x_4624.z), vec3<f32>(x_4626.x, x_4626.y, x_4626.z));
    let x_4629 : f32 = u_xlat84;
    u_xlat84 = max(x_4629, 1.17549435e-38f);
    let x_4631 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4631);
    let x_4633 : f32 = u_xlat84;
    let x_4635 : vec4<f32> = u_xlat9;
    let x_4637 : vec3<f32> = (vec3<f32>(x_4633, x_4633, x_4633) * vec3<f32>(x_4635.x, x_4635.y, x_4635.z));
    let x_4638 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4637.x, x_4637.y, x_4637.z, x_4638.w);
    let x_4640 : vec3<f32> = u_xlat2;
    let x_4641 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4640, vec3<f32>(x_4641.x, x_4641.y, x_4641.z));
    let x_4644 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4644, 0.0f, 1.0f);
    let x_4646 : vec4<f32> = u_xlat10;
    let x_4648 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4646.x, x_4646.y, x_4646.z), vec3<f32>(x_4648.x, x_4648.y, x_4648.z));
    let x_4653 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4653, 0.0f, 1.0f);
    let x_4656 : f32 = u_xlat84;
    let x_4657 : f32 = u_xlat84;
    u_xlat84 = (x_4656 * x_4657);
    let x_4659 : f32 = u_xlat84;
    let x_4661 : f32 = u_xlat0.x;
    u_xlat84 = ((x_4659 * x_4661) + 1.00001001358032226562f);
    let x_4665 : f32 = u_xlat59.x;
    let x_4667 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4665 * x_4667);
    let x_4670 : f32 = u_xlat84;
    let x_4671 : f32 = u_xlat84;
    u_xlat84 = (x_4670 * x_4671);
    let x_4674 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4674, 0.10000000149011611938f);
    let x_4677 : f32 = u_xlat84;
    let x_4679 : f32 = u_xlat59.x;
    u_xlat84 = (x_4677 * x_4679);
    let x_4681 : f32 = u_xlat82;
    let x_4682 : f32 = u_xlat84;
    u_xlat84 = (x_4681 * x_4682);
    let x_4684 : f32 = u_xlat80;
    let x_4685 : f32 = u_xlat84;
    u_xlat84 = (x_4684 / x_4685);
    let x_4687 : vec4<f32> = u_xlat5;
    let x_4689 : f32 = u_xlat84;
    let x_4692 : vec4<f32> = u_xlat6;
    let x_4694 : vec3<f32> = ((vec3<f32>(x_4687.x, x_4687.y, x_4687.z) * vec3<f32>(x_4689, x_4689, x_4689)) + vec3<f32>(x_4692.x, x_4692.y, x_4692.z));
    let x_4695 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4694.x, x_4694.y, x_4694.z, x_4695.w);
    let x_4697 : vec4<f32> = u_xlat9;
    let x_4699 : vec4<f32> = u_xlat11;
    let x_4702 : vec4<f32> = u_xlat8;
    let x_4704 : vec3<f32> = ((vec3<f32>(x_4697.x, x_4697.y, x_4697.z) * vec3<f32>(x_4699.x, x_4699.y, x_4699.z)) + vec3<f32>(x_4702.x, x_4702.y, x_4702.z));
    let x_4705 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4704.x, x_4704.y, x_4704.z, x_4705.w);

    continuing {
      let x_4707 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4707 + bitcast<u32>(1i));
    }
  }
  let x_4709 : vec4<f32> = u_xlat4;
  let x_4711 : f32 = u_xlat26;
  let x_4714 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_4709.x, x_4709.y, x_4709.z) * vec3<f32>(x_4711, x_4711, x_4711)) + vec3<f32>(x_4714.x, x_4714.z, x_4714.w));
  let x_4717 : vec4<f32> = u_xlat8;
  let x_4719 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4717.x, x_4717.y, x_4717.z) + x_4719);
  let x_4721 : f32 = u_xlat78;
  let x_4723 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4721, x_4721, x_4721) * x_4723);
  let x_4725 : f32 = u_xlat79;
  let x_4726 : f32 = u_xlat79;
  u_xlat78 = (x_4725 * -(x_4726));
  let x_4729 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4729);
  let x_4733 : vec3<f32> = u_xlat0;
  let x_4734 : f32 = u_xlat78;
  let x_4736 : vec3<f32> = (x_4733 * vec3<f32>(x_4734, x_4734, x_4734));
  let x_4737 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4736.x, x_4736.y, x_4736.z, x_4737.w);
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


