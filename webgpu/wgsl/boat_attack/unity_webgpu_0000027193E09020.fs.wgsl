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

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

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

@group(1) @binding(2) var<uniform> x_625 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_768 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2080 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2555 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_2165 : f32;
  var x_2176 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2691 : f32;
  var x_2701 : f32;
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
  var x_4272 : f32;
  var x_4285 : f32;
  var x_4333 : f32;
  var x_4344 : vec3<f32>;
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
  u_xlat1.w = 1.0f;
  let x_627 : vec4<f32> = x_625.unity_SHAr;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_627, x_628);
  let x_632 : vec4<f32> = x_625.unity_SHAg;
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_632, x_633);
  let x_637 : vec4<f32> = x_625.unity_SHAb;
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_637, x_638);
  let x_641 : vec4<f32> = u_xlat1;
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_641.y, x_641.z, x_641.z, x_641.x) * vec4<f32>(x_643.x, x_643.y, x_643.z, x_643.z));
  let x_647 : vec4<f32> = x_625.unity_SHBr;
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_647, x_648);
  let x_652 : vec4<f32> = x_625.unity_SHBg;
  let x_653 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_652, x_653);
  let x_657 : vec4<f32> = x_625.unity_SHBb;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_657, x_658);
  let x_662 : f32 = u_xlat1.y;
  let x_664 : f32 = u_xlat1.y;
  u_xlat79 = (x_662 * x_664);
  let x_667 : f32 = u_xlat1.x;
  let x_669 : f32 = u_xlat1.x;
  let x_671 : f32 = u_xlat79;
  u_xlat79 = ((x_667 * x_669) + -(x_671));
  let x_676 : vec4<f32> = x_625.unity_SHC;
  let x_678 : f32 = u_xlat79;
  let x_681 : vec4<f32> = u_xlat6;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678)) + vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_700 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_700) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_706 : f32 = u_xlat52;
  let x_707 : f32 = u_xlat79;
  u_xlat80 = (x_706 + -(x_707));
  let x_710 : f32 = u_xlat79;
  let x_712 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat5;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_722 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec3<f32> = u_xlat0;
  let x_726 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.x, x_724.x) * vec3<f32>(x_726.x, x_726.y, x_726.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : f32 = u_xlat52;
  u_xlat0.x = (-(x_734) + 1.0f);
  let x_739 : f32 = u_xlat0.x;
  let x_741 : f32 = u_xlat0.x;
  u_xlat52 = (x_739 * x_741);
  let x_743 : f32 = u_xlat52;
  u_xlat52 = max(x_743, 0.0078125f);
  let x_746 : f32 = u_xlat52;
  let x_747 : f32 = u_xlat52;
  u_xlat79 = (x_746 * x_747);
  let x_749 : f32 = u_xlat80;
  u_xlat80 = (x_749 + 1.0f);
  let x_751 : f32 = u_xlat80;
  u_xlat80 = clamp(x_751, 0.0f, 1.0f);
  let x_754 : f32 = u_xlat52;
  u_xlat81 = ((x_754 * 4.0f) + 2.0f);
  let x_758 : f32 = u_xlat26;
  u_xlat26 = min(x_758, 1.0f);
  let x_770 : f32 = x_768.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_770);
  let x_772 : bool = u_xlatb82;
  if (x_772) {
    let x_776 : f32 = x_768.x_MainLightShadowParams.y;
    u_xlatb82 = (x_776 == 1.0f);
    let x_778 : bool = u_xlatb82;
    if (x_778) {
      let x_782 : vec4<f32> = vs_TEXCOORD8;
      let x_785 : vec4<f32> = x_768.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) + x_785);
      let x_789 : vec4<f32> = u_xlat6;
      let x_790 : vec2<f32> = vec2<f32>(x_789.x, x_789.y);
      let x_793 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_790.x, x_790.y, x_793);
      let x_805 : vec3<f32> = txVec0;
      let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
      u_xlat7.x = x_807;
      let x_810 : vec4<f32> = u_xlat6;
      let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
      let x_813 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_811.x, x_811.y, x_813);
      let x_820 : vec3<f32> = txVec1;
      let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
      u_xlat7.y = x_822;
      let x_824 : vec4<f32> = vs_TEXCOORD8;
      let x_827 : vec4<f32> = x_768.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_824.x, x_824.y, x_824.x, x_824.y) + x_827);
      let x_830 : vec4<f32> = u_xlat6;
      let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
      let x_833 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_831.x, x_831.y, x_833);
      let x_840 : vec3<f32> = txVec2;
      let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_840.xy, x_840.z);
      u_xlat7.z = x_842;
      let x_845 : vec4<f32> = u_xlat6;
      let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
      let x_848 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_846.x, x_846.y, x_848);
      let x_855 : vec3<f32> = txVec3;
      let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
      u_xlat7.w = x_857;
      let x_860 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_860, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_867 : f32 = x_768.x_MainLightShadowParams.y;
      u_xlatb83 = (x_867 == 2.0f);
      let x_869 : bool = u_xlatb83;
      if (x_869) {
        let x_872 : vec4<f32> = vs_TEXCOORD8;
        let x_875 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_878 : vec2<f32> = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_875.z, x_875.w)) + vec2<f32>(0.5f, 0.5f));
        let x_879 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat6;
        let x_883 : vec2<f32> = floor(vec2<f32>(x_881.x, x_881.y));
        let x_884 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_888 : vec4<f32> = vs_TEXCOORD8;
        let x_891 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_894 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_891.z, x_891.w)) + -(vec2<f32>(x_894.x, x_894.y)));
        let x_898 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_898.x, x_898.x, x_898.y, x_898.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_902 : vec4<f32> = u_xlat7;
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_902.x, x_902.x, x_902.z, x_902.z) * vec4<f32>(x_904.x, x_904.x, x_904.z, x_904.z));
        let x_907 : vec4<f32> = u_xlat8;
        let x_911 : vec2<f32> = (vec2<f32>(x_907.y, x_907.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_911.x, x_912.y, x_911.y, x_912.w);
        let x_914 : vec4<f32> = u_xlat8;
        let x_917 : vec2<f32> = u_xlat58;
        let x_919 : vec2<f32> = ((vec2<f32>(x_914.x, x_914.z) * vec2<f32>(0.5f, 0.5f)) + -(x_917));
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_923 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_923) + vec2<f32>(1.0f, 1.0f));
        let x_927 : vec2<f32> = u_xlat58;
        let x_929 : vec2<f32> = min(x_927, vec2<f32>(0.0f, 0.0f));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat9;
        let x_935 : vec4<f32> = u_xlat9;
        let x_938 : vec2<f32> = u_xlat60;
        let x_939 : vec2<f32> = ((-(vec2<f32>(x_932.x, x_932.y)) * vec2<f32>(x_935.x, x_935.y)) + x_938);
        let x_940 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_942, vec2<f32>(0.0f, 0.0f));
        let x_944 : vec2<f32> = u_xlat58;
        let x_946 : vec2<f32> = u_xlat58;
        let x_948 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_944) * x_946) + vec2<f32>(x_948.y, x_948.w));
        let x_951 : vec4<f32> = u_xlat9;
        let x_953 : vec2<f32> = (vec2<f32>(x_951.x, x_951.y) + vec2<f32>(1.0f, 1.0f));
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_956 + vec2<f32>(1.0f, 1.0f));
        let x_958 : vec4<f32> = u_xlat8;
        let x_962 : vec2<f32> = (vec2<f32>(x_958.x, x_958.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_963 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec2<f32> = u_xlat60;
        let x_966 : vec2<f32> = (x_965 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec4<f32> = u_xlat9;
        let x_971 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_972 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat58;
        let x_975 : vec2<f32> = (x_974 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_976 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_978.y, x_978.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_982 : f32 = u_xlat9.x;
        u_xlat10.z = x_982;
        let x_985 : f32 = u_xlat58.x;
        u_xlat10.w = x_985;
        let x_988 : f32 = u_xlat11.x;
        u_xlat8.z = x_988;
        let x_991 : f32 = u_xlat7.x;
        u_xlat8.w = x_991;
        let x_993 : vec4<f32> = u_xlat8;
        let x_995 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_993.z, x_993.w, x_993.x, x_993.z) + vec4<f32>(x_995.z, x_995.w, x_995.x, x_995.z));
        let x_999 : f32 = u_xlat10.y;
        u_xlat9.z = x_999;
        let x_1002 : f32 = u_xlat58.y;
        u_xlat9.w = x_1002;
        let x_1005 : f32 = u_xlat8.y;
        u_xlat11.z = x_1005;
        let x_1008 : f32 = u_xlat7.z;
        u_xlat11.w = x_1008;
        let x_1010 : vec4<f32> = u_xlat9;
        let x_1012 : vec4<f32> = u_xlat11;
        let x_1014 : vec3<f32> = (vec3<f32>(x_1010.z, x_1010.y, x_1010.w) + vec3<f32>(x_1012.z, x_1012.y, x_1012.w));
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = u_xlat12;
        let x_1021 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.z, x_1017.w) / vec3<f32>(x_1019.z, x_1019.w, x_1019.y));
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat8;
        let x_1030 : vec3<f32> = (vec3<f32>(x_1024.x, x_1024.y, x_1024.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
        let x_1033 : vec4<f32> = u_xlat11;
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1037 : vec3<f32> = (vec3<f32>(x_1033.z, x_1033.y, x_1033.w) / vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat9;
        let x_1042 : vec3<f32> = (vec3<f32>(x_1040.x, x_1040.y, x_1040.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1048 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1050 : vec3<f32> = (vec3<f32>(x_1045.y, x_1045.x, x_1045.z) * vec3<f32>(x_1048.x, x_1048.x, x_1048.x));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1056 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1058 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) * vec3<f32>(x_1056.y, x_1056.y, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1062 : f32 = u_xlat9.x;
        u_xlat8.w = x_1062;
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.y, x_1070.w, x_1070.x, x_1070.w));
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.z, x_1079.w));
        let x_1083 : f32 = u_xlat8.y;
        u_xlat9.w = x_1083;
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1086 : vec2<f32> = vec2<f32>(x_1085.y, x_1085.z);
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1086.x, x_1087.z, x_1086.y);
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1092 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1101 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.w, x_1104.y, x_1104.w, x_1104.z));
        let x_1107 : vec4<f32> = u_xlat6;
        let x_1110 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.w, x_1113.z, x_1113.w));
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1118 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1116.x, x_1116.x, x_1116.x, x_1116.y) * vec4<f32>(x_1118.z, x_1118.w, x_1118.y, x_1118.z));
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1122.y, x_1122.y, x_1122.z, x_1122.z) * x_1124);
        let x_1128 : f32 = u_xlat7.z;
        let x_1130 : f32 = u_xlat12.y;
        u_xlat83 = (x_1128 * x_1130);
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1134 : vec2<f32> = vec2<f32>(x_1133.x, x_1133.y);
        let x_1136 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1134.x, x_1134.y, x_1136);
        let x_1143 : vec3<f32> = txVec4;
        let x_1145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1143.xy, x_1143.z);
        u_xlat6.x = x_1145;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.z, x_1148.w);
        let x_1151 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1159 : vec3<f32> = txVec5;
        let x_1161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1159.xy, x_1159.z);
        u_xlat32 = x_1161;
        let x_1162 : f32 = u_xlat32;
        let x_1164 : f32 = u_xlat13.y;
        u_xlat32 = (x_1162 * x_1164);
        let x_1167 : f32 = u_xlat13.x;
        let x_1169 : f32 = u_xlat6.x;
        let x_1171 : f32 = u_xlat32;
        u_xlat6.x = ((x_1167 * x_1169) + x_1171);
        let x_1175 : vec2<f32> = u_xlat58;
        let x_1177 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec6;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat32 = x_1186;
        let x_1188 : f32 = u_xlat13.z;
        let x_1189 : f32 = u_xlat32;
        let x_1192 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1188 * x_1189) + x_1192);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
        let x_1199 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec7;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1206.xy, x_1206.z);
        u_xlat32 = x_1208;
        let x_1210 : f32 = u_xlat13.w;
        let x_1211 : f32 = u_xlat32;
        let x_1214 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1210 * x_1211) + x_1214);
        let x_1218 : vec4<f32> = u_xlat11;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
        let x_1221 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec8;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
        u_xlat32 = x_1230;
        let x_1232 : f32 = u_xlat14.x;
        let x_1233 : f32 = u_xlat32;
        let x_1236 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1232 * x_1233) + x_1236);
        let x_1240 : vec4<f32> = u_xlat11;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec9;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1250.xy, x_1250.z);
        u_xlat32 = x_1252;
        let x_1254 : f32 = u_xlat14.y;
        let x_1255 : f32 = u_xlat32;
        let x_1258 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1254 * x_1255) + x_1258);
        let x_1262 : vec4<f32> = u_xlat9;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.z, x_1262.w);
        let x_1265 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec10;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat32 = x_1274;
        let x_1276 : f32 = u_xlat14.z;
        let x_1277 : f32 = u_xlat32;
        let x_1280 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1276 * x_1277) + x_1280);
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec11;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat32 = x_1296;
        let x_1298 : f32 = u_xlat14.w;
        let x_1299 : f32 = u_xlat32;
        let x_1302 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1298 * x_1299) + x_1302);
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.z, x_1306.w);
        let x_1309 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec12;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1316.xy, x_1316.z);
        u_xlat32 = x_1318;
        let x_1319 : f32 = u_xlat83;
        let x_1320 : f32 = u_xlat32;
        let x_1323 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1319 * x_1320) + x_1323);
      } else {
        let x_1326 : vec4<f32> = vs_TEXCOORD8;
        let x_1329 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(x_1329.z, x_1329.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1333 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1335 : vec4<f32> = u_xlat6;
        let x_1337 : vec2<f32> = floor(vec2<f32>(x_1335.x, x_1335.y));
        let x_1338 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1340 : vec4<f32> = vs_TEXCOORD8;
        let x_1343 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.z, x_1343.w)) + -(vec2<f32>(x_1346.x, x_1346.y)));
        let x_1350 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.y, x_1350.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1355 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1353.x, x_1353.x, x_1353.z, x_1353.z) * vec4<f32>(x_1355.x, x_1355.x, x_1355.z, x_1355.z));
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1362 : vec2<f32> = (vec2<f32>(x_1358.y, x_1358.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1363 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1363.x, x_1362.x, x_1363.z, x_1362.y);
        let x_1365 : vec4<f32> = u_xlat8;
        let x_1368 : vec2<f32> = u_xlat58;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1365.x, x_1365.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1368));
        let x_1371 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1370.x, x_1371.y, x_1370.y, x_1371.w);
        let x_1373 : vec2<f32> = u_xlat58;
        let x_1375 : vec2<f32> = (-(x_1373) + vec2<f32>(1.0f, 1.0f));
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
        let x_1378 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1378, vec2<f32>(0.0f, 0.0f));
        let x_1380 : vec2<f32> = u_xlat60;
        let x_1382 : vec2<f32> = u_xlat60;
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = ((-(x_1380) * x_1382) + vec2<f32>(x_1384.x, x_1384.y));
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
        let x_1389 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1389, vec2<f32>(0.0f, 0.0f));
        let x_1392 : vec2<f32> = u_xlat60;
        let x_1394 : vec2<f32> = u_xlat60;
        let x_1396 : vec4<f32> = u_xlat7;
        let x_1398 : vec2<f32> = ((-(x_1392) * x_1394) + vec2<f32>(x_1396.y, x_1396.w));
        let x_1399 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1398.x, x_1399.y, x_1398.y);
        let x_1401 : vec4<f32> = u_xlat8;
        let x_1404 : vec2<f32> = (vec2<f32>(x_1401.x, x_1401.y) + vec2<f32>(2.0f, 2.0f));
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1407 : vec3<f32> = u_xlat33;
        let x_1409 : vec2<f32> = (vec2<f32>(x_1407.x, x_1407.z) + vec2<f32>(2.0f, 2.0f));
        let x_1410 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1410.x, x_1409.x, x_1410.z, x_1409.y);
        let x_1413 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1413 * 0.08163200318813323975f);
        let x_1417 : vec4<f32> = u_xlat7;
        let x_1420 : vec3<f32> = (vec3<f32>(x_1417.z, x_1417.x, x_1417.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1421 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
        let x_1423 : vec4<f32> = u_xlat8;
        let x_1426 : vec2<f32> = (vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1427 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1426.x, x_1426.y, x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat11.y;
        u_xlat10.x = x_1430;
        let x_1432 : vec2<f32> = u_xlat58;
        let x_1439 : vec2<f32> = ((vec2<f32>(x_1432.x, x_1432.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1440 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1440.x, x_1439.x, x_1440.z, x_1439.y);
        let x_1442 : vec2<f32> = u_xlat58;
        let x_1446 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1447 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1446.x, x_1447.y, x_1446.y, x_1447.w);
        let x_1450 : f32 = u_xlat7.x;
        u_xlat8.y = x_1450;
        let x_1453 : f32 = u_xlat9.y;
        u_xlat8.w = x_1453;
        let x_1455 : vec4<f32> = u_xlat8;
        let x_1456 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1455 + x_1456);
        let x_1458 : vec2<f32> = u_xlat58;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1458.y, x_1458.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1462 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1462.x, x_1461.x, x_1462.z, x_1461.y);
        let x_1464 : vec2<f32> = u_xlat58;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.y, x_1464.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1468 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1467.x, x_1468.y, x_1467.y, x_1468.w);
        let x_1471 : f32 = u_xlat7.y;
        u_xlat9.y = x_1471;
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1473 + x_1474);
        let x_1476 : vec4<f32> = u_xlat8;
        let x_1477 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1476 / x_1477);
        let x_1479 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1479 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1486 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1485 / x_1486);
        let x_1488 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1488 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1490 : vec4<f32> = u_xlat8;
        let x_1493 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1490.w, x_1490.x, x_1490.y, x_1490.z) * vec4<f32>(x_1493.x, x_1493.x, x_1493.x, x_1493.x));
        let x_1496 : vec4<f32> = u_xlat9;
        let x_1499 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1496.x, x_1496.w, x_1496.y, x_1496.z) * vec4<f32>(x_1499.y, x_1499.y, x_1499.y, x_1499.y));
        let x_1502 : vec4<f32> = u_xlat8;
        let x_1503 : vec3<f32> = vec3<f32>(x_1502.y, x_1502.z, x_1502.w);
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1503.x, x_1504.y, x_1503.y, x_1503.z);
        let x_1507 : f32 = u_xlat9.x;
        u_xlat11.y = x_1507;
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y) * vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y)) + vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1515.y));
        let x_1518 : vec4<f32> = u_xlat6;
        let x_1521 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1521.x, x_1521.y)) + vec2<f32>(x_1524.w, x_1524.y));
        let x_1528 : f32 = u_xlat11.y;
        u_xlat8.y = x_1528;
        let x_1531 : f32 = u_xlat9.z;
        u_xlat11.y = x_1531;
        let x_1533 : vec4<f32> = u_xlat6;
        let x_1536 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1533.x, x_1533.y, x_1533.x, x_1533.y) * vec4<f32>(x_1536.x, x_1536.y, x_1536.x, x_1536.y)) + vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1539.y));
        let x_1542 : vec4<f32> = u_xlat6;
        let x_1545 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1548 : vec4<f32> = u_xlat11;
        let x_1550 : vec2<f32> = ((vec2<f32>(x_1542.x, x_1542.y) * vec2<f32>(x_1545.x, x_1545.y)) + vec2<f32>(x_1548.w, x_1548.y));
        let x_1551 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        let x_1554 : f32 = u_xlat11.y;
        u_xlat8.z = x_1554;
        let x_1557 : vec4<f32> = u_xlat6;
        let x_1560 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y) * vec4<f32>(x_1560.x, x_1560.y, x_1560.x, x_1560.y)) + vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.z));
        let x_1567 : f32 = u_xlat9.w;
        u_xlat11.y = x_1567;
        let x_1570 : vec4<f32> = u_xlat6;
        let x_1573 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y) * vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.y)) + vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1576.y));
        let x_1580 : vec4<f32> = u_xlat6;
        let x_1583 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(x_1583.x, x_1583.y)) + vec2<f32>(x_1586.w, x_1586.y));
        let x_1590 : f32 = u_xlat11.y;
        u_xlat8.w = x_1590;
        let x_1593 : vec4<f32> = u_xlat6;
        let x_1596 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.x, x_1599.w));
        let x_1602 : vec4<f32> = u_xlat11;
        let x_1603 : vec3<f32> = vec3<f32>(x_1602.x, x_1602.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1603.z);
        let x_1606 : vec4<f32> = u_xlat6;
        let x_1609 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1612 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1606.x, x_1606.y, x_1606.x, x_1606.y) * vec4<f32>(x_1609.x, x_1609.y, x_1609.x, x_1609.y)) + vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1612.y));
        let x_1616 : vec4<f32> = u_xlat6;
        let x_1619 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1616.x, x_1616.y) * vec2<f32>(x_1619.x, x_1619.y)) + vec2<f32>(x_1622.w, x_1622.y));
        let x_1626 : f32 = u_xlat8.x;
        u_xlat9.x = x_1626;
        let x_1628 : vec4<f32> = u_xlat6;
        let x_1631 : vec4<f32> = x_768.x_MainLightShadowmapSize;
        let x_1634 : vec4<f32> = u_xlat9;
        let x_1636 : vec2<f32> = ((vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(x_1631.x, x_1631.y)) + vec2<f32>(x_1634.x, x_1634.y));
        let x_1637 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
        let x_1640 : vec4<f32> = u_xlat7;
        let x_1642 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1640.x, x_1640.x, x_1640.x, x_1640.x) * x_1642);
        let x_1645 : vec4<f32> = u_xlat7;
        let x_1647 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1645.y, x_1645.y, x_1645.y, x_1645.y) * x_1647);
        let x_1650 : vec4<f32> = u_xlat7;
        let x_1652 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1650.z, x_1650.z, x_1650.z, x_1650.z) * x_1652);
        let x_1654 : vec4<f32> = u_xlat7;
        let x_1656 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1654.w, x_1654.w, x_1654.w, x_1654.w) * x_1656);
        let x_1659 : vec4<f32> = u_xlat12;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec13;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat83 = x_1671;
        let x_1673 : vec4<f32> = u_xlat12;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.z, x_1673.w);
        let x_1676 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec14;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat8.x = x_1685;
        let x_1688 : f32 = u_xlat8.x;
        let x_1690 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1688 * x_1690);
        let x_1694 : f32 = u_xlat17.x;
        let x_1695 : f32 = u_xlat83;
        let x_1698 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1694 * x_1695) + x_1698);
        let x_1701 : vec2<f32> = u_xlat58;
        let x_1703 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec15;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat58.x = x_1712;
        let x_1715 : f32 = u_xlat17.z;
        let x_1717 : f32 = u_xlat58.x;
        let x_1719 : f32 = u_xlat83;
        u_xlat83 = ((x_1715 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat15;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec16;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat58.x = x_1734;
        let x_1737 : f32 = u_xlat17.w;
        let x_1739 : f32 = u_xlat58.x;
        let x_1741 : f32 = u_xlat83;
        u_xlat83 = ((x_1737 * x_1739) + x_1741);
        let x_1744 : vec4<f32> = u_xlat13;
        let x_1745 : vec2<f32> = vec2<f32>(x_1744.x, x_1744.y);
        let x_1747 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec17;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1754.xy, x_1754.z);
        u_xlat58.x = x_1756;
        let x_1759 : f32 = u_xlat18.x;
        let x_1761 : f32 = u_xlat58.x;
        let x_1763 : f32 = u_xlat83;
        u_xlat83 = ((x_1759 * x_1761) + x_1763);
        let x_1766 : vec4<f32> = u_xlat13;
        let x_1767 : vec2<f32> = vec2<f32>(x_1766.z, x_1766.w);
        let x_1769 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1767.x, x_1767.y, x_1769);
        let x_1776 : vec3<f32> = txVec18;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1776.xy, x_1776.z);
        u_xlat58.x = x_1778;
        let x_1781 : f32 = u_xlat18.y;
        let x_1783 : f32 = u_xlat58.x;
        let x_1785 : f32 = u_xlat83;
        u_xlat83 = ((x_1781 * x_1783) + x_1785);
        let x_1788 : vec4<f32> = u_xlat14;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
        let x_1791 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec19;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
        u_xlat58.x = x_1800;
        let x_1803 : f32 = u_xlat18.z;
        let x_1805 : f32 = u_xlat58.x;
        let x_1807 : f32 = u_xlat83;
        u_xlat83 = ((x_1803 * x_1805) + x_1807);
        let x_1810 : vec4<f32> = u_xlat15;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.z, x_1810.w);
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec20;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1820.xy, x_1820.z);
        u_xlat58.x = x_1822;
        let x_1825 : f32 = u_xlat18.w;
        let x_1827 : f32 = u_xlat58.x;
        let x_1829 : f32 = u_xlat83;
        u_xlat83 = ((x_1825 * x_1827) + x_1829);
        let x_1832 : vec4<f32> = u_xlat16;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.x, x_1832.y);
        let x_1835 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1842 : vec3<f32> = txVec21;
        let x_1844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
        u_xlat58.x = x_1844;
        let x_1847 : f32 = u_xlat19.x;
        let x_1849 : f32 = u_xlat58.x;
        let x_1851 : f32 = u_xlat83;
        u_xlat83 = ((x_1847 * x_1849) + x_1851);
        let x_1854 : vec4<f32> = u_xlat16;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.z, x_1854.w);
        let x_1857 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec22;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat58.x = x_1866;
        let x_1869 : f32 = u_xlat19.y;
        let x_1871 : f32 = u_xlat58.x;
        let x_1873 : f32 = u_xlat83;
        u_xlat83 = ((x_1869 * x_1871) + x_1873);
        let x_1876 : vec2<f32> = u_xlat34;
        let x_1878 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1885 : vec3<f32> = txVec23;
        let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
        u_xlat58.x = x_1887;
        let x_1890 : f32 = u_xlat19.z;
        let x_1892 : f32 = u_xlat58.x;
        let x_1894 : f32 = u_xlat83;
        u_xlat83 = ((x_1890 * x_1892) + x_1894);
        let x_1897 : vec2<f32> = u_xlat66;
        let x_1899 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec24;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat58.x = x_1908;
        let x_1911 : f32 = u_xlat19.w;
        let x_1913 : f32 = u_xlat58.x;
        let x_1915 : f32 = u_xlat83;
        u_xlat83 = ((x_1911 * x_1913) + x_1915);
        let x_1918 : vec4<f32> = u_xlat11;
        let x_1919 : vec2<f32> = vec2<f32>(x_1918.x, x_1918.y);
        let x_1921 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec25;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat58.x = x_1930;
        let x_1933 : f32 = u_xlat7.x;
        let x_1935 : f32 = u_xlat58.x;
        let x_1937 : f32 = u_xlat83;
        u_xlat83 = ((x_1933 * x_1935) + x_1937);
        let x_1940 : vec4<f32> = u_xlat11;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.z, x_1940.w);
        let x_1943 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec26;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat58.x = x_1952;
        let x_1955 : f32 = u_xlat7.y;
        let x_1957 : f32 = u_xlat58.x;
        let x_1959 : f32 = u_xlat83;
        u_xlat83 = ((x_1955 * x_1957) + x_1959);
        let x_1962 : vec2<f32> = u_xlat61;
        let x_1964 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
        let x_1971 : vec3<f32> = txVec27;
        let x_1973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1971.xy, x_1971.z);
        u_xlat58.x = x_1973;
        let x_1976 : f32 = u_xlat7.z;
        let x_1978 : f32 = u_xlat58.x;
        let x_1980 : f32 = u_xlat83;
        u_xlat83 = ((x_1976 * x_1978) + x_1980);
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1984 : vec2<f32> = vec2<f32>(x_1983.x, x_1983.y);
        let x_1986 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1984.x, x_1984.y, x_1986);
        let x_1993 : vec3<f32> = txVec28;
        let x_1995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1993.xy, x_1993.z);
        u_xlat6.x = x_1995;
        let x_1998 : f32 = u_xlat7.w;
        let x_2000 : f32 = u_xlat6.x;
        let x_2002 : f32 = u_xlat83;
        u_xlat82 = ((x_1998 * x_2000) + x_2002);
      }
    }
  } else {
    let x_2006 : vec4<f32> = vs_TEXCOORD8;
    let x_2007 : vec2<f32> = vec2<f32>(x_2006.x, x_2006.y);
    let x_2009 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2007.x, x_2007.y, x_2009);
    let x_2016 : vec3<f32> = txVec29;
    let x_2018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2016.xy, x_2016.z);
    u_xlat82 = x_2018;
  }
  let x_2020 : f32 = x_768.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_2020) + 1.0f);
  let x_2023 : f32 = u_xlat82;
  let x_2025 : f32 = x_768.x_MainLightShadowParams.x;
  let x_2027 : f32 = u_xlat83;
  u_xlat82 = ((x_2023 * x_2025) + x_2027);
  let x_2030 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (0.0f >= x_2030);
  let x_2034 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_2034 >= 1.0f);
  let x_2036 : bool = u_xlatb83;
  let x_2037 : bool = u_xlatb6;
  u_xlatb83 = (x_2036 | x_2037);
  let x_2039 : bool = u_xlatb83;
  let x_2040 : f32 = u_xlat82;
  u_xlat82 = select(x_2040, 1.0f, x_2039);
  let x_2042 : vec3<f32> = vs_TEXCOORD7;
  let x_2044 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2046 : vec3<f32> = (x_2042 + -(x_2044));
  let x_2047 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec4<f32> = u_xlat6;
  let x_2051 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : f32 = u_xlat83;
  let x_2056 : f32 = x_768.x_MainLightShadowParams.z;
  let x_2059 : f32 = x_768.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2054 * x_2056) + x_2059);
  let x_2063 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2063, 0.0f, 1.0f);
  let x_2066 : f32 = u_xlat82;
  u_xlat32 = (-(x_2066) + 1.0f);
  let x_2070 : f32 = u_xlat6.x;
  let x_2071 : f32 = u_xlat32;
  let x_2073 : f32 = u_xlat82;
  u_xlat82 = ((x_2070 * x_2071) + x_2073);
  let x_2082 : f32 = x_2080.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2082 == -1.0f));
  let x_2084 : bool = u_xlatb6;
  if (x_2084) {
    let x_2087 : vec3<f32> = vs_TEXCOORD7;
    let x_2090 : vec4<f32> = x_2080.x_MainLightWorldToLight[1i];
    let x_2092 : vec2<f32> = (vec2<f32>(x_2087.y, x_2087.y) * vec2<f32>(x_2090.x, x_2090.y));
    let x_2093 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2092.x, x_2092.y, x_2093.z, x_2093.w);
    let x_2096 : vec4<f32> = x_2080.x_MainLightWorldToLight[0i];
    let x_2098 : vec3<f32> = vs_TEXCOORD7;
    let x_2101 : vec4<f32> = u_xlat6;
    let x_2103 : vec2<f32> = ((vec2<f32>(x_2096.x, x_2096.y) * vec2<f32>(x_2098.x, x_2098.x)) + vec2<f32>(x_2101.x, x_2101.y));
    let x_2104 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2103.x, x_2103.y, x_2104.z, x_2104.w);
    let x_2107 : vec4<f32> = x_2080.x_MainLightWorldToLight[2i];
    let x_2109 : vec3<f32> = vs_TEXCOORD7;
    let x_2112 : vec4<f32> = u_xlat6;
    let x_2114 : vec2<f32> = ((vec2<f32>(x_2107.x, x_2107.y) * vec2<f32>(x_2109.z, x_2109.z)) + vec2<f32>(x_2112.x, x_2112.y));
    let x_2115 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2114.x, x_2114.y, x_2115.z, x_2115.w);
    let x_2117 : vec4<f32> = u_xlat6;
    let x_2121 : vec4<f32> = x_2080.x_MainLightWorldToLight[3i];
    let x_2123 : vec2<f32> = (vec2<f32>(x_2117.x, x_2117.y) + vec2<f32>(x_2121.x, x_2121.y));
    let x_2124 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2123.x, x_2123.y, x_2124.z, x_2124.w);
    let x_2126 : vec4<f32> = u_xlat6;
    let x_2129 : vec2<f32> = ((vec2<f32>(x_2126.x, x_2126.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2130 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2129.x, x_2129.y, x_2130.z, x_2130.w);
    let x_2137 : vec4<f32> = u_xlat6;
    let x_2140 : f32 = x_29.x_GlobalMipBias.x;
    let x_2141 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2137.x, x_2137.y), x_2140);
    u_xlat6 = x_2141;
    let x_2146 : f32 = x_2080.x_MainLightCookieTextureFormat;
    let x_2148 : f32 = x_2080.x_MainLightCookieTextureFormat;
    let x_2150 : f32 = x_2080.x_MainLightCookieTextureFormat;
    let x_2152 : f32 = x_2080.x_MainLightCookieTextureFormat;
    let x_2153 : vec4<f32> = vec4<f32>(x_2146, x_2148, x_2150, x_2152);
    let x_2160 : vec4<bool> = (vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2153.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2160.x, x_2160.y);
    let x_2164 : bool = u_xlatb7.y;
    if (x_2164) {
      let x_2169 : f32 = u_xlat6.w;
      x_2165 = x_2169;
    } else {
      let x_2172 : f32 = u_xlat6.x;
      x_2165 = x_2172;
    }
    let x_2173 : f32 = x_2165;
    u_xlat84 = x_2173;
    let x_2175 : bool = u_xlatb7.x;
    if (x_2175) {
      let x_2179 : vec4<f32> = u_xlat6;
      x_2176 = vec3<f32>(x_2179.x, x_2179.y, x_2179.z);
    } else {
      let x_2182 : f32 = u_xlat84;
      x_2176 = vec3<f32>(x_2182, x_2182, x_2182);
    }
    let x_2184 : vec3<f32> = x_2176;
    let x_2185 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2191 : vec4<f32> = u_xlat6;
  let x_2194 : vec4<f32> = x_29.x_MainLightColor;
  let x_2196 : vec3<f32> = (vec3<f32>(x_2191.x, x_2191.y, x_2191.z) * vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2197 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
  let x_2199 : vec3<f32> = u_xlat2;
  let x_2201 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(x_2199), vec3<f32>(x_2201.x, x_2201.y, x_2201.z));
  let x_2204 : f32 = u_xlat84;
  let x_2205 : f32 = u_xlat84;
  u_xlat84 = (x_2204 + x_2205);
  let x_2207 : vec4<f32> = u_xlat1;
  let x_2209 : f32 = u_xlat84;
  let x_2213 : vec3<f32> = u_xlat2;
  let x_2215 : vec3<f32> = ((vec3<f32>(x_2207.x, x_2207.y, x_2207.z) * -(vec3<f32>(x_2209, x_2209, x_2209))) + -(x_2213));
  let x_2216 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
  let x_2218 : vec4<f32> = u_xlat1;
  let x_2220 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_2218.x, x_2218.y, x_2218.z), x_2220);
  let x_2222 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2222, 0.0f, 1.0f);
  let x_2224 : f32 = u_xlat84;
  u_xlat84 = (-(x_2224) + 1.0f);
  let x_2227 : f32 = u_xlat84;
  let x_2228 : f32 = u_xlat84;
  u_xlat84 = (x_2227 * x_2228);
  let x_2230 : f32 = u_xlat84;
  let x_2231 : f32 = u_xlat84;
  u_xlat84 = (x_2230 * x_2231);
  let x_2235 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2235) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2242 : f32 = u_xlat0.x;
  let x_2243 : f32 = u_xlat85;
  u_xlat0.x = (x_2242 * x_2243);
  let x_2247 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2247 * 6.0f);
  let x_2259 : vec4<f32> = u_xlat7;
  let x_2262 : f32 = u_xlat0.x;
  let x_2263 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2259.x, x_2259.y, x_2259.z), x_2262);
  u_xlat7 = x_2263;
  let x_2265 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2265 + -1.0f);
  let x_2269 : f32 = x_625.unity_SpecCube0_HDR.w;
  let x_2271 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2269 * x_2271) + 1.0f);
  let x_2276 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2276, 0.0f);
  let x_2280 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2280);
  let x_2284 : f32 = u_xlat0.x;
  let x_2286 : f32 = x_625.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2284 * x_2286);
  let x_2290 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2290);
  let x_2294 : f32 = u_xlat0.x;
  let x_2296 : f32 = x_625.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2294 * x_2296);
  let x_2299 : vec4<f32> = u_xlat7;
  let x_2301 : vec3<f32> = u_xlat0;
  let x_2303 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.y, x_2299.z) * vec3<f32>(x_2301.x, x_2301.x, x_2301.x));
  let x_2304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
  let x_2306 : f32 = u_xlat52;
  let x_2308 : f32 = u_xlat52;
  let x_2312 : vec2<f32> = ((vec2<f32>(x_2306, x_2306) * vec2<f32>(x_2308, x_2308)) + vec2<f32>(-1.0f, 1.0f));
  let x_2313 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2312.x, x_2313.y, x_2312.y);
  let x_2316 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2316);
  let x_2318 : vec4<f32> = u_xlat5;
  let x_2321 : f32 = u_xlat80;
  let x_2323 : vec3<f32> = (-(vec3<f32>(x_2318.x, x_2318.y, x_2318.z)) + vec3<f32>(x_2321, x_2321, x_2321));
  let x_2324 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : f32 = u_xlat84;
  let x_2328 : vec4<f32> = u_xlat8;
  let x_2331 : vec4<f32> = u_xlat5;
  let x_2333 : vec3<f32> = ((vec3<f32>(x_2326, x_2326, x_2326) * vec3<f32>(x_2328.x, x_2328.y, x_2328.z)) + vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
  let x_2334 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
  let x_2336 : f32 = u_xlat52;
  let x_2338 : vec4<f32> = u_xlat8;
  let x_2340 : vec3<f32> = (vec3<f32>(x_2336, x_2336, x_2336) * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : vec4<f32> = u_xlat7;
  let x_2345 : vec4<f32> = u_xlat8;
  let x_2347 : vec3<f32> = (vec3<f32>(x_2343.x, x_2343.y, x_2343.z) * vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
  let x_2350 : vec4<f32> = u_xlat3;
  let x_2352 : vec4<f32> = u_xlat4;
  let x_2355 : vec4<f32> = u_xlat7;
  let x_2357 : vec3<f32> = ((vec3<f32>(x_2350.x, x_2350.y, x_2350.z) * vec3<f32>(x_2352.x, x_2352.y, x_2352.z)) + vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
  let x_2358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
  let x_2360 : f32 = u_xlat82;
  let x_2362 : f32 = x_625.unity_LightData.z;
  u_xlat52 = (x_2360 * x_2362);
  let x_2364 : vec4<f32> = u_xlat1;
  let x_2367 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2364.x, x_2364.y, x_2364.z), vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
  let x_2370 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2370, 0.0f, 1.0f);
  let x_2372 : f32 = u_xlat52;
  let x_2373 : f32 = u_xlat80;
  u_xlat52 = (x_2372 * x_2373);
  let x_2375 : f32 = u_xlat52;
  let x_2377 : vec4<f32> = u_xlat6;
  let x_2379 : vec3<f32> = (vec3<f32>(x_2375, x_2375, x_2375) * vec3<f32>(x_2377.x, x_2377.y, x_2377.z));
  let x_2380 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2379.x, x_2379.y, x_2379.z, x_2380.w);
  let x_2382 : vec3<f32> = u_xlat2;
  let x_2384 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2386 : vec3<f32> = (x_2382 + vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
  let x_2387 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
  let x_2389 : vec4<f32> = u_xlat7;
  let x_2391 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2389.x, x_2389.y, x_2389.z), vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
  let x_2394 : f32 = u_xlat52;
  u_xlat52 = max(x_2394, 1.17549435e-38f);
  let x_2397 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2397);
  let x_2399 : f32 = u_xlat52;
  let x_2401 : vec4<f32> = u_xlat7;
  let x_2403 : vec3<f32> = (vec3<f32>(x_2399, x_2399, x_2399) * vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
  let x_2404 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
  let x_2406 : vec4<f32> = u_xlat1;
  let x_2408 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2406.x, x_2406.y, x_2406.z), vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
  let x_2411 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2411, 0.0f, 1.0f);
  let x_2414 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2416 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2414.x, x_2414.y, x_2414.z), vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2419, 0.0f, 1.0f);
  let x_2421 : f32 = u_xlat52;
  let x_2422 : f32 = u_xlat52;
  u_xlat52 = (x_2421 * x_2422);
  let x_2424 : f32 = u_xlat52;
  let x_2426 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2424 * x_2426) + 1.00001001358032226562f);
  let x_2430 : f32 = u_xlat80;
  let x_2431 : f32 = u_xlat80;
  u_xlat80 = (x_2430 * x_2431);
  let x_2433 : f32 = u_xlat52;
  let x_2434 : f32 = u_xlat52;
  u_xlat52 = (x_2433 * x_2434);
  let x_2436 : f32 = u_xlat80;
  u_xlat80 = max(x_2436, 0.10000000149011611938f);
  let x_2439 : f32 = u_xlat52;
  let x_2440 : f32 = u_xlat80;
  u_xlat52 = (x_2439 * x_2440);
  let x_2442 : f32 = u_xlat81;
  let x_2443 : f32 = u_xlat52;
  u_xlat52 = (x_2442 * x_2443);
  let x_2445 : f32 = u_xlat79;
  let x_2446 : f32 = u_xlat52;
  u_xlat52 = (x_2445 / x_2446);
  let x_2448 : vec4<f32> = u_xlat5;
  let x_2450 : f32 = u_xlat52;
  let x_2453 : vec4<f32> = u_xlat4;
  let x_2455 : vec3<f32> = ((vec3<f32>(x_2448.x, x_2448.y, x_2448.z) * vec3<f32>(x_2450, x_2450, x_2450)) + vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
  let x_2458 : vec4<f32> = u_xlat6;
  let x_2460 : vec4<f32> = u_xlat7;
  let x_2462 : vec3<f32> = (vec3<f32>(x_2458.x, x_2458.y, x_2458.z) * vec3<f32>(x_2460.x, x_2460.y, x_2460.z));
  let x_2463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
  let x_2466 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2468 : f32 = x_625.unity_LightData.y;
  u_xlat52 = min(x_2466, x_2468);
  let x_2472 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2472));
  let x_2475 : f32 = u_xlat83;
  let x_2477 : f32 = x_768.x_AdditionalShadowFadeParams.x;
  let x_2480 : f32 = x_768.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2475 * x_2477) + x_2480);
  let x_2482 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2482, 0.0f, 1.0f);
  let x_2485 : f32 = x_2080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2487 : f32 = x_2080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2489 : f32 = x_2080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2491 : f32 = x_2080.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2492 : vec4<f32> = vec4<f32>(x_2485, x_2487, x_2489, x_2491);
  let x_2498 : vec4<bool> = (vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2492.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2498.x, x_2498.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2510 : u32 = u_xlatu_loop_1;
    let x_2511 : u32 = u_xlatu52;
    if ((x_2510 < x_2511)) {
    } else {
      break;
    }
    let x_2514 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2514 >> 2u);
    let x_2518 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2518 & 3u));
    let x_2521 : u32 = u_xlatu83;
    let x_2524 : vec4<f32> = x_625.unity_LightIndices[bitcast<i32>(x_2521)];
    let x_2534 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2539 : vec4<u32> = indexable[x_2534];
    u_xlat83 = dot(x_2524, bitcast<vec4<f32>>(x_2539));
    let x_2543 : f32 = u_xlat83;
    u_xlati83 = i32(x_2543);
    let x_2545 : vec3<f32> = vs_TEXCOORD7;
    let x_2556 : i32 = u_xlati83;
    let x_2558 : vec4<f32> = x_2555.x_AdditionalLightsPosition[x_2556];
    let x_2561 : i32 = u_xlati83;
    let x_2563 : vec4<f32> = x_2555.x_AdditionalLightsPosition[x_2561];
    let x_2565 : vec3<f32> = ((-(x_2545) * vec3<f32>(x_2558.w, x_2558.w, x_2558.w)) + vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
    let x_2566 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2566.w);
    let x_2568 : vec4<f32> = u_xlat9;
    let x_2570 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2568.x, x_2568.y, x_2568.z), vec3<f32>(x_2570.x, x_2570.y, x_2570.z));
    let x_2573 : f32 = u_xlat84;
    u_xlat84 = max(x_2573, 0.00006103515625f);
    let x_2576 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2576);
    let x_2578 : f32 = u_xlat59;
    let x_2580 : vec4<f32> = u_xlat9;
    let x_2582 : vec3<f32> = (vec3<f32>(x_2578, x_2578, x_2578) * vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
    let x_2583 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
    let x_2585 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2585);
    let x_2587 : f32 = u_xlat84;
    let x_2588 : i32 = u_xlati83;
    let x_2590 : f32 = x_2555.x_AdditionalLightsAttenuation[x_2588].x;
    u_xlat84 = (x_2587 * x_2590);
    let x_2592 : f32 = u_xlat84;
    let x_2594 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2592) * x_2594) + 1.0f);
    let x_2597 : f32 = u_xlat84;
    u_xlat84 = max(x_2597, 0.0f);
    let x_2599 : f32 = u_xlat84;
    let x_2600 : f32 = u_xlat84;
    u_xlat84 = (x_2599 * x_2600);
    let x_2602 : f32 = u_xlat84;
    let x_2603 : f32 = u_xlat85;
    u_xlat84 = (x_2602 * x_2603);
    let x_2605 : i32 = u_xlati83;
    let x_2607 : vec4<f32> = x_2555.x_AdditionalLightsSpotDir[x_2605];
    let x_2609 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2607.x, x_2607.y, x_2607.z), vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
    let x_2612 : f32 = u_xlat85;
    let x_2613 : i32 = u_xlati83;
    let x_2615 : f32 = x_2555.x_AdditionalLightsAttenuation[x_2613].z;
    let x_2617 : i32 = u_xlati83;
    let x_2619 : f32 = x_2555.x_AdditionalLightsAttenuation[x_2617].w;
    u_xlat85 = ((x_2612 * x_2615) + x_2619);
    let x_2621 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2621, 0.0f, 1.0f);
    let x_2623 : f32 = u_xlat85;
    let x_2624 : f32 = u_xlat85;
    u_xlat85 = (x_2623 * x_2624);
    let x_2626 : f32 = u_xlat84;
    let x_2627 : f32 = u_xlat85;
    u_xlat84 = (x_2626 * x_2627);
    let x_2630 : i32 = u_xlati83;
    let x_2632 : f32 = x_768.x_AdditionalShadowParams[x_2630].w;
    u_xlati85 = i32(x_2632);
    let x_2635 : i32 = u_xlati85;
    u_xlatb86 = (x_2635 >= 0i);
    let x_2637 : bool = u_xlatb86;
    if (x_2637) {
      let x_2641 : i32 = u_xlati83;
      let x_2643 : f32 = x_768.x_AdditionalShadowParams[x_2641].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2643, x_2643, x_2643, x_2643))));
      let x_2647 : bool = u_xlatb86;
      if (x_2647) {
        let x_2652 : vec4<f32> = u_xlat10;
        let x_2655 : vec4<f32> = u_xlat10;
        let x_2658 : vec4<bool> = (abs(vec4<f32>(x_2652.z, x_2652.z, x_2652.y, x_2652.z)) >= abs(vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.x)));
        let x_2660 : vec3<bool> = vec3<bool>(x_2658.x, x_2658.y, x_2658.z);
        let x_2661 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
        let x_2664 : bool = u_xlatb11.y;
        let x_2666 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2664 & x_2666);
        let x_2668 : vec4<f32> = u_xlat10;
        let x_2671 : vec4<bool> = (-(vec4<f32>(x_2668.z, x_2668.y, x_2668.z, x_2668.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2672 : vec3<bool> = vec3<bool>(x_2671.x, x_2671.y, x_2671.w);
        let x_2673 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2672.x, x_2672.y, x_2673.z, x_2672.z);
        let x_2676 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2676);
        let x_2681 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2681);
        let x_2687 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2687);
        let x_2690 : bool = u_xlatb11.z;
        if (x_2690) {
          let x_2695 : f32 = u_xlat11.y;
          x_2691 = x_2695;
        } else {
          let x_2697 : f32 = u_xlat87;
          x_2691 = x_2697;
        }
        let x_2698 : f32 = x_2691;
        u_xlat87 = x_2698;
        let x_2700 : bool = u_xlatb86;
        if (x_2700) {
          let x_2705 : f32 = u_xlat11.x;
          x_2701 = x_2705;
        } else {
          let x_2707 : f32 = u_xlat87;
          x_2701 = x_2707;
        }
        let x_2708 : f32 = x_2701;
        u_xlat86 = x_2708;
        let x_2709 : i32 = u_xlati83;
        let x_2711 : f32 = x_768.x_AdditionalShadowParams[x_2709].w;
        u_xlat87 = trunc(x_2711);
        let x_2713 : f32 = u_xlat86;
        let x_2714 : f32 = u_xlat87;
        u_xlat86 = (x_2713 + x_2714);
        let x_2716 : f32 = u_xlat86;
        u_xlati85 = i32(x_2716);
      }
      let x_2718 : i32 = u_xlati85;
      u_xlati85 = (x_2718 << bitcast<u32>(2i));
      let x_2720 : vec3<f32> = vs_TEXCOORD7;
      let x_2722 : i32 = u_xlati85;
      let x_2725 : i32 = u_xlati85;
      let x_2729 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_2722 + 1i) / 4i)][((x_2725 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2720.y, x_2720.y, x_2720.y, x_2720.y) * x_2729);
      let x_2731 : i32 = u_xlati85;
      let x_2733 : i32 = u_xlati85;
      let x_2736 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[(x_2731 / 4i)][(x_2733 % 4i)];
      let x_2737 : vec3<f32> = vs_TEXCOORD7;
      let x_2740 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2736 * vec4<f32>(x_2737.x, x_2737.x, x_2737.x, x_2737.x)) + x_2740);
      let x_2742 : i32 = u_xlati85;
      let x_2745 : i32 = u_xlati85;
      let x_2749 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_2742 + 2i) / 4i)][((x_2745 + 2i) % 4i)];
      let x_2750 : vec3<f32> = vs_TEXCOORD7;
      let x_2753 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2749 * vec4<f32>(x_2750.z, x_2750.z, x_2750.z, x_2750.z)) + x_2753);
      let x_2755 : vec4<f32> = u_xlat11;
      let x_2756 : i32 = u_xlati85;
      let x_2759 : i32 = u_xlati85;
      let x_2763 : vec4<f32> = x_768.x_AdditionalLightsWorldToShadow[((x_2756 + 3i) / 4i)][((x_2759 + 3i) % 4i)];
      u_xlat11 = (x_2755 + x_2763);
      let x_2765 : vec4<f32> = u_xlat11;
      let x_2767 : vec4<f32> = u_xlat11;
      let x_2769 : vec3<f32> = (vec3<f32>(x_2765.x, x_2765.y, x_2765.z) / vec3<f32>(x_2767.w, x_2767.w, x_2767.w));
      let x_2770 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
      let x_2773 : i32 = u_xlati83;
      let x_2775 : f32 = x_768.x_AdditionalShadowParams[x_2773].y;
      u_xlatb85 = (0.0f < x_2775);
      let x_2777 : bool = u_xlatb85;
      if (x_2777) {
        let x_2780 : i32 = u_xlati83;
        let x_2782 : f32 = x_768.x_AdditionalShadowParams[x_2780].y;
        u_xlatb85 = (1.0f == x_2782);
        let x_2784 : bool = u_xlatb85;
        if (x_2784) {
          let x_2787 : vec4<f32> = u_xlat11;
          let x_2790 : vec4<f32> = x_768.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2787.x, x_2787.y, x_2787.x, x_2787.y) + x_2790);
          let x_2793 : vec4<f32> = u_xlat12;
          let x_2794 : vec2<f32> = vec2<f32>(x_2793.x, x_2793.y);
          let x_2796 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
          let x_2804 : vec3<f32> = txVec30;
          let x_2806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
          u_xlat13.x = x_2806;
          let x_2809 : vec4<f32> = u_xlat12;
          let x_2810 : vec2<f32> = vec2<f32>(x_2809.z, x_2809.w);
          let x_2812 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2810.x, x_2810.y, x_2812);
          let x_2819 : vec3<f32> = txVec31;
          let x_2821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2819.xy, x_2819.z);
          u_xlat13.y = x_2821;
          let x_2823 : vec4<f32> = u_xlat11;
          let x_2826 : vec4<f32> = x_768.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2823.x, x_2823.y, x_2823.x, x_2823.y) + x_2826);
          let x_2829 : vec4<f32> = u_xlat12;
          let x_2830 : vec2<f32> = vec2<f32>(x_2829.x, x_2829.y);
          let x_2832 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2830.x, x_2830.y, x_2832);
          let x_2839 : vec3<f32> = txVec32;
          let x_2841 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2839.xy, x_2839.z);
          u_xlat13.z = x_2841;
          let x_2844 : vec4<f32> = u_xlat12;
          let x_2845 : vec2<f32> = vec2<f32>(x_2844.z, x_2844.w);
          let x_2847 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
          let x_2854 : vec3<f32> = txVec33;
          let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
          u_xlat13.w = x_2856;
          let x_2858 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2858, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2861 : i32 = u_xlati83;
          let x_2863 : f32 = x_768.x_AdditionalShadowParams[x_2861].y;
          u_xlatb86 = (2.0f == x_2863);
          let x_2865 : bool = u_xlatb86;
          if (x_2865) {
            let x_2868 : vec4<f32> = u_xlat11;
            let x_2871 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2874 : vec2<f32> = ((vec2<f32>(x_2868.x, x_2868.y) * vec2<f32>(x_2871.z, x_2871.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2875 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2874.x, x_2874.y, x_2875.z, x_2875.w);
            let x_2877 : vec4<f32> = u_xlat12;
            let x_2879 : vec2<f32> = floor(vec2<f32>(x_2877.x, x_2877.y));
            let x_2880 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2879.x, x_2879.y, x_2880.z, x_2880.w);
            let x_2883 : vec4<f32> = u_xlat11;
            let x_2886 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_2889 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2883.x, x_2883.y) * vec2<f32>(x_2886.z, x_2886.w)) + -(vec2<f32>(x_2889.x, x_2889.y)));
            let x_2893 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2893.x, x_2893.x, x_2893.y, x_2893.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2896 : vec4<f32> = u_xlat13;
            let x_2898 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2896.x, x_2896.x, x_2896.z, x_2896.z) * vec4<f32>(x_2898.x, x_2898.x, x_2898.z, x_2898.z));
            let x_2901 : vec4<f32> = u_xlat14;
            let x_2903 : vec2<f32> = (vec2<f32>(x_2901.y, x_2901.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2904 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2903.x, x_2904.y, x_2903.y, x_2904.w);
            let x_2906 : vec4<f32> = u_xlat14;
            let x_2909 : vec2<f32> = u_xlat64;
            let x_2911 : vec2<f32> = ((vec2<f32>(x_2906.x, x_2906.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2909));
            let x_2912 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2911.x, x_2911.y, x_2912.z, x_2912.w);
            let x_2914 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2914) + vec2<f32>(1.0f, 1.0f));
            let x_2917 : vec2<f32> = u_xlat64;
            let x_2918 : vec2<f32> = min(x_2917, vec2<f32>(0.0f, 0.0f));
            let x_2919 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2918.x, x_2918.y, x_2919.z, x_2919.w);
            let x_2921 : vec4<f32> = u_xlat15;
            let x_2924 : vec4<f32> = u_xlat15;
            let x_2927 : vec2<f32> = u_xlat66;
            let x_2928 : vec2<f32> = ((-(vec2<f32>(x_2921.x, x_2921.y)) * vec2<f32>(x_2924.x, x_2924.y)) + x_2927);
            let x_2929 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2928.x, x_2928.y, x_2929.z, x_2929.w);
            let x_2931 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2931, vec2<f32>(0.0f, 0.0f));
            let x_2933 : vec2<f32> = u_xlat64;
            let x_2935 : vec2<f32> = u_xlat64;
            let x_2937 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2933) * x_2935) + vec2<f32>(x_2937.y, x_2937.w));
            let x_2940 : vec4<f32> = u_xlat15;
            let x_2942 : vec2<f32> = (vec2<f32>(x_2940.x, x_2940.y) + vec2<f32>(1.0f, 1.0f));
            let x_2943 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
            let x_2945 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2945 + vec2<f32>(1.0f, 1.0f));
            let x_2947 : vec4<f32> = u_xlat14;
            let x_2949 : vec2<f32> = (vec2<f32>(x_2947.x, x_2947.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2950 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2949.x, x_2949.y, x_2950.z, x_2950.w);
            let x_2952 : vec2<f32> = u_xlat66;
            let x_2953 : vec2<f32> = (x_2952 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2954 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2953.x, x_2953.y, x_2954.z, x_2954.w);
            let x_2956 : vec4<f32> = u_xlat15;
            let x_2958 : vec2<f32> = (vec2<f32>(x_2956.x, x_2956.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2959 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2958.x, x_2958.y, x_2959.z, x_2959.w);
            let x_2961 : vec2<f32> = u_xlat64;
            let x_2962 : vec2<f32> = (x_2961 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2963 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2962.x, x_2962.y, x_2963.z, x_2963.w);
            let x_2965 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2965.y, x_2965.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2969 : f32 = u_xlat15.x;
            u_xlat16.z = x_2969;
            let x_2972 : f32 = u_xlat64.x;
            u_xlat16.w = x_2972;
            let x_2975 : f32 = u_xlat17.x;
            u_xlat14.z = x_2975;
            let x_2978 : f32 = u_xlat13.x;
            u_xlat14.w = x_2978;
            let x_2980 : vec4<f32> = u_xlat14;
            let x_2982 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2980.z, x_2980.w, x_2980.x, x_2980.z) + vec4<f32>(x_2982.z, x_2982.w, x_2982.x, x_2982.z));
            let x_2986 : f32 = u_xlat16.y;
            u_xlat15.z = x_2986;
            let x_2989 : f32 = u_xlat64.y;
            u_xlat15.w = x_2989;
            let x_2992 : f32 = u_xlat14.y;
            u_xlat17.z = x_2992;
            let x_2995 : f32 = u_xlat13.z;
            u_xlat17.w = x_2995;
            let x_2997 : vec4<f32> = u_xlat15;
            let x_2999 : vec4<f32> = u_xlat17;
            let x_3001 : vec3<f32> = (vec3<f32>(x_2997.z, x_2997.y, x_2997.w) + vec3<f32>(x_2999.z, x_2999.y, x_2999.w));
            let x_3002 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3001.x, x_3001.y, x_3001.z, x_3002.w);
            let x_3004 : vec4<f32> = u_xlat14;
            let x_3006 : vec4<f32> = u_xlat18;
            let x_3008 : vec3<f32> = (vec3<f32>(x_3004.x, x_3004.z, x_3004.w) / vec3<f32>(x_3006.z, x_3006.w, x_3006.y));
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3008.x, x_3008.y, x_3008.z, x_3009.w);
            let x_3011 : vec4<f32> = u_xlat14;
            let x_3013 : vec3<f32> = (vec3<f32>(x_3011.x, x_3011.y, x_3011.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3014 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3013.x, x_3013.y, x_3013.z, x_3014.w);
            let x_3016 : vec4<f32> = u_xlat17;
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3020 : vec3<f32> = (vec3<f32>(x_3016.z, x_3016.y, x_3016.w) / vec3<f32>(x_3018.x, x_3018.y, x_3018.z));
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3020.x, x_3020.y, x_3020.z, x_3021.w);
            let x_3023 : vec4<f32> = u_xlat15;
            let x_3025 : vec3<f32> = (vec3<f32>(x_3023.x, x_3023.y, x_3023.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3026 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3025.x, x_3025.y, x_3025.z, x_3026.w);
            let x_3028 : vec4<f32> = u_xlat14;
            let x_3031 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3033 : vec3<f32> = (vec3<f32>(x_3028.y, x_3028.x, x_3028.z) * vec3<f32>(x_3031.x, x_3031.x, x_3031.x));
            let x_3034 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3034.w);
            let x_3036 : vec4<f32> = u_xlat15;
            let x_3039 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3041 : vec3<f32> = (vec3<f32>(x_3036.x, x_3036.y, x_3036.z) * vec3<f32>(x_3039.y, x_3039.y, x_3039.y));
            let x_3042 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3041.x, x_3041.y, x_3041.z, x_3042.w);
            let x_3045 : f32 = u_xlat15.x;
            u_xlat14.w = x_3045;
            let x_3047 : vec4<f32> = u_xlat12;
            let x_3050 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3053 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3047.x, x_3047.y, x_3047.x, x_3047.y) * vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.y)) + vec4<f32>(x_3053.y, x_3053.w, x_3053.x, x_3053.w));
            let x_3056 : vec4<f32> = u_xlat12;
            let x_3059 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3062 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3056.x, x_3056.y) * vec2<f32>(x_3059.x, x_3059.y)) + vec2<f32>(x_3062.z, x_3062.w));
            let x_3066 : f32 = u_xlat14.y;
            u_xlat15.w = x_3066;
            let x_3068 : vec4<f32> = u_xlat15;
            let x_3069 : vec2<f32> = vec2<f32>(x_3068.y, x_3068.z);
            let x_3070 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3070.x, x_3069.x, x_3070.z, x_3069.y);
            let x_3072 : vec4<f32> = u_xlat12;
            let x_3075 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y) * vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y)) + vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3078.y));
            let x_3081 : vec4<f32> = u_xlat12;
            let x_3084 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3087 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3081.x, x_3081.y, x_3081.x, x_3081.y) * vec4<f32>(x_3084.x, x_3084.y, x_3084.x, x_3084.y)) + vec4<f32>(x_3087.w, x_3087.y, x_3087.w, x_3087.z));
            let x_3090 : vec4<f32> = u_xlat12;
            let x_3093 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3096 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3090.x, x_3090.y, x_3090.x, x_3090.y) * vec4<f32>(x_3093.x, x_3093.y, x_3093.x, x_3093.y)) + vec4<f32>(x_3096.x, x_3096.w, x_3096.z, x_3096.w));
            let x_3099 : vec4<f32> = u_xlat13;
            let x_3101 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3099.x, x_3099.x, x_3099.x, x_3099.y) * vec4<f32>(x_3101.z, x_3101.w, x_3101.y, x_3101.z));
            let x_3105 : vec4<f32> = u_xlat13;
            let x_3107 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3105.y, x_3105.y, x_3105.z, x_3105.z) * x_3107);
            let x_3110 : f32 = u_xlat13.z;
            let x_3112 : f32 = u_xlat18.y;
            u_xlat86 = (x_3110 * x_3112);
            let x_3115 : vec4<f32> = u_xlat16;
            let x_3116 : vec2<f32> = vec2<f32>(x_3115.x, x_3115.y);
            let x_3118 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec34;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat87 = x_3127;
            let x_3129 : vec4<f32> = u_xlat16;
            let x_3130 : vec2<f32> = vec2<f32>(x_3129.z, x_3129.w);
            let x_3132 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3140 : vec3<f32> = txVec35;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat88 = x_3142;
            let x_3143 : f32 = u_xlat88;
            let x_3145 : f32 = u_xlat19.y;
            u_xlat88 = (x_3143 * x_3145);
            let x_3148 : f32 = u_xlat19.x;
            let x_3149 : f32 = u_xlat87;
            let x_3151 : f32 = u_xlat88;
            u_xlat87 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec2<f32> = u_xlat64;
            let x_3156 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec36;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat88 = x_3165;
            let x_3167 : f32 = u_xlat19.z;
            let x_3168 : f32 = u_xlat88;
            let x_3170 : f32 = u_xlat87;
            u_xlat87 = ((x_3167 * x_3168) + x_3170);
            let x_3173 : vec4<f32> = u_xlat15;
            let x_3174 : vec2<f32> = vec2<f32>(x_3173.x, x_3173.y);
            let x_3176 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3174.x, x_3174.y, x_3176);
            let x_3183 : vec3<f32> = txVec37;
            let x_3185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3183.xy, x_3183.z);
            u_xlat88 = x_3185;
            let x_3187 : f32 = u_xlat19.w;
            let x_3188 : f32 = u_xlat88;
            let x_3190 : f32 = u_xlat87;
            u_xlat87 = ((x_3187 * x_3188) + x_3190);
            let x_3193 : vec4<f32> = u_xlat17;
            let x_3194 : vec2<f32> = vec2<f32>(x_3193.x, x_3193.y);
            let x_3196 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
            let x_3203 : vec3<f32> = txVec38;
            let x_3205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
            u_xlat88 = x_3205;
            let x_3207 : f32 = u_xlat20.x;
            let x_3208 : f32 = u_xlat88;
            let x_3210 : f32 = u_xlat87;
            u_xlat87 = ((x_3207 * x_3208) + x_3210);
            let x_3213 : vec4<f32> = u_xlat17;
            let x_3214 : vec2<f32> = vec2<f32>(x_3213.z, x_3213.w);
            let x_3216 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
            let x_3223 : vec3<f32> = txVec39;
            let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
            u_xlat88 = x_3225;
            let x_3227 : f32 = u_xlat20.y;
            let x_3228 : f32 = u_xlat88;
            let x_3230 : f32 = u_xlat87;
            u_xlat87 = ((x_3227 * x_3228) + x_3230);
            let x_3233 : vec4<f32> = u_xlat15;
            let x_3234 : vec2<f32> = vec2<f32>(x_3233.z, x_3233.w);
            let x_3236 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
            let x_3243 : vec3<f32> = txVec40;
            let x_3245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
            u_xlat88 = x_3245;
            let x_3247 : f32 = u_xlat20.z;
            let x_3248 : f32 = u_xlat88;
            let x_3250 : f32 = u_xlat87;
            u_xlat87 = ((x_3247 * x_3248) + x_3250);
            let x_3253 : vec4<f32> = u_xlat14;
            let x_3254 : vec2<f32> = vec2<f32>(x_3253.x, x_3253.y);
            let x_3256 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3254.x, x_3254.y, x_3256);
            let x_3263 : vec3<f32> = txVec41;
            let x_3265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3263.xy, x_3263.z);
            u_xlat88 = x_3265;
            let x_3267 : f32 = u_xlat20.w;
            let x_3268 : f32 = u_xlat88;
            let x_3270 : f32 = u_xlat87;
            u_xlat87 = ((x_3267 * x_3268) + x_3270);
            let x_3273 : vec4<f32> = u_xlat14;
            let x_3274 : vec2<f32> = vec2<f32>(x_3273.z, x_3273.w);
            let x_3276 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3274.x, x_3274.y, x_3276);
            let x_3283 : vec3<f32> = txVec42;
            let x_3285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3283.xy, x_3283.z);
            u_xlat88 = x_3285;
            let x_3286 : f32 = u_xlat86;
            let x_3287 : f32 = u_xlat88;
            let x_3289 : f32 = u_xlat87;
            u_xlat85 = ((x_3286 * x_3287) + x_3289);
          } else {
            let x_3292 : vec4<f32> = u_xlat11;
            let x_3295 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3298 : vec2<f32> = ((vec2<f32>(x_3292.x, x_3292.y) * vec2<f32>(x_3295.z, x_3295.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3299 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3298.x, x_3298.y, x_3299.z, x_3299.w);
            let x_3301 : vec4<f32> = u_xlat12;
            let x_3303 : vec2<f32> = floor(vec2<f32>(x_3301.x, x_3301.y));
            let x_3304 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3303.x, x_3303.y, x_3304.z, x_3304.w);
            let x_3306 : vec4<f32> = u_xlat11;
            let x_3309 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3312 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3309.z, x_3309.w)) + -(vec2<f32>(x_3312.x, x_3312.y)));
            let x_3316 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3316.x, x_3316.x, x_3316.y, x_3316.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3319 : vec4<f32> = u_xlat13;
            let x_3321 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3319.x, x_3319.x, x_3319.z, x_3319.z) * vec4<f32>(x_3321.x, x_3321.x, x_3321.z, x_3321.z));
            let x_3324 : vec4<f32> = u_xlat14;
            let x_3326 : vec2<f32> = (vec2<f32>(x_3324.y, x_3324.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3327 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3327.x, x_3326.x, x_3327.z, x_3326.y);
            let x_3329 : vec4<f32> = u_xlat14;
            let x_3332 : vec2<f32> = u_xlat64;
            let x_3334 : vec2<f32> = ((vec2<f32>(x_3329.x, x_3329.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3332));
            let x_3335 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3334.x, x_3335.y, x_3334.y, x_3335.w);
            let x_3337 : vec2<f32> = u_xlat64;
            let x_3339 : vec2<f32> = (-(x_3337) + vec2<f32>(1.0f, 1.0f));
            let x_3340 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3339.x, x_3339.y, x_3340.z, x_3340.w);
            let x_3342 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3342, vec2<f32>(0.0f, 0.0f));
            let x_3344 : vec2<f32> = u_xlat66;
            let x_3346 : vec2<f32> = u_xlat66;
            let x_3348 : vec4<f32> = u_xlat14;
            let x_3350 : vec2<f32> = ((-(x_3344) * x_3346) + vec2<f32>(x_3348.x, x_3348.y));
            let x_3351 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3350.x, x_3350.y, x_3351.z, x_3351.w);
            let x_3353 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3353, vec2<f32>(0.0f, 0.0f));
            let x_3356 : vec2<f32> = u_xlat66;
            let x_3358 : vec2<f32> = u_xlat66;
            let x_3360 : vec4<f32> = u_xlat13;
            let x_3362 : vec2<f32> = ((-(x_3356) * x_3358) + vec2<f32>(x_3360.y, x_3360.w));
            let x_3363 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3362.x, x_3363.y, x_3362.y);
            let x_3365 : vec4<f32> = u_xlat14;
            let x_3367 : vec2<f32> = (vec2<f32>(x_3365.x, x_3365.y) + vec2<f32>(2.0f, 2.0f));
            let x_3368 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3367.x, x_3367.y, x_3368.z, x_3368.w);
            let x_3370 : vec3<f32> = u_xlat39;
            let x_3372 : vec2<f32> = (vec2<f32>(x_3370.x, x_3370.z) + vec2<f32>(2.0f, 2.0f));
            let x_3373 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3373.x, x_3372.x, x_3373.z, x_3372.y);
            let x_3376 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3376 * 0.08163200318813323975f);
            let x_3379 : vec4<f32> = u_xlat13;
            let x_3381 : vec3<f32> = (vec3<f32>(x_3379.z, x_3379.x, x_3379.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3382 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3382.w);
            let x_3384 : vec4<f32> = u_xlat14;
            let x_3386 : vec2<f32> = (vec2<f32>(x_3384.x, x_3384.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3387 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3386.x, x_3386.y, x_3387.z, x_3387.w);
            let x_3390 : f32 = u_xlat17.y;
            u_xlat16.x = x_3390;
            let x_3392 : vec2<f32> = u_xlat64;
            let x_3395 : vec2<f32> = ((vec2<f32>(x_3392.x, x_3392.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3396 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3396.x, x_3395.x, x_3396.z, x_3395.y);
            let x_3398 : vec2<f32> = u_xlat64;
            let x_3401 : vec2<f32> = ((vec2<f32>(x_3398.x, x_3398.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3402 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3401.x, x_3402.y, x_3401.y, x_3402.w);
            let x_3405 : f32 = u_xlat13.x;
            u_xlat14.y = x_3405;
            let x_3408 : f32 = u_xlat15.y;
            u_xlat14.w = x_3408;
            let x_3410 : vec4<f32> = u_xlat14;
            let x_3411 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3410 + x_3411);
            let x_3413 : vec2<f32> = u_xlat64;
            let x_3416 : vec2<f32> = ((vec2<f32>(x_3413.y, x_3413.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3417 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3417.x, x_3416.x, x_3417.z, x_3416.y);
            let x_3419 : vec2<f32> = u_xlat64;
            let x_3422 : vec2<f32> = ((vec2<f32>(x_3419.y, x_3419.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3423 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3422.x, x_3423.y, x_3422.y, x_3423.w);
            let x_3426 : f32 = u_xlat13.y;
            u_xlat15.y = x_3426;
            let x_3428 : vec4<f32> = u_xlat15;
            let x_3429 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3428 + x_3429);
            let x_3431 : vec4<f32> = u_xlat14;
            let x_3432 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3431 / x_3432);
            let x_3434 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3434 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3436 : vec4<f32> = u_xlat15;
            let x_3437 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3436 / x_3437);
            let x_3439 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3439 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3441 : vec4<f32> = u_xlat14;
            let x_3444 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3441.w, x_3441.x, x_3441.y, x_3441.z) * vec4<f32>(x_3444.x, x_3444.x, x_3444.x, x_3444.x));
            let x_3447 : vec4<f32> = u_xlat15;
            let x_3450 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3447.x, x_3447.w, x_3447.y, x_3447.z) * vec4<f32>(x_3450.y, x_3450.y, x_3450.y, x_3450.y));
            let x_3453 : vec4<f32> = u_xlat14;
            let x_3454 : vec3<f32> = vec3<f32>(x_3453.y, x_3453.z, x_3453.w);
            let x_3455 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3454.x, x_3455.y, x_3454.y, x_3454.z);
            let x_3458 : f32 = u_xlat15.x;
            u_xlat17.y = x_3458;
            let x_3460 : vec4<f32> = u_xlat12;
            let x_3463 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3466 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3460.x, x_3460.y, x_3460.x, x_3460.y) * vec4<f32>(x_3463.x, x_3463.y, x_3463.x, x_3463.y)) + vec4<f32>(x_3466.x, x_3466.y, x_3466.z, x_3466.y));
            let x_3469 : vec4<f32> = u_xlat12;
            let x_3472 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3475 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3469.x, x_3469.y) * vec2<f32>(x_3472.x, x_3472.y)) + vec2<f32>(x_3475.w, x_3475.y));
            let x_3479 : f32 = u_xlat17.y;
            u_xlat14.y = x_3479;
            let x_3482 : f32 = u_xlat15.z;
            u_xlat17.y = x_3482;
            let x_3484 : vec4<f32> = u_xlat12;
            let x_3487 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3490 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3484.x, x_3484.y, x_3484.x, x_3484.y) * vec4<f32>(x_3487.x, x_3487.y, x_3487.x, x_3487.y)) + vec4<f32>(x_3490.x, x_3490.y, x_3490.z, x_3490.y));
            let x_3493 : vec4<f32> = u_xlat12;
            let x_3496 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3499 : vec4<f32> = u_xlat17;
            let x_3501 : vec2<f32> = ((vec2<f32>(x_3493.x, x_3493.y) * vec2<f32>(x_3496.x, x_3496.y)) + vec2<f32>(x_3499.w, x_3499.y));
            let x_3502 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3501.x, x_3501.y, x_3502.z, x_3502.w);
            let x_3505 : f32 = u_xlat17.y;
            u_xlat14.z = x_3505;
            let x_3508 : vec4<f32> = u_xlat12;
            let x_3511 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3514 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3508.x, x_3508.y, x_3508.x, x_3508.y) * vec4<f32>(x_3511.x, x_3511.y, x_3511.x, x_3511.y)) + vec4<f32>(x_3514.x, x_3514.y, x_3514.x, x_3514.z));
            let x_3518 : f32 = u_xlat15.w;
            u_xlat17.y = x_3518;
            let x_3521 : vec4<f32> = u_xlat12;
            let x_3524 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3527 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3521.x, x_3521.y, x_3521.x, x_3521.y) * vec4<f32>(x_3524.x, x_3524.y, x_3524.x, x_3524.y)) + vec4<f32>(x_3527.x, x_3527.y, x_3527.z, x_3527.y));
            let x_3531 : vec4<f32> = u_xlat12;
            let x_3534 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3537 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3531.x, x_3531.y) * vec2<f32>(x_3534.x, x_3534.y)) + vec2<f32>(x_3537.w, x_3537.y));
            let x_3541 : f32 = u_xlat17.y;
            u_xlat14.w = x_3541;
            let x_3544 : vec4<f32> = u_xlat12;
            let x_3547 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3550 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3544.x, x_3544.y) * vec2<f32>(x_3547.x, x_3547.y)) + vec2<f32>(x_3550.x, x_3550.w));
            let x_3553 : vec4<f32> = u_xlat17;
            let x_3554 : vec3<f32> = vec3<f32>(x_3553.x, x_3553.z, x_3553.w);
            let x_3555 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3554.x, x_3555.y, x_3554.y, x_3554.z);
            let x_3557 : vec4<f32> = u_xlat12;
            let x_3560 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3563 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3557.x, x_3557.y, x_3557.x, x_3557.y) * vec4<f32>(x_3560.x, x_3560.y, x_3560.x, x_3560.y)) + vec4<f32>(x_3563.x, x_3563.y, x_3563.z, x_3563.y));
            let x_3567 : vec4<f32> = u_xlat12;
            let x_3570 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3573 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3567.x, x_3567.y) * vec2<f32>(x_3570.x, x_3570.y)) + vec2<f32>(x_3573.w, x_3573.y));
            let x_3577 : f32 = u_xlat14.x;
            u_xlat15.x = x_3577;
            let x_3579 : vec4<f32> = u_xlat12;
            let x_3582 : vec4<f32> = x_768.x_AdditionalShadowmapSize;
            let x_3585 : vec4<f32> = u_xlat15;
            let x_3587 : vec2<f32> = ((vec2<f32>(x_3579.x, x_3579.y) * vec2<f32>(x_3582.x, x_3582.y)) + vec2<f32>(x_3585.x, x_3585.y));
            let x_3588 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3587.x, x_3587.y, x_3588.z, x_3588.w);
            let x_3591 : vec4<f32> = u_xlat13;
            let x_3593 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3591.x, x_3591.x, x_3591.x, x_3591.x) * x_3593);
            let x_3596 : vec4<f32> = u_xlat13;
            let x_3598 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3596.y, x_3596.y, x_3596.y, x_3596.y) * x_3598);
            let x_3601 : vec4<f32> = u_xlat13;
            let x_3603 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3601.z, x_3601.z, x_3601.z, x_3601.z) * x_3603);
            let x_3605 : vec4<f32> = u_xlat13;
            let x_3607 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3605.w, x_3605.w, x_3605.w, x_3605.w) * x_3607);
            let x_3610 : vec4<f32> = u_xlat18;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.x, x_3610.y);
            let x_3613 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec43;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat86 = x_3622;
            let x_3624 : vec4<f32> = u_xlat18;
            let x_3625 : vec2<f32> = vec2<f32>(x_3624.z, x_3624.w);
            let x_3627 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3625.x, x_3625.y, x_3627);
            let x_3634 : vec3<f32> = txVec44;
            let x_3636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3634.xy, x_3634.z);
            u_xlat87 = x_3636;
            let x_3637 : f32 = u_xlat87;
            let x_3639 : f32 = u_xlat23.y;
            u_xlat87 = (x_3637 * x_3639);
            let x_3642 : f32 = u_xlat23.x;
            let x_3643 : f32 = u_xlat86;
            let x_3645 : f32 = u_xlat87;
            u_xlat86 = ((x_3642 * x_3643) + x_3645);
            let x_3648 : vec2<f32> = u_xlat64;
            let x_3650 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3648.x, x_3648.y, x_3650);
            let x_3657 : vec3<f32> = txVec45;
            let x_3659 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3657.xy, x_3657.z);
            u_xlat87 = x_3659;
            let x_3661 : f32 = u_xlat23.z;
            let x_3662 : f32 = u_xlat87;
            let x_3664 : f32 = u_xlat86;
            u_xlat86 = ((x_3661 * x_3662) + x_3664);
            let x_3667 : vec4<f32> = u_xlat21;
            let x_3668 : vec2<f32> = vec2<f32>(x_3667.x, x_3667.y);
            let x_3670 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3668.x, x_3668.y, x_3670);
            let x_3677 : vec3<f32> = txVec46;
            let x_3679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3677.xy, x_3677.z);
            u_xlat87 = x_3679;
            let x_3681 : f32 = u_xlat23.w;
            let x_3682 : f32 = u_xlat87;
            let x_3684 : f32 = u_xlat86;
            u_xlat86 = ((x_3681 * x_3682) + x_3684);
            let x_3687 : vec4<f32> = u_xlat19;
            let x_3688 : vec2<f32> = vec2<f32>(x_3687.x, x_3687.y);
            let x_3690 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3688.x, x_3688.y, x_3690);
            let x_3697 : vec3<f32> = txVec47;
            let x_3699 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3697.xy, x_3697.z);
            u_xlat87 = x_3699;
            let x_3701 : f32 = u_xlat24.x;
            let x_3702 : f32 = u_xlat87;
            let x_3704 : f32 = u_xlat86;
            u_xlat86 = ((x_3701 * x_3702) + x_3704);
            let x_3707 : vec4<f32> = u_xlat19;
            let x_3708 : vec2<f32> = vec2<f32>(x_3707.z, x_3707.w);
            let x_3710 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3708.x, x_3708.y, x_3710);
            let x_3717 : vec3<f32> = txVec48;
            let x_3719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3717.xy, x_3717.z);
            u_xlat87 = x_3719;
            let x_3721 : f32 = u_xlat24.y;
            let x_3722 : f32 = u_xlat87;
            let x_3724 : f32 = u_xlat86;
            u_xlat86 = ((x_3721 * x_3722) + x_3724);
            let x_3727 : vec4<f32> = u_xlat20;
            let x_3728 : vec2<f32> = vec2<f32>(x_3727.x, x_3727.y);
            let x_3730 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3728.x, x_3728.y, x_3730);
            let x_3737 : vec3<f32> = txVec49;
            let x_3739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3737.xy, x_3737.z);
            u_xlat87 = x_3739;
            let x_3741 : f32 = u_xlat24.z;
            let x_3742 : f32 = u_xlat87;
            let x_3744 : f32 = u_xlat86;
            u_xlat86 = ((x_3741 * x_3742) + x_3744);
            let x_3747 : vec4<f32> = u_xlat21;
            let x_3748 : vec2<f32> = vec2<f32>(x_3747.z, x_3747.w);
            let x_3750 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3748.x, x_3748.y, x_3750);
            let x_3757 : vec3<f32> = txVec50;
            let x_3759 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3757.xy, x_3757.z);
            u_xlat87 = x_3759;
            let x_3761 : f32 = u_xlat24.w;
            let x_3762 : f32 = u_xlat87;
            let x_3764 : f32 = u_xlat86;
            u_xlat86 = ((x_3761 * x_3762) + x_3764);
            let x_3767 : vec4<f32> = u_xlat22;
            let x_3768 : vec2<f32> = vec2<f32>(x_3767.x, x_3767.y);
            let x_3770 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3768.x, x_3768.y, x_3770);
            let x_3777 : vec3<f32> = txVec51;
            let x_3779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3777.xy, x_3777.z);
            u_xlat87 = x_3779;
            let x_3781 : f32 = u_xlat25.x;
            let x_3782 : f32 = u_xlat87;
            let x_3784 : f32 = u_xlat86;
            u_xlat86 = ((x_3781 * x_3782) + x_3784);
            let x_3787 : vec4<f32> = u_xlat22;
            let x_3788 : vec2<f32> = vec2<f32>(x_3787.z, x_3787.w);
            let x_3790 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3788.x, x_3788.y, x_3790);
            let x_3797 : vec3<f32> = txVec52;
            let x_3799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3797.xy, x_3797.z);
            u_xlat87 = x_3799;
            let x_3801 : f32 = u_xlat25.y;
            let x_3802 : f32 = u_xlat87;
            let x_3804 : f32 = u_xlat86;
            u_xlat86 = ((x_3801 * x_3802) + x_3804);
            let x_3807 : vec2<f32> = u_xlat40;
            let x_3809 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3807.x, x_3807.y, x_3809);
            let x_3816 : vec3<f32> = txVec53;
            let x_3818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3816.xy, x_3816.z);
            u_xlat87 = x_3818;
            let x_3820 : f32 = u_xlat25.z;
            let x_3821 : f32 = u_xlat87;
            let x_3823 : f32 = u_xlat86;
            u_xlat86 = ((x_3820 * x_3821) + x_3823);
            let x_3826 : vec2<f32> = u_xlat72;
            let x_3828 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3826.x, x_3826.y, x_3828);
            let x_3835 : vec3<f32> = txVec54;
            let x_3837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3835.xy, x_3835.z);
            u_xlat87 = x_3837;
            let x_3839 : f32 = u_xlat25.w;
            let x_3840 : f32 = u_xlat87;
            let x_3842 : f32 = u_xlat86;
            u_xlat86 = ((x_3839 * x_3840) + x_3842);
            let x_3845 : vec4<f32> = u_xlat17;
            let x_3846 : vec2<f32> = vec2<f32>(x_3845.x, x_3845.y);
            let x_3848 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3846.x, x_3846.y, x_3848);
            let x_3855 : vec3<f32> = txVec55;
            let x_3857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3855.xy, x_3855.z);
            u_xlat87 = x_3857;
            let x_3859 : f32 = u_xlat13.x;
            let x_3860 : f32 = u_xlat87;
            let x_3862 : f32 = u_xlat86;
            u_xlat86 = ((x_3859 * x_3860) + x_3862);
            let x_3865 : vec4<f32> = u_xlat17;
            let x_3866 : vec2<f32> = vec2<f32>(x_3865.z, x_3865.w);
            let x_3868 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3866.x, x_3866.y, x_3868);
            let x_3875 : vec3<f32> = txVec56;
            let x_3877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3875.xy, x_3875.z);
            u_xlat87 = x_3877;
            let x_3879 : f32 = u_xlat13.y;
            let x_3880 : f32 = u_xlat87;
            let x_3882 : f32 = u_xlat86;
            u_xlat86 = ((x_3879 * x_3880) + x_3882);
            let x_3885 : vec2<f32> = u_xlat67;
            let x_3887 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3885.x, x_3885.y, x_3887);
            let x_3894 : vec3<f32> = txVec57;
            let x_3896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3894.xy, x_3894.z);
            u_xlat87 = x_3896;
            let x_3898 : f32 = u_xlat13.z;
            let x_3899 : f32 = u_xlat87;
            let x_3901 : f32 = u_xlat86;
            u_xlat86 = ((x_3898 * x_3899) + x_3901);
            let x_3904 : vec4<f32> = u_xlat12;
            let x_3905 : vec2<f32> = vec2<f32>(x_3904.x, x_3904.y);
            let x_3907 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3905.x, x_3905.y, x_3907);
            let x_3914 : vec3<f32> = txVec58;
            let x_3916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3914.xy, x_3914.z);
            u_xlat87 = x_3916;
            let x_3918 : f32 = u_xlat13.w;
            let x_3919 : f32 = u_xlat87;
            let x_3921 : f32 = u_xlat86;
            u_xlat85 = ((x_3918 * x_3919) + x_3921);
          }
        }
      } else {
        let x_3925 : vec4<f32> = u_xlat11;
        let x_3926 : vec2<f32> = vec2<f32>(x_3925.x, x_3925.y);
        let x_3928 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3926.x, x_3926.y, x_3928);
        let x_3935 : vec3<f32> = txVec59;
        let x_3937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3935.xy, x_3935.z);
        u_xlat85 = x_3937;
      }
      let x_3938 : i32 = u_xlati83;
      let x_3940 : f32 = x_768.x_AdditionalShadowParams[x_3938].x;
      u_xlat86 = (1.0f + -(x_3940));
      let x_3943 : f32 = u_xlat85;
      let x_3944 : i32 = u_xlati83;
      let x_3946 : f32 = x_768.x_AdditionalShadowParams[x_3944].x;
      let x_3948 : f32 = u_xlat86;
      u_xlat85 = ((x_3943 * x_3946) + x_3948);
      let x_3951 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_3951);
      let x_3955 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3955 >= 1.0f);
      let x_3957 : bool = u_xlatb86;
      let x_3958 : bool = u_xlatb87;
      u_xlatb86 = (x_3957 | x_3958);
      let x_3960 : bool = u_xlatb86;
      let x_3961 : f32 = u_xlat85;
      u_xlat85 = select(x_3961, 1.0f, x_3960);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3964 : f32 = u_xlat85;
    u_xlat86 = (-(x_3964) + 1.0f);
    let x_3967 : f32 = u_xlat80;
    let x_3968 : f32 = u_xlat86;
    let x_3970 : f32 = u_xlat85;
    u_xlat85 = ((x_3967 * x_3968) + x_3970);
    let x_3973 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_3973 & 31i)));
    let x_3976 : i32 = u_xlati86;
    let x_3979 : f32 = x_2080.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_3976) & bitcast<u32>(x_3979)));
    let x_3983 : i32 = u_xlati86;
    if ((x_3983 != 0i)) {
      let x_3987 : i32 = u_xlati83;
      let x_3989 : f32 = x_2080.x_AdditionalLightsLightTypes[x_3987].el;
      u_xlati86 = i32(x_3989);
      let x_3992 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_3992 != 0i));
      let x_3996 : i32 = u_xlati83;
      u_xlati88 = (x_3996 << bitcast<u32>(2i));
      let x_3998 : i32 = u_xlati87;
      if ((x_3998 != 0i)) {
        let x_4002 : vec3<f32> = vs_TEXCOORD7;
        let x_4004 : i32 = u_xlati88;
        let x_4007 : i32 = u_xlati88;
        let x_4011 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4004 + 1i) / 4i)][((x_4007 + 1i) % 4i)];
        let x_4013 : vec3<f32> = (vec3<f32>(x_4002.y, x_4002.y, x_4002.y) * vec3<f32>(x_4011.x, x_4011.y, x_4011.w));
        let x_4014 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4013.x, x_4013.y, x_4013.z, x_4014.w);
        let x_4016 : i32 = u_xlati88;
        let x_4018 : i32 = u_xlati88;
        let x_4021 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[(x_4016 / 4i)][(x_4018 % 4i)];
        let x_4023 : vec3<f32> = vs_TEXCOORD7;
        let x_4026 : vec4<f32> = u_xlat11;
        let x_4028 : vec3<f32> = ((vec3<f32>(x_4021.x, x_4021.y, x_4021.w) * vec3<f32>(x_4023.x, x_4023.x, x_4023.x)) + vec3<f32>(x_4026.x, x_4026.y, x_4026.z));
        let x_4029 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4028.x, x_4028.y, x_4028.z, x_4029.w);
        let x_4031 : i32 = u_xlati88;
        let x_4034 : i32 = u_xlati88;
        let x_4038 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4031 + 2i) / 4i)][((x_4034 + 2i) % 4i)];
        let x_4040 : vec3<f32> = vs_TEXCOORD7;
        let x_4043 : vec4<f32> = u_xlat11;
        let x_4045 : vec3<f32> = ((vec3<f32>(x_4038.x, x_4038.y, x_4038.w) * vec3<f32>(x_4040.z, x_4040.z, x_4040.z)) + vec3<f32>(x_4043.x, x_4043.y, x_4043.z));
        let x_4046 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4045.x, x_4045.y, x_4045.z, x_4046.w);
        let x_4048 : vec4<f32> = u_xlat11;
        let x_4050 : i32 = u_xlati88;
        let x_4053 : i32 = u_xlati88;
        let x_4057 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4050 + 3i) / 4i)][((x_4053 + 3i) % 4i)];
        let x_4059 : vec3<f32> = (vec3<f32>(x_4048.x, x_4048.y, x_4048.z) + vec3<f32>(x_4057.x, x_4057.y, x_4057.w));
        let x_4060 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4059.x, x_4059.y, x_4059.z, x_4060.w);
        let x_4062 : vec4<f32> = u_xlat11;
        let x_4064 : vec4<f32> = u_xlat11;
        let x_4066 : vec2<f32> = (vec2<f32>(x_4062.x, x_4062.y) / vec2<f32>(x_4064.z, x_4064.z));
        let x_4067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4066.x, x_4066.y, x_4067.z, x_4067.w);
        let x_4069 : vec4<f32> = u_xlat11;
        let x_4072 : vec2<f32> = ((vec2<f32>(x_4069.x, x_4069.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4073 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4072.x, x_4072.y, x_4073.z, x_4073.w);
        let x_4075 : vec4<f32> = u_xlat11;
        let x_4079 : vec2<f32> = clamp(vec2<f32>(x_4075.x, x_4075.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4080 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4079.x, x_4079.y, x_4080.z, x_4080.w);
        let x_4082 : i32 = u_xlati83;
        let x_4084 : vec4<f32> = x_2080.x_AdditionalLightsCookieAtlasUVRects[x_4082];
        let x_4086 : vec4<f32> = u_xlat11;
        let x_4089 : i32 = u_xlati83;
        let x_4091 : vec4<f32> = x_2080.x_AdditionalLightsCookieAtlasUVRects[x_4089];
        let x_4093 : vec2<f32> = ((vec2<f32>(x_4084.x, x_4084.y) * vec2<f32>(x_4086.x, x_4086.y)) + vec2<f32>(x_4091.z, x_4091.w));
        let x_4094 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4093.x, x_4093.y, x_4094.z, x_4094.w);
      } else {
        let x_4097 : i32 = u_xlati86;
        u_xlatb86 = (x_4097 == 1i);
        let x_4099 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4099);
        let x_4101 : i32 = u_xlati86;
        if ((x_4101 != 0i)) {
          let x_4106 : vec3<f32> = vs_TEXCOORD7;
          let x_4108 : i32 = u_xlati88;
          let x_4111 : i32 = u_xlati88;
          let x_4115 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4108 + 1i) / 4i)][((x_4111 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4106.y, x_4106.y) * vec2<f32>(x_4115.x, x_4115.y));
          let x_4118 : i32 = u_xlati88;
          let x_4120 : i32 = u_xlati88;
          let x_4123 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[(x_4118 / 4i)][(x_4120 % 4i)];
          let x_4125 : vec3<f32> = vs_TEXCOORD7;
          let x_4128 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4123.x, x_4123.y) * vec2<f32>(x_4125.x, x_4125.x)) + x_4128);
          let x_4130 : i32 = u_xlati88;
          let x_4133 : i32 = u_xlati88;
          let x_4137 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4130 + 2i) / 4i)][((x_4133 + 2i) % 4i)];
          let x_4139 : vec3<f32> = vs_TEXCOORD7;
          let x_4142 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4137.x, x_4137.y) * vec2<f32>(x_4139.z, x_4139.z)) + x_4142);
          let x_4144 : vec2<f32> = u_xlat63;
          let x_4145 : i32 = u_xlati88;
          let x_4148 : i32 = u_xlati88;
          let x_4152 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4145 + 3i) / 4i)][((x_4148 + 3i) % 4i)];
          u_xlat63 = (x_4144 + vec2<f32>(x_4152.x, x_4152.y));
          let x_4155 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4155 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4158 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4158);
          let x_4160 : i32 = u_xlati83;
          let x_4162 : vec4<f32> = x_2080.x_AdditionalLightsCookieAtlasUVRects[x_4160];
          let x_4164 : vec2<f32> = u_xlat63;
          let x_4166 : i32 = u_xlati83;
          let x_4168 : vec4<f32> = x_2080.x_AdditionalLightsCookieAtlasUVRects[x_4166];
          let x_4170 : vec2<f32> = ((vec2<f32>(x_4162.x, x_4162.y) * x_4164) + vec2<f32>(x_4168.z, x_4168.w));
          let x_4171 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4170.x, x_4170.y, x_4171.z, x_4171.w);
        } else {
          let x_4174 : vec3<f32> = vs_TEXCOORD7;
          let x_4176 : i32 = u_xlati88;
          let x_4179 : i32 = u_xlati88;
          let x_4183 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4176 + 1i) / 4i)][((x_4179 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4174.y, x_4174.y, x_4174.y, x_4174.y) * x_4183);
          let x_4185 : i32 = u_xlati88;
          let x_4187 : i32 = u_xlati88;
          let x_4190 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[(x_4185 / 4i)][(x_4187 % 4i)];
          let x_4191 : vec3<f32> = vs_TEXCOORD7;
          let x_4194 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4190 * vec4<f32>(x_4191.x, x_4191.x, x_4191.x, x_4191.x)) + x_4194);
          let x_4196 : i32 = u_xlati88;
          let x_4199 : i32 = u_xlati88;
          let x_4203 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4196 + 2i) / 4i)][((x_4199 + 2i) % 4i)];
          let x_4204 : vec3<f32> = vs_TEXCOORD7;
          let x_4207 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4203 * vec4<f32>(x_4204.z, x_4204.z, x_4204.z, x_4204.z)) + x_4207);
          let x_4209 : vec4<f32> = u_xlat12;
          let x_4210 : i32 = u_xlati88;
          let x_4213 : i32 = u_xlati88;
          let x_4217 : vec4<f32> = x_2080.x_AdditionalLightsWorldToLights[((x_4210 + 3i) / 4i)][((x_4213 + 3i) % 4i)];
          u_xlat12 = (x_4209 + x_4217);
          let x_4219 : vec4<f32> = u_xlat12;
          let x_4221 : vec4<f32> = u_xlat12;
          let x_4223 : vec3<f32> = (vec3<f32>(x_4219.x, x_4219.y, x_4219.z) / vec3<f32>(x_4221.w, x_4221.w, x_4221.w));
          let x_4224 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4223.x, x_4223.y, x_4223.z, x_4224.w);
          let x_4226 : vec4<f32> = u_xlat12;
          let x_4228 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4226.x, x_4226.y, x_4226.z), vec3<f32>(x_4228.x, x_4228.y, x_4228.z));
          let x_4231 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4231);
          let x_4233 : f32 = u_xlat86;
          let x_4235 : vec4<f32> = u_xlat12;
          let x_4237 : vec3<f32> = (vec3<f32>(x_4233, x_4233, x_4233) * vec3<f32>(x_4235.x, x_4235.y, x_4235.z));
          let x_4238 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4237.x, x_4237.y, x_4237.z, x_4238.w);
          let x_4240 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4240.x, x_4240.y, x_4240.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4245 : f32 = u_xlat86;
          u_xlat86 = max(x_4245, 0.00000099999999747524f);
          let x_4248 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4248);
          let x_4250 : f32 = u_xlat86;
          let x_4252 : vec4<f32> = u_xlat12;
          let x_4254 : vec3<f32> = (vec3<f32>(x_4250, x_4250, x_4250) * vec3<f32>(x_4252.z, x_4252.x, x_4252.y));
          let x_4255 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4254.x, x_4254.y, x_4254.z, x_4255.w);
          let x_4258 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4258);
          let x_4262 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4262, 0.0f, 1.0f);
          let x_4266 : vec4<f32> = u_xlat13;
          let x_4268 : vec4<bool> = (vec4<f32>(x_4266.y, x_4266.z, x_4266.y, x_4266.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4268.x, x_4268.y);
          let x_4271 : bool = u_xlatb63.x;
          if (x_4271) {
            let x_4276 : f32 = u_xlat13.x;
            x_4272 = x_4276;
          } else {
            let x_4279 : f32 = u_xlat13.x;
            x_4272 = -(x_4279);
          }
          let x_4281 : f32 = x_4272;
          u_xlat63.x = x_4281;
          let x_4284 : bool = u_xlatb63.y;
          if (x_4284) {
            let x_4289 : f32 = u_xlat13.x;
            x_4285 = x_4289;
          } else {
            let x_4292 : f32 = u_xlat13.x;
            x_4285 = -(x_4292);
          }
          let x_4294 : f32 = x_4285;
          u_xlat63.y = x_4294;
          let x_4296 : vec4<f32> = u_xlat12;
          let x_4298 : f32 = u_xlat86;
          let x_4301 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4296.x, x_4296.y) * vec2<f32>(x_4298, x_4298)) + x_4301);
          let x_4303 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4303 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4306 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4306, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4310 : i32 = u_xlati83;
          let x_4312 : vec4<f32> = x_2080.x_AdditionalLightsCookieAtlasUVRects[x_4310];
          let x_4314 : vec2<f32> = u_xlat63;
          let x_4316 : i32 = u_xlati83;
          let x_4318 : vec4<f32> = x_2080.x_AdditionalLightsCookieAtlasUVRects[x_4316];
          let x_4320 : vec2<f32> = ((vec2<f32>(x_4312.x, x_4312.y) * x_4314) + vec2<f32>(x_4318.z, x_4318.w));
          let x_4321 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4320.x, x_4320.y, x_4321.z, x_4321.w);
        }
      }
      let x_4328 : vec4<f32> = u_xlat11;
      let x_4330 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4328.x, x_4328.y), 0.0f);
      u_xlat11 = x_4330;
      let x_4332 : bool = u_xlatb7.y;
      if (x_4332) {
        let x_4337 : f32 = u_xlat11.w;
        x_4333 = x_4337;
      } else {
        let x_4340 : f32 = u_xlat11.x;
        x_4333 = x_4340;
      }
      let x_4341 : f32 = x_4333;
      u_xlat86 = x_4341;
      let x_4343 : bool = u_xlatb7.x;
      if (x_4343) {
        let x_4347 : vec4<f32> = u_xlat11;
        x_4344 = vec3<f32>(x_4347.x, x_4347.y, x_4347.z);
      } else {
        let x_4350 : f32 = u_xlat86;
        x_4344 = vec3<f32>(x_4350, x_4350, x_4350);
      }
      let x_4352 : vec3<f32> = x_4344;
      let x_4353 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4352.x, x_4352.y, x_4352.z, x_4353.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4359 : vec4<f32> = u_xlat11;
    let x_4361 : i32 = u_xlati83;
    let x_4363 : vec4<f32> = x_2555.x_AdditionalLightsColor[x_4361];
    let x_4365 : vec3<f32> = (vec3<f32>(x_4359.x, x_4359.y, x_4359.z) * vec3<f32>(x_4363.x, x_4363.y, x_4363.z));
    let x_4366 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4365.x, x_4365.y, x_4365.z, x_4366.w);
    let x_4368 : f32 = u_xlat84;
    let x_4369 : f32 = u_xlat85;
    u_xlat83 = (x_4368 * x_4369);
    let x_4371 : vec4<f32> = u_xlat1;
    let x_4373 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4371.x, x_4371.y, x_4371.z), vec3<f32>(x_4373.x, x_4373.y, x_4373.z));
    let x_4376 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4376, 0.0f, 1.0f);
    let x_4378 : f32 = u_xlat83;
    let x_4379 : f32 = u_xlat84;
    u_xlat83 = (x_4378 * x_4379);
    let x_4381 : f32 = u_xlat83;
    let x_4383 : vec4<f32> = u_xlat11;
    let x_4385 : vec3<f32> = (vec3<f32>(x_4381, x_4381, x_4381) * vec3<f32>(x_4383.x, x_4383.y, x_4383.z));
    let x_4386 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4385.x, x_4385.y, x_4385.z, x_4386.w);
    let x_4388 : vec4<f32> = u_xlat9;
    let x_4390 : f32 = u_xlat59;
    let x_4393 : vec3<f32> = u_xlat2;
    let x_4394 : vec3<f32> = ((vec3<f32>(x_4388.x, x_4388.y, x_4388.z) * vec3<f32>(x_4390, x_4390, x_4390)) + x_4393);
    let x_4395 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4394.x, x_4394.y, x_4394.z, x_4395.w);
    let x_4397 : vec4<f32> = u_xlat9;
    let x_4399 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4397.x, x_4397.y, x_4397.z), vec3<f32>(x_4399.x, x_4399.y, x_4399.z));
    let x_4402 : f32 = u_xlat83;
    u_xlat83 = max(x_4402, 1.17549435e-38f);
    let x_4404 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4404);
    let x_4406 : f32 = u_xlat83;
    let x_4408 : vec4<f32> = u_xlat9;
    let x_4410 : vec3<f32> = (vec3<f32>(x_4406, x_4406, x_4406) * vec3<f32>(x_4408.x, x_4408.y, x_4408.z));
    let x_4411 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4410.x, x_4410.y, x_4410.z, x_4411.w);
    let x_4413 : vec4<f32> = u_xlat1;
    let x_4415 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4413.x, x_4413.y, x_4413.z), vec3<f32>(x_4415.x, x_4415.y, x_4415.z));
    let x_4418 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4418, 0.0f, 1.0f);
    let x_4420 : vec4<f32> = u_xlat10;
    let x_4422 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4420.x, x_4420.y, x_4420.z), vec3<f32>(x_4422.x, x_4422.y, x_4422.z));
    let x_4425 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4425, 0.0f, 1.0f);
    let x_4427 : f32 = u_xlat83;
    let x_4428 : f32 = u_xlat83;
    u_xlat83 = (x_4427 * x_4428);
    let x_4430 : f32 = u_xlat83;
    let x_4432 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4430 * x_4432) + 1.00001001358032226562f);
    let x_4435 : f32 = u_xlat84;
    let x_4436 : f32 = u_xlat84;
    u_xlat84 = (x_4435 * x_4436);
    let x_4438 : f32 = u_xlat83;
    let x_4439 : f32 = u_xlat83;
    u_xlat83 = (x_4438 * x_4439);
    let x_4441 : f32 = u_xlat84;
    u_xlat84 = max(x_4441, 0.10000000149011611938f);
    let x_4443 : f32 = u_xlat83;
    let x_4444 : f32 = u_xlat84;
    u_xlat83 = (x_4443 * x_4444);
    let x_4446 : f32 = u_xlat81;
    let x_4447 : f32 = u_xlat83;
    u_xlat83 = (x_4446 * x_4447);
    let x_4449 : f32 = u_xlat79;
    let x_4450 : f32 = u_xlat83;
    u_xlat83 = (x_4449 / x_4450);
    let x_4452 : vec4<f32> = u_xlat5;
    let x_4454 : f32 = u_xlat83;
    let x_4457 : vec4<f32> = u_xlat4;
    let x_4459 : vec3<f32> = ((vec3<f32>(x_4452.x, x_4452.y, x_4452.z) * vec3<f32>(x_4454, x_4454, x_4454)) + vec3<f32>(x_4457.x, x_4457.y, x_4457.z));
    let x_4460 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4459.x, x_4459.y, x_4459.z, x_4460.w);
    let x_4462 : vec4<f32> = u_xlat9;
    let x_4464 : vec4<f32> = u_xlat11;
    let x_4467 : vec4<f32> = u_xlat8;
    let x_4469 : vec3<f32> = ((vec3<f32>(x_4462.x, x_4462.y, x_4462.z) * vec3<f32>(x_4464.x, x_4464.y, x_4464.z)) + vec3<f32>(x_4467.x, x_4467.y, x_4467.z));
    let x_4470 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4469.x, x_4469.y, x_4469.z, x_4470.w);

    continuing {
      let x_4472 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4472 + bitcast<u32>(1i));
    }
  }
  let x_4474 : vec4<f32> = u_xlat3;
  let x_4476 : f32 = u_xlat26;
  let x_4479 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4474.x, x_4474.y, x_4474.z) * vec3<f32>(x_4476, x_4476, x_4476)) + vec3<f32>(x_4479.x, x_4479.y, x_4479.z));
  let x_4482 : vec4<f32> = u_xlat8;
  let x_4484 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4482.x, x_4482.y, x_4482.z) + x_4484);
  let x_4488 : f32 = u_xlat78;
  let x_4490 : vec3<f32> = u_xlat0;
  let x_4491 : vec3<f32> = (vec3<f32>(x_4488, x_4488, x_4488) * x_4490);
  let x_4492 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4491.x, x_4491.y, x_4491.z, x_4492.w);
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


