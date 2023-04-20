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

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

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

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1025 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2378 : LightCookies;

@group(0) @binding(15) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(17) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2577 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_2886 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(16) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

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
  var x_2330 : f32;
  var x_2445 : f32;
  var x_2456 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3024 : f32;
  var x_3034 : f32;
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
  var x_4615 : f32;
  var x_4628 : f32;
  var x_4686 : f32;
  var x_4697 : vec3<f32>;
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
  let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_103 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_108 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_110 : vec3<f32> = ((vec3<f32>(x_103.x, x_103.w, x_103.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_108.x, x_108.w, x_108.y));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_110.z);
  let x_116 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_120 : vec2<f32> = (vec2<f32>(x_116.z, x_116.w) + vec2<f32>(-1.0f, -1.0f));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_125 : vec4<f32> = u_xlat4;
  let x_129 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.y)) + vec2<f32>(0.5f, 0.5f));
  let x_130 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat4;
  let x_135 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_137 : vec2<f32> = (vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_135.x, x_135.y));
  let x_138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_145 : vec4<f32> = u_xlat4;
  let x_148 : f32 = x_29.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat4 = x_149;
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_151, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_162 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : f32 = x_29.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_162.x, x_162.y), x_165);
  u_xlat5 = x_166;
  let x_172 : vec4<f32> = vs_TEXCOORD1;
  let x_175 : f32 = x_29.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_172.z, x_172.w), x_175);
  u_xlat6 = x_176;
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_186 : f32 = x_29.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_183.x, x_183.y), x_186);
  u_xlat7 = x_187;
  let x_193 : vec4<f32> = vs_TEXCOORD2;
  let x_196 : f32 = x_29.x_GlobalMipBias.x;
  let x_197 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_193.z, x_193.w), x_196);
  u_xlat8 = x_197;
  let x_201 : f32 = u_xlat5.w;
  u_xlat9.x = x_201;
  let x_204 : f32 = u_xlat6.w;
  u_xlat9.y = x_204;
  let x_208 : f32 = u_xlat7.w;
  u_xlat9.z = x_208;
  let x_212 : f32 = u_xlat8.w;
  u_xlat9.w = x_212;
  let x_215 : vec4<f32> = u_xlat9;
  let x_218 : f32 = x_59.x_Smoothness0;
  let x_221 : f32 = x_59.x_Smoothness1;
  let x_224 : f32 = x_59.x_Smoothness2;
  let x_227 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_215 * vec4<f32>(x_218, x_221, x_224, x_227));
  let x_234 : f32 = x_59.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_234);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_237) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_240 : vec4<f32> = u_xlat9;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_240 + -(x_241));
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_244 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_248 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_248, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_252 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_252 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_256);
  let x_259 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_259 + -(x_260));
  let x_265 : f32 = u_xlat12.x;
  let x_268 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.y;
  let x_275 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_272 * x_275);
  let x_279 : f32 = u_xlat12.z;
  let x_282 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_279 * x_282);
  let x_286 : f32 = u_xlat12.w;
  let x_289 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_286 * x_289);
  let x_292 : vec4<f32> = u_xlat11;
  let x_293 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_292 + x_293);
  let x_295 : bool = u_xlatb79;
  let x_296 : vec4<f32> = u_xlat11;
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_297, x_296, vec4<bool>(x_295, x_295, x_295, x_295));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_302, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_306);
  let x_308 : bool = u_xlatb80;
  if (((select(0i, 1i, x_308) * -1i) != 0i)) {
    discard;
  }
  let x_315 : f32 = u_xlat79;
  u_xlat79 = (x_315 + 0.00006103515625f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_319 : f32 = u_xlat79;
  u_xlat4 = (x_318 / vec4<f32>(x_319, x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec4<f32> = u_xlat12;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec4<f32> = u_xlat11;
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_360 : vec3<f32> = (vec3<f32>(x_355.z, x_355.z, x_355.z) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_378 : vec3<f32> = (vec3<f32>(x_373.w, x_373.w, x_373.w) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat8;
  let x_383 : vec4<f32> = u_xlat6;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.x, x_383.y, x_383.z)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_396 : vec4<f32> = vs_TEXCOORD1;
  let x_399 : f32 = x_29.x_GlobalMipBias.x;
  let x_400 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_396.x, x_396.y), x_399);
  let x_401 : vec3<f32> = vec3<f32>(x_400.x, x_400.y, x_400.w);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat6.x;
  let x_407 : f32 = u_xlat6.z;
  u_xlat6.x = (x_405 * x_407);
  let x_410 : vec4<f32> = u_xlat6;
  let x_415 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_418.x, x_418.y), vec2<f32>(x_420.x, x_420.y));
  let x_423 : f32 = u_xlat79;
  u_xlat79 = min(x_423, 1.0f);
  let x_425 : f32 = u_xlat79;
  u_xlat79 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_428);
  let x_430 : f32 = u_xlat79;
  u_xlat7.z = max(x_430, 0.0000000000000001f);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : f32 = x_59.x_NormalScale0;
  let x_439 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_437, x_437));
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_446 : vec4<f32> = vs_TEXCOORD1;
  let x_449 : f32 = x_29.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_446.z, x_446.w), x_449);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = u_xlat6.x;
  let x_457 : f32 = u_xlat6.z;
  u_xlat6.x = (x_455 * x_457);
  let x_460 : vec4<f32> = u_xlat6;
  let x_463 : vec2<f32> = ((vec2<f32>(x_460.x, x_460.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_466.x, x_466.y), vec2<f32>(x_468.x, x_468.y));
  let x_471 : f32 = u_xlat79;
  u_xlat79 = min(x_471, 1.0f);
  let x_473 : f32 = u_xlat79;
  u_xlat79 = (-(x_473) + 1.0f);
  let x_476 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_476);
  let x_478 : f32 = u_xlat79;
  u_xlat8.z = max(x_478, 0.0000000000000001f);
  let x_481 : vec4<f32> = u_xlat6;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_486 : f32 = x_59.x_NormalScale1;
  let x_487 : vec2<f32> = vec2<f32>(x_484, x_486);
  let x_491 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_487.x, x_487.y));
  let x_492 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat8;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.y, x_494.y, x_494.y) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec4<f32> = u_xlat6;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.x, x_501.x) * vec3<f32>(x_503.x, x_503.y, x_503.z)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_515 : vec4<f32> = vs_TEXCOORD2;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_515.x, x_515.y), x_518);
  let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.w);
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat7.x;
  let x_526 : f32 = u_xlat7.z;
  u_xlat7.x = (x_524 * x_526);
  let x_529 : vec4<f32> = u_xlat7;
  let x_532 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_533 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat7;
  let x_537 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_535.x, x_535.y), vec2<f32>(x_537.x, x_537.y));
  let x_540 : f32 = u_xlat79;
  u_xlat79 = min(x_540, 1.0f);
  let x_542 : f32 = u_xlat79;
  u_xlat79 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_545);
  let x_547 : f32 = u_xlat79;
  u_xlat8.z = max(x_547, 0.0000000000000001f);
  let x_550 : vec4<f32> = u_xlat7;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_556 : f32 = x_59.x_NormalScale2;
  let x_557 : vec2<f32> = vec2<f32>(x_554, x_556);
  let x_561 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_557.x, x_557.y));
  let x_562 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = u_xlat8;
  let x_569 : vec4<f32> = u_xlat6;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.z, x_564.z, x_564.z) * vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_578 : vec4<f32> = vs_TEXCOORD2;
  let x_581 : f32 = x_29.x_GlobalMipBias.x;
  let x_582 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_578.z, x_578.w), x_581);
  let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.w);
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = u_xlat7.x;
  let x_589 : f32 = u_xlat7.z;
  u_xlat7.x = (x_587 * x_589);
  let x_592 : vec4<f32> = u_xlat7;
  let x_595 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_598.x, x_598.y), vec2<f32>(x_600.x, x_600.y));
  let x_603 : f32 = u_xlat79;
  u_xlat79 = min(x_603, 1.0f);
  let x_605 : f32 = u_xlat79;
  u_xlat79 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_608);
  let x_610 : f32 = u_xlat79;
  u_xlat8.z = max(x_610, 0.0000000000000001f);
  let x_613 : vec4<f32> = u_xlat7;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_619 : f32 = x_59.x_NormalScale3;
  let x_620 : vec2<f32> = vec2<f32>(x_617, x_619);
  let x_624 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_620.x, x_620.y));
  let x_625 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat4;
  let x_629 : vec4<f32> = u_xlat8;
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.w, x_627.w, x_627.w) * vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : f32 = u_xlat6.z;
  u_xlat6.w = (x_638 + 0.00000999999974737875f);
  let x_642 : vec4<f32> = u_xlat6;
  let x_644 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_642.x, x_642.y, x_642.w), vec3<f32>(x_644.x, x_644.y, x_644.w));
  let x_647 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_647);
  let x_649 : f32 = u_xlat79;
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_651.x, x_651.y, x_651.w));
  let x_654 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_657;
  let x_660 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_660;
  let x_663 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_663;
  let x_666 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_666;
  let x_669 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_669;
  let x_672 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_672;
  let x_675 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_675;
  let x_678 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_678;
  let x_680 : vec4<f32> = u_xlat7;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_680 + x_681);
  let x_684 : f32 = u_xlat0.z;
  u_xlat8.x = x_684;
  let x_687 : f32 = u_xlat1.z;
  u_xlat8.y = x_687;
  let x_690 : f32 = u_xlat2.z;
  u_xlat8.z = x_690;
  let x_693 : f32 = u_xlat3.y;
  u_xlat8.w = x_693;
  let x_695 : vec4<f32> = u_xlat9;
  let x_698 : f32 = x_59.x_Smoothness0;
  let x_700 : f32 = x_59.x_Smoothness1;
  let x_702 : f32 = x_59.x_Smoothness2;
  let x_704 : f32 = x_59.x_Smoothness3;
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_695) * vec4<f32>(x_698, x_700, x_702, x_704)) + x_707);
  let x_711 : f32 = x_59.x_LayerHasMask0;
  let x_714 : f32 = x_59.x_LayerHasMask1;
  let x_717 : f32 = x_59.x_LayerHasMask2;
  let x_720 : f32 = x_59.x_LayerHasMask3;
  let x_722 : vec4<f32> = u_xlat8;
  let x_724 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_711, x_714, x_717, x_720) * x_722) + x_724);
  let x_727 : vec4<f32> = u_xlat4;
  let x_728 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_727, x_728);
  let x_731 : f32 = u_xlat0.x;
  u_xlat8.x = x_731;
  let x_734 : f32 = u_xlat1.x;
  u_xlat8.y = x_734;
  let x_737 : f32 = u_xlat2.x;
  u_xlat8.z = x_737;
  let x_740 : f32 = u_xlat3.x;
  u_xlat8.w = x_740;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_59.x_Metallic0;
  let x_748 : f32 = x_59.x_Metallic1;
  let x_751 : f32 = x_59.x_Metallic2;
  let x_754 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_742 + -(vec4<f32>(x_745, x_748, x_751, x_754)));
  let x_759 : f32 = x_59.x_LayerHasMask0;
  let x_761 : f32 = x_59.x_LayerHasMask1;
  let x_763 : f32 = x_59.x_LayerHasMask2;
  let x_765 : f32 = x_59.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat8;
  let x_770 : f32 = x_59.x_Metallic0;
  let x_772 : f32 = x_59.x_Metallic1;
  let x_774 : f32 = x_59.x_Metallic2;
  let x_776 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + vec4<f32>(x_770, x_772, x_774, x_776));
  let x_779 : vec4<f32> = u_xlat4;
  let x_780 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat0.y;
  u_xlat3.x = x_784;
  let x_787 : f32 = u_xlat1.y;
  u_xlat3.y = x_787;
  let x_790 : f32 = u_xlat2.y;
  u_xlat3.z = x_790;
  let x_792 : vec4<f32> = u_xlat7;
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_792) + x_794);
  let x_797 : f32 = x_59.x_LayerHasMask0;
  let x_799 : f32 = x_59.x_LayerHasMask1;
  let x_801 : f32 = x_59.x_LayerHasMask2;
  let x_803 : f32 = x_59.x_LayerHasMask3;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_797, x_799, x_801, x_803) * x_805) + x_807);
  let x_810 : vec4<f32> = u_xlat4;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_810, x_811);
  let x_813 : vec4<f32> = u_xlat6;
  let x_816 : vec4<f32> = vs_TEXCOORD5;
  let x_818 : vec3<f32> = (vec3<f32>(x_813.y, x_813.y, x_813.y) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD4;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.x, x_821.x) * -(vec3<f32>(x_824.x, x_824.y, x_824.z))) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat6;
  let x_836 : vec4<f32> = vs_TEXCOORD3;
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = ((vec3<f32>(x_833.z, x_833.z, x_833.z) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat79;
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = (vec3<f32>(x_851, x_851, x_851) * vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_862 : f32 = vs_TEXCOORD7.y;
  let x_864 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat79 = (x_862 * x_864);
  let x_867 : f32 = x_29.unity_MatrixV[0i].z;
  let x_869 : f32 = vs_TEXCOORD7.x;
  let x_871 : f32 = u_xlat79;
  u_xlat79 = ((x_867 * x_869) + x_871);
  let x_874 : f32 = x_29.unity_MatrixV[2i].z;
  let x_876 : f32 = vs_TEXCOORD7.z;
  let x_878 : f32 = u_xlat79;
  u_xlat79 = ((x_874 * x_876) + x_878);
  let x_880 : f32 = u_xlat79;
  let x_882 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat79 = (x_880 + x_882);
  let x_884 : f32 = u_xlat79;
  let x_887 : f32 = x_29.x_ProjectionParams.y;
  u_xlat79 = (-(x_884) + -(x_887));
  let x_890 : f32 = u_xlat79;
  u_xlat79 = max(x_890, 0.0f);
  let x_892 : f32 = u_xlat79;
  let x_894 : f32 = x_29.unity_FogParams.x;
  u_xlat79 = (x_892 * x_894);
  let x_901 : vec4<f32> = vs_TEXCOORD0;
  let x_904 : f32 = x_29.x_GlobalMipBias.x;
  let x_905 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_901.z, x_901.w), x_904);
  u_xlat2 = x_905;
  let x_910 : vec4<f32> = vs_TEXCOORD0;
  let x_913 : f32 = x_29.x_GlobalMipBias.x;
  let x_914 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_910.z, x_910.w), x_913);
  let x_915 : vec3<f32> = vec3<f32>(x_914.x, x_914.y, x_914.z);
  let x_916 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat1;
  let x_927 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_925.x, x_925.y, x_925.z), vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_932 : f32 = u_xlat2.x;
  u_xlat2.x = (x_932 + 0.5f);
  let x_935 : vec4<f32> = u_xlat2;
  let x_937 : vec4<f32> = u_xlat3;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.x, x_935.x) * vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_944 : f32 = u_xlat2.w;
  u_xlat80 = max(x_944, 0.00009999999747378752f);
  let x_947 : vec4<f32> = u_xlat2;
  let x_949 : f32 = u_xlat80;
  let x_951 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) / vec3<f32>(x_949, x_949, x_949));
  let x_952 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_955 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_955) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_960 : f32 = u_xlat52;
  let x_961 : f32 = u_xlat80;
  u_xlat3.x = (x_960 + -(x_961));
  let x_966 : f32 = u_xlat80;
  let x_968 : vec4<f32> = u_xlat5;
  u_xlat29 = (vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat5;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_976 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec3<f32> = u_xlat0;
  let x_980 : vec4<f32> = u_xlat4;
  let x_985 : vec3<f32> = ((vec3<f32>(x_978.x, x_978.x, x_978.x) * vec3<f32>(x_980.x, x_980.y, x_980.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_986 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : f32 = u_xlat52;
  u_xlat0.x = (-(x_988) + 1.0f);
  let x_993 : f32 = u_xlat0.x;
  let x_995 : f32 = u_xlat0.x;
  u_xlat52 = (x_993 * x_995);
  let x_997 : f32 = u_xlat52;
  u_xlat52 = max(x_997, 0.0078125f);
  let x_1000 : f32 = u_xlat52;
  let x_1001 : f32 = u_xlat52;
  u_xlat80 = (x_1000 * x_1001);
  let x_1004 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1004 + 1.0f);
  let x_1008 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1008, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat52;
  u_xlat82 = ((x_1012 * 4.0f) + 2.0f);
  let x_1015 : f32 = u_xlat26;
  u_xlat26 = min(x_1015, 1.0f);
  let x_1027 : f32 = x_1025.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1027);
  let x_1029 : bool = u_xlatb5;
  if (x_1029) {
    let x_1033 : f32 = x_1025.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1033 == 1.0f);
    let x_1035 : bool = u_xlatb5;
    if (x_1035) {
      let x_1039 : vec4<f32> = vs_TEXCOORD8;
      let x_1042 : vec4<f32> = x_1025.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) + x_1042);
      let x_1046 : vec4<f32> = u_xlat5;
      let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
      let x_1049 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
      let x_1061 : vec3<f32> = txVec0;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1061.xy, x_1061.z);
      u_xlat6.x = x_1063;
      let x_1066 : vec4<f32> = u_xlat5;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
      let x_1069 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec1;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1076.xy, x_1076.z);
      u_xlat6.y = x_1078;
      let x_1080 : vec4<f32> = vs_TEXCOORD8;
      let x_1083 : vec4<f32> = x_1025.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) + x_1083);
      let x_1086 : vec4<f32> = u_xlat5;
      let x_1087 : vec2<f32> = vec2<f32>(x_1086.x, x_1086.y);
      let x_1089 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
      let x_1096 : vec3<f32> = txVec2;
      let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1096.xy, x_1096.z);
      u_xlat6.z = x_1098;
      let x_1101 : vec4<f32> = u_xlat5;
      let x_1102 : vec2<f32> = vec2<f32>(x_1101.z, x_1101.w);
      let x_1104 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
      let x_1111 : vec3<f32> = txVec3;
      let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1111.xy, x_1111.z);
      u_xlat6.w = x_1113;
      let x_1115 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1115, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1123 : f32 = x_1025.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1123 == 2.0f);
      let x_1125 : bool = u_xlatb31;
      if (x_1125) {
        let x_1129 : vec4<f32> = vs_TEXCOORD8;
        let x_1132 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.z, x_1132.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1136 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1135.x, x_1135.y, x_1136.z);
        let x_1138 : vec3<f32> = u_xlat31;
        let x_1140 : vec2<f32> = floor(vec2<f32>(x_1138.x, x_1138.y));
        let x_1141 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1140.x, x_1140.y, x_1141.z);
        let x_1143 : vec4<f32> = vs_TEXCOORD8;
        let x_1146 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1149 : vec3<f32> = u_xlat31;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.z, x_1146.w)) + -(vec2<f32>(x_1149.x, x_1149.y)));
        let x_1153 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.y, x_1155.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1159.x, x_1159.x, x_1159.z, x_1159.z) * vec4<f32>(x_1161.x, x_1161.x, x_1161.z, x_1161.z));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_1166.y, x_1166.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1171 : vec4<f32> = u_xlat8;
        let x_1174 : vec4<f32> = u_xlat6;
        let x_1177 : vec2<f32> = ((vec2<f32>(x_1171.x, x_1171.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1174.x, x_1174.y)));
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1177.x, x_1178.y, x_1177.y, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat6;
        let x_1184 : vec2<f32> = (-(vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_1188.x, x_1188.y), vec2<f32>(0.0f, 0.0f));
        let x_1192 : vec2<f32> = u_xlat60;
        let x_1194 : vec2<f32> = u_xlat60;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_1192) * x_1194) + vec2<f32>(x_1196.x, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1201 : vec2<f32> = max(vec2<f32>(x_1199.x, x_1199.y), vec2<f32>(0.0f, 0.0f));
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = u_xlat6;
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec2<f32> = ((-(vec2<f32>(x_1204.x, x_1204.y)) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.y, x_1210.w));
        let x_1213 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_1215 + vec2<f32>(1.0f, 1.0f));
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1219 : vec2<f32> = (vec2<f32>(x_1217.x, x_1217.y) + vec2<f32>(1.0f, 1.0f));
        let x_1220 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat7;
        let x_1226 : vec2<f32> = (vec2<f32>(x_1222.x, x_1222.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1231 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1234 : vec2<f32> = u_xlat60;
        let x_1235 : vec2<f32> = (x_1234 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1240 : vec2<f32> = (vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat7;
        let x_1245 : vec2<f32> = (vec2<f32>(x_1243.y, x_1243.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1246 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1249 : f32 = u_xlat8.x;
        u_xlat9.z = x_1249;
        let x_1252 : f32 = u_xlat6.x;
        u_xlat9.w = x_1252;
        let x_1255 : f32 = u_xlat11.x;
        u_xlat10.z = x_1255;
        let x_1258 : f32 = u_xlat58.x;
        u_xlat10.w = x_1258;
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1262 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1260.z, x_1260.w, x_1260.x, x_1260.z) + vec4<f32>(x_1262.z, x_1262.w, x_1262.x, x_1262.z));
        let x_1266 : f32 = u_xlat9.y;
        u_xlat8.z = x_1266;
        let x_1269 : f32 = u_xlat6.y;
        u_xlat8.w = x_1269;
        let x_1272 : f32 = u_xlat10.y;
        u_xlat11.z = x_1272;
        let x_1275 : f32 = u_xlat58.y;
        u_xlat11.w = x_1275;
        let x_1277 : vec4<f32> = u_xlat8;
        let x_1279 : vec4<f32> = u_xlat11;
        let x_1281 : vec3<f32> = (vec3<f32>(x_1277.z, x_1277.y, x_1277.w) + vec3<f32>(x_1279.z, x_1279.y, x_1279.w));
        let x_1282 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1288 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.z, x_1284.w) / vec3<f32>(x_1286.z, x_1286.w, x_1286.y));
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat8;
        let x_1296 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1303 : vec3<f32> = (vec3<f32>(x_1299.z, x_1299.y, x_1299.w) / vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat9;
        let x_1308 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
        let x_1311 : vec4<f32> = u_xlat8;
        let x_1314 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1316 : vec3<f32> = (vec3<f32>(x_1311.y, x_1311.x, x_1311.z) * vec3<f32>(x_1314.x, x_1314.x, x_1314.x));
        let x_1317 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
        let x_1319 : vec4<f32> = u_xlat9;
        let x_1322 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1324 : vec3<f32> = (vec3<f32>(x_1319.x, x_1319.y, x_1319.z) * vec3<f32>(x_1322.y, x_1322.y, x_1322.y));
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
        let x_1328 : f32 = u_xlat9.x;
        u_xlat8.w = x_1328;
        let x_1330 : vec3<f32> = u_xlat31;
        let x_1333 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y) * vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y)) + vec4<f32>(x_1336.y, x_1336.w, x_1336.x, x_1336.w));
        let x_1339 : vec3<f32> = u_xlat31;
        let x_1342 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(x_1342.x, x_1342.y)) + vec2<f32>(x_1345.z, x_1345.w));
        let x_1348 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1351 : f32 = u_xlat8.y;
        u_xlat9.w = x_1351;
        let x_1353 : vec4<f32> = u_xlat9;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.y, x_1353.z);
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1355.x, x_1354.x, x_1355.z, x_1354.y);
        let x_1357 : vec3<f32> = u_xlat31;
        let x_1360 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1363 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.y) * vec4<f32>(x_1360.x, x_1360.y, x_1360.x, x_1360.y)) + vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1363.y));
        let x_1366 : vec3<f32> = u_xlat31;
        let x_1369 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1372 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y) * vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y)) + vec4<f32>(x_1372.w, x_1372.y, x_1372.w, x_1372.z));
        let x_1375 : vec3<f32> = u_xlat31;
        let x_1378 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.y) * vec4<f32>(x_1378.x, x_1378.y, x_1378.x, x_1378.y)) + vec4<f32>(x_1381.x, x_1381.w, x_1381.z, x_1381.w));
        let x_1384 : vec4<f32> = u_xlat6;
        let x_1386 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1384.x, x_1384.x, x_1384.x, x_1384.y) * vec4<f32>(x_1386.z, x_1386.w, x_1386.y, x_1386.z));
        let x_1390 : vec4<f32> = u_xlat6;
        let x_1392 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1390.y, x_1390.y, x_1390.z, x_1390.z) * x_1392);
        let x_1395 : f32 = u_xlat6.z;
        let x_1397 : f32 = u_xlat7.y;
        u_xlat31.x = (x_1395 * x_1397);
        let x_1401 : vec4<f32> = u_xlat10;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1412 : vec3<f32> = txVec4;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat57.x = x_1414;
        let x_1417 : vec4<f32> = u_xlat10;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1428 : vec3<f32> = txVec5;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat83 = x_1430;
        let x_1431 : f32 = u_xlat83;
        let x_1433 : f32 = u_xlat13.y;
        u_xlat83 = (x_1431 * x_1433);
        let x_1436 : f32 = u_xlat13.x;
        let x_1438 : f32 = u_xlat57.x;
        let x_1440 : f32 = u_xlat83;
        u_xlat57.x = ((x_1436 * x_1438) + x_1440);
        let x_1444 : vec4<f32> = u_xlat11;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.x, x_1444.y);
        let x_1447 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec6;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat83 = x_1456;
        let x_1458 : f32 = u_xlat13.z;
        let x_1459 : f32 = u_xlat83;
        let x_1462 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1458 * x_1459) + x_1462);
        let x_1466 : vec4<f32> = u_xlat9;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec7;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat83 = x_1478;
        let x_1480 : f32 = u_xlat13.w;
        let x_1481 : f32 = u_xlat83;
        let x_1484 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1480 * x_1481) + x_1484);
        let x_1488 : vec4<f32> = u_xlat12;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.x, x_1488.y);
        let x_1491 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec8;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1498.xy, x_1498.z);
        u_xlat83 = x_1500;
        let x_1502 : f32 = u_xlat14.x;
        let x_1503 : f32 = u_xlat83;
        let x_1506 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1502 * x_1503) + x_1506);
        let x_1510 : vec4<f32> = u_xlat12;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.z, x_1510.w);
        let x_1513 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec9;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1520.xy, x_1520.z);
        u_xlat83 = x_1522;
        let x_1524 : f32 = u_xlat14.y;
        let x_1525 : f32 = u_xlat83;
        let x_1528 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1524 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat9;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec10;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat83 = x_1544;
        let x_1546 : f32 = u_xlat14.z;
        let x_1547 : f32 = u_xlat83;
        let x_1550 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1546 * x_1547) + x_1550);
        let x_1554 : vec4<f32> = u_xlat8;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec11;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat83 = x_1566;
        let x_1568 : f32 = u_xlat14.w;
        let x_1569 : f32 = u_xlat83;
        let x_1572 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1568 * x_1569) + x_1572);
        let x_1576 : vec4<f32> = u_xlat8;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec12;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat83 = x_1588;
        let x_1590 : f32 = u_xlat31.x;
        let x_1591 : f32 = u_xlat83;
        let x_1594 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_1590 * x_1591) + x_1594);
      } else {
        let x_1598 : vec4<f32> = vs_TEXCOORD8;
        let x_1601 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1604 : vec2<f32> = ((vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(x_1601.z, x_1601.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1605 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1604.x, x_1604.y, x_1605.z);
        let x_1607 : vec3<f32> = u_xlat31;
        let x_1609 : vec2<f32> = floor(vec2<f32>(x_1607.x, x_1607.y));
        let x_1610 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1609.x, x_1609.y, x_1610.z);
        let x_1612 : vec4<f32> = vs_TEXCOORD8;
        let x_1615 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1618 : vec3<f32> = u_xlat31;
        let x_1621 : vec2<f32> = ((vec2<f32>(x_1612.x, x_1612.y) * vec2<f32>(x_1615.z, x_1615.w)) + -(vec2<f32>(x_1618.x, x_1618.y)));
        let x_1622 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
        let x_1624 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1624.x, x_1624.x, x_1624.y, x_1624.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1629 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1627.x, x_1627.x, x_1627.z, x_1627.z) * vec4<f32>(x_1629.x, x_1629.x, x_1629.z, x_1629.z));
        let x_1632 : vec4<f32> = u_xlat8;
        let x_1636 : vec2<f32> = (vec2<f32>(x_1632.y, x_1632.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1637 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1637.x, x_1636.x, x_1637.z, x_1636.y);
        let x_1639 : vec4<f32> = u_xlat8;
        let x_1642 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1639.x, x_1639.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1642.x, x_1642.y)));
        let x_1646 : vec4<f32> = u_xlat6;
        let x_1649 : vec2<f32> = (-(vec2<f32>(x_1646.x, x_1646.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1650 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1649.x, x_1650.y, x_1649.y, x_1650.w);
        let x_1652 : vec4<f32> = u_xlat6;
        let x_1654 : vec2<f32> = min(vec2<f32>(x_1652.x, x_1652.y), vec2<f32>(0.0f, 0.0f));
        let x_1655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1654.x, x_1654.y, x_1655.z, x_1655.w);
        let x_1657 : vec4<f32> = u_xlat8;
        let x_1660 : vec4<f32> = u_xlat8;
        let x_1663 : vec4<f32> = u_xlat7;
        let x_1665 : vec2<f32> = ((-(vec2<f32>(x_1657.x, x_1657.y)) * vec2<f32>(x_1660.x, x_1660.y)) + vec2<f32>(x_1663.x, x_1663.z));
        let x_1666 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1665.x, x_1666.y, x_1665.y, x_1666.w);
        let x_1668 : vec4<f32> = u_xlat6;
        let x_1670 : vec2<f32> = max(vec2<f32>(x_1668.x, x_1668.y), vec2<f32>(0.0f, 0.0f));
        let x_1671 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1670.x, x_1670.y, x_1671.z, x_1671.w);
        let x_1673 : vec4<f32> = u_xlat8;
        let x_1676 : vec4<f32> = u_xlat8;
        let x_1679 : vec4<f32> = u_xlat7;
        let x_1681 : vec2<f32> = ((-(vec2<f32>(x_1673.x, x_1673.y)) * vec2<f32>(x_1676.x, x_1676.y)) + vec2<f32>(x_1679.y, x_1679.w));
        let x_1682 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1682.x, x_1681.x, x_1682.z, x_1681.y);
        let x_1684 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1684 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1688 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1688 * 0.08163200318813323975f);
        let x_1692 : vec2<f32> = u_xlat58;
        let x_1695 : vec2<f32> = (vec2<f32>(x_1692.y, x_1692.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1696 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1695.x, x_1695.y, x_1696.z, x_1696.w);
        let x_1698 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1698.x, x_1698.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1702 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1702 * 0.08163200318813323975f);
        let x_1706 : f32 = u_xlat10.y;
        u_xlat8.x = x_1706;
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1715 : vec2<f32> = ((vec2<f32>(x_1708.x, x_1708.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1716 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1716.x, x_1715.x, x_1716.z, x_1715.y);
        let x_1718 : vec4<f32> = u_xlat6;
        let x_1722 : vec2<f32> = ((vec2<f32>(x_1718.x, x_1718.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1723 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1722.x, x_1723.y, x_1722.y, x_1723.w);
        let x_1726 : f32 = u_xlat58.x;
        u_xlat7.y = x_1726;
        let x_1729 : f32 = u_xlat9.y;
        u_xlat7.w = x_1729;
        let x_1731 : vec4<f32> = u_xlat7;
        let x_1732 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1731 + x_1732);
        let x_1734 : vec4<f32> = u_xlat6;
        let x_1737 : vec2<f32> = ((vec2<f32>(x_1734.y, x_1734.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1738 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1738.x, x_1737.x, x_1738.z, x_1737.y);
        let x_1740 : vec4<f32> = u_xlat6;
        let x_1743 : vec2<f32> = ((vec2<f32>(x_1740.y, x_1740.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1744 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1743.x, x_1744.y, x_1743.y, x_1744.w);
        let x_1747 : f32 = u_xlat58.y;
        u_xlat9.y = x_1747;
        let x_1749 : vec4<f32> = u_xlat9;
        let x_1750 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1749 + x_1750);
        let x_1752 : vec4<f32> = u_xlat7;
        let x_1753 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1752 / x_1753);
        let x_1755 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1755 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1761 : vec4<f32> = u_xlat9;
        let x_1762 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1761 / x_1762);
        let x_1764 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1764 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1766 : vec4<f32> = u_xlat7;
        let x_1769 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1766.w, x_1766.x, x_1766.y, x_1766.z) * vec4<f32>(x_1769.x, x_1769.x, x_1769.x, x_1769.x));
        let x_1772 : vec4<f32> = u_xlat9;
        let x_1775 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1772.x, x_1772.w, x_1772.y, x_1772.z) * vec4<f32>(x_1775.y, x_1775.y, x_1775.y, x_1775.y));
        let x_1778 : vec4<f32> = u_xlat7;
        let x_1779 : vec3<f32> = vec3<f32>(x_1778.y, x_1778.z, x_1778.w);
        let x_1780 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1779.x, x_1780.y, x_1779.y, x_1779.z);
        let x_1783 : f32 = u_xlat9.x;
        u_xlat10.y = x_1783;
        let x_1785 : vec3<f32> = u_xlat31;
        let x_1788 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1785.x, x_1785.y, x_1785.x, x_1785.y) * vec4<f32>(x_1788.x, x_1788.y, x_1788.x, x_1788.y)) + vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1791.y));
        let x_1794 : vec3<f32> = u_xlat31;
        let x_1797 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat10;
        let x_1802 : vec2<f32> = ((vec2<f32>(x_1794.x, x_1794.y) * vec2<f32>(x_1797.x, x_1797.y)) + vec2<f32>(x_1800.w, x_1800.y));
        let x_1803 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
        let x_1806 : f32 = u_xlat10.y;
        u_xlat7.y = x_1806;
        let x_1809 : f32 = u_xlat9.z;
        u_xlat10.y = x_1809;
        let x_1811 : vec3<f32> = u_xlat31;
        let x_1814 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y) * vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y)) + vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1817.y));
        let x_1821 : vec3<f32> = u_xlat31;
        let x_1824 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.w, x_1827.y));
        let x_1831 : f32 = u_xlat10.y;
        u_xlat7.z = x_1831;
        let x_1833 : vec3<f32> = u_xlat31;
        let x_1836 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1839 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1833.x, x_1833.y, x_1833.x, x_1833.y) * vec4<f32>(x_1836.x, x_1836.y, x_1836.x, x_1836.y)) + vec4<f32>(x_1839.x, x_1839.y, x_1839.x, x_1839.z));
        let x_1843 : f32 = u_xlat9.w;
        u_xlat10.y = x_1843;
        let x_1846 : vec3<f32> = u_xlat31;
        let x_1849 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1852 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1846.x, x_1846.y, x_1846.x, x_1846.y) * vec4<f32>(x_1849.x, x_1849.y, x_1849.x, x_1849.y)) + vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1852.y));
        let x_1856 : vec3<f32> = u_xlat31;
        let x_1859 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1862 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1856.x, x_1856.y) * vec2<f32>(x_1859.x, x_1859.y)) + vec2<f32>(x_1862.w, x_1862.y));
        let x_1866 : f32 = u_xlat10.y;
        u_xlat7.w = x_1866;
        let x_1869 : vec3<f32> = u_xlat31;
        let x_1872 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1875 : vec4<f32> = u_xlat7;
        let x_1877 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.y) * vec2<f32>(x_1872.x, x_1872.y)) + vec2<f32>(x_1875.x, x_1875.w));
        let x_1878 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1877.x, x_1877.y, x_1878.z, x_1878.w);
        let x_1880 : vec4<f32> = u_xlat10;
        let x_1881 : vec3<f32> = vec3<f32>(x_1880.x, x_1880.z, x_1880.w);
        let x_1882 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1881.x, x_1882.y, x_1881.y, x_1881.z);
        let x_1884 : vec3<f32> = u_xlat31;
        let x_1887 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1890 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1884.x, x_1884.y, x_1884.x, x_1884.y) * vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.y)) + vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1890.y));
        let x_1894 : vec3<f32> = u_xlat31;
        let x_1897 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1900 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1894.x, x_1894.y) * vec2<f32>(x_1897.x, x_1897.y)) + vec2<f32>(x_1900.w, x_1900.y));
        let x_1904 : f32 = u_xlat7.x;
        u_xlat9.x = x_1904;
        let x_1906 : vec3<f32> = u_xlat31;
        let x_1909 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1912 : vec4<f32> = u_xlat9;
        let x_1914 : vec2<f32> = ((vec2<f32>(x_1906.x, x_1906.y) * vec2<f32>(x_1909.x, x_1909.y)) + vec2<f32>(x_1912.x, x_1912.y));
        let x_1915 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1914.x, x_1914.y, x_1915.z);
        let x_1918 : vec4<f32> = u_xlat6;
        let x_1920 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1918.x, x_1918.x, x_1918.x, x_1918.x) * x_1920);
        let x_1923 : vec4<f32> = u_xlat6;
        let x_1925 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1923.y, x_1923.y, x_1923.y, x_1923.y) * x_1925);
        let x_1928 : vec4<f32> = u_xlat6;
        let x_1930 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1928.z, x_1928.z, x_1928.z, x_1928.z) * x_1930);
        let x_1932 : vec4<f32> = u_xlat6;
        let x_1934 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1932.w, x_1932.w, x_1932.w, x_1932.w) * x_1934);
        let x_1937 : vec4<f32> = u_xlat11;
        let x_1938 : vec2<f32> = vec2<f32>(x_1937.x, x_1937.y);
        let x_1940 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec13;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
        u_xlat83 = x_1949;
        let x_1951 : vec4<f32> = u_xlat11;
        let x_1952 : vec2<f32> = vec2<f32>(x_1951.z, x_1951.w);
        let x_1954 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec14;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1961.xy, x_1961.z);
        u_xlat7.x = x_1963;
        let x_1966 : f32 = u_xlat7.x;
        let x_1968 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1966 * x_1968);
        let x_1972 : f32 = u_xlat17.x;
        let x_1973 : f32 = u_xlat83;
        let x_1976 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1972 * x_1973) + x_1976);
        let x_1979 : vec4<f32> = u_xlat12;
        let x_1980 : vec2<f32> = vec2<f32>(x_1979.x, x_1979.y);
        let x_1982 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec15;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
        u_xlat7.x = x_1991;
        let x_1994 : f32 = u_xlat17.z;
        let x_1996 : f32 = u_xlat7.x;
        let x_1998 : f32 = u_xlat83;
        u_xlat83 = ((x_1994 * x_1996) + x_1998);
        let x_2001 : vec4<f32> = u_xlat14;
        let x_2002 : vec2<f32> = vec2<f32>(x_2001.x, x_2001.y);
        let x_2004 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec16;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2011.xy, x_2011.z);
        u_xlat7.x = x_2013;
        let x_2016 : f32 = u_xlat17.w;
        let x_2018 : f32 = u_xlat7.x;
        let x_2020 : f32 = u_xlat83;
        u_xlat83 = ((x_2016 * x_2018) + x_2020);
        let x_2023 : vec4<f32> = u_xlat13;
        let x_2024 : vec2<f32> = vec2<f32>(x_2023.x, x_2023.y);
        let x_2026 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec17;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2033.xy, x_2033.z);
        u_xlat7.x = x_2035;
        let x_2038 : f32 = u_xlat18.x;
        let x_2040 : f32 = u_xlat7.x;
        let x_2042 : f32 = u_xlat83;
        u_xlat83 = ((x_2038 * x_2040) + x_2042);
        let x_2045 : vec4<f32> = u_xlat13;
        let x_2046 : vec2<f32> = vec2<f32>(x_2045.z, x_2045.w);
        let x_2048 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
        let x_2055 : vec3<f32> = txVec18;
        let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2055.xy, x_2055.z);
        u_xlat7.x = x_2057;
        let x_2060 : f32 = u_xlat18.y;
        let x_2062 : f32 = u_xlat7.x;
        let x_2064 : f32 = u_xlat83;
        u_xlat83 = ((x_2060 * x_2062) + x_2064);
        let x_2067 : vec2<f32> = u_xlat64;
        let x_2069 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec19;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2076.xy, x_2076.z);
        u_xlat7.x = x_2078;
        let x_2081 : f32 = u_xlat18.z;
        let x_2083 : f32 = u_xlat7.x;
        let x_2085 : f32 = u_xlat83;
        u_xlat83 = ((x_2081 * x_2083) + x_2085);
        let x_2088 : vec4<f32> = u_xlat14;
        let x_2089 : vec2<f32> = vec2<f32>(x_2088.z, x_2088.w);
        let x_2091 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2089.x, x_2089.y, x_2091);
        let x_2098 : vec3<f32> = txVec20;
        let x_2100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2098.xy, x_2098.z);
        u_xlat7.x = x_2100;
        let x_2103 : f32 = u_xlat18.w;
        let x_2105 : f32 = u_xlat7.x;
        let x_2107 : f32 = u_xlat83;
        u_xlat83 = ((x_2103 * x_2105) + x_2107);
        let x_2110 : vec4<f32> = u_xlat15;
        let x_2111 : vec2<f32> = vec2<f32>(x_2110.x, x_2110.y);
        let x_2113 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec21;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2120.xy, x_2120.z);
        u_xlat7.x = x_2122;
        let x_2125 : f32 = u_xlat19.x;
        let x_2127 : f32 = u_xlat7.x;
        let x_2129 : f32 = u_xlat83;
        u_xlat83 = ((x_2125 * x_2127) + x_2129);
        let x_2132 : vec4<f32> = u_xlat15;
        let x_2133 : vec2<f32> = vec2<f32>(x_2132.z, x_2132.w);
        let x_2135 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2133.x, x_2133.y, x_2135);
        let x_2142 : vec3<f32> = txVec22;
        let x_2144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2142.xy, x_2142.z);
        u_xlat7.x = x_2144;
        let x_2147 : f32 = u_xlat19.y;
        let x_2149 : f32 = u_xlat7.x;
        let x_2151 : f32 = u_xlat83;
        u_xlat83 = ((x_2147 * x_2149) + x_2151);
        let x_2154 : vec2<f32> = u_xlat33;
        let x_2156 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2154.x, x_2154.y, x_2156);
        let x_2163 : vec3<f32> = txVec23;
        let x_2165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2163.xy, x_2163.z);
        u_xlat7.x = x_2165;
        let x_2168 : f32 = u_xlat19.z;
        let x_2170 : f32 = u_xlat7.x;
        let x_2172 : f32 = u_xlat83;
        u_xlat83 = ((x_2168 * x_2170) + x_2172);
        let x_2175 : vec4<f32> = u_xlat16;
        let x_2176 : vec2<f32> = vec2<f32>(x_2175.x, x_2175.y);
        let x_2178 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2176.x, x_2176.y, x_2178);
        let x_2185 : vec3<f32> = txVec24;
        let x_2187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2185.xy, x_2185.z);
        u_xlat7.x = x_2187;
        let x_2190 : f32 = u_xlat19.w;
        let x_2192 : f32 = u_xlat7.x;
        let x_2194 : f32 = u_xlat83;
        u_xlat83 = ((x_2190 * x_2192) + x_2194);
        let x_2197 : vec4<f32> = u_xlat10;
        let x_2198 : vec2<f32> = vec2<f32>(x_2197.x, x_2197.y);
        let x_2200 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2198.x, x_2198.y, x_2200);
        let x_2207 : vec3<f32> = txVec25;
        let x_2209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2207.xy, x_2207.z);
        u_xlat7.x = x_2209;
        let x_2212 : f32 = u_xlat6.x;
        let x_2214 : f32 = u_xlat7.x;
        let x_2216 : f32 = u_xlat83;
        u_xlat83 = ((x_2212 * x_2214) + x_2216);
        let x_2219 : vec4<f32> = u_xlat10;
        let x_2220 : vec2<f32> = vec2<f32>(x_2219.z, x_2219.w);
        let x_2222 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2220.x, x_2220.y, x_2222);
        let x_2229 : vec3<f32> = txVec26;
        let x_2231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2229.xy, x_2229.z);
        u_xlat6.x = x_2231;
        let x_2234 : f32 = u_xlat6.y;
        let x_2236 : f32 = u_xlat6.x;
        let x_2238 : f32 = u_xlat83;
        u_xlat83 = ((x_2234 * x_2236) + x_2238);
        let x_2241 : vec2<f32> = u_xlat61;
        let x_2243 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2241.x, x_2241.y, x_2243);
        let x_2250 : vec3<f32> = txVec27;
        let x_2252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2250.xy, x_2250.z);
        u_xlat6.x = x_2252;
        let x_2255 : f32 = u_xlat6.z;
        let x_2257 : f32 = u_xlat6.x;
        let x_2259 : f32 = u_xlat83;
        u_xlat83 = ((x_2255 * x_2257) + x_2259);
        let x_2262 : vec3<f32> = u_xlat31;
        let x_2263 : vec2<f32> = vec2<f32>(x_2262.x, x_2262.y);
        let x_2265 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
        let x_2272 : vec3<f32> = txVec28;
        let x_2274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2272.xy, x_2272.z);
        u_xlat31.x = x_2274;
        let x_2277 : f32 = u_xlat6.w;
        let x_2279 : f32 = u_xlat31.x;
        let x_2281 : f32 = u_xlat83;
        u_xlat5.x = ((x_2277 * x_2279) + x_2281);
      }
    }
  } else {
    let x_2286 : vec4<f32> = vs_TEXCOORD8;
    let x_2287 : vec2<f32> = vec2<f32>(x_2286.x, x_2286.y);
    let x_2289 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
    let x_2296 : vec3<f32> = txVec29;
    let x_2298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2296.xy, x_2296.z);
    u_xlat5.x = x_2298;
  }
  let x_2301 : f32 = x_1025.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_2301) + 1.0f);
  let x_2306 : f32 = u_xlat5.x;
  let x_2308 : f32 = x_1025.x_MainLightShadowParams.x;
  let x_2311 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_2306 * x_2308) + x_2311);
  let x_2315 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_2315);
  let x_2321 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_2321 >= 1.0f);
  let x_2325 : bool = u_xlatb57.x;
  let x_2326 : bool = u_xlatb31;
  u_xlatb31 = (x_2325 | x_2326);
  let x_2328 : bool = u_xlatb31;
  if (x_2328) {
    x_2330 = 1.0f;
  } else {
    let x_2335 : f32 = u_xlat5.x;
    x_2330 = x_2335;
  }
  let x_2336 : f32 = x_2330;
  u_xlat5.x = x_2336;
  let x_2338 : vec3<f32> = vs_TEXCOORD7;
  let x_2341 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2338 + -(x_2341));
  let x_2344 : vec3<f32> = u_xlat31;
  let x_2345 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_2344, x_2345);
  let x_2349 : f32 = u_xlat31.x;
  let x_2351 : f32 = x_1025.x_MainLightShadowParams.z;
  let x_2354 : f32 = x_1025.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_2349 * x_2351) + x_2354);
  let x_2358 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2358, 0.0f, 1.0f);
  let x_2362 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_2362) + 1.0f);
  let x_2366 : f32 = u_xlat57.x;
  let x_2367 : f32 = u_xlat83;
  let x_2370 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2366 * x_2367) + x_2370);
  let x_2380 : f32 = x_2378.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_2380 == -1.0f));
  let x_2384 : bool = u_xlatb57.x;
  if (x_2384) {
    let x_2387 : vec3<f32> = vs_TEXCOORD7;
    let x_2390 : vec4<f32> = x_2378.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_2387.y, x_2387.y) * vec2<f32>(x_2390.x, x_2390.y));
    let x_2394 : vec4<f32> = x_2378.x_MainLightWorldToLight[0i];
    let x_2396 : vec3<f32> = vs_TEXCOORD7;
    let x_2399 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2394.x, x_2394.y) * vec2<f32>(x_2396.x, x_2396.x)) + x_2399);
    let x_2402 : vec4<f32> = x_2378.x_MainLightWorldToLight[2i];
    let x_2404 : vec3<f32> = vs_TEXCOORD7;
    let x_2407 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2402.x, x_2402.y) * vec2<f32>(x_2404.z, x_2404.z)) + x_2407);
    let x_2409 : vec2<f32> = u_xlat57;
    let x_2411 : vec4<f32> = x_2378.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_2409 + vec2<f32>(x_2411.x, x_2411.y));
    let x_2414 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_2414 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2422 : vec2<f32> = u_xlat57;
    let x_2424 : f32 = x_29.x_GlobalMipBias.x;
    let x_2425 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2422, x_2424);
    u_xlat6 = x_2425;
    let x_2427 : f32 = x_2378.x_MainLightCookieTextureFormat;
    let x_2429 : f32 = x_2378.x_MainLightCookieTextureFormat;
    let x_2431 : f32 = x_2378.x_MainLightCookieTextureFormat;
    let x_2433 : f32 = x_2378.x_MainLightCookieTextureFormat;
    let x_2434 : vec4<f32> = vec4<f32>(x_2427, x_2429, x_2431, x_2433);
    let x_2441 : vec4<bool> = (vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2434.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_2441.x, x_2441.y);
    let x_2444 : bool = u_xlatb57.y;
    if (x_2444) {
      let x_2449 : f32 = u_xlat6.w;
      x_2445 = x_2449;
    } else {
      let x_2452 : f32 = u_xlat6.x;
      x_2445 = x_2452;
    }
    let x_2453 : f32 = x_2445;
    u_xlat83 = x_2453;
    let x_2455 : bool = u_xlatb57.x;
    if (x_2455) {
      let x_2459 : vec4<f32> = u_xlat6;
      x_2456 = vec3<f32>(x_2459.x, x_2459.y, x_2459.z);
    } else {
      let x_2462 : f32 = u_xlat83;
      x_2456 = vec3<f32>(x_2462, x_2462, x_2462);
    }
    let x_2464 : vec3<f32> = x_2456;
    let x_2465 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2471 : vec4<f32> = u_xlat6;
  let x_2474 : vec4<f32> = x_29.x_MainLightColor;
  let x_2476 : vec3<f32> = (vec3<f32>(x_2471.x, x_2471.y, x_2471.z) * vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
  let x_2477 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
  let x_2480 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2480;
  let x_2483 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2483;
  let x_2486 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2486;
  let x_2488 : vec4<f32> = u_xlat7;
  let x_2491 : vec4<f32> = u_xlat1;
  u_xlat57.x = dot(-(vec3<f32>(x_2488.x, x_2488.y, x_2488.z)), vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
  let x_2496 : f32 = u_xlat57.x;
  let x_2498 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2496 + x_2498);
  let x_2501 : vec4<f32> = u_xlat1;
  let x_2503 : vec2<f32> = u_xlat57;
  let x_2507 : vec4<f32> = u_xlat7;
  let x_2510 : vec3<f32> = ((vec3<f32>(x_2501.x, x_2501.y, x_2501.z) * -(vec3<f32>(x_2503.x, x_2503.x, x_2503.x))) + -(vec3<f32>(x_2507.x, x_2507.y, x_2507.z)));
  let x_2511 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
  let x_2513 : vec4<f32> = u_xlat1;
  let x_2515 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2520 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2520, 0.0f, 1.0f);
  let x_2524 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_2524) + 1.0f);
  let x_2529 : f32 = u_xlat57.x;
  let x_2531 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2529 * x_2531);
  let x_2535 : f32 = u_xlat57.x;
  let x_2537 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2535 * x_2537);
  let x_2541 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2541) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2548 : f32 = u_xlat0.x;
  let x_2549 : f32 = u_xlat83;
  u_xlat0.x = (x_2548 * x_2549);
  let x_2553 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2553 * 6.0f);
  let x_2565 : vec4<f32> = u_xlat8;
  let x_2568 : f32 = u_xlat0.x;
  let x_2569 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2565.x, x_2565.y, x_2565.z), x_2568);
  u_xlat8 = x_2569;
  let x_2571 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2571 + -1.0f);
  let x_2579 : f32 = x_2577.unity_SpecCube0_HDR.w;
  let x_2581 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2579 * x_2581) + 1.0f);
  let x_2586 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2586, 0.0f);
  let x_2590 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2590);
  let x_2594 : f32 = u_xlat0.x;
  let x_2596 : f32 = x_2577.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2594 * x_2596);
  let x_2600 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2600);
  let x_2604 : f32 = u_xlat0.x;
  let x_2606 : f32 = x_2577.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2604 * x_2606);
  let x_2609 : vec4<f32> = u_xlat8;
  let x_2611 : vec3<f32> = u_xlat0;
  let x_2613 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) * vec3<f32>(x_2611.x, x_2611.x, x_2611.x));
  let x_2614 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
  let x_2616 : f32 = u_xlat52;
  let x_2618 : f32 = u_xlat52;
  let x_2622 : vec2<f32> = ((vec2<f32>(x_2616, x_2616) * vec2<f32>(x_2618, x_2618)) + vec2<f32>(-1.0f, 1.0f));
  let x_2623 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2622.x, x_2623.y, x_2622.y);
  let x_2626 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2626);
  let x_2628 : vec4<f32> = u_xlat4;
  let x_2631 : vec4<f32> = u_xlat3;
  let x_2633 : vec3<f32> = (-(vec3<f32>(x_2628.x, x_2628.y, x_2628.z)) + vec3<f32>(x_2631.x, x_2631.x, x_2631.x));
  let x_2634 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
  let x_2636 : vec2<f32> = u_xlat57;
  let x_2638 : vec4<f32> = u_xlat9;
  let x_2641 : vec4<f32> = u_xlat4;
  let x_2643 : vec3<f32> = ((vec3<f32>(x_2636.x, x_2636.x, x_2636.x) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z)) + vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
  let x_2646 : f32 = u_xlat52;
  let x_2648 : vec4<f32> = u_xlat9;
  let x_2650 : vec3<f32> = (vec3<f32>(x_2646, x_2646, x_2646) * vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
  let x_2651 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
  let x_2653 : vec4<f32> = u_xlat8;
  let x_2655 : vec4<f32> = u_xlat9;
  let x_2657 : vec3<f32> = (vec3<f32>(x_2653.x, x_2653.y, x_2653.z) * vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
  let x_2658 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2658.w);
  let x_2660 : vec4<f32> = u_xlat2;
  let x_2662 : vec3<f32> = u_xlat29;
  let x_2664 : vec4<f32> = u_xlat8;
  let x_2666 : vec3<f32> = ((vec3<f32>(x_2660.x, x_2660.y, x_2660.z) * x_2662) + vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
  let x_2667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
  let x_2670 : f32 = u_xlat5.x;
  let x_2672 : f32 = x_2577.unity_LightData.z;
  u_xlat52 = (x_2670 * x_2672);
  let x_2674 : vec4<f32> = u_xlat1;
  let x_2677 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2674.x, x_2674.y, x_2674.z), vec3<f32>(x_2677.x, x_2677.y, x_2677.z));
  let x_2682 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2682, 0.0f, 1.0f);
  let x_2685 : f32 = u_xlat52;
  let x_2687 : f32 = u_xlat3.x;
  u_xlat52 = (x_2685 * x_2687);
  let x_2689 : f32 = u_xlat52;
  let x_2691 : vec4<f32> = u_xlat6;
  let x_2693 : vec3<f32> = (vec3<f32>(x_2689, x_2689, x_2689) * vec3<f32>(x_2691.x, x_2691.y, x_2691.z));
  let x_2694 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2693.x, x_2694.y, x_2693.y, x_2693.z);
  let x_2696 : vec4<f32> = u_xlat7;
  let x_2699 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2701 : vec3<f32> = (vec3<f32>(x_2696.x, x_2696.y, x_2696.z) + vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
  let x_2702 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
  let x_2704 : vec4<f32> = u_xlat6;
  let x_2706 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2704.x, x_2704.y, x_2704.z), vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
  let x_2709 : f32 = u_xlat52;
  u_xlat52 = max(x_2709, 1.17549435e-38f);
  let x_2712 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2712);
  let x_2714 : f32 = u_xlat52;
  let x_2716 : vec4<f32> = u_xlat6;
  let x_2718 : vec3<f32> = (vec3<f32>(x_2714, x_2714, x_2714) * vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
  let x_2719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
  let x_2721 : vec4<f32> = u_xlat1;
  let x_2723 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2721.x, x_2721.y, x_2721.z), vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
  let x_2726 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2726, 0.0f, 1.0f);
  let x_2729 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2731 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_2729.x, x_2729.y, x_2729.z), vec3<f32>(x_2731.x, x_2731.y, x_2731.z));
  let x_2736 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2736, 0.0f, 1.0f);
  let x_2739 : f32 = u_xlat52;
  let x_2740 : f32 = u_xlat52;
  u_xlat52 = (x_2739 * x_2740);
  let x_2742 : f32 = u_xlat52;
  let x_2744 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2742 * x_2744) + 1.00001001358032226562f);
  let x_2749 : f32 = u_xlat3.x;
  let x_2751 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2749 * x_2751);
  let x_2754 : f32 = u_xlat52;
  let x_2755 : f32 = u_xlat52;
  u_xlat52 = (x_2754 * x_2755);
  let x_2758 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2758, 0.10000000149011611938f);
  let x_2762 : f32 = u_xlat52;
  let x_2764 : f32 = u_xlat3.x;
  u_xlat52 = (x_2762 * x_2764);
  let x_2766 : f32 = u_xlat82;
  let x_2767 : f32 = u_xlat52;
  u_xlat52 = (x_2766 * x_2767);
  let x_2769 : f32 = u_xlat80;
  let x_2770 : f32 = u_xlat52;
  u_xlat52 = (x_2769 / x_2770);
  let x_2772 : vec4<f32> = u_xlat4;
  let x_2774 : f32 = u_xlat52;
  let x_2777 : vec3<f32> = u_xlat29;
  let x_2778 : vec3<f32> = ((vec3<f32>(x_2772.x, x_2772.y, x_2772.z) * vec3<f32>(x_2774, x_2774, x_2774)) + x_2777);
  let x_2779 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2778.x, x_2778.y, x_2778.z, x_2779.w);
  let x_2781 : vec4<f32> = u_xlat5;
  let x_2783 : vec4<f32> = u_xlat6;
  let x_2785 : vec3<f32> = (vec3<f32>(x_2781.x, x_2781.z, x_2781.w) * vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
  let x_2786 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2785.x, x_2786.y, x_2785.y, x_2785.z);
  let x_2789 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2791 : f32 = x_2577.unity_LightData.y;
  u_xlat52 = min(x_2789, x_2791);
  let x_2795 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2795));
  let x_2799 : f32 = u_xlat31.x;
  let x_2801 : f32 = x_1025.x_AdditionalShadowFadeParams.x;
  let x_2804 : f32 = x_1025.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2799 * x_2801) + x_2804);
  let x_2808 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2808, 0.0f, 1.0f);
  let x_2813 : f32 = x_2378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2815 : f32 = x_2378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2817 : f32 = x_2378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2819 : f32 = x_2378.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2820 : vec4<f32> = vec4<f32>(x_2813, x_2815, x_2817, x_2819);
  let x_2827 : vec4<bool> = (vec4<f32>(x_2820.x, x_2820.y, x_2820.z, x_2820.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2827.x, x_2827.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2839 : u32 = u_xlatu_loop_1;
    let x_2840 : u32 = u_xlatu52;
    if ((x_2839 < x_2840)) {
    } else {
      break;
    }
    let x_2843 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_2843 >> 2u);
    let x_2847 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2847 & 3u));
    let x_2850 : u32 = u_xlatu58;
    let x_2853 : vec4<f32> = x_2577.unity_LightIndices[bitcast<i32>(x_2850)];
    let x_2863 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2868 : vec4<u32> = indexable[x_2863];
    u_xlat58.x = dot(x_2853, bitcast<vec4<f32>>(x_2868));
    let x_2874 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_2874);
    let x_2876 : vec3<f32> = vs_TEXCOORD7;
    let x_2887 : i32 = u_xlati58;
    let x_2889 : vec4<f32> = x_2886.x_AdditionalLightsPosition[x_2887];
    let x_2892 : i32 = u_xlati58;
    let x_2894 : vec4<f32> = x_2886.x_AdditionalLightsPosition[x_2892];
    let x_2896 : vec3<f32> = ((-(x_2876) * vec3<f32>(x_2889.w, x_2889.w, x_2889.w)) + vec3<f32>(x_2894.x, x_2894.y, x_2894.z));
    let x_2897 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2896.x, x_2896.y, x_2896.z, x_2897.w);
    let x_2900 : vec4<f32> = u_xlat9;
    let x_2902 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2900.x, x_2900.y, x_2900.z), vec3<f32>(x_2902.x, x_2902.y, x_2902.z));
    let x_2905 : f32 = u_xlat84;
    u_xlat84 = max(x_2905, 0.00006103515625f);
    let x_2908 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2908);
    let x_2910 : f32 = u_xlat85;
    let x_2912 : vec4<f32> = u_xlat9;
    let x_2914 : vec3<f32> = (vec3<f32>(x_2910, x_2910, x_2910) * vec3<f32>(x_2912.x, x_2912.y, x_2912.z));
    let x_2915 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
    let x_2918 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2918);
    let x_2920 : f32 = u_xlat84;
    let x_2921 : i32 = u_xlati58;
    let x_2923 : f32 = x_2886.x_AdditionalLightsAttenuation[x_2921].x;
    u_xlat84 = (x_2920 * x_2923);
    let x_2925 : f32 = u_xlat84;
    let x_2927 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2925) * x_2927) + 1.0f);
    let x_2930 : f32 = u_xlat84;
    u_xlat84 = max(x_2930, 0.0f);
    let x_2932 : f32 = u_xlat84;
    let x_2933 : f32 = u_xlat84;
    u_xlat84 = (x_2932 * x_2933);
    let x_2935 : f32 = u_xlat84;
    let x_2936 : f32 = u_xlat86;
    u_xlat84 = (x_2935 * x_2936);
    let x_2938 : i32 = u_xlati58;
    let x_2940 : vec4<f32> = x_2886.x_AdditionalLightsSpotDir[x_2938];
    let x_2942 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2940.x, x_2940.y, x_2940.z), vec3<f32>(x_2942.x, x_2942.y, x_2942.z));
    let x_2945 : f32 = u_xlat86;
    let x_2946 : i32 = u_xlati58;
    let x_2948 : f32 = x_2886.x_AdditionalLightsAttenuation[x_2946].z;
    let x_2950 : i32 = u_xlati58;
    let x_2952 : f32 = x_2886.x_AdditionalLightsAttenuation[x_2950].w;
    u_xlat86 = ((x_2945 * x_2948) + x_2952);
    let x_2954 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2954, 0.0f, 1.0f);
    let x_2956 : f32 = u_xlat86;
    let x_2957 : f32 = u_xlat86;
    u_xlat86 = (x_2956 * x_2957);
    let x_2959 : f32 = u_xlat84;
    let x_2960 : f32 = u_xlat86;
    u_xlat84 = (x_2959 * x_2960);
    let x_2963 : i32 = u_xlati58;
    let x_2965 : f32 = x_1025.x_AdditionalShadowParams[x_2963].w;
    u_xlati86 = i32(x_2965);
    let x_2968 : i32 = u_xlati86;
    u_xlatb87 = (x_2968 >= 0i);
    let x_2970 : bool = u_xlatb87;
    if (x_2970) {
      let x_2974 : i32 = u_xlati58;
      let x_2976 : f32 = x_1025.x_AdditionalShadowParams[x_2974].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2976, x_2976, x_2976, x_2976))));
      let x_2980 : bool = u_xlatb87;
      if (x_2980) {
        let x_2985 : vec4<f32> = u_xlat10;
        let x_2988 : vec4<f32> = u_xlat10;
        let x_2991 : vec4<bool> = (abs(vec4<f32>(x_2985.z, x_2985.z, x_2985.y, x_2985.z)) >= abs(vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.x)));
        let x_2993 : vec3<bool> = vec3<bool>(x_2991.x, x_2991.y, x_2991.z);
        let x_2994 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
        let x_2997 : bool = u_xlatb11.y;
        let x_2999 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2997 & x_2999);
        let x_3001 : vec4<f32> = u_xlat10;
        let x_3004 : vec4<bool> = (-(vec4<f32>(x_3001.z, x_3001.y, x_3001.z, x_3001.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3005 : vec3<bool> = vec3<bool>(x_3004.x, x_3004.y, x_3004.w);
        let x_3006 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3005.x, x_3005.y, x_3006.z, x_3005.z);
        let x_3009 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3009);
        let x_3014 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3014);
        let x_3020 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3020);
        let x_3023 : bool = u_xlatb11.z;
        if (x_3023) {
          let x_3028 : f32 = u_xlat11.y;
          x_3024 = x_3028;
        } else {
          let x_3030 : f32 = u_xlat88;
          x_3024 = x_3030;
        }
        let x_3031 : f32 = x_3024;
        u_xlat88 = x_3031;
        let x_3033 : bool = u_xlatb87;
        if (x_3033) {
          let x_3038 : f32 = u_xlat11.x;
          x_3034 = x_3038;
        } else {
          let x_3040 : f32 = u_xlat88;
          x_3034 = x_3040;
        }
        let x_3041 : f32 = x_3034;
        u_xlat87 = x_3041;
        let x_3042 : i32 = u_xlati58;
        let x_3044 : f32 = x_1025.x_AdditionalShadowParams[x_3042].w;
        u_xlat88 = trunc(x_3044);
        let x_3046 : f32 = u_xlat87;
        let x_3047 : f32 = u_xlat88;
        u_xlat87 = (x_3046 + x_3047);
        let x_3049 : f32 = u_xlat87;
        u_xlati86 = i32(x_3049);
      }
      let x_3051 : i32 = u_xlati86;
      u_xlati86 = (x_3051 << bitcast<u32>(2i));
      let x_3053 : vec3<f32> = vs_TEXCOORD7;
      let x_3055 : i32 = u_xlati86;
      let x_3058 : i32 = u_xlati86;
      let x_3062 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[((x_3055 + 1i) / 4i)][((x_3058 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3053.y, x_3053.y, x_3053.y, x_3053.y) * x_3062);
      let x_3064 : i32 = u_xlati86;
      let x_3066 : i32 = u_xlati86;
      let x_3069 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[(x_3064 / 4i)][(x_3066 % 4i)];
      let x_3070 : vec3<f32> = vs_TEXCOORD7;
      let x_3073 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3069 * vec4<f32>(x_3070.x, x_3070.x, x_3070.x, x_3070.x)) + x_3073);
      let x_3075 : i32 = u_xlati86;
      let x_3078 : i32 = u_xlati86;
      let x_3082 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[((x_3075 + 2i) / 4i)][((x_3078 + 2i) % 4i)];
      let x_3083 : vec3<f32> = vs_TEXCOORD7;
      let x_3086 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3082 * vec4<f32>(x_3083.z, x_3083.z, x_3083.z, x_3083.z)) + x_3086);
      let x_3088 : vec4<f32> = u_xlat11;
      let x_3089 : i32 = u_xlati86;
      let x_3092 : i32 = u_xlati86;
      let x_3096 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[((x_3089 + 3i) / 4i)][((x_3092 + 3i) % 4i)];
      u_xlat11 = (x_3088 + x_3096);
      let x_3098 : vec4<f32> = u_xlat11;
      let x_3100 : vec4<f32> = u_xlat11;
      let x_3102 : vec3<f32> = (vec3<f32>(x_3098.x, x_3098.y, x_3098.z) / vec3<f32>(x_3100.w, x_3100.w, x_3100.w));
      let x_3103 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
      let x_3106 : i32 = u_xlati58;
      let x_3108 : f32 = x_1025.x_AdditionalShadowParams[x_3106].y;
      u_xlatb86 = (0.0f < x_3108);
      let x_3110 : bool = u_xlatb86;
      if (x_3110) {
        let x_3113 : i32 = u_xlati58;
        let x_3115 : f32 = x_1025.x_AdditionalShadowParams[x_3113].y;
        u_xlatb86 = (1.0f == x_3115);
        let x_3117 : bool = u_xlatb86;
        if (x_3117) {
          let x_3120 : vec4<f32> = u_xlat11;
          let x_3123 : vec4<f32> = x_1025.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y) + x_3123);
          let x_3126 : vec4<f32> = u_xlat12;
          let x_3127 : vec2<f32> = vec2<f32>(x_3126.x, x_3126.y);
          let x_3129 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3127.x, x_3127.y, x_3129);
          let x_3137 : vec3<f32> = txVec30;
          let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
          u_xlat13.x = x_3139;
          let x_3142 : vec4<f32> = u_xlat12;
          let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
          let x_3145 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
          let x_3152 : vec3<f32> = txVec31;
          let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
          u_xlat13.y = x_3154;
          let x_3156 : vec4<f32> = u_xlat11;
          let x_3159 : vec4<f32> = x_1025.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3156.x, x_3156.y, x_3156.x, x_3156.y) + x_3159);
          let x_3162 : vec4<f32> = u_xlat12;
          let x_3163 : vec2<f32> = vec2<f32>(x_3162.x, x_3162.y);
          let x_3165 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3163.x, x_3163.y, x_3165);
          let x_3172 : vec3<f32> = txVec32;
          let x_3174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3172.xy, x_3172.z);
          u_xlat13.z = x_3174;
          let x_3177 : vec4<f32> = u_xlat12;
          let x_3178 : vec2<f32> = vec2<f32>(x_3177.z, x_3177.w);
          let x_3180 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
          let x_3187 : vec3<f32> = txVec33;
          let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
          u_xlat13.w = x_3189;
          let x_3191 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3191, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3194 : i32 = u_xlati58;
          let x_3196 : f32 = x_1025.x_AdditionalShadowParams[x_3194].y;
          u_xlatb87 = (2.0f == x_3196);
          let x_3198 : bool = u_xlatb87;
          if (x_3198) {
            let x_3201 : vec4<f32> = u_xlat11;
            let x_3204 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3207 : vec2<f32> = ((vec2<f32>(x_3201.x, x_3201.y) * vec2<f32>(x_3204.z, x_3204.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3208 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3207.x, x_3207.y, x_3208.z, x_3208.w);
            let x_3210 : vec4<f32> = u_xlat12;
            let x_3212 : vec2<f32> = floor(vec2<f32>(x_3210.x, x_3210.y));
            let x_3213 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3212.x, x_3212.y, x_3213.z, x_3213.w);
            let x_3215 : vec4<f32> = u_xlat11;
            let x_3218 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3221 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3215.x, x_3215.y) * vec2<f32>(x_3218.z, x_3218.w)) + -(vec2<f32>(x_3221.x, x_3221.y)));
            let x_3225 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3225.x, x_3225.x, x_3225.y, x_3225.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3228 : vec4<f32> = u_xlat13;
            let x_3230 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3228.x, x_3228.x, x_3228.z, x_3228.z) * vec4<f32>(x_3230.x, x_3230.x, x_3230.z, x_3230.z));
            let x_3233 : vec4<f32> = u_xlat14;
            let x_3235 : vec2<f32> = (vec2<f32>(x_3233.y, x_3233.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3236 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3235.x, x_3236.y, x_3235.y, x_3236.w);
            let x_3238 : vec4<f32> = u_xlat14;
            let x_3241 : vec2<f32> = u_xlat64;
            let x_3243 : vec2<f32> = ((vec2<f32>(x_3238.x, x_3238.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3241));
            let x_3244 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
            let x_3247 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3247) + vec2<f32>(1.0f, 1.0f));
            let x_3250 : vec2<f32> = u_xlat64;
            let x_3251 : vec2<f32> = min(x_3250, vec2<f32>(0.0f, 0.0f));
            let x_3252 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3251.x, x_3251.y, x_3252.z, x_3252.w);
            let x_3254 : vec4<f32> = u_xlat15;
            let x_3257 : vec4<f32> = u_xlat15;
            let x_3260 : vec2<f32> = u_xlat66;
            let x_3261 : vec2<f32> = ((-(vec2<f32>(x_3254.x, x_3254.y)) * vec2<f32>(x_3257.x, x_3257.y)) + x_3260);
            let x_3262 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3261.x, x_3261.y, x_3262.z, x_3262.w);
            let x_3264 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3264, vec2<f32>(0.0f, 0.0f));
            let x_3266 : vec2<f32> = u_xlat64;
            let x_3268 : vec2<f32> = u_xlat64;
            let x_3270 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3266) * x_3268) + vec2<f32>(x_3270.y, x_3270.w));
            let x_3273 : vec4<f32> = u_xlat15;
            let x_3275 : vec2<f32> = (vec2<f32>(x_3273.x, x_3273.y) + vec2<f32>(1.0f, 1.0f));
            let x_3276 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3275.x, x_3275.y, x_3276.z, x_3276.w);
            let x_3278 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3278 + vec2<f32>(1.0f, 1.0f));
            let x_3280 : vec4<f32> = u_xlat14;
            let x_3282 : vec2<f32> = (vec2<f32>(x_3280.x, x_3280.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3283 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3282.x, x_3282.y, x_3283.z, x_3283.w);
            let x_3285 : vec2<f32> = u_xlat66;
            let x_3286 : vec2<f32> = (x_3285 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3287 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3286.x, x_3286.y, x_3287.z, x_3287.w);
            let x_3289 : vec4<f32> = u_xlat15;
            let x_3291 : vec2<f32> = (vec2<f32>(x_3289.x, x_3289.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3292 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3291.x, x_3291.y, x_3292.z, x_3292.w);
            let x_3294 : vec2<f32> = u_xlat64;
            let x_3295 : vec2<f32> = (x_3294 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3296 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3295.x, x_3295.y, x_3296.z, x_3296.w);
            let x_3298 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3298.y, x_3298.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3302 : f32 = u_xlat15.x;
            u_xlat16.z = x_3302;
            let x_3305 : f32 = u_xlat64.x;
            u_xlat16.w = x_3305;
            let x_3308 : f32 = u_xlat17.x;
            u_xlat14.z = x_3308;
            let x_3311 : f32 = u_xlat13.x;
            u_xlat14.w = x_3311;
            let x_3313 : vec4<f32> = u_xlat14;
            let x_3315 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3313.z, x_3313.w, x_3313.x, x_3313.z) + vec4<f32>(x_3315.z, x_3315.w, x_3315.x, x_3315.z));
            let x_3319 : f32 = u_xlat16.y;
            u_xlat15.z = x_3319;
            let x_3322 : f32 = u_xlat64.y;
            u_xlat15.w = x_3322;
            let x_3325 : f32 = u_xlat14.y;
            u_xlat17.z = x_3325;
            let x_3328 : f32 = u_xlat13.z;
            u_xlat17.w = x_3328;
            let x_3330 : vec4<f32> = u_xlat15;
            let x_3332 : vec4<f32> = u_xlat17;
            let x_3334 : vec3<f32> = (vec3<f32>(x_3330.z, x_3330.y, x_3330.w) + vec3<f32>(x_3332.z, x_3332.y, x_3332.w));
            let x_3335 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3334.x, x_3334.y, x_3334.z, x_3335.w);
            let x_3337 : vec4<f32> = u_xlat14;
            let x_3339 : vec4<f32> = u_xlat18;
            let x_3341 : vec3<f32> = (vec3<f32>(x_3337.x, x_3337.z, x_3337.w) / vec3<f32>(x_3339.z, x_3339.w, x_3339.y));
            let x_3342 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
            let x_3344 : vec4<f32> = u_xlat14;
            let x_3346 : vec3<f32> = (vec3<f32>(x_3344.x, x_3344.y, x_3344.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3347 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3346.x, x_3346.y, x_3346.z, x_3347.w);
            let x_3349 : vec4<f32> = u_xlat17;
            let x_3351 : vec4<f32> = u_xlat13;
            let x_3353 : vec3<f32> = (vec3<f32>(x_3349.z, x_3349.y, x_3349.w) / vec3<f32>(x_3351.x, x_3351.y, x_3351.z));
            let x_3354 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3353.x, x_3353.y, x_3353.z, x_3354.w);
            let x_3356 : vec4<f32> = u_xlat15;
            let x_3358 : vec3<f32> = (vec3<f32>(x_3356.x, x_3356.y, x_3356.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3359 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3358.x, x_3358.y, x_3358.z, x_3359.w);
            let x_3361 : vec4<f32> = u_xlat14;
            let x_3364 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3366 : vec3<f32> = (vec3<f32>(x_3361.y, x_3361.x, x_3361.z) * vec3<f32>(x_3364.x, x_3364.x, x_3364.x));
            let x_3367 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3366.x, x_3366.y, x_3366.z, x_3367.w);
            let x_3369 : vec4<f32> = u_xlat15;
            let x_3372 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3374 : vec3<f32> = (vec3<f32>(x_3369.x, x_3369.y, x_3369.z) * vec3<f32>(x_3372.y, x_3372.y, x_3372.y));
            let x_3375 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3374.x, x_3374.y, x_3374.z, x_3375.w);
            let x_3378 : f32 = u_xlat15.x;
            u_xlat14.w = x_3378;
            let x_3380 : vec4<f32> = u_xlat12;
            let x_3383 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3386 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3380.x, x_3380.y, x_3380.x, x_3380.y) * vec4<f32>(x_3383.x, x_3383.y, x_3383.x, x_3383.y)) + vec4<f32>(x_3386.y, x_3386.w, x_3386.x, x_3386.w));
            let x_3389 : vec4<f32> = u_xlat12;
            let x_3392 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3395 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3389.x, x_3389.y) * vec2<f32>(x_3392.x, x_3392.y)) + vec2<f32>(x_3395.z, x_3395.w));
            let x_3399 : f32 = u_xlat14.y;
            u_xlat15.w = x_3399;
            let x_3401 : vec4<f32> = u_xlat15;
            let x_3402 : vec2<f32> = vec2<f32>(x_3401.y, x_3401.z);
            let x_3403 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3403.x, x_3402.x, x_3403.z, x_3402.y);
            let x_3405 : vec4<f32> = u_xlat12;
            let x_3408 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3411 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3405.x, x_3405.y, x_3405.x, x_3405.y) * vec4<f32>(x_3408.x, x_3408.y, x_3408.x, x_3408.y)) + vec4<f32>(x_3411.x, x_3411.y, x_3411.z, x_3411.y));
            let x_3414 : vec4<f32> = u_xlat12;
            let x_3417 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3420 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3414.x, x_3414.y, x_3414.x, x_3414.y) * vec4<f32>(x_3417.x, x_3417.y, x_3417.x, x_3417.y)) + vec4<f32>(x_3420.w, x_3420.y, x_3420.w, x_3420.z));
            let x_3423 : vec4<f32> = u_xlat12;
            let x_3426 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3429 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3423.x, x_3423.y, x_3423.x, x_3423.y) * vec4<f32>(x_3426.x, x_3426.y, x_3426.x, x_3426.y)) + vec4<f32>(x_3429.x, x_3429.w, x_3429.z, x_3429.w));
            let x_3432 : vec4<f32> = u_xlat13;
            let x_3434 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3432.x, x_3432.x, x_3432.x, x_3432.y) * vec4<f32>(x_3434.z, x_3434.w, x_3434.y, x_3434.z));
            let x_3438 : vec4<f32> = u_xlat13;
            let x_3440 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3438.y, x_3438.y, x_3438.z, x_3438.z) * x_3440);
            let x_3443 : f32 = u_xlat13.z;
            let x_3445 : f32 = u_xlat18.y;
            u_xlat87 = (x_3443 * x_3445);
            let x_3448 : vec4<f32> = u_xlat16;
            let x_3449 : vec2<f32> = vec2<f32>(x_3448.x, x_3448.y);
            let x_3451 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec34;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat88 = x_3460;
            let x_3462 : vec4<f32> = u_xlat16;
            let x_3463 : vec2<f32> = vec2<f32>(x_3462.z, x_3462.w);
            let x_3465 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
            let x_3473 : vec3<f32> = txVec35;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat89 = x_3475;
            let x_3476 : f32 = u_xlat89;
            let x_3478 : f32 = u_xlat19.y;
            u_xlat89 = (x_3476 * x_3478);
            let x_3481 : f32 = u_xlat19.x;
            let x_3482 : f32 = u_xlat88;
            let x_3484 : f32 = u_xlat89;
            u_xlat88 = ((x_3481 * x_3482) + x_3484);
            let x_3487 : vec2<f32> = u_xlat64;
            let x_3489 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3487.x, x_3487.y, x_3489);
            let x_3496 : vec3<f32> = txVec36;
            let x_3498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3496.xy, x_3496.z);
            u_xlat89 = x_3498;
            let x_3500 : f32 = u_xlat19.z;
            let x_3501 : f32 = u_xlat89;
            let x_3503 : f32 = u_xlat88;
            u_xlat88 = ((x_3500 * x_3501) + x_3503);
            let x_3506 : vec4<f32> = u_xlat15;
            let x_3507 : vec2<f32> = vec2<f32>(x_3506.x, x_3506.y);
            let x_3509 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
            let x_3516 : vec3<f32> = txVec37;
            let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
            u_xlat89 = x_3518;
            let x_3520 : f32 = u_xlat19.w;
            let x_3521 : f32 = u_xlat89;
            let x_3523 : f32 = u_xlat88;
            u_xlat88 = ((x_3520 * x_3521) + x_3523);
            let x_3526 : vec4<f32> = u_xlat17;
            let x_3527 : vec2<f32> = vec2<f32>(x_3526.x, x_3526.y);
            let x_3529 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3527.x, x_3527.y, x_3529);
            let x_3536 : vec3<f32> = txVec38;
            let x_3538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3536.xy, x_3536.z);
            u_xlat89 = x_3538;
            let x_3540 : f32 = u_xlat20.x;
            let x_3541 : f32 = u_xlat89;
            let x_3543 : f32 = u_xlat88;
            u_xlat88 = ((x_3540 * x_3541) + x_3543);
            let x_3546 : vec4<f32> = u_xlat17;
            let x_3547 : vec2<f32> = vec2<f32>(x_3546.z, x_3546.w);
            let x_3549 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3547.x, x_3547.y, x_3549);
            let x_3556 : vec3<f32> = txVec39;
            let x_3558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3556.xy, x_3556.z);
            u_xlat89 = x_3558;
            let x_3560 : f32 = u_xlat20.y;
            let x_3561 : f32 = u_xlat89;
            let x_3563 : f32 = u_xlat88;
            u_xlat88 = ((x_3560 * x_3561) + x_3563);
            let x_3566 : vec4<f32> = u_xlat15;
            let x_3567 : vec2<f32> = vec2<f32>(x_3566.z, x_3566.w);
            let x_3569 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3567.x, x_3567.y, x_3569);
            let x_3576 : vec3<f32> = txVec40;
            let x_3578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3576.xy, x_3576.z);
            u_xlat89 = x_3578;
            let x_3580 : f32 = u_xlat20.z;
            let x_3581 : f32 = u_xlat89;
            let x_3583 : f32 = u_xlat88;
            u_xlat88 = ((x_3580 * x_3581) + x_3583);
            let x_3586 : vec4<f32> = u_xlat14;
            let x_3587 : vec2<f32> = vec2<f32>(x_3586.x, x_3586.y);
            let x_3589 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3587.x, x_3587.y, x_3589);
            let x_3596 : vec3<f32> = txVec41;
            let x_3598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3596.xy, x_3596.z);
            u_xlat89 = x_3598;
            let x_3600 : f32 = u_xlat20.w;
            let x_3601 : f32 = u_xlat89;
            let x_3603 : f32 = u_xlat88;
            u_xlat88 = ((x_3600 * x_3601) + x_3603);
            let x_3606 : vec4<f32> = u_xlat14;
            let x_3607 : vec2<f32> = vec2<f32>(x_3606.z, x_3606.w);
            let x_3609 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3607.x, x_3607.y, x_3609);
            let x_3616 : vec3<f32> = txVec42;
            let x_3618 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3616.xy, x_3616.z);
            u_xlat89 = x_3618;
            let x_3619 : f32 = u_xlat87;
            let x_3620 : f32 = u_xlat89;
            let x_3622 : f32 = u_xlat88;
            u_xlat86 = ((x_3619 * x_3620) + x_3622);
          } else {
            let x_3625 : vec4<f32> = u_xlat11;
            let x_3628 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3631 : vec2<f32> = ((vec2<f32>(x_3625.x, x_3625.y) * vec2<f32>(x_3628.z, x_3628.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3632 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3631.x, x_3631.y, x_3632.z, x_3632.w);
            let x_3634 : vec4<f32> = u_xlat12;
            let x_3636 : vec2<f32> = floor(vec2<f32>(x_3634.x, x_3634.y));
            let x_3637 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3636.x, x_3636.y, x_3637.z, x_3637.w);
            let x_3639 : vec4<f32> = u_xlat11;
            let x_3642 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3645 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3639.x, x_3639.y) * vec2<f32>(x_3642.z, x_3642.w)) + -(vec2<f32>(x_3645.x, x_3645.y)));
            let x_3649 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3649.x, x_3649.x, x_3649.y, x_3649.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3652 : vec4<f32> = u_xlat13;
            let x_3654 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3652.x, x_3652.x, x_3652.z, x_3652.z) * vec4<f32>(x_3654.x, x_3654.x, x_3654.z, x_3654.z));
            let x_3657 : vec4<f32> = u_xlat14;
            let x_3659 : vec2<f32> = (vec2<f32>(x_3657.y, x_3657.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3660 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3660.x, x_3659.x, x_3660.z, x_3659.y);
            let x_3662 : vec4<f32> = u_xlat14;
            let x_3665 : vec2<f32> = u_xlat64;
            let x_3667 : vec2<f32> = ((vec2<f32>(x_3662.x, x_3662.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3665));
            let x_3668 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3667.x, x_3668.y, x_3667.y, x_3668.w);
            let x_3670 : vec2<f32> = u_xlat64;
            let x_3672 : vec2<f32> = (-(x_3670) + vec2<f32>(1.0f, 1.0f));
            let x_3673 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3672.x, x_3672.y, x_3673.z, x_3673.w);
            let x_3675 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3675, vec2<f32>(0.0f, 0.0f));
            let x_3677 : vec2<f32> = u_xlat66;
            let x_3679 : vec2<f32> = u_xlat66;
            let x_3681 : vec4<f32> = u_xlat14;
            let x_3683 : vec2<f32> = ((-(x_3677) * x_3679) + vec2<f32>(x_3681.x, x_3681.y));
            let x_3684 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3683.x, x_3683.y, x_3684.z, x_3684.w);
            let x_3686 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3686, vec2<f32>(0.0f, 0.0f));
            let x_3689 : vec2<f32> = u_xlat66;
            let x_3691 : vec2<f32> = u_xlat66;
            let x_3693 : vec4<f32> = u_xlat13;
            let x_3695 : vec2<f32> = ((-(x_3689) * x_3691) + vec2<f32>(x_3693.y, x_3693.w));
            let x_3696 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3695.x, x_3696.y, x_3695.y);
            let x_3698 : vec4<f32> = u_xlat14;
            let x_3700 : vec2<f32> = (vec2<f32>(x_3698.x, x_3698.y) + vec2<f32>(2.0f, 2.0f));
            let x_3701 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3700.x, x_3700.y, x_3701.z, x_3701.w);
            let x_3703 : vec3<f32> = u_xlat39;
            let x_3705 : vec2<f32> = (vec2<f32>(x_3703.x, x_3703.z) + vec2<f32>(2.0f, 2.0f));
            let x_3706 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3706.x, x_3705.x, x_3706.z, x_3705.y);
            let x_3709 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3709 * 0.08163200318813323975f);
            let x_3712 : vec4<f32> = u_xlat13;
            let x_3715 : vec3<f32> = (vec3<f32>(x_3712.z, x_3712.x, x_3712.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3716 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3715.x, x_3715.y, x_3715.z, x_3716.w);
            let x_3718 : vec4<f32> = u_xlat14;
            let x_3720 : vec2<f32> = (vec2<f32>(x_3718.x, x_3718.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3721 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3720.x, x_3720.y, x_3721.z, x_3721.w);
            let x_3724 : f32 = u_xlat17.y;
            u_xlat16.x = x_3724;
            let x_3726 : vec2<f32> = u_xlat64;
            let x_3729 : vec2<f32> = ((vec2<f32>(x_3726.x, x_3726.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3730 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3730.x, x_3729.x, x_3730.z, x_3729.y);
            let x_3732 : vec2<f32> = u_xlat64;
            let x_3735 : vec2<f32> = ((vec2<f32>(x_3732.x, x_3732.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3736 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3735.x, x_3736.y, x_3735.y, x_3736.w);
            let x_3739 : f32 = u_xlat13.x;
            u_xlat14.y = x_3739;
            let x_3742 : f32 = u_xlat15.y;
            u_xlat14.w = x_3742;
            let x_3744 : vec4<f32> = u_xlat14;
            let x_3745 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3744 + x_3745);
            let x_3747 : vec2<f32> = u_xlat64;
            let x_3750 : vec2<f32> = ((vec2<f32>(x_3747.y, x_3747.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3751 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3751.x, x_3750.x, x_3751.z, x_3750.y);
            let x_3753 : vec2<f32> = u_xlat64;
            let x_3756 : vec2<f32> = ((vec2<f32>(x_3753.y, x_3753.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3757 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3756.x, x_3757.y, x_3756.y, x_3757.w);
            let x_3760 : f32 = u_xlat13.y;
            u_xlat15.y = x_3760;
            let x_3762 : vec4<f32> = u_xlat15;
            let x_3763 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3762 + x_3763);
            let x_3765 : vec4<f32> = u_xlat14;
            let x_3766 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3765 / x_3766);
            let x_3768 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3768 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3770 : vec4<f32> = u_xlat15;
            let x_3771 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3770 / x_3771);
            let x_3773 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3773 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3775 : vec4<f32> = u_xlat14;
            let x_3778 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3775.w, x_3775.x, x_3775.y, x_3775.z) * vec4<f32>(x_3778.x, x_3778.x, x_3778.x, x_3778.x));
            let x_3781 : vec4<f32> = u_xlat15;
            let x_3784 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3781.x, x_3781.w, x_3781.y, x_3781.z) * vec4<f32>(x_3784.y, x_3784.y, x_3784.y, x_3784.y));
            let x_3787 : vec4<f32> = u_xlat14;
            let x_3788 : vec3<f32> = vec3<f32>(x_3787.y, x_3787.z, x_3787.w);
            let x_3789 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3788.x, x_3789.y, x_3788.y, x_3788.z);
            let x_3792 : f32 = u_xlat15.x;
            u_xlat17.y = x_3792;
            let x_3794 : vec4<f32> = u_xlat12;
            let x_3797 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3800 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3794.x, x_3794.y, x_3794.x, x_3794.y) * vec4<f32>(x_3797.x, x_3797.y, x_3797.x, x_3797.y)) + vec4<f32>(x_3800.x, x_3800.y, x_3800.z, x_3800.y));
            let x_3803 : vec4<f32> = u_xlat12;
            let x_3806 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3809 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3803.x, x_3803.y) * vec2<f32>(x_3806.x, x_3806.y)) + vec2<f32>(x_3809.w, x_3809.y));
            let x_3813 : f32 = u_xlat17.y;
            u_xlat14.y = x_3813;
            let x_3816 : f32 = u_xlat15.z;
            u_xlat17.y = x_3816;
            let x_3818 : vec4<f32> = u_xlat12;
            let x_3821 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3824 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3818.x, x_3818.y, x_3818.x, x_3818.y) * vec4<f32>(x_3821.x, x_3821.y, x_3821.x, x_3821.y)) + vec4<f32>(x_3824.x, x_3824.y, x_3824.z, x_3824.y));
            let x_3827 : vec4<f32> = u_xlat12;
            let x_3830 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3833 : vec4<f32> = u_xlat17;
            let x_3835 : vec2<f32> = ((vec2<f32>(x_3827.x, x_3827.y) * vec2<f32>(x_3830.x, x_3830.y)) + vec2<f32>(x_3833.w, x_3833.y));
            let x_3836 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3835.x, x_3835.y, x_3836.z, x_3836.w);
            let x_3839 : f32 = u_xlat17.y;
            u_xlat14.z = x_3839;
            let x_3842 : vec4<f32> = u_xlat12;
            let x_3845 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3848 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3842.x, x_3842.y, x_3842.x, x_3842.y) * vec4<f32>(x_3845.x, x_3845.y, x_3845.x, x_3845.y)) + vec4<f32>(x_3848.x, x_3848.y, x_3848.x, x_3848.z));
            let x_3852 : f32 = u_xlat15.w;
            u_xlat17.y = x_3852;
            let x_3855 : vec4<f32> = u_xlat12;
            let x_3858 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3861 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3855.x, x_3855.y, x_3855.x, x_3855.y) * vec4<f32>(x_3858.x, x_3858.y, x_3858.x, x_3858.y)) + vec4<f32>(x_3861.x, x_3861.y, x_3861.z, x_3861.y));
            let x_3865 : vec4<f32> = u_xlat12;
            let x_3868 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3871 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3865.x, x_3865.y) * vec2<f32>(x_3868.x, x_3868.y)) + vec2<f32>(x_3871.w, x_3871.y));
            let x_3875 : f32 = u_xlat17.y;
            u_xlat14.w = x_3875;
            let x_3878 : vec4<f32> = u_xlat12;
            let x_3881 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3884 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3878.x, x_3878.y) * vec2<f32>(x_3881.x, x_3881.y)) + vec2<f32>(x_3884.x, x_3884.w));
            let x_3887 : vec4<f32> = u_xlat17;
            let x_3888 : vec3<f32> = vec3<f32>(x_3887.x, x_3887.z, x_3887.w);
            let x_3889 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3888.x, x_3889.y, x_3888.y, x_3888.z);
            let x_3891 : vec4<f32> = u_xlat12;
            let x_3894 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3897 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3891.x, x_3891.y, x_3891.x, x_3891.y) * vec4<f32>(x_3894.x, x_3894.y, x_3894.x, x_3894.y)) + vec4<f32>(x_3897.x, x_3897.y, x_3897.z, x_3897.y));
            let x_3901 : vec4<f32> = u_xlat12;
            let x_3904 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3907 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3901.x, x_3901.y) * vec2<f32>(x_3904.x, x_3904.y)) + vec2<f32>(x_3907.w, x_3907.y));
            let x_3911 : f32 = u_xlat14.x;
            u_xlat15.x = x_3911;
            let x_3913 : vec4<f32> = u_xlat12;
            let x_3916 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3919 : vec4<f32> = u_xlat15;
            let x_3921 : vec2<f32> = ((vec2<f32>(x_3913.x, x_3913.y) * vec2<f32>(x_3916.x, x_3916.y)) + vec2<f32>(x_3919.x, x_3919.y));
            let x_3922 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3921.x, x_3921.y, x_3922.z, x_3922.w);
            let x_3925 : vec4<f32> = u_xlat13;
            let x_3927 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3925.x, x_3925.x, x_3925.x, x_3925.x) * x_3927);
            let x_3930 : vec4<f32> = u_xlat13;
            let x_3932 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3930.y, x_3930.y, x_3930.y, x_3930.y) * x_3932);
            let x_3935 : vec4<f32> = u_xlat13;
            let x_3937 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3935.z, x_3935.z, x_3935.z, x_3935.z) * x_3937);
            let x_3939 : vec4<f32> = u_xlat13;
            let x_3941 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3939.w, x_3939.w, x_3939.w, x_3939.w) * x_3941);
            let x_3944 : vec4<f32> = u_xlat18;
            let x_3945 : vec2<f32> = vec2<f32>(x_3944.x, x_3944.y);
            let x_3947 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3945.x, x_3945.y, x_3947);
            let x_3954 : vec3<f32> = txVec43;
            let x_3956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3954.xy, x_3954.z);
            u_xlat87 = x_3956;
            let x_3958 : vec4<f32> = u_xlat18;
            let x_3959 : vec2<f32> = vec2<f32>(x_3958.z, x_3958.w);
            let x_3961 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3959.x, x_3959.y, x_3961);
            let x_3968 : vec3<f32> = txVec44;
            let x_3970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3968.xy, x_3968.z);
            u_xlat88 = x_3970;
            let x_3971 : f32 = u_xlat88;
            let x_3973 : f32 = u_xlat23.y;
            u_xlat88 = (x_3971 * x_3973);
            let x_3976 : f32 = u_xlat23.x;
            let x_3977 : f32 = u_xlat87;
            let x_3979 : f32 = u_xlat88;
            u_xlat87 = ((x_3976 * x_3977) + x_3979);
            let x_3982 : vec2<f32> = u_xlat64;
            let x_3984 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3982.x, x_3982.y, x_3984);
            let x_3991 : vec3<f32> = txVec45;
            let x_3993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3991.xy, x_3991.z);
            u_xlat88 = x_3993;
            let x_3995 : f32 = u_xlat23.z;
            let x_3996 : f32 = u_xlat88;
            let x_3998 : f32 = u_xlat87;
            u_xlat87 = ((x_3995 * x_3996) + x_3998);
            let x_4001 : vec4<f32> = u_xlat21;
            let x_4002 : vec2<f32> = vec2<f32>(x_4001.x, x_4001.y);
            let x_4004 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4002.x, x_4002.y, x_4004);
            let x_4011 : vec3<f32> = txVec46;
            let x_4013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4011.xy, x_4011.z);
            u_xlat88 = x_4013;
            let x_4015 : f32 = u_xlat23.w;
            let x_4016 : f32 = u_xlat88;
            let x_4018 : f32 = u_xlat87;
            u_xlat87 = ((x_4015 * x_4016) + x_4018);
            let x_4021 : vec4<f32> = u_xlat19;
            let x_4022 : vec2<f32> = vec2<f32>(x_4021.x, x_4021.y);
            let x_4024 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4022.x, x_4022.y, x_4024);
            let x_4031 : vec3<f32> = txVec47;
            let x_4033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4031.xy, x_4031.z);
            u_xlat88 = x_4033;
            let x_4035 : f32 = u_xlat24.x;
            let x_4036 : f32 = u_xlat88;
            let x_4038 : f32 = u_xlat87;
            u_xlat87 = ((x_4035 * x_4036) + x_4038);
            let x_4041 : vec4<f32> = u_xlat19;
            let x_4042 : vec2<f32> = vec2<f32>(x_4041.z, x_4041.w);
            let x_4044 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4042.x, x_4042.y, x_4044);
            let x_4051 : vec3<f32> = txVec48;
            let x_4053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4051.xy, x_4051.z);
            u_xlat88 = x_4053;
            let x_4055 : f32 = u_xlat24.y;
            let x_4056 : f32 = u_xlat88;
            let x_4058 : f32 = u_xlat87;
            u_xlat87 = ((x_4055 * x_4056) + x_4058);
            let x_4061 : vec4<f32> = u_xlat20;
            let x_4062 : vec2<f32> = vec2<f32>(x_4061.x, x_4061.y);
            let x_4064 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4062.x, x_4062.y, x_4064);
            let x_4071 : vec3<f32> = txVec49;
            let x_4073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4071.xy, x_4071.z);
            u_xlat88 = x_4073;
            let x_4075 : f32 = u_xlat24.z;
            let x_4076 : f32 = u_xlat88;
            let x_4078 : f32 = u_xlat87;
            u_xlat87 = ((x_4075 * x_4076) + x_4078);
            let x_4081 : vec4<f32> = u_xlat21;
            let x_4082 : vec2<f32> = vec2<f32>(x_4081.z, x_4081.w);
            let x_4084 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4082.x, x_4082.y, x_4084);
            let x_4091 : vec3<f32> = txVec50;
            let x_4093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4091.xy, x_4091.z);
            u_xlat88 = x_4093;
            let x_4095 : f32 = u_xlat24.w;
            let x_4096 : f32 = u_xlat88;
            let x_4098 : f32 = u_xlat87;
            u_xlat87 = ((x_4095 * x_4096) + x_4098);
            let x_4101 : vec4<f32> = u_xlat22;
            let x_4102 : vec2<f32> = vec2<f32>(x_4101.x, x_4101.y);
            let x_4104 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4102.x, x_4102.y, x_4104);
            let x_4111 : vec3<f32> = txVec51;
            let x_4113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4111.xy, x_4111.z);
            u_xlat88 = x_4113;
            let x_4115 : f32 = u_xlat25.x;
            let x_4116 : f32 = u_xlat88;
            let x_4118 : f32 = u_xlat87;
            u_xlat87 = ((x_4115 * x_4116) + x_4118);
            let x_4121 : vec4<f32> = u_xlat22;
            let x_4122 : vec2<f32> = vec2<f32>(x_4121.z, x_4121.w);
            let x_4124 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4122.x, x_4122.y, x_4124);
            let x_4131 : vec3<f32> = txVec52;
            let x_4133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4131.xy, x_4131.z);
            u_xlat88 = x_4133;
            let x_4135 : f32 = u_xlat25.y;
            let x_4136 : f32 = u_xlat88;
            let x_4138 : f32 = u_xlat87;
            u_xlat87 = ((x_4135 * x_4136) + x_4138);
            let x_4141 : vec2<f32> = u_xlat40;
            let x_4143 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4141.x, x_4141.y, x_4143);
            let x_4150 : vec3<f32> = txVec53;
            let x_4152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4150.xy, x_4150.z);
            u_xlat88 = x_4152;
            let x_4154 : f32 = u_xlat25.z;
            let x_4155 : f32 = u_xlat88;
            let x_4157 : f32 = u_xlat87;
            u_xlat87 = ((x_4154 * x_4155) + x_4157);
            let x_4160 : vec2<f32> = u_xlat72;
            let x_4162 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4160.x, x_4160.y, x_4162);
            let x_4169 : vec3<f32> = txVec54;
            let x_4171 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4169.xy, x_4169.z);
            u_xlat88 = x_4171;
            let x_4173 : f32 = u_xlat25.w;
            let x_4174 : f32 = u_xlat88;
            let x_4176 : f32 = u_xlat87;
            u_xlat87 = ((x_4173 * x_4174) + x_4176);
            let x_4179 : vec4<f32> = u_xlat17;
            let x_4180 : vec2<f32> = vec2<f32>(x_4179.x, x_4179.y);
            let x_4182 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4180.x, x_4180.y, x_4182);
            let x_4189 : vec3<f32> = txVec55;
            let x_4191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4189.xy, x_4189.z);
            u_xlat88 = x_4191;
            let x_4193 : f32 = u_xlat13.x;
            let x_4194 : f32 = u_xlat88;
            let x_4196 : f32 = u_xlat87;
            u_xlat87 = ((x_4193 * x_4194) + x_4196);
            let x_4199 : vec4<f32> = u_xlat17;
            let x_4200 : vec2<f32> = vec2<f32>(x_4199.z, x_4199.w);
            let x_4202 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4200.x, x_4200.y, x_4202);
            let x_4209 : vec3<f32> = txVec56;
            let x_4211 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4209.xy, x_4209.z);
            u_xlat88 = x_4211;
            let x_4213 : f32 = u_xlat13.y;
            let x_4214 : f32 = u_xlat88;
            let x_4216 : f32 = u_xlat87;
            u_xlat87 = ((x_4213 * x_4214) + x_4216);
            let x_4219 : vec2<f32> = u_xlat67;
            let x_4221 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4219.x, x_4219.y, x_4221);
            let x_4228 : vec3<f32> = txVec57;
            let x_4230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4228.xy, x_4228.z);
            u_xlat88 = x_4230;
            let x_4232 : f32 = u_xlat13.z;
            let x_4233 : f32 = u_xlat88;
            let x_4235 : f32 = u_xlat87;
            u_xlat87 = ((x_4232 * x_4233) + x_4235);
            let x_4238 : vec4<f32> = u_xlat12;
            let x_4239 : vec2<f32> = vec2<f32>(x_4238.x, x_4238.y);
            let x_4241 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4239.x, x_4239.y, x_4241);
            let x_4248 : vec3<f32> = txVec58;
            let x_4250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4248.xy, x_4248.z);
            u_xlat88 = x_4250;
            let x_4252 : f32 = u_xlat13.w;
            let x_4253 : f32 = u_xlat88;
            let x_4255 : f32 = u_xlat87;
            u_xlat86 = ((x_4252 * x_4253) + x_4255);
          }
        }
      } else {
        let x_4259 : vec4<f32> = u_xlat11;
        let x_4260 : vec2<f32> = vec2<f32>(x_4259.x, x_4259.y);
        let x_4262 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4260.x, x_4260.y, x_4262);
        let x_4269 : vec3<f32> = txVec59;
        let x_4271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4269.xy, x_4269.z);
        u_xlat86 = x_4271;
      }
      let x_4272 : i32 = u_xlati58;
      let x_4274 : f32 = x_1025.x_AdditionalShadowParams[x_4272].x;
      u_xlat87 = (1.0f + -(x_4274));
      let x_4277 : f32 = u_xlat86;
      let x_4278 : i32 = u_xlati58;
      let x_4280 : f32 = x_1025.x_AdditionalShadowParams[x_4278].x;
      let x_4282 : f32 = u_xlat87;
      u_xlat86 = ((x_4277 * x_4280) + x_4282);
      let x_4285 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4285);
      let x_4289 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4289 >= 1.0f);
      let x_4291 : bool = u_xlatb87;
      let x_4292 : bool = u_xlatb88;
      u_xlatb87 = (x_4291 | x_4292);
      let x_4294 : bool = u_xlatb87;
      let x_4295 : f32 = u_xlat86;
      u_xlat86 = select(x_4295, 1.0f, x_4294);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4298 : f32 = u_xlat86;
    u_xlat87 = (-(x_4298) + 1.0f);
    let x_4302 : f32 = u_xlat3.x;
    let x_4303 : f32 = u_xlat87;
    let x_4305 : f32 = u_xlat86;
    u_xlat86 = ((x_4302 * x_4303) + x_4305);
    let x_4308 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_4308 & 31i)));
    let x_4311 : i32 = u_xlati87;
    let x_4314 : f32 = x_2378.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4311) & bitcast<u32>(x_4314)));
    let x_4318 : i32 = u_xlati87;
    if ((x_4318 != 0i)) {
      let x_4322 : i32 = u_xlati58;
      let x_4324 : f32 = x_2378.x_AdditionalLightsLightTypes[x_4322].el;
      u_xlati87 = i32(x_4324);
      let x_4327 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4327 != 0i));
      let x_4331 : i32 = u_xlati58;
      u_xlati11 = (x_4331 << bitcast<u32>(2i));
      let x_4333 : i32 = u_xlati88;
      if ((x_4333 != 0i)) {
        let x_4338 : vec3<f32> = vs_TEXCOORD7;
        let x_4340 : i32 = u_xlati11;
        let x_4343 : i32 = u_xlati11;
        let x_4347 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4340 + 1i) / 4i)][((x_4343 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4338.y, x_4338.y, x_4338.y) * vec3<f32>(x_4347.x, x_4347.y, x_4347.w));
        let x_4350 : i32 = u_xlati11;
        let x_4352 : i32 = u_xlati11;
        let x_4355 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[(x_4350 / 4i)][(x_4352 % 4i)];
        let x_4357 : vec3<f32> = vs_TEXCOORD7;
        let x_4360 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4355.x, x_4355.y, x_4355.w) * vec3<f32>(x_4357.x, x_4357.x, x_4357.x)) + x_4360);
        let x_4362 : i32 = u_xlati11;
        let x_4365 : i32 = u_xlati11;
        let x_4369 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4362 + 2i) / 4i)][((x_4365 + 2i) % 4i)];
        let x_4371 : vec3<f32> = vs_TEXCOORD7;
        let x_4374 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4369.x, x_4369.y, x_4369.w) * vec3<f32>(x_4371.z, x_4371.z, x_4371.z)) + x_4374);
        let x_4376 : vec3<f32> = u_xlat37;
        let x_4377 : i32 = u_xlati11;
        let x_4380 : i32 = u_xlati11;
        let x_4384 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4377 + 3i) / 4i)][((x_4380 + 3i) % 4i)];
        u_xlat37 = (x_4376 + vec3<f32>(x_4384.x, x_4384.y, x_4384.w));
        let x_4387 : vec3<f32> = u_xlat37;
        let x_4389 : vec3<f32> = u_xlat37;
        let x_4391 : vec2<f32> = (vec2<f32>(x_4387.x, x_4387.y) / vec2<f32>(x_4389.z, x_4389.z));
        let x_4392 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4391.x, x_4391.y, x_4392.z);
        let x_4394 : vec3<f32> = u_xlat37;
        let x_4397 : vec2<f32> = ((vec2<f32>(x_4394.x, x_4394.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4398 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4397.x, x_4397.y, x_4398.z);
        let x_4400 : vec3<f32> = u_xlat37;
        let x_4404 : vec2<f32> = clamp(vec2<f32>(x_4400.x, x_4400.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4405 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4404.x, x_4404.y, x_4405.z);
        let x_4407 : i32 = u_xlati58;
        let x_4409 : vec4<f32> = x_2378.x_AdditionalLightsCookieAtlasUVRects[x_4407];
        let x_4411 : vec3<f32> = u_xlat37;
        let x_4414 : i32 = u_xlati58;
        let x_4416 : vec4<f32> = x_2378.x_AdditionalLightsCookieAtlasUVRects[x_4414];
        let x_4418 : vec2<f32> = ((vec2<f32>(x_4409.x, x_4409.y) * vec2<f32>(x_4411.x, x_4411.y)) + vec2<f32>(x_4416.z, x_4416.w));
        let x_4419 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4418.x, x_4418.y, x_4419.z);
      } else {
        let x_4422 : i32 = u_xlati87;
        u_xlatb87 = (x_4422 == 1i);
        let x_4424 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4424);
        let x_4426 : i32 = u_xlati87;
        if ((x_4426 != 0i)) {
          let x_4430 : vec3<f32> = vs_TEXCOORD7;
          let x_4432 : i32 = u_xlati11;
          let x_4435 : i32 = u_xlati11;
          let x_4439 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4432 + 1i) / 4i)][((x_4435 + 1i) % 4i)];
          let x_4441 : vec2<f32> = (vec2<f32>(x_4430.y, x_4430.y) * vec2<f32>(x_4439.x, x_4439.y));
          let x_4442 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4441.x, x_4441.y, x_4442.z, x_4442.w);
          let x_4444 : i32 = u_xlati11;
          let x_4446 : i32 = u_xlati11;
          let x_4449 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[(x_4444 / 4i)][(x_4446 % 4i)];
          let x_4451 : vec3<f32> = vs_TEXCOORD7;
          let x_4454 : vec4<f32> = u_xlat12;
          let x_4456 : vec2<f32> = ((vec2<f32>(x_4449.x, x_4449.y) * vec2<f32>(x_4451.x, x_4451.x)) + vec2<f32>(x_4454.x, x_4454.y));
          let x_4457 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4456.x, x_4456.y, x_4457.z, x_4457.w);
          let x_4459 : i32 = u_xlati11;
          let x_4462 : i32 = u_xlati11;
          let x_4466 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4459 + 2i) / 4i)][((x_4462 + 2i) % 4i)];
          let x_4468 : vec3<f32> = vs_TEXCOORD7;
          let x_4471 : vec4<f32> = u_xlat12;
          let x_4473 : vec2<f32> = ((vec2<f32>(x_4466.x, x_4466.y) * vec2<f32>(x_4468.z, x_4468.z)) + vec2<f32>(x_4471.x, x_4471.y));
          let x_4474 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4473.x, x_4473.y, x_4474.z, x_4474.w);
          let x_4476 : vec4<f32> = u_xlat12;
          let x_4478 : i32 = u_xlati11;
          let x_4481 : i32 = u_xlati11;
          let x_4485 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4478 + 3i) / 4i)][((x_4481 + 3i) % 4i)];
          let x_4487 : vec2<f32> = (vec2<f32>(x_4476.x, x_4476.y) + vec2<f32>(x_4485.x, x_4485.y));
          let x_4488 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4487.x, x_4487.y, x_4488.z, x_4488.w);
          let x_4490 : vec4<f32> = u_xlat12;
          let x_4493 : vec2<f32> = ((vec2<f32>(x_4490.x, x_4490.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4494 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4493.x, x_4493.y, x_4494.z, x_4494.w);
          let x_4496 : vec4<f32> = u_xlat12;
          let x_4498 : vec2<f32> = fract(vec2<f32>(x_4496.x, x_4496.y));
          let x_4499 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4498.x, x_4498.y, x_4499.z, x_4499.w);
          let x_4501 : i32 = u_xlati58;
          let x_4503 : vec4<f32> = x_2378.x_AdditionalLightsCookieAtlasUVRects[x_4501];
          let x_4505 : vec4<f32> = u_xlat12;
          let x_4508 : i32 = u_xlati58;
          let x_4510 : vec4<f32> = x_2378.x_AdditionalLightsCookieAtlasUVRects[x_4508];
          let x_4512 : vec2<f32> = ((vec2<f32>(x_4503.x, x_4503.y) * vec2<f32>(x_4505.x, x_4505.y)) + vec2<f32>(x_4510.z, x_4510.w));
          let x_4513 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4512.x, x_4512.y, x_4513.z);
        } else {
          let x_4516 : vec3<f32> = vs_TEXCOORD7;
          let x_4518 : i32 = u_xlati11;
          let x_4521 : i32 = u_xlati11;
          let x_4525 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4518 + 1i) / 4i)][((x_4521 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4516.y, x_4516.y, x_4516.y, x_4516.y) * x_4525);
          let x_4527 : i32 = u_xlati11;
          let x_4529 : i32 = u_xlati11;
          let x_4532 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[(x_4527 / 4i)][(x_4529 % 4i)];
          let x_4533 : vec3<f32> = vs_TEXCOORD7;
          let x_4536 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4532 * vec4<f32>(x_4533.x, x_4533.x, x_4533.x, x_4533.x)) + x_4536);
          let x_4538 : i32 = u_xlati11;
          let x_4541 : i32 = u_xlati11;
          let x_4545 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4538 + 2i) / 4i)][((x_4541 + 2i) % 4i)];
          let x_4546 : vec3<f32> = vs_TEXCOORD7;
          let x_4549 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4545 * vec4<f32>(x_4546.z, x_4546.z, x_4546.z, x_4546.z)) + x_4549);
          let x_4551 : vec4<f32> = u_xlat12;
          let x_4552 : i32 = u_xlati11;
          let x_4555 : i32 = u_xlati11;
          let x_4559 : vec4<f32> = x_2378.x_AdditionalLightsWorldToLights[((x_4552 + 3i) / 4i)][((x_4555 + 3i) % 4i)];
          u_xlat12 = (x_4551 + x_4559);
          let x_4561 : vec4<f32> = u_xlat12;
          let x_4563 : vec4<f32> = u_xlat12;
          let x_4565 : vec3<f32> = (vec3<f32>(x_4561.x, x_4561.y, x_4561.z) / vec3<f32>(x_4563.w, x_4563.w, x_4563.w));
          let x_4566 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4565.x, x_4565.y, x_4565.z, x_4566.w);
          let x_4568 : vec4<f32> = u_xlat12;
          let x_4570 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4568.x, x_4568.y, x_4568.z), vec3<f32>(x_4570.x, x_4570.y, x_4570.z));
          let x_4573 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4573);
          let x_4575 : f32 = u_xlat87;
          let x_4577 : vec4<f32> = u_xlat12;
          let x_4579 : vec3<f32> = (vec3<f32>(x_4575, x_4575, x_4575) * vec3<f32>(x_4577.x, x_4577.y, x_4577.z));
          let x_4580 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4579.x, x_4579.y, x_4579.z, x_4580.w);
          let x_4582 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4582.x, x_4582.y, x_4582.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4587 : f32 = u_xlat87;
          u_xlat87 = max(x_4587, 0.00000099999999747524f);
          let x_4590 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4590);
          let x_4592 : f32 = u_xlat87;
          let x_4594 : vec4<f32> = u_xlat12;
          let x_4596 : vec3<f32> = (vec3<f32>(x_4592, x_4592, x_4592) * vec3<f32>(x_4594.z, x_4594.x, x_4594.y));
          let x_4597 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4596.x, x_4596.y, x_4596.z, x_4597.w);
          let x_4600 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4600);
          let x_4604 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4604, 0.0f, 1.0f);
          let x_4607 : vec4<f32> = u_xlat13;
          let x_4609 : vec4<bool> = (vec4<f32>(x_4607.y, x_4607.y, x_4607.y, x_4607.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4610 : vec2<bool> = vec2<bool>(x_4609.x, x_4609.w);
          let x_4611 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4610.x, x_4611.y, x_4611.z, x_4610.y);
          let x_4614 : bool = u_xlatb11.x;
          if (x_4614) {
            let x_4619 : f32 = u_xlat13.x;
            x_4615 = x_4619;
          } else {
            let x_4622 : f32 = u_xlat13.x;
            x_4615 = -(x_4622);
          }
          let x_4624 : f32 = x_4615;
          u_xlat11.x = x_4624;
          let x_4627 : bool = u_xlatb11.w;
          if (x_4627) {
            let x_4632 : f32 = u_xlat13.x;
            x_4628 = x_4632;
          } else {
            let x_4635 : f32 = u_xlat13.x;
            x_4628 = -(x_4635);
          }
          let x_4637 : f32 = x_4628;
          u_xlat11.w = x_4637;
          let x_4639 : vec4<f32> = u_xlat12;
          let x_4641 : f32 = u_xlat87;
          let x_4644 : vec4<f32> = u_xlat11;
          let x_4646 : vec2<f32> = ((vec2<f32>(x_4639.x, x_4639.y) * vec2<f32>(x_4641, x_4641)) + vec2<f32>(x_4644.x, x_4644.w));
          let x_4647 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4646.x, x_4647.y, x_4647.z, x_4646.y);
          let x_4649 : vec4<f32> = u_xlat11;
          let x_4652 : vec2<f32> = ((vec2<f32>(x_4649.x, x_4649.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4653 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4652.x, x_4653.y, x_4653.z, x_4652.y);
          let x_4655 : vec4<f32> = u_xlat11;
          let x_4659 : vec2<f32> = clamp(vec2<f32>(x_4655.x, x_4655.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4660 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4659.x, x_4660.y, x_4660.z, x_4659.y);
          let x_4662 : i32 = u_xlati58;
          let x_4664 : vec4<f32> = x_2378.x_AdditionalLightsCookieAtlasUVRects[x_4662];
          let x_4666 : vec4<f32> = u_xlat11;
          let x_4669 : i32 = u_xlati58;
          let x_4671 : vec4<f32> = x_2378.x_AdditionalLightsCookieAtlasUVRects[x_4669];
          let x_4673 : vec2<f32> = ((vec2<f32>(x_4664.x, x_4664.y) * vec2<f32>(x_4666.x, x_4666.w)) + vec2<f32>(x_4671.z, x_4671.w));
          let x_4674 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4673.x, x_4673.y, x_4674.z);
        }
      }
      let x_4681 : vec3<f32> = u_xlat37;
      let x_4683 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4681.x, x_4681.y), 0.0f);
      u_xlat11 = x_4683;
      let x_4685 : bool = u_xlatb6.y;
      if (x_4685) {
        let x_4690 : f32 = u_xlat11.w;
        x_4686 = x_4690;
      } else {
        let x_4693 : f32 = u_xlat11.x;
        x_4686 = x_4693;
      }
      let x_4694 : f32 = x_4686;
      u_xlat87 = x_4694;
      let x_4696 : bool = u_xlatb6.x;
      if (x_4696) {
        let x_4700 : vec4<f32> = u_xlat11;
        x_4697 = vec3<f32>(x_4700.x, x_4700.y, x_4700.z);
      } else {
        let x_4703 : f32 = u_xlat87;
        x_4697 = vec3<f32>(x_4703, x_4703, x_4703);
      }
      let x_4705 : vec3<f32> = x_4697;
      let x_4706 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4705.x, x_4705.y, x_4705.z, x_4706.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4712 : vec4<f32> = u_xlat11;
    let x_4714 : i32 = u_xlati58;
    let x_4716 : vec4<f32> = x_2886.x_AdditionalLightsColor[x_4714];
    let x_4718 : vec3<f32> = (vec3<f32>(x_4712.x, x_4712.y, x_4712.z) * vec3<f32>(x_4716.x, x_4716.y, x_4716.z));
    let x_4719 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4718.x, x_4718.y, x_4718.z, x_4719.w);
    let x_4721 : f32 = u_xlat84;
    let x_4722 : f32 = u_xlat86;
    u_xlat58.x = (x_4721 * x_4722);
    let x_4725 : vec4<f32> = u_xlat1;
    let x_4727 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4725.x, x_4725.y, x_4725.z), vec3<f32>(x_4727.x, x_4727.y, x_4727.z));
    let x_4730 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4730, 0.0f, 1.0f);
    let x_4732 : f32 = u_xlat84;
    let x_4734 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4732 * x_4734);
    let x_4737 : vec2<f32> = u_xlat58;
    let x_4739 : vec4<f32> = u_xlat11;
    let x_4741 : vec3<f32> = (vec3<f32>(x_4737.x, x_4737.x, x_4737.x) * vec3<f32>(x_4739.x, x_4739.y, x_4739.z));
    let x_4742 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4741.x, x_4741.y, x_4741.z, x_4742.w);
    let x_4744 : vec4<f32> = u_xlat9;
    let x_4746 : f32 = u_xlat85;
    let x_4749 : vec4<f32> = u_xlat7;
    let x_4751 : vec3<f32> = ((vec3<f32>(x_4744.x, x_4744.y, x_4744.z) * vec3<f32>(x_4746, x_4746, x_4746)) + vec3<f32>(x_4749.x, x_4749.y, x_4749.z));
    let x_4752 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4751.x, x_4751.y, x_4751.z, x_4752.w);
    let x_4754 : vec4<f32> = u_xlat9;
    let x_4756 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4754.x, x_4754.y, x_4754.z), vec3<f32>(x_4756.x, x_4756.y, x_4756.z));
    let x_4761 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4761, 1.17549435e-38f);
    let x_4765 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_4765);
    let x_4768 : vec2<f32> = u_xlat58;
    let x_4770 : vec4<f32> = u_xlat9;
    let x_4772 : vec3<f32> = (vec3<f32>(x_4768.x, x_4768.x, x_4768.x) * vec3<f32>(x_4770.x, x_4770.y, x_4770.z));
    let x_4773 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4772.x, x_4772.y, x_4772.z, x_4773.w);
    let x_4775 : vec4<f32> = u_xlat1;
    let x_4777 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4775.x, x_4775.y, x_4775.z), vec3<f32>(x_4777.x, x_4777.y, x_4777.z));
    let x_4782 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4782, 0.0f, 1.0f);
    let x_4785 : vec4<f32> = u_xlat10;
    let x_4787 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_4785.x, x_4785.y, x_4785.z), vec3<f32>(x_4787.x, x_4787.y, x_4787.z));
    let x_4792 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_4792, 0.0f, 1.0f);
    let x_4795 : vec2<f32> = u_xlat58;
    let x_4796 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_4795 * x_4796);
    let x_4799 : f32 = u_xlat58.x;
    let x_4801 : f32 = u_xlat0.x;
    u_xlat58.x = ((x_4799 * x_4801) + 1.00001001358032226562f);
    let x_4806 : f32 = u_xlat58.x;
    let x_4808 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4806 * x_4808);
    let x_4812 : f32 = u_xlat58.y;
    u_xlat84 = max(x_4812, 0.10000000149011611938f);
    let x_4814 : f32 = u_xlat84;
    let x_4816 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4814 * x_4816);
    let x_4819 : f32 = u_xlat82;
    let x_4821 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4819 * x_4821);
    let x_4824 : f32 = u_xlat80;
    let x_4826 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4824 / x_4826);
    let x_4829 : vec4<f32> = u_xlat4;
    let x_4831 : vec2<f32> = u_xlat58;
    let x_4834 : vec3<f32> = u_xlat29;
    let x_4835 : vec3<f32> = ((vec3<f32>(x_4829.x, x_4829.y, x_4829.z) * vec3<f32>(x_4831.x, x_4831.x, x_4831.x)) + x_4834);
    let x_4836 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4835.x, x_4835.y, x_4835.z, x_4836.w);
    let x_4838 : vec4<f32> = u_xlat9;
    let x_4840 : vec4<f32> = u_xlat11;
    let x_4843 : vec4<f32> = u_xlat8;
    let x_4845 : vec3<f32> = ((vec3<f32>(x_4838.x, x_4838.y, x_4838.z) * vec3<f32>(x_4840.x, x_4840.y, x_4840.z)) + vec3<f32>(x_4843.x, x_4843.y, x_4843.z));
    let x_4846 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4845.x, x_4845.y, x_4845.z, x_4846.w);

    continuing {
      let x_4848 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4848 + bitcast<u32>(1i));
    }
  }
  let x_4850 : vec4<f32> = u_xlat2;
  let x_4852 : f32 = u_xlat26;
  let x_4855 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_4850.x, x_4850.y, x_4850.z) * vec3<f32>(x_4852, x_4852, x_4852)) + vec3<f32>(x_4855.x, x_4855.z, x_4855.w));
  let x_4858 : vec4<f32> = u_xlat8;
  let x_4860 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4858.x, x_4858.y, x_4858.z) + x_4860);
  let x_4862 : f32 = u_xlat78;
  let x_4864 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4862, x_4862, x_4862) * x_4864);
  let x_4866 : f32 = u_xlat79;
  let x_4867 : f32 = u_xlat79;
  u_xlat78 = (x_4866 * -(x_4867));
  let x_4870 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4870);
  let x_4874 : vec3<f32> = u_xlat0;
  let x_4875 : f32 = u_xlat78;
  let x_4877 : vec3<f32> = (x_4874 * vec3<f32>(x_4875, x_4875, x_4875));
  let x_4878 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4877.x, x_4877.y, x_4877.z, x_4878.w);
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


