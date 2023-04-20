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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
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

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

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

@group(1) @binding(2) var<uniform> x_911 : UnityPerDraw;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1049 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2403 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_2904 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

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

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

var<private> u_xlatb58 : bool;

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
  var x_2355 : f32;
  var x_2470 : f32;
  var x_2481 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3042 : f32;
  var x_3052 : f32;
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
  var x_4633 : f32;
  var x_4646 : f32;
  var x_4704 : f32;
  var x_4715 : vec3<f32>;
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
  let x_394 : vec4<f32> = vs_TEXCOORD1;
  let x_397 : f32 = x_29.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_394.x, x_394.y), x_397);
  let x_399 : vec3<f32> = vec3<f32>(x_398.x, x_398.y, x_398.w);
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = u_xlat6.x;
  let x_405 : f32 = u_xlat6.z;
  u_xlat6.x = (x_403 * x_405);
  let x_408 : vec4<f32> = u_xlat6;
  let x_413 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_416.x, x_416.y), vec2<f32>(x_418.x, x_418.y));
  let x_421 : f32 = u_xlat79;
  u_xlat79 = min(x_421, 1.0f);
  let x_423 : f32 = u_xlat79;
  u_xlat79 = (-(x_423) + 1.0f);
  let x_426 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_426);
  let x_428 : f32 = u_xlat79;
  u_xlat7.z = max(x_428, 0.0000000000000001f);
  let x_432 : vec4<f32> = u_xlat6;
  let x_435 : f32 = x_59.x_NormalScale0;
  let x_437 : vec2<f32> = (vec2<f32>(x_432.x, x_432.y) * vec2<f32>(x_435, x_435));
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_444 : vec4<f32> = vs_TEXCOORD1;
  let x_447 : f32 = x_29.x_GlobalMipBias.x;
  let x_448 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_444.z, x_444.w), x_447);
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.w);
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = u_xlat6.x;
  let x_455 : f32 = u_xlat6.z;
  u_xlat6.x = (x_453 * x_455);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : vec2<f32> = ((vec2<f32>(x_458.x, x_458.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat6;
  let x_466 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_464.x, x_464.y), vec2<f32>(x_466.x, x_466.y));
  let x_469 : f32 = u_xlat79;
  u_xlat79 = min(x_469, 1.0f);
  let x_471 : f32 = u_xlat79;
  u_xlat79 = (-(x_471) + 1.0f);
  let x_474 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_474);
  let x_476 : f32 = u_xlat79;
  u_xlat8.z = max(x_476, 0.0000000000000001f);
  let x_479 : vec4<f32> = u_xlat6;
  let x_482 : f32 = x_59.x_NormalScale1;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_485 : vec2<f32> = vec2<f32>(x_482, x_484);
  let x_489 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) * vec2<f32>(x_485.x, x_485.y));
  let x_490 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat4;
  let x_494 : vec4<f32> = u_xlat8;
  let x_496 : vec3<f32> = (vec3<f32>(x_492.y, x_492.y, x_492.y) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat4;
  let x_501 : vec4<f32> = u_xlat7;
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.x, x_499.x) * vec3<f32>(x_501.x, x_501.y, x_501.z)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_513 : vec4<f32> = vs_TEXCOORD2;
  let x_516 : f32 = x_29.x_GlobalMipBias.x;
  let x_517 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_513.x, x_513.y), x_516);
  let x_518 : vec3<f32> = vec3<f32>(x_517.x, x_517.y, x_517.w);
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : f32 = u_xlat7.x;
  let x_524 : f32 = u_xlat7.z;
  u_xlat7.x = (x_522 * x_524);
  let x_527 : vec4<f32> = u_xlat7;
  let x_530 : vec2<f32> = ((vec2<f32>(x_527.x, x_527.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat7;
  let x_535 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_533.x, x_533.y), vec2<f32>(x_535.x, x_535.y));
  let x_538 : f32 = u_xlat79;
  u_xlat79 = min(x_538, 1.0f);
  let x_540 : f32 = u_xlat79;
  u_xlat79 = (-(x_540) + 1.0f);
  let x_543 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_543);
  let x_545 : f32 = u_xlat79;
  u_xlat8.z = max(x_545, 0.0000000000000001f);
  let x_548 : vec4<f32> = u_xlat7;
  let x_552 : f32 = x_59.x_NormalScale2;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_555 : vec2<f32> = vec2<f32>(x_552, x_554);
  let x_559 : vec2<f32> = (vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_555.x, x_555.y));
  let x_560 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec4<f32> = u_xlat8;
  let x_567 : vec4<f32> = u_xlat6;
  let x_569 : vec3<f32> = ((vec3<f32>(x_562.z, x_562.z, x_562.z) * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_576 : vec4<f32> = vs_TEXCOORD2;
  let x_579 : f32 = x_29.x_GlobalMipBias.x;
  let x_580 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_576.z, x_576.w), x_579);
  let x_581 : vec3<f32> = vec3<f32>(x_580.x, x_580.y, x_580.w);
  let x_582 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : f32 = u_xlat7.x;
  let x_587 : f32 = u_xlat7.z;
  u_xlat7.x = (x_585 * x_587);
  let x_590 : vec4<f32> = u_xlat7;
  let x_593 : vec2<f32> = ((vec2<f32>(x_590.x, x_590.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_594 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat7;
  let x_598 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_596.x, x_596.y), vec2<f32>(x_598.x, x_598.y));
  let x_601 : f32 = u_xlat79;
  u_xlat79 = min(x_601, 1.0f);
  let x_603 : f32 = u_xlat79;
  u_xlat79 = (-(x_603) + 1.0f);
  let x_606 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_606);
  let x_608 : f32 = u_xlat79;
  u_xlat8.z = max(x_608, 0.0000000000000001f);
  let x_611 : vec4<f32> = u_xlat7;
  let x_615 : f32 = x_59.x_NormalScale3;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_618 : vec2<f32> = vec2<f32>(x_615, x_617);
  let x_622 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) * vec2<f32>(x_618.x, x_618.y));
  let x_623 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : vec4<f32> = u_xlat8;
  let x_630 : vec4<f32> = u_xlat6;
  let x_632 : vec3<f32> = ((vec3<f32>(x_625.w, x_625.w, x_625.w) * vec3<f32>(x_627.x, x_627.y, x_627.z)) + vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_636 : f32 = u_xlat6.z;
  u_xlat6.w = (x_636 + 0.00000999999974737875f);
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_640.x, x_640.y, x_640.w), vec3<f32>(x_642.x, x_642.y, x_642.w));
  let x_645 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_645);
  let x_647 : f32 = u_xlat79;
  let x_649 : vec4<f32> = u_xlat6;
  let x_651 : vec3<f32> = (vec3<f32>(x_647, x_647, x_647) * vec3<f32>(x_649.x, x_649.y, x_649.w));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_655 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_655;
  let x_658 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_658;
  let x_661 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_661;
  let x_664 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_664;
  let x_667 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_667;
  let x_670 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_670;
  let x_673 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_673;
  let x_676 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_676;
  let x_678 : vec4<f32> = u_xlat7;
  let x_679 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_678 + x_679);
  let x_682 : f32 = u_xlat0.z;
  u_xlat8.x = x_682;
  let x_685 : f32 = u_xlat1.z;
  u_xlat8.y = x_685;
  let x_688 : f32 = u_xlat2.z;
  u_xlat8.z = x_688;
  let x_691 : f32 = u_xlat3.y;
  u_xlat8.w = x_691;
  let x_693 : vec4<f32> = u_xlat9;
  let x_696 : f32 = x_59.x_Smoothness0;
  let x_698 : f32 = x_59.x_Smoothness1;
  let x_700 : f32 = x_59.x_Smoothness2;
  let x_702 : f32 = x_59.x_Smoothness3;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_693) * vec4<f32>(x_696, x_698, x_700, x_702)) + x_705);
  let x_709 : f32 = x_59.x_LayerHasMask0;
  let x_712 : f32 = x_59.x_LayerHasMask1;
  let x_715 : f32 = x_59.x_LayerHasMask2;
  let x_718 : f32 = x_59.x_LayerHasMask3;
  let x_720 : vec4<f32> = u_xlat8;
  let x_722 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_709, x_712, x_715, x_718) * x_720) + x_722);
  let x_725 : vec4<f32> = u_xlat4;
  let x_726 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_725, x_726);
  let x_729 : f32 = u_xlat0.x;
  u_xlat8.x = x_729;
  let x_732 : f32 = u_xlat1.x;
  u_xlat8.y = x_732;
  let x_735 : f32 = u_xlat2.x;
  u_xlat8.z = x_735;
  let x_738 : f32 = u_xlat3.x;
  u_xlat8.w = x_738;
  let x_740 : vec4<f32> = u_xlat8;
  let x_743 : f32 = x_59.x_Metallic0;
  let x_746 : f32 = x_59.x_Metallic1;
  let x_749 : f32 = x_59.x_Metallic2;
  let x_752 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_740 + -(vec4<f32>(x_743, x_746, x_749, x_752)));
  let x_757 : f32 = x_59.x_LayerHasMask0;
  let x_759 : f32 = x_59.x_LayerHasMask1;
  let x_761 : f32 = x_59.x_LayerHasMask2;
  let x_763 : f32 = x_59.x_LayerHasMask3;
  let x_765 : vec4<f32> = u_xlat8;
  let x_768 : f32 = x_59.x_Metallic0;
  let x_770 : f32 = x_59.x_Metallic1;
  let x_772 : f32 = x_59.x_Metallic2;
  let x_774 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_757, x_759, x_761, x_763) * x_765) + vec4<f32>(x_768, x_770, x_772, x_774));
  let x_777 : vec4<f32> = u_xlat4;
  let x_778 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_777, x_778);
  let x_782 : f32 = u_xlat0.y;
  u_xlat3.x = x_782;
  let x_785 : f32 = u_xlat1.y;
  u_xlat3.y = x_785;
  let x_788 : f32 = u_xlat2.y;
  u_xlat3.z = x_788;
  let x_790 : vec4<f32> = u_xlat7;
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_790) + x_792);
  let x_795 : f32 = x_59.x_LayerHasMask0;
  let x_797 : f32 = x_59.x_LayerHasMask1;
  let x_799 : f32 = x_59.x_LayerHasMask2;
  let x_801 : f32 = x_59.x_LayerHasMask3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_795, x_797, x_799, x_801) * x_803) + x_805);
  let x_808 : vec4<f32> = u_xlat4;
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_808, x_809);
  let x_811 : vec4<f32> = u_xlat6;
  let x_814 : vec4<f32> = vs_TEXCOORD5;
  let x_816 : vec3<f32> = (vec3<f32>(x_811.y, x_811.y, x_811.y) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat6;
  let x_822 : vec4<f32> = vs_TEXCOORD4;
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = ((vec3<f32>(x_819.x, x_819.x, x_819.x) * -(vec3<f32>(x_822.x, x_822.y, x_822.z))) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat6;
  let x_834 : vec4<f32> = vs_TEXCOORD3;
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec3<f32> = ((vec3<f32>(x_831.z, x_831.z, x_831.z) * vec3<f32>(x_834.x, x_834.y, x_834.z)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_847);
  let x_849 : f32 = u_xlat79;
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : vec3<f32> = (vec3<f32>(x_849, x_849, x_849) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_860 : f32 = vs_TEXCOORD7.y;
  let x_862 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.x = (x_860 * x_862);
  let x_866 : f32 = x_29.unity_MatrixV[0i].z;
  let x_868 : f32 = vs_TEXCOORD7.x;
  let x_871 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_866 * x_868) + x_871);
  let x_875 : f32 = x_29.unity_MatrixV[2i].z;
  let x_877 : f32 = vs_TEXCOORD7.z;
  let x_880 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_875 * x_877) + x_880);
  let x_884 : f32 = u_xlat2.x;
  let x_886 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2.x = (x_884 + x_886);
  let x_890 : f32 = u_xlat2.x;
  let x_893 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2.x = (-(x_890) + -(x_893));
  let x_898 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_898, 0.0f);
  let x_902 : f32 = u_xlat2.x;
  let x_904 : f32 = x_29.unity_FogParams.x;
  u_xlat2.x = (x_902 * x_904);
  u_xlat1.w = 1.0f;
  let x_913 : vec4<f32> = x_911.unity_SHAr;
  let x_914 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_913, x_914);
  let x_918 : vec4<f32> = x_911.unity_SHAg;
  let x_919 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_918, x_919);
  let x_923 : vec4<f32> = x_911.unity_SHAb;
  let x_924 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_923, x_924);
  let x_927 : vec4<f32> = u_xlat1;
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_927.y, x_927.z, x_927.z, x_927.x) * vec4<f32>(x_929.x, x_929.y, x_929.z, x_929.z));
  let x_933 : vec4<f32> = x_911.unity_SHBr;
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_933, x_934);
  let x_938 : vec4<f32> = x_911.unity_SHBg;
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_938, x_939);
  let x_943 : vec4<f32> = x_911.unity_SHBb;
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_943, x_944);
  let x_948 : f32 = u_xlat1.y;
  let x_950 : f32 = u_xlat1.y;
  u_xlat79 = (x_948 * x_950);
  let x_953 : f32 = u_xlat1.x;
  let x_955 : f32 = u_xlat1.x;
  let x_957 : f32 = u_xlat79;
  u_xlat79 = ((x_953 * x_955) + -(x_957));
  let x_963 : vec4<f32> = x_911.unity_SHC;
  let x_965 : f32 = u_xlat79;
  let x_968 : vec4<f32> = u_xlat6;
  u_xlat28 = ((vec3<f32>(x_963.x, x_963.y, x_963.z) * vec3<f32>(x_965, x_965, x_965)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec3<f32> = u_xlat28;
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_971 + vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec3<f32> = u_xlat28;
  u_xlat28 = max(x_975, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_979 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_979) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_984 : f32 = u_xlat52;
  let x_985 : f32 = u_xlat79;
  u_xlat3.x = (x_984 + -(x_985));
  let x_990 : f32 = u_xlat79;
  let x_992 : vec4<f32> = u_xlat5;
  u_xlat29 = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat5;
  let x_999 : vec3<f32> = (vec3<f32>(x_995.x, x_995.y, x_995.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1000 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec3<f32> = u_xlat0;
  let x_1004 : vec4<f32> = u_xlat4;
  let x_1009 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.x, x_1002.x) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1010 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1012) + 1.0f);
  let x_1017 : f32 = u_xlat0.x;
  let x_1019 : f32 = u_xlat0.x;
  u_xlat52 = (x_1017 * x_1019);
  let x_1021 : f32 = u_xlat52;
  u_xlat52 = max(x_1021, 0.0078125f);
  let x_1024 : f32 = u_xlat52;
  let x_1025 : f32 = u_xlat52;
  u_xlat79 = (x_1024 * x_1025);
  let x_1028 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1028 + 1.0f);
  let x_1032 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1032, 0.0f, 1.0f);
  let x_1036 : f32 = u_xlat52;
  u_xlat82 = ((x_1036 * 4.0f) + 2.0f);
  let x_1039 : f32 = u_xlat26;
  u_xlat26 = min(x_1039, 1.0f);
  let x_1051 : f32 = x_1049.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1051);
  let x_1053 : bool = u_xlatb5;
  if (x_1053) {
    let x_1057 : f32 = x_1049.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1057 == 1.0f);
    let x_1059 : bool = u_xlatb5;
    if (x_1059) {
      let x_1063 : vec4<f32> = vs_TEXCOORD8;
      let x_1066 : vec4<f32> = x_1049.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) + x_1066);
      let x_1070 : vec4<f32> = u_xlat5;
      let x_1071 : vec2<f32> = vec2<f32>(x_1070.x, x_1070.y);
      let x_1073 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1071.x, x_1071.y, x_1073);
      let x_1085 : vec3<f32> = txVec0;
      let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1085.xy, x_1085.z);
      u_xlat6.x = x_1087;
      let x_1090 : vec4<f32> = u_xlat5;
      let x_1091 : vec2<f32> = vec2<f32>(x_1090.z, x_1090.w);
      let x_1093 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1091.x, x_1091.y, x_1093);
      let x_1100 : vec3<f32> = txVec1;
      let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
      u_xlat6.y = x_1102;
      let x_1104 : vec4<f32> = vs_TEXCOORD8;
      let x_1107 : vec4<f32> = x_1049.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y) + x_1107);
      let x_1110 : vec4<f32> = u_xlat5;
      let x_1111 : vec2<f32> = vec2<f32>(x_1110.x, x_1110.y);
      let x_1113 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
      let x_1120 : vec3<f32> = txVec2;
      let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1120.xy, x_1120.z);
      u_xlat6.z = x_1122;
      let x_1125 : vec4<f32> = u_xlat5;
      let x_1126 : vec2<f32> = vec2<f32>(x_1125.z, x_1125.w);
      let x_1128 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
      let x_1135 : vec3<f32> = txVec3;
      let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1135.xy, x_1135.z);
      u_xlat6.w = x_1137;
      let x_1139 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1139, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1147 : f32 = x_1049.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1147 == 2.0f);
      let x_1149 : bool = u_xlatb31;
      if (x_1149) {
        let x_1153 : vec4<f32> = vs_TEXCOORD8;
        let x_1156 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.z, x_1156.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1160 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1159.x, x_1159.y, x_1160.z);
        let x_1162 : vec3<f32> = u_xlat31;
        let x_1164 : vec2<f32> = floor(vec2<f32>(x_1162.x, x_1162.y));
        let x_1165 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1164.x, x_1164.y, x_1165.z);
        let x_1167 : vec4<f32> = vs_TEXCOORD8;
        let x_1170 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1173 : vec3<f32> = u_xlat31;
        let x_1176 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.z, x_1170.w)) + -(vec2<f32>(x_1173.x, x_1173.y)));
        let x_1177 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1179.x, x_1179.x, x_1179.y, x_1179.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1183.x, x_1183.x, x_1183.z, x_1183.z) * vec4<f32>(x_1185.x, x_1185.x, x_1185.z, x_1185.z));
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_1190.y, x_1190.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1201 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1198.x, x_1198.y)));
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1201.x, x_1202.y, x_1201.y, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1208 : vec2<f32> = (-(vec2<f32>(x_1204.x, x_1204.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1212 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_1212.x, x_1212.y), vec2<f32>(0.0f, 0.0f));
        let x_1216 : vec2<f32> = u_xlat60;
        let x_1218 : vec2<f32> = u_xlat60;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_1216) * x_1218) + vec2<f32>(x_1220.x, x_1220.y));
        let x_1223 : vec4<f32> = u_xlat6;
        let x_1225 : vec2<f32> = max(vec2<f32>(x_1223.x, x_1223.y), vec2<f32>(0.0f, 0.0f));
        let x_1226 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = u_xlat6;
        let x_1234 : vec4<f32> = u_xlat7;
        let x_1236 : vec2<f32> = ((-(vec2<f32>(x_1228.x, x_1228.y)) * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.y, x_1234.w));
        let x_1237 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_1239 + vec2<f32>(1.0f, 1.0f));
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1243 : vec2<f32> = (vec2<f32>(x_1241.x, x_1241.y) + vec2<f32>(1.0f, 1.0f));
        let x_1244 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1243.x, x_1243.y, x_1244.z, x_1244.w);
        let x_1246 : vec4<f32> = u_xlat7;
        let x_1250 : vec2<f32> = (vec2<f32>(x_1246.x, x_1246.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1250.x, x_1250.y, x_1251.z, x_1251.w);
        let x_1253 : vec4<f32> = u_xlat8;
        let x_1255 : vec2<f32> = (vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1256 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
        let x_1258 : vec2<f32> = u_xlat60;
        let x_1259 : vec2<f32> = (x_1258 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
        let x_1262 : vec4<f32> = u_xlat6;
        let x_1264 : vec2<f32> = (vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1265 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1269 : vec2<f32> = (vec2<f32>(x_1267.y, x_1267.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1270 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
        let x_1273 : f32 = u_xlat8.x;
        u_xlat9.z = x_1273;
        let x_1276 : f32 = u_xlat6.x;
        u_xlat9.w = x_1276;
        let x_1279 : f32 = u_xlat11.x;
        u_xlat10.z = x_1279;
        let x_1282 : f32 = u_xlat58.x;
        u_xlat10.w = x_1282;
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1284.z, x_1284.w, x_1284.x, x_1284.z) + vec4<f32>(x_1286.z, x_1286.w, x_1286.x, x_1286.z));
        let x_1290 : f32 = u_xlat9.y;
        u_xlat8.z = x_1290;
        let x_1293 : f32 = u_xlat6.y;
        u_xlat8.w = x_1293;
        let x_1296 : f32 = u_xlat10.y;
        u_xlat11.z = x_1296;
        let x_1299 : f32 = u_xlat58.y;
        u_xlat11.w = x_1299;
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1305 : vec3<f32> = (vec3<f32>(x_1301.z, x_1301.y, x_1301.w) + vec3<f32>(x_1303.z, x_1303.y, x_1303.w));
        let x_1306 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat10;
        let x_1310 : vec4<f32> = u_xlat7;
        let x_1312 : vec3<f32> = (vec3<f32>(x_1308.x, x_1308.z, x_1308.w) / vec3<f32>(x_1310.z, x_1310.w, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1321 : vec3<f32> = (vec3<f32>(x_1315.x, x_1315.y, x_1315.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1322 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1326 : vec4<f32> = u_xlat6;
        let x_1328 : vec3<f32> = (vec3<f32>(x_1324.z, x_1324.y, x_1324.w) / vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1333 : vec3<f32> = (vec3<f32>(x_1331.x, x_1331.y, x_1331.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1339 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1341 : vec3<f32> = (vec3<f32>(x_1336.y, x_1336.x, x_1336.z) * vec3<f32>(x_1339.x, x_1339.x, x_1339.x));
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
        let x_1344 : vec4<f32> = u_xlat9;
        let x_1347 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1349 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) * vec3<f32>(x_1347.y, x_1347.y, x_1347.y));
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
        let x_1353 : f32 = u_xlat9.x;
        u_xlat8.w = x_1353;
        let x_1355 : vec3<f32> = u_xlat31;
        let x_1358 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.y, x_1361.w, x_1361.x, x_1361.w));
        let x_1364 : vec3<f32> = u_xlat31;
        let x_1367 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat8;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.z, x_1370.w));
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat8.y;
        u_xlat9.w = x_1376;
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.y, x_1378.z);
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1380.x, x_1379.x, x_1380.z, x_1379.y);
        let x_1382 : vec3<f32> = u_xlat31;
        let x_1385 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y) * vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y)) + vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1388.y));
        let x_1391 : vec3<f32> = u_xlat31;
        let x_1394 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y) * vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.y)) + vec4<f32>(x_1397.w, x_1397.y, x_1397.w, x_1397.z));
        let x_1400 : vec3<f32> = u_xlat31;
        let x_1403 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1406 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1400.x, x_1400.y, x_1400.x, x_1400.y) * vec4<f32>(x_1403.x, x_1403.y, x_1403.x, x_1403.y)) + vec4<f32>(x_1406.x, x_1406.w, x_1406.z, x_1406.w));
        let x_1409 : vec4<f32> = u_xlat6;
        let x_1411 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1409.x, x_1409.x, x_1409.x, x_1409.y) * vec4<f32>(x_1411.z, x_1411.w, x_1411.y, x_1411.z));
        let x_1415 : vec4<f32> = u_xlat6;
        let x_1417 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1415.y, x_1415.y, x_1415.z, x_1415.z) * x_1417);
        let x_1420 : f32 = u_xlat6.z;
        let x_1422 : f32 = u_xlat7.y;
        u_xlat31.x = (x_1420 * x_1422);
        let x_1426 : vec4<f32> = u_xlat10;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1437 : vec3<f32> = txVec4;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat57.x = x_1439;
        let x_1442 : vec4<f32> = u_xlat10;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1453 : vec3<f32> = txVec5;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat83 = x_1455;
        let x_1456 : f32 = u_xlat83;
        let x_1458 : f32 = u_xlat13.y;
        u_xlat83 = (x_1456 * x_1458);
        let x_1461 : f32 = u_xlat13.x;
        let x_1463 : f32 = u_xlat57.x;
        let x_1465 : f32 = u_xlat83;
        u_xlat57.x = ((x_1461 * x_1463) + x_1465);
        let x_1469 : vec4<f32> = u_xlat11;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.x, x_1469.y);
        let x_1472 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec6;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat83 = x_1481;
        let x_1483 : f32 = u_xlat13.z;
        let x_1484 : f32 = u_xlat83;
        let x_1487 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1483 * x_1484) + x_1487);
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec7;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat83 = x_1503;
        let x_1505 : f32 = u_xlat13.w;
        let x_1506 : f32 = u_xlat83;
        let x_1509 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1505 * x_1506) + x_1509);
        let x_1513 : vec4<f32> = u_xlat12;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.x, x_1513.y);
        let x_1516 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec8;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat83 = x_1525;
        let x_1527 : f32 = u_xlat14.x;
        let x_1528 : f32 = u_xlat83;
        let x_1531 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1527 * x_1528) + x_1531);
        let x_1535 : vec4<f32> = u_xlat12;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.z, x_1535.w);
        let x_1538 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec9;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat83 = x_1547;
        let x_1549 : f32 = u_xlat14.y;
        let x_1550 : f32 = u_xlat83;
        let x_1553 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1549 * x_1550) + x_1553);
        let x_1557 : vec4<f32> = u_xlat9;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.z, x_1557.w);
        let x_1560 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec10;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
        u_xlat83 = x_1569;
        let x_1571 : f32 = u_xlat14.z;
        let x_1572 : f32 = u_xlat83;
        let x_1575 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1571 * x_1572) + x_1575);
        let x_1579 : vec4<f32> = u_xlat8;
        let x_1580 : vec2<f32> = vec2<f32>(x_1579.x, x_1579.y);
        let x_1582 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1580.x, x_1580.y, x_1582);
        let x_1589 : vec3<f32> = txVec11;
        let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1589.xy, x_1589.z);
        u_xlat83 = x_1591;
        let x_1593 : f32 = u_xlat14.w;
        let x_1594 : f32 = u_xlat83;
        let x_1597 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1593 * x_1594) + x_1597);
        let x_1601 : vec4<f32> = u_xlat8;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.z, x_1601.w);
        let x_1604 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec12;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1611.xy, x_1611.z);
        u_xlat83 = x_1613;
        let x_1615 : f32 = u_xlat31.x;
        let x_1616 : f32 = u_xlat83;
        let x_1619 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_1615 * x_1616) + x_1619);
      } else {
        let x_1623 : vec4<f32> = vs_TEXCOORD8;
        let x_1626 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1629 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.y) * vec2<f32>(x_1626.z, x_1626.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1630 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1629.x, x_1629.y, x_1630.z);
        let x_1632 : vec3<f32> = u_xlat31;
        let x_1634 : vec2<f32> = floor(vec2<f32>(x_1632.x, x_1632.y));
        let x_1635 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1634.x, x_1634.y, x_1635.z);
        let x_1637 : vec4<f32> = vs_TEXCOORD8;
        let x_1640 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1643 : vec3<f32> = u_xlat31;
        let x_1646 : vec2<f32> = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(x_1640.z, x_1640.w)) + -(vec2<f32>(x_1643.x, x_1643.y)));
        let x_1647 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1646.x, x_1646.y, x_1647.z, x_1647.w);
        let x_1649 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1649.x, x_1649.x, x_1649.y, x_1649.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1654 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1652.x, x_1652.x, x_1652.z, x_1652.z) * vec4<f32>(x_1654.x, x_1654.x, x_1654.z, x_1654.z));
        let x_1657 : vec4<f32> = u_xlat8;
        let x_1661 : vec2<f32> = (vec2<f32>(x_1657.y, x_1657.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1662.x, x_1661.x, x_1662.z, x_1661.y);
        let x_1664 : vec4<f32> = u_xlat8;
        let x_1667 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1664.x, x_1664.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1667.x, x_1667.y)));
        let x_1671 : vec4<f32> = u_xlat6;
        let x_1674 : vec2<f32> = (-(vec2<f32>(x_1671.x, x_1671.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1675 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1675.w);
        let x_1677 : vec4<f32> = u_xlat6;
        let x_1679 : vec2<f32> = min(vec2<f32>(x_1677.x, x_1677.y), vec2<f32>(0.0f, 0.0f));
        let x_1680 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1685 : vec4<f32> = u_xlat8;
        let x_1688 : vec4<f32> = u_xlat7;
        let x_1690 : vec2<f32> = ((-(vec2<f32>(x_1682.x, x_1682.y)) * vec2<f32>(x_1685.x, x_1685.y)) + vec2<f32>(x_1688.x, x_1688.z));
        let x_1691 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1690.x, x_1691.y, x_1690.y, x_1691.w);
        let x_1693 : vec4<f32> = u_xlat6;
        let x_1695 : vec2<f32> = max(vec2<f32>(x_1693.x, x_1693.y), vec2<f32>(0.0f, 0.0f));
        let x_1696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1695.x, x_1695.y, x_1696.z, x_1696.w);
        let x_1698 : vec4<f32> = u_xlat8;
        let x_1701 : vec4<f32> = u_xlat8;
        let x_1704 : vec4<f32> = u_xlat7;
        let x_1706 : vec2<f32> = ((-(vec2<f32>(x_1698.x, x_1698.y)) * vec2<f32>(x_1701.x, x_1701.y)) + vec2<f32>(x_1704.y, x_1704.w));
        let x_1707 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1707.x, x_1706.x, x_1707.z, x_1706.y);
        let x_1709 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1709 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1713 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1713 * 0.08163200318813323975f);
        let x_1717 : vec2<f32> = u_xlat58;
        let x_1720 : vec2<f32> = (vec2<f32>(x_1717.y, x_1717.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1721 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
        let x_1723 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1723.x, x_1723.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1727 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1727 * 0.08163200318813323975f);
        let x_1731 : f32 = u_xlat10.y;
        u_xlat8.x = x_1731;
        let x_1733 : vec4<f32> = u_xlat6;
        let x_1740 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1741 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1741.x, x_1740.x, x_1741.z, x_1740.y);
        let x_1743 : vec4<f32> = u_xlat6;
        let x_1747 : vec2<f32> = ((vec2<f32>(x_1743.x, x_1743.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1748 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1747.x, x_1748.y, x_1747.y, x_1748.w);
        let x_1751 : f32 = u_xlat58.x;
        u_xlat7.y = x_1751;
        let x_1754 : f32 = u_xlat9.y;
        u_xlat7.w = x_1754;
        let x_1756 : vec4<f32> = u_xlat7;
        let x_1757 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1756 + x_1757);
        let x_1759 : vec4<f32> = u_xlat6;
        let x_1762 : vec2<f32> = ((vec2<f32>(x_1759.y, x_1759.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1763.x, x_1762.x, x_1763.z, x_1762.y);
        let x_1765 : vec4<f32> = u_xlat6;
        let x_1768 : vec2<f32> = ((vec2<f32>(x_1765.y, x_1765.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1769 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1768.x, x_1769.y, x_1768.y, x_1769.w);
        let x_1772 : f32 = u_xlat58.y;
        u_xlat9.y = x_1772;
        let x_1774 : vec4<f32> = u_xlat9;
        let x_1775 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1774 + x_1775);
        let x_1777 : vec4<f32> = u_xlat7;
        let x_1778 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1777 / x_1778);
        let x_1780 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1780 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1786 : vec4<f32> = u_xlat9;
        let x_1787 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1786 / x_1787);
        let x_1789 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1789 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1791 : vec4<f32> = u_xlat7;
        let x_1794 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1791.w, x_1791.x, x_1791.y, x_1791.z) * vec4<f32>(x_1794.x, x_1794.x, x_1794.x, x_1794.x));
        let x_1797 : vec4<f32> = u_xlat9;
        let x_1800 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1797.x, x_1797.w, x_1797.y, x_1797.z) * vec4<f32>(x_1800.y, x_1800.y, x_1800.y, x_1800.y));
        let x_1803 : vec4<f32> = u_xlat7;
        let x_1804 : vec3<f32> = vec3<f32>(x_1803.y, x_1803.z, x_1803.w);
        let x_1805 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1804.x, x_1805.y, x_1804.y, x_1804.z);
        let x_1808 : f32 = u_xlat9.x;
        u_xlat10.y = x_1808;
        let x_1810 : vec3<f32> = u_xlat31;
        let x_1813 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1816 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1810.x, x_1810.y, x_1810.x, x_1810.y) * vec4<f32>(x_1813.x, x_1813.y, x_1813.x, x_1813.y)) + vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1816.y));
        let x_1819 : vec3<f32> = u_xlat31;
        let x_1822 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1825 : vec4<f32> = u_xlat10;
        let x_1827 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.y) * vec2<f32>(x_1822.x, x_1822.y)) + vec2<f32>(x_1825.w, x_1825.y));
        let x_1828 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1827.x, x_1827.y, x_1828.z, x_1828.w);
        let x_1831 : f32 = u_xlat10.y;
        u_xlat7.y = x_1831;
        let x_1834 : f32 = u_xlat9.z;
        u_xlat10.y = x_1834;
        let x_1836 : vec3<f32> = u_xlat31;
        let x_1839 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1842 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1836.x, x_1836.y, x_1836.x, x_1836.y) * vec4<f32>(x_1839.x, x_1839.y, x_1839.x, x_1839.y)) + vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1842.y));
        let x_1846 : vec3<f32> = u_xlat31;
        let x_1849 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1852 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1846.x, x_1846.y) * vec2<f32>(x_1849.x, x_1849.y)) + vec2<f32>(x_1852.w, x_1852.y));
        let x_1856 : f32 = u_xlat10.y;
        u_xlat7.z = x_1856;
        let x_1858 : vec3<f32> = u_xlat31;
        let x_1861 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1864 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1858.x, x_1858.y, x_1858.x, x_1858.y) * vec4<f32>(x_1861.x, x_1861.y, x_1861.x, x_1861.y)) + vec4<f32>(x_1864.x, x_1864.y, x_1864.x, x_1864.z));
        let x_1868 : f32 = u_xlat9.w;
        u_xlat10.y = x_1868;
        let x_1871 : vec3<f32> = u_xlat31;
        let x_1874 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1877 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1871.x, x_1871.y, x_1871.x, x_1871.y) * vec4<f32>(x_1874.x, x_1874.y, x_1874.x, x_1874.y)) + vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1877.y));
        let x_1881 : vec3<f32> = u_xlat31;
        let x_1884 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1887 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1881.x, x_1881.y) * vec2<f32>(x_1884.x, x_1884.y)) + vec2<f32>(x_1887.w, x_1887.y));
        let x_1891 : f32 = u_xlat10.y;
        u_xlat7.w = x_1891;
        let x_1894 : vec3<f32> = u_xlat31;
        let x_1897 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1900 : vec4<f32> = u_xlat7;
        let x_1902 : vec2<f32> = ((vec2<f32>(x_1894.x, x_1894.y) * vec2<f32>(x_1897.x, x_1897.y)) + vec2<f32>(x_1900.x, x_1900.w));
        let x_1903 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
        let x_1905 : vec4<f32> = u_xlat10;
        let x_1906 : vec3<f32> = vec3<f32>(x_1905.x, x_1905.z, x_1905.w);
        let x_1907 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1906.x, x_1907.y, x_1906.y, x_1906.z);
        let x_1909 : vec3<f32> = u_xlat31;
        let x_1912 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1915 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1909.x, x_1909.y, x_1909.x, x_1909.y) * vec4<f32>(x_1912.x, x_1912.y, x_1912.x, x_1912.y)) + vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1915.y));
        let x_1919 : vec3<f32> = u_xlat31;
        let x_1922 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1925 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1919.x, x_1919.y) * vec2<f32>(x_1922.x, x_1922.y)) + vec2<f32>(x_1925.w, x_1925.y));
        let x_1929 : f32 = u_xlat7.x;
        u_xlat9.x = x_1929;
        let x_1931 : vec3<f32> = u_xlat31;
        let x_1934 : vec4<f32> = x_1049.x_MainLightShadowmapSize;
        let x_1937 : vec4<f32> = u_xlat9;
        let x_1939 : vec2<f32> = ((vec2<f32>(x_1931.x, x_1931.y) * vec2<f32>(x_1934.x, x_1934.y)) + vec2<f32>(x_1937.x, x_1937.y));
        let x_1940 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1939.x, x_1939.y, x_1940.z);
        let x_1943 : vec4<f32> = u_xlat6;
        let x_1945 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1943.x, x_1943.x, x_1943.x, x_1943.x) * x_1945);
        let x_1948 : vec4<f32> = u_xlat6;
        let x_1950 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1948.y, x_1948.y, x_1948.y, x_1948.y) * x_1950);
        let x_1953 : vec4<f32> = u_xlat6;
        let x_1955 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1953.z, x_1953.z, x_1953.z, x_1953.z) * x_1955);
        let x_1957 : vec4<f32> = u_xlat6;
        let x_1959 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1957.w, x_1957.w, x_1957.w, x_1957.w) * x_1959);
        let x_1962 : vec4<f32> = u_xlat11;
        let x_1963 : vec2<f32> = vec2<f32>(x_1962.x, x_1962.y);
        let x_1965 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1963.x, x_1963.y, x_1965);
        let x_1972 : vec3<f32> = txVec13;
        let x_1974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1972.xy, x_1972.z);
        u_xlat83 = x_1974;
        let x_1976 : vec4<f32> = u_xlat11;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.z, x_1976.w);
        let x_1979 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec14;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1986.xy, x_1986.z);
        u_xlat7.x = x_1988;
        let x_1991 : f32 = u_xlat7.x;
        let x_1993 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1991 * x_1993);
        let x_1997 : f32 = u_xlat17.x;
        let x_1998 : f32 = u_xlat83;
        let x_2001 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1997 * x_1998) + x_2001);
        let x_2004 : vec4<f32> = u_xlat12;
        let x_2005 : vec2<f32> = vec2<f32>(x_2004.x, x_2004.y);
        let x_2007 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec15;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2014.xy, x_2014.z);
        u_xlat7.x = x_2016;
        let x_2019 : f32 = u_xlat17.z;
        let x_2021 : f32 = u_xlat7.x;
        let x_2023 : f32 = u_xlat83;
        u_xlat83 = ((x_2019 * x_2021) + x_2023);
        let x_2026 : vec4<f32> = u_xlat14;
        let x_2027 : vec2<f32> = vec2<f32>(x_2026.x, x_2026.y);
        let x_2029 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2027.x, x_2027.y, x_2029);
        let x_2036 : vec3<f32> = txVec16;
        let x_2038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2036.xy, x_2036.z);
        u_xlat7.x = x_2038;
        let x_2041 : f32 = u_xlat17.w;
        let x_2043 : f32 = u_xlat7.x;
        let x_2045 : f32 = u_xlat83;
        u_xlat83 = ((x_2041 * x_2043) + x_2045);
        let x_2048 : vec4<f32> = u_xlat13;
        let x_2049 : vec2<f32> = vec2<f32>(x_2048.x, x_2048.y);
        let x_2051 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2049.x, x_2049.y, x_2051);
        let x_2058 : vec3<f32> = txVec17;
        let x_2060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2058.xy, x_2058.z);
        u_xlat7.x = x_2060;
        let x_2063 : f32 = u_xlat18.x;
        let x_2065 : f32 = u_xlat7.x;
        let x_2067 : f32 = u_xlat83;
        u_xlat83 = ((x_2063 * x_2065) + x_2067);
        let x_2070 : vec4<f32> = u_xlat13;
        let x_2071 : vec2<f32> = vec2<f32>(x_2070.z, x_2070.w);
        let x_2073 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2071.x, x_2071.y, x_2073);
        let x_2080 : vec3<f32> = txVec18;
        let x_2082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2080.xy, x_2080.z);
        u_xlat7.x = x_2082;
        let x_2085 : f32 = u_xlat18.y;
        let x_2087 : f32 = u_xlat7.x;
        let x_2089 : f32 = u_xlat83;
        u_xlat83 = ((x_2085 * x_2087) + x_2089);
        let x_2092 : vec2<f32> = u_xlat64;
        let x_2094 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2101 : vec3<f32> = txVec19;
        let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2101.xy, x_2101.z);
        u_xlat7.x = x_2103;
        let x_2106 : f32 = u_xlat18.z;
        let x_2108 : f32 = u_xlat7.x;
        let x_2110 : f32 = u_xlat83;
        u_xlat83 = ((x_2106 * x_2108) + x_2110);
        let x_2113 : vec4<f32> = u_xlat14;
        let x_2114 : vec2<f32> = vec2<f32>(x_2113.z, x_2113.w);
        let x_2116 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2114.x, x_2114.y, x_2116);
        let x_2123 : vec3<f32> = txVec20;
        let x_2125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2123.xy, x_2123.z);
        u_xlat7.x = x_2125;
        let x_2128 : f32 = u_xlat18.w;
        let x_2130 : f32 = u_xlat7.x;
        let x_2132 : f32 = u_xlat83;
        u_xlat83 = ((x_2128 * x_2130) + x_2132);
        let x_2135 : vec4<f32> = u_xlat15;
        let x_2136 : vec2<f32> = vec2<f32>(x_2135.x, x_2135.y);
        let x_2138 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2136.x, x_2136.y, x_2138);
        let x_2145 : vec3<f32> = txVec21;
        let x_2147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2145.xy, x_2145.z);
        u_xlat7.x = x_2147;
        let x_2150 : f32 = u_xlat19.x;
        let x_2152 : f32 = u_xlat7.x;
        let x_2154 : f32 = u_xlat83;
        u_xlat83 = ((x_2150 * x_2152) + x_2154);
        let x_2157 : vec4<f32> = u_xlat15;
        let x_2158 : vec2<f32> = vec2<f32>(x_2157.z, x_2157.w);
        let x_2160 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2158.x, x_2158.y, x_2160);
        let x_2167 : vec3<f32> = txVec22;
        let x_2169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2167.xy, x_2167.z);
        u_xlat7.x = x_2169;
        let x_2172 : f32 = u_xlat19.y;
        let x_2174 : f32 = u_xlat7.x;
        let x_2176 : f32 = u_xlat83;
        u_xlat83 = ((x_2172 * x_2174) + x_2176);
        let x_2179 : vec2<f32> = u_xlat33;
        let x_2181 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2179.x, x_2179.y, x_2181);
        let x_2188 : vec3<f32> = txVec23;
        let x_2190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2188.xy, x_2188.z);
        u_xlat7.x = x_2190;
        let x_2193 : f32 = u_xlat19.z;
        let x_2195 : f32 = u_xlat7.x;
        let x_2197 : f32 = u_xlat83;
        u_xlat83 = ((x_2193 * x_2195) + x_2197);
        let x_2200 : vec4<f32> = u_xlat16;
        let x_2201 : vec2<f32> = vec2<f32>(x_2200.x, x_2200.y);
        let x_2203 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
        let x_2210 : vec3<f32> = txVec24;
        let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2210.xy, x_2210.z);
        u_xlat7.x = x_2212;
        let x_2215 : f32 = u_xlat19.w;
        let x_2217 : f32 = u_xlat7.x;
        let x_2219 : f32 = u_xlat83;
        u_xlat83 = ((x_2215 * x_2217) + x_2219);
        let x_2222 : vec4<f32> = u_xlat10;
        let x_2223 : vec2<f32> = vec2<f32>(x_2222.x, x_2222.y);
        let x_2225 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
        let x_2232 : vec3<f32> = txVec25;
        let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2232.xy, x_2232.z);
        u_xlat7.x = x_2234;
        let x_2237 : f32 = u_xlat6.x;
        let x_2239 : f32 = u_xlat7.x;
        let x_2241 : f32 = u_xlat83;
        u_xlat83 = ((x_2237 * x_2239) + x_2241);
        let x_2244 : vec4<f32> = u_xlat10;
        let x_2245 : vec2<f32> = vec2<f32>(x_2244.z, x_2244.w);
        let x_2247 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
        let x_2254 : vec3<f32> = txVec26;
        let x_2256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2254.xy, x_2254.z);
        u_xlat6.x = x_2256;
        let x_2259 : f32 = u_xlat6.y;
        let x_2261 : f32 = u_xlat6.x;
        let x_2263 : f32 = u_xlat83;
        u_xlat83 = ((x_2259 * x_2261) + x_2263);
        let x_2266 : vec2<f32> = u_xlat61;
        let x_2268 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
        let x_2275 : vec3<f32> = txVec27;
        let x_2277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2275.xy, x_2275.z);
        u_xlat6.x = x_2277;
        let x_2280 : f32 = u_xlat6.z;
        let x_2282 : f32 = u_xlat6.x;
        let x_2284 : f32 = u_xlat83;
        u_xlat83 = ((x_2280 * x_2282) + x_2284);
        let x_2287 : vec3<f32> = u_xlat31;
        let x_2288 : vec2<f32> = vec2<f32>(x_2287.x, x_2287.y);
        let x_2290 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2288.x, x_2288.y, x_2290);
        let x_2297 : vec3<f32> = txVec28;
        let x_2299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2297.xy, x_2297.z);
        u_xlat31.x = x_2299;
        let x_2302 : f32 = u_xlat6.w;
        let x_2304 : f32 = u_xlat31.x;
        let x_2306 : f32 = u_xlat83;
        u_xlat5.x = ((x_2302 * x_2304) + x_2306);
      }
    }
  } else {
    let x_2311 : vec4<f32> = vs_TEXCOORD8;
    let x_2312 : vec2<f32> = vec2<f32>(x_2311.x, x_2311.y);
    let x_2314 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2312.x, x_2312.y, x_2314);
    let x_2321 : vec3<f32> = txVec29;
    let x_2323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2321.xy, x_2321.z);
    u_xlat5.x = x_2323;
  }
  let x_2326 : f32 = x_1049.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_2326) + 1.0f);
  let x_2331 : f32 = u_xlat5.x;
  let x_2333 : f32 = x_1049.x_MainLightShadowParams.x;
  let x_2336 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_2331 * x_2333) + x_2336);
  let x_2340 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_2340);
  let x_2346 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_2346 >= 1.0f);
  let x_2350 : bool = u_xlatb57.x;
  let x_2351 : bool = u_xlatb31;
  u_xlatb31 = (x_2350 | x_2351);
  let x_2353 : bool = u_xlatb31;
  if (x_2353) {
    x_2355 = 1.0f;
  } else {
    let x_2360 : f32 = u_xlat5.x;
    x_2355 = x_2360;
  }
  let x_2361 : f32 = x_2355;
  u_xlat5.x = x_2361;
  let x_2363 : vec3<f32> = vs_TEXCOORD7;
  let x_2366 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2363 + -(x_2366));
  let x_2369 : vec3<f32> = u_xlat31;
  let x_2370 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_2369, x_2370);
  let x_2374 : f32 = u_xlat31.x;
  let x_2376 : f32 = x_1049.x_MainLightShadowParams.z;
  let x_2379 : f32 = x_1049.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_2374 * x_2376) + x_2379);
  let x_2383 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2383, 0.0f, 1.0f);
  let x_2387 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_2387) + 1.0f);
  let x_2391 : f32 = u_xlat57.x;
  let x_2392 : f32 = u_xlat83;
  let x_2395 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2391 * x_2392) + x_2395);
  let x_2405 : f32 = x_2403.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_2405 == -1.0f));
  let x_2409 : bool = u_xlatb57.x;
  if (x_2409) {
    let x_2412 : vec3<f32> = vs_TEXCOORD7;
    let x_2415 : vec4<f32> = x_2403.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_2412.y, x_2412.y) * vec2<f32>(x_2415.x, x_2415.y));
    let x_2419 : vec4<f32> = x_2403.x_MainLightWorldToLight[0i];
    let x_2421 : vec3<f32> = vs_TEXCOORD7;
    let x_2424 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2419.x, x_2419.y) * vec2<f32>(x_2421.x, x_2421.x)) + x_2424);
    let x_2427 : vec4<f32> = x_2403.x_MainLightWorldToLight[2i];
    let x_2429 : vec3<f32> = vs_TEXCOORD7;
    let x_2432 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2427.x, x_2427.y) * vec2<f32>(x_2429.z, x_2429.z)) + x_2432);
    let x_2434 : vec2<f32> = u_xlat57;
    let x_2436 : vec4<f32> = x_2403.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_2434 + vec2<f32>(x_2436.x, x_2436.y));
    let x_2439 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_2439 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2447 : vec2<f32> = u_xlat57;
    let x_2449 : f32 = x_29.x_GlobalMipBias.x;
    let x_2450 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2447, x_2449);
    u_xlat6 = x_2450;
    let x_2452 : f32 = x_2403.x_MainLightCookieTextureFormat;
    let x_2454 : f32 = x_2403.x_MainLightCookieTextureFormat;
    let x_2456 : f32 = x_2403.x_MainLightCookieTextureFormat;
    let x_2458 : f32 = x_2403.x_MainLightCookieTextureFormat;
    let x_2459 : vec4<f32> = vec4<f32>(x_2452, x_2454, x_2456, x_2458);
    let x_2466 : vec4<bool> = (vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2459.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_2466.x, x_2466.y);
    let x_2469 : bool = u_xlatb57.y;
    if (x_2469) {
      let x_2474 : f32 = u_xlat6.w;
      x_2470 = x_2474;
    } else {
      let x_2477 : f32 = u_xlat6.x;
      x_2470 = x_2477;
    }
    let x_2478 : f32 = x_2470;
    u_xlat83 = x_2478;
    let x_2480 : bool = u_xlatb57.x;
    if (x_2480) {
      let x_2484 : vec4<f32> = u_xlat6;
      x_2481 = vec3<f32>(x_2484.x, x_2484.y, x_2484.z);
    } else {
      let x_2487 : f32 = u_xlat83;
      x_2481 = vec3<f32>(x_2487, x_2487, x_2487);
    }
    let x_2489 : vec3<f32> = x_2481;
    let x_2490 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2496 : vec4<f32> = u_xlat6;
  let x_2499 : vec4<f32> = x_29.x_MainLightColor;
  let x_2501 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) * vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
  let x_2502 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
  let x_2505 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2505;
  let x_2508 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2508;
  let x_2511 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2511;
  let x_2513 : vec4<f32> = u_xlat7;
  let x_2516 : vec4<f32> = u_xlat1;
  u_xlat57.x = dot(-(vec3<f32>(x_2513.x, x_2513.y, x_2513.z)), vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
  let x_2521 : f32 = u_xlat57.x;
  let x_2523 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2521 + x_2523);
  let x_2526 : vec4<f32> = u_xlat1;
  let x_2528 : vec2<f32> = u_xlat57;
  let x_2532 : vec4<f32> = u_xlat7;
  let x_2535 : vec3<f32> = ((vec3<f32>(x_2526.x, x_2526.y, x_2526.z) * -(vec3<f32>(x_2528.x, x_2528.x, x_2528.x))) + -(vec3<f32>(x_2532.x, x_2532.y, x_2532.z)));
  let x_2536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
  let x_2538 : vec4<f32> = u_xlat1;
  let x_2540 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_2538.x, x_2538.y, x_2538.z), vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
  let x_2545 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2545, 0.0f, 1.0f);
  let x_2549 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_2549) + 1.0f);
  let x_2554 : f32 = u_xlat57.x;
  let x_2556 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2554 * x_2556);
  let x_2560 : f32 = u_xlat57.x;
  let x_2562 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2560 * x_2562);
  let x_2566 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2566) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2573 : f32 = u_xlat0.x;
  let x_2574 : f32 = u_xlat83;
  u_xlat0.x = (x_2573 * x_2574);
  let x_2578 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2578 * 6.0f);
  let x_2590 : vec4<f32> = u_xlat8;
  let x_2593 : f32 = u_xlat0.x;
  let x_2594 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2590.x, x_2590.y, x_2590.z), x_2593);
  u_xlat8 = x_2594;
  let x_2596 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2596 + -1.0f);
  let x_2600 : f32 = x_911.unity_SpecCube0_HDR.w;
  let x_2602 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2600 * x_2602) + 1.0f);
  let x_2607 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2607, 0.0f);
  let x_2611 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2611);
  let x_2615 : f32 = u_xlat0.x;
  let x_2617 : f32 = x_911.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2615 * x_2617);
  let x_2621 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2621);
  let x_2625 : f32 = u_xlat0.x;
  let x_2627 : f32 = x_911.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2625 * x_2627);
  let x_2630 : vec4<f32> = u_xlat8;
  let x_2632 : vec3<f32> = u_xlat0;
  let x_2634 : vec3<f32> = (vec3<f32>(x_2630.x, x_2630.y, x_2630.z) * vec3<f32>(x_2632.x, x_2632.x, x_2632.x));
  let x_2635 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
  let x_2637 : f32 = u_xlat52;
  let x_2639 : f32 = u_xlat52;
  let x_2643 : vec2<f32> = ((vec2<f32>(x_2637, x_2637) * vec2<f32>(x_2639, x_2639)) + vec2<f32>(-1.0f, 1.0f));
  let x_2644 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2643.x, x_2644.y, x_2643.y);
  let x_2647 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2647);
  let x_2649 : vec4<f32> = u_xlat4;
  let x_2652 : vec4<f32> = u_xlat3;
  let x_2654 : vec3<f32> = (-(vec3<f32>(x_2649.x, x_2649.y, x_2649.z)) + vec3<f32>(x_2652.x, x_2652.x, x_2652.x));
  let x_2655 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
  let x_2657 : vec2<f32> = u_xlat57;
  let x_2659 : vec4<f32> = u_xlat9;
  let x_2662 : vec4<f32> = u_xlat4;
  let x_2664 : vec3<f32> = ((vec3<f32>(x_2657.x, x_2657.x, x_2657.x) * vec3<f32>(x_2659.x, x_2659.y, x_2659.z)) + vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
  let x_2665 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
  let x_2667 : f32 = u_xlat52;
  let x_2669 : vec4<f32> = u_xlat9;
  let x_2671 : vec3<f32> = (vec3<f32>(x_2667, x_2667, x_2667) * vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
  let x_2672 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
  let x_2674 : vec4<f32> = u_xlat8;
  let x_2676 : vec4<f32> = u_xlat9;
  let x_2678 : vec3<f32> = (vec3<f32>(x_2674.x, x_2674.y, x_2674.z) * vec3<f32>(x_2676.x, x_2676.y, x_2676.z));
  let x_2679 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
  let x_2681 : vec3<f32> = u_xlat28;
  let x_2682 : vec3<f32> = u_xlat29;
  let x_2684 : vec4<f32> = u_xlat8;
  u_xlat28 = ((x_2681 * x_2682) + vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
  let x_2688 : f32 = u_xlat5.x;
  let x_2690 : f32 = x_911.unity_LightData.z;
  u_xlat52 = (x_2688 * x_2690);
  let x_2692 : vec4<f32> = u_xlat1;
  let x_2695 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2692.x, x_2692.y, x_2692.z), vec3<f32>(x_2695.x, x_2695.y, x_2695.z));
  let x_2700 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2700, 0.0f, 1.0f);
  let x_2703 : f32 = u_xlat52;
  let x_2705 : f32 = u_xlat3.x;
  u_xlat52 = (x_2703 * x_2705);
  let x_2707 : f32 = u_xlat52;
  let x_2709 : vec4<f32> = u_xlat6;
  let x_2711 : vec3<f32> = (vec3<f32>(x_2707, x_2707, x_2707) * vec3<f32>(x_2709.x, x_2709.y, x_2709.z));
  let x_2712 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2711.x, x_2712.y, x_2711.y, x_2711.z);
  let x_2714 : vec4<f32> = u_xlat7;
  let x_2717 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2719 : vec3<f32> = (vec3<f32>(x_2714.x, x_2714.y, x_2714.z) + vec3<f32>(x_2717.x, x_2717.y, x_2717.z));
  let x_2720 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2720.w);
  let x_2722 : vec4<f32> = u_xlat6;
  let x_2724 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2722.x, x_2722.y, x_2722.z), vec3<f32>(x_2724.x, x_2724.y, x_2724.z));
  let x_2727 : f32 = u_xlat52;
  u_xlat52 = max(x_2727, 1.17549435e-38f);
  let x_2730 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2730);
  let x_2732 : f32 = u_xlat52;
  let x_2734 : vec4<f32> = u_xlat6;
  let x_2736 : vec3<f32> = (vec3<f32>(x_2732, x_2732, x_2732) * vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
  let x_2737 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
  let x_2739 : vec4<f32> = u_xlat1;
  let x_2741 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2739.x, x_2739.y, x_2739.z), vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
  let x_2744 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2744, 0.0f, 1.0f);
  let x_2747 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2749 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_2747.x, x_2747.y, x_2747.z), vec3<f32>(x_2749.x, x_2749.y, x_2749.z));
  let x_2754 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2754, 0.0f, 1.0f);
  let x_2757 : f32 = u_xlat52;
  let x_2758 : f32 = u_xlat52;
  u_xlat52 = (x_2757 * x_2758);
  let x_2760 : f32 = u_xlat52;
  let x_2762 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2760 * x_2762) + 1.00001001358032226562f);
  let x_2767 : f32 = u_xlat3.x;
  let x_2769 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2767 * x_2769);
  let x_2772 : f32 = u_xlat52;
  let x_2773 : f32 = u_xlat52;
  u_xlat52 = (x_2772 * x_2773);
  let x_2776 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2776, 0.10000000149011611938f);
  let x_2780 : f32 = u_xlat52;
  let x_2782 : f32 = u_xlat3.x;
  u_xlat52 = (x_2780 * x_2782);
  let x_2784 : f32 = u_xlat82;
  let x_2785 : f32 = u_xlat52;
  u_xlat52 = (x_2784 * x_2785);
  let x_2787 : f32 = u_xlat79;
  let x_2788 : f32 = u_xlat52;
  u_xlat52 = (x_2787 / x_2788);
  let x_2790 : vec4<f32> = u_xlat4;
  let x_2792 : f32 = u_xlat52;
  let x_2795 : vec3<f32> = u_xlat29;
  let x_2796 : vec3<f32> = ((vec3<f32>(x_2790.x, x_2790.y, x_2790.z) * vec3<f32>(x_2792, x_2792, x_2792)) + x_2795);
  let x_2797 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
  let x_2799 : vec4<f32> = u_xlat5;
  let x_2801 : vec4<f32> = u_xlat6;
  let x_2803 : vec3<f32> = (vec3<f32>(x_2799.x, x_2799.z, x_2799.w) * vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
  let x_2804 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2803.x, x_2804.y, x_2803.y, x_2803.z);
  let x_2807 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2809 : f32 = x_911.unity_LightData.y;
  u_xlat52 = min(x_2807, x_2809);
  let x_2813 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2813));
  let x_2817 : f32 = u_xlat31.x;
  let x_2819 : f32 = x_1049.x_AdditionalShadowFadeParams.x;
  let x_2822 : f32 = x_1049.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2817 * x_2819) + x_2822);
  let x_2826 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2826, 0.0f, 1.0f);
  let x_2831 : f32 = x_2403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2833 : f32 = x_2403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2835 : f32 = x_2403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2837 : f32 = x_2403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2838 : vec4<f32> = vec4<f32>(x_2831, x_2833, x_2835, x_2837);
  let x_2845 : vec4<bool> = (vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2838.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2845.x, x_2845.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2857 : u32 = u_xlatu_loop_1;
    let x_2858 : u32 = u_xlatu52;
    if ((x_2857 < x_2858)) {
    } else {
      break;
    }
    let x_2861 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_2861 >> 2u);
    let x_2865 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2865 & 3u));
    let x_2868 : u32 = u_xlatu58;
    let x_2871 : vec4<f32> = x_911.unity_LightIndices[bitcast<i32>(x_2868)];
    let x_2881 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2886 : vec4<u32> = indexable[x_2881];
    u_xlat58.x = dot(x_2871, bitcast<vec4<f32>>(x_2886));
    let x_2892 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_2892);
    let x_2894 : vec3<f32> = vs_TEXCOORD7;
    let x_2905 : i32 = u_xlati58;
    let x_2907 : vec4<f32> = x_2904.x_AdditionalLightsPosition[x_2905];
    let x_2910 : i32 = u_xlati58;
    let x_2912 : vec4<f32> = x_2904.x_AdditionalLightsPosition[x_2910];
    let x_2914 : vec3<f32> = ((-(x_2894) * vec3<f32>(x_2907.w, x_2907.w, x_2907.w)) + vec3<f32>(x_2912.x, x_2912.y, x_2912.z));
    let x_2915 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
    let x_2918 : vec4<f32> = u_xlat9;
    let x_2920 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2918.x, x_2918.y, x_2918.z), vec3<f32>(x_2920.x, x_2920.y, x_2920.z));
    let x_2923 : f32 = u_xlat84;
    u_xlat84 = max(x_2923, 0.00006103515625f);
    let x_2926 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2926);
    let x_2928 : f32 = u_xlat85;
    let x_2930 : vec4<f32> = u_xlat9;
    let x_2932 : vec3<f32> = (vec3<f32>(x_2928, x_2928, x_2928) * vec3<f32>(x_2930.x, x_2930.y, x_2930.z));
    let x_2933 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2933.w);
    let x_2936 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2936);
    let x_2938 : f32 = u_xlat84;
    let x_2939 : i32 = u_xlati58;
    let x_2941 : f32 = x_2904.x_AdditionalLightsAttenuation[x_2939].x;
    u_xlat84 = (x_2938 * x_2941);
    let x_2943 : f32 = u_xlat84;
    let x_2945 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2943) * x_2945) + 1.0f);
    let x_2948 : f32 = u_xlat84;
    u_xlat84 = max(x_2948, 0.0f);
    let x_2950 : f32 = u_xlat84;
    let x_2951 : f32 = u_xlat84;
    u_xlat84 = (x_2950 * x_2951);
    let x_2953 : f32 = u_xlat84;
    let x_2954 : f32 = u_xlat86;
    u_xlat84 = (x_2953 * x_2954);
    let x_2956 : i32 = u_xlati58;
    let x_2958 : vec4<f32> = x_2904.x_AdditionalLightsSpotDir[x_2956];
    let x_2960 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2958.x, x_2958.y, x_2958.z), vec3<f32>(x_2960.x, x_2960.y, x_2960.z));
    let x_2963 : f32 = u_xlat86;
    let x_2964 : i32 = u_xlati58;
    let x_2966 : f32 = x_2904.x_AdditionalLightsAttenuation[x_2964].z;
    let x_2968 : i32 = u_xlati58;
    let x_2970 : f32 = x_2904.x_AdditionalLightsAttenuation[x_2968].w;
    u_xlat86 = ((x_2963 * x_2966) + x_2970);
    let x_2972 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2972, 0.0f, 1.0f);
    let x_2974 : f32 = u_xlat86;
    let x_2975 : f32 = u_xlat86;
    u_xlat86 = (x_2974 * x_2975);
    let x_2977 : f32 = u_xlat84;
    let x_2978 : f32 = u_xlat86;
    u_xlat84 = (x_2977 * x_2978);
    let x_2981 : i32 = u_xlati58;
    let x_2983 : f32 = x_1049.x_AdditionalShadowParams[x_2981].w;
    u_xlati86 = i32(x_2983);
    let x_2986 : i32 = u_xlati86;
    u_xlatb87 = (x_2986 >= 0i);
    let x_2988 : bool = u_xlatb87;
    if (x_2988) {
      let x_2992 : i32 = u_xlati58;
      let x_2994 : f32 = x_1049.x_AdditionalShadowParams[x_2992].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2994, x_2994, x_2994, x_2994))));
      let x_2998 : bool = u_xlatb87;
      if (x_2998) {
        let x_3003 : vec4<f32> = u_xlat10;
        let x_3006 : vec4<f32> = u_xlat10;
        let x_3009 : vec4<bool> = (abs(vec4<f32>(x_3003.z, x_3003.z, x_3003.y, x_3003.z)) >= abs(vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.x)));
        let x_3011 : vec3<bool> = vec3<bool>(x_3009.x, x_3009.y, x_3009.z);
        let x_3012 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3011.x, x_3011.y, x_3011.z, x_3012.w);
        let x_3015 : bool = u_xlatb11.y;
        let x_3017 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3015 & x_3017);
        let x_3019 : vec4<f32> = u_xlat10;
        let x_3022 : vec4<bool> = (-(vec4<f32>(x_3019.z, x_3019.y, x_3019.z, x_3019.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3023 : vec3<bool> = vec3<bool>(x_3022.x, x_3022.y, x_3022.w);
        let x_3024 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3023.x, x_3023.y, x_3024.z, x_3023.z);
        let x_3027 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3027);
        let x_3032 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3032);
        let x_3038 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3038);
        let x_3041 : bool = u_xlatb11.z;
        if (x_3041) {
          let x_3046 : f32 = u_xlat11.y;
          x_3042 = x_3046;
        } else {
          let x_3048 : f32 = u_xlat88;
          x_3042 = x_3048;
        }
        let x_3049 : f32 = x_3042;
        u_xlat88 = x_3049;
        let x_3051 : bool = u_xlatb87;
        if (x_3051) {
          let x_3056 : f32 = u_xlat11.x;
          x_3052 = x_3056;
        } else {
          let x_3058 : f32 = u_xlat88;
          x_3052 = x_3058;
        }
        let x_3059 : f32 = x_3052;
        u_xlat87 = x_3059;
        let x_3060 : i32 = u_xlati58;
        let x_3062 : f32 = x_1049.x_AdditionalShadowParams[x_3060].w;
        u_xlat88 = trunc(x_3062);
        let x_3064 : f32 = u_xlat87;
        let x_3065 : f32 = u_xlat88;
        u_xlat87 = (x_3064 + x_3065);
        let x_3067 : f32 = u_xlat87;
        u_xlati86 = i32(x_3067);
      }
      let x_3069 : i32 = u_xlati86;
      u_xlati86 = (x_3069 << bitcast<u32>(2i));
      let x_3071 : vec3<f32> = vs_TEXCOORD7;
      let x_3073 : i32 = u_xlati86;
      let x_3076 : i32 = u_xlati86;
      let x_3080 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[((x_3073 + 1i) / 4i)][((x_3076 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3071.y, x_3071.y, x_3071.y, x_3071.y) * x_3080);
      let x_3082 : i32 = u_xlati86;
      let x_3084 : i32 = u_xlati86;
      let x_3087 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[(x_3082 / 4i)][(x_3084 % 4i)];
      let x_3088 : vec3<f32> = vs_TEXCOORD7;
      let x_3091 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3087 * vec4<f32>(x_3088.x, x_3088.x, x_3088.x, x_3088.x)) + x_3091);
      let x_3093 : i32 = u_xlati86;
      let x_3096 : i32 = u_xlati86;
      let x_3100 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[((x_3093 + 2i) / 4i)][((x_3096 + 2i) % 4i)];
      let x_3101 : vec3<f32> = vs_TEXCOORD7;
      let x_3104 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3100 * vec4<f32>(x_3101.z, x_3101.z, x_3101.z, x_3101.z)) + x_3104);
      let x_3106 : vec4<f32> = u_xlat11;
      let x_3107 : i32 = u_xlati86;
      let x_3110 : i32 = u_xlati86;
      let x_3114 : vec4<f32> = x_1049.x_AdditionalLightsWorldToShadow[((x_3107 + 3i) / 4i)][((x_3110 + 3i) % 4i)];
      u_xlat11 = (x_3106 + x_3114);
      let x_3116 : vec4<f32> = u_xlat11;
      let x_3118 : vec4<f32> = u_xlat11;
      let x_3120 : vec3<f32> = (vec3<f32>(x_3116.x, x_3116.y, x_3116.z) / vec3<f32>(x_3118.w, x_3118.w, x_3118.w));
      let x_3121 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3120.x, x_3120.y, x_3120.z, x_3121.w);
      let x_3124 : i32 = u_xlati58;
      let x_3126 : f32 = x_1049.x_AdditionalShadowParams[x_3124].y;
      u_xlatb86 = (0.0f < x_3126);
      let x_3128 : bool = u_xlatb86;
      if (x_3128) {
        let x_3131 : i32 = u_xlati58;
        let x_3133 : f32 = x_1049.x_AdditionalShadowParams[x_3131].y;
        u_xlatb86 = (1.0f == x_3133);
        let x_3135 : bool = u_xlatb86;
        if (x_3135) {
          let x_3138 : vec4<f32> = u_xlat11;
          let x_3141 : vec4<f32> = x_1049.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3138.x, x_3138.y, x_3138.x, x_3138.y) + x_3141);
          let x_3144 : vec4<f32> = u_xlat12;
          let x_3145 : vec2<f32> = vec2<f32>(x_3144.x, x_3144.y);
          let x_3147 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
          let x_3155 : vec3<f32> = txVec30;
          let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
          u_xlat13.x = x_3157;
          let x_3160 : vec4<f32> = u_xlat12;
          let x_3161 : vec2<f32> = vec2<f32>(x_3160.z, x_3160.w);
          let x_3163 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
          let x_3170 : vec3<f32> = txVec31;
          let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
          u_xlat13.y = x_3172;
          let x_3174 : vec4<f32> = u_xlat11;
          let x_3177 : vec4<f32> = x_1049.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3174.x, x_3174.y, x_3174.x, x_3174.y) + x_3177);
          let x_3180 : vec4<f32> = u_xlat12;
          let x_3181 : vec2<f32> = vec2<f32>(x_3180.x, x_3180.y);
          let x_3183 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
          let x_3190 : vec3<f32> = txVec32;
          let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
          u_xlat13.z = x_3192;
          let x_3195 : vec4<f32> = u_xlat12;
          let x_3196 : vec2<f32> = vec2<f32>(x_3195.z, x_3195.w);
          let x_3198 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3196.x, x_3196.y, x_3198);
          let x_3205 : vec3<f32> = txVec33;
          let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
          u_xlat13.w = x_3207;
          let x_3209 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3209, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3212 : i32 = u_xlati58;
          let x_3214 : f32 = x_1049.x_AdditionalShadowParams[x_3212].y;
          u_xlatb87 = (2.0f == x_3214);
          let x_3216 : bool = u_xlatb87;
          if (x_3216) {
            let x_3219 : vec4<f32> = u_xlat11;
            let x_3222 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3225 : vec2<f32> = ((vec2<f32>(x_3219.x, x_3219.y) * vec2<f32>(x_3222.z, x_3222.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3226 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3225.x, x_3225.y, x_3226.z, x_3226.w);
            let x_3228 : vec4<f32> = u_xlat12;
            let x_3230 : vec2<f32> = floor(vec2<f32>(x_3228.x, x_3228.y));
            let x_3231 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3230.x, x_3230.y, x_3231.z, x_3231.w);
            let x_3233 : vec4<f32> = u_xlat11;
            let x_3236 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3233.x, x_3233.y) * vec2<f32>(x_3236.z, x_3236.w)) + -(vec2<f32>(x_3239.x, x_3239.y)));
            let x_3243 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3243.x, x_3243.x, x_3243.y, x_3243.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3246 : vec4<f32> = u_xlat13;
            let x_3248 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3246.x, x_3246.x, x_3246.z, x_3246.z) * vec4<f32>(x_3248.x, x_3248.x, x_3248.z, x_3248.z));
            let x_3251 : vec4<f32> = u_xlat14;
            let x_3253 : vec2<f32> = (vec2<f32>(x_3251.y, x_3251.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3254 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3253.x, x_3254.y, x_3253.y, x_3254.w);
            let x_3256 : vec4<f32> = u_xlat14;
            let x_3259 : vec2<f32> = u_xlat64;
            let x_3261 : vec2<f32> = ((vec2<f32>(x_3256.x, x_3256.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3259));
            let x_3262 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3261.x, x_3261.y, x_3262.z, x_3262.w);
            let x_3265 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3265) + vec2<f32>(1.0f, 1.0f));
            let x_3268 : vec2<f32> = u_xlat64;
            let x_3269 : vec2<f32> = min(x_3268, vec2<f32>(0.0f, 0.0f));
            let x_3270 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3269.x, x_3269.y, x_3270.z, x_3270.w);
            let x_3272 : vec4<f32> = u_xlat15;
            let x_3275 : vec4<f32> = u_xlat15;
            let x_3278 : vec2<f32> = u_xlat66;
            let x_3279 : vec2<f32> = ((-(vec2<f32>(x_3272.x, x_3272.y)) * vec2<f32>(x_3275.x, x_3275.y)) + x_3278);
            let x_3280 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3279.x, x_3279.y, x_3280.z, x_3280.w);
            let x_3282 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3282, vec2<f32>(0.0f, 0.0f));
            let x_3284 : vec2<f32> = u_xlat64;
            let x_3286 : vec2<f32> = u_xlat64;
            let x_3288 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3284) * x_3286) + vec2<f32>(x_3288.y, x_3288.w));
            let x_3291 : vec4<f32> = u_xlat15;
            let x_3293 : vec2<f32> = (vec2<f32>(x_3291.x, x_3291.y) + vec2<f32>(1.0f, 1.0f));
            let x_3294 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3293.x, x_3293.y, x_3294.z, x_3294.w);
            let x_3296 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3296 + vec2<f32>(1.0f, 1.0f));
            let x_3298 : vec4<f32> = u_xlat14;
            let x_3300 : vec2<f32> = (vec2<f32>(x_3298.x, x_3298.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3301 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3300.x, x_3300.y, x_3301.z, x_3301.w);
            let x_3303 : vec2<f32> = u_xlat66;
            let x_3304 : vec2<f32> = (x_3303 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3305 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3304.x, x_3304.y, x_3305.z, x_3305.w);
            let x_3307 : vec4<f32> = u_xlat15;
            let x_3309 : vec2<f32> = (vec2<f32>(x_3307.x, x_3307.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3310 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3309.x, x_3309.y, x_3310.z, x_3310.w);
            let x_3312 : vec2<f32> = u_xlat64;
            let x_3313 : vec2<f32> = (x_3312 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3314 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3313.x, x_3313.y, x_3314.z, x_3314.w);
            let x_3316 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3316.y, x_3316.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3320 : f32 = u_xlat15.x;
            u_xlat16.z = x_3320;
            let x_3323 : f32 = u_xlat64.x;
            u_xlat16.w = x_3323;
            let x_3326 : f32 = u_xlat17.x;
            u_xlat14.z = x_3326;
            let x_3329 : f32 = u_xlat13.x;
            u_xlat14.w = x_3329;
            let x_3331 : vec4<f32> = u_xlat14;
            let x_3333 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3331.z, x_3331.w, x_3331.x, x_3331.z) + vec4<f32>(x_3333.z, x_3333.w, x_3333.x, x_3333.z));
            let x_3337 : f32 = u_xlat16.y;
            u_xlat15.z = x_3337;
            let x_3340 : f32 = u_xlat64.y;
            u_xlat15.w = x_3340;
            let x_3343 : f32 = u_xlat14.y;
            u_xlat17.z = x_3343;
            let x_3346 : f32 = u_xlat13.z;
            u_xlat17.w = x_3346;
            let x_3348 : vec4<f32> = u_xlat15;
            let x_3350 : vec4<f32> = u_xlat17;
            let x_3352 : vec3<f32> = (vec3<f32>(x_3348.z, x_3348.y, x_3348.w) + vec3<f32>(x_3350.z, x_3350.y, x_3350.w));
            let x_3353 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3352.x, x_3352.y, x_3352.z, x_3353.w);
            let x_3355 : vec4<f32> = u_xlat14;
            let x_3357 : vec4<f32> = u_xlat18;
            let x_3359 : vec3<f32> = (vec3<f32>(x_3355.x, x_3355.z, x_3355.w) / vec3<f32>(x_3357.z, x_3357.w, x_3357.y));
            let x_3360 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3359.x, x_3359.y, x_3359.z, x_3360.w);
            let x_3362 : vec4<f32> = u_xlat14;
            let x_3364 : vec3<f32> = (vec3<f32>(x_3362.x, x_3362.y, x_3362.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3365 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3364.x, x_3364.y, x_3364.z, x_3365.w);
            let x_3367 : vec4<f32> = u_xlat17;
            let x_3369 : vec4<f32> = u_xlat13;
            let x_3371 : vec3<f32> = (vec3<f32>(x_3367.z, x_3367.y, x_3367.w) / vec3<f32>(x_3369.x, x_3369.y, x_3369.z));
            let x_3372 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3371.x, x_3371.y, x_3371.z, x_3372.w);
            let x_3374 : vec4<f32> = u_xlat15;
            let x_3376 : vec3<f32> = (vec3<f32>(x_3374.x, x_3374.y, x_3374.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3377 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3376.x, x_3376.y, x_3376.z, x_3377.w);
            let x_3379 : vec4<f32> = u_xlat14;
            let x_3382 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3384 : vec3<f32> = (vec3<f32>(x_3379.y, x_3379.x, x_3379.z) * vec3<f32>(x_3382.x, x_3382.x, x_3382.x));
            let x_3385 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3384.x, x_3384.y, x_3384.z, x_3385.w);
            let x_3387 : vec4<f32> = u_xlat15;
            let x_3390 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3392 : vec3<f32> = (vec3<f32>(x_3387.x, x_3387.y, x_3387.z) * vec3<f32>(x_3390.y, x_3390.y, x_3390.y));
            let x_3393 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3392.x, x_3392.y, x_3392.z, x_3393.w);
            let x_3396 : f32 = u_xlat15.x;
            u_xlat14.w = x_3396;
            let x_3398 : vec4<f32> = u_xlat12;
            let x_3401 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3404 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3398.x, x_3398.y, x_3398.x, x_3398.y) * vec4<f32>(x_3401.x, x_3401.y, x_3401.x, x_3401.y)) + vec4<f32>(x_3404.y, x_3404.w, x_3404.x, x_3404.w));
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3410 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3407.x, x_3407.y) * vec2<f32>(x_3410.x, x_3410.y)) + vec2<f32>(x_3413.z, x_3413.w));
            let x_3417 : f32 = u_xlat14.y;
            u_xlat15.w = x_3417;
            let x_3419 : vec4<f32> = u_xlat15;
            let x_3420 : vec2<f32> = vec2<f32>(x_3419.y, x_3419.z);
            let x_3421 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3421.x, x_3420.x, x_3421.z, x_3420.y);
            let x_3423 : vec4<f32> = u_xlat12;
            let x_3426 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3429 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3423.x, x_3423.y, x_3423.x, x_3423.y) * vec4<f32>(x_3426.x, x_3426.y, x_3426.x, x_3426.y)) + vec4<f32>(x_3429.x, x_3429.y, x_3429.z, x_3429.y));
            let x_3432 : vec4<f32> = u_xlat12;
            let x_3435 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3438 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3432.x, x_3432.y, x_3432.x, x_3432.y) * vec4<f32>(x_3435.x, x_3435.y, x_3435.x, x_3435.y)) + vec4<f32>(x_3438.w, x_3438.y, x_3438.w, x_3438.z));
            let x_3441 : vec4<f32> = u_xlat12;
            let x_3444 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3447 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3441.x, x_3441.y, x_3441.x, x_3441.y) * vec4<f32>(x_3444.x, x_3444.y, x_3444.x, x_3444.y)) + vec4<f32>(x_3447.x, x_3447.w, x_3447.z, x_3447.w));
            let x_3450 : vec4<f32> = u_xlat13;
            let x_3452 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3450.x, x_3450.x, x_3450.x, x_3450.y) * vec4<f32>(x_3452.z, x_3452.w, x_3452.y, x_3452.z));
            let x_3456 : vec4<f32> = u_xlat13;
            let x_3458 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3456.y, x_3456.y, x_3456.z, x_3456.z) * x_3458);
            let x_3461 : f32 = u_xlat13.z;
            let x_3463 : f32 = u_xlat18.y;
            u_xlat87 = (x_3461 * x_3463);
            let x_3466 : vec4<f32> = u_xlat16;
            let x_3467 : vec2<f32> = vec2<f32>(x_3466.x, x_3466.y);
            let x_3469 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
            let x_3476 : vec3<f32> = txVec34;
            let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
            u_xlat88 = x_3478;
            let x_3480 : vec4<f32> = u_xlat16;
            let x_3481 : vec2<f32> = vec2<f32>(x_3480.z, x_3480.w);
            let x_3483 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3481.x, x_3481.y, x_3483);
            let x_3491 : vec3<f32> = txVec35;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat89 = x_3493;
            let x_3494 : f32 = u_xlat89;
            let x_3496 : f32 = u_xlat19.y;
            u_xlat89 = (x_3494 * x_3496);
            let x_3499 : f32 = u_xlat19.x;
            let x_3500 : f32 = u_xlat88;
            let x_3502 : f32 = u_xlat89;
            u_xlat88 = ((x_3499 * x_3500) + x_3502);
            let x_3505 : vec2<f32> = u_xlat64;
            let x_3507 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3505.x, x_3505.y, x_3507);
            let x_3514 : vec3<f32> = txVec36;
            let x_3516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3514.xy, x_3514.z);
            u_xlat89 = x_3516;
            let x_3518 : f32 = u_xlat19.z;
            let x_3519 : f32 = u_xlat89;
            let x_3521 : f32 = u_xlat88;
            u_xlat88 = ((x_3518 * x_3519) + x_3521);
            let x_3524 : vec4<f32> = u_xlat15;
            let x_3525 : vec2<f32> = vec2<f32>(x_3524.x, x_3524.y);
            let x_3527 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3525.x, x_3525.y, x_3527);
            let x_3534 : vec3<f32> = txVec37;
            let x_3536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3534.xy, x_3534.z);
            u_xlat89 = x_3536;
            let x_3538 : f32 = u_xlat19.w;
            let x_3539 : f32 = u_xlat89;
            let x_3541 : f32 = u_xlat88;
            u_xlat88 = ((x_3538 * x_3539) + x_3541);
            let x_3544 : vec4<f32> = u_xlat17;
            let x_3545 : vec2<f32> = vec2<f32>(x_3544.x, x_3544.y);
            let x_3547 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3545.x, x_3545.y, x_3547);
            let x_3554 : vec3<f32> = txVec38;
            let x_3556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3554.xy, x_3554.z);
            u_xlat89 = x_3556;
            let x_3558 : f32 = u_xlat20.x;
            let x_3559 : f32 = u_xlat89;
            let x_3561 : f32 = u_xlat88;
            u_xlat88 = ((x_3558 * x_3559) + x_3561);
            let x_3564 : vec4<f32> = u_xlat17;
            let x_3565 : vec2<f32> = vec2<f32>(x_3564.z, x_3564.w);
            let x_3567 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3565.x, x_3565.y, x_3567);
            let x_3574 : vec3<f32> = txVec39;
            let x_3576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3574.xy, x_3574.z);
            u_xlat89 = x_3576;
            let x_3578 : f32 = u_xlat20.y;
            let x_3579 : f32 = u_xlat89;
            let x_3581 : f32 = u_xlat88;
            u_xlat88 = ((x_3578 * x_3579) + x_3581);
            let x_3584 : vec4<f32> = u_xlat15;
            let x_3585 : vec2<f32> = vec2<f32>(x_3584.z, x_3584.w);
            let x_3587 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3585.x, x_3585.y, x_3587);
            let x_3594 : vec3<f32> = txVec40;
            let x_3596 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3594.xy, x_3594.z);
            u_xlat89 = x_3596;
            let x_3598 : f32 = u_xlat20.z;
            let x_3599 : f32 = u_xlat89;
            let x_3601 : f32 = u_xlat88;
            u_xlat88 = ((x_3598 * x_3599) + x_3601);
            let x_3604 : vec4<f32> = u_xlat14;
            let x_3605 : vec2<f32> = vec2<f32>(x_3604.x, x_3604.y);
            let x_3607 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3605.x, x_3605.y, x_3607);
            let x_3614 : vec3<f32> = txVec41;
            let x_3616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3614.xy, x_3614.z);
            u_xlat89 = x_3616;
            let x_3618 : f32 = u_xlat20.w;
            let x_3619 : f32 = u_xlat89;
            let x_3621 : f32 = u_xlat88;
            u_xlat88 = ((x_3618 * x_3619) + x_3621);
            let x_3624 : vec4<f32> = u_xlat14;
            let x_3625 : vec2<f32> = vec2<f32>(x_3624.z, x_3624.w);
            let x_3627 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3625.x, x_3625.y, x_3627);
            let x_3634 : vec3<f32> = txVec42;
            let x_3636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3634.xy, x_3634.z);
            u_xlat89 = x_3636;
            let x_3637 : f32 = u_xlat87;
            let x_3638 : f32 = u_xlat89;
            let x_3640 : f32 = u_xlat88;
            u_xlat86 = ((x_3637 * x_3638) + x_3640);
          } else {
            let x_3643 : vec4<f32> = u_xlat11;
            let x_3646 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3649 : vec2<f32> = ((vec2<f32>(x_3643.x, x_3643.y) * vec2<f32>(x_3646.z, x_3646.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3650 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3649.x, x_3649.y, x_3650.z, x_3650.w);
            let x_3652 : vec4<f32> = u_xlat12;
            let x_3654 : vec2<f32> = floor(vec2<f32>(x_3652.x, x_3652.y));
            let x_3655 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3654.x, x_3654.y, x_3655.z, x_3655.w);
            let x_3657 : vec4<f32> = u_xlat11;
            let x_3660 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3663 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3660.z, x_3660.w)) + -(vec2<f32>(x_3663.x, x_3663.y)));
            let x_3667 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3667.x, x_3667.x, x_3667.y, x_3667.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3670 : vec4<f32> = u_xlat13;
            let x_3672 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3670.x, x_3670.x, x_3670.z, x_3670.z) * vec4<f32>(x_3672.x, x_3672.x, x_3672.z, x_3672.z));
            let x_3675 : vec4<f32> = u_xlat14;
            let x_3677 : vec2<f32> = (vec2<f32>(x_3675.y, x_3675.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3678 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3678.x, x_3677.x, x_3678.z, x_3677.y);
            let x_3680 : vec4<f32> = u_xlat14;
            let x_3683 : vec2<f32> = u_xlat64;
            let x_3685 : vec2<f32> = ((vec2<f32>(x_3680.x, x_3680.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3683));
            let x_3686 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3685.x, x_3686.y, x_3685.y, x_3686.w);
            let x_3688 : vec2<f32> = u_xlat64;
            let x_3690 : vec2<f32> = (-(x_3688) + vec2<f32>(1.0f, 1.0f));
            let x_3691 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3690.x, x_3690.y, x_3691.z, x_3691.w);
            let x_3693 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3693, vec2<f32>(0.0f, 0.0f));
            let x_3695 : vec2<f32> = u_xlat66;
            let x_3697 : vec2<f32> = u_xlat66;
            let x_3699 : vec4<f32> = u_xlat14;
            let x_3701 : vec2<f32> = ((-(x_3695) * x_3697) + vec2<f32>(x_3699.x, x_3699.y));
            let x_3702 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3701.x, x_3701.y, x_3702.z, x_3702.w);
            let x_3704 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3704, vec2<f32>(0.0f, 0.0f));
            let x_3707 : vec2<f32> = u_xlat66;
            let x_3709 : vec2<f32> = u_xlat66;
            let x_3711 : vec4<f32> = u_xlat13;
            let x_3713 : vec2<f32> = ((-(x_3707) * x_3709) + vec2<f32>(x_3711.y, x_3711.w));
            let x_3714 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3713.x, x_3714.y, x_3713.y);
            let x_3716 : vec4<f32> = u_xlat14;
            let x_3718 : vec2<f32> = (vec2<f32>(x_3716.x, x_3716.y) + vec2<f32>(2.0f, 2.0f));
            let x_3719 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3718.x, x_3718.y, x_3719.z, x_3719.w);
            let x_3721 : vec3<f32> = u_xlat39;
            let x_3723 : vec2<f32> = (vec2<f32>(x_3721.x, x_3721.z) + vec2<f32>(2.0f, 2.0f));
            let x_3724 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3724.x, x_3723.x, x_3724.z, x_3723.y);
            let x_3727 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3727 * 0.08163200318813323975f);
            let x_3730 : vec4<f32> = u_xlat13;
            let x_3733 : vec3<f32> = (vec3<f32>(x_3730.z, x_3730.x, x_3730.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3734 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3733.x, x_3733.y, x_3733.z, x_3734.w);
            let x_3736 : vec4<f32> = u_xlat14;
            let x_3738 : vec2<f32> = (vec2<f32>(x_3736.x, x_3736.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3739 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3738.x, x_3738.y, x_3739.z, x_3739.w);
            let x_3742 : f32 = u_xlat17.y;
            u_xlat16.x = x_3742;
            let x_3744 : vec2<f32> = u_xlat64;
            let x_3747 : vec2<f32> = ((vec2<f32>(x_3744.x, x_3744.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3748 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3748.x, x_3747.x, x_3748.z, x_3747.y);
            let x_3750 : vec2<f32> = u_xlat64;
            let x_3753 : vec2<f32> = ((vec2<f32>(x_3750.x, x_3750.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3754 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3753.x, x_3754.y, x_3753.y, x_3754.w);
            let x_3757 : f32 = u_xlat13.x;
            u_xlat14.y = x_3757;
            let x_3760 : f32 = u_xlat15.y;
            u_xlat14.w = x_3760;
            let x_3762 : vec4<f32> = u_xlat14;
            let x_3763 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3762 + x_3763);
            let x_3765 : vec2<f32> = u_xlat64;
            let x_3768 : vec2<f32> = ((vec2<f32>(x_3765.y, x_3765.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3769 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3769.x, x_3768.x, x_3769.z, x_3768.y);
            let x_3771 : vec2<f32> = u_xlat64;
            let x_3774 : vec2<f32> = ((vec2<f32>(x_3771.y, x_3771.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3775 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3774.x, x_3775.y, x_3774.y, x_3775.w);
            let x_3778 : f32 = u_xlat13.y;
            u_xlat15.y = x_3778;
            let x_3780 : vec4<f32> = u_xlat15;
            let x_3781 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3780 + x_3781);
            let x_3783 : vec4<f32> = u_xlat14;
            let x_3784 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3783 / x_3784);
            let x_3786 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3786 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3788 : vec4<f32> = u_xlat15;
            let x_3789 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3788 / x_3789);
            let x_3791 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3791 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3793 : vec4<f32> = u_xlat14;
            let x_3796 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3793.w, x_3793.x, x_3793.y, x_3793.z) * vec4<f32>(x_3796.x, x_3796.x, x_3796.x, x_3796.x));
            let x_3799 : vec4<f32> = u_xlat15;
            let x_3802 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3799.x, x_3799.w, x_3799.y, x_3799.z) * vec4<f32>(x_3802.y, x_3802.y, x_3802.y, x_3802.y));
            let x_3805 : vec4<f32> = u_xlat14;
            let x_3806 : vec3<f32> = vec3<f32>(x_3805.y, x_3805.z, x_3805.w);
            let x_3807 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3806.x, x_3807.y, x_3806.y, x_3806.z);
            let x_3810 : f32 = u_xlat15.x;
            u_xlat17.y = x_3810;
            let x_3812 : vec4<f32> = u_xlat12;
            let x_3815 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3818 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3812.x, x_3812.y, x_3812.x, x_3812.y) * vec4<f32>(x_3815.x, x_3815.y, x_3815.x, x_3815.y)) + vec4<f32>(x_3818.x, x_3818.y, x_3818.z, x_3818.y));
            let x_3821 : vec4<f32> = u_xlat12;
            let x_3824 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3827 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3821.x, x_3821.y) * vec2<f32>(x_3824.x, x_3824.y)) + vec2<f32>(x_3827.w, x_3827.y));
            let x_3831 : f32 = u_xlat17.y;
            u_xlat14.y = x_3831;
            let x_3834 : f32 = u_xlat15.z;
            u_xlat17.y = x_3834;
            let x_3836 : vec4<f32> = u_xlat12;
            let x_3839 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3842 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3836.x, x_3836.y, x_3836.x, x_3836.y) * vec4<f32>(x_3839.x, x_3839.y, x_3839.x, x_3839.y)) + vec4<f32>(x_3842.x, x_3842.y, x_3842.z, x_3842.y));
            let x_3845 : vec4<f32> = u_xlat12;
            let x_3848 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3851 : vec4<f32> = u_xlat17;
            let x_3853 : vec2<f32> = ((vec2<f32>(x_3845.x, x_3845.y) * vec2<f32>(x_3848.x, x_3848.y)) + vec2<f32>(x_3851.w, x_3851.y));
            let x_3854 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3853.x, x_3853.y, x_3854.z, x_3854.w);
            let x_3857 : f32 = u_xlat17.y;
            u_xlat14.z = x_3857;
            let x_3860 : vec4<f32> = u_xlat12;
            let x_3863 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3866 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3860.x, x_3860.y, x_3860.x, x_3860.y) * vec4<f32>(x_3863.x, x_3863.y, x_3863.x, x_3863.y)) + vec4<f32>(x_3866.x, x_3866.y, x_3866.x, x_3866.z));
            let x_3870 : f32 = u_xlat15.w;
            u_xlat17.y = x_3870;
            let x_3873 : vec4<f32> = u_xlat12;
            let x_3876 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3879 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3873.x, x_3873.y, x_3873.x, x_3873.y) * vec4<f32>(x_3876.x, x_3876.y, x_3876.x, x_3876.y)) + vec4<f32>(x_3879.x, x_3879.y, x_3879.z, x_3879.y));
            let x_3883 : vec4<f32> = u_xlat12;
            let x_3886 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3889 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3883.x, x_3883.y) * vec2<f32>(x_3886.x, x_3886.y)) + vec2<f32>(x_3889.w, x_3889.y));
            let x_3893 : f32 = u_xlat17.y;
            u_xlat14.w = x_3893;
            let x_3896 : vec4<f32> = u_xlat12;
            let x_3899 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3902 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3896.x, x_3896.y) * vec2<f32>(x_3899.x, x_3899.y)) + vec2<f32>(x_3902.x, x_3902.w));
            let x_3905 : vec4<f32> = u_xlat17;
            let x_3906 : vec3<f32> = vec3<f32>(x_3905.x, x_3905.z, x_3905.w);
            let x_3907 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3906.x, x_3907.y, x_3906.y, x_3906.z);
            let x_3909 : vec4<f32> = u_xlat12;
            let x_3912 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3915 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3909.x, x_3909.y, x_3909.x, x_3909.y) * vec4<f32>(x_3912.x, x_3912.y, x_3912.x, x_3912.y)) + vec4<f32>(x_3915.x, x_3915.y, x_3915.z, x_3915.y));
            let x_3919 : vec4<f32> = u_xlat12;
            let x_3922 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3925 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3919.x, x_3919.y) * vec2<f32>(x_3922.x, x_3922.y)) + vec2<f32>(x_3925.w, x_3925.y));
            let x_3929 : f32 = u_xlat14.x;
            u_xlat15.x = x_3929;
            let x_3931 : vec4<f32> = u_xlat12;
            let x_3934 : vec4<f32> = x_1049.x_AdditionalShadowmapSize;
            let x_3937 : vec4<f32> = u_xlat15;
            let x_3939 : vec2<f32> = ((vec2<f32>(x_3931.x, x_3931.y) * vec2<f32>(x_3934.x, x_3934.y)) + vec2<f32>(x_3937.x, x_3937.y));
            let x_3940 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3939.x, x_3939.y, x_3940.z, x_3940.w);
            let x_3943 : vec4<f32> = u_xlat13;
            let x_3945 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3943.x, x_3943.x, x_3943.x, x_3943.x) * x_3945);
            let x_3948 : vec4<f32> = u_xlat13;
            let x_3950 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3948.y, x_3948.y, x_3948.y, x_3948.y) * x_3950);
            let x_3953 : vec4<f32> = u_xlat13;
            let x_3955 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3953.z, x_3953.z, x_3953.z, x_3953.z) * x_3955);
            let x_3957 : vec4<f32> = u_xlat13;
            let x_3959 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3957.w, x_3957.w, x_3957.w, x_3957.w) * x_3959);
            let x_3962 : vec4<f32> = u_xlat18;
            let x_3963 : vec2<f32> = vec2<f32>(x_3962.x, x_3962.y);
            let x_3965 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3963.x, x_3963.y, x_3965);
            let x_3972 : vec3<f32> = txVec43;
            let x_3974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3972.xy, x_3972.z);
            u_xlat87 = x_3974;
            let x_3976 : vec4<f32> = u_xlat18;
            let x_3977 : vec2<f32> = vec2<f32>(x_3976.z, x_3976.w);
            let x_3979 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3977.x, x_3977.y, x_3979);
            let x_3986 : vec3<f32> = txVec44;
            let x_3988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3986.xy, x_3986.z);
            u_xlat88 = x_3988;
            let x_3989 : f32 = u_xlat88;
            let x_3991 : f32 = u_xlat23.y;
            u_xlat88 = (x_3989 * x_3991);
            let x_3994 : f32 = u_xlat23.x;
            let x_3995 : f32 = u_xlat87;
            let x_3997 : f32 = u_xlat88;
            u_xlat87 = ((x_3994 * x_3995) + x_3997);
            let x_4000 : vec2<f32> = u_xlat64;
            let x_4002 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4000.x, x_4000.y, x_4002);
            let x_4009 : vec3<f32> = txVec45;
            let x_4011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4009.xy, x_4009.z);
            u_xlat88 = x_4011;
            let x_4013 : f32 = u_xlat23.z;
            let x_4014 : f32 = u_xlat88;
            let x_4016 : f32 = u_xlat87;
            u_xlat87 = ((x_4013 * x_4014) + x_4016);
            let x_4019 : vec4<f32> = u_xlat21;
            let x_4020 : vec2<f32> = vec2<f32>(x_4019.x, x_4019.y);
            let x_4022 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4020.x, x_4020.y, x_4022);
            let x_4029 : vec3<f32> = txVec46;
            let x_4031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4029.xy, x_4029.z);
            u_xlat88 = x_4031;
            let x_4033 : f32 = u_xlat23.w;
            let x_4034 : f32 = u_xlat88;
            let x_4036 : f32 = u_xlat87;
            u_xlat87 = ((x_4033 * x_4034) + x_4036);
            let x_4039 : vec4<f32> = u_xlat19;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.x, x_4039.y);
            let x_4042 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec47;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat88 = x_4051;
            let x_4053 : f32 = u_xlat24.x;
            let x_4054 : f32 = u_xlat88;
            let x_4056 : f32 = u_xlat87;
            u_xlat87 = ((x_4053 * x_4054) + x_4056);
            let x_4059 : vec4<f32> = u_xlat19;
            let x_4060 : vec2<f32> = vec2<f32>(x_4059.z, x_4059.w);
            let x_4062 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4060.x, x_4060.y, x_4062);
            let x_4069 : vec3<f32> = txVec48;
            let x_4071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4069.xy, x_4069.z);
            u_xlat88 = x_4071;
            let x_4073 : f32 = u_xlat24.y;
            let x_4074 : f32 = u_xlat88;
            let x_4076 : f32 = u_xlat87;
            u_xlat87 = ((x_4073 * x_4074) + x_4076);
            let x_4079 : vec4<f32> = u_xlat20;
            let x_4080 : vec2<f32> = vec2<f32>(x_4079.x, x_4079.y);
            let x_4082 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4080.x, x_4080.y, x_4082);
            let x_4089 : vec3<f32> = txVec49;
            let x_4091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4089.xy, x_4089.z);
            u_xlat88 = x_4091;
            let x_4093 : f32 = u_xlat24.z;
            let x_4094 : f32 = u_xlat88;
            let x_4096 : f32 = u_xlat87;
            u_xlat87 = ((x_4093 * x_4094) + x_4096);
            let x_4099 : vec4<f32> = u_xlat21;
            let x_4100 : vec2<f32> = vec2<f32>(x_4099.z, x_4099.w);
            let x_4102 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4100.x, x_4100.y, x_4102);
            let x_4109 : vec3<f32> = txVec50;
            let x_4111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4109.xy, x_4109.z);
            u_xlat88 = x_4111;
            let x_4113 : f32 = u_xlat24.w;
            let x_4114 : f32 = u_xlat88;
            let x_4116 : f32 = u_xlat87;
            u_xlat87 = ((x_4113 * x_4114) + x_4116);
            let x_4119 : vec4<f32> = u_xlat22;
            let x_4120 : vec2<f32> = vec2<f32>(x_4119.x, x_4119.y);
            let x_4122 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4120.x, x_4120.y, x_4122);
            let x_4129 : vec3<f32> = txVec51;
            let x_4131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4129.xy, x_4129.z);
            u_xlat88 = x_4131;
            let x_4133 : f32 = u_xlat25.x;
            let x_4134 : f32 = u_xlat88;
            let x_4136 : f32 = u_xlat87;
            u_xlat87 = ((x_4133 * x_4134) + x_4136);
            let x_4139 : vec4<f32> = u_xlat22;
            let x_4140 : vec2<f32> = vec2<f32>(x_4139.z, x_4139.w);
            let x_4142 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4140.x, x_4140.y, x_4142);
            let x_4149 : vec3<f32> = txVec52;
            let x_4151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4149.xy, x_4149.z);
            u_xlat88 = x_4151;
            let x_4153 : f32 = u_xlat25.y;
            let x_4154 : f32 = u_xlat88;
            let x_4156 : f32 = u_xlat87;
            u_xlat87 = ((x_4153 * x_4154) + x_4156);
            let x_4159 : vec2<f32> = u_xlat40;
            let x_4161 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4159.x, x_4159.y, x_4161);
            let x_4168 : vec3<f32> = txVec53;
            let x_4170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4168.xy, x_4168.z);
            u_xlat88 = x_4170;
            let x_4172 : f32 = u_xlat25.z;
            let x_4173 : f32 = u_xlat88;
            let x_4175 : f32 = u_xlat87;
            u_xlat87 = ((x_4172 * x_4173) + x_4175);
            let x_4178 : vec2<f32> = u_xlat72;
            let x_4180 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4178.x, x_4178.y, x_4180);
            let x_4187 : vec3<f32> = txVec54;
            let x_4189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4187.xy, x_4187.z);
            u_xlat88 = x_4189;
            let x_4191 : f32 = u_xlat25.w;
            let x_4192 : f32 = u_xlat88;
            let x_4194 : f32 = u_xlat87;
            u_xlat87 = ((x_4191 * x_4192) + x_4194);
            let x_4197 : vec4<f32> = u_xlat17;
            let x_4198 : vec2<f32> = vec2<f32>(x_4197.x, x_4197.y);
            let x_4200 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4198.x, x_4198.y, x_4200);
            let x_4207 : vec3<f32> = txVec55;
            let x_4209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4207.xy, x_4207.z);
            u_xlat88 = x_4209;
            let x_4211 : f32 = u_xlat13.x;
            let x_4212 : f32 = u_xlat88;
            let x_4214 : f32 = u_xlat87;
            u_xlat87 = ((x_4211 * x_4212) + x_4214);
            let x_4217 : vec4<f32> = u_xlat17;
            let x_4218 : vec2<f32> = vec2<f32>(x_4217.z, x_4217.w);
            let x_4220 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4218.x, x_4218.y, x_4220);
            let x_4227 : vec3<f32> = txVec56;
            let x_4229 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4227.xy, x_4227.z);
            u_xlat88 = x_4229;
            let x_4231 : f32 = u_xlat13.y;
            let x_4232 : f32 = u_xlat88;
            let x_4234 : f32 = u_xlat87;
            u_xlat87 = ((x_4231 * x_4232) + x_4234);
            let x_4237 : vec2<f32> = u_xlat67;
            let x_4239 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4237.x, x_4237.y, x_4239);
            let x_4246 : vec3<f32> = txVec57;
            let x_4248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4246.xy, x_4246.z);
            u_xlat88 = x_4248;
            let x_4250 : f32 = u_xlat13.z;
            let x_4251 : f32 = u_xlat88;
            let x_4253 : f32 = u_xlat87;
            u_xlat87 = ((x_4250 * x_4251) + x_4253);
            let x_4256 : vec4<f32> = u_xlat12;
            let x_4257 : vec2<f32> = vec2<f32>(x_4256.x, x_4256.y);
            let x_4259 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4257.x, x_4257.y, x_4259);
            let x_4266 : vec3<f32> = txVec58;
            let x_4268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4266.xy, x_4266.z);
            u_xlat88 = x_4268;
            let x_4270 : f32 = u_xlat13.w;
            let x_4271 : f32 = u_xlat88;
            let x_4273 : f32 = u_xlat87;
            u_xlat86 = ((x_4270 * x_4271) + x_4273);
          }
        }
      } else {
        let x_4277 : vec4<f32> = u_xlat11;
        let x_4278 : vec2<f32> = vec2<f32>(x_4277.x, x_4277.y);
        let x_4280 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4278.x, x_4278.y, x_4280);
        let x_4287 : vec3<f32> = txVec59;
        let x_4289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4287.xy, x_4287.z);
        u_xlat86 = x_4289;
      }
      let x_4290 : i32 = u_xlati58;
      let x_4292 : f32 = x_1049.x_AdditionalShadowParams[x_4290].x;
      u_xlat87 = (1.0f + -(x_4292));
      let x_4295 : f32 = u_xlat86;
      let x_4296 : i32 = u_xlati58;
      let x_4298 : f32 = x_1049.x_AdditionalShadowParams[x_4296].x;
      let x_4300 : f32 = u_xlat87;
      u_xlat86 = ((x_4295 * x_4298) + x_4300);
      let x_4303 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4303);
      let x_4307 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4307 >= 1.0f);
      let x_4309 : bool = u_xlatb87;
      let x_4310 : bool = u_xlatb88;
      u_xlatb87 = (x_4309 | x_4310);
      let x_4312 : bool = u_xlatb87;
      let x_4313 : f32 = u_xlat86;
      u_xlat86 = select(x_4313, 1.0f, x_4312);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4316 : f32 = u_xlat86;
    u_xlat87 = (-(x_4316) + 1.0f);
    let x_4320 : f32 = u_xlat3.x;
    let x_4321 : f32 = u_xlat87;
    let x_4323 : f32 = u_xlat86;
    u_xlat86 = ((x_4320 * x_4321) + x_4323);
    let x_4326 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_4326 & 31i)));
    let x_4329 : i32 = u_xlati87;
    let x_4332 : f32 = x_2403.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4329) & bitcast<u32>(x_4332)));
    let x_4336 : i32 = u_xlati87;
    if ((x_4336 != 0i)) {
      let x_4340 : i32 = u_xlati58;
      let x_4342 : f32 = x_2403.x_AdditionalLightsLightTypes[x_4340].el;
      u_xlati87 = i32(x_4342);
      let x_4345 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4345 != 0i));
      let x_4349 : i32 = u_xlati58;
      u_xlati11 = (x_4349 << bitcast<u32>(2i));
      let x_4351 : i32 = u_xlati88;
      if ((x_4351 != 0i)) {
        let x_4356 : vec3<f32> = vs_TEXCOORD7;
        let x_4358 : i32 = u_xlati11;
        let x_4361 : i32 = u_xlati11;
        let x_4365 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4358 + 1i) / 4i)][((x_4361 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4356.y, x_4356.y, x_4356.y) * vec3<f32>(x_4365.x, x_4365.y, x_4365.w));
        let x_4368 : i32 = u_xlati11;
        let x_4370 : i32 = u_xlati11;
        let x_4373 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[(x_4368 / 4i)][(x_4370 % 4i)];
        let x_4375 : vec3<f32> = vs_TEXCOORD7;
        let x_4378 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4373.x, x_4373.y, x_4373.w) * vec3<f32>(x_4375.x, x_4375.x, x_4375.x)) + x_4378);
        let x_4380 : i32 = u_xlati11;
        let x_4383 : i32 = u_xlati11;
        let x_4387 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4380 + 2i) / 4i)][((x_4383 + 2i) % 4i)];
        let x_4389 : vec3<f32> = vs_TEXCOORD7;
        let x_4392 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4387.x, x_4387.y, x_4387.w) * vec3<f32>(x_4389.z, x_4389.z, x_4389.z)) + x_4392);
        let x_4394 : vec3<f32> = u_xlat37;
        let x_4395 : i32 = u_xlati11;
        let x_4398 : i32 = u_xlati11;
        let x_4402 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4395 + 3i) / 4i)][((x_4398 + 3i) % 4i)];
        u_xlat37 = (x_4394 + vec3<f32>(x_4402.x, x_4402.y, x_4402.w));
        let x_4405 : vec3<f32> = u_xlat37;
        let x_4407 : vec3<f32> = u_xlat37;
        let x_4409 : vec2<f32> = (vec2<f32>(x_4405.x, x_4405.y) / vec2<f32>(x_4407.z, x_4407.z));
        let x_4410 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4409.x, x_4409.y, x_4410.z);
        let x_4412 : vec3<f32> = u_xlat37;
        let x_4415 : vec2<f32> = ((vec2<f32>(x_4412.x, x_4412.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4416 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4415.x, x_4415.y, x_4416.z);
        let x_4418 : vec3<f32> = u_xlat37;
        let x_4422 : vec2<f32> = clamp(vec2<f32>(x_4418.x, x_4418.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4423 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4422.x, x_4422.y, x_4423.z);
        let x_4425 : i32 = u_xlati58;
        let x_4427 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[x_4425];
        let x_4429 : vec3<f32> = u_xlat37;
        let x_4432 : i32 = u_xlati58;
        let x_4434 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[x_4432];
        let x_4436 : vec2<f32> = ((vec2<f32>(x_4427.x, x_4427.y) * vec2<f32>(x_4429.x, x_4429.y)) + vec2<f32>(x_4434.z, x_4434.w));
        let x_4437 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4436.x, x_4436.y, x_4437.z);
      } else {
        let x_4440 : i32 = u_xlati87;
        u_xlatb87 = (x_4440 == 1i);
        let x_4442 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4442);
        let x_4444 : i32 = u_xlati87;
        if ((x_4444 != 0i)) {
          let x_4448 : vec3<f32> = vs_TEXCOORD7;
          let x_4450 : i32 = u_xlati11;
          let x_4453 : i32 = u_xlati11;
          let x_4457 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4450 + 1i) / 4i)][((x_4453 + 1i) % 4i)];
          let x_4459 : vec2<f32> = (vec2<f32>(x_4448.y, x_4448.y) * vec2<f32>(x_4457.x, x_4457.y));
          let x_4460 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4459.x, x_4459.y, x_4460.z, x_4460.w);
          let x_4462 : i32 = u_xlati11;
          let x_4464 : i32 = u_xlati11;
          let x_4467 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[(x_4462 / 4i)][(x_4464 % 4i)];
          let x_4469 : vec3<f32> = vs_TEXCOORD7;
          let x_4472 : vec4<f32> = u_xlat12;
          let x_4474 : vec2<f32> = ((vec2<f32>(x_4467.x, x_4467.y) * vec2<f32>(x_4469.x, x_4469.x)) + vec2<f32>(x_4472.x, x_4472.y));
          let x_4475 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4474.x, x_4474.y, x_4475.z, x_4475.w);
          let x_4477 : i32 = u_xlati11;
          let x_4480 : i32 = u_xlati11;
          let x_4484 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4477 + 2i) / 4i)][((x_4480 + 2i) % 4i)];
          let x_4486 : vec3<f32> = vs_TEXCOORD7;
          let x_4489 : vec4<f32> = u_xlat12;
          let x_4491 : vec2<f32> = ((vec2<f32>(x_4484.x, x_4484.y) * vec2<f32>(x_4486.z, x_4486.z)) + vec2<f32>(x_4489.x, x_4489.y));
          let x_4492 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4491.x, x_4491.y, x_4492.z, x_4492.w);
          let x_4494 : vec4<f32> = u_xlat12;
          let x_4496 : i32 = u_xlati11;
          let x_4499 : i32 = u_xlati11;
          let x_4503 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4496 + 3i) / 4i)][((x_4499 + 3i) % 4i)];
          let x_4505 : vec2<f32> = (vec2<f32>(x_4494.x, x_4494.y) + vec2<f32>(x_4503.x, x_4503.y));
          let x_4506 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4505.x, x_4505.y, x_4506.z, x_4506.w);
          let x_4508 : vec4<f32> = u_xlat12;
          let x_4511 : vec2<f32> = ((vec2<f32>(x_4508.x, x_4508.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4512 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4511.x, x_4511.y, x_4512.z, x_4512.w);
          let x_4514 : vec4<f32> = u_xlat12;
          let x_4516 : vec2<f32> = fract(vec2<f32>(x_4514.x, x_4514.y));
          let x_4517 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4516.x, x_4516.y, x_4517.z, x_4517.w);
          let x_4519 : i32 = u_xlati58;
          let x_4521 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[x_4519];
          let x_4523 : vec4<f32> = u_xlat12;
          let x_4526 : i32 = u_xlati58;
          let x_4528 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[x_4526];
          let x_4530 : vec2<f32> = ((vec2<f32>(x_4521.x, x_4521.y) * vec2<f32>(x_4523.x, x_4523.y)) + vec2<f32>(x_4528.z, x_4528.w));
          let x_4531 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4530.x, x_4530.y, x_4531.z);
        } else {
          let x_4534 : vec3<f32> = vs_TEXCOORD7;
          let x_4536 : i32 = u_xlati11;
          let x_4539 : i32 = u_xlati11;
          let x_4543 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4536 + 1i) / 4i)][((x_4539 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4534.y, x_4534.y, x_4534.y, x_4534.y) * x_4543);
          let x_4545 : i32 = u_xlati11;
          let x_4547 : i32 = u_xlati11;
          let x_4550 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[(x_4545 / 4i)][(x_4547 % 4i)];
          let x_4551 : vec3<f32> = vs_TEXCOORD7;
          let x_4554 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4550 * vec4<f32>(x_4551.x, x_4551.x, x_4551.x, x_4551.x)) + x_4554);
          let x_4556 : i32 = u_xlati11;
          let x_4559 : i32 = u_xlati11;
          let x_4563 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4556 + 2i) / 4i)][((x_4559 + 2i) % 4i)];
          let x_4564 : vec3<f32> = vs_TEXCOORD7;
          let x_4567 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4563 * vec4<f32>(x_4564.z, x_4564.z, x_4564.z, x_4564.z)) + x_4567);
          let x_4569 : vec4<f32> = u_xlat12;
          let x_4570 : i32 = u_xlati11;
          let x_4573 : i32 = u_xlati11;
          let x_4577 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_4570 + 3i) / 4i)][((x_4573 + 3i) % 4i)];
          u_xlat12 = (x_4569 + x_4577);
          let x_4579 : vec4<f32> = u_xlat12;
          let x_4581 : vec4<f32> = u_xlat12;
          let x_4583 : vec3<f32> = (vec3<f32>(x_4579.x, x_4579.y, x_4579.z) / vec3<f32>(x_4581.w, x_4581.w, x_4581.w));
          let x_4584 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4583.x, x_4583.y, x_4583.z, x_4584.w);
          let x_4586 : vec4<f32> = u_xlat12;
          let x_4588 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4586.x, x_4586.y, x_4586.z), vec3<f32>(x_4588.x, x_4588.y, x_4588.z));
          let x_4591 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4591);
          let x_4593 : f32 = u_xlat87;
          let x_4595 : vec4<f32> = u_xlat12;
          let x_4597 : vec3<f32> = (vec3<f32>(x_4593, x_4593, x_4593) * vec3<f32>(x_4595.x, x_4595.y, x_4595.z));
          let x_4598 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4597.x, x_4597.y, x_4597.z, x_4598.w);
          let x_4600 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4600.x, x_4600.y, x_4600.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4605 : f32 = u_xlat87;
          u_xlat87 = max(x_4605, 0.00000099999999747524f);
          let x_4608 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4608);
          let x_4610 : f32 = u_xlat87;
          let x_4612 : vec4<f32> = u_xlat12;
          let x_4614 : vec3<f32> = (vec3<f32>(x_4610, x_4610, x_4610) * vec3<f32>(x_4612.z, x_4612.x, x_4612.y));
          let x_4615 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4614.x, x_4614.y, x_4614.z, x_4615.w);
          let x_4618 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4618);
          let x_4622 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4622, 0.0f, 1.0f);
          let x_4625 : vec4<f32> = u_xlat13;
          let x_4627 : vec4<bool> = (vec4<f32>(x_4625.y, x_4625.y, x_4625.y, x_4625.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4628 : vec2<bool> = vec2<bool>(x_4627.x, x_4627.w);
          let x_4629 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4628.x, x_4629.y, x_4629.z, x_4628.y);
          let x_4632 : bool = u_xlatb11.x;
          if (x_4632) {
            let x_4637 : f32 = u_xlat13.x;
            x_4633 = x_4637;
          } else {
            let x_4640 : f32 = u_xlat13.x;
            x_4633 = -(x_4640);
          }
          let x_4642 : f32 = x_4633;
          u_xlat11.x = x_4642;
          let x_4645 : bool = u_xlatb11.w;
          if (x_4645) {
            let x_4650 : f32 = u_xlat13.x;
            x_4646 = x_4650;
          } else {
            let x_4653 : f32 = u_xlat13.x;
            x_4646 = -(x_4653);
          }
          let x_4655 : f32 = x_4646;
          u_xlat11.w = x_4655;
          let x_4657 : vec4<f32> = u_xlat12;
          let x_4659 : f32 = u_xlat87;
          let x_4662 : vec4<f32> = u_xlat11;
          let x_4664 : vec2<f32> = ((vec2<f32>(x_4657.x, x_4657.y) * vec2<f32>(x_4659, x_4659)) + vec2<f32>(x_4662.x, x_4662.w));
          let x_4665 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4664.x, x_4665.y, x_4665.z, x_4664.y);
          let x_4667 : vec4<f32> = u_xlat11;
          let x_4670 : vec2<f32> = ((vec2<f32>(x_4667.x, x_4667.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4671 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4670.x, x_4671.y, x_4671.z, x_4670.y);
          let x_4673 : vec4<f32> = u_xlat11;
          let x_4677 : vec2<f32> = clamp(vec2<f32>(x_4673.x, x_4673.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4678 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4677.x, x_4678.y, x_4678.z, x_4677.y);
          let x_4680 : i32 = u_xlati58;
          let x_4682 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[x_4680];
          let x_4684 : vec4<f32> = u_xlat11;
          let x_4687 : i32 = u_xlati58;
          let x_4689 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[x_4687];
          let x_4691 : vec2<f32> = ((vec2<f32>(x_4682.x, x_4682.y) * vec2<f32>(x_4684.x, x_4684.w)) + vec2<f32>(x_4689.z, x_4689.w));
          let x_4692 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4691.x, x_4691.y, x_4692.z);
        }
      }
      let x_4699 : vec3<f32> = u_xlat37;
      let x_4701 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4699.x, x_4699.y), 0.0f);
      u_xlat11 = x_4701;
      let x_4703 : bool = u_xlatb6.y;
      if (x_4703) {
        let x_4708 : f32 = u_xlat11.w;
        x_4704 = x_4708;
      } else {
        let x_4711 : f32 = u_xlat11.x;
        x_4704 = x_4711;
      }
      let x_4712 : f32 = x_4704;
      u_xlat87 = x_4712;
      let x_4714 : bool = u_xlatb6.x;
      if (x_4714) {
        let x_4718 : vec4<f32> = u_xlat11;
        x_4715 = vec3<f32>(x_4718.x, x_4718.y, x_4718.z);
      } else {
        let x_4721 : f32 = u_xlat87;
        x_4715 = vec3<f32>(x_4721, x_4721, x_4721);
      }
      let x_4723 : vec3<f32> = x_4715;
      let x_4724 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4723.x, x_4723.y, x_4723.z, x_4724.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4730 : vec4<f32> = u_xlat11;
    let x_4732 : i32 = u_xlati58;
    let x_4734 : vec4<f32> = x_2904.x_AdditionalLightsColor[x_4732];
    let x_4736 : vec3<f32> = (vec3<f32>(x_4730.x, x_4730.y, x_4730.z) * vec3<f32>(x_4734.x, x_4734.y, x_4734.z));
    let x_4737 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4736.x, x_4736.y, x_4736.z, x_4737.w);
    let x_4739 : f32 = u_xlat84;
    let x_4740 : f32 = u_xlat86;
    u_xlat58.x = (x_4739 * x_4740);
    let x_4743 : vec4<f32> = u_xlat1;
    let x_4745 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4743.x, x_4743.y, x_4743.z), vec3<f32>(x_4745.x, x_4745.y, x_4745.z));
    let x_4748 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4748, 0.0f, 1.0f);
    let x_4750 : f32 = u_xlat84;
    let x_4752 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4750 * x_4752);
    let x_4755 : vec2<f32> = u_xlat58;
    let x_4757 : vec4<f32> = u_xlat11;
    let x_4759 : vec3<f32> = (vec3<f32>(x_4755.x, x_4755.x, x_4755.x) * vec3<f32>(x_4757.x, x_4757.y, x_4757.z));
    let x_4760 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4759.x, x_4759.y, x_4759.z, x_4760.w);
    let x_4762 : vec4<f32> = u_xlat9;
    let x_4764 : f32 = u_xlat85;
    let x_4767 : vec4<f32> = u_xlat7;
    let x_4769 : vec3<f32> = ((vec3<f32>(x_4762.x, x_4762.y, x_4762.z) * vec3<f32>(x_4764, x_4764, x_4764)) + vec3<f32>(x_4767.x, x_4767.y, x_4767.z));
    let x_4770 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4769.x, x_4769.y, x_4769.z, x_4770.w);
    let x_4772 : vec4<f32> = u_xlat9;
    let x_4774 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4772.x, x_4772.y, x_4772.z), vec3<f32>(x_4774.x, x_4774.y, x_4774.z));
    let x_4779 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4779, 1.17549435e-38f);
    let x_4783 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_4783);
    let x_4786 : vec2<f32> = u_xlat58;
    let x_4788 : vec4<f32> = u_xlat9;
    let x_4790 : vec3<f32> = (vec3<f32>(x_4786.x, x_4786.x, x_4786.x) * vec3<f32>(x_4788.x, x_4788.y, x_4788.z));
    let x_4791 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4790.x, x_4790.y, x_4790.z, x_4791.w);
    let x_4793 : vec4<f32> = u_xlat1;
    let x_4795 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4793.x, x_4793.y, x_4793.z), vec3<f32>(x_4795.x, x_4795.y, x_4795.z));
    let x_4800 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4800, 0.0f, 1.0f);
    let x_4803 : vec4<f32> = u_xlat10;
    let x_4805 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_4803.x, x_4803.y, x_4803.z), vec3<f32>(x_4805.x, x_4805.y, x_4805.z));
    let x_4810 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_4810, 0.0f, 1.0f);
    let x_4813 : vec2<f32> = u_xlat58;
    let x_4814 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_4813 * x_4814);
    let x_4817 : f32 = u_xlat58.x;
    let x_4819 : f32 = u_xlat0.x;
    u_xlat58.x = ((x_4817 * x_4819) + 1.00001001358032226562f);
    let x_4824 : f32 = u_xlat58.x;
    let x_4826 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4824 * x_4826);
    let x_4830 : f32 = u_xlat58.y;
    u_xlat84 = max(x_4830, 0.10000000149011611938f);
    let x_4832 : f32 = u_xlat84;
    let x_4834 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4832 * x_4834);
    let x_4837 : f32 = u_xlat82;
    let x_4839 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4837 * x_4839);
    let x_4842 : f32 = u_xlat79;
    let x_4844 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4842 / x_4844);
    let x_4847 : vec4<f32> = u_xlat4;
    let x_4849 : vec2<f32> = u_xlat58;
    let x_4852 : vec3<f32> = u_xlat29;
    let x_4853 : vec3<f32> = ((vec3<f32>(x_4847.x, x_4847.y, x_4847.z) * vec3<f32>(x_4849.x, x_4849.x, x_4849.x)) + x_4852);
    let x_4854 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4853.x, x_4853.y, x_4853.z, x_4854.w);
    let x_4856 : vec4<f32> = u_xlat9;
    let x_4858 : vec4<f32> = u_xlat11;
    let x_4861 : vec4<f32> = u_xlat8;
    let x_4863 : vec3<f32> = ((vec3<f32>(x_4856.x, x_4856.y, x_4856.z) * vec3<f32>(x_4858.x, x_4858.y, x_4858.z)) + vec3<f32>(x_4861.x, x_4861.y, x_4861.z));
    let x_4864 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4863.x, x_4863.y, x_4863.z, x_4864.w);

    continuing {
      let x_4866 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4866 + bitcast<u32>(1i));
    }
  }
  let x_4868 : vec3<f32> = u_xlat28;
  let x_4869 : f32 = u_xlat26;
  let x_4872 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_4868 * vec3<f32>(x_4869, x_4869, x_4869)) + vec3<f32>(x_4872.x, x_4872.z, x_4872.w));
  let x_4875 : vec4<f32> = u_xlat8;
  let x_4877 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4875.x, x_4875.y, x_4875.z) + x_4877);
  let x_4879 : f32 = u_xlat78;
  let x_4881 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4879, x_4879, x_4879) * x_4881);
  let x_4884 : f32 = u_xlat2.x;
  let x_4886 : f32 = u_xlat2.x;
  u_xlat78 = (x_4884 * -(x_4886));
  let x_4889 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4889);
  let x_4893 : vec3<f32> = u_xlat0;
  let x_4894 : f32 = u_xlat78;
  let x_4896 : vec3<f32> = (x_4893 * vec3<f32>(x_4894, x_4894, x_4894));
  let x_4897 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4896.x, x_4896.y, x_4896.z, x_4897.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


