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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_762 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb32 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2104 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2295 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2580 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

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
  var x_2187 : f32;
  var x_2199 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2716 : f32;
  var x_2726 : f32;
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
  var x_4305 : f32;
  var x_4318 : f32;
  var x_4376 : f32;
  var x_4387 : vec3<f32>;
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
  let x_604 : f32 = vs_TEXCOORD7.y;
  let x_606 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat79 = (x_604 * x_606);
  let x_609 : f32 = x_29.unity_MatrixV[0i].z;
  let x_611 : f32 = vs_TEXCOORD7.x;
  let x_613 : f32 = u_xlat79;
  u_xlat79 = ((x_609 * x_611) + x_613);
  let x_616 : f32 = x_29.unity_MatrixV[2i].z;
  let x_618 : f32 = vs_TEXCOORD7.z;
  let x_620 : f32 = u_xlat79;
  u_xlat79 = ((x_616 * x_618) + x_620);
  let x_622 : f32 = u_xlat79;
  let x_625 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat79 = (x_622 + x_625);
  let x_627 : f32 = u_xlat79;
  let x_630 : f32 = x_29.x_ProjectionParams.y;
  u_xlat79 = (-(x_627) + -(x_630));
  let x_633 : f32 = u_xlat79;
  u_xlat79 = max(x_633, 0.0f);
  let x_635 : f32 = u_xlat79;
  let x_637 : f32 = x_29.unity_FogParams.x;
  u_xlat79 = (x_635 * x_637);
  let x_644 : vec4<f32> = vs_TEXCOORD0;
  let x_647 : f32 = x_29.x_GlobalMipBias.x;
  let x_648 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_644.z, x_644.w), x_647);
  u_xlat3 = x_648;
  let x_653 : vec4<f32> = vs_TEXCOORD0;
  let x_656 : f32 = x_29.x_GlobalMipBias.x;
  let x_657 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_653.z, x_653.w), x_656);
  let x_658 : vec3<f32> = vec3<f32>(x_657.x, x_657.y, x_657.z);
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_669 : vec3<f32> = u_xlat2;
  let x_670 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(x_669, vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat80;
  u_xlat80 = (x_673 + 0.5f);
  let x_675 : f32 = u_xlat80;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_683 : f32 = u_xlat3.w;
  u_xlat80 = max(x_683, 0.00009999999747378752f);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : f32 = u_xlat80;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) / vec3<f32>(x_688, x_688, x_688));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_694 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_694) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_700 : f32 = u_xlat52;
  let x_701 : f32 = u_xlat80;
  u_xlat81 = (x_700 + -(x_701));
  let x_704 : f32 = u_xlat80;
  let x_706 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat5;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_716 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = u_xlat0;
  let x_720 : vec4<f32> = u_xlat5;
  let x_725 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.x, x_718.x) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : f32 = u_xlat52;
  u_xlat0.x = (-(x_728) + 1.0f);
  let x_733 : f32 = u_xlat0.x;
  let x_735 : f32 = u_xlat0.x;
  u_xlat52 = (x_733 * x_735);
  let x_737 : f32 = u_xlat52;
  u_xlat52 = max(x_737, 0.0078125f);
  let x_740 : f32 = u_xlat52;
  let x_741 : f32 = u_xlat52;
  u_xlat80 = (x_740 * x_741);
  let x_743 : f32 = u_xlat81;
  u_xlat81 = (x_743 + 1.0f);
  let x_745 : f32 = u_xlat81;
  u_xlat81 = clamp(x_745, 0.0f, 1.0f);
  let x_748 : f32 = u_xlat52;
  u_xlat82 = ((x_748 * 4.0f) + 2.0f);
  let x_752 : f32 = u_xlat26;
  u_xlat26 = min(x_752, 1.0f);
  let x_764 : f32 = x_762.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_764);
  let x_766 : bool = u_xlatb83;
  if (x_766) {
    let x_770 : f32 = x_762.x_MainLightShadowParams.y;
    u_xlatb83 = (x_770 == 1.0f);
    let x_772 : bool = u_xlatb83;
    if (x_772) {
      let x_776 : vec4<f32> = vs_TEXCOORD8;
      let x_779 : vec4<f32> = x_762.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y) + x_779);
      let x_782 : vec4<f32> = u_xlat6;
      let x_783 : vec2<f32> = vec2<f32>(x_782.x, x_782.y);
      let x_785 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_783.x, x_783.y, x_785);
      let x_797 : vec3<f32> = txVec0;
      let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
      u_xlat7.x = x_799;
      let x_802 : vec4<f32> = u_xlat6;
      let x_803 : vec2<f32> = vec2<f32>(x_802.z, x_802.w);
      let x_805 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_803.x, x_803.y, x_805);
      let x_812 : vec3<f32> = txVec1;
      let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
      u_xlat7.y = x_814;
      let x_816 : vec4<f32> = vs_TEXCOORD8;
      let x_819 : vec4<f32> = x_762.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y) + x_819);
      let x_822 : vec4<f32> = u_xlat6;
      let x_823 : vec2<f32> = vec2<f32>(x_822.x, x_822.y);
      let x_825 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_823.x, x_823.y, x_825);
      let x_832 : vec3<f32> = txVec2;
      let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
      u_xlat7.z = x_834;
      let x_837 : vec4<f32> = u_xlat6;
      let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
      let x_840 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_838.x, x_838.y, x_840);
      let x_847 : vec3<f32> = txVec3;
      let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
      u_xlat7.w = x_849;
      let x_852 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_852, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_859 : f32 = x_762.x_MainLightShadowParams.y;
      u_xlatb6 = (x_859 == 2.0f);
      let x_861 : bool = u_xlatb6;
      if (x_861) {
        let x_864 : vec4<f32> = vs_TEXCOORD8;
        let x_867 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_870 : vec2<f32> = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_867.z, x_867.w)) + vec2<f32>(0.5f, 0.5f));
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat6;
        let x_875 : vec2<f32> = floor(vec2<f32>(x_873.x, x_873.y));
        let x_876 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_880 : vec4<f32> = vs_TEXCOORD8;
        let x_883 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_886 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_880.x, x_880.y) * vec2<f32>(x_883.z, x_883.w)) + -(vec2<f32>(x_886.x, x_886.y)));
        let x_890 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_890.x, x_890.x, x_890.y, x_890.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_894 : vec4<f32> = u_xlat7;
        let x_896 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_894.x, x_894.x, x_894.z, x_894.z) * vec4<f32>(x_896.x, x_896.x, x_896.z, x_896.z));
        let x_899 : vec4<f32> = u_xlat8;
        let x_903 : vec2<f32> = (vec2<f32>(x_899.y, x_899.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_903.x, x_904.y, x_903.y, x_904.w);
        let x_906 : vec4<f32> = u_xlat8;
        let x_909 : vec2<f32> = u_xlat58;
        let x_911 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.z) * vec2<f32>(0.5f, 0.5f)) + -(x_909));
        let x_912 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_915 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_915) + vec2<f32>(1.0f, 1.0f));
        let x_919 : vec2<f32> = u_xlat58;
        let x_921 : vec2<f32> = min(x_919, vec2<f32>(0.0f, 0.0f));
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat9;
        let x_927 : vec4<f32> = u_xlat9;
        let x_930 : vec2<f32> = u_xlat60;
        let x_931 : vec2<f32> = ((-(vec2<f32>(x_924.x, x_924.y)) * vec2<f32>(x_927.x, x_927.y)) + x_930);
        let x_932 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_934, vec2<f32>(0.0f, 0.0f));
        let x_936 : vec2<f32> = u_xlat58;
        let x_938 : vec2<f32> = u_xlat58;
        let x_940 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_936) * x_938) + vec2<f32>(x_940.y, x_940.w));
        let x_943 : vec4<f32> = u_xlat9;
        let x_945 : vec2<f32> = (vec2<f32>(x_943.x, x_943.y) + vec2<f32>(1.0f, 1.0f));
        let x_946 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
        let x_948 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_948 + vec2<f32>(1.0f, 1.0f));
        let x_950 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_955 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat60;
        let x_958 : vec2<f32> = (x_957 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_959 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec4<f32> = u_xlat9;
        let x_963 : vec2<f32> = (vec2<f32>(x_961.x, x_961.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_964 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        let x_966 : vec2<f32> = u_xlat58;
        let x_967 : vec2<f32> = (x_966 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_968 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_970.y, x_970.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_974 : f32 = u_xlat9.x;
        u_xlat10.z = x_974;
        let x_977 : f32 = u_xlat58.x;
        u_xlat10.w = x_977;
        let x_980 : f32 = u_xlat11.x;
        u_xlat8.z = x_980;
        let x_983 : f32 = u_xlat7.x;
        u_xlat8.w = x_983;
        let x_985 : vec4<f32> = u_xlat8;
        let x_987 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_985.z, x_985.w, x_985.x, x_985.z) + vec4<f32>(x_987.z, x_987.w, x_987.x, x_987.z));
        let x_991 : f32 = u_xlat10.y;
        u_xlat9.z = x_991;
        let x_994 : f32 = u_xlat58.y;
        u_xlat9.w = x_994;
        let x_997 : f32 = u_xlat8.y;
        u_xlat11.z = x_997;
        let x_1000 : f32 = u_xlat7.z;
        u_xlat11.w = x_1000;
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1004 : vec4<f32> = u_xlat11;
        let x_1006 : vec3<f32> = (vec3<f32>(x_1002.z, x_1002.y, x_1002.w) + vec3<f32>(x_1004.z, x_1004.y, x_1004.w));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1011 : vec4<f32> = u_xlat12;
        let x_1013 : vec3<f32> = (vec3<f32>(x_1009.x, x_1009.z, x_1009.w) / vec3<f32>(x_1011.z, x_1011.w, x_1011.y));
        let x_1014 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
        let x_1016 : vec4<f32> = u_xlat8;
        let x_1021 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat11;
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1028 : vec3<f32> = (vec3<f32>(x_1024.z, x_1024.y, x_1024.w) / vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1036.y, x_1036.x, x_1036.z) * vec3<f32>(x_1039.x, x_1039.x, x_1039.x));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1047 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * vec3<f32>(x_1047.y, x_1047.y, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1053 : f32 = u_xlat9.x;
        u_xlat8.w = x_1053;
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1058 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(x_1058.x, x_1058.y, x_1058.x, x_1058.y)) + vec4<f32>(x_1061.y, x_1061.w, x_1061.x, x_1061.w));
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.x, x_1067.y)) + vec2<f32>(x_1070.z, x_1070.w));
        let x_1074 : f32 = u_xlat8.y;
        u_xlat9.w = x_1074;
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1077 : vec2<f32> = vec2<f32>(x_1076.y, x_1076.z);
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1080 : vec4<f32> = u_xlat6;
        let x_1083 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) * vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y)) + vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1086.y));
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1092 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.w, x_1095.y, x_1095.w, x_1095.z));
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1101 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.x, x_1104.w, x_1104.z, x_1104.w));
        let x_1107 : vec4<f32> = u_xlat7;
        let x_1109 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1107.x, x_1107.x, x_1107.x, x_1107.y) * vec4<f32>(x_1109.z, x_1109.w, x_1109.y, x_1109.z));
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1115 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1113.y, x_1113.y, x_1113.z, x_1113.z) * x_1115);
        let x_1118 : f32 = u_xlat7.z;
        let x_1120 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1118 * x_1120);
        let x_1124 : vec4<f32> = u_xlat10;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.x, x_1124.y);
        let x_1127 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1135 : vec3<f32> = txVec4;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1135.xy, x_1135.z);
        u_xlat32.x = x_1137;
        let x_1140 : vec4<f32> = u_xlat10;
        let x_1141 : vec2<f32> = vec2<f32>(x_1140.z, x_1140.w);
        let x_1143 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1141.x, x_1141.y, x_1143);
        let x_1150 : vec3<f32> = txVec5;
        let x_1152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1150.xy, x_1150.z);
        u_xlat7.x = x_1152;
        let x_1155 : f32 = u_xlat7.x;
        let x_1157 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1155 * x_1157);
        let x_1161 : f32 = u_xlat13.x;
        let x_1163 : f32 = u_xlat32.x;
        let x_1166 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1161 * x_1163) + x_1166);
        let x_1170 : vec2<f32> = u_xlat58;
        let x_1172 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1170.x, x_1170.y, x_1172);
        let x_1179 : vec3<f32> = txVec6;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1179.xy, x_1179.z);
        u_xlat58.x = x_1181;
        let x_1184 : f32 = u_xlat13.z;
        let x_1186 : f32 = u_xlat58.x;
        let x_1189 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1184 * x_1186) + x_1189);
        let x_1193 : vec4<f32> = u_xlat9;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec7;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat58.x = x_1205;
        let x_1208 : f32 = u_xlat13.w;
        let x_1210 : f32 = u_xlat58.x;
        let x_1213 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1208 * x_1210) + x_1213);
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.x, x_1217.y);
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec8;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat58.x = x_1229;
        let x_1232 : f32 = u_xlat14.x;
        let x_1234 : f32 = u_xlat58.x;
        let x_1237 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1232 * x_1234) + x_1237);
        let x_1241 : vec4<f32> = u_xlat11;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec9;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat58.x = x_1253;
        let x_1256 : f32 = u_xlat14.y;
        let x_1258 : f32 = u_xlat58.x;
        let x_1261 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1256 * x_1258) + x_1261);
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.z, x_1265.w);
        let x_1268 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1275 : vec3<f32> = txVec10;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1275.xy, x_1275.z);
        u_xlat58.x = x_1277;
        let x_1280 : f32 = u_xlat14.z;
        let x_1282 : f32 = u_xlat58.x;
        let x_1285 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1280 * x_1282) + x_1285);
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.x, x_1289.y);
        let x_1292 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec11;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat58.x = x_1301;
        let x_1304 : f32 = u_xlat14.w;
        let x_1306 : f32 = u_xlat58.x;
        let x_1309 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1304 * x_1306) + x_1309);
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.z, x_1313.w);
        let x_1316 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec12;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat58.x = x_1325;
        let x_1328 : f32 = u_xlat6.x;
        let x_1330 : f32 = u_xlat58.x;
        let x_1333 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1328 * x_1330) + x_1333);
      } else {
        let x_1336 : vec4<f32> = vs_TEXCOORD8;
        let x_1339 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.z, x_1339.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1343 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1347 : vec2<f32> = floor(vec2<f32>(x_1345.x, x_1345.y));
        let x_1348 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec4<f32> = vs_TEXCOORD8;
        let x_1353 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.z, x_1353.w)) + -(vec2<f32>(x_1356.x, x_1356.y)));
        let x_1360 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1360.x, x_1360.x, x_1360.y, x_1360.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1363 : vec4<f32> = u_xlat7;
        let x_1365 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1363.x, x_1363.x, x_1363.z, x_1363.z) * vec4<f32>(x_1365.x, x_1365.x, x_1365.z, x_1365.z));
        let x_1368 : vec4<f32> = u_xlat8;
        let x_1372 : vec2<f32> = (vec2<f32>(x_1368.y, x_1368.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1373 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1373.x, x_1372.x, x_1373.z, x_1372.y);
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1378 : vec2<f32> = u_xlat58;
        let x_1380 : vec2<f32> = ((vec2<f32>(x_1375.x, x_1375.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1378));
        let x_1381 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1380.x, x_1381.y, x_1380.y, x_1381.w);
        let x_1383 : vec2<f32> = u_xlat58;
        let x_1385 : vec2<f32> = (-(x_1383) + vec2<f32>(1.0f, 1.0f));
        let x_1386 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1385.x, x_1385.y, x_1386.z, x_1386.w);
        let x_1388 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1388, vec2<f32>(0.0f, 0.0f));
        let x_1390 : vec2<f32> = u_xlat60;
        let x_1392 : vec2<f32> = u_xlat60;
        let x_1394 : vec4<f32> = u_xlat8;
        let x_1396 : vec2<f32> = ((-(x_1390) * x_1392) + vec2<f32>(x_1394.x, x_1394.y));
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
        let x_1399 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1399, vec2<f32>(0.0f, 0.0f));
        let x_1402 : vec2<f32> = u_xlat60;
        let x_1404 : vec2<f32> = u_xlat60;
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec2<f32> = ((-(x_1402) * x_1404) + vec2<f32>(x_1406.y, x_1406.w));
        let x_1409 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1408.x, x_1409.y, x_1408.y);
        let x_1411 : vec4<f32> = u_xlat8;
        let x_1414 : vec2<f32> = (vec2<f32>(x_1411.x, x_1411.y) + vec2<f32>(2.0f, 2.0f));
        let x_1415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        let x_1417 : vec3<f32> = u_xlat33;
        let x_1419 : vec2<f32> = (vec2<f32>(x_1417.x, x_1417.z) + vec2<f32>(2.0f, 2.0f));
        let x_1420 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1420.x, x_1419.x, x_1420.z, x_1419.y);
        let x_1423 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1423 * 0.08163200318813323975f);
        let x_1427 : vec4<f32> = u_xlat7;
        let x_1430 : vec3<f32> = (vec3<f32>(x_1427.z, x_1427.x, x_1427.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1431 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat8;
        let x_1436 : vec2<f32> = (vec2<f32>(x_1433.x, x_1433.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1437 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1436.x, x_1436.y, x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat11.y;
        u_xlat10.x = x_1440;
        let x_1442 : vec2<f32> = u_xlat58;
        let x_1449 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1450 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1450.x, x_1449.x, x_1450.z, x_1449.y);
        let x_1452 : vec2<f32> = u_xlat58;
        let x_1456 : vec2<f32> = ((vec2<f32>(x_1452.x, x_1452.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1457 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1456.x, x_1457.y, x_1456.y, x_1457.w);
        let x_1460 : f32 = u_xlat7.x;
        u_xlat8.y = x_1460;
        let x_1463 : f32 = u_xlat9.y;
        u_xlat8.w = x_1463;
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1466 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1465 + x_1466);
        let x_1468 : vec2<f32> = u_xlat58;
        let x_1471 : vec2<f32> = ((vec2<f32>(x_1468.y, x_1468.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1472 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1472.x, x_1471.x, x_1472.z, x_1471.y);
        let x_1474 : vec2<f32> = u_xlat58;
        let x_1477 : vec2<f32> = ((vec2<f32>(x_1474.y, x_1474.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1478 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1477.x, x_1478.y, x_1477.y, x_1478.w);
        let x_1481 : f32 = u_xlat7.y;
        u_xlat9.y = x_1481;
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1484 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1483 + x_1484);
        let x_1486 : vec4<f32> = u_xlat8;
        let x_1487 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1486 / x_1487);
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1489 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1495 : vec4<f32> = u_xlat9;
        let x_1496 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1495 / x_1496);
        let x_1498 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1498 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1500 : vec4<f32> = u_xlat8;
        let x_1503 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1500.w, x_1500.x, x_1500.y, x_1500.z) * vec4<f32>(x_1503.x, x_1503.x, x_1503.x, x_1503.x));
        let x_1506 : vec4<f32> = u_xlat9;
        let x_1509 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1506.x, x_1506.w, x_1506.y, x_1506.z) * vec4<f32>(x_1509.y, x_1509.y, x_1509.y, x_1509.y));
        let x_1512 : vec4<f32> = u_xlat8;
        let x_1513 : vec3<f32> = vec3<f32>(x_1512.y, x_1512.z, x_1512.w);
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1513.x, x_1514.y, x_1513.y, x_1513.z);
        let x_1517 : f32 = u_xlat9.x;
        u_xlat11.y = x_1517;
        let x_1519 : vec4<f32> = u_xlat6;
        let x_1522 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y) * vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y)) + vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1525.y));
        let x_1528 : vec4<f32> = u_xlat6;
        let x_1531 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1531.x, x_1531.y)) + vec2<f32>(x_1534.w, x_1534.y));
        let x_1538 : f32 = u_xlat11.y;
        u_xlat8.y = x_1538;
        let x_1541 : f32 = u_xlat9.z;
        u_xlat11.y = x_1541;
        let x_1543 : vec4<f32> = u_xlat6;
        let x_1546 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1543.x, x_1543.y, x_1543.x, x_1543.y) * vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y)) + vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1549.y));
        let x_1552 : vec4<f32> = u_xlat6;
        let x_1555 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat11;
        let x_1560 : vec2<f32> = ((vec2<f32>(x_1552.x, x_1552.y) * vec2<f32>(x_1555.x, x_1555.y)) + vec2<f32>(x_1558.w, x_1558.y));
        let x_1561 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1560.x, x_1560.y, x_1561.z, x_1561.w);
        let x_1564 : f32 = u_xlat11.y;
        u_xlat8.z = x_1564;
        let x_1567 : vec4<f32> = u_xlat6;
        let x_1570 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1573 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1567.x, x_1567.y, x_1567.x, x_1567.y) * vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y)) + vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.z));
        let x_1577 : f32 = u_xlat9.w;
        u_xlat11.y = x_1577;
        let x_1580 : vec4<f32> = u_xlat6;
        let x_1583 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1580.x, x_1580.y, x_1580.x, x_1580.y) * vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y)) + vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1586.y));
        let x_1590 : vec4<f32> = u_xlat6;
        let x_1593 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1590.x, x_1590.y) * vec2<f32>(x_1593.x, x_1593.y)) + vec2<f32>(x_1596.w, x_1596.y));
        let x_1600 : f32 = u_xlat11.y;
        u_xlat8.w = x_1600;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.x, x_1609.w));
        let x_1612 : vec4<f32> = u_xlat11;
        let x_1613 : vec3<f32> = vec3<f32>(x_1612.x, x_1612.z, x_1612.w);
        let x_1614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1613.x, x_1614.y, x_1613.y, x_1613.z);
        let x_1616 : vec4<f32> = u_xlat6;
        let x_1619 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1616.x, x_1616.y, x_1616.x, x_1616.y) * vec4<f32>(x_1619.x, x_1619.y, x_1619.x, x_1619.y)) + vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1622.y));
        let x_1626 : vec4<f32> = u_xlat6;
        let x_1629 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1632 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1626.x, x_1626.y) * vec2<f32>(x_1629.x, x_1629.y)) + vec2<f32>(x_1632.w, x_1632.y));
        let x_1636 : f32 = u_xlat8.x;
        u_xlat9.x = x_1636;
        let x_1638 : vec4<f32> = u_xlat6;
        let x_1641 : vec4<f32> = x_762.x_MainLightShadowmapSize;
        let x_1644 : vec4<f32> = u_xlat9;
        let x_1646 : vec2<f32> = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(x_1641.x, x_1641.y)) + vec2<f32>(x_1644.x, x_1644.y));
        let x_1647 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1646.x, x_1646.y, x_1647.z, x_1647.w);
        let x_1650 : vec4<f32> = u_xlat7;
        let x_1652 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1650.x, x_1650.x, x_1650.x, x_1650.x) * x_1652);
        let x_1655 : vec4<f32> = u_xlat7;
        let x_1657 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1655.y, x_1655.y, x_1655.y, x_1655.y) * x_1657);
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1662 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1660.z, x_1660.z, x_1660.z, x_1660.z) * x_1662);
        let x_1664 : vec4<f32> = u_xlat7;
        let x_1666 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1664.w, x_1664.w, x_1664.w, x_1664.w) * x_1666);
        let x_1669 : vec4<f32> = u_xlat12;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.x, x_1669.y);
        let x_1672 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec13;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat8.x = x_1681;
        let x_1684 : vec4<f32> = u_xlat12;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.z, x_1684.w);
        let x_1687 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1695 : vec3<f32> = txVec14;
        let x_1697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1695.xy, x_1695.z);
        u_xlat86 = x_1697;
        let x_1698 : f32 = u_xlat86;
        let x_1700 : f32 = u_xlat17.y;
        u_xlat86 = (x_1698 * x_1700);
        let x_1703 : f32 = u_xlat17.x;
        let x_1705 : f32 = u_xlat8.x;
        let x_1707 : f32 = u_xlat86;
        u_xlat8.x = ((x_1703 * x_1705) + x_1707);
        let x_1711 : vec2<f32> = u_xlat58;
        let x_1713 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec15;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1720.xy, x_1720.z);
        u_xlat58.x = x_1722;
        let x_1725 : f32 = u_xlat17.z;
        let x_1727 : f32 = u_xlat58.x;
        let x_1730 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1725 * x_1727) + x_1730);
        let x_1734 : vec4<f32> = u_xlat15;
        let x_1735 : vec2<f32> = vec2<f32>(x_1734.x, x_1734.y);
        let x_1737 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1745 : vec3<f32> = txVec16;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat84 = x_1747;
        let x_1749 : f32 = u_xlat17.w;
        let x_1750 : f32 = u_xlat84;
        let x_1753 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1749 * x_1750) + x_1753);
        let x_1757 : vec4<f32> = u_xlat13;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
        let x_1760 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec17;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat84 = x_1769;
        let x_1771 : f32 = u_xlat18.x;
        let x_1772 : f32 = u_xlat84;
        let x_1775 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1771 * x_1772) + x_1775);
        let x_1779 : vec4<f32> = u_xlat13;
        let x_1780 : vec2<f32> = vec2<f32>(x_1779.z, x_1779.w);
        let x_1782 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec18;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1789.xy, x_1789.z);
        u_xlat84 = x_1791;
        let x_1793 : f32 = u_xlat18.y;
        let x_1794 : f32 = u_xlat84;
        let x_1797 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1793 * x_1794) + x_1797);
        let x_1801 : vec4<f32> = u_xlat14;
        let x_1802 : vec2<f32> = vec2<f32>(x_1801.x, x_1801.y);
        let x_1804 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
        let x_1811 : vec3<f32> = txVec19;
        let x_1813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1811.xy, x_1811.z);
        u_xlat84 = x_1813;
        let x_1815 : f32 = u_xlat18.z;
        let x_1816 : f32 = u_xlat84;
        let x_1819 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1815 * x_1816) + x_1819);
        let x_1823 : vec4<f32> = u_xlat15;
        let x_1824 : vec2<f32> = vec2<f32>(x_1823.z, x_1823.w);
        let x_1826 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1824.x, x_1824.y, x_1826);
        let x_1833 : vec3<f32> = txVec20;
        let x_1835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1833.xy, x_1833.z);
        u_xlat84 = x_1835;
        let x_1837 : f32 = u_xlat18.w;
        let x_1838 : f32 = u_xlat84;
        let x_1841 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1837 * x_1838) + x_1841);
        let x_1845 : vec4<f32> = u_xlat16;
        let x_1846 : vec2<f32> = vec2<f32>(x_1845.x, x_1845.y);
        let x_1848 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1846.x, x_1846.y, x_1848);
        let x_1855 : vec3<f32> = txVec21;
        let x_1857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1855.xy, x_1855.z);
        u_xlat84 = x_1857;
        let x_1859 : f32 = u_xlat19.x;
        let x_1860 : f32 = u_xlat84;
        let x_1863 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1859 * x_1860) + x_1863);
        let x_1867 : vec4<f32> = u_xlat16;
        let x_1868 : vec2<f32> = vec2<f32>(x_1867.z, x_1867.w);
        let x_1870 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
        let x_1877 : vec3<f32> = txVec22;
        let x_1879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1877.xy, x_1877.z);
        u_xlat84 = x_1879;
        let x_1881 : f32 = u_xlat19.y;
        let x_1882 : f32 = u_xlat84;
        let x_1885 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1881 * x_1882) + x_1885);
        let x_1889 : vec2<f32> = u_xlat34;
        let x_1891 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec23;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1898.xy, x_1898.z);
        u_xlat84 = x_1900;
        let x_1902 : f32 = u_xlat19.z;
        let x_1903 : f32 = u_xlat84;
        let x_1906 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1902 * x_1903) + x_1906);
        let x_1910 : vec2<f32> = u_xlat66;
        let x_1912 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
        let x_1919 : vec3<f32> = txVec24;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1919.xy, x_1919.z);
        u_xlat84 = x_1921;
        let x_1923 : f32 = u_xlat19.w;
        let x_1924 : f32 = u_xlat84;
        let x_1927 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1923 * x_1924) + x_1927);
        let x_1931 : vec4<f32> = u_xlat11;
        let x_1932 : vec2<f32> = vec2<f32>(x_1931.x, x_1931.y);
        let x_1934 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
        let x_1941 : vec3<f32> = txVec25;
        let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1941.xy, x_1941.z);
        u_xlat84 = x_1943;
        let x_1945 : f32 = u_xlat7.x;
        let x_1946 : f32 = u_xlat84;
        let x_1949 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1945 * x_1946) + x_1949);
        let x_1953 : vec4<f32> = u_xlat11;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.z, x_1953.w);
        let x_1956 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec26;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat84 = x_1965;
        let x_1967 : f32 = u_xlat7.y;
        let x_1968 : f32 = u_xlat84;
        let x_1971 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1967 * x_1968) + x_1971);
        let x_1975 : vec2<f32> = u_xlat61;
        let x_1977 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1975.x, x_1975.y, x_1977);
        let x_1984 : vec3<f32> = txVec27;
        let x_1986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1984.xy, x_1984.z);
        u_xlat84 = x_1986;
        let x_1988 : f32 = u_xlat7.z;
        let x_1989 : f32 = u_xlat84;
        let x_1992 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1988 * x_1989) + x_1992);
        let x_1996 : vec4<f32> = u_xlat6;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.x, x_1996.y);
        let x_1999 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec28;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
        u_xlat6.x = x_2008;
        let x_2011 : f32 = u_xlat7.w;
        let x_2013 : f32 = u_xlat6.x;
        let x_2016 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2011 * x_2013) + x_2016);
      }
    }
  } else {
    let x_2020 : vec4<f32> = vs_TEXCOORD8;
    let x_2021 : vec2<f32> = vec2<f32>(x_2020.x, x_2020.y);
    let x_2023 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
    let x_2030 : vec3<f32> = txVec29;
    let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
    u_xlat83 = x_2032;
  }
  let x_2034 : f32 = x_762.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2034) + 1.0f);
  let x_2038 : f32 = u_xlat83;
  let x_2040 : f32 = x_762.x_MainLightShadowParams.x;
  let x_2043 : f32 = u_xlat6.x;
  u_xlat83 = ((x_2038 * x_2040) + x_2043);
  let x_2046 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2046);
  let x_2052 : f32 = vs_TEXCOORD8.z;
  u_xlatb32.x = (x_2052 >= 1.0f);
  let x_2056 : bool = u_xlatb32.x;
  let x_2057 : bool = u_xlatb6;
  u_xlatb6 = (x_2056 | x_2057);
  let x_2059 : bool = u_xlatb6;
  let x_2060 : f32 = u_xlat83;
  u_xlat83 = select(x_2060, 1.0f, x_2059);
  let x_2062 : vec3<f32> = vs_TEXCOORD7;
  let x_2064 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2066 : vec3<f32> = (x_2062 + -(x_2064));
  let x_2067 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2069 : vec4<f32> = u_xlat6;
  let x_2071 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2069.x, x_2069.y, x_2069.z), vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2076 : f32 = u_xlat6.x;
  let x_2078 : f32 = x_762.x_MainLightShadowParams.z;
  let x_2081 : f32 = x_762.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_2076 * x_2078) + x_2081);
  let x_2085 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_2085, 0.0f, 1.0f);
  let x_2088 : f32 = u_xlat83;
  u_xlat58.x = (-(x_2088) + 1.0f);
  let x_2093 : f32 = u_xlat32.x;
  let x_2095 : f32 = u_xlat58.x;
  let x_2097 : f32 = u_xlat83;
  u_xlat83 = ((x_2093 * x_2095) + x_2097);
  let x_2106 : f32 = x_2104.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_2106 == -1.0f));
  let x_2110 : bool = u_xlatb32.x;
  if (x_2110) {
    let x_2113 : vec3<f32> = vs_TEXCOORD7;
    let x_2116 : vec4<f32> = x_2104.x_MainLightWorldToLight[1i];
    let x_2118 : vec2<f32> = (vec2<f32>(x_2113.y, x_2113.y) * vec2<f32>(x_2116.x, x_2116.y));
    let x_2119 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2118.x, x_2118.y, x_2119.z);
    let x_2122 : vec4<f32> = x_2104.x_MainLightWorldToLight[0i];
    let x_2124 : vec3<f32> = vs_TEXCOORD7;
    let x_2127 : vec3<f32> = u_xlat32;
    let x_2129 : vec2<f32> = ((vec2<f32>(x_2122.x, x_2122.y) * vec2<f32>(x_2124.x, x_2124.x)) + vec2<f32>(x_2127.x, x_2127.y));
    let x_2130 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2129.x, x_2129.y, x_2130.z);
    let x_2133 : vec4<f32> = x_2104.x_MainLightWorldToLight[2i];
    let x_2135 : vec3<f32> = vs_TEXCOORD7;
    let x_2138 : vec3<f32> = u_xlat32;
    let x_2140 : vec2<f32> = ((vec2<f32>(x_2133.x, x_2133.y) * vec2<f32>(x_2135.z, x_2135.z)) + vec2<f32>(x_2138.x, x_2138.y));
    let x_2141 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2140.x, x_2140.y, x_2141.z);
    let x_2143 : vec3<f32> = u_xlat32;
    let x_2146 : vec4<f32> = x_2104.x_MainLightWorldToLight[3i];
    let x_2148 : vec2<f32> = (vec2<f32>(x_2143.x, x_2143.y) + vec2<f32>(x_2146.x, x_2146.y));
    let x_2149 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2148.x, x_2148.y, x_2149.z);
    let x_2151 : vec3<f32> = u_xlat32;
    let x_2154 : vec2<f32> = ((vec2<f32>(x_2151.x, x_2151.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2155 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2154.x, x_2154.y, x_2155.z);
    let x_2162 : vec3<f32> = u_xlat32;
    let x_2165 : f32 = x_29.x_GlobalMipBias.x;
    let x_2166 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2162.x, x_2162.y), x_2165);
    u_xlat7 = x_2166;
    let x_2168 : f32 = x_2104.x_MainLightCookieTextureFormat;
    let x_2170 : f32 = x_2104.x_MainLightCookieTextureFormat;
    let x_2172 : f32 = x_2104.x_MainLightCookieTextureFormat;
    let x_2174 : f32 = x_2104.x_MainLightCookieTextureFormat;
    let x_2175 : vec4<f32> = vec4<f32>(x_2168, x_2170, x_2172, x_2174);
    let x_2182 : vec4<bool> = (vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2175.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_2182.x, x_2182.y);
    let x_2185 : bool = u_xlatb32.y;
    if (x_2185) {
      let x_2191 : f32 = u_xlat7.w;
      x_2187 = x_2191;
    } else {
      let x_2194 : f32 = u_xlat7.x;
      x_2187 = x_2194;
    }
    let x_2195 : f32 = x_2187;
    u_xlat58.x = x_2195;
    let x_2198 : bool = u_xlatb32.x;
    if (x_2198) {
      let x_2202 : vec4<f32> = u_xlat7;
      x_2199 = vec3<f32>(x_2202.x, x_2202.y, x_2202.z);
    } else {
      let x_2205 : vec2<f32> = u_xlat58;
      x_2199 = vec3<f32>(x_2205.x, x_2205.x, x_2205.x);
    }
    let x_2207 : vec3<f32> = x_2199;
    u_xlat32 = x_2207;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_2212 : vec3<f32> = u_xlat32;
  let x_2214 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat32 = (x_2212 * vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2217 : vec4<f32> = u_xlat1;
  let x_2220 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_2217.x, x_2217.y, x_2217.z)), x_2220);
  let x_2224 : f32 = u_xlat7.x;
  let x_2226 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2224 + x_2226);
  let x_2229 : vec3<f32> = u_xlat2;
  let x_2230 : vec4<f32> = u_xlat7;
  let x_2234 : vec4<f32> = u_xlat1;
  let x_2237 : vec3<f32> = ((x_2229 * -(vec3<f32>(x_2230.x, x_2230.x, x_2230.x))) + -(vec3<f32>(x_2234.x, x_2234.y, x_2234.z)));
  let x_2238 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
  let x_2241 : vec3<f32> = u_xlat2;
  let x_2242 : vec4<f32> = u_xlat1;
  u_xlat85 = dot(x_2241, vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
  let x_2245 : f32 = u_xlat85;
  u_xlat85 = clamp(x_2245, 0.0f, 1.0f);
  let x_2247 : f32 = u_xlat85;
  u_xlat85 = (-(x_2247) + 1.0f);
  let x_2250 : f32 = u_xlat85;
  let x_2251 : f32 = u_xlat85;
  u_xlat85 = (x_2250 * x_2251);
  let x_2253 : f32 = u_xlat85;
  let x_2254 : f32 = u_xlat85;
  u_xlat85 = (x_2253 * x_2254);
  let x_2257 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_2257) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2265 : f32 = u_xlat0.x;
  let x_2267 : f32 = u_xlat8.x;
  u_xlat0.x = (x_2265 * x_2267);
  let x_2271 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2271 * 6.0f);
  let x_2283 : vec4<f32> = u_xlat7;
  let x_2286 : f32 = u_xlat0.x;
  let x_2287 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2283.x, x_2283.y, x_2283.z), x_2286);
  u_xlat8 = x_2287;
  let x_2289 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2289 + -1.0f);
  let x_2297 : f32 = x_2295.unity_SpecCube0_HDR.w;
  let x_2299 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2297 * x_2299) + 1.0f);
  let x_2304 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2304, 0.0f);
  let x_2308 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2308);
  let x_2312 : f32 = u_xlat0.x;
  let x_2314 : f32 = x_2295.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2312 * x_2314);
  let x_2318 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2318);
  let x_2322 : f32 = u_xlat0.x;
  let x_2324 : f32 = x_2295.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2322 * x_2324);
  let x_2327 : vec4<f32> = u_xlat8;
  let x_2329 : vec3<f32> = u_xlat0;
  let x_2331 : vec3<f32> = (vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329.x, x_2329.x, x_2329.x));
  let x_2332 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
  let x_2334 : f32 = u_xlat52;
  let x_2336 : f32 = u_xlat52;
  let x_2340 : vec2<f32> = ((vec2<f32>(x_2334, x_2334) * vec2<f32>(x_2336, x_2336)) + vec2<f32>(-1.0f, 1.0f));
  let x_2341 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2340.x, x_2341.y, x_2340.y);
  let x_2344 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2344);
  let x_2346 : vec4<f32> = u_xlat5;
  let x_2349 : f32 = u_xlat81;
  let x_2351 : vec3<f32> = (-(vec3<f32>(x_2346.x, x_2346.y, x_2346.z)) + vec3<f32>(x_2349, x_2349, x_2349));
  let x_2352 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
  let x_2354 : f32 = u_xlat85;
  let x_2356 : vec4<f32> = u_xlat8;
  let x_2359 : vec4<f32> = u_xlat5;
  let x_2361 : vec3<f32> = ((vec3<f32>(x_2354, x_2354, x_2354) * vec3<f32>(x_2356.x, x_2356.y, x_2356.z)) + vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
  let x_2362 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
  let x_2364 : f32 = u_xlat52;
  let x_2366 : vec4<f32> = u_xlat8;
  let x_2368 : vec3<f32> = (vec3<f32>(x_2364, x_2364, x_2364) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
  let x_2369 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
  let x_2371 : vec4<f32> = u_xlat7;
  let x_2373 : vec4<f32> = u_xlat8;
  let x_2375 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) * vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
  let x_2376 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
  let x_2378 : vec4<f32> = u_xlat3;
  let x_2380 : vec4<f32> = u_xlat4;
  let x_2383 : vec4<f32> = u_xlat7;
  let x_2385 : vec3<f32> = ((vec3<f32>(x_2378.x, x_2378.y, x_2378.z) * vec3<f32>(x_2380.x, x_2380.y, x_2380.z)) + vec3<f32>(x_2383.x, x_2383.y, x_2383.z));
  let x_2386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
  let x_2388 : f32 = u_xlat83;
  let x_2390 : f32 = x_2295.unity_LightData.z;
  u_xlat52 = (x_2388 * x_2390);
  let x_2392 : vec3<f32> = u_xlat2;
  let x_2394 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat81 = dot(x_2392, vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2397, 0.0f, 1.0f);
  let x_2399 : f32 = u_xlat52;
  let x_2400 : f32 = u_xlat81;
  u_xlat52 = (x_2399 * x_2400);
  let x_2402 : f32 = u_xlat52;
  let x_2404 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2402, x_2402, x_2402) * x_2404);
  let x_2406 : vec4<f32> = u_xlat1;
  let x_2409 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2411 : vec3<f32> = (vec3<f32>(x_2406.x, x_2406.y, x_2406.z) + vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
  let x_2412 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
  let x_2414 : vec4<f32> = u_xlat7;
  let x_2416 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2414.x, x_2414.y, x_2414.z), vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : f32 = u_xlat52;
  u_xlat52 = max(x_2419, 1.17549435e-38f);
  let x_2422 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2422);
  let x_2424 : f32 = u_xlat52;
  let x_2426 : vec4<f32> = u_xlat7;
  let x_2428 : vec3<f32> = (vec3<f32>(x_2424, x_2424, x_2424) * vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
  let x_2429 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
  let x_2431 : vec3<f32> = u_xlat2;
  let x_2432 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_2431, vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2435, 0.0f, 1.0f);
  let x_2438 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2440 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_2438.x, x_2438.y, x_2438.z), vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
  let x_2443 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2443, 0.0f, 1.0f);
  let x_2445 : f32 = u_xlat52;
  let x_2446 : f32 = u_xlat52;
  u_xlat52 = (x_2445 * x_2446);
  let x_2448 : f32 = u_xlat52;
  let x_2450 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2448 * x_2450) + 1.00001001358032226562f);
  let x_2454 : f32 = u_xlat81;
  let x_2455 : f32 = u_xlat81;
  u_xlat81 = (x_2454 * x_2455);
  let x_2457 : f32 = u_xlat52;
  let x_2458 : f32 = u_xlat52;
  u_xlat52 = (x_2457 * x_2458);
  let x_2460 : f32 = u_xlat81;
  u_xlat81 = max(x_2460, 0.10000000149011611938f);
  let x_2463 : f32 = u_xlat52;
  let x_2464 : f32 = u_xlat81;
  u_xlat52 = (x_2463 * x_2464);
  let x_2466 : f32 = u_xlat82;
  let x_2467 : f32 = u_xlat52;
  u_xlat52 = (x_2466 * x_2467);
  let x_2469 : f32 = u_xlat80;
  let x_2470 : f32 = u_xlat52;
  u_xlat52 = (x_2469 / x_2470);
  let x_2472 : vec4<f32> = u_xlat5;
  let x_2474 : f32 = u_xlat52;
  let x_2477 : vec4<f32> = u_xlat4;
  let x_2479 : vec3<f32> = ((vec3<f32>(x_2472.x, x_2472.y, x_2472.z) * vec3<f32>(x_2474, x_2474, x_2474)) + vec3<f32>(x_2477.x, x_2477.y, x_2477.z));
  let x_2480 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
  let x_2482 : vec3<f32> = u_xlat32;
  let x_2483 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2482 * vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2487 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2489 : f32 = x_2295.unity_LightData.y;
  u_xlat52 = min(x_2487, x_2489);
  let x_2493 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2493));
  let x_2497 : f32 = u_xlat6.x;
  let x_2499 : f32 = x_762.x_AdditionalShadowFadeParams.x;
  let x_2502 : f32 = x_762.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2497 * x_2499) + x_2502);
  let x_2504 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2504, 0.0f, 1.0f);
  let x_2508 : f32 = x_2104.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2510 : f32 = x_2104.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2512 : f32 = x_2104.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2514 : f32 = x_2104.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2515 : vec4<f32> = vec4<f32>(x_2508, x_2510, x_2512, x_2514);
  let x_2521 : vec4<bool> = (vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2515.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2521.x, x_2521.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2533 : u32 = u_xlatu_loop_1;
    let x_2534 : u32 = u_xlatu52;
    if ((x_2533 < x_2534)) {
    } else {
      break;
    }
    let x_2537 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2537 >> 2u);
    let x_2541 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2541 & 3u));
    let x_2544 : u32 = u_xlatu6;
    let x_2547 : vec4<f32> = x_2295.unity_LightIndices[bitcast<i32>(x_2544)];
    let x_2557 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2562 : vec4<u32> = indexable[x_2557];
    u_xlat6.x = dot(x_2547, bitcast<vec4<f32>>(x_2562));
    let x_2568 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2568);
    let x_2570 : vec3<f32> = vs_TEXCOORD7;
    let x_2581 : i32 = u_xlati6;
    let x_2583 : vec4<f32> = x_2580.x_AdditionalLightsPosition[x_2581];
    let x_2586 : i32 = u_xlati6;
    let x_2588 : vec4<f32> = x_2580.x_AdditionalLightsPosition[x_2586];
    let x_2590 : vec3<f32> = ((-(x_2570) * vec3<f32>(x_2583.w, x_2583.w, x_2583.w)) + vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
    let x_2591 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2591.w);
    let x_2594 : vec4<f32> = u_xlat9;
    let x_2596 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2594.x, x_2594.y, x_2594.z), vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
    let x_2599 : f32 = u_xlat59;
    u_xlat59 = max(x_2599, 0.00006103515625f);
    let x_2601 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2601);
    let x_2603 : f32 = u_xlat85;
    let x_2605 : vec4<f32> = u_xlat9;
    let x_2607 : vec3<f32> = (vec3<f32>(x_2603, x_2603, x_2603) * vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
    let x_2608 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
    let x_2610 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2610);
    let x_2612 : f32 = u_xlat59;
    let x_2613 : i32 = u_xlati6;
    let x_2615 : f32 = x_2580.x_AdditionalLightsAttenuation[x_2613].x;
    u_xlat59 = (x_2612 * x_2615);
    let x_2617 : f32 = u_xlat59;
    let x_2619 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2617) * x_2619) + 1.0f);
    let x_2622 : f32 = u_xlat59;
    u_xlat59 = max(x_2622, 0.0f);
    let x_2624 : f32 = u_xlat59;
    let x_2625 : f32 = u_xlat59;
    u_xlat59 = (x_2624 * x_2625);
    let x_2627 : f32 = u_xlat59;
    let x_2628 : f32 = u_xlat86;
    u_xlat59 = (x_2627 * x_2628);
    let x_2630 : i32 = u_xlati6;
    let x_2632 : vec4<f32> = x_2580.x_AdditionalLightsSpotDir[x_2630];
    let x_2634 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2632.x, x_2632.y, x_2632.z), vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
    let x_2637 : f32 = u_xlat86;
    let x_2638 : i32 = u_xlati6;
    let x_2640 : f32 = x_2580.x_AdditionalLightsAttenuation[x_2638].z;
    let x_2642 : i32 = u_xlati6;
    let x_2644 : f32 = x_2580.x_AdditionalLightsAttenuation[x_2642].w;
    u_xlat86 = ((x_2637 * x_2640) + x_2644);
    let x_2646 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2646, 0.0f, 1.0f);
    let x_2648 : f32 = u_xlat86;
    let x_2649 : f32 = u_xlat86;
    u_xlat86 = (x_2648 * x_2649);
    let x_2651 : f32 = u_xlat59;
    let x_2652 : f32 = u_xlat86;
    u_xlat59 = (x_2651 * x_2652);
    let x_2655 : i32 = u_xlati6;
    let x_2657 : f32 = x_762.x_AdditionalShadowParams[x_2655].w;
    u_xlati86 = i32(x_2657);
    let x_2660 : i32 = u_xlati86;
    u_xlatb87 = (x_2660 >= 0i);
    let x_2662 : bool = u_xlatb87;
    if (x_2662) {
      let x_2666 : i32 = u_xlati6;
      let x_2668 : f32 = x_762.x_AdditionalShadowParams[x_2666].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2668, x_2668, x_2668, x_2668))));
      let x_2672 : bool = u_xlatb87;
      if (x_2672) {
        let x_2677 : vec4<f32> = u_xlat10;
        let x_2680 : vec4<f32> = u_xlat10;
        let x_2683 : vec4<bool> = (abs(vec4<f32>(x_2677.z, x_2677.z, x_2677.y, x_2677.z)) >= abs(vec4<f32>(x_2680.x, x_2680.y, x_2680.x, x_2680.x)));
        let x_2685 : vec3<bool> = vec3<bool>(x_2683.x, x_2683.y, x_2683.z);
        let x_2686 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
        let x_2689 : bool = u_xlatb11.y;
        let x_2691 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2689 & x_2691);
        let x_2693 : vec4<f32> = u_xlat10;
        let x_2696 : vec4<bool> = (-(vec4<f32>(x_2693.z, x_2693.y, x_2693.z, x_2693.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2697 : vec3<bool> = vec3<bool>(x_2696.x, x_2696.y, x_2696.w);
        let x_2698 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2697.x, x_2697.y, x_2698.z, x_2697.z);
        let x_2701 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2701);
        let x_2706 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2706);
        let x_2712 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2712);
        let x_2715 : bool = u_xlatb11.z;
        if (x_2715) {
          let x_2720 : f32 = u_xlat11.y;
          x_2716 = x_2720;
        } else {
          let x_2722 : f32 = u_xlat88;
          x_2716 = x_2722;
        }
        let x_2723 : f32 = x_2716;
        u_xlat88 = x_2723;
        let x_2725 : bool = u_xlatb87;
        if (x_2725) {
          let x_2730 : f32 = u_xlat11.x;
          x_2726 = x_2730;
        } else {
          let x_2732 : f32 = u_xlat88;
          x_2726 = x_2732;
        }
        let x_2733 : f32 = x_2726;
        u_xlat87 = x_2733;
        let x_2734 : i32 = u_xlati6;
        let x_2736 : f32 = x_762.x_AdditionalShadowParams[x_2734].w;
        u_xlat88 = trunc(x_2736);
        let x_2738 : f32 = u_xlat87;
        let x_2739 : f32 = u_xlat88;
        u_xlat87 = (x_2738 + x_2739);
        let x_2741 : f32 = u_xlat87;
        u_xlati86 = i32(x_2741);
      }
      let x_2743 : i32 = u_xlati86;
      u_xlati86 = (x_2743 << bitcast<u32>(2i));
      let x_2745 : vec3<f32> = vs_TEXCOORD7;
      let x_2747 : i32 = u_xlati86;
      let x_2750 : i32 = u_xlati86;
      let x_2754 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[((x_2747 + 1i) / 4i)][((x_2750 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2745.y, x_2745.y, x_2745.y, x_2745.y) * x_2754);
      let x_2756 : i32 = u_xlati86;
      let x_2758 : i32 = u_xlati86;
      let x_2761 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[(x_2756 / 4i)][(x_2758 % 4i)];
      let x_2762 : vec3<f32> = vs_TEXCOORD7;
      let x_2765 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2761 * vec4<f32>(x_2762.x, x_2762.x, x_2762.x, x_2762.x)) + x_2765);
      let x_2767 : i32 = u_xlati86;
      let x_2770 : i32 = u_xlati86;
      let x_2774 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[((x_2767 + 2i) / 4i)][((x_2770 + 2i) % 4i)];
      let x_2775 : vec3<f32> = vs_TEXCOORD7;
      let x_2778 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2774 * vec4<f32>(x_2775.z, x_2775.z, x_2775.z, x_2775.z)) + x_2778);
      let x_2780 : vec4<f32> = u_xlat11;
      let x_2781 : i32 = u_xlati86;
      let x_2784 : i32 = u_xlati86;
      let x_2788 : vec4<f32> = x_762.x_AdditionalLightsWorldToShadow[((x_2781 + 3i) / 4i)][((x_2784 + 3i) % 4i)];
      u_xlat11 = (x_2780 + x_2788);
      let x_2790 : vec4<f32> = u_xlat11;
      let x_2792 : vec4<f32> = u_xlat11;
      let x_2794 : vec3<f32> = (vec3<f32>(x_2790.x, x_2790.y, x_2790.z) / vec3<f32>(x_2792.w, x_2792.w, x_2792.w));
      let x_2795 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2795.w);
      let x_2798 : i32 = u_xlati6;
      let x_2800 : f32 = x_762.x_AdditionalShadowParams[x_2798].y;
      u_xlatb86 = (0.0f < x_2800);
      let x_2802 : bool = u_xlatb86;
      if (x_2802) {
        let x_2805 : i32 = u_xlati6;
        let x_2807 : f32 = x_762.x_AdditionalShadowParams[x_2805].y;
        u_xlatb86 = (1.0f == x_2807);
        let x_2809 : bool = u_xlatb86;
        if (x_2809) {
          let x_2812 : vec4<f32> = u_xlat11;
          let x_2815 : vec4<f32> = x_762.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y) + x_2815);
          let x_2818 : vec4<f32> = u_xlat12;
          let x_2819 : vec2<f32> = vec2<f32>(x_2818.x, x_2818.y);
          let x_2821 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2819.x, x_2819.y, x_2821);
          let x_2829 : vec3<f32> = txVec30;
          let x_2831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2829.xy, x_2829.z);
          u_xlat13.x = x_2831;
          let x_2834 : vec4<f32> = u_xlat12;
          let x_2835 : vec2<f32> = vec2<f32>(x_2834.z, x_2834.w);
          let x_2837 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2835.x, x_2835.y, x_2837);
          let x_2844 : vec3<f32> = txVec31;
          let x_2846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2844.xy, x_2844.z);
          u_xlat13.y = x_2846;
          let x_2848 : vec4<f32> = u_xlat11;
          let x_2851 : vec4<f32> = x_762.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y) + x_2851);
          let x_2854 : vec4<f32> = u_xlat12;
          let x_2855 : vec2<f32> = vec2<f32>(x_2854.x, x_2854.y);
          let x_2857 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2855.x, x_2855.y, x_2857);
          let x_2864 : vec3<f32> = txVec32;
          let x_2866 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2864.xy, x_2864.z);
          u_xlat13.z = x_2866;
          let x_2869 : vec4<f32> = u_xlat12;
          let x_2870 : vec2<f32> = vec2<f32>(x_2869.z, x_2869.w);
          let x_2872 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2870.x, x_2870.y, x_2872);
          let x_2879 : vec3<f32> = txVec33;
          let x_2881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2879.xy, x_2879.z);
          u_xlat13.w = x_2881;
          let x_2883 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2883, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2886 : i32 = u_xlati6;
          let x_2888 : f32 = x_762.x_AdditionalShadowParams[x_2886].y;
          u_xlatb87 = (2.0f == x_2888);
          let x_2890 : bool = u_xlatb87;
          if (x_2890) {
            let x_2893 : vec4<f32> = u_xlat11;
            let x_2896 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2899 : vec2<f32> = ((vec2<f32>(x_2893.x, x_2893.y) * vec2<f32>(x_2896.z, x_2896.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2900 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2899.x, x_2899.y, x_2900.z, x_2900.w);
            let x_2902 : vec4<f32> = u_xlat12;
            let x_2904 : vec2<f32> = floor(vec2<f32>(x_2902.x, x_2902.y));
            let x_2905 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2908 : vec4<f32> = u_xlat11;
            let x_2911 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_2914 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2908.x, x_2908.y) * vec2<f32>(x_2911.z, x_2911.w)) + -(vec2<f32>(x_2914.x, x_2914.y)));
            let x_2918 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2918.x, x_2918.x, x_2918.y, x_2918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2921 : vec4<f32> = u_xlat13;
            let x_2923 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2921.x, x_2921.x, x_2921.z, x_2921.z) * vec4<f32>(x_2923.x, x_2923.x, x_2923.z, x_2923.z));
            let x_2926 : vec4<f32> = u_xlat14;
            let x_2928 : vec2<f32> = (vec2<f32>(x_2926.y, x_2926.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2929 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2928.x, x_2929.y, x_2928.y, x_2929.w);
            let x_2931 : vec4<f32> = u_xlat14;
            let x_2934 : vec2<f32> = u_xlat64;
            let x_2936 : vec2<f32> = ((vec2<f32>(x_2931.x, x_2931.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2934));
            let x_2937 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2939 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2939) + vec2<f32>(1.0f, 1.0f));
            let x_2942 : vec2<f32> = u_xlat64;
            let x_2943 : vec2<f32> = min(x_2942, vec2<f32>(0.0f, 0.0f));
            let x_2944 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2949 : vec4<f32> = u_xlat15;
            let x_2952 : vec2<f32> = u_xlat66;
            let x_2953 : vec2<f32> = ((-(vec2<f32>(x_2946.x, x_2946.y)) * vec2<f32>(x_2949.x, x_2949.y)) + x_2952);
            let x_2954 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2953.x, x_2953.y, x_2954.z, x_2954.w);
            let x_2956 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2956, vec2<f32>(0.0f, 0.0f));
            let x_2958 : vec2<f32> = u_xlat64;
            let x_2960 : vec2<f32> = u_xlat64;
            let x_2962 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2958) * x_2960) + vec2<f32>(x_2962.y, x_2962.w));
            let x_2965 : vec4<f32> = u_xlat15;
            let x_2967 : vec2<f32> = (vec2<f32>(x_2965.x, x_2965.y) + vec2<f32>(1.0f, 1.0f));
            let x_2968 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2970 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2970 + vec2<f32>(1.0f, 1.0f));
            let x_2972 : vec4<f32> = u_xlat14;
            let x_2974 : vec2<f32> = (vec2<f32>(x_2972.x, x_2972.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2975 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
            let x_2977 : vec2<f32> = u_xlat66;
            let x_2978 : vec2<f32> = (x_2977 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2979 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2978.x, x_2978.y, x_2979.z, x_2979.w);
            let x_2981 : vec4<f32> = u_xlat15;
            let x_2983 : vec2<f32> = (vec2<f32>(x_2981.x, x_2981.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2984 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2983.x, x_2983.y, x_2984.z, x_2984.w);
            let x_2986 : vec2<f32> = u_xlat64;
            let x_2987 : vec2<f32> = (x_2986 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2988 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2990.y, x_2990.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2994 : f32 = u_xlat15.x;
            u_xlat16.z = x_2994;
            let x_2997 : f32 = u_xlat64.x;
            u_xlat16.w = x_2997;
            let x_3000 : f32 = u_xlat17.x;
            u_xlat14.z = x_3000;
            let x_3003 : f32 = u_xlat13.x;
            u_xlat14.w = x_3003;
            let x_3005 : vec4<f32> = u_xlat14;
            let x_3007 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3005.z, x_3005.w, x_3005.x, x_3005.z) + vec4<f32>(x_3007.z, x_3007.w, x_3007.x, x_3007.z));
            let x_3011 : f32 = u_xlat16.y;
            u_xlat15.z = x_3011;
            let x_3014 : f32 = u_xlat64.y;
            u_xlat15.w = x_3014;
            let x_3017 : f32 = u_xlat14.y;
            u_xlat17.z = x_3017;
            let x_3020 : f32 = u_xlat13.z;
            u_xlat17.w = x_3020;
            let x_3022 : vec4<f32> = u_xlat15;
            let x_3024 : vec4<f32> = u_xlat17;
            let x_3026 : vec3<f32> = (vec3<f32>(x_3022.z, x_3022.y, x_3022.w) + vec3<f32>(x_3024.z, x_3024.y, x_3024.w));
            let x_3027 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3027.w);
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3031 : vec4<f32> = u_xlat18;
            let x_3033 : vec3<f32> = (vec3<f32>(x_3029.x, x_3029.z, x_3029.w) / vec3<f32>(x_3031.z, x_3031.w, x_3031.y));
            let x_3034 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3034.w);
            let x_3036 : vec4<f32> = u_xlat14;
            let x_3038 : vec3<f32> = (vec3<f32>(x_3036.x, x_3036.y, x_3036.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3039 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3038.x, x_3038.y, x_3038.z, x_3039.w);
            let x_3041 : vec4<f32> = u_xlat17;
            let x_3043 : vec4<f32> = u_xlat13;
            let x_3045 : vec3<f32> = (vec3<f32>(x_3041.z, x_3041.y, x_3041.w) / vec3<f32>(x_3043.x, x_3043.y, x_3043.z));
            let x_3046 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3045.x, x_3045.y, x_3045.z, x_3046.w);
            let x_3048 : vec4<f32> = u_xlat15;
            let x_3050 : vec3<f32> = (vec3<f32>(x_3048.x, x_3048.y, x_3048.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3051 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3050.x, x_3050.y, x_3050.z, x_3051.w);
            let x_3053 : vec4<f32> = u_xlat14;
            let x_3056 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3058 : vec3<f32> = (vec3<f32>(x_3053.y, x_3053.x, x_3053.z) * vec3<f32>(x_3056.x, x_3056.x, x_3056.x));
            let x_3059 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);
            let x_3061 : vec4<f32> = u_xlat15;
            let x_3064 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3066 : vec3<f32> = (vec3<f32>(x_3061.x, x_3061.y, x_3061.z) * vec3<f32>(x_3064.y, x_3064.y, x_3064.y));
            let x_3067 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3066.x, x_3066.y, x_3066.z, x_3067.w);
            let x_3070 : f32 = u_xlat15.x;
            u_xlat14.w = x_3070;
            let x_3072 : vec4<f32> = u_xlat12;
            let x_3075 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y) * vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y)) + vec4<f32>(x_3078.y, x_3078.w, x_3078.x, x_3078.w));
            let x_3081 : vec4<f32> = u_xlat12;
            let x_3084 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3087 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3081.x, x_3081.y) * vec2<f32>(x_3084.x, x_3084.y)) + vec2<f32>(x_3087.z, x_3087.w));
            let x_3091 : f32 = u_xlat14.y;
            u_xlat15.w = x_3091;
            let x_3093 : vec4<f32> = u_xlat15;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.y, x_3093.z);
            let x_3095 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3095.x, x_3094.x, x_3095.z, x_3094.y);
            let x_3097 : vec4<f32> = u_xlat12;
            let x_3100 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y) * vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y)) + vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3103.y));
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3109 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3112 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3106.x, x_3106.y, x_3106.x, x_3106.y) * vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.y)) + vec4<f32>(x_3112.w, x_3112.y, x_3112.w, x_3112.z));
            let x_3115 : vec4<f32> = u_xlat12;
            let x_3118 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y) * vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y)) + vec4<f32>(x_3121.x, x_3121.w, x_3121.z, x_3121.w));
            let x_3124 : vec4<f32> = u_xlat13;
            let x_3126 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3124.x, x_3124.x, x_3124.x, x_3124.y) * vec4<f32>(x_3126.z, x_3126.w, x_3126.y, x_3126.z));
            let x_3130 : vec4<f32> = u_xlat13;
            let x_3132 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3130.y, x_3130.y, x_3130.z, x_3130.z) * x_3132);
            let x_3135 : f32 = u_xlat13.z;
            let x_3137 : f32 = u_xlat18.y;
            u_xlat87 = (x_3135 * x_3137);
            let x_3140 : vec4<f32> = u_xlat16;
            let x_3141 : vec2<f32> = vec2<f32>(x_3140.x, x_3140.y);
            let x_3143 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3141.x, x_3141.y, x_3143);
            let x_3150 : vec3<f32> = txVec34;
            let x_3152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
            u_xlat88 = x_3152;
            let x_3154 : vec4<f32> = u_xlat16;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.z, x_3154.w);
            let x_3157 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3165 : vec3<f32> = txVec35;
            let x_3167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3165.xy, x_3165.z);
            u_xlat89 = x_3167;
            let x_3168 : f32 = u_xlat89;
            let x_3170 : f32 = u_xlat19.y;
            u_xlat89 = (x_3168 * x_3170);
            let x_3173 : f32 = u_xlat19.x;
            let x_3174 : f32 = u_xlat88;
            let x_3176 : f32 = u_xlat89;
            u_xlat88 = ((x_3173 * x_3174) + x_3176);
            let x_3179 : vec2<f32> = u_xlat64;
            let x_3181 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
            let x_3188 : vec3<f32> = txVec36;
            let x_3190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
            u_xlat89 = x_3190;
            let x_3192 : f32 = u_xlat19.z;
            let x_3193 : f32 = u_xlat89;
            let x_3195 : f32 = u_xlat88;
            u_xlat88 = ((x_3192 * x_3193) + x_3195);
            let x_3198 : vec4<f32> = u_xlat15;
            let x_3199 : vec2<f32> = vec2<f32>(x_3198.x, x_3198.y);
            let x_3201 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
            let x_3208 : vec3<f32> = txVec37;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat89 = x_3210;
            let x_3212 : f32 = u_xlat19.w;
            let x_3213 : f32 = u_xlat89;
            let x_3215 : f32 = u_xlat88;
            u_xlat88 = ((x_3212 * x_3213) + x_3215);
            let x_3218 : vec4<f32> = u_xlat17;
            let x_3219 : vec2<f32> = vec2<f32>(x_3218.x, x_3218.y);
            let x_3221 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec38;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat89 = x_3230;
            let x_3232 : f32 = u_xlat20.x;
            let x_3233 : f32 = u_xlat89;
            let x_3235 : f32 = u_xlat88;
            u_xlat88 = ((x_3232 * x_3233) + x_3235);
            let x_3238 : vec4<f32> = u_xlat17;
            let x_3239 : vec2<f32> = vec2<f32>(x_3238.z, x_3238.w);
            let x_3241 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3239.x, x_3239.y, x_3241);
            let x_3248 : vec3<f32> = txVec39;
            let x_3250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3248.xy, x_3248.z);
            u_xlat89 = x_3250;
            let x_3252 : f32 = u_xlat20.y;
            let x_3253 : f32 = u_xlat89;
            let x_3255 : f32 = u_xlat88;
            u_xlat88 = ((x_3252 * x_3253) + x_3255);
            let x_3258 : vec4<f32> = u_xlat15;
            let x_3259 : vec2<f32> = vec2<f32>(x_3258.z, x_3258.w);
            let x_3261 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3259.x, x_3259.y, x_3261);
            let x_3268 : vec3<f32> = txVec40;
            let x_3270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3268.xy, x_3268.z);
            u_xlat89 = x_3270;
            let x_3272 : f32 = u_xlat20.z;
            let x_3273 : f32 = u_xlat89;
            let x_3275 : f32 = u_xlat88;
            u_xlat88 = ((x_3272 * x_3273) + x_3275);
            let x_3278 : vec4<f32> = u_xlat14;
            let x_3279 : vec2<f32> = vec2<f32>(x_3278.x, x_3278.y);
            let x_3281 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3279.x, x_3279.y, x_3281);
            let x_3288 : vec3<f32> = txVec41;
            let x_3290 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3288.xy, x_3288.z);
            u_xlat89 = x_3290;
            let x_3292 : f32 = u_xlat20.w;
            let x_3293 : f32 = u_xlat89;
            let x_3295 : f32 = u_xlat88;
            u_xlat88 = ((x_3292 * x_3293) + x_3295);
            let x_3298 : vec4<f32> = u_xlat14;
            let x_3299 : vec2<f32> = vec2<f32>(x_3298.z, x_3298.w);
            let x_3301 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
            let x_3308 : vec3<f32> = txVec42;
            let x_3310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
            u_xlat89 = x_3310;
            let x_3311 : f32 = u_xlat87;
            let x_3312 : f32 = u_xlat89;
            let x_3314 : f32 = u_xlat88;
            u_xlat86 = ((x_3311 * x_3312) + x_3314);
          } else {
            let x_3317 : vec4<f32> = u_xlat11;
            let x_3320 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3323 : vec2<f32> = ((vec2<f32>(x_3317.x, x_3317.y) * vec2<f32>(x_3320.z, x_3320.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3324 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3323.x, x_3323.y, x_3324.z, x_3324.w);
            let x_3326 : vec4<f32> = u_xlat12;
            let x_3328 : vec2<f32> = floor(vec2<f32>(x_3326.x, x_3326.y));
            let x_3329 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3328.x, x_3328.y, x_3329.z, x_3329.w);
            let x_3331 : vec4<f32> = u_xlat11;
            let x_3334 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3337 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3331.x, x_3331.y) * vec2<f32>(x_3334.z, x_3334.w)) + -(vec2<f32>(x_3337.x, x_3337.y)));
            let x_3341 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3341.x, x_3341.x, x_3341.y, x_3341.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3344 : vec4<f32> = u_xlat13;
            let x_3346 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3344.x, x_3344.x, x_3344.z, x_3344.z) * vec4<f32>(x_3346.x, x_3346.x, x_3346.z, x_3346.z));
            let x_3349 : vec4<f32> = u_xlat14;
            let x_3351 : vec2<f32> = (vec2<f32>(x_3349.y, x_3349.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3352 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3352.x, x_3351.x, x_3352.z, x_3351.y);
            let x_3354 : vec4<f32> = u_xlat14;
            let x_3357 : vec2<f32> = u_xlat64;
            let x_3359 : vec2<f32> = ((vec2<f32>(x_3354.x, x_3354.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3357));
            let x_3360 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3359.x, x_3360.y, x_3359.y, x_3360.w);
            let x_3362 : vec2<f32> = u_xlat64;
            let x_3364 : vec2<f32> = (-(x_3362) + vec2<f32>(1.0f, 1.0f));
            let x_3365 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3364.x, x_3364.y, x_3365.z, x_3365.w);
            let x_3367 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3367, vec2<f32>(0.0f, 0.0f));
            let x_3369 : vec2<f32> = u_xlat66;
            let x_3371 : vec2<f32> = u_xlat66;
            let x_3373 : vec4<f32> = u_xlat14;
            let x_3375 : vec2<f32> = ((-(x_3369) * x_3371) + vec2<f32>(x_3373.x, x_3373.y));
            let x_3376 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3375.x, x_3375.y, x_3376.z, x_3376.w);
            let x_3378 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3378, vec2<f32>(0.0f, 0.0f));
            let x_3381 : vec2<f32> = u_xlat66;
            let x_3383 : vec2<f32> = u_xlat66;
            let x_3385 : vec4<f32> = u_xlat13;
            let x_3387 : vec2<f32> = ((-(x_3381) * x_3383) + vec2<f32>(x_3385.y, x_3385.w));
            let x_3388 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3387.x, x_3388.y, x_3387.y);
            let x_3390 : vec4<f32> = u_xlat14;
            let x_3392 : vec2<f32> = (vec2<f32>(x_3390.x, x_3390.y) + vec2<f32>(2.0f, 2.0f));
            let x_3393 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3392.x, x_3392.y, x_3393.z, x_3393.w);
            let x_3395 : vec3<f32> = u_xlat39;
            let x_3397 : vec2<f32> = (vec2<f32>(x_3395.x, x_3395.z) + vec2<f32>(2.0f, 2.0f));
            let x_3398 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3398.x, x_3397.x, x_3398.z, x_3397.y);
            let x_3401 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3401 * 0.08163200318813323975f);
            let x_3404 : vec4<f32> = u_xlat13;
            let x_3406 : vec3<f32> = (vec3<f32>(x_3404.z, x_3404.x, x_3404.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3407 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3406.x, x_3406.y, x_3406.z, x_3407.w);
            let x_3409 : vec4<f32> = u_xlat14;
            let x_3411 : vec2<f32> = (vec2<f32>(x_3409.x, x_3409.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3412 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3411.x, x_3411.y, x_3412.z, x_3412.w);
            let x_3415 : f32 = u_xlat17.y;
            u_xlat16.x = x_3415;
            let x_3417 : vec2<f32> = u_xlat64;
            let x_3420 : vec2<f32> = ((vec2<f32>(x_3417.x, x_3417.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3421 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3421.x, x_3420.x, x_3421.z, x_3420.y);
            let x_3423 : vec2<f32> = u_xlat64;
            let x_3426 : vec2<f32> = ((vec2<f32>(x_3423.x, x_3423.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3427 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3426.x, x_3427.y, x_3426.y, x_3427.w);
            let x_3430 : f32 = u_xlat13.x;
            u_xlat14.y = x_3430;
            let x_3433 : f32 = u_xlat15.y;
            u_xlat14.w = x_3433;
            let x_3435 : vec4<f32> = u_xlat14;
            let x_3436 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3435 + x_3436);
            let x_3438 : vec2<f32> = u_xlat64;
            let x_3441 : vec2<f32> = ((vec2<f32>(x_3438.y, x_3438.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3442 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3442.x, x_3441.x, x_3442.z, x_3441.y);
            let x_3444 : vec2<f32> = u_xlat64;
            let x_3447 : vec2<f32> = ((vec2<f32>(x_3444.y, x_3444.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3448 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3447.x, x_3448.y, x_3447.y, x_3448.w);
            let x_3451 : f32 = u_xlat13.y;
            u_xlat15.y = x_3451;
            let x_3453 : vec4<f32> = u_xlat15;
            let x_3454 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3453 + x_3454);
            let x_3456 : vec4<f32> = u_xlat14;
            let x_3457 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3456 / x_3457);
            let x_3459 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3459 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3461 : vec4<f32> = u_xlat15;
            let x_3462 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3461 / x_3462);
            let x_3464 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3464 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3466 : vec4<f32> = u_xlat14;
            let x_3469 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3466.w, x_3466.x, x_3466.y, x_3466.z) * vec4<f32>(x_3469.x, x_3469.x, x_3469.x, x_3469.x));
            let x_3472 : vec4<f32> = u_xlat15;
            let x_3475 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3472.x, x_3472.w, x_3472.y, x_3472.z) * vec4<f32>(x_3475.y, x_3475.y, x_3475.y, x_3475.y));
            let x_3478 : vec4<f32> = u_xlat14;
            let x_3479 : vec3<f32> = vec3<f32>(x_3478.y, x_3478.z, x_3478.w);
            let x_3480 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3479.x, x_3480.y, x_3479.y, x_3479.z);
            let x_3483 : f32 = u_xlat15.x;
            u_xlat17.y = x_3483;
            let x_3485 : vec4<f32> = u_xlat12;
            let x_3488 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3491 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3485.x, x_3485.y, x_3485.x, x_3485.y) * vec4<f32>(x_3488.x, x_3488.y, x_3488.x, x_3488.y)) + vec4<f32>(x_3491.x, x_3491.y, x_3491.z, x_3491.y));
            let x_3494 : vec4<f32> = u_xlat12;
            let x_3497 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3500 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3494.x, x_3494.y) * vec2<f32>(x_3497.x, x_3497.y)) + vec2<f32>(x_3500.w, x_3500.y));
            let x_3504 : f32 = u_xlat17.y;
            u_xlat14.y = x_3504;
            let x_3507 : f32 = u_xlat15.z;
            u_xlat17.y = x_3507;
            let x_3509 : vec4<f32> = u_xlat12;
            let x_3512 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3515 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3509.x, x_3509.y, x_3509.x, x_3509.y) * vec4<f32>(x_3512.x, x_3512.y, x_3512.x, x_3512.y)) + vec4<f32>(x_3515.x, x_3515.y, x_3515.z, x_3515.y));
            let x_3518 : vec4<f32> = u_xlat12;
            let x_3521 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3524 : vec4<f32> = u_xlat17;
            let x_3526 : vec2<f32> = ((vec2<f32>(x_3518.x, x_3518.y) * vec2<f32>(x_3521.x, x_3521.y)) + vec2<f32>(x_3524.w, x_3524.y));
            let x_3527 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3526.x, x_3526.y, x_3527.z, x_3527.w);
            let x_3530 : f32 = u_xlat17.y;
            u_xlat14.z = x_3530;
            let x_3533 : vec4<f32> = u_xlat12;
            let x_3536 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3539 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3533.x, x_3533.y, x_3533.x, x_3533.y) * vec4<f32>(x_3536.x, x_3536.y, x_3536.x, x_3536.y)) + vec4<f32>(x_3539.x, x_3539.y, x_3539.x, x_3539.z));
            let x_3543 : f32 = u_xlat15.w;
            u_xlat17.y = x_3543;
            let x_3546 : vec4<f32> = u_xlat12;
            let x_3549 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3552 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3546.x, x_3546.y, x_3546.x, x_3546.y) * vec4<f32>(x_3549.x, x_3549.y, x_3549.x, x_3549.y)) + vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3552.y));
            let x_3556 : vec4<f32> = u_xlat12;
            let x_3559 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3562 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3556.x, x_3556.y) * vec2<f32>(x_3559.x, x_3559.y)) + vec2<f32>(x_3562.w, x_3562.y));
            let x_3566 : f32 = u_xlat17.y;
            u_xlat14.w = x_3566;
            let x_3569 : vec4<f32> = u_xlat12;
            let x_3572 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3575 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3569.x, x_3569.y) * vec2<f32>(x_3572.x, x_3572.y)) + vec2<f32>(x_3575.x, x_3575.w));
            let x_3578 : vec4<f32> = u_xlat17;
            let x_3579 : vec3<f32> = vec3<f32>(x_3578.x, x_3578.z, x_3578.w);
            let x_3580 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3579.x, x_3580.y, x_3579.y, x_3579.z);
            let x_3582 : vec4<f32> = u_xlat12;
            let x_3585 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3588 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3582.x, x_3582.y, x_3582.x, x_3582.y) * vec4<f32>(x_3585.x, x_3585.y, x_3585.x, x_3585.y)) + vec4<f32>(x_3588.x, x_3588.y, x_3588.z, x_3588.y));
            let x_3592 : vec4<f32> = u_xlat12;
            let x_3595 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3598 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3592.x, x_3592.y) * vec2<f32>(x_3595.x, x_3595.y)) + vec2<f32>(x_3598.w, x_3598.y));
            let x_3602 : f32 = u_xlat14.x;
            u_xlat15.x = x_3602;
            let x_3604 : vec4<f32> = u_xlat12;
            let x_3607 : vec4<f32> = x_762.x_AdditionalShadowmapSize;
            let x_3610 : vec4<f32> = u_xlat15;
            let x_3612 : vec2<f32> = ((vec2<f32>(x_3604.x, x_3604.y) * vec2<f32>(x_3607.x, x_3607.y)) + vec2<f32>(x_3610.x, x_3610.y));
            let x_3613 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3612.x, x_3612.y, x_3613.z, x_3613.w);
            let x_3616 : vec4<f32> = u_xlat13;
            let x_3618 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3616.x, x_3616.x, x_3616.x, x_3616.x) * x_3618);
            let x_3621 : vec4<f32> = u_xlat13;
            let x_3623 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3621.y, x_3621.y, x_3621.y, x_3621.y) * x_3623);
            let x_3626 : vec4<f32> = u_xlat13;
            let x_3628 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3626.z, x_3626.z, x_3626.z, x_3626.z) * x_3628);
            let x_3630 : vec4<f32> = u_xlat13;
            let x_3632 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3630.w, x_3630.w, x_3630.w, x_3630.w) * x_3632);
            let x_3635 : vec4<f32> = u_xlat18;
            let x_3636 : vec2<f32> = vec2<f32>(x_3635.x, x_3635.y);
            let x_3638 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3636.x, x_3636.y, x_3638);
            let x_3645 : vec3<f32> = txVec43;
            let x_3647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3645.xy, x_3645.z);
            u_xlat87 = x_3647;
            let x_3649 : vec4<f32> = u_xlat18;
            let x_3650 : vec2<f32> = vec2<f32>(x_3649.z, x_3649.w);
            let x_3652 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3650.x, x_3650.y, x_3652);
            let x_3659 : vec3<f32> = txVec44;
            let x_3661 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3659.xy, x_3659.z);
            u_xlat88 = x_3661;
            let x_3662 : f32 = u_xlat88;
            let x_3664 : f32 = u_xlat23.y;
            u_xlat88 = (x_3662 * x_3664);
            let x_3667 : f32 = u_xlat23.x;
            let x_3668 : f32 = u_xlat87;
            let x_3670 : f32 = u_xlat88;
            u_xlat87 = ((x_3667 * x_3668) + x_3670);
            let x_3673 : vec2<f32> = u_xlat64;
            let x_3675 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3673.x, x_3673.y, x_3675);
            let x_3682 : vec3<f32> = txVec45;
            let x_3684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3682.xy, x_3682.z);
            u_xlat88 = x_3684;
            let x_3686 : f32 = u_xlat23.z;
            let x_3687 : f32 = u_xlat88;
            let x_3689 : f32 = u_xlat87;
            u_xlat87 = ((x_3686 * x_3687) + x_3689);
            let x_3692 : vec4<f32> = u_xlat21;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.x, x_3692.y);
            let x_3695 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec46;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat88 = x_3704;
            let x_3706 : f32 = u_xlat23.w;
            let x_3707 : f32 = u_xlat88;
            let x_3709 : f32 = u_xlat87;
            u_xlat87 = ((x_3706 * x_3707) + x_3709);
            let x_3712 : vec4<f32> = u_xlat19;
            let x_3713 : vec2<f32> = vec2<f32>(x_3712.x, x_3712.y);
            let x_3715 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3713.x, x_3713.y, x_3715);
            let x_3722 : vec3<f32> = txVec47;
            let x_3724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3722.xy, x_3722.z);
            u_xlat88 = x_3724;
            let x_3726 : f32 = u_xlat24.x;
            let x_3727 : f32 = u_xlat88;
            let x_3729 : f32 = u_xlat87;
            u_xlat87 = ((x_3726 * x_3727) + x_3729);
            let x_3732 : vec4<f32> = u_xlat19;
            let x_3733 : vec2<f32> = vec2<f32>(x_3732.z, x_3732.w);
            let x_3735 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3733.x, x_3733.y, x_3735);
            let x_3742 : vec3<f32> = txVec48;
            let x_3744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3742.xy, x_3742.z);
            u_xlat88 = x_3744;
            let x_3746 : f32 = u_xlat24.y;
            let x_3747 : f32 = u_xlat88;
            let x_3749 : f32 = u_xlat87;
            u_xlat87 = ((x_3746 * x_3747) + x_3749);
            let x_3752 : vec4<f32> = u_xlat20;
            let x_3753 : vec2<f32> = vec2<f32>(x_3752.x, x_3752.y);
            let x_3755 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3753.x, x_3753.y, x_3755);
            let x_3762 : vec3<f32> = txVec49;
            let x_3764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3762.xy, x_3762.z);
            u_xlat88 = x_3764;
            let x_3766 : f32 = u_xlat24.z;
            let x_3767 : f32 = u_xlat88;
            let x_3769 : f32 = u_xlat87;
            u_xlat87 = ((x_3766 * x_3767) + x_3769);
            let x_3772 : vec4<f32> = u_xlat21;
            let x_3773 : vec2<f32> = vec2<f32>(x_3772.z, x_3772.w);
            let x_3775 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3773.x, x_3773.y, x_3775);
            let x_3782 : vec3<f32> = txVec50;
            let x_3784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3782.xy, x_3782.z);
            u_xlat88 = x_3784;
            let x_3786 : f32 = u_xlat24.w;
            let x_3787 : f32 = u_xlat88;
            let x_3789 : f32 = u_xlat87;
            u_xlat87 = ((x_3786 * x_3787) + x_3789);
            let x_3792 : vec4<f32> = u_xlat22;
            let x_3793 : vec2<f32> = vec2<f32>(x_3792.x, x_3792.y);
            let x_3795 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
            let x_3802 : vec3<f32> = txVec51;
            let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
            u_xlat88 = x_3804;
            let x_3806 : f32 = u_xlat25.x;
            let x_3807 : f32 = u_xlat88;
            let x_3809 : f32 = u_xlat87;
            u_xlat87 = ((x_3806 * x_3807) + x_3809);
            let x_3812 : vec4<f32> = u_xlat22;
            let x_3813 : vec2<f32> = vec2<f32>(x_3812.z, x_3812.w);
            let x_3815 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3813.x, x_3813.y, x_3815);
            let x_3822 : vec3<f32> = txVec52;
            let x_3824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3822.xy, x_3822.z);
            u_xlat88 = x_3824;
            let x_3826 : f32 = u_xlat25.y;
            let x_3827 : f32 = u_xlat88;
            let x_3829 : f32 = u_xlat87;
            u_xlat87 = ((x_3826 * x_3827) + x_3829);
            let x_3832 : vec2<f32> = u_xlat40;
            let x_3834 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3832.x, x_3832.y, x_3834);
            let x_3841 : vec3<f32> = txVec53;
            let x_3843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3841.xy, x_3841.z);
            u_xlat88 = x_3843;
            let x_3845 : f32 = u_xlat25.z;
            let x_3846 : f32 = u_xlat88;
            let x_3848 : f32 = u_xlat87;
            u_xlat87 = ((x_3845 * x_3846) + x_3848);
            let x_3851 : vec2<f32> = u_xlat72;
            let x_3853 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3851.x, x_3851.y, x_3853);
            let x_3860 : vec3<f32> = txVec54;
            let x_3862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3860.xy, x_3860.z);
            u_xlat88 = x_3862;
            let x_3864 : f32 = u_xlat25.w;
            let x_3865 : f32 = u_xlat88;
            let x_3867 : f32 = u_xlat87;
            u_xlat87 = ((x_3864 * x_3865) + x_3867);
            let x_3870 : vec4<f32> = u_xlat17;
            let x_3871 : vec2<f32> = vec2<f32>(x_3870.x, x_3870.y);
            let x_3873 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3871.x, x_3871.y, x_3873);
            let x_3880 : vec3<f32> = txVec55;
            let x_3882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3880.xy, x_3880.z);
            u_xlat88 = x_3882;
            let x_3884 : f32 = u_xlat13.x;
            let x_3885 : f32 = u_xlat88;
            let x_3887 : f32 = u_xlat87;
            u_xlat87 = ((x_3884 * x_3885) + x_3887);
            let x_3890 : vec4<f32> = u_xlat17;
            let x_3891 : vec2<f32> = vec2<f32>(x_3890.z, x_3890.w);
            let x_3893 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3891.x, x_3891.y, x_3893);
            let x_3900 : vec3<f32> = txVec56;
            let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
            u_xlat88 = x_3902;
            let x_3904 : f32 = u_xlat13.y;
            let x_3905 : f32 = u_xlat88;
            let x_3907 : f32 = u_xlat87;
            u_xlat87 = ((x_3904 * x_3905) + x_3907);
            let x_3910 : vec2<f32> = u_xlat67;
            let x_3912 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3910.x, x_3910.y, x_3912);
            let x_3919 : vec3<f32> = txVec57;
            let x_3921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3919.xy, x_3919.z);
            u_xlat88 = x_3921;
            let x_3923 : f32 = u_xlat13.z;
            let x_3924 : f32 = u_xlat88;
            let x_3926 : f32 = u_xlat87;
            u_xlat87 = ((x_3923 * x_3924) + x_3926);
            let x_3929 : vec4<f32> = u_xlat12;
            let x_3930 : vec2<f32> = vec2<f32>(x_3929.x, x_3929.y);
            let x_3932 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3930.x, x_3930.y, x_3932);
            let x_3939 : vec3<f32> = txVec58;
            let x_3941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3939.xy, x_3939.z);
            u_xlat88 = x_3941;
            let x_3943 : f32 = u_xlat13.w;
            let x_3944 : f32 = u_xlat88;
            let x_3946 : f32 = u_xlat87;
            u_xlat86 = ((x_3943 * x_3944) + x_3946);
          }
        }
      } else {
        let x_3950 : vec4<f32> = u_xlat11;
        let x_3951 : vec2<f32> = vec2<f32>(x_3950.x, x_3950.y);
        let x_3953 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3951.x, x_3951.y, x_3953);
        let x_3960 : vec3<f32> = txVec59;
        let x_3962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3960.xy, x_3960.z);
        u_xlat86 = x_3962;
      }
      let x_3963 : i32 = u_xlati6;
      let x_3965 : f32 = x_762.x_AdditionalShadowParams[x_3963].x;
      u_xlat87 = (1.0f + -(x_3965));
      let x_3968 : f32 = u_xlat86;
      let x_3969 : i32 = u_xlati6;
      let x_3971 : f32 = x_762.x_AdditionalShadowParams[x_3969].x;
      let x_3973 : f32 = u_xlat87;
      u_xlat86 = ((x_3968 * x_3971) + x_3973);
      let x_3976 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3976);
      let x_3980 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3980 >= 1.0f);
      let x_3982 : bool = u_xlatb87;
      let x_3983 : bool = u_xlatb88;
      u_xlatb87 = (x_3982 | x_3983);
      let x_3985 : bool = u_xlatb87;
      let x_3986 : f32 = u_xlat86;
      u_xlat86 = select(x_3986, 1.0f, x_3985);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3989 : f32 = u_xlat86;
    u_xlat87 = (-(x_3989) + 1.0f);
    let x_3992 : f32 = u_xlat81;
    let x_3993 : f32 = u_xlat87;
    let x_3995 : f32 = u_xlat86;
    u_xlat86 = ((x_3992 * x_3993) + x_3995);
    let x_3998 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_3998 & 31i)));
    let x_4001 : i32 = u_xlati87;
    let x_4004 : f32 = x_2104.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4001) & bitcast<u32>(x_4004)));
    let x_4008 : i32 = u_xlati87;
    if ((x_4008 != 0i)) {
      let x_4012 : i32 = u_xlati6;
      let x_4014 : f32 = x_2104.x_AdditionalLightsLightTypes[x_4012].el;
      u_xlati87 = i32(x_4014);
      let x_4017 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4017 != 0i));
      let x_4021 : i32 = u_xlati6;
      u_xlati11 = (x_4021 << bitcast<u32>(2i));
      let x_4023 : i32 = u_xlati88;
      if ((x_4023 != 0i)) {
        let x_4028 : vec3<f32> = vs_TEXCOORD7;
        let x_4030 : i32 = u_xlati11;
        let x_4033 : i32 = u_xlati11;
        let x_4037 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4030 + 1i) / 4i)][((x_4033 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4028.y, x_4028.y, x_4028.y) * vec3<f32>(x_4037.x, x_4037.y, x_4037.w));
        let x_4040 : i32 = u_xlati11;
        let x_4042 : i32 = u_xlati11;
        let x_4045 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[(x_4040 / 4i)][(x_4042 % 4i)];
        let x_4047 : vec3<f32> = vs_TEXCOORD7;
        let x_4050 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4045.x, x_4045.y, x_4045.w) * vec3<f32>(x_4047.x, x_4047.x, x_4047.x)) + x_4050);
        let x_4052 : i32 = u_xlati11;
        let x_4055 : i32 = u_xlati11;
        let x_4059 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4052 + 2i) / 4i)][((x_4055 + 2i) % 4i)];
        let x_4061 : vec3<f32> = vs_TEXCOORD7;
        let x_4064 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4059.x, x_4059.y, x_4059.w) * vec3<f32>(x_4061.z, x_4061.z, x_4061.z)) + x_4064);
        let x_4066 : vec3<f32> = u_xlat37;
        let x_4067 : i32 = u_xlati11;
        let x_4070 : i32 = u_xlati11;
        let x_4074 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4067 + 3i) / 4i)][((x_4070 + 3i) % 4i)];
        u_xlat37 = (x_4066 + vec3<f32>(x_4074.x, x_4074.y, x_4074.w));
        let x_4077 : vec3<f32> = u_xlat37;
        let x_4079 : vec3<f32> = u_xlat37;
        let x_4081 : vec2<f32> = (vec2<f32>(x_4077.x, x_4077.y) / vec2<f32>(x_4079.z, x_4079.z));
        let x_4082 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4081.x, x_4081.y, x_4082.z);
        let x_4084 : vec3<f32> = u_xlat37;
        let x_4087 : vec2<f32> = ((vec2<f32>(x_4084.x, x_4084.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4088 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4087.x, x_4087.y, x_4088.z);
        let x_4090 : vec3<f32> = u_xlat37;
        let x_4094 : vec2<f32> = clamp(vec2<f32>(x_4090.x, x_4090.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4095 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4094.x, x_4094.y, x_4095.z);
        let x_4097 : i32 = u_xlati6;
        let x_4099 : vec4<f32> = x_2104.x_AdditionalLightsCookieAtlasUVRects[x_4097];
        let x_4101 : vec3<f32> = u_xlat37;
        let x_4104 : i32 = u_xlati6;
        let x_4106 : vec4<f32> = x_2104.x_AdditionalLightsCookieAtlasUVRects[x_4104];
        let x_4108 : vec2<f32> = ((vec2<f32>(x_4099.x, x_4099.y) * vec2<f32>(x_4101.x, x_4101.y)) + vec2<f32>(x_4106.z, x_4106.w));
        let x_4109 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4108.x, x_4108.y, x_4109.z);
      } else {
        let x_4112 : i32 = u_xlati87;
        u_xlatb87 = (x_4112 == 1i);
        let x_4114 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4114);
        let x_4116 : i32 = u_xlati87;
        if ((x_4116 != 0i)) {
          let x_4120 : vec3<f32> = vs_TEXCOORD7;
          let x_4122 : i32 = u_xlati11;
          let x_4125 : i32 = u_xlati11;
          let x_4129 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4122 + 1i) / 4i)][((x_4125 + 1i) % 4i)];
          let x_4131 : vec2<f32> = (vec2<f32>(x_4120.y, x_4120.y) * vec2<f32>(x_4129.x, x_4129.y));
          let x_4132 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4131.x, x_4131.y, x_4132.z, x_4132.w);
          let x_4134 : i32 = u_xlati11;
          let x_4136 : i32 = u_xlati11;
          let x_4139 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[(x_4134 / 4i)][(x_4136 % 4i)];
          let x_4141 : vec3<f32> = vs_TEXCOORD7;
          let x_4144 : vec4<f32> = u_xlat12;
          let x_4146 : vec2<f32> = ((vec2<f32>(x_4139.x, x_4139.y) * vec2<f32>(x_4141.x, x_4141.x)) + vec2<f32>(x_4144.x, x_4144.y));
          let x_4147 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4146.x, x_4146.y, x_4147.z, x_4147.w);
          let x_4149 : i32 = u_xlati11;
          let x_4152 : i32 = u_xlati11;
          let x_4156 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4149 + 2i) / 4i)][((x_4152 + 2i) % 4i)];
          let x_4158 : vec3<f32> = vs_TEXCOORD7;
          let x_4161 : vec4<f32> = u_xlat12;
          let x_4163 : vec2<f32> = ((vec2<f32>(x_4156.x, x_4156.y) * vec2<f32>(x_4158.z, x_4158.z)) + vec2<f32>(x_4161.x, x_4161.y));
          let x_4164 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4163.x, x_4163.y, x_4164.z, x_4164.w);
          let x_4166 : vec4<f32> = u_xlat12;
          let x_4168 : i32 = u_xlati11;
          let x_4171 : i32 = u_xlati11;
          let x_4175 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4168 + 3i) / 4i)][((x_4171 + 3i) % 4i)];
          let x_4177 : vec2<f32> = (vec2<f32>(x_4166.x, x_4166.y) + vec2<f32>(x_4175.x, x_4175.y));
          let x_4178 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4177.x, x_4177.y, x_4178.z, x_4178.w);
          let x_4180 : vec4<f32> = u_xlat12;
          let x_4183 : vec2<f32> = ((vec2<f32>(x_4180.x, x_4180.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4184 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4183.x, x_4183.y, x_4184.z, x_4184.w);
          let x_4186 : vec4<f32> = u_xlat12;
          let x_4188 : vec2<f32> = fract(vec2<f32>(x_4186.x, x_4186.y));
          let x_4189 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4188.x, x_4188.y, x_4189.z, x_4189.w);
          let x_4191 : i32 = u_xlati6;
          let x_4193 : vec4<f32> = x_2104.x_AdditionalLightsCookieAtlasUVRects[x_4191];
          let x_4195 : vec4<f32> = u_xlat12;
          let x_4198 : i32 = u_xlati6;
          let x_4200 : vec4<f32> = x_2104.x_AdditionalLightsCookieAtlasUVRects[x_4198];
          let x_4202 : vec2<f32> = ((vec2<f32>(x_4193.x, x_4193.y) * vec2<f32>(x_4195.x, x_4195.y)) + vec2<f32>(x_4200.z, x_4200.w));
          let x_4203 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4202.x, x_4202.y, x_4203.z);
        } else {
          let x_4206 : vec3<f32> = vs_TEXCOORD7;
          let x_4208 : i32 = u_xlati11;
          let x_4211 : i32 = u_xlati11;
          let x_4215 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4208 + 1i) / 4i)][((x_4211 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4206.y, x_4206.y, x_4206.y, x_4206.y) * x_4215);
          let x_4217 : i32 = u_xlati11;
          let x_4219 : i32 = u_xlati11;
          let x_4222 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[(x_4217 / 4i)][(x_4219 % 4i)];
          let x_4223 : vec3<f32> = vs_TEXCOORD7;
          let x_4226 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4222 * vec4<f32>(x_4223.x, x_4223.x, x_4223.x, x_4223.x)) + x_4226);
          let x_4228 : i32 = u_xlati11;
          let x_4231 : i32 = u_xlati11;
          let x_4235 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4228 + 2i) / 4i)][((x_4231 + 2i) % 4i)];
          let x_4236 : vec3<f32> = vs_TEXCOORD7;
          let x_4239 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4235 * vec4<f32>(x_4236.z, x_4236.z, x_4236.z, x_4236.z)) + x_4239);
          let x_4241 : vec4<f32> = u_xlat12;
          let x_4242 : i32 = u_xlati11;
          let x_4245 : i32 = u_xlati11;
          let x_4249 : vec4<f32> = x_2104.x_AdditionalLightsWorldToLights[((x_4242 + 3i) / 4i)][((x_4245 + 3i) % 4i)];
          u_xlat12 = (x_4241 + x_4249);
          let x_4251 : vec4<f32> = u_xlat12;
          let x_4253 : vec4<f32> = u_xlat12;
          let x_4255 : vec3<f32> = (vec3<f32>(x_4251.x, x_4251.y, x_4251.z) / vec3<f32>(x_4253.w, x_4253.w, x_4253.w));
          let x_4256 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4255.x, x_4255.y, x_4255.z, x_4256.w);
          let x_4258 : vec4<f32> = u_xlat12;
          let x_4260 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4258.x, x_4258.y, x_4258.z), vec3<f32>(x_4260.x, x_4260.y, x_4260.z));
          let x_4263 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4263);
          let x_4265 : f32 = u_xlat87;
          let x_4267 : vec4<f32> = u_xlat12;
          let x_4269 : vec3<f32> = (vec3<f32>(x_4265, x_4265, x_4265) * vec3<f32>(x_4267.x, x_4267.y, x_4267.z));
          let x_4270 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4269.x, x_4269.y, x_4269.z, x_4270.w);
          let x_4272 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4272.x, x_4272.y, x_4272.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4277 : f32 = u_xlat87;
          u_xlat87 = max(x_4277, 0.00000099999999747524f);
          let x_4280 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4280);
          let x_4282 : f32 = u_xlat87;
          let x_4284 : vec4<f32> = u_xlat12;
          let x_4286 : vec3<f32> = (vec3<f32>(x_4282, x_4282, x_4282) * vec3<f32>(x_4284.z, x_4284.x, x_4284.y));
          let x_4287 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4286.x, x_4286.y, x_4286.z, x_4287.w);
          let x_4290 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4290);
          let x_4294 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4294, 0.0f, 1.0f);
          let x_4297 : vec4<f32> = u_xlat13;
          let x_4299 : vec4<bool> = (vec4<f32>(x_4297.y, x_4297.y, x_4297.y, x_4297.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4300 : vec2<bool> = vec2<bool>(x_4299.x, x_4299.w);
          let x_4301 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4300.x, x_4301.y, x_4301.z, x_4300.y);
          let x_4304 : bool = u_xlatb11.x;
          if (x_4304) {
            let x_4309 : f32 = u_xlat13.x;
            x_4305 = x_4309;
          } else {
            let x_4312 : f32 = u_xlat13.x;
            x_4305 = -(x_4312);
          }
          let x_4314 : f32 = x_4305;
          u_xlat11.x = x_4314;
          let x_4317 : bool = u_xlatb11.w;
          if (x_4317) {
            let x_4322 : f32 = u_xlat13.x;
            x_4318 = x_4322;
          } else {
            let x_4325 : f32 = u_xlat13.x;
            x_4318 = -(x_4325);
          }
          let x_4327 : f32 = x_4318;
          u_xlat11.w = x_4327;
          let x_4329 : vec4<f32> = u_xlat12;
          let x_4331 : f32 = u_xlat87;
          let x_4334 : vec4<f32> = u_xlat11;
          let x_4336 : vec2<f32> = ((vec2<f32>(x_4329.x, x_4329.y) * vec2<f32>(x_4331, x_4331)) + vec2<f32>(x_4334.x, x_4334.w));
          let x_4337 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4336.x, x_4337.y, x_4337.z, x_4336.y);
          let x_4339 : vec4<f32> = u_xlat11;
          let x_4342 : vec2<f32> = ((vec2<f32>(x_4339.x, x_4339.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4343 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4342.x, x_4343.y, x_4343.z, x_4342.y);
          let x_4345 : vec4<f32> = u_xlat11;
          let x_4349 : vec2<f32> = clamp(vec2<f32>(x_4345.x, x_4345.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4350 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4349.x, x_4350.y, x_4350.z, x_4349.y);
          let x_4352 : i32 = u_xlati6;
          let x_4354 : vec4<f32> = x_2104.x_AdditionalLightsCookieAtlasUVRects[x_4352];
          let x_4356 : vec4<f32> = u_xlat11;
          let x_4359 : i32 = u_xlati6;
          let x_4361 : vec4<f32> = x_2104.x_AdditionalLightsCookieAtlasUVRects[x_4359];
          let x_4363 : vec2<f32> = ((vec2<f32>(x_4354.x, x_4354.y) * vec2<f32>(x_4356.x, x_4356.w)) + vec2<f32>(x_4361.z, x_4361.w));
          let x_4364 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4363.x, x_4363.y, x_4364.z);
        }
      }
      let x_4371 : vec3<f32> = u_xlat37;
      let x_4373 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4371.x, x_4371.y), 0.0f);
      u_xlat11 = x_4373;
      let x_4375 : bool = u_xlatb7.y;
      if (x_4375) {
        let x_4380 : f32 = u_xlat11.w;
        x_4376 = x_4380;
      } else {
        let x_4383 : f32 = u_xlat11.x;
        x_4376 = x_4383;
      }
      let x_4384 : f32 = x_4376;
      u_xlat87 = x_4384;
      let x_4386 : bool = u_xlatb7.x;
      if (x_4386) {
        let x_4390 : vec4<f32> = u_xlat11;
        x_4387 = vec3<f32>(x_4390.x, x_4390.y, x_4390.z);
      } else {
        let x_4393 : f32 = u_xlat87;
        x_4387 = vec3<f32>(x_4393, x_4393, x_4393);
      }
      let x_4395 : vec3<f32> = x_4387;
      let x_4396 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4395.x, x_4395.y, x_4395.z, x_4396.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4402 : vec4<f32> = u_xlat11;
    let x_4404 : i32 = u_xlati6;
    let x_4406 : vec4<f32> = x_2580.x_AdditionalLightsColor[x_4404];
    let x_4408 : vec3<f32> = (vec3<f32>(x_4402.x, x_4402.y, x_4402.z) * vec3<f32>(x_4406.x, x_4406.y, x_4406.z));
    let x_4409 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4408.x, x_4408.y, x_4408.z, x_4409.w);
    let x_4411 : f32 = u_xlat59;
    let x_4412 : f32 = u_xlat86;
    u_xlat6.x = (x_4411 * x_4412);
    let x_4415 : vec3<f32> = u_xlat2;
    let x_4416 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(x_4415, vec3<f32>(x_4416.x, x_4416.y, x_4416.z));
    let x_4419 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4419, 0.0f, 1.0f);
    let x_4422 : f32 = u_xlat6.x;
    let x_4423 : f32 = u_xlat59;
    u_xlat6.x = (x_4422 * x_4423);
    let x_4426 : vec4<f32> = u_xlat6;
    let x_4428 : vec4<f32> = u_xlat11;
    let x_4430 : vec3<f32> = (vec3<f32>(x_4426.x, x_4426.x, x_4426.x) * vec3<f32>(x_4428.x, x_4428.y, x_4428.z));
    let x_4431 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4430.x, x_4430.y, x_4430.z, x_4431.w);
    let x_4433 : vec4<f32> = u_xlat9;
    let x_4435 : f32 = u_xlat85;
    let x_4438 : vec4<f32> = u_xlat1;
    let x_4440 : vec3<f32> = ((vec3<f32>(x_4433.x, x_4433.y, x_4433.z) * vec3<f32>(x_4435, x_4435, x_4435)) + vec3<f32>(x_4438.x, x_4438.y, x_4438.z));
    let x_4441 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4440.x, x_4440.y, x_4440.z, x_4441.w);
    let x_4443 : vec4<f32> = u_xlat9;
    let x_4445 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4443.x, x_4443.y, x_4443.z), vec3<f32>(x_4445.x, x_4445.y, x_4445.z));
    let x_4450 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4450, 1.17549435e-38f);
    let x_4454 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4454);
    let x_4457 : vec4<f32> = u_xlat6;
    let x_4459 : vec4<f32> = u_xlat9;
    let x_4461 : vec3<f32> = (vec3<f32>(x_4457.x, x_4457.x, x_4457.x) * vec3<f32>(x_4459.x, x_4459.y, x_4459.z));
    let x_4462 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4461.x, x_4461.y, x_4461.z, x_4462.w);
    let x_4464 : vec3<f32> = u_xlat2;
    let x_4465 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(x_4464, vec3<f32>(x_4465.x, x_4465.y, x_4465.z));
    let x_4470 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4470, 0.0f, 1.0f);
    let x_4473 : vec4<f32> = u_xlat10;
    let x_4475 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4473.x, x_4473.y, x_4473.z), vec3<f32>(x_4475.x, x_4475.y, x_4475.z));
    let x_4478 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4478, 0.0f, 1.0f);
    let x_4481 : f32 = u_xlat6.x;
    let x_4483 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4481 * x_4483);
    let x_4487 : f32 = u_xlat6.x;
    let x_4489 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4487 * x_4489) + 1.00001001358032226562f);
    let x_4493 : f32 = u_xlat59;
    let x_4494 : f32 = u_xlat59;
    u_xlat59 = (x_4493 * x_4494);
    let x_4497 : f32 = u_xlat6.x;
    let x_4499 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4497 * x_4499);
    let x_4502 : f32 = u_xlat59;
    u_xlat59 = max(x_4502, 0.10000000149011611938f);
    let x_4505 : f32 = u_xlat6.x;
    let x_4506 : f32 = u_xlat59;
    u_xlat6.x = (x_4505 * x_4506);
    let x_4509 : f32 = u_xlat82;
    let x_4511 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4509 * x_4511);
    let x_4514 : f32 = u_xlat80;
    let x_4516 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4514 / x_4516);
    let x_4519 : vec4<f32> = u_xlat5;
    let x_4521 : vec4<f32> = u_xlat6;
    let x_4524 : vec4<f32> = u_xlat4;
    let x_4526 : vec3<f32> = ((vec3<f32>(x_4519.x, x_4519.y, x_4519.z) * vec3<f32>(x_4521.x, x_4521.x, x_4521.x)) + vec3<f32>(x_4524.x, x_4524.y, x_4524.z));
    let x_4527 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4526.x, x_4526.y, x_4526.z, x_4527.w);
    let x_4529 : vec4<f32> = u_xlat9;
    let x_4531 : vec4<f32> = u_xlat11;
    let x_4534 : vec4<f32> = u_xlat8;
    let x_4536 : vec3<f32> = ((vec3<f32>(x_4529.x, x_4529.y, x_4529.z) * vec3<f32>(x_4531.x, x_4531.y, x_4531.z)) + vec3<f32>(x_4534.x, x_4534.y, x_4534.z));
    let x_4537 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4536.x, x_4536.y, x_4536.z, x_4537.w);

    continuing {
      let x_4539 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4539 + bitcast<u32>(1i));
    }
  }
  let x_4541 : vec4<f32> = u_xlat3;
  let x_4543 : f32 = u_xlat26;
  let x_4546 : vec3<f32> = u_xlat32;
  u_xlat0 = ((vec3<f32>(x_4541.x, x_4541.y, x_4541.z) * vec3<f32>(x_4543, x_4543, x_4543)) + x_4546);
  let x_4548 : vec4<f32> = u_xlat8;
  let x_4550 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4548.x, x_4548.y, x_4548.z) + x_4550);
  let x_4552 : f32 = u_xlat78;
  let x_4554 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4552, x_4552, x_4552) * x_4554);
  let x_4556 : f32 = u_xlat79;
  let x_4557 : f32 = u_xlat79;
  u_xlat78 = (x_4556 * -(x_4557));
  let x_4560 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4560);
  let x_4564 : vec3<f32> = u_xlat0;
  let x_4565 : f32 = u_xlat78;
  let x_4567 : vec3<f32> = (x_4564 * vec3<f32>(x_4565, x_4565, x_4565));
  let x_4568 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4567.x, x_4567.y, x_4567.z, x_4568.w);
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


