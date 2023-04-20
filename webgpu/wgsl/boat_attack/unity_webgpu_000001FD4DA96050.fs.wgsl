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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

@group(1) @binding(4) var<uniform> x_629 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2216 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2404 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2693 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu55 : u32;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
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
  var x_2169 : f32;
  var x_2299 : f32;
  var x_2310 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2827 : f32;
  var x_2837 : f32;
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
  var x_4407 : f32;
  var x_4420 : f32;
  var x_4468 : f32;
  var x_4479 : vec3<f32>;
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
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_577 : f32 = u_xlat27.x;
    x_573 = x_577;
  } else {
    let x_580 : f32 = x_29.unity_MatrixV[0i].z;
    x_573 = x_580;
  }
  let x_581 : f32 = x_573;
  u_xlat2.x = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : f32 = u_xlat27.y;
    x_584 = x_588;
  } else {
    let x_591 : f32 = x_29.unity_MatrixV[1i].z;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  u_xlat2.y = x_592;
  let x_594 : bool = u_xlatb1;
  if (x_594) {
    let x_599 : f32 = u_xlat27.z;
    x_595 = x_599;
  } else {
    let x_603 : f32 = x_29.unity_MatrixV[2i].z;
    x_595 = x_603;
  }
  let x_604 : f32 = x_595;
  u_xlat2.z = x_604;
  let x_607 : vec3<f32> = vs_TEXCOORD3;
  let x_608 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_607, x_608);
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_612);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = vs_TEXCOORD3;
  let x_618 : vec3<f32> = (vec3<f32>(x_615.x, x_615.x, x_615.x) * x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec3<f32> = vs_TEXCOORD7;
  let x_631 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres0;
  let x_634 : vec3<f32> = (x_621 + -(vec3<f32>(x_631.x, x_631.y, x_631.z)));
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = vs_TEXCOORD7;
  let x_639 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres1;
  let x_642 : vec3<f32> = (x_637 + -(vec3<f32>(x_639.x, x_639.y, x_639.z)));
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = vs_TEXCOORD7;
  let x_648 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres2;
  let x_651 : vec3<f32> = (x_645 + -(vec3<f32>(x_648.x, x_648.y, x_648.z)));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = vs_TEXCOORD7;
  let x_656 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres3;
  let x_659 : vec3<f32> = (x_654 + -(vec3<f32>(x_656.x, x_656.y, x_656.z)));
  let x_660 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_674 : vec4<f32> = u_xlat6;
  let x_676 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec4<f32> = x_629.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_688 < x_690);
  let x_693 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_693);
  let x_697 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_697);
  let x_701 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_701);
  let x_705 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_705);
  let x_709 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_709);
  let x_714 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_714);
  let x_718 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_718);
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.y, x_723.z, x_723.w));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_732.x, x_731.x, x_731.y, x_731.z);
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_734, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_739 : f32 = u_xlat79;
  u_xlat79 = (-(x_739) + 4.0f);
  let x_744 : f32 = u_xlat79;
  u_xlatu79 = u32(x_744);
  let x_748 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_748) << bitcast<u32>(2i));
  let x_751 : vec3<f32> = vs_TEXCOORD7;
  let x_753 : i32 = u_xlati79;
  let x_756 : i32 = u_xlati79;
  let x_760 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_753 + 1i) / 4i)][((x_756 + 1i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.y, x_751.y, x_751.y) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati79;
  let x_767 : i32 = u_xlati79;
  let x_770 : vec4<f32> = x_629.x_MainLightWorldToShadow[(x_765 / 4i)][(x_767 % 4i)];
  let x_772 : vec3<f32> = vs_TEXCOORD7;
  let x_775 : vec4<f32> = u_xlat3;
  let x_777 : vec3<f32> = ((vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_772.x, x_772.x, x_772.x)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : i32 = u_xlati79;
  let x_783 : i32 = u_xlati79;
  let x_787 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_780 + 2i) / 4i)][((x_783 + 2i) % 4i)];
  let x_789 : vec3<f32> = vs_TEXCOORD7;
  let x_792 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789.z, x_789.z, x_789.z)) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat3;
  let x_799 : i32 = u_xlati79;
  let x_802 : i32 = u_xlati79;
  let x_806 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_799 + 3i) / 4i)][((x_802 + 3i) % 4i)];
  let x_808 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_816 : vec4<f32> = vs_TEXCOORD0;
  let x_819 : f32 = x_29.x_GlobalMipBias.x;
  let x_820 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_816.z, x_816.w), x_819);
  u_xlat4 = x_820;
  let x_825 : vec4<f32> = vs_TEXCOORD0;
  let x_828 : f32 = x_29.x_GlobalMipBias.x;
  let x_829 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_825.z, x_825.w), x_828);
  let x_830 : vec3<f32> = vec3<f32>(x_829.x, x_829.y, x_829.z);
  let x_831 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat4;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : f32 = u_xlat79;
  u_xlat79 = (x_845 + 0.5f);
  let x_847 : f32 = u_xlat79;
  let x_849 : vec4<f32> = u_xlat6;
  let x_851 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat4.w;
  u_xlat79 = max(x_855, 0.00009999999747378752f);
  let x_858 : vec4<f32> = u_xlat4;
  let x_860 : f32 = u_xlat79;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) / vec3<f32>(x_860, x_860, x_860));
  let x_863 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_866) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_872 : f32 = u_xlat52;
  let x_873 : f32 = u_xlat79;
  u_xlat80 = (x_872 + -(x_873));
  let x_876 : f32 = u_xlat79;
  let x_878 : vec4<f32> = u_xlat5;
  let x_880 : vec3<f32> = (vec3<f32>(x_876, x_876, x_876) * vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec3<f32> = u_xlat0;
  let x_892 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = ((vec3<f32>(x_890.x, x_890.x, x_890.x) * vec3<f32>(x_892.x, x_892.y, x_892.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : f32 = u_xlat52;
  u_xlat0.x = (-(x_900) + 1.0f);
  let x_905 : f32 = u_xlat0.x;
  let x_907 : f32 = u_xlat0.x;
  u_xlat52 = (x_905 * x_907);
  let x_909 : f32 = u_xlat52;
  u_xlat52 = max(x_909, 0.0078125f);
  let x_912 : f32 = u_xlat52;
  let x_913 : f32 = u_xlat52;
  u_xlat79 = (x_912 * x_913);
  let x_915 : f32 = u_xlat80;
  u_xlat80 = (x_915 + 1.0f);
  let x_917 : f32 = u_xlat80;
  u_xlat80 = clamp(x_917, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat52;
  u_xlat81 = ((x_920 * 4.0f) + 2.0f);
  let x_923 : f32 = u_xlat26;
  u_xlat26 = min(x_923, 1.0f);
  let x_927 : f32 = x_629.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_927);
  let x_929 : bool = u_xlatb82;
  if (x_929) {
    let x_933 : f32 = x_629.x_MainLightShadowParams.y;
    u_xlatb82 = (x_933 == 1.0f);
    let x_935 : bool = u_xlatb82;
    if (x_935) {
      let x_938 : vec4<f32> = u_xlat3;
      let x_941 : vec4<f32> = x_629.x_MainLightShadowOffset0;
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
      let x_982 : vec4<f32> = x_629.x_MainLightShadowOffset1;
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
      let x_1022 : f32 = x_629.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1022 == 2.0f);
      let x_1024 : bool = u_xlatb83;
      if (x_1024) {
        let x_1027 : vec4<f32> = u_xlat3;
        let x_1030 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1034 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1038 : vec2<f32> = floor(vec2<f32>(x_1036.x, x_1036.y));
        let x_1039 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1043 : vec4<f32> = u_xlat3;
        let x_1046 : vec4<f32> = x_629.x_MainLightShadowmapSize;
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
        let x_1184 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat12;
        let x_1189 : vec4<f32> = u_xlat8;
        let x_1191 : vec3<f32> = (vec3<f32>(x_1187.z, x_1187.y, x_1187.w) / vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat10;
        let x_1196 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.y, x_1194.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat9;
        let x_1202 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1204 : vec3<f32> = (vec3<f32>(x_1199.y, x_1199.x, x_1199.z) * vec3<f32>(x_1202.x, x_1202.x, x_1202.x));
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
        let x_1207 : vec4<f32> = u_xlat10;
        let x_1210 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1212 : vec3<f32> = (vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * vec3<f32>(x_1210.y, x_1210.y, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1216 : f32 = u_xlat10.x;
        u_xlat9.w = x_1216;
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1221 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) * vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y)) + vec4<f32>(x_1224.y, x_1224.w, x_1224.x, x_1224.w));
        let x_1227 : vec4<f32> = u_xlat7;
        let x_1230 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(x_1230.x, x_1230.y)) + vec2<f32>(x_1233.z, x_1233.w));
        let x_1237 : f32 = u_xlat9.y;
        u_xlat10.w = x_1237;
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.y, x_1239.z);
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1241.x, x_1240.x, x_1241.z, x_1240.y);
        let x_1243 : vec4<f32> = u_xlat7;
        let x_1246 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat7;
        let x_1255 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.w, x_1258.y, x_1258.w, x_1258.z));
        let x_1261 : vec4<f32> = u_xlat7;
        let x_1264 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y) * vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y)) + vec4<f32>(x_1267.x, x_1267.w, x_1267.z, x_1267.w));
        let x_1271 : vec4<f32> = u_xlat8;
        let x_1273 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1271.x, x_1271.x, x_1271.x, x_1271.y) * vec4<f32>(x_1273.z, x_1273.w, x_1273.y, x_1273.z));
        let x_1277 : vec4<f32> = u_xlat8;
        let x_1279 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1277.y, x_1277.y, x_1277.z, x_1277.z) * x_1279);
        let x_1283 : f32 = u_xlat8.z;
        let x_1285 : f32 = u_xlat13.y;
        u_xlat83 = (x_1283 * x_1285);
        let x_1288 : vec4<f32> = u_xlat11;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.x, x_1288.y);
        let x_1291 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1299 : vec3<f32> = txVec4;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat84 = x_1301;
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec5;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1313.xy, x_1313.z);
        u_xlat7.x = x_1315;
        let x_1318 : f32 = u_xlat7.x;
        let x_1320 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1318 * x_1320);
        let x_1324 : f32 = u_xlat14.x;
        let x_1325 : f32 = u_xlat84;
        let x_1328 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1324 * x_1325) + x_1328);
        let x_1331 : vec2<f32> = u_xlat59;
        let x_1333 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec6;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1340.xy, x_1340.z);
        u_xlat7.x = x_1342;
        let x_1345 : f32 = u_xlat14.z;
        let x_1347 : f32 = u_xlat7.x;
        let x_1349 : f32 = u_xlat84;
        u_xlat84 = ((x_1345 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat10;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec7;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat7.x = x_1364;
        let x_1367 : f32 = u_xlat14.w;
        let x_1369 : f32 = u_xlat7.x;
        let x_1371 : f32 = u_xlat84;
        u_xlat84 = ((x_1367 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec8;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat7.x = x_1386;
        let x_1389 : f32 = u_xlat15.x;
        let x_1391 : f32 = u_xlat7.x;
        let x_1393 : f32 = u_xlat84;
        u_xlat84 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat12;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.z, x_1396.w);
        let x_1399 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec9;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat7.x = x_1408;
        let x_1411 : f32 = u_xlat15.y;
        let x_1413 : f32 = u_xlat7.x;
        let x_1415 : f32 = u_xlat84;
        u_xlat84 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat10;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec10;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat7.x = x_1430;
        let x_1433 : f32 = u_xlat15.z;
        let x_1435 : f32 = u_xlat7.x;
        let x_1437 : f32 = u_xlat84;
        u_xlat84 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec4<f32> = u_xlat9;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec11;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat7.x = x_1452;
        let x_1455 : f32 = u_xlat15.w;
        let x_1457 : f32 = u_xlat7.x;
        let x_1459 : f32 = u_xlat84;
        u_xlat84 = ((x_1455 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec12;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat7.x = x_1474;
        let x_1476 : f32 = u_xlat83;
        let x_1478 : f32 = u_xlat7.x;
        let x_1480 : f32 = u_xlat84;
        u_xlat82 = ((x_1476 * x_1478) + x_1480);
      } else {
        let x_1483 : vec4<f32> = u_xlat3;
        let x_1486 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1489 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(x_1486.z, x_1486.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1490 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1489.x, x_1489.y, x_1490.z, x_1490.w);
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1494 : vec2<f32> = floor(vec2<f32>(x_1492.x, x_1492.y));
        let x_1495 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
        let x_1497 : vec4<f32> = u_xlat3;
        let x_1500 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1503 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1500.z, x_1500.w)) + -(vec2<f32>(x_1503.x, x_1503.y)));
        let x_1507 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1507.x, x_1507.x, x_1507.y, x_1507.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1510 : vec4<f32> = u_xlat8;
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1510.x, x_1510.x, x_1510.z, x_1510.z) * vec4<f32>(x_1512.x, x_1512.x, x_1512.z, x_1512.z));
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1519 : vec2<f32> = (vec2<f32>(x_1515.y, x_1515.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1520 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1520.x, x_1519.x, x_1520.z, x_1519.y);
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1525 : vec2<f32> = u_xlat59;
        let x_1527 : vec2<f32> = ((vec2<f32>(x_1522.x, x_1522.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1525));
        let x_1528 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1527.x, x_1528.y, x_1527.y, x_1528.w);
        let x_1530 : vec2<f32> = u_xlat59;
        let x_1532 : vec2<f32> = (-(x_1530) + vec2<f32>(1.0f, 1.0f));
        let x_1533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
        let x_1535 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1535, vec2<f32>(0.0f, 0.0f));
        let x_1537 : vec2<f32> = u_xlat61;
        let x_1539 : vec2<f32> = u_xlat61;
        let x_1541 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = ((-(x_1537) * x_1539) + vec2<f32>(x_1541.x, x_1541.y));
        let x_1544 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1546 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1546, vec2<f32>(0.0f, 0.0f));
        let x_1549 : vec2<f32> = u_xlat61;
        let x_1551 : vec2<f32> = u_xlat61;
        let x_1553 : vec4<f32> = u_xlat8;
        let x_1555 : vec2<f32> = ((-(x_1549) * x_1551) + vec2<f32>(x_1553.y, x_1553.w));
        let x_1556 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1555.x, x_1556.y, x_1555.y);
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1561 : vec2<f32> = (vec2<f32>(x_1558.x, x_1558.y) + vec2<f32>(2.0f, 2.0f));
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
        let x_1564 : vec3<f32> = u_xlat34;
        let x_1566 : vec2<f32> = (vec2<f32>(x_1564.x, x_1564.z) + vec2<f32>(2.0f, 2.0f));
        let x_1567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1567.x, x_1566.x, x_1567.z, x_1566.y);
        let x_1570 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1570 * 0.08163200318813323975f);
        let x_1574 : vec4<f32> = u_xlat8;
        let x_1577 : vec3<f32> = (vec3<f32>(x_1574.z, x_1574.x, x_1574.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1578 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat9;
        let x_1583 : vec2<f32> = (vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1584 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat12.y;
        u_xlat11.x = x_1587;
        let x_1589 : vec2<f32> = u_xlat59;
        let x_1596 : vec2<f32> = ((vec2<f32>(x_1589.x, x_1589.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1597 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1597.x, x_1596.x, x_1597.z, x_1596.y);
        let x_1599 : vec2<f32> = u_xlat59;
        let x_1603 : vec2<f32> = ((vec2<f32>(x_1599.x, x_1599.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1604.w);
        let x_1607 : f32 = u_xlat8.x;
        u_xlat9.y = x_1607;
        let x_1610 : f32 = u_xlat10.y;
        u_xlat9.w = x_1610;
        let x_1612 : vec4<f32> = u_xlat9;
        let x_1613 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1612 + x_1613);
        let x_1615 : vec2<f32> = u_xlat59;
        let x_1618 : vec2<f32> = ((vec2<f32>(x_1615.y, x_1615.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1619 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1619.x, x_1618.x, x_1619.z, x_1618.y);
        let x_1621 : vec2<f32> = u_xlat59;
        let x_1624 : vec2<f32> = ((vec2<f32>(x_1621.y, x_1621.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1624.x, x_1625.y, x_1624.y, x_1625.w);
        let x_1628 : f32 = u_xlat8.y;
        u_xlat10.y = x_1628;
        let x_1630 : vec4<f32> = u_xlat10;
        let x_1631 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1630 + x_1631);
        let x_1633 : vec4<f32> = u_xlat9;
        let x_1634 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1633 / x_1634);
        let x_1636 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1636 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1642 : vec4<f32> = u_xlat10;
        let x_1643 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1642 / x_1643);
        let x_1645 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1645 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1647 : vec4<f32> = u_xlat9;
        let x_1650 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1647.w, x_1647.x, x_1647.y, x_1647.z) * vec4<f32>(x_1650.x, x_1650.x, x_1650.x, x_1650.x));
        let x_1653 : vec4<f32> = u_xlat10;
        let x_1656 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1653.x, x_1653.w, x_1653.y, x_1653.z) * vec4<f32>(x_1656.y, x_1656.y, x_1656.y, x_1656.y));
        let x_1659 : vec4<f32> = u_xlat9;
        let x_1660 : vec3<f32> = vec3<f32>(x_1659.y, x_1659.z, x_1659.w);
        let x_1661 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1660.z);
        let x_1664 : f32 = u_xlat10.x;
        u_xlat12.y = x_1664;
        let x_1666 : vec4<f32> = u_xlat7;
        let x_1669 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1672 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1666.x, x_1666.y, x_1666.x, x_1666.y) * vec4<f32>(x_1669.x, x_1669.y, x_1669.x, x_1669.y)) + vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1672.y));
        let x_1675 : vec4<f32> = u_xlat7;
        let x_1678 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1681 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1678.x, x_1678.y)) + vec2<f32>(x_1681.w, x_1681.y));
        let x_1685 : f32 = u_xlat12.y;
        u_xlat9.y = x_1685;
        let x_1688 : f32 = u_xlat10.z;
        u_xlat12.y = x_1688;
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1696 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y) * vec4<f32>(x_1693.x, x_1693.y, x_1693.x, x_1693.y)) + vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1696.y));
        let x_1699 : vec4<f32> = u_xlat7;
        let x_1702 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1705 : vec4<f32> = u_xlat12;
        let x_1707 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1702.x, x_1702.y)) + vec2<f32>(x_1705.w, x_1705.y));
        let x_1708 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1707.x, x_1707.y, x_1708.z, x_1708.w);
        let x_1711 : f32 = u_xlat12.y;
        u_xlat9.z = x_1711;
        let x_1714 : vec4<f32> = u_xlat7;
        let x_1717 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y) * vec4<f32>(x_1717.x, x_1717.y, x_1717.x, x_1717.y)) + vec4<f32>(x_1720.x, x_1720.y, x_1720.x, x_1720.z));
        let x_1724 : f32 = u_xlat10.w;
        u_xlat12.y = x_1724;
        let x_1727 : vec4<f32> = u_xlat7;
        let x_1730 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1733 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1727.x, x_1727.y, x_1727.x, x_1727.y) * vec4<f32>(x_1730.x, x_1730.y, x_1730.x, x_1730.y)) + vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1733.y));
        let x_1737 : vec4<f32> = u_xlat7;
        let x_1740 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1743 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(x_1740.x, x_1740.y)) + vec2<f32>(x_1743.w, x_1743.y));
        let x_1747 : f32 = u_xlat12.y;
        u_xlat9.w = x_1747;
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1753 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1753.x, x_1753.y)) + vec2<f32>(x_1756.x, x_1756.w));
        let x_1759 : vec4<f32> = u_xlat12;
        let x_1760 : vec3<f32> = vec3<f32>(x_1759.x, x_1759.z, x_1759.w);
        let x_1761 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1760.x, x_1761.y, x_1760.y, x_1760.z);
        let x_1763 : vec4<f32> = u_xlat7;
        let x_1766 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1769 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1763.x, x_1763.y, x_1763.x, x_1763.y) * vec4<f32>(x_1766.x, x_1766.y, x_1766.x, x_1766.y)) + vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1769.y));
        let x_1773 : vec4<f32> = u_xlat7;
        let x_1776 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1779 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1776.x, x_1776.y)) + vec2<f32>(x_1779.w, x_1779.y));
        let x_1783 : f32 = u_xlat9.x;
        u_xlat10.x = x_1783;
        let x_1785 : vec4<f32> = u_xlat7;
        let x_1788 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat10;
        let x_1793 : vec2<f32> = ((vec2<f32>(x_1785.x, x_1785.y) * vec2<f32>(x_1788.x, x_1788.y)) + vec2<f32>(x_1791.x, x_1791.y));
        let x_1794 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
        let x_1797 : vec4<f32> = u_xlat8;
        let x_1799 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1797.x, x_1797.x, x_1797.x, x_1797.x) * x_1799);
        let x_1802 : vec4<f32> = u_xlat8;
        let x_1804 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1802.y, x_1802.y, x_1802.y, x_1802.y) * x_1804);
        let x_1807 : vec4<f32> = u_xlat8;
        let x_1809 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1807.z, x_1807.z, x_1807.z, x_1807.z) * x_1809);
        let x_1811 : vec4<f32> = u_xlat8;
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1811.w, x_1811.w, x_1811.w, x_1811.w) * x_1813);
        let x_1816 : vec4<f32> = u_xlat13;
        let x_1817 : vec2<f32> = vec2<f32>(x_1816.x, x_1816.y);
        let x_1819 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1817.x, x_1817.y, x_1819);
        let x_1826 : vec3<f32> = txVec13;
        let x_1828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1826.xy, x_1826.z);
        u_xlat83 = x_1828;
        let x_1830 : vec4<f32> = u_xlat13;
        let x_1831 : vec2<f32> = vec2<f32>(x_1830.z, x_1830.w);
        let x_1833 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec14;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1840.xy, x_1840.z);
        u_xlat84 = x_1842;
        let x_1843 : f32 = u_xlat84;
        let x_1845 : f32 = u_xlat18.y;
        u_xlat84 = (x_1843 * x_1845);
        let x_1848 : f32 = u_xlat18.x;
        let x_1849 : f32 = u_xlat83;
        let x_1851 : f32 = u_xlat84;
        u_xlat83 = ((x_1848 * x_1849) + x_1851);
        let x_1854 : vec2<f32> = u_xlat59;
        let x_1856 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec15;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat84 = x_1865;
        let x_1867 : f32 = u_xlat18.z;
        let x_1868 : f32 = u_xlat84;
        let x_1870 : f32 = u_xlat83;
        u_xlat83 = ((x_1867 * x_1868) + x_1870);
        let x_1873 : vec4<f32> = u_xlat16;
        let x_1874 : vec2<f32> = vec2<f32>(x_1873.x, x_1873.y);
        let x_1876 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec16;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1883.xy, x_1883.z);
        u_xlat84 = x_1885;
        let x_1887 : f32 = u_xlat18.w;
        let x_1888 : f32 = u_xlat84;
        let x_1890 : f32 = u_xlat83;
        u_xlat83 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat14;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec17;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat84 = x_1905;
        let x_1907 : f32 = u_xlat19.x;
        let x_1908 : f32 = u_xlat84;
        let x_1910 : f32 = u_xlat83;
        u_xlat83 = ((x_1907 * x_1908) + x_1910);
        let x_1913 : vec4<f32> = u_xlat14;
        let x_1914 : vec2<f32> = vec2<f32>(x_1913.z, x_1913.w);
        let x_1916 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
        let x_1923 : vec3<f32> = txVec18;
        let x_1925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1923.xy, x_1923.z);
        u_xlat84 = x_1925;
        let x_1927 : f32 = u_xlat19.y;
        let x_1928 : f32 = u_xlat84;
        let x_1930 : f32 = u_xlat83;
        u_xlat83 = ((x_1927 * x_1928) + x_1930);
        let x_1933 : vec4<f32> = u_xlat15;
        let x_1934 : vec2<f32> = vec2<f32>(x_1933.x, x_1933.y);
        let x_1936 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
        let x_1943 : vec3<f32> = txVec19;
        let x_1945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1943.xy, x_1943.z);
        u_xlat84 = x_1945;
        let x_1947 : f32 = u_xlat19.z;
        let x_1948 : f32 = u_xlat84;
        let x_1950 : f32 = u_xlat83;
        u_xlat83 = ((x_1947 * x_1948) + x_1950);
        let x_1953 : vec4<f32> = u_xlat16;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.z, x_1953.w);
        let x_1956 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec20;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat84 = x_1965;
        let x_1967 : f32 = u_xlat19.w;
        let x_1968 : f32 = u_xlat84;
        let x_1970 : f32 = u_xlat83;
        u_xlat83 = ((x_1967 * x_1968) + x_1970);
        let x_1973 : vec4<f32> = u_xlat17;
        let x_1974 : vec2<f32> = vec2<f32>(x_1973.x, x_1973.y);
        let x_1976 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
        let x_1983 : vec3<f32> = txVec21;
        let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1983.xy, x_1983.z);
        u_xlat84 = x_1985;
        let x_1987 : f32 = u_xlat20.x;
        let x_1988 : f32 = u_xlat84;
        let x_1990 : f32 = u_xlat83;
        u_xlat83 = ((x_1987 * x_1988) + x_1990);
        let x_1993 : vec4<f32> = u_xlat17;
        let x_1994 : vec2<f32> = vec2<f32>(x_1993.z, x_1993.w);
        let x_1996 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1994.x, x_1994.y, x_1996);
        let x_2003 : vec3<f32> = txVec22;
        let x_2005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2003.xy, x_2003.z);
        u_xlat84 = x_2005;
        let x_2007 : f32 = u_xlat20.y;
        let x_2008 : f32 = u_xlat84;
        let x_2010 : f32 = u_xlat83;
        u_xlat83 = ((x_2007 * x_2008) + x_2010);
        let x_2013 : vec2<f32> = u_xlat35;
        let x_2015 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec23;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2022.xy, x_2022.z);
        u_xlat84 = x_2024;
        let x_2026 : f32 = u_xlat20.z;
        let x_2027 : f32 = u_xlat84;
        let x_2029 : f32 = u_xlat83;
        u_xlat83 = ((x_2026 * x_2027) + x_2029);
        let x_2032 : vec2<f32> = u_xlat67;
        let x_2034 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec24;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2041.xy, x_2041.z);
        u_xlat84 = x_2043;
        let x_2045 : f32 = u_xlat20.w;
        let x_2046 : f32 = u_xlat84;
        let x_2048 : f32 = u_xlat83;
        u_xlat83 = ((x_2045 * x_2046) + x_2048);
        let x_2051 : vec4<f32> = u_xlat12;
        let x_2052 : vec2<f32> = vec2<f32>(x_2051.x, x_2051.y);
        let x_2054 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
        let x_2061 : vec3<f32> = txVec25;
        let x_2063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2061.xy, x_2061.z);
        u_xlat84 = x_2063;
        let x_2065 : f32 = u_xlat8.x;
        let x_2066 : f32 = u_xlat84;
        let x_2068 : f32 = u_xlat83;
        u_xlat83 = ((x_2065 * x_2066) + x_2068);
        let x_2071 : vec4<f32> = u_xlat12;
        let x_2072 : vec2<f32> = vec2<f32>(x_2071.z, x_2071.w);
        let x_2074 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
        let x_2081 : vec3<f32> = txVec26;
        let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
        u_xlat84 = x_2083;
        let x_2085 : f32 = u_xlat8.y;
        let x_2086 : f32 = u_xlat84;
        let x_2088 : f32 = u_xlat83;
        u_xlat83 = ((x_2085 * x_2086) + x_2088);
        let x_2091 : vec2<f32> = u_xlat62;
        let x_2093 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec27;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
        u_xlat84 = x_2102;
        let x_2104 : f32 = u_xlat8.z;
        let x_2105 : f32 = u_xlat84;
        let x_2107 : f32 = u_xlat83;
        u_xlat83 = ((x_2104 * x_2105) + x_2107);
        let x_2110 : vec4<f32> = u_xlat7;
        let x_2111 : vec2<f32> = vec2<f32>(x_2110.x, x_2110.y);
        let x_2113 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec28;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2120.xy, x_2120.z);
        u_xlat84 = x_2122;
        let x_2124 : f32 = u_xlat8.w;
        let x_2125 : f32 = u_xlat84;
        let x_2127 : f32 = u_xlat83;
        u_xlat82 = ((x_2124 * x_2125) + x_2127);
      }
    }
  } else {
    let x_2131 : vec4<f32> = u_xlat3;
    let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
    let x_2134 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
    let x_2141 : vec3<f32> = txVec29;
    let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
    u_xlat82 = x_2143;
  }
  let x_2145 : f32 = x_629.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2145) + 1.0f);
  let x_2149 : f32 = u_xlat82;
  let x_2151 : f32 = x_629.x_MainLightShadowParams.x;
  let x_2154 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2149 * x_2151) + x_2154);
  let x_2159 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2159);
  let x_2163 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2163 >= 1.0f);
  let x_2165 : bool = u_xlatb55;
  let x_2166 : bool = u_xlatb29;
  u_xlatb29 = (x_2165 | x_2166);
  let x_2168 : bool = u_xlatb29;
  if (x_2168) {
    x_2169 = 1.0f;
  } else {
    let x_2174 : f32 = u_xlat3.x;
    x_2169 = x_2174;
  }
  let x_2175 : f32 = x_2169;
  u_xlat3.x = x_2175;
  let x_2177 : vec3<f32> = vs_TEXCOORD7;
  let x_2179 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2181 : vec3<f32> = (x_2177 + -(x_2179));
  let x_2182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
  let x_2185 : vec4<f32> = u_xlat7;
  let x_2187 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2185.x, x_2185.y, x_2185.z), vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
  let x_2191 : f32 = u_xlat29;
  let x_2193 : f32 = x_629.x_MainLightShadowParams.z;
  let x_2196 : f32 = x_629.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2191 * x_2193) + x_2196);
  let x_2198 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2198, 0.0f, 1.0f);
  let x_2201 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_2201) + 1.0f);
  let x_2204 : f32 = u_xlat55;
  let x_2205 : f32 = u_xlat82;
  let x_2208 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2204 * x_2205) + x_2208);
  let x_2218 : f32 = x_2216.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2218 == -1.0f));
  let x_2220 : bool = u_xlatb55;
  if (x_2220) {
    let x_2223 : vec3<f32> = vs_TEXCOORD7;
    let x_2226 : vec4<f32> = x_2216.x_MainLightWorldToLight[1i];
    let x_2228 : vec2<f32> = (vec2<f32>(x_2223.y, x_2223.y) * vec2<f32>(x_2226.x, x_2226.y));
    let x_2229 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2228.x, x_2228.y, x_2229.z, x_2229.w);
    let x_2232 : vec4<f32> = x_2216.x_MainLightWorldToLight[0i];
    let x_2234 : vec3<f32> = vs_TEXCOORD7;
    let x_2237 : vec4<f32> = u_xlat7;
    let x_2239 : vec2<f32> = ((vec2<f32>(x_2232.x, x_2232.y) * vec2<f32>(x_2234.x, x_2234.x)) + vec2<f32>(x_2237.x, x_2237.y));
    let x_2240 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
    let x_2243 : vec4<f32> = x_2216.x_MainLightWorldToLight[2i];
    let x_2245 : vec3<f32> = vs_TEXCOORD7;
    let x_2248 : vec4<f32> = u_xlat7;
    let x_2250 : vec2<f32> = ((vec2<f32>(x_2243.x, x_2243.y) * vec2<f32>(x_2245.z, x_2245.z)) + vec2<f32>(x_2248.x, x_2248.y));
    let x_2251 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2250.x, x_2250.y, x_2251.z, x_2251.w);
    let x_2253 : vec4<f32> = u_xlat7;
    let x_2256 : vec4<f32> = x_2216.x_MainLightWorldToLight[3i];
    let x_2258 : vec2<f32> = (vec2<f32>(x_2253.x, x_2253.y) + vec2<f32>(x_2256.x, x_2256.y));
    let x_2259 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
    let x_2261 : vec4<f32> = u_xlat7;
    let x_2264 : vec2<f32> = ((vec2<f32>(x_2261.x, x_2261.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2265 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2264.x, x_2264.y, x_2265.z, x_2265.w);
    let x_2272 : vec4<f32> = u_xlat7;
    let x_2275 : f32 = x_29.x_GlobalMipBias.x;
    let x_2276 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2272.x, x_2272.y), x_2275);
    u_xlat7 = x_2276;
    let x_2281 : f32 = x_2216.x_MainLightCookieTextureFormat;
    let x_2283 : f32 = x_2216.x_MainLightCookieTextureFormat;
    let x_2285 : f32 = x_2216.x_MainLightCookieTextureFormat;
    let x_2287 : f32 = x_2216.x_MainLightCookieTextureFormat;
    let x_2288 : vec4<f32> = vec4<f32>(x_2281, x_2283, x_2285, x_2287);
    let x_2295 : vec4<bool> = (vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2288.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2295.x, x_2295.y);
    let x_2298 : bool = u_xlatb8.y;
    if (x_2298) {
      let x_2303 : f32 = u_xlat7.w;
      x_2299 = x_2303;
    } else {
      let x_2306 : f32 = u_xlat7.x;
      x_2299 = x_2306;
    }
    let x_2307 : f32 = x_2299;
    u_xlat55 = x_2307;
    let x_2309 : bool = u_xlatb8.x;
    if (x_2309) {
      let x_2313 : vec4<f32> = u_xlat7;
      x_2310 = vec3<f32>(x_2313.x, x_2313.y, x_2313.z);
    } else {
      let x_2316 : f32 = u_xlat55;
      x_2310 = vec3<f32>(x_2316, x_2316, x_2316);
    }
    let x_2318 : vec3<f32> = x_2310;
    let x_2319 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2325 : vec4<f32> = u_xlat7;
  let x_2328 : vec4<f32> = x_29.x_MainLightColor;
  let x_2330 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.y, x_2325.z) * vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
  let x_2333 : vec3<f32> = u_xlat2;
  let x_2335 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(x_2333), vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
  let x_2338 : f32 = u_xlat55;
  let x_2339 : f32 = u_xlat55;
  u_xlat55 = (x_2338 + x_2339);
  let x_2341 : vec4<f32> = u_xlat1;
  let x_2343 : f32 = u_xlat55;
  let x_2347 : vec3<f32> = u_xlat2;
  let x_2349 : vec3<f32> = ((vec3<f32>(x_2341.x, x_2341.y, x_2341.z) * -(vec3<f32>(x_2343, x_2343, x_2343))) + -(x_2347));
  let x_2350 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
  let x_2352 : vec4<f32> = u_xlat1;
  let x_2354 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(vec3<f32>(x_2352.x, x_2352.y, x_2352.z), x_2354);
  let x_2356 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2356, 0.0f, 1.0f);
  let x_2358 : f32 = u_xlat55;
  u_xlat55 = (-(x_2358) + 1.0f);
  let x_2361 : f32 = u_xlat55;
  let x_2362 : f32 = u_xlat55;
  u_xlat55 = (x_2361 * x_2362);
  let x_2364 : f32 = u_xlat55;
  let x_2365 : f32 = u_xlat55;
  u_xlat55 = (x_2364 * x_2365);
  let x_2368 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2368) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2375 : f32 = u_xlat0.x;
  let x_2376 : f32 = u_xlat82;
  u_xlat0.x = (x_2375 * x_2376);
  let x_2380 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2380 * 6.0f);
  let x_2392 : vec4<f32> = u_xlat8;
  let x_2395 : f32 = u_xlat0.x;
  let x_2396 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2392.x, x_2392.y, x_2392.z), x_2395);
  u_xlat8 = x_2396;
  let x_2398 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2398 + -1.0f);
  let x_2406 : f32 = x_2404.unity_SpecCube0_HDR.w;
  let x_2408 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2406 * x_2408) + 1.0f);
  let x_2413 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2413, 0.0f);
  let x_2417 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2417);
  let x_2421 : f32 = u_xlat0.x;
  let x_2423 : f32 = x_2404.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2421 * x_2423);
  let x_2427 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2427);
  let x_2431 : f32 = u_xlat0.x;
  let x_2433 : f32 = x_2404.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2431 * x_2433);
  let x_2436 : vec4<f32> = u_xlat8;
  let x_2438 : vec3<f32> = u_xlat0;
  let x_2440 : vec3<f32> = (vec3<f32>(x_2436.x, x_2436.y, x_2436.z) * vec3<f32>(x_2438.x, x_2438.x, x_2438.x));
  let x_2441 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
  let x_2443 : f32 = u_xlat52;
  let x_2445 : f32 = u_xlat52;
  let x_2449 : vec2<f32> = ((vec2<f32>(x_2443, x_2443) * vec2<f32>(x_2445, x_2445)) + vec2<f32>(-1.0f, 1.0f));
  let x_2450 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2449.x, x_2450.y, x_2449.y);
  let x_2453 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2453);
  let x_2455 : vec4<f32> = u_xlat5;
  let x_2458 : f32 = u_xlat80;
  let x_2460 : vec3<f32> = (-(vec3<f32>(x_2455.x, x_2455.y, x_2455.z)) + vec3<f32>(x_2458, x_2458, x_2458));
  let x_2461 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2460.x, x_2460.y, x_2460.z, x_2461.w);
  let x_2463 : f32 = u_xlat55;
  let x_2465 : vec4<f32> = u_xlat9;
  let x_2468 : vec4<f32> = u_xlat5;
  let x_2470 : vec3<f32> = ((vec3<f32>(x_2463, x_2463, x_2463) * vec3<f32>(x_2465.x, x_2465.y, x_2465.z)) + vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
  let x_2471 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
  let x_2473 : f32 = u_xlat52;
  let x_2475 : vec4<f32> = u_xlat9;
  let x_2477 : vec3<f32> = (vec3<f32>(x_2473, x_2473, x_2473) * vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2478 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
  let x_2480 : vec4<f32> = u_xlat8;
  let x_2482 : vec4<f32> = u_xlat9;
  let x_2484 : vec3<f32> = (vec3<f32>(x_2480.x, x_2480.y, x_2480.z) * vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
  let x_2485 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
  let x_2487 : vec4<f32> = u_xlat4;
  let x_2489 : vec4<f32> = u_xlat6;
  let x_2492 : vec4<f32> = u_xlat8;
  let x_2494 : vec3<f32> = ((vec3<f32>(x_2487.x, x_2487.y, x_2487.z) * vec3<f32>(x_2489.x, x_2489.y, x_2489.z)) + vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2495 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
  let x_2498 : f32 = u_xlat3.x;
  let x_2500 : f32 = x_2404.unity_LightData.z;
  u_xlat52 = (x_2498 * x_2500);
  let x_2502 : vec4<f32> = u_xlat1;
  let x_2505 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2502.x, x_2502.y, x_2502.z), vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
  let x_2508 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2508, 0.0f, 1.0f);
  let x_2510 : f32 = u_xlat52;
  let x_2511 : f32 = u_xlat80;
  u_xlat52 = (x_2510 * x_2511);
  let x_2513 : f32 = u_xlat52;
  let x_2515 : vec4<f32> = u_xlat7;
  let x_2517 : vec3<f32> = (vec3<f32>(x_2513, x_2513, x_2513) * vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2518 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
  let x_2520 : vec3<f32> = u_xlat2;
  let x_2522 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2524 : vec3<f32> = (x_2520 + vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
  let x_2525 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
  let x_2527 : vec4<f32> = u_xlat8;
  let x_2529 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2527.x, x_2527.y, x_2527.z), vec3<f32>(x_2529.x, x_2529.y, x_2529.z));
  let x_2532 : f32 = u_xlat52;
  u_xlat52 = max(x_2532, 1.17549435e-38f);
  let x_2535 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2535);
  let x_2537 : f32 = u_xlat52;
  let x_2539 : vec4<f32> = u_xlat8;
  let x_2541 : vec3<f32> = (vec3<f32>(x_2537, x_2537, x_2537) * vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
  let x_2542 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
  let x_2544 : vec4<f32> = u_xlat1;
  let x_2546 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2544.x, x_2544.y, x_2544.z), vec3<f32>(x_2546.x, x_2546.y, x_2546.z));
  let x_2549 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2549, 0.0f, 1.0f);
  let x_2552 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2554 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_2552.x, x_2552.y, x_2552.z), vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
  let x_2557 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2557, 0.0f, 1.0f);
  let x_2559 : f32 = u_xlat52;
  let x_2560 : f32 = u_xlat52;
  u_xlat52 = (x_2559 * x_2560);
  let x_2562 : f32 = u_xlat52;
  let x_2564 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2562 * x_2564) + 1.00001001358032226562f);
  let x_2568 : f32 = u_xlat80;
  let x_2569 : f32 = u_xlat80;
  u_xlat80 = (x_2568 * x_2569);
  let x_2571 : f32 = u_xlat52;
  let x_2572 : f32 = u_xlat52;
  u_xlat52 = (x_2571 * x_2572);
  let x_2574 : f32 = u_xlat80;
  u_xlat80 = max(x_2574, 0.10000000149011611938f);
  let x_2577 : f32 = u_xlat52;
  let x_2578 : f32 = u_xlat80;
  u_xlat52 = (x_2577 * x_2578);
  let x_2580 : f32 = u_xlat81;
  let x_2581 : f32 = u_xlat52;
  u_xlat52 = (x_2580 * x_2581);
  let x_2583 : f32 = u_xlat79;
  let x_2584 : f32 = u_xlat52;
  u_xlat52 = (x_2583 / x_2584);
  let x_2586 : vec4<f32> = u_xlat5;
  let x_2588 : f32 = u_xlat52;
  let x_2591 : vec4<f32> = u_xlat6;
  let x_2593 : vec3<f32> = ((vec3<f32>(x_2586.x, x_2586.y, x_2586.z) * vec3<f32>(x_2588, x_2588, x_2588)) + vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
  let x_2596 : vec4<f32> = u_xlat7;
  let x_2598 : vec4<f32> = u_xlat8;
  let x_2600 : vec3<f32> = (vec3<f32>(x_2596.x, x_2596.y, x_2596.z) * vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
  let x_2601 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
  let x_2604 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2606 : f32 = x_2404.unity_LightData.y;
  u_xlat52 = min(x_2604, x_2606);
  let x_2609 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2609));
  let x_2612 : f32 = u_xlat29;
  let x_2614 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_2617 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2612 * x_2614) + x_2617);
  let x_2619 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2619, 0.0f, 1.0f);
  let x_2622 : f32 = x_2216.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2624 : f32 = x_2216.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2626 : f32 = x_2216.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2628 : f32 = x_2216.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2629 : vec4<f32> = vec4<f32>(x_2622, x_2624, x_2626, x_2628);
  let x_2635 : vec4<bool> = (vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2629.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2636 : vec2<bool> = vec2<bool>(x_2635.x, x_2635.y);
  let x_2637 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2636.x, x_2636.y, x_2637.z, x_2637.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2649 : u32 = u_xlatu_loop_1;
    let x_2650 : u32 = u_xlatu52;
    if ((x_2649 < x_2650)) {
    } else {
      break;
    }
    let x_2653 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2653 >> 2u);
    let x_2656 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2656 & 3u));
    let x_2659 : u32 = u_xlatu82;
    let x_2662 : vec4<f32> = x_2404.unity_LightIndices[bitcast<i32>(x_2659)];
    let x_2672 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2677 : vec4<u32> = indexable[x_2672];
    u_xlat82 = dot(x_2662, bitcast<vec4<f32>>(x_2677));
    let x_2681 : f32 = u_xlat82;
    u_xlati82 = i32(x_2681);
    let x_2683 : vec3<f32> = vs_TEXCOORD7;
    let x_2694 : i32 = u_xlati82;
    let x_2696 : vec4<f32> = x_2693.x_AdditionalLightsPosition[x_2694];
    let x_2699 : i32 = u_xlati82;
    let x_2701 : vec4<f32> = x_2693.x_AdditionalLightsPosition[x_2699];
    let x_2703 : vec3<f32> = ((-(x_2683) * vec3<f32>(x_2696.w, x_2696.w, x_2696.w)) + vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
    let x_2704 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2704.w);
    let x_2706 : vec4<f32> = u_xlat9;
    let x_2708 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2706.x, x_2706.y, x_2706.z), vec3<f32>(x_2708.x, x_2708.y, x_2708.z));
    let x_2711 : f32 = u_xlat83;
    u_xlat83 = max(x_2711, 0.00006103515625f);
    let x_2713 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2713);
    let x_2715 : f32 = u_xlat84;
    let x_2717 : vec4<f32> = u_xlat9;
    let x_2719 : vec3<f32> = (vec3<f32>(x_2715, x_2715, x_2715) * vec3<f32>(x_2717.x, x_2717.y, x_2717.z));
    let x_2720 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2720.w);
    let x_2723 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2723);
    let x_2725 : f32 = u_xlat83;
    let x_2726 : i32 = u_xlati82;
    let x_2728 : f32 = x_2693.x_AdditionalLightsAttenuation[x_2726].x;
    u_xlat83 = (x_2725 * x_2728);
    let x_2730 : f32 = u_xlat83;
    let x_2732 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2730) * x_2732) + 1.0f);
    let x_2735 : f32 = u_xlat83;
    u_xlat83 = max(x_2735, 0.0f);
    let x_2737 : f32 = u_xlat83;
    let x_2738 : f32 = u_xlat83;
    u_xlat83 = (x_2737 * x_2738);
    let x_2740 : f32 = u_xlat83;
    let x_2741 : f32 = u_xlat85;
    u_xlat83 = (x_2740 * x_2741);
    let x_2743 : i32 = u_xlati82;
    let x_2745 : vec4<f32> = x_2693.x_AdditionalLightsSpotDir[x_2743];
    let x_2747 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2745.x, x_2745.y, x_2745.z), vec3<f32>(x_2747.x, x_2747.y, x_2747.z));
    let x_2750 : f32 = u_xlat85;
    let x_2751 : i32 = u_xlati82;
    let x_2753 : f32 = x_2693.x_AdditionalLightsAttenuation[x_2751].z;
    let x_2755 : i32 = u_xlati82;
    let x_2757 : f32 = x_2693.x_AdditionalLightsAttenuation[x_2755].w;
    u_xlat85 = ((x_2750 * x_2753) + x_2757);
    let x_2759 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2759, 0.0f, 1.0f);
    let x_2761 : f32 = u_xlat85;
    let x_2762 : f32 = u_xlat85;
    u_xlat85 = (x_2761 * x_2762);
    let x_2764 : f32 = u_xlat83;
    let x_2765 : f32 = u_xlat85;
    u_xlat83 = (x_2764 * x_2765);
    let x_2768 : i32 = u_xlati82;
    let x_2770 : f32 = x_629.x_AdditionalShadowParams[x_2768].w;
    u_xlati85 = i32(x_2770);
    let x_2773 : i32 = u_xlati85;
    u_xlatb86 = (x_2773 >= 0i);
    let x_2775 : bool = u_xlatb86;
    if (x_2775) {
      let x_2779 : i32 = u_xlati82;
      let x_2781 : f32 = x_629.x_AdditionalShadowParams[x_2779].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2781, x_2781, x_2781, x_2781))));
      let x_2785 : bool = u_xlatb86;
      if (x_2785) {
        let x_2789 : vec4<f32> = u_xlat10;
        let x_2792 : vec4<f32> = u_xlat10;
        let x_2795 : vec4<bool> = (abs(vec4<f32>(x_2789.z, x_2789.z, x_2789.y, x_2789.z)) >= abs(vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.x)));
        let x_2797 : vec3<bool> = vec3<bool>(x_2795.x, x_2795.y, x_2795.z);
        let x_2798 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
        let x_2801 : bool = u_xlatb11.y;
        let x_2803 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2801 & x_2803);
        let x_2805 : vec4<f32> = u_xlat10;
        let x_2808 : vec4<bool> = (-(vec4<f32>(x_2805.z, x_2805.y, x_2805.z, x_2805.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2809 : vec3<bool> = vec3<bool>(x_2808.x, x_2808.y, x_2808.w);
        let x_2810 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2809.x, x_2809.y, x_2810.z, x_2809.z);
        let x_2813 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2813);
        let x_2818 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2818);
        let x_2823 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2823);
        let x_2826 : bool = u_xlatb11.z;
        if (x_2826) {
          let x_2831 : f32 = u_xlat11.y;
          x_2827 = x_2831;
        } else {
          let x_2833 : f32 = u_xlat87;
          x_2827 = x_2833;
        }
        let x_2834 : f32 = x_2827;
        u_xlat87 = x_2834;
        let x_2836 : bool = u_xlatb86;
        if (x_2836) {
          let x_2841 : f32 = u_xlat11.x;
          x_2837 = x_2841;
        } else {
          let x_2843 : f32 = u_xlat87;
          x_2837 = x_2843;
        }
        let x_2844 : f32 = x_2837;
        u_xlat86 = x_2844;
        let x_2845 : i32 = u_xlati82;
        let x_2847 : f32 = x_629.x_AdditionalShadowParams[x_2845].w;
        u_xlat87 = trunc(x_2847);
        let x_2849 : f32 = u_xlat86;
        let x_2850 : f32 = u_xlat87;
        u_xlat86 = (x_2849 + x_2850);
        let x_2852 : f32 = u_xlat86;
        u_xlati85 = i32(x_2852);
      }
      let x_2854 : i32 = u_xlati85;
      u_xlati85 = (x_2854 << bitcast<u32>(2i));
      let x_2856 : vec3<f32> = vs_TEXCOORD7;
      let x_2858 : i32 = u_xlati85;
      let x_2861 : i32 = u_xlati85;
      let x_2865 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2858 + 1i) / 4i)][((x_2861 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2856.y, x_2856.y, x_2856.y, x_2856.y) * x_2865);
      let x_2867 : i32 = u_xlati85;
      let x_2869 : i32 = u_xlati85;
      let x_2872 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_2867 / 4i)][(x_2869 % 4i)];
      let x_2873 : vec3<f32> = vs_TEXCOORD7;
      let x_2876 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2872 * vec4<f32>(x_2873.x, x_2873.x, x_2873.x, x_2873.x)) + x_2876);
      let x_2878 : i32 = u_xlati85;
      let x_2881 : i32 = u_xlati85;
      let x_2885 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2878 + 2i) / 4i)][((x_2881 + 2i) % 4i)];
      let x_2886 : vec3<f32> = vs_TEXCOORD7;
      let x_2889 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2885 * vec4<f32>(x_2886.z, x_2886.z, x_2886.z, x_2886.z)) + x_2889);
      let x_2891 : vec4<f32> = u_xlat11;
      let x_2892 : i32 = u_xlati85;
      let x_2895 : i32 = u_xlati85;
      let x_2899 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2892 + 3i) / 4i)][((x_2895 + 3i) % 4i)];
      u_xlat11 = (x_2891 + x_2899);
      let x_2901 : vec4<f32> = u_xlat11;
      let x_2903 : vec4<f32> = u_xlat11;
      let x_2905 : vec3<f32> = (vec3<f32>(x_2901.x, x_2901.y, x_2901.z) / vec3<f32>(x_2903.w, x_2903.w, x_2903.w));
      let x_2906 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2905.x, x_2905.y, x_2905.z, x_2906.w);
      let x_2909 : i32 = u_xlati82;
      let x_2911 : f32 = x_629.x_AdditionalShadowParams[x_2909].y;
      u_xlatb85 = (0.0f < x_2911);
      let x_2913 : bool = u_xlatb85;
      if (x_2913) {
        let x_2916 : i32 = u_xlati82;
        let x_2918 : f32 = x_629.x_AdditionalShadowParams[x_2916].y;
        u_xlatb85 = (1.0f == x_2918);
        let x_2920 : bool = u_xlatb85;
        if (x_2920) {
          let x_2923 : vec4<f32> = u_xlat11;
          let x_2926 : vec4<f32> = x_629.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2923.x, x_2923.y, x_2923.x, x_2923.y) + x_2926);
          let x_2929 : vec4<f32> = u_xlat12;
          let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
          let x_2932 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
          let x_2940 : vec3<f32> = txVec30;
          let x_2942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
          u_xlat13.x = x_2942;
          let x_2945 : vec4<f32> = u_xlat12;
          let x_2946 : vec2<f32> = vec2<f32>(x_2945.z, x_2945.w);
          let x_2948 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2946.x, x_2946.y, x_2948);
          let x_2955 : vec3<f32> = txVec31;
          let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
          u_xlat13.y = x_2957;
          let x_2959 : vec4<f32> = u_xlat11;
          let x_2962 : vec4<f32> = x_629.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y) + x_2962);
          let x_2965 : vec4<f32> = u_xlat12;
          let x_2966 : vec2<f32> = vec2<f32>(x_2965.x, x_2965.y);
          let x_2968 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2966.x, x_2966.y, x_2968);
          let x_2975 : vec3<f32> = txVec32;
          let x_2977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2975.xy, x_2975.z);
          u_xlat13.z = x_2977;
          let x_2980 : vec4<f32> = u_xlat12;
          let x_2981 : vec2<f32> = vec2<f32>(x_2980.z, x_2980.w);
          let x_2983 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
          let x_2990 : vec3<f32> = txVec33;
          let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
          u_xlat13.w = x_2992;
          let x_2994 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2994, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2997 : i32 = u_xlati82;
          let x_2999 : f32 = x_629.x_AdditionalShadowParams[x_2997].y;
          u_xlatb86 = (2.0f == x_2999);
          let x_3001 : bool = u_xlatb86;
          if (x_3001) {
            let x_3004 : vec4<f32> = u_xlat11;
            let x_3007 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3010 : vec2<f32> = ((vec2<f32>(x_3004.x, x_3004.y) * vec2<f32>(x_3007.z, x_3007.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3011 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3010.x, x_3010.y, x_3011.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3015 : vec2<f32> = floor(vec2<f32>(x_3013.x, x_3013.y));
            let x_3016 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3015.x, x_3015.y, x_3016.z, x_3016.w);
            let x_3019 : vec4<f32> = u_xlat11;
            let x_3022 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3025 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3019.x, x_3019.y) * vec2<f32>(x_3022.z, x_3022.w)) + -(vec2<f32>(x_3025.x, x_3025.y)));
            let x_3029 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3029.x, x_3029.x, x_3029.y, x_3029.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3032 : vec4<f32> = u_xlat13;
            let x_3034 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3032.x, x_3032.x, x_3032.z, x_3032.z) * vec4<f32>(x_3034.x, x_3034.x, x_3034.z, x_3034.z));
            let x_3037 : vec4<f32> = u_xlat14;
            let x_3039 : vec2<f32> = (vec2<f32>(x_3037.y, x_3037.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3040 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3039.x, x_3040.y, x_3039.y, x_3040.w);
            let x_3042 : vec4<f32> = u_xlat14;
            let x_3045 : vec2<f32> = u_xlat64;
            let x_3047 : vec2<f32> = ((vec2<f32>(x_3042.x, x_3042.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3045));
            let x_3048 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3047.x, x_3047.y, x_3048.z, x_3048.w);
            let x_3051 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3051) + vec2<f32>(1.0f, 1.0f));
            let x_3054 : vec2<f32> = u_xlat64;
            let x_3055 : vec2<f32> = min(x_3054, vec2<f32>(0.0f, 0.0f));
            let x_3056 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3058 : vec4<f32> = u_xlat15;
            let x_3061 : vec4<f32> = u_xlat15;
            let x_3064 : vec2<f32> = u_xlat66;
            let x_3065 : vec2<f32> = ((-(vec2<f32>(x_3058.x, x_3058.y)) * vec2<f32>(x_3061.x, x_3061.y)) + x_3064);
            let x_3066 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3065.x, x_3065.y, x_3066.z, x_3066.w);
            let x_3068 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3068, vec2<f32>(0.0f, 0.0f));
            let x_3070 : vec2<f32> = u_xlat64;
            let x_3072 : vec2<f32> = u_xlat64;
            let x_3074 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3070) * x_3072) + vec2<f32>(x_3074.y, x_3074.w));
            let x_3077 : vec4<f32> = u_xlat15;
            let x_3079 : vec2<f32> = (vec2<f32>(x_3077.x, x_3077.y) + vec2<f32>(1.0f, 1.0f));
            let x_3080 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3079.x, x_3079.y, x_3080.z, x_3080.w);
            let x_3082 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3082 + vec2<f32>(1.0f, 1.0f));
            let x_3084 : vec4<f32> = u_xlat14;
            let x_3086 : vec2<f32> = (vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3087 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3089 : vec2<f32> = u_xlat66;
            let x_3090 : vec2<f32> = (x_3089 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3091 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3090.x, x_3090.y, x_3091.z, x_3091.w);
            let x_3093 : vec4<f32> = u_xlat15;
            let x_3095 : vec2<f32> = (vec2<f32>(x_3093.x, x_3093.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3096 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3095.x, x_3095.y, x_3096.z, x_3096.w);
            let x_3098 : vec2<f32> = u_xlat64;
            let x_3099 : vec2<f32> = (x_3098 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3100 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3099.x, x_3099.y, x_3100.z, x_3100.w);
            let x_3102 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3102.y, x_3102.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3106 : f32 = u_xlat15.x;
            u_xlat16.z = x_3106;
            let x_3109 : f32 = u_xlat64.x;
            u_xlat16.w = x_3109;
            let x_3112 : f32 = u_xlat17.x;
            u_xlat14.z = x_3112;
            let x_3115 : f32 = u_xlat13.x;
            u_xlat14.w = x_3115;
            let x_3117 : vec4<f32> = u_xlat14;
            let x_3119 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3117.z, x_3117.w, x_3117.x, x_3117.z) + vec4<f32>(x_3119.z, x_3119.w, x_3119.x, x_3119.z));
            let x_3123 : f32 = u_xlat16.y;
            u_xlat15.z = x_3123;
            let x_3126 : f32 = u_xlat64.y;
            u_xlat15.w = x_3126;
            let x_3129 : f32 = u_xlat14.y;
            u_xlat17.z = x_3129;
            let x_3132 : f32 = u_xlat13.z;
            u_xlat17.w = x_3132;
            let x_3134 : vec4<f32> = u_xlat15;
            let x_3136 : vec4<f32> = u_xlat17;
            let x_3138 : vec3<f32> = (vec3<f32>(x_3134.z, x_3134.y, x_3134.w) + vec3<f32>(x_3136.z, x_3136.y, x_3136.w));
            let x_3139 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3138.x, x_3138.y, x_3138.z, x_3139.w);
            let x_3141 : vec4<f32> = u_xlat14;
            let x_3143 : vec4<f32> = u_xlat18;
            let x_3145 : vec3<f32> = (vec3<f32>(x_3141.x, x_3141.z, x_3141.w) / vec3<f32>(x_3143.z, x_3143.w, x_3143.y));
            let x_3146 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3145.x, x_3145.y, x_3145.z, x_3146.w);
            let x_3148 : vec4<f32> = u_xlat14;
            let x_3150 : vec3<f32> = (vec3<f32>(x_3148.x, x_3148.y, x_3148.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3151 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3150.x, x_3150.y, x_3150.z, x_3151.w);
            let x_3153 : vec4<f32> = u_xlat17;
            let x_3155 : vec4<f32> = u_xlat13;
            let x_3157 : vec3<f32> = (vec3<f32>(x_3153.z, x_3153.y, x_3153.w) / vec3<f32>(x_3155.x, x_3155.y, x_3155.z));
            let x_3158 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3157.x, x_3157.y, x_3157.z, x_3158.w);
            let x_3160 : vec4<f32> = u_xlat15;
            let x_3162 : vec3<f32> = (vec3<f32>(x_3160.x, x_3160.y, x_3160.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3163 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3162.x, x_3162.y, x_3162.z, x_3163.w);
            let x_3165 : vec4<f32> = u_xlat14;
            let x_3168 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3170 : vec3<f32> = (vec3<f32>(x_3165.y, x_3165.x, x_3165.z) * vec3<f32>(x_3168.x, x_3168.x, x_3168.x));
            let x_3171 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3170.x, x_3170.y, x_3170.z, x_3171.w);
            let x_3173 : vec4<f32> = u_xlat15;
            let x_3176 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3178 : vec3<f32> = (vec3<f32>(x_3173.x, x_3173.y, x_3173.z) * vec3<f32>(x_3176.y, x_3176.y, x_3176.y));
            let x_3179 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3179.w);
            let x_3182 : f32 = u_xlat15.x;
            u_xlat14.w = x_3182;
            let x_3184 : vec4<f32> = u_xlat12;
            let x_3187 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3190 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3184.x, x_3184.y, x_3184.x, x_3184.y) * vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y)) + vec4<f32>(x_3190.y, x_3190.w, x_3190.x, x_3190.w));
            let x_3193 : vec4<f32> = u_xlat12;
            let x_3196 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3199 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3193.x, x_3193.y) * vec2<f32>(x_3196.x, x_3196.y)) + vec2<f32>(x_3199.z, x_3199.w));
            let x_3203 : f32 = u_xlat14.y;
            u_xlat15.w = x_3203;
            let x_3205 : vec4<f32> = u_xlat15;
            let x_3206 : vec2<f32> = vec2<f32>(x_3205.y, x_3205.z);
            let x_3207 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3207.x, x_3206.x, x_3207.z, x_3206.y);
            let x_3209 : vec4<f32> = u_xlat12;
            let x_3212 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3215 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3209.x, x_3209.y, x_3209.x, x_3209.y) * vec4<f32>(x_3212.x, x_3212.y, x_3212.x, x_3212.y)) + vec4<f32>(x_3215.x, x_3215.y, x_3215.z, x_3215.y));
            let x_3218 : vec4<f32> = u_xlat12;
            let x_3221 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3224 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3218.x, x_3218.y, x_3218.x, x_3218.y) * vec4<f32>(x_3221.x, x_3221.y, x_3221.x, x_3221.y)) + vec4<f32>(x_3224.w, x_3224.y, x_3224.w, x_3224.z));
            let x_3227 : vec4<f32> = u_xlat12;
            let x_3230 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3233 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y) * vec4<f32>(x_3230.x, x_3230.y, x_3230.x, x_3230.y)) + vec4<f32>(x_3233.x, x_3233.w, x_3233.z, x_3233.w));
            let x_3236 : vec4<f32> = u_xlat13;
            let x_3238 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3236.x, x_3236.x, x_3236.x, x_3236.y) * vec4<f32>(x_3238.z, x_3238.w, x_3238.y, x_3238.z));
            let x_3241 : vec4<f32> = u_xlat13;
            let x_3243 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3241.y, x_3241.y, x_3241.z, x_3241.z) * x_3243);
            let x_3246 : f32 = u_xlat13.z;
            let x_3248 : f32 = u_xlat18.y;
            u_xlat86 = (x_3246 * x_3248);
            let x_3251 : vec4<f32> = u_xlat16;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.x, x_3251.y);
            let x_3254 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec34;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat87 = x_3263;
            let x_3265 : vec4<f32> = u_xlat16;
            let x_3266 : vec2<f32> = vec2<f32>(x_3265.z, x_3265.w);
            let x_3268 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3266.x, x_3266.y, x_3268);
            let x_3276 : vec3<f32> = txVec35;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat88 = x_3278;
            let x_3279 : f32 = u_xlat88;
            let x_3281 : f32 = u_xlat19.y;
            u_xlat88 = (x_3279 * x_3281);
            let x_3284 : f32 = u_xlat19.x;
            let x_3285 : f32 = u_xlat87;
            let x_3287 : f32 = u_xlat88;
            u_xlat87 = ((x_3284 * x_3285) + x_3287);
            let x_3290 : vec2<f32> = u_xlat64;
            let x_3292 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec36;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat88 = x_3301;
            let x_3303 : f32 = u_xlat19.z;
            let x_3304 : f32 = u_xlat88;
            let x_3306 : f32 = u_xlat87;
            u_xlat87 = ((x_3303 * x_3304) + x_3306);
            let x_3309 : vec4<f32> = u_xlat15;
            let x_3310 : vec2<f32> = vec2<f32>(x_3309.x, x_3309.y);
            let x_3312 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3310.x, x_3310.y, x_3312);
            let x_3319 : vec3<f32> = txVec37;
            let x_3321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3319.xy, x_3319.z);
            u_xlat88 = x_3321;
            let x_3323 : f32 = u_xlat19.w;
            let x_3324 : f32 = u_xlat88;
            let x_3326 : f32 = u_xlat87;
            u_xlat87 = ((x_3323 * x_3324) + x_3326);
            let x_3329 : vec4<f32> = u_xlat17;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.x, x_3329.y);
            let x_3332 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3339 : vec3<f32> = txVec38;
            let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
            u_xlat88 = x_3341;
            let x_3343 : f32 = u_xlat20.x;
            let x_3344 : f32 = u_xlat88;
            let x_3346 : f32 = u_xlat87;
            u_xlat87 = ((x_3343 * x_3344) + x_3346);
            let x_3349 : vec4<f32> = u_xlat17;
            let x_3350 : vec2<f32> = vec2<f32>(x_3349.z, x_3349.w);
            let x_3352 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3350.x, x_3350.y, x_3352);
            let x_3359 : vec3<f32> = txVec39;
            let x_3361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3359.xy, x_3359.z);
            u_xlat88 = x_3361;
            let x_3363 : f32 = u_xlat20.y;
            let x_3364 : f32 = u_xlat88;
            let x_3366 : f32 = u_xlat87;
            u_xlat87 = ((x_3363 * x_3364) + x_3366);
            let x_3369 : vec4<f32> = u_xlat15;
            let x_3370 : vec2<f32> = vec2<f32>(x_3369.z, x_3369.w);
            let x_3372 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3370.x, x_3370.y, x_3372);
            let x_3379 : vec3<f32> = txVec40;
            let x_3381 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3379.xy, x_3379.z);
            u_xlat88 = x_3381;
            let x_3383 : f32 = u_xlat20.z;
            let x_3384 : f32 = u_xlat88;
            let x_3386 : f32 = u_xlat87;
            u_xlat87 = ((x_3383 * x_3384) + x_3386);
            let x_3389 : vec4<f32> = u_xlat14;
            let x_3390 : vec2<f32> = vec2<f32>(x_3389.x, x_3389.y);
            let x_3392 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3390.x, x_3390.y, x_3392);
            let x_3399 : vec3<f32> = txVec41;
            let x_3401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3399.xy, x_3399.z);
            u_xlat88 = x_3401;
            let x_3403 : f32 = u_xlat20.w;
            let x_3404 : f32 = u_xlat88;
            let x_3406 : f32 = u_xlat87;
            u_xlat87 = ((x_3403 * x_3404) + x_3406);
            let x_3409 : vec4<f32> = u_xlat14;
            let x_3410 : vec2<f32> = vec2<f32>(x_3409.z, x_3409.w);
            let x_3412 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec42;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat88 = x_3421;
            let x_3422 : f32 = u_xlat86;
            let x_3423 : f32 = u_xlat88;
            let x_3425 : f32 = u_xlat87;
            u_xlat85 = ((x_3422 * x_3423) + x_3425);
          } else {
            let x_3428 : vec4<f32> = u_xlat11;
            let x_3431 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3434 : vec2<f32> = ((vec2<f32>(x_3428.x, x_3428.y) * vec2<f32>(x_3431.z, x_3431.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3435 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3434.x, x_3434.y, x_3435.z, x_3435.w);
            let x_3437 : vec4<f32> = u_xlat12;
            let x_3439 : vec2<f32> = floor(vec2<f32>(x_3437.x, x_3437.y));
            let x_3440 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3439.x, x_3439.y, x_3440.z, x_3440.w);
            let x_3442 : vec4<f32> = u_xlat11;
            let x_3445 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3448 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3442.x, x_3442.y) * vec2<f32>(x_3445.z, x_3445.w)) + -(vec2<f32>(x_3448.x, x_3448.y)));
            let x_3452 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3452.x, x_3452.x, x_3452.y, x_3452.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3455 : vec4<f32> = u_xlat13;
            let x_3457 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3455.x, x_3455.x, x_3455.z, x_3455.z) * vec4<f32>(x_3457.x, x_3457.x, x_3457.z, x_3457.z));
            let x_3460 : vec4<f32> = u_xlat14;
            let x_3462 : vec2<f32> = (vec2<f32>(x_3460.y, x_3460.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3463 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3463.x, x_3462.x, x_3463.z, x_3462.y);
            let x_3465 : vec4<f32> = u_xlat14;
            let x_3468 : vec2<f32> = u_xlat64;
            let x_3470 : vec2<f32> = ((vec2<f32>(x_3465.x, x_3465.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3468));
            let x_3471 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3470.x, x_3471.y, x_3470.y, x_3471.w);
            let x_3473 : vec2<f32> = u_xlat64;
            let x_3475 : vec2<f32> = (-(x_3473) + vec2<f32>(1.0f, 1.0f));
            let x_3476 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3475.x, x_3475.y, x_3476.z, x_3476.w);
            let x_3478 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3478, vec2<f32>(0.0f, 0.0f));
            let x_3480 : vec2<f32> = u_xlat66;
            let x_3482 : vec2<f32> = u_xlat66;
            let x_3484 : vec4<f32> = u_xlat14;
            let x_3486 : vec2<f32> = ((-(x_3480) * x_3482) + vec2<f32>(x_3484.x, x_3484.y));
            let x_3487 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3486.x, x_3486.y, x_3487.z, x_3487.w);
            let x_3489 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3489, vec2<f32>(0.0f, 0.0f));
            let x_3492 : vec2<f32> = u_xlat66;
            let x_3494 : vec2<f32> = u_xlat66;
            let x_3496 : vec4<f32> = u_xlat13;
            let x_3498 : vec2<f32> = ((-(x_3492) * x_3494) + vec2<f32>(x_3496.y, x_3496.w));
            let x_3499 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3498.x, x_3499.y, x_3498.y);
            let x_3501 : vec4<f32> = u_xlat14;
            let x_3503 : vec2<f32> = (vec2<f32>(x_3501.x, x_3501.y) + vec2<f32>(2.0f, 2.0f));
            let x_3504 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3503.x, x_3503.y, x_3504.z, x_3504.w);
            let x_3506 : vec3<f32> = u_xlat39;
            let x_3508 : vec2<f32> = (vec2<f32>(x_3506.x, x_3506.z) + vec2<f32>(2.0f, 2.0f));
            let x_3509 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3509.x, x_3508.x, x_3509.z, x_3508.y);
            let x_3512 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3512 * 0.08163200318813323975f);
            let x_3515 : vec4<f32> = u_xlat13;
            let x_3517 : vec3<f32> = (vec3<f32>(x_3515.z, x_3515.x, x_3515.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3518 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3517.x, x_3517.y, x_3517.z, x_3518.w);
            let x_3520 : vec4<f32> = u_xlat14;
            let x_3522 : vec2<f32> = (vec2<f32>(x_3520.x, x_3520.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3523 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3522.x, x_3522.y, x_3523.z, x_3523.w);
            let x_3526 : f32 = u_xlat17.y;
            u_xlat16.x = x_3526;
            let x_3528 : vec2<f32> = u_xlat64;
            let x_3531 : vec2<f32> = ((vec2<f32>(x_3528.x, x_3528.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3532 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3532.x, x_3531.x, x_3532.z, x_3531.y);
            let x_3534 : vec2<f32> = u_xlat64;
            let x_3537 : vec2<f32> = ((vec2<f32>(x_3534.x, x_3534.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3538 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3537.x, x_3538.y, x_3537.y, x_3538.w);
            let x_3541 : f32 = u_xlat13.x;
            u_xlat14.y = x_3541;
            let x_3544 : f32 = u_xlat15.y;
            u_xlat14.w = x_3544;
            let x_3546 : vec4<f32> = u_xlat14;
            let x_3547 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3546 + x_3547);
            let x_3549 : vec2<f32> = u_xlat64;
            let x_3552 : vec2<f32> = ((vec2<f32>(x_3549.y, x_3549.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3553 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3553.x, x_3552.x, x_3553.z, x_3552.y);
            let x_3555 : vec2<f32> = u_xlat64;
            let x_3558 : vec2<f32> = ((vec2<f32>(x_3555.y, x_3555.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3559 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3558.x, x_3559.y, x_3558.y, x_3559.w);
            let x_3562 : f32 = u_xlat13.y;
            u_xlat15.y = x_3562;
            let x_3564 : vec4<f32> = u_xlat15;
            let x_3565 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3564 + x_3565);
            let x_3567 : vec4<f32> = u_xlat14;
            let x_3568 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3567 / x_3568);
            let x_3570 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3570 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3572 : vec4<f32> = u_xlat15;
            let x_3573 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3572 / x_3573);
            let x_3575 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3575 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3577 : vec4<f32> = u_xlat14;
            let x_3580 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3577.w, x_3577.x, x_3577.y, x_3577.z) * vec4<f32>(x_3580.x, x_3580.x, x_3580.x, x_3580.x));
            let x_3583 : vec4<f32> = u_xlat15;
            let x_3586 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3583.x, x_3583.w, x_3583.y, x_3583.z) * vec4<f32>(x_3586.y, x_3586.y, x_3586.y, x_3586.y));
            let x_3589 : vec4<f32> = u_xlat14;
            let x_3590 : vec3<f32> = vec3<f32>(x_3589.y, x_3589.z, x_3589.w);
            let x_3591 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3590.x, x_3591.y, x_3590.y, x_3590.z);
            let x_3594 : f32 = u_xlat15.x;
            u_xlat17.y = x_3594;
            let x_3596 : vec4<f32> = u_xlat12;
            let x_3599 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3602 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3596.x, x_3596.y, x_3596.x, x_3596.y) * vec4<f32>(x_3599.x, x_3599.y, x_3599.x, x_3599.y)) + vec4<f32>(x_3602.x, x_3602.y, x_3602.z, x_3602.y));
            let x_3605 : vec4<f32> = u_xlat12;
            let x_3608 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3611 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3605.x, x_3605.y) * vec2<f32>(x_3608.x, x_3608.y)) + vec2<f32>(x_3611.w, x_3611.y));
            let x_3615 : f32 = u_xlat17.y;
            u_xlat14.y = x_3615;
            let x_3618 : f32 = u_xlat15.z;
            u_xlat17.y = x_3618;
            let x_3620 : vec4<f32> = u_xlat12;
            let x_3623 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3626 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3620.x, x_3620.y, x_3620.x, x_3620.y) * vec4<f32>(x_3623.x, x_3623.y, x_3623.x, x_3623.y)) + vec4<f32>(x_3626.x, x_3626.y, x_3626.z, x_3626.y));
            let x_3629 : vec4<f32> = u_xlat12;
            let x_3632 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3635 : vec4<f32> = u_xlat17;
            let x_3637 : vec2<f32> = ((vec2<f32>(x_3629.x, x_3629.y) * vec2<f32>(x_3632.x, x_3632.y)) + vec2<f32>(x_3635.w, x_3635.y));
            let x_3638 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3637.x, x_3637.y, x_3638.z, x_3638.w);
            let x_3641 : f32 = u_xlat17.y;
            u_xlat14.z = x_3641;
            let x_3644 : vec4<f32> = u_xlat12;
            let x_3647 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3650 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3644.x, x_3644.y, x_3644.x, x_3644.y) * vec4<f32>(x_3647.x, x_3647.y, x_3647.x, x_3647.y)) + vec4<f32>(x_3650.x, x_3650.y, x_3650.x, x_3650.z));
            let x_3654 : f32 = u_xlat15.w;
            u_xlat17.y = x_3654;
            let x_3657 : vec4<f32> = u_xlat12;
            let x_3660 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3663 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3657.x, x_3657.y, x_3657.x, x_3657.y) * vec4<f32>(x_3660.x, x_3660.y, x_3660.x, x_3660.y)) + vec4<f32>(x_3663.x, x_3663.y, x_3663.z, x_3663.y));
            let x_3667 : vec4<f32> = u_xlat12;
            let x_3670 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3673 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3667.x, x_3667.y) * vec2<f32>(x_3670.x, x_3670.y)) + vec2<f32>(x_3673.w, x_3673.y));
            let x_3677 : f32 = u_xlat17.y;
            u_xlat14.w = x_3677;
            let x_3680 : vec4<f32> = u_xlat12;
            let x_3683 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3686 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3680.x, x_3680.y) * vec2<f32>(x_3683.x, x_3683.y)) + vec2<f32>(x_3686.x, x_3686.w));
            let x_3689 : vec4<f32> = u_xlat17;
            let x_3690 : vec3<f32> = vec3<f32>(x_3689.x, x_3689.z, x_3689.w);
            let x_3691 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3690.x, x_3691.y, x_3690.y, x_3690.z);
            let x_3693 : vec4<f32> = u_xlat12;
            let x_3696 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3699 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3693.x, x_3693.y, x_3693.x, x_3693.y) * vec4<f32>(x_3696.x, x_3696.y, x_3696.x, x_3696.y)) + vec4<f32>(x_3699.x, x_3699.y, x_3699.z, x_3699.y));
            let x_3702 : vec4<f32> = u_xlat12;
            let x_3705 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3708 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3702.x, x_3702.y) * vec2<f32>(x_3705.x, x_3705.y)) + vec2<f32>(x_3708.w, x_3708.y));
            let x_3712 : f32 = u_xlat14.x;
            u_xlat15.x = x_3712;
            let x_3714 : vec4<f32> = u_xlat12;
            let x_3717 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3720 : vec4<f32> = u_xlat15;
            let x_3722 : vec2<f32> = ((vec2<f32>(x_3714.x, x_3714.y) * vec2<f32>(x_3717.x, x_3717.y)) + vec2<f32>(x_3720.x, x_3720.y));
            let x_3723 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3722.x, x_3722.y, x_3723.z, x_3723.w);
            let x_3726 : vec4<f32> = u_xlat13;
            let x_3728 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3726.x, x_3726.x, x_3726.x, x_3726.x) * x_3728);
            let x_3731 : vec4<f32> = u_xlat13;
            let x_3733 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3731.y, x_3731.y, x_3731.y, x_3731.y) * x_3733);
            let x_3736 : vec4<f32> = u_xlat13;
            let x_3738 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3736.z, x_3736.z, x_3736.z, x_3736.z) * x_3738);
            let x_3740 : vec4<f32> = u_xlat13;
            let x_3742 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3740.w, x_3740.w, x_3740.w, x_3740.w) * x_3742);
            let x_3745 : vec4<f32> = u_xlat18;
            let x_3746 : vec2<f32> = vec2<f32>(x_3745.x, x_3745.y);
            let x_3748 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3746.x, x_3746.y, x_3748);
            let x_3755 : vec3<f32> = txVec43;
            let x_3757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3755.xy, x_3755.z);
            u_xlat86 = x_3757;
            let x_3759 : vec4<f32> = u_xlat18;
            let x_3760 : vec2<f32> = vec2<f32>(x_3759.z, x_3759.w);
            let x_3762 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3760.x, x_3760.y, x_3762);
            let x_3769 : vec3<f32> = txVec44;
            let x_3771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3769.xy, x_3769.z);
            u_xlat87 = x_3771;
            let x_3772 : f32 = u_xlat87;
            let x_3774 : f32 = u_xlat23.y;
            u_xlat87 = (x_3772 * x_3774);
            let x_3777 : f32 = u_xlat23.x;
            let x_3778 : f32 = u_xlat86;
            let x_3780 : f32 = u_xlat87;
            u_xlat86 = ((x_3777 * x_3778) + x_3780);
            let x_3783 : vec2<f32> = u_xlat64;
            let x_3785 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3783.x, x_3783.y, x_3785);
            let x_3792 : vec3<f32> = txVec45;
            let x_3794 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3792.xy, x_3792.z);
            u_xlat87 = x_3794;
            let x_3796 : f32 = u_xlat23.z;
            let x_3797 : f32 = u_xlat87;
            let x_3799 : f32 = u_xlat86;
            u_xlat86 = ((x_3796 * x_3797) + x_3799);
            let x_3802 : vec4<f32> = u_xlat21;
            let x_3803 : vec2<f32> = vec2<f32>(x_3802.x, x_3802.y);
            let x_3805 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3803.x, x_3803.y, x_3805);
            let x_3812 : vec3<f32> = txVec46;
            let x_3814 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3812.xy, x_3812.z);
            u_xlat87 = x_3814;
            let x_3816 : f32 = u_xlat23.w;
            let x_3817 : f32 = u_xlat87;
            let x_3819 : f32 = u_xlat86;
            u_xlat86 = ((x_3816 * x_3817) + x_3819);
            let x_3822 : vec4<f32> = u_xlat19;
            let x_3823 : vec2<f32> = vec2<f32>(x_3822.x, x_3822.y);
            let x_3825 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3823.x, x_3823.y, x_3825);
            let x_3832 : vec3<f32> = txVec47;
            let x_3834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3832.xy, x_3832.z);
            u_xlat87 = x_3834;
            let x_3836 : f32 = u_xlat24.x;
            let x_3837 : f32 = u_xlat87;
            let x_3839 : f32 = u_xlat86;
            u_xlat86 = ((x_3836 * x_3837) + x_3839);
            let x_3842 : vec4<f32> = u_xlat19;
            let x_3843 : vec2<f32> = vec2<f32>(x_3842.z, x_3842.w);
            let x_3845 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3843.x, x_3843.y, x_3845);
            let x_3852 : vec3<f32> = txVec48;
            let x_3854 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3852.xy, x_3852.z);
            u_xlat87 = x_3854;
            let x_3856 : f32 = u_xlat24.y;
            let x_3857 : f32 = u_xlat87;
            let x_3859 : f32 = u_xlat86;
            u_xlat86 = ((x_3856 * x_3857) + x_3859);
            let x_3862 : vec4<f32> = u_xlat20;
            let x_3863 : vec2<f32> = vec2<f32>(x_3862.x, x_3862.y);
            let x_3865 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3863.x, x_3863.y, x_3865);
            let x_3872 : vec3<f32> = txVec49;
            let x_3874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3872.xy, x_3872.z);
            u_xlat87 = x_3874;
            let x_3876 : f32 = u_xlat24.z;
            let x_3877 : f32 = u_xlat87;
            let x_3879 : f32 = u_xlat86;
            u_xlat86 = ((x_3876 * x_3877) + x_3879);
            let x_3882 : vec4<f32> = u_xlat21;
            let x_3883 : vec2<f32> = vec2<f32>(x_3882.z, x_3882.w);
            let x_3885 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3883.x, x_3883.y, x_3885);
            let x_3892 : vec3<f32> = txVec50;
            let x_3894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3892.xy, x_3892.z);
            u_xlat87 = x_3894;
            let x_3896 : f32 = u_xlat24.w;
            let x_3897 : f32 = u_xlat87;
            let x_3899 : f32 = u_xlat86;
            u_xlat86 = ((x_3896 * x_3897) + x_3899);
            let x_3902 : vec4<f32> = u_xlat22;
            let x_3903 : vec2<f32> = vec2<f32>(x_3902.x, x_3902.y);
            let x_3905 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3903.x, x_3903.y, x_3905);
            let x_3912 : vec3<f32> = txVec51;
            let x_3914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3912.xy, x_3912.z);
            u_xlat87 = x_3914;
            let x_3916 : f32 = u_xlat25.x;
            let x_3917 : f32 = u_xlat87;
            let x_3919 : f32 = u_xlat86;
            u_xlat86 = ((x_3916 * x_3917) + x_3919);
            let x_3922 : vec4<f32> = u_xlat22;
            let x_3923 : vec2<f32> = vec2<f32>(x_3922.z, x_3922.w);
            let x_3925 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3923.x, x_3923.y, x_3925);
            let x_3932 : vec3<f32> = txVec52;
            let x_3934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3932.xy, x_3932.z);
            u_xlat87 = x_3934;
            let x_3936 : f32 = u_xlat25.y;
            let x_3937 : f32 = u_xlat87;
            let x_3939 : f32 = u_xlat86;
            u_xlat86 = ((x_3936 * x_3937) + x_3939);
            let x_3942 : vec2<f32> = u_xlat40;
            let x_3944 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3942.x, x_3942.y, x_3944);
            let x_3951 : vec3<f32> = txVec53;
            let x_3953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3951.xy, x_3951.z);
            u_xlat87 = x_3953;
            let x_3955 : f32 = u_xlat25.z;
            let x_3956 : f32 = u_xlat87;
            let x_3958 : f32 = u_xlat86;
            u_xlat86 = ((x_3955 * x_3956) + x_3958);
            let x_3961 : vec2<f32> = u_xlat72;
            let x_3963 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3961.x, x_3961.y, x_3963);
            let x_3970 : vec3<f32> = txVec54;
            let x_3972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3970.xy, x_3970.z);
            u_xlat87 = x_3972;
            let x_3974 : f32 = u_xlat25.w;
            let x_3975 : f32 = u_xlat87;
            let x_3977 : f32 = u_xlat86;
            u_xlat86 = ((x_3974 * x_3975) + x_3977);
            let x_3980 : vec4<f32> = u_xlat17;
            let x_3981 : vec2<f32> = vec2<f32>(x_3980.x, x_3980.y);
            let x_3983 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3981.x, x_3981.y, x_3983);
            let x_3990 : vec3<f32> = txVec55;
            let x_3992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3990.xy, x_3990.z);
            u_xlat87 = x_3992;
            let x_3994 : f32 = u_xlat13.x;
            let x_3995 : f32 = u_xlat87;
            let x_3997 : f32 = u_xlat86;
            u_xlat86 = ((x_3994 * x_3995) + x_3997);
            let x_4000 : vec4<f32> = u_xlat17;
            let x_4001 : vec2<f32> = vec2<f32>(x_4000.z, x_4000.w);
            let x_4003 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4001.x, x_4001.y, x_4003);
            let x_4010 : vec3<f32> = txVec56;
            let x_4012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4010.xy, x_4010.z);
            u_xlat87 = x_4012;
            let x_4014 : f32 = u_xlat13.y;
            let x_4015 : f32 = u_xlat87;
            let x_4017 : f32 = u_xlat86;
            u_xlat86 = ((x_4014 * x_4015) + x_4017);
            let x_4020 : vec2<f32> = u_xlat67;
            let x_4022 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4020.x, x_4020.y, x_4022);
            let x_4029 : vec3<f32> = txVec57;
            let x_4031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4029.xy, x_4029.z);
            u_xlat87 = x_4031;
            let x_4033 : f32 = u_xlat13.z;
            let x_4034 : f32 = u_xlat87;
            let x_4036 : f32 = u_xlat86;
            u_xlat86 = ((x_4033 * x_4034) + x_4036);
            let x_4039 : vec4<f32> = u_xlat12;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.x, x_4039.y);
            let x_4042 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec58;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat87 = x_4051;
            let x_4053 : f32 = u_xlat13.w;
            let x_4054 : f32 = u_xlat87;
            let x_4056 : f32 = u_xlat86;
            u_xlat85 = ((x_4053 * x_4054) + x_4056);
          }
        }
      } else {
        let x_4060 : vec4<f32> = u_xlat11;
        let x_4061 : vec2<f32> = vec2<f32>(x_4060.x, x_4060.y);
        let x_4063 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4061.x, x_4061.y, x_4063);
        let x_4070 : vec3<f32> = txVec59;
        let x_4072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4070.xy, x_4070.z);
        u_xlat85 = x_4072;
      }
      let x_4073 : i32 = u_xlati82;
      let x_4075 : f32 = x_629.x_AdditionalShadowParams[x_4073].x;
      u_xlat86 = (1.0f + -(x_4075));
      let x_4078 : f32 = u_xlat85;
      let x_4079 : i32 = u_xlati82;
      let x_4081 : f32 = x_629.x_AdditionalShadowParams[x_4079].x;
      let x_4083 : f32 = u_xlat86;
      u_xlat85 = ((x_4078 * x_4081) + x_4083);
      let x_4086 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4086);
      let x_4090 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4090 >= 1.0f);
      let x_4092 : bool = u_xlatb86;
      let x_4093 : bool = u_xlatb87;
      u_xlatb86 = (x_4092 | x_4093);
      let x_4095 : bool = u_xlatb86;
      let x_4096 : f32 = u_xlat85;
      u_xlat85 = select(x_4096, 1.0f, x_4095);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4099 : f32 = u_xlat85;
    u_xlat86 = (-(x_4099) + 1.0f);
    let x_4102 : f32 = u_xlat80;
    let x_4103 : f32 = u_xlat86;
    let x_4105 : f32 = u_xlat85;
    u_xlat85 = ((x_4102 * x_4103) + x_4105);
    let x_4108 : i32 = u_xlati82;
    u_xlati86 = (1i << bitcast<u32>((x_4108 & 31i)));
    let x_4111 : i32 = u_xlati86;
    let x_4114 : f32 = x_2216.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4111) & bitcast<u32>(x_4114)));
    let x_4118 : i32 = u_xlati86;
    if ((x_4118 != 0i)) {
      let x_4122 : i32 = u_xlati82;
      let x_4124 : f32 = x_2216.x_AdditionalLightsLightTypes[x_4122].el;
      u_xlati86 = i32(x_4124);
      let x_4127 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4127 != 0i));
      let x_4131 : i32 = u_xlati82;
      u_xlati88 = (x_4131 << bitcast<u32>(2i));
      let x_4133 : i32 = u_xlati87;
      if ((x_4133 != 0i)) {
        let x_4137 : vec3<f32> = vs_TEXCOORD7;
        let x_4139 : i32 = u_xlati88;
        let x_4142 : i32 = u_xlati88;
        let x_4146 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4139 + 1i) / 4i)][((x_4142 + 1i) % 4i)];
        let x_4148 : vec3<f32> = (vec3<f32>(x_4137.y, x_4137.y, x_4137.y) * vec3<f32>(x_4146.x, x_4146.y, x_4146.w));
        let x_4149 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4148.x, x_4148.y, x_4148.z, x_4149.w);
        let x_4151 : i32 = u_xlati88;
        let x_4153 : i32 = u_xlati88;
        let x_4156 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[(x_4151 / 4i)][(x_4153 % 4i)];
        let x_4158 : vec3<f32> = vs_TEXCOORD7;
        let x_4161 : vec4<f32> = u_xlat11;
        let x_4163 : vec3<f32> = ((vec3<f32>(x_4156.x, x_4156.y, x_4156.w) * vec3<f32>(x_4158.x, x_4158.x, x_4158.x)) + vec3<f32>(x_4161.x, x_4161.y, x_4161.z));
        let x_4164 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4163.x, x_4163.y, x_4163.z, x_4164.w);
        let x_4166 : i32 = u_xlati88;
        let x_4169 : i32 = u_xlati88;
        let x_4173 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4166 + 2i) / 4i)][((x_4169 + 2i) % 4i)];
        let x_4175 : vec3<f32> = vs_TEXCOORD7;
        let x_4178 : vec4<f32> = u_xlat11;
        let x_4180 : vec3<f32> = ((vec3<f32>(x_4173.x, x_4173.y, x_4173.w) * vec3<f32>(x_4175.z, x_4175.z, x_4175.z)) + vec3<f32>(x_4178.x, x_4178.y, x_4178.z));
        let x_4181 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4180.x, x_4180.y, x_4180.z, x_4181.w);
        let x_4183 : vec4<f32> = u_xlat11;
        let x_4185 : i32 = u_xlati88;
        let x_4188 : i32 = u_xlati88;
        let x_4192 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4185 + 3i) / 4i)][((x_4188 + 3i) % 4i)];
        let x_4194 : vec3<f32> = (vec3<f32>(x_4183.x, x_4183.y, x_4183.z) + vec3<f32>(x_4192.x, x_4192.y, x_4192.w));
        let x_4195 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4194.x, x_4194.y, x_4194.z, x_4195.w);
        let x_4197 : vec4<f32> = u_xlat11;
        let x_4199 : vec4<f32> = u_xlat11;
        let x_4201 : vec2<f32> = (vec2<f32>(x_4197.x, x_4197.y) / vec2<f32>(x_4199.z, x_4199.z));
        let x_4202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4201.x, x_4201.y, x_4202.z, x_4202.w);
        let x_4204 : vec4<f32> = u_xlat11;
        let x_4207 : vec2<f32> = ((vec2<f32>(x_4204.x, x_4204.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4208 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4207.x, x_4207.y, x_4208.z, x_4208.w);
        let x_4210 : vec4<f32> = u_xlat11;
        let x_4214 : vec2<f32> = clamp(vec2<f32>(x_4210.x, x_4210.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4215 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4214.x, x_4214.y, x_4215.z, x_4215.w);
        let x_4217 : i32 = u_xlati82;
        let x_4219 : vec4<f32> = x_2216.x_AdditionalLightsCookieAtlasUVRects[x_4217];
        let x_4221 : vec4<f32> = u_xlat11;
        let x_4224 : i32 = u_xlati82;
        let x_4226 : vec4<f32> = x_2216.x_AdditionalLightsCookieAtlasUVRects[x_4224];
        let x_4228 : vec2<f32> = ((vec2<f32>(x_4219.x, x_4219.y) * vec2<f32>(x_4221.x, x_4221.y)) + vec2<f32>(x_4226.z, x_4226.w));
        let x_4229 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4228.x, x_4228.y, x_4229.z, x_4229.w);
      } else {
        let x_4232 : i32 = u_xlati86;
        u_xlatb86 = (x_4232 == 1i);
        let x_4234 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4234);
        let x_4236 : i32 = u_xlati86;
        if ((x_4236 != 0i)) {
          let x_4241 : vec3<f32> = vs_TEXCOORD7;
          let x_4243 : i32 = u_xlati88;
          let x_4246 : i32 = u_xlati88;
          let x_4250 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4243 + 1i) / 4i)][((x_4246 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4241.y, x_4241.y) * vec2<f32>(x_4250.x, x_4250.y));
          let x_4253 : i32 = u_xlati88;
          let x_4255 : i32 = u_xlati88;
          let x_4258 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[(x_4253 / 4i)][(x_4255 % 4i)];
          let x_4260 : vec3<f32> = vs_TEXCOORD7;
          let x_4263 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4258.x, x_4258.y) * vec2<f32>(x_4260.x, x_4260.x)) + x_4263);
          let x_4265 : i32 = u_xlati88;
          let x_4268 : i32 = u_xlati88;
          let x_4272 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4265 + 2i) / 4i)][((x_4268 + 2i) % 4i)];
          let x_4274 : vec3<f32> = vs_TEXCOORD7;
          let x_4277 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4272.x, x_4272.y) * vec2<f32>(x_4274.z, x_4274.z)) + x_4277);
          let x_4279 : vec2<f32> = u_xlat63;
          let x_4280 : i32 = u_xlati88;
          let x_4283 : i32 = u_xlati88;
          let x_4287 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4280 + 3i) / 4i)][((x_4283 + 3i) % 4i)];
          u_xlat63 = (x_4279 + vec2<f32>(x_4287.x, x_4287.y));
          let x_4290 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4290 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4293 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4293);
          let x_4295 : i32 = u_xlati82;
          let x_4297 : vec4<f32> = x_2216.x_AdditionalLightsCookieAtlasUVRects[x_4295];
          let x_4299 : vec2<f32> = u_xlat63;
          let x_4301 : i32 = u_xlati82;
          let x_4303 : vec4<f32> = x_2216.x_AdditionalLightsCookieAtlasUVRects[x_4301];
          let x_4305 : vec2<f32> = ((vec2<f32>(x_4297.x, x_4297.y) * x_4299) + vec2<f32>(x_4303.z, x_4303.w));
          let x_4306 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4305.x, x_4305.y, x_4306.z, x_4306.w);
        } else {
          let x_4309 : vec3<f32> = vs_TEXCOORD7;
          let x_4311 : i32 = u_xlati88;
          let x_4314 : i32 = u_xlati88;
          let x_4318 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4311 + 1i) / 4i)][((x_4314 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4309.y, x_4309.y, x_4309.y, x_4309.y) * x_4318);
          let x_4320 : i32 = u_xlati88;
          let x_4322 : i32 = u_xlati88;
          let x_4325 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[(x_4320 / 4i)][(x_4322 % 4i)];
          let x_4326 : vec3<f32> = vs_TEXCOORD7;
          let x_4329 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4325 * vec4<f32>(x_4326.x, x_4326.x, x_4326.x, x_4326.x)) + x_4329);
          let x_4331 : i32 = u_xlati88;
          let x_4334 : i32 = u_xlati88;
          let x_4338 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4331 + 2i) / 4i)][((x_4334 + 2i) % 4i)];
          let x_4339 : vec3<f32> = vs_TEXCOORD7;
          let x_4342 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4338 * vec4<f32>(x_4339.z, x_4339.z, x_4339.z, x_4339.z)) + x_4342);
          let x_4344 : vec4<f32> = u_xlat12;
          let x_4345 : i32 = u_xlati88;
          let x_4348 : i32 = u_xlati88;
          let x_4352 : vec4<f32> = x_2216.x_AdditionalLightsWorldToLights[((x_4345 + 3i) / 4i)][((x_4348 + 3i) % 4i)];
          u_xlat12 = (x_4344 + x_4352);
          let x_4354 : vec4<f32> = u_xlat12;
          let x_4356 : vec4<f32> = u_xlat12;
          let x_4358 : vec3<f32> = (vec3<f32>(x_4354.x, x_4354.y, x_4354.z) / vec3<f32>(x_4356.w, x_4356.w, x_4356.w));
          let x_4359 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4358.x, x_4358.y, x_4358.z, x_4359.w);
          let x_4361 : vec4<f32> = u_xlat12;
          let x_4363 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4361.x, x_4361.y, x_4361.z), vec3<f32>(x_4363.x, x_4363.y, x_4363.z));
          let x_4366 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4366);
          let x_4368 : f32 = u_xlat86;
          let x_4370 : vec4<f32> = u_xlat12;
          let x_4372 : vec3<f32> = (vec3<f32>(x_4368, x_4368, x_4368) * vec3<f32>(x_4370.x, x_4370.y, x_4370.z));
          let x_4373 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4372.x, x_4372.y, x_4372.z, x_4373.w);
          let x_4375 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4375.x, x_4375.y, x_4375.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4380 : f32 = u_xlat86;
          u_xlat86 = max(x_4380, 0.00000099999999747524f);
          let x_4383 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4383);
          let x_4385 : f32 = u_xlat86;
          let x_4387 : vec4<f32> = u_xlat12;
          let x_4389 : vec3<f32> = (vec3<f32>(x_4385, x_4385, x_4385) * vec3<f32>(x_4387.z, x_4387.x, x_4387.y));
          let x_4390 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4389.x, x_4389.y, x_4389.z, x_4390.w);
          let x_4393 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4393);
          let x_4397 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4397, 0.0f, 1.0f);
          let x_4401 : vec4<f32> = u_xlat13;
          let x_4403 : vec4<bool> = (vec4<f32>(x_4401.y, x_4401.z, x_4401.y, x_4401.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4403.x, x_4403.y);
          let x_4406 : bool = u_xlatb63.x;
          if (x_4406) {
            let x_4411 : f32 = u_xlat13.x;
            x_4407 = x_4411;
          } else {
            let x_4414 : f32 = u_xlat13.x;
            x_4407 = -(x_4414);
          }
          let x_4416 : f32 = x_4407;
          u_xlat63.x = x_4416;
          let x_4419 : bool = u_xlatb63.y;
          if (x_4419) {
            let x_4424 : f32 = u_xlat13.x;
            x_4420 = x_4424;
          } else {
            let x_4427 : f32 = u_xlat13.x;
            x_4420 = -(x_4427);
          }
          let x_4429 : f32 = x_4420;
          u_xlat63.y = x_4429;
          let x_4431 : vec4<f32> = u_xlat12;
          let x_4433 : f32 = u_xlat86;
          let x_4436 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4431.x, x_4431.y) * vec2<f32>(x_4433, x_4433)) + x_4436);
          let x_4438 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4438 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4441 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4441, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4445 : i32 = u_xlati82;
          let x_4447 : vec4<f32> = x_2216.x_AdditionalLightsCookieAtlasUVRects[x_4445];
          let x_4449 : vec2<f32> = u_xlat63;
          let x_4451 : i32 = u_xlati82;
          let x_4453 : vec4<f32> = x_2216.x_AdditionalLightsCookieAtlasUVRects[x_4451];
          let x_4455 : vec2<f32> = ((vec2<f32>(x_4447.x, x_4447.y) * x_4449) + vec2<f32>(x_4453.z, x_4453.w));
          let x_4456 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4455.x, x_4455.y, x_4456.z, x_4456.w);
        }
      }
      let x_4463 : vec4<f32> = u_xlat11;
      let x_4465 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4463.x, x_4463.y), 0.0f);
      u_xlat11 = x_4465;
      let x_4467 : bool = u_xlatb3.y;
      if (x_4467) {
        let x_4472 : f32 = u_xlat11.w;
        x_4468 = x_4472;
      } else {
        let x_4475 : f32 = u_xlat11.x;
        x_4468 = x_4475;
      }
      let x_4476 : f32 = x_4468;
      u_xlat86 = x_4476;
      let x_4478 : bool = u_xlatb3.x;
      if (x_4478) {
        let x_4482 : vec4<f32> = u_xlat11;
        x_4479 = vec3<f32>(x_4482.x, x_4482.y, x_4482.z);
      } else {
        let x_4485 : f32 = u_xlat86;
        x_4479 = vec3<f32>(x_4485, x_4485, x_4485);
      }
      let x_4487 : vec3<f32> = x_4479;
      let x_4488 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4487.x, x_4487.y, x_4487.z, x_4488.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4494 : vec4<f32> = u_xlat11;
    let x_4496 : i32 = u_xlati82;
    let x_4498 : vec4<f32> = x_2693.x_AdditionalLightsColor[x_4496];
    let x_4500 : vec3<f32> = (vec3<f32>(x_4494.x, x_4494.y, x_4494.z) * vec3<f32>(x_4498.x, x_4498.y, x_4498.z));
    let x_4501 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4500.x, x_4500.y, x_4500.z, x_4501.w);
    let x_4503 : f32 = u_xlat83;
    let x_4504 : f32 = u_xlat85;
    u_xlat82 = (x_4503 * x_4504);
    let x_4506 : vec4<f32> = u_xlat1;
    let x_4508 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4506.x, x_4506.y, x_4506.z), vec3<f32>(x_4508.x, x_4508.y, x_4508.z));
    let x_4511 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4511, 0.0f, 1.0f);
    let x_4513 : f32 = u_xlat82;
    let x_4514 : f32 = u_xlat83;
    u_xlat82 = (x_4513 * x_4514);
    let x_4516 : f32 = u_xlat82;
    let x_4518 : vec4<f32> = u_xlat11;
    let x_4520 : vec3<f32> = (vec3<f32>(x_4516, x_4516, x_4516) * vec3<f32>(x_4518.x, x_4518.y, x_4518.z));
    let x_4521 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4520.x, x_4520.y, x_4520.z, x_4521.w);
    let x_4523 : vec4<f32> = u_xlat9;
    let x_4525 : f32 = u_xlat84;
    let x_4528 : vec3<f32> = u_xlat2;
    let x_4529 : vec3<f32> = ((vec3<f32>(x_4523.x, x_4523.y, x_4523.z) * vec3<f32>(x_4525, x_4525, x_4525)) + x_4528);
    let x_4530 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4529.x, x_4529.y, x_4529.z, x_4530.w);
    let x_4532 : vec4<f32> = u_xlat9;
    let x_4534 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4532.x, x_4532.y, x_4532.z), vec3<f32>(x_4534.x, x_4534.y, x_4534.z));
    let x_4537 : f32 = u_xlat82;
    u_xlat82 = max(x_4537, 1.17549435e-38f);
    let x_4539 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4539);
    let x_4541 : f32 = u_xlat82;
    let x_4543 : vec4<f32> = u_xlat9;
    let x_4545 : vec3<f32> = (vec3<f32>(x_4541, x_4541, x_4541) * vec3<f32>(x_4543.x, x_4543.y, x_4543.z));
    let x_4546 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4545.x, x_4545.y, x_4545.z, x_4546.w);
    let x_4548 : vec4<f32> = u_xlat1;
    let x_4550 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4548.x, x_4548.y, x_4548.z), vec3<f32>(x_4550.x, x_4550.y, x_4550.z));
    let x_4553 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4553, 0.0f, 1.0f);
    let x_4555 : vec4<f32> = u_xlat10;
    let x_4557 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4555.x, x_4555.y, x_4555.z), vec3<f32>(x_4557.x, x_4557.y, x_4557.z));
    let x_4560 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4560, 0.0f, 1.0f);
    let x_4562 : f32 = u_xlat82;
    let x_4563 : f32 = u_xlat82;
    u_xlat82 = (x_4562 * x_4563);
    let x_4565 : f32 = u_xlat82;
    let x_4567 : f32 = u_xlat0.x;
    u_xlat82 = ((x_4565 * x_4567) + 1.00001001358032226562f);
    let x_4570 : f32 = u_xlat83;
    let x_4571 : f32 = u_xlat83;
    u_xlat83 = (x_4570 * x_4571);
    let x_4573 : f32 = u_xlat82;
    let x_4574 : f32 = u_xlat82;
    u_xlat82 = (x_4573 * x_4574);
    let x_4576 : f32 = u_xlat83;
    u_xlat83 = max(x_4576, 0.10000000149011611938f);
    let x_4578 : f32 = u_xlat82;
    let x_4579 : f32 = u_xlat83;
    u_xlat82 = (x_4578 * x_4579);
    let x_4581 : f32 = u_xlat81;
    let x_4582 : f32 = u_xlat82;
    u_xlat82 = (x_4581 * x_4582);
    let x_4584 : f32 = u_xlat79;
    let x_4585 : f32 = u_xlat82;
    u_xlat82 = (x_4584 / x_4585);
    let x_4587 : vec4<f32> = u_xlat5;
    let x_4589 : f32 = u_xlat82;
    let x_4592 : vec4<f32> = u_xlat6;
    let x_4594 : vec3<f32> = ((vec3<f32>(x_4587.x, x_4587.y, x_4587.z) * vec3<f32>(x_4589, x_4589, x_4589)) + vec3<f32>(x_4592.x, x_4592.y, x_4592.z));
    let x_4595 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4594.x, x_4594.y, x_4594.z, x_4595.w);
    let x_4597 : vec4<f32> = u_xlat9;
    let x_4599 : vec4<f32> = u_xlat11;
    let x_4602 : vec4<f32> = u_xlat8;
    let x_4604 : vec3<f32> = ((vec3<f32>(x_4597.x, x_4597.y, x_4597.z) * vec3<f32>(x_4599.x, x_4599.y, x_4599.z)) + vec3<f32>(x_4602.x, x_4602.y, x_4602.z));
    let x_4605 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4604.x, x_4604.y, x_4604.z, x_4605.w);

    continuing {
      let x_4607 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4607 + bitcast<u32>(1i));
    }
  }
  let x_4609 : vec4<f32> = u_xlat4;
  let x_4611 : f32 = u_xlat26;
  let x_4614 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4609.x, x_4609.y, x_4609.z) * vec3<f32>(x_4611, x_4611, x_4611)) + vec3<f32>(x_4614.x, x_4614.y, x_4614.z));
  let x_4617 : vec4<f32> = u_xlat8;
  let x_4619 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4617.x, x_4617.y, x_4617.z) + x_4619);
  let x_4623 : f32 = u_xlat78;
  let x_4625 : vec3<f32> = u_xlat0;
  let x_4626 : vec3<f32> = (vec3<f32>(x_4623, x_4623, x_4623) * x_4625);
  let x_4627 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4626.x, x_4626.y, x_4626.z, x_4627.w);
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


