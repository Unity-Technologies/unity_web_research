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

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

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

@group(1) @binding(4) var<uniform> x_615 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(1) @binding(2) var<uniform> x_837 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2296 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu55 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati55 : i32;

@group(1) @binding(1) var<uniform> x_2794 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_585 : vec3<f32>;
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
  var x_2249 : f32;
  var x_2379 : f32;
  var x_2390 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2923 : f32;
  var x_2933 : f32;
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
  var x_4511 : f32;
  var x_4524 : f32;
  var x_4582 : f32;
  var x_4593 : vec3<f32>;
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
  let x_392 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_392;
  let x_395 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_395;
  let x_398 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_398;
  let x_401 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_401;
  let x_404 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_404;
  let x_407 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_407;
  let x_410 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_410;
  let x_413 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_413;
  let x_415 : vec4<f32> = u_xlat6;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_415 + x_416);
  let x_419 : f32 = u_xlat0.z;
  u_xlat7.x = x_419;
  let x_422 : f32 = u_xlat1.z;
  u_xlat7.y = x_422;
  let x_425 : f32 = u_xlat2.z;
  u_xlat7.z = x_425;
  let x_428 : f32 = u_xlat3.y;
  u_xlat7.w = x_428;
  let x_430 : vec4<f32> = u_xlat9;
  let x_433 : f32 = x_59.x_Smoothness0;
  let x_435 : f32 = x_59.x_Smoothness1;
  let x_437 : f32 = x_59.x_Smoothness2;
  let x_439 : f32 = x_59.x_Smoothness3;
  let x_442 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_430) * vec4<f32>(x_433, x_435, x_437, x_439)) + x_442);
  let x_446 : f32 = x_59.x_LayerHasMask0;
  let x_449 : f32 = x_59.x_LayerHasMask1;
  let x_452 : f32 = x_59.x_LayerHasMask2;
  let x_455 : f32 = x_59.x_LayerHasMask3;
  let x_457 : vec4<f32> = u_xlat7;
  let x_459 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_446, x_449, x_452, x_455) * x_457) + x_459);
  let x_462 : vec4<f32> = u_xlat4;
  let x_463 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_462, x_463);
  let x_466 : f32 = u_xlat0.x;
  u_xlat7.x = x_466;
  let x_469 : f32 = u_xlat1.x;
  u_xlat7.y = x_469;
  let x_472 : f32 = u_xlat2.x;
  u_xlat7.z = x_472;
  let x_475 : f32 = u_xlat3.x;
  u_xlat7.w = x_475;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_59.x_Metallic0;
  let x_483 : f32 = x_59.x_Metallic1;
  let x_486 : f32 = x_59.x_Metallic2;
  let x_489 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_477 + -(vec4<f32>(x_480, x_483, x_486, x_489)));
  let x_494 : f32 = x_59.x_LayerHasMask0;
  let x_496 : f32 = x_59.x_LayerHasMask1;
  let x_498 : f32 = x_59.x_LayerHasMask2;
  let x_500 : f32 = x_59.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : f32 = x_59.x_Metallic0;
  let x_507 : f32 = x_59.x_Metallic1;
  let x_509 : f32 = x_59.x_Metallic2;
  let x_511 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + vec4<f32>(x_505, x_507, x_509, x_511));
  let x_514 : vec4<f32> = u_xlat4;
  let x_515 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_514, x_515);
  let x_519 : f32 = u_xlat0.y;
  u_xlat3.x = x_519;
  let x_522 : f32 = u_xlat1.y;
  u_xlat3.y = x_522;
  let x_525 : f32 = u_xlat2.y;
  u_xlat3.z = x_525;
  let x_527 : vec4<f32> = u_xlat6;
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_527) + x_529);
  let x_532 : f32 = x_59.x_LayerHasMask0;
  let x_534 : f32 = x_59.x_LayerHasMask1;
  let x_536 : f32 = x_59.x_LayerHasMask2;
  let x_538 : f32 = x_59.x_LayerHasMask3;
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_532, x_534, x_536, x_538) * x_540) + x_542);
  let x_545 : vec4<f32> = u_xlat4;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_545, x_546);
  let x_550 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_550 == 0.0f);
  let x_555 : vec3<f32> = vs_TEXCOORD7;
  let x_559 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_555) + x_559);
  let x_561 : vec3<f32> = u_xlat27;
  let x_562 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_561, x_562);
  let x_566 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_566);
  let x_569 : vec3<f32> = u_xlat27;
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat27 = (x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_574;
  let x_577 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_577;
  let x_581 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : vec3<f32> = u_xlat27;
    x_585 = x_588;
  } else {
    let x_590 : vec4<f32> = u_xlat2;
    x_585 = vec3<f32>(x_590.x, x_590.y, x_590.z);
  }
  let x_592 : vec3<f32> = x_585;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  let x_597 : vec3<f32> = vs_TEXCOORD3;
  u_xlat79 = dot(x_596, x_597);
  let x_599 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_599);
  let x_601 : f32 = u_xlat79;
  let x_603 : vec3<f32> = vs_TEXCOORD3;
  let x_604 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * x_603);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec3<f32> = vs_TEXCOORD7;
  let x_617 : vec4<f32> = x_615.x_CascadeShadowSplitSpheres0;
  let x_620 : vec3<f32> = (x_607 + -(vec3<f32>(x_617.x, x_617.y, x_617.z)));
  let x_621 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec3<f32> = vs_TEXCOORD7;
  let x_625 : vec4<f32> = x_615.x_CascadeShadowSplitSpheres1;
  let x_628 : vec3<f32> = (x_623 + -(vec3<f32>(x_625.x, x_625.y, x_625.z)));
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = vs_TEXCOORD7;
  let x_634 : vec4<f32> = x_615.x_CascadeShadowSplitSpheres2;
  let x_637 : vec3<f32> = (x_631 + -(vec3<f32>(x_634.x, x_634.y, x_634.z)));
  let x_638 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec3<f32> = vs_TEXCOORD7;
  let x_642 : vec4<f32> = x_615.x_CascadeShadowSplitSpheres3;
  let x_645 : vec3<f32> = (x_640 + -(vec3<f32>(x_642.x, x_642.y, x_642.z)));
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat3;
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_648.x, x_648.y, x_648.z), vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_654.x, x_654.y, x_654.z), vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_660 : vec4<f32> = u_xlat6;
  let x_662 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_660.x, x_660.y, x_660.z), vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_666 : vec4<f32> = u_xlat7;
  let x_668 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_666.x, x_666.y, x_666.z), vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = x_615.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_674 < x_676);
  let x_679 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_679);
  let x_683 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_683);
  let x_687 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_687);
  let x_691 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_691);
  let x_695 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_695);
  let x_700 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_700);
  let x_704 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_704);
  let x_707 : vec4<f32> = u_xlat3;
  let x_709 : vec4<f32> = u_xlat4;
  let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) + vec3<f32>(x_709.y, x_709.z, x_709.w));
  let x_712 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat3;
  let x_717 : vec3<f32> = max(vec3<f32>(x_714.x, x_714.y, x_714.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_718.x, x_717.x, x_717.y, x_717.z);
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_720, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_725 : f32 = u_xlat79;
  u_xlat79 = (-(x_725) + 4.0f);
  let x_730 : f32 = u_xlat79;
  u_xlatu79 = u32(x_730);
  let x_734 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_734) << bitcast<u32>(2i));
  let x_737 : vec3<f32> = vs_TEXCOORD7;
  let x_739 : i32 = u_xlati79;
  let x_742 : i32 = u_xlati79;
  let x_746 : vec4<f32> = x_615.x_MainLightWorldToShadow[((x_739 + 1i) / 4i)][((x_742 + 1i) % 4i)];
  let x_748 : vec3<f32> = (vec3<f32>(x_737.y, x_737.y, x_737.y) * vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : i32 = u_xlati79;
  let x_753 : i32 = u_xlati79;
  let x_756 : vec4<f32> = x_615.x_MainLightWorldToShadow[(x_751 / 4i)][(x_753 % 4i)];
  let x_758 : vec3<f32> = vs_TEXCOORD7;
  let x_761 : vec4<f32> = u_xlat3;
  let x_763 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758.x, x_758.x, x_758.x)) + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : i32 = u_xlati79;
  let x_769 : i32 = u_xlati79;
  let x_773 : vec4<f32> = x_615.x_MainLightWorldToShadow[((x_766 + 2i) / 4i)][((x_769 + 2i) % 4i)];
  let x_775 : vec3<f32> = vs_TEXCOORD7;
  let x_778 : vec4<f32> = u_xlat3;
  let x_780 : vec3<f32> = ((vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(x_775.z, x_775.z, x_775.z)) + vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat3;
  let x_785 : i32 = u_xlati79;
  let x_788 : i32 = u_xlati79;
  let x_792 : vec4<f32> = x_615.x_MainLightWorldToShadow[((x_785 + 3i) / 4i)][((x_788 + 3i) % 4i)];
  let x_794 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_799 : f32 = vs_TEXCOORD7.y;
  let x_801 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat79 = (x_799 * x_801);
  let x_804 : f32 = x_29.unity_MatrixV[0i].z;
  let x_806 : f32 = vs_TEXCOORD7.x;
  let x_808 : f32 = u_xlat79;
  u_xlat79 = ((x_804 * x_806) + x_808);
  let x_811 : f32 = x_29.unity_MatrixV[2i].z;
  let x_813 : f32 = vs_TEXCOORD7.z;
  let x_815 : f32 = u_xlat79;
  u_xlat79 = ((x_811 * x_813) + x_815);
  let x_817 : f32 = u_xlat79;
  let x_819 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat79 = (x_817 + x_819);
  let x_821 : f32 = u_xlat79;
  let x_824 : f32 = x_29.x_ProjectionParams.y;
  u_xlat79 = (-(x_821) + -(x_824));
  let x_827 : f32 = u_xlat79;
  u_xlat79 = max(x_827, 0.0f);
  let x_829 : f32 = u_xlat79;
  let x_831 : f32 = x_29.unity_FogParams.x;
  u_xlat79 = (x_829 * x_831);
  u_xlat2.w = 1.0f;
  let x_839 : vec4<f32> = x_837.unity_SHAr;
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_839, x_840);
  let x_844 : vec4<f32> = x_837.unity_SHAg;
  let x_845 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_844, x_845);
  let x_849 : vec4<f32> = x_837.unity_SHAb;
  let x_850 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_849, x_850);
  let x_853 : vec4<f32> = u_xlat2;
  let x_855 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_853.y, x_853.z, x_853.z, x_853.x) * vec4<f32>(x_855.x, x_855.y, x_855.z, x_855.z));
  let x_859 : vec4<f32> = x_837.unity_SHBr;
  let x_860 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_859, x_860);
  let x_864 : vec4<f32> = x_837.unity_SHBg;
  let x_865 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_864, x_865);
  let x_869 : vec4<f32> = x_837.unity_SHBb;
  let x_870 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_869, x_870);
  let x_875 : f32 = u_xlat2.y;
  let x_877 : f32 = u_xlat2.y;
  u_xlat80 = (x_875 * x_877);
  let x_880 : f32 = u_xlat2.x;
  let x_882 : f32 = u_xlat2.x;
  let x_884 : f32 = u_xlat80;
  u_xlat80 = ((x_880 * x_882) + -(x_884));
  let x_889 : vec4<f32> = x_837.unity_SHC;
  let x_891 : f32 = u_xlat80;
  let x_894 : vec4<f32> = u_xlat7;
  let x_896 : vec3<f32> = ((vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(x_891, x_891, x_891)) + vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat4;
  let x_901 : vec4<f32> = u_xlat6;
  let x_903 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) + vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat4;
  let x_908 : vec3<f32> = max(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_912 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_912) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_918 : f32 = u_xlat80;
  u_xlat81 = (-(x_918) + 1.0f);
  let x_921 : f32 = u_xlat80;
  let x_923 : vec4<f32> = u_xlat5;
  let x_925 : vec3<f32> = (vec3<f32>(x_921, x_921, x_921) * vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat5;
  let x_932 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_933 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec3<f32> = u_xlat0;
  let x_937 : vec4<f32> = u_xlat5;
  let x_942 : vec3<f32> = ((vec3<f32>(x_935.x, x_935.x, x_935.x) * vec3<f32>(x_937.x, x_937.y, x_937.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_943 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : f32 = u_xlat52;
  u_xlat0.x = (-(x_945) + 1.0f);
  let x_950 : f32 = u_xlat0.x;
  let x_952 : f32 = u_xlat0.x;
  u_xlat80 = (x_950 * x_952);
  let x_954 : f32 = u_xlat80;
  u_xlat80 = max(x_954, 0.0078125f);
  let x_958 : f32 = u_xlat80;
  let x_959 : f32 = u_xlat80;
  u_xlat82 = (x_958 * x_959);
  let x_961 : f32 = u_xlat52;
  let x_962 : f32 = u_xlat81;
  u_xlat52 = (x_961 + x_962);
  let x_964 : f32 = u_xlat52;
  u_xlat52 = clamp(x_964, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat80;
  u_xlat81 = ((x_966 * 4.0f) + 2.0f);
  let x_969 : f32 = u_xlat26;
  u_xlat26 = min(x_969, 1.0f);
  let x_973 : f32 = x_615.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_973);
  let x_975 : bool = u_xlatb83;
  if (x_975) {
    let x_979 : f32 = x_615.x_MainLightShadowParams.y;
    u_xlatb83 = (x_979 == 1.0f);
    let x_981 : bool = u_xlatb83;
    if (x_981) {
      let x_984 : vec4<f32> = u_xlat3;
      let x_987 : vec4<f32> = x_615.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) + x_987);
      let x_990 : vec4<f32> = u_xlat7;
      let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
      let x_993 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_991.x, x_991.y, x_993);
      let x_1005 : vec3<f32> = txVec0;
      let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
      u_xlat8.x = x_1007;
      let x_1010 : vec4<f32> = u_xlat7;
      let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
      let x_1013 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
      let x_1020 : vec3<f32> = txVec1;
      let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1020.xy, x_1020.z);
      u_xlat8.y = x_1022;
      let x_1024 : vec4<f32> = u_xlat3;
      let x_1027 : vec4<f32> = x_615.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) + x_1027);
      let x_1030 : vec4<f32> = u_xlat7;
      let x_1031 : vec2<f32> = vec2<f32>(x_1030.x, x_1030.y);
      let x_1033 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1031.x, x_1031.y, x_1033);
      let x_1040 : vec3<f32> = txVec2;
      let x_1042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1040.xy, x_1040.z);
      u_xlat8.z = x_1042;
      let x_1045 : vec4<f32> = u_xlat7;
      let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
      let x_1048 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
      let x_1055 : vec3<f32> = txVec3;
      let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1055.xy, x_1055.z);
      u_xlat8.w = x_1057;
      let x_1060 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_1060, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1067 : f32 = x_615.x_MainLightShadowParams.y;
      u_xlatb84 = (x_1067 == 2.0f);
      let x_1069 : bool = u_xlatb84;
      if (x_1069) {
        let x_1072 : vec4<f32> = u_xlat3;
        let x_1075 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.z, x_1075.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1083 : vec2<f32> = floor(vec2<f32>(x_1081.x, x_1081.y));
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
        let x_1088 : vec4<f32> = u_xlat3;
        let x_1091 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1091.z, x_1091.w)) + -(vec2<f32>(x_1094.x, x_1094.y)));
        let x_1098 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1098.x, x_1098.x, x_1098.y, x_1098.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1102 : vec4<f32> = u_xlat8;
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1102.x, x_1102.x, x_1102.z, x_1102.z) * vec4<f32>(x_1104.x, x_1104.x, x_1104.z, x_1104.z));
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1111 : vec2<f32> = (vec2<f32>(x_1107.y, x_1107.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1111.x, x_1112.y, x_1111.y, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat9;
        let x_1117 : vec2<f32> = u_xlat59;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1117));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1123 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1123) + vec2<f32>(1.0f, 1.0f));
        let x_1127 : vec2<f32> = u_xlat59;
        let x_1129 : vec2<f32> = min(x_1127, vec2<f32>(0.0f, 0.0f));
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat10;
        let x_1135 : vec4<f32> = u_xlat10;
        let x_1138 : vec2<f32> = u_xlat61;
        let x_1139 : vec2<f32> = ((-(vec2<f32>(x_1132.x, x_1132.y)) * vec2<f32>(x_1135.x, x_1135.y)) + x_1138);
        let x_1140 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1142, vec2<f32>(0.0f, 0.0f));
        let x_1144 : vec2<f32> = u_xlat59;
        let x_1146 : vec2<f32> = u_xlat59;
        let x_1148 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1144) * x_1146) + vec2<f32>(x_1148.y, x_1148.w));
        let x_1151 : vec4<f32> = u_xlat10;
        let x_1153 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) + vec2<f32>(1.0f, 1.0f));
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1156 + vec2<f32>(1.0f, 1.0f));
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1163 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1165 : vec2<f32> = u_xlat61;
        let x_1166 : vec2<f32> = (x_1165 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat10;
        let x_1171 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1172 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1174 : vec2<f32> = u_xlat59;
        let x_1175 : vec2<f32> = (x_1174 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1176 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1178.y, x_1178.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1182 : f32 = u_xlat10.x;
        u_xlat11.z = x_1182;
        let x_1185 : f32 = u_xlat59.x;
        u_xlat11.w = x_1185;
        let x_1188 : f32 = u_xlat12.x;
        u_xlat9.z = x_1188;
        let x_1191 : f32 = u_xlat8.x;
        u_xlat9.w = x_1191;
        let x_1193 : vec4<f32> = u_xlat9;
        let x_1195 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1193.z, x_1193.w, x_1193.x, x_1193.z) + vec4<f32>(x_1195.z, x_1195.w, x_1195.x, x_1195.z));
        let x_1199 : f32 = u_xlat11.y;
        u_xlat10.z = x_1199;
        let x_1202 : f32 = u_xlat59.y;
        u_xlat10.w = x_1202;
        let x_1205 : f32 = u_xlat9.y;
        u_xlat12.z = x_1205;
        let x_1208 : f32 = u_xlat8.z;
        u_xlat12.w = x_1208;
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1212 : vec4<f32> = u_xlat12;
        let x_1214 : vec3<f32> = (vec3<f32>(x_1210.z, x_1210.y, x_1210.w) + vec3<f32>(x_1212.z, x_1212.y, x_1212.w));
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat9;
        let x_1219 : vec4<f32> = u_xlat13;
        let x_1221 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.z, x_1217.w) / vec3<f32>(x_1219.z, x_1219.w, x_1219.y));
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1224.x, x_1224.y, x_1224.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1231 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat12;
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1237 : vec3<f32> = (vec3<f32>(x_1233.z, x_1233.y, x_1233.w) / vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1242 : vec3<f32> = (vec3<f32>(x_1240.x, x_1240.y, x_1240.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1243 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat9;
        let x_1248 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1250 : vec3<f32> = (vec3<f32>(x_1245.y, x_1245.x, x_1245.z) * vec3<f32>(x_1248.x, x_1248.x, x_1248.x));
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
        let x_1253 : vec4<f32> = u_xlat10;
        let x_1256 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * vec3<f32>(x_1256.y, x_1256.y, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1262 : f32 = u_xlat10.x;
        u_xlat9.w = x_1262;
        let x_1264 : vec4<f32> = u_xlat7;
        let x_1267 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y) * vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y)) + vec4<f32>(x_1270.y, x_1270.w, x_1270.x, x_1270.w));
        let x_1273 : vec4<f32> = u_xlat7;
        let x_1276 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1273.x, x_1273.y) * vec2<f32>(x_1276.x, x_1276.y)) + vec2<f32>(x_1279.z, x_1279.w));
        let x_1283 : f32 = u_xlat9.y;
        u_xlat10.w = x_1283;
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.y, x_1285.z);
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1287.x, x_1286.x, x_1287.z, x_1286.y);
        let x_1289 : vec4<f32> = u_xlat7;
        let x_1292 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.y));
        let x_1298 : vec4<f32> = u_xlat7;
        let x_1301 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.w, x_1304.y, x_1304.w, x_1304.z));
        let x_1307 : vec4<f32> = u_xlat7;
        let x_1310 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.x, x_1313.w, x_1313.z, x_1313.w));
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1319 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1317.x, x_1317.x, x_1317.x, x_1317.y) * vec4<f32>(x_1319.z, x_1319.w, x_1319.y, x_1319.z));
        let x_1323 : vec4<f32> = u_xlat8;
        let x_1325 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1323.y, x_1323.y, x_1323.z, x_1323.z) * x_1325);
        let x_1329 : f32 = u_xlat8.z;
        let x_1331 : f32 = u_xlat13.y;
        u_xlat84 = (x_1329 * x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec4;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat7.x = x_1346;
        let x_1349 : vec4<f32> = u_xlat11;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1360 : vec3<f32> = txVec5;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1360.xy, x_1360.z);
        u_xlat33 = x_1362;
        let x_1363 : f32 = u_xlat33;
        let x_1365 : f32 = u_xlat14.y;
        u_xlat33 = (x_1363 * x_1365);
        let x_1368 : f32 = u_xlat14.x;
        let x_1370 : f32 = u_xlat7.x;
        let x_1372 : f32 = u_xlat33;
        u_xlat7.x = ((x_1368 * x_1370) + x_1372);
        let x_1376 : vec2<f32> = u_xlat59;
        let x_1378 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec6;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat33 = x_1387;
        let x_1389 : f32 = u_xlat14.z;
        let x_1390 : f32 = u_xlat33;
        let x_1393 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1389 * x_1390) + x_1393);
        let x_1397 : vec4<f32> = u_xlat10;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec7;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat33 = x_1409;
        let x_1411 : f32 = u_xlat14.w;
        let x_1412 : f32 = u_xlat33;
        let x_1415 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1411 * x_1412) + x_1415);
        let x_1419 : vec4<f32> = u_xlat12;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.x, x_1419.y);
        let x_1422 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec8;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat33 = x_1431;
        let x_1433 : f32 = u_xlat15.x;
        let x_1434 : f32 = u_xlat33;
        let x_1437 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1433 * x_1434) + x_1437);
        let x_1441 : vec4<f32> = u_xlat12;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.z, x_1441.w);
        let x_1444 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec9;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat33 = x_1453;
        let x_1455 : f32 = u_xlat15.y;
        let x_1456 : f32 = u_xlat33;
        let x_1459 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1455 * x_1456) + x_1459);
        let x_1463 : vec4<f32> = u_xlat10;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec10;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat33 = x_1475;
        let x_1477 : f32 = u_xlat15.z;
        let x_1478 : f32 = u_xlat33;
        let x_1481 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1477 * x_1478) + x_1481);
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec11;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat33 = x_1497;
        let x_1499 : f32 = u_xlat15.w;
        let x_1500 : f32 = u_xlat33;
        let x_1503 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1499 * x_1500) + x_1503);
        let x_1507 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.z, x_1507.w);
        let x_1510 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec12;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat33 = x_1519;
        let x_1520 : f32 = u_xlat84;
        let x_1521 : f32 = u_xlat33;
        let x_1524 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1520 * x_1521) + x_1524);
      } else {
        let x_1527 : vec4<f32> = u_xlat3;
        let x_1530 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1533 : vec2<f32> = ((vec2<f32>(x_1527.x, x_1527.y) * vec2<f32>(x_1530.z, x_1530.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1534 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1533.x, x_1533.y, x_1534.z, x_1534.w);
        let x_1536 : vec4<f32> = u_xlat7;
        let x_1538 : vec2<f32> = floor(vec2<f32>(x_1536.x, x_1536.y));
        let x_1539 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1541 : vec4<f32> = u_xlat3;
        let x_1544 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1547 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1541.x, x_1541.y) * vec2<f32>(x_1544.z, x_1544.w)) + -(vec2<f32>(x_1547.x, x_1547.y)));
        let x_1551 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1551.x, x_1551.x, x_1551.y, x_1551.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1554 : vec4<f32> = u_xlat8;
        let x_1556 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1554.x, x_1554.x, x_1554.z, x_1554.z) * vec4<f32>(x_1556.x, x_1556.x, x_1556.z, x_1556.z));
        let x_1559 : vec4<f32> = u_xlat9;
        let x_1563 : vec2<f32> = (vec2<f32>(x_1559.y, x_1559.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1564 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1564.x, x_1563.x, x_1564.z, x_1563.y);
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1569 : vec2<f32> = u_xlat59;
        let x_1571 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1569));
        let x_1572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1571.x, x_1572.y, x_1571.y, x_1572.w);
        let x_1574 : vec2<f32> = u_xlat59;
        let x_1576 : vec2<f32> = (-(x_1574) + vec2<f32>(1.0f, 1.0f));
        let x_1577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
        let x_1579 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1579, vec2<f32>(0.0f, 0.0f));
        let x_1581 : vec2<f32> = u_xlat61;
        let x_1583 : vec2<f32> = u_xlat61;
        let x_1585 : vec4<f32> = u_xlat9;
        let x_1587 : vec2<f32> = ((-(x_1581) * x_1583) + vec2<f32>(x_1585.x, x_1585.y));
        let x_1588 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1587.x, x_1587.y, x_1588.z, x_1588.w);
        let x_1590 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1590, vec2<f32>(0.0f, 0.0f));
        let x_1593 : vec2<f32> = u_xlat61;
        let x_1595 : vec2<f32> = u_xlat61;
        let x_1597 : vec4<f32> = u_xlat8;
        let x_1599 : vec2<f32> = ((-(x_1593) * x_1595) + vec2<f32>(x_1597.y, x_1597.w));
        let x_1600 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1599.x, x_1600.y, x_1599.y);
        let x_1602 : vec4<f32> = u_xlat9;
        let x_1605 : vec2<f32> = (vec2<f32>(x_1602.x, x_1602.y) + vec2<f32>(2.0f, 2.0f));
        let x_1606 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1605.x, x_1605.y, x_1606.z, x_1606.w);
        let x_1608 : vec3<f32> = u_xlat34;
        let x_1610 : vec2<f32> = (vec2<f32>(x_1608.x, x_1608.z) + vec2<f32>(2.0f, 2.0f));
        let x_1611 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1611.x, x_1610.x, x_1611.z, x_1610.y);
        let x_1614 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1614 * 0.08163200318813323975f);
        let x_1618 : vec4<f32> = u_xlat8;
        let x_1621 : vec3<f32> = (vec3<f32>(x_1618.z, x_1618.x, x_1618.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1622 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
        let x_1624 : vec4<f32> = u_xlat9;
        let x_1627 : vec2<f32> = (vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1628 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1627.x, x_1627.y, x_1628.z, x_1628.w);
        let x_1631 : f32 = u_xlat12.y;
        u_xlat11.x = x_1631;
        let x_1633 : vec2<f32> = u_xlat59;
        let x_1640 : vec2<f32> = ((vec2<f32>(x_1633.x, x_1633.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1641 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1641.x, x_1640.x, x_1641.z, x_1640.y);
        let x_1643 : vec2<f32> = u_xlat59;
        let x_1647 : vec2<f32> = ((vec2<f32>(x_1643.x, x_1643.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1648 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1647.x, x_1648.y, x_1647.y, x_1648.w);
        let x_1651 : f32 = u_xlat8.x;
        u_xlat9.y = x_1651;
        let x_1654 : f32 = u_xlat10.y;
        u_xlat9.w = x_1654;
        let x_1656 : vec4<f32> = u_xlat9;
        let x_1657 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1656 + x_1657);
        let x_1659 : vec2<f32> = u_xlat59;
        let x_1662 : vec2<f32> = ((vec2<f32>(x_1659.y, x_1659.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1663 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1663.x, x_1662.x, x_1663.z, x_1662.y);
        let x_1665 : vec2<f32> = u_xlat59;
        let x_1668 : vec2<f32> = ((vec2<f32>(x_1665.y, x_1665.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1669 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1668.x, x_1669.y, x_1668.y, x_1669.w);
        let x_1672 : f32 = u_xlat8.y;
        u_xlat10.y = x_1672;
        let x_1674 : vec4<f32> = u_xlat10;
        let x_1675 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1674 + x_1675);
        let x_1677 : vec4<f32> = u_xlat9;
        let x_1678 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1677 / x_1678);
        let x_1680 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1680 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1686 : vec4<f32> = u_xlat10;
        let x_1687 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1686 / x_1687);
        let x_1689 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1689 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1691 : vec4<f32> = u_xlat9;
        let x_1694 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1691.w, x_1691.x, x_1691.y, x_1691.z) * vec4<f32>(x_1694.x, x_1694.x, x_1694.x, x_1694.x));
        let x_1697 : vec4<f32> = u_xlat10;
        let x_1700 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1697.x, x_1697.w, x_1697.y, x_1697.z) * vec4<f32>(x_1700.y, x_1700.y, x_1700.y, x_1700.y));
        let x_1703 : vec4<f32> = u_xlat9;
        let x_1704 : vec3<f32> = vec3<f32>(x_1703.y, x_1703.z, x_1703.w);
        let x_1705 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1704.x, x_1705.y, x_1704.y, x_1704.z);
        let x_1708 : f32 = u_xlat10.x;
        u_xlat12.y = x_1708;
        let x_1710 : vec4<f32> = u_xlat7;
        let x_1713 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1710.x, x_1710.y, x_1710.x, x_1710.y) * vec4<f32>(x_1713.x, x_1713.y, x_1713.x, x_1713.y)) + vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1716.y));
        let x_1719 : vec4<f32> = u_xlat7;
        let x_1722 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1725 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1719.x, x_1719.y) * vec2<f32>(x_1722.x, x_1722.y)) + vec2<f32>(x_1725.w, x_1725.y));
        let x_1729 : f32 = u_xlat12.y;
        u_xlat9.y = x_1729;
        let x_1732 : f32 = u_xlat10.z;
        u_xlat12.y = x_1732;
        let x_1734 : vec4<f32> = u_xlat7;
        let x_1737 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1740 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1734.x, x_1734.y, x_1734.x, x_1734.y) * vec4<f32>(x_1737.x, x_1737.y, x_1737.x, x_1737.y)) + vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1740.y));
        let x_1743 : vec4<f32> = u_xlat7;
        let x_1746 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1749 : vec4<f32> = u_xlat12;
        let x_1751 : vec2<f32> = ((vec2<f32>(x_1743.x, x_1743.y) * vec2<f32>(x_1746.x, x_1746.y)) + vec2<f32>(x_1749.w, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
        let x_1755 : f32 = u_xlat12.y;
        u_xlat9.z = x_1755;
        let x_1758 : vec4<f32> = u_xlat7;
        let x_1761 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1764 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1758.x, x_1758.y, x_1758.x, x_1758.y) * vec4<f32>(x_1761.x, x_1761.y, x_1761.x, x_1761.y)) + vec4<f32>(x_1764.x, x_1764.y, x_1764.x, x_1764.z));
        let x_1768 : f32 = u_xlat10.w;
        u_xlat12.y = x_1768;
        let x_1771 : vec4<f32> = u_xlat7;
        let x_1774 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1771.x, x_1771.y, x_1771.x, x_1771.y) * vec4<f32>(x_1774.x, x_1774.y, x_1774.x, x_1774.y)) + vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1777.y));
        let x_1781 : vec4<f32> = u_xlat7;
        let x_1784 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat12;
        let x_1789 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.y) * vec2<f32>(x_1784.x, x_1784.y)) + vec2<f32>(x_1787.w, x_1787.y));
        let x_1790 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1789.x, x_1789.y, x_1790.z);
        let x_1793 : f32 = u_xlat12.y;
        u_xlat9.w = x_1793;
        let x_1796 : vec4<f32> = u_xlat7;
        let x_1799 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1802 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1796.x, x_1796.y) * vec2<f32>(x_1799.x, x_1799.y)) + vec2<f32>(x_1802.x, x_1802.w));
        let x_1805 : vec4<f32> = u_xlat12;
        let x_1806 : vec3<f32> = vec3<f32>(x_1805.x, x_1805.z, x_1805.w);
        let x_1807 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1806.x, x_1807.y, x_1806.y, x_1806.z);
        let x_1809 : vec4<f32> = u_xlat7;
        let x_1812 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1815 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1809.x, x_1809.y, x_1809.x, x_1809.y) * vec4<f32>(x_1812.x, x_1812.y, x_1812.x, x_1812.y)) + vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1815.y));
        let x_1819 : vec4<f32> = u_xlat7;
        let x_1822 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1825 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1819.x, x_1819.y) * vec2<f32>(x_1822.x, x_1822.y)) + vec2<f32>(x_1825.w, x_1825.y));
        let x_1829 : f32 = u_xlat9.x;
        u_xlat10.x = x_1829;
        let x_1831 : vec4<f32> = u_xlat7;
        let x_1834 : vec4<f32> = x_615.x_MainLightShadowmapSize;
        let x_1837 : vec4<f32> = u_xlat10;
        let x_1839 : vec2<f32> = ((vec2<f32>(x_1831.x, x_1831.y) * vec2<f32>(x_1834.x, x_1834.y)) + vec2<f32>(x_1837.x, x_1837.y));
        let x_1840 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
        let x_1843 : vec4<f32> = u_xlat8;
        let x_1845 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1843.x, x_1843.x, x_1843.x, x_1843.x) * x_1845);
        let x_1848 : vec4<f32> = u_xlat8;
        let x_1850 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1848.y, x_1848.y, x_1848.y, x_1848.y) * x_1850);
        let x_1853 : vec4<f32> = u_xlat8;
        let x_1855 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1853.z, x_1853.z, x_1853.z, x_1853.z) * x_1855);
        let x_1857 : vec4<f32> = u_xlat8;
        let x_1859 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1857.w, x_1857.w, x_1857.w, x_1857.w) * x_1859);
        let x_1862 : vec4<f32> = u_xlat13;
        let x_1863 : vec2<f32> = vec2<f32>(x_1862.x, x_1862.y);
        let x_1865 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1863.x, x_1863.y, x_1865);
        let x_1872 : vec3<f32> = txVec13;
        let x_1874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1872.xy, x_1872.z);
        u_xlat84 = x_1874;
        let x_1876 : vec4<f32> = u_xlat13;
        let x_1877 : vec2<f32> = vec2<f32>(x_1876.z, x_1876.w);
        let x_1879 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec14;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1886.xy, x_1886.z);
        u_xlat9.x = x_1888;
        let x_1891 : f32 = u_xlat9.x;
        let x_1893 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1891 * x_1893);
        let x_1897 : f32 = u_xlat18.x;
        let x_1898 : f32 = u_xlat84;
        let x_1901 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1897 * x_1898) + x_1901);
        let x_1904 : vec2<f32> = u_xlat59;
        let x_1906 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec15;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1913.xy, x_1913.z);
        u_xlat59.x = x_1915;
        let x_1918 : f32 = u_xlat18.z;
        let x_1920 : f32 = u_xlat59.x;
        let x_1922 : f32 = u_xlat84;
        u_xlat84 = ((x_1918 * x_1920) + x_1922);
        let x_1925 : vec4<f32> = u_xlat16;
        let x_1926 : vec2<f32> = vec2<f32>(x_1925.x, x_1925.y);
        let x_1928 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
        let x_1935 : vec3<f32> = txVec16;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1935.xy, x_1935.z);
        u_xlat59.x = x_1937;
        let x_1940 : f32 = u_xlat18.w;
        let x_1942 : f32 = u_xlat59.x;
        let x_1944 : f32 = u_xlat84;
        u_xlat84 = ((x_1940 * x_1942) + x_1944);
        let x_1947 : vec4<f32> = u_xlat14;
        let x_1948 : vec2<f32> = vec2<f32>(x_1947.x, x_1947.y);
        let x_1950 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
        let x_1957 : vec3<f32> = txVec17;
        let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1957.xy, x_1957.z);
        u_xlat59.x = x_1959;
        let x_1962 : f32 = u_xlat19.x;
        let x_1964 : f32 = u_xlat59.x;
        let x_1966 : f32 = u_xlat84;
        u_xlat84 = ((x_1962 * x_1964) + x_1966);
        let x_1969 : vec4<f32> = u_xlat14;
        let x_1970 : vec2<f32> = vec2<f32>(x_1969.z, x_1969.w);
        let x_1972 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
        let x_1979 : vec3<f32> = txVec18;
        let x_1981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1979.xy, x_1979.z);
        u_xlat59.x = x_1981;
        let x_1984 : f32 = u_xlat19.y;
        let x_1986 : f32 = u_xlat59.x;
        let x_1988 : f32 = u_xlat84;
        u_xlat84 = ((x_1984 * x_1986) + x_1988);
        let x_1991 : vec4<f32> = u_xlat15;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.x, x_1991.y);
        let x_1994 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec19;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2001.xy, x_2001.z);
        u_xlat59.x = x_2003;
        let x_2006 : f32 = u_xlat19.z;
        let x_2008 : f32 = u_xlat59.x;
        let x_2010 : f32 = u_xlat84;
        u_xlat84 = ((x_2006 * x_2008) + x_2010);
        let x_2013 : vec4<f32> = u_xlat16;
        let x_2014 : vec2<f32> = vec2<f32>(x_2013.z, x_2013.w);
        let x_2016 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2014.x, x_2014.y, x_2016);
        let x_2023 : vec3<f32> = txVec20;
        let x_2025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2023.xy, x_2023.z);
        u_xlat59.x = x_2025;
        let x_2028 : f32 = u_xlat19.w;
        let x_2030 : f32 = u_xlat59.x;
        let x_2032 : f32 = u_xlat84;
        u_xlat84 = ((x_2028 * x_2030) + x_2032);
        let x_2035 : vec4<f32> = u_xlat17;
        let x_2036 : vec2<f32> = vec2<f32>(x_2035.x, x_2035.y);
        let x_2038 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec21;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
        u_xlat59.x = x_2047;
        let x_2050 : f32 = u_xlat20.x;
        let x_2052 : f32 = u_xlat59.x;
        let x_2054 : f32 = u_xlat84;
        u_xlat84 = ((x_2050 * x_2052) + x_2054);
        let x_2057 : vec4<f32> = u_xlat17;
        let x_2058 : vec2<f32> = vec2<f32>(x_2057.z, x_2057.w);
        let x_2060 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2058.x, x_2058.y, x_2060);
        let x_2067 : vec3<f32> = txVec22;
        let x_2069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2067.xy, x_2067.z);
        u_xlat59.x = x_2069;
        let x_2072 : f32 = u_xlat20.y;
        let x_2074 : f32 = u_xlat59.x;
        let x_2076 : f32 = u_xlat84;
        u_xlat84 = ((x_2072 * x_2074) + x_2076);
        let x_2079 : vec3<f32> = u_xlat35;
        let x_2080 : vec2<f32> = vec2<f32>(x_2079.x, x_2079.y);
        let x_2082 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec23;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2089.xy, x_2089.z);
        u_xlat59.x = x_2091;
        let x_2094 : f32 = u_xlat20.z;
        let x_2096 : f32 = u_xlat59.x;
        let x_2098 : f32 = u_xlat84;
        u_xlat84 = ((x_2094 * x_2096) + x_2098);
        let x_2101 : vec2<f32> = u_xlat67;
        let x_2103 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2101.x, x_2101.y, x_2103);
        let x_2110 : vec3<f32> = txVec24;
        let x_2112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2110.xy, x_2110.z);
        u_xlat59.x = x_2112;
        let x_2115 : f32 = u_xlat20.w;
        let x_2117 : f32 = u_xlat59.x;
        let x_2119 : f32 = u_xlat84;
        u_xlat84 = ((x_2115 * x_2117) + x_2119);
        let x_2122 : vec4<f32> = u_xlat12;
        let x_2123 : vec2<f32> = vec2<f32>(x_2122.x, x_2122.y);
        let x_2125 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2123.x, x_2123.y, x_2125);
        let x_2132 : vec3<f32> = txVec25;
        let x_2134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2132.xy, x_2132.z);
        u_xlat59.x = x_2134;
        let x_2137 : f32 = u_xlat8.x;
        let x_2139 : f32 = u_xlat59.x;
        let x_2141 : f32 = u_xlat84;
        u_xlat84 = ((x_2137 * x_2139) + x_2141);
        let x_2144 : vec4<f32> = u_xlat12;
        let x_2145 : vec2<f32> = vec2<f32>(x_2144.z, x_2144.w);
        let x_2147 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
        let x_2154 : vec3<f32> = txVec26;
        let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2154.xy, x_2154.z);
        u_xlat59.x = x_2156;
        let x_2159 : f32 = u_xlat8.y;
        let x_2161 : f32 = u_xlat59.x;
        let x_2163 : f32 = u_xlat84;
        u_xlat84 = ((x_2159 * x_2161) + x_2163);
        let x_2166 : vec2<f32> = u_xlat62;
        let x_2168 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
        let x_2175 : vec3<f32> = txVec27;
        let x_2177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2175.xy, x_2175.z);
        u_xlat59.x = x_2177;
        let x_2180 : f32 = u_xlat8.z;
        let x_2182 : f32 = u_xlat59.x;
        let x_2184 : f32 = u_xlat84;
        u_xlat84 = ((x_2180 * x_2182) + x_2184);
        let x_2187 : vec4<f32> = u_xlat7;
        let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
        let x_2190 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
        let x_2197 : vec3<f32> = txVec28;
        let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
        u_xlat7.x = x_2199;
        let x_2202 : f32 = u_xlat8.w;
        let x_2204 : f32 = u_xlat7.x;
        let x_2206 : f32 = u_xlat84;
        u_xlat83 = ((x_2202 * x_2204) + x_2206);
      }
    }
  } else {
    let x_2210 : vec4<f32> = u_xlat3;
    let x_2211 : vec2<f32> = vec2<f32>(x_2210.x, x_2210.y);
    let x_2213 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2211.x, x_2211.y, x_2213);
    let x_2220 : vec3<f32> = txVec29;
    let x_2222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2220.xy, x_2220.z);
    u_xlat83 = x_2222;
  }
  let x_2224 : f32 = x_615.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2224) + 1.0f);
  let x_2228 : f32 = u_xlat83;
  let x_2230 : f32 = x_615.x_MainLightShadowParams.x;
  let x_2233 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2228 * x_2230) + x_2233);
  let x_2238 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2238);
  let x_2242 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2242 >= 1.0f);
  let x_2244 : bool = u_xlatb55;
  let x_2245 : bool = u_xlatb29;
  u_xlatb29 = (x_2244 | x_2245);
  let x_2247 : bool = u_xlatb29;
  if (x_2247) {
    x_2249 = 1.0f;
  } else {
    let x_2254 : f32 = u_xlat3.x;
    x_2249 = x_2254;
  }
  let x_2255 : f32 = x_2249;
  u_xlat3.x = x_2255;
  let x_2257 : vec3<f32> = vs_TEXCOORD7;
  let x_2259 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2261 : vec3<f32> = (x_2257 + -(x_2259));
  let x_2262 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
  let x_2265 : vec4<f32> = u_xlat7;
  let x_2267 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2265.x, x_2265.y, x_2265.z), vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2271 : f32 = u_xlat29;
  let x_2273 : f32 = x_615.x_MainLightShadowParams.z;
  let x_2276 : f32 = x_615.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2271 * x_2273) + x_2276);
  let x_2278 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2278, 0.0f, 1.0f);
  let x_2281 : f32 = u_xlat3.x;
  u_xlat83 = (-(x_2281) + 1.0f);
  let x_2284 : f32 = u_xlat55;
  let x_2285 : f32 = u_xlat83;
  let x_2288 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2284 * x_2285) + x_2288);
  let x_2298 : f32 = x_2296.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2298 == -1.0f));
  let x_2300 : bool = u_xlatb55;
  if (x_2300) {
    let x_2303 : vec3<f32> = vs_TEXCOORD7;
    let x_2306 : vec4<f32> = x_2296.x_MainLightWorldToLight[1i];
    let x_2308 : vec2<f32> = (vec2<f32>(x_2303.y, x_2303.y) * vec2<f32>(x_2306.x, x_2306.y));
    let x_2309 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2308.x, x_2308.y, x_2309.z, x_2309.w);
    let x_2312 : vec4<f32> = x_2296.x_MainLightWorldToLight[0i];
    let x_2314 : vec3<f32> = vs_TEXCOORD7;
    let x_2317 : vec4<f32> = u_xlat7;
    let x_2319 : vec2<f32> = ((vec2<f32>(x_2312.x, x_2312.y) * vec2<f32>(x_2314.x, x_2314.x)) + vec2<f32>(x_2317.x, x_2317.y));
    let x_2320 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2319.x, x_2319.y, x_2320.z, x_2320.w);
    let x_2323 : vec4<f32> = x_2296.x_MainLightWorldToLight[2i];
    let x_2325 : vec3<f32> = vs_TEXCOORD7;
    let x_2328 : vec4<f32> = u_xlat7;
    let x_2330 : vec2<f32> = ((vec2<f32>(x_2323.x, x_2323.y) * vec2<f32>(x_2325.z, x_2325.z)) + vec2<f32>(x_2328.x, x_2328.y));
    let x_2331 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
    let x_2333 : vec4<f32> = u_xlat7;
    let x_2336 : vec4<f32> = x_2296.x_MainLightWorldToLight[3i];
    let x_2338 : vec2<f32> = (vec2<f32>(x_2333.x, x_2333.y) + vec2<f32>(x_2336.x, x_2336.y));
    let x_2339 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2339.w);
    let x_2341 : vec4<f32> = u_xlat7;
    let x_2344 : vec2<f32> = ((vec2<f32>(x_2341.x, x_2341.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2345 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
    let x_2352 : vec4<f32> = u_xlat7;
    let x_2355 : f32 = x_29.x_GlobalMipBias.x;
    let x_2356 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2352.x, x_2352.y), x_2355);
    u_xlat7 = x_2356;
    let x_2361 : f32 = x_2296.x_MainLightCookieTextureFormat;
    let x_2363 : f32 = x_2296.x_MainLightCookieTextureFormat;
    let x_2365 : f32 = x_2296.x_MainLightCookieTextureFormat;
    let x_2367 : f32 = x_2296.x_MainLightCookieTextureFormat;
    let x_2368 : vec4<f32> = vec4<f32>(x_2361, x_2363, x_2365, x_2367);
    let x_2375 : vec4<bool> = (vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2368.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2375.x, x_2375.y);
    let x_2378 : bool = u_xlatb8.y;
    if (x_2378) {
      let x_2383 : f32 = u_xlat7.w;
      x_2379 = x_2383;
    } else {
      let x_2386 : f32 = u_xlat7.x;
      x_2379 = x_2386;
    }
    let x_2387 : f32 = x_2379;
    u_xlat55 = x_2387;
    let x_2389 : bool = u_xlatb8.x;
    if (x_2389) {
      let x_2393 : vec4<f32> = u_xlat7;
      x_2390 = vec3<f32>(x_2393.x, x_2393.y, x_2393.z);
    } else {
      let x_2396 : f32 = u_xlat55;
      x_2390 = vec3<f32>(x_2396, x_2396, x_2396);
    }
    let x_2398 : vec3<f32> = x_2390;
    let x_2399 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2405 : vec4<f32> = u_xlat7;
  let x_2408 : vec4<f32> = x_29.x_MainLightColor;
  let x_2410 : vec3<f32> = (vec3<f32>(x_2405.x, x_2405.y, x_2405.z) * vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
  let x_2411 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
  let x_2413 : vec4<f32> = u_xlat1;
  let x_2416 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(-(vec3<f32>(x_2413.x, x_2413.y, x_2413.z)), vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : f32 = u_xlat55;
  let x_2420 : f32 = u_xlat55;
  u_xlat55 = (x_2419 + x_2420);
  let x_2422 : vec4<f32> = u_xlat2;
  let x_2424 : f32 = u_xlat55;
  let x_2428 : vec4<f32> = u_xlat1;
  let x_2431 : vec3<f32> = ((vec3<f32>(x_2422.x, x_2422.y, x_2422.z) * -(vec3<f32>(x_2424, x_2424, x_2424))) + -(vec3<f32>(x_2428.x, x_2428.y, x_2428.z)));
  let x_2432 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
  let x_2434 : vec4<f32> = u_xlat2;
  let x_2436 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(vec3<f32>(x_2434.x, x_2434.y, x_2434.z), vec3<f32>(x_2436.x, x_2436.y, x_2436.z));
  let x_2439 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2439, 0.0f, 1.0f);
  let x_2441 : f32 = u_xlat55;
  u_xlat55 = (-(x_2441) + 1.0f);
  let x_2444 : f32 = u_xlat55;
  let x_2445 : f32 = u_xlat55;
  u_xlat55 = (x_2444 * x_2445);
  let x_2447 : f32 = u_xlat55;
  let x_2448 : f32 = u_xlat55;
  u_xlat55 = (x_2447 * x_2448);
  let x_2451 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2451) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2458 : f32 = u_xlat0.x;
  let x_2459 : f32 = u_xlat83;
  u_xlat0.x = (x_2458 * x_2459);
  let x_2463 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2463 * 6.0f);
  let x_2475 : vec4<f32> = u_xlat8;
  let x_2478 : f32 = u_xlat0.x;
  let x_2479 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2475.x, x_2475.y, x_2475.z), x_2478);
  u_xlat8 = x_2479;
  let x_2481 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2481 + -1.0f);
  let x_2485 : f32 = x_837.unity_SpecCube0_HDR.w;
  let x_2487 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2485 * x_2487) + 1.0f);
  let x_2492 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2492, 0.0f);
  let x_2496 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2496);
  let x_2500 : f32 = u_xlat0.x;
  let x_2502 : f32 = x_837.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2500 * x_2502);
  let x_2506 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2506);
  let x_2510 : f32 = u_xlat0.x;
  let x_2512 : f32 = x_837.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2510 * x_2512);
  let x_2515 : vec4<f32> = u_xlat8;
  let x_2517 : vec3<f32> = u_xlat0;
  let x_2519 : vec3<f32> = (vec3<f32>(x_2515.x, x_2515.y, x_2515.z) * vec3<f32>(x_2517.x, x_2517.x, x_2517.x));
  let x_2520 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
  let x_2522 : f32 = u_xlat80;
  let x_2524 : f32 = u_xlat80;
  let x_2528 : vec2<f32> = ((vec2<f32>(x_2522, x_2522) * vec2<f32>(x_2524, x_2524)) + vec2<f32>(-1.0f, 1.0f));
  let x_2529 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
  let x_2532 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2532);
  let x_2535 : vec4<f32> = u_xlat5;
  let x_2538 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2535.x, x_2535.y, x_2535.z)) + vec3<f32>(x_2538, x_2538, x_2538));
  let x_2541 : f32 = u_xlat55;
  let x_2543 : vec3<f32> = u_xlat35;
  let x_2545 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2541, x_2541, x_2541) * x_2543) + vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
  let x_2548 : vec3<f32> = u_xlat0;
  let x_2550 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2548.x, x_2548.x, x_2548.x) * x_2550);
  let x_2552 : vec4<f32> = u_xlat8;
  let x_2554 : vec3<f32> = u_xlat35;
  let x_2555 : vec3<f32> = (vec3<f32>(x_2552.x, x_2552.y, x_2552.z) * x_2554);
  let x_2556 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2556.w);
  let x_2558 : vec4<f32> = u_xlat4;
  let x_2560 : vec4<f32> = u_xlat6;
  let x_2563 : vec4<f32> = u_xlat8;
  let x_2565 : vec3<f32> = ((vec3<f32>(x_2558.x, x_2558.y, x_2558.z) * vec3<f32>(x_2560.x, x_2560.y, x_2560.z)) + vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
  let x_2566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2566.w);
  let x_2569 : f32 = u_xlat3.x;
  let x_2571 : f32 = x_837.unity_LightData.z;
  u_xlat0.x = (x_2569 * x_2571);
  let x_2574 : vec4<f32> = u_xlat2;
  let x_2577 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2574.x, x_2574.y, x_2574.z), vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
  let x_2580 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2580, 0.0f, 1.0f);
  let x_2582 : f32 = u_xlat52;
  let x_2584 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2582 * x_2584);
  let x_2587 : vec3<f32> = u_xlat0;
  let x_2589 : vec4<f32> = u_xlat7;
  let x_2591 : vec3<f32> = (vec3<f32>(x_2587.x, x_2587.x, x_2587.x) * vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
  let x_2592 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
  let x_2594 : vec4<f32> = u_xlat1;
  let x_2597 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2599 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.y, x_2594.z) + vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
  let x_2600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
  let x_2602 : vec4<f32> = u_xlat8;
  let x_2604 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2602.x, x_2602.y, x_2602.z), vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
  let x_2609 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2609, 1.17549435e-38f);
  let x_2614 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2614);
  let x_2617 : vec3<f32> = u_xlat0;
  let x_2619 : vec4<f32> = u_xlat8;
  let x_2621 : vec3<f32> = (vec3<f32>(x_2617.x, x_2617.x, x_2617.x) * vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
  let x_2622 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2622.w);
  let x_2624 : vec4<f32> = u_xlat2;
  let x_2626 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2624.x, x_2624.y, x_2624.z), vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
  let x_2631 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2631, 0.0f, 1.0f);
  let x_2635 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2637 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2635.x, x_2635.y, x_2635.z), vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
  let x_2642 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2642, 0.0f, 1.0f);
  let x_2645 : vec3<f32> = u_xlat0;
  let x_2647 : vec3<f32> = u_xlat0;
  let x_2649 : vec2<f32> = (vec2<f32>(x_2645.x, x_2645.z) * vec2<f32>(x_2647.x, x_2647.z));
  let x_2650 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2649.x, x_2650.y, x_2649.y);
  let x_2653 : f32 = u_xlat0.x;
  let x_2655 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2653 * x_2655) + 1.00001001358032226562f);
  let x_2661 : f32 = u_xlat0.x;
  let x_2663 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2661 * x_2663);
  let x_2667 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2667, 0.10000000149011611938f);
  let x_2670 : f32 = u_xlat52;
  let x_2672 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2670 * x_2672);
  let x_2675 : f32 = u_xlat81;
  let x_2677 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2675 * x_2677);
  let x_2680 : f32 = u_xlat82;
  let x_2682 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2680 / x_2682);
  let x_2685 : vec4<f32> = u_xlat5;
  let x_2687 : vec3<f32> = u_xlat0;
  let x_2690 : vec4<f32> = u_xlat6;
  let x_2692 : vec3<f32> = ((vec3<f32>(x_2685.x, x_2685.y, x_2685.z) * vec3<f32>(x_2687.x, x_2687.x, x_2687.x)) + vec3<f32>(x_2690.x, x_2690.y, x_2690.z));
  let x_2693 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2693.w);
  let x_2695 : vec4<f32> = u_xlat7;
  let x_2697 : vec4<f32> = u_xlat8;
  let x_2699 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) * vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
  let x_2700 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
  let x_2703 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2705 : f32 = x_837.unity_LightData.y;
  u_xlat0.x = min(x_2703, x_2705);
  let x_2710 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2710));
  let x_2713 : f32 = u_xlat29;
  let x_2715 : f32 = x_615.x_AdditionalShadowFadeParams.x;
  let x_2718 : f32 = x_615.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2713 * x_2715) + x_2718);
  let x_2720 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2720, 0.0f, 1.0f);
  let x_2723 : f32 = x_2296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2725 : f32 = x_2296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2727 : f32 = x_2296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2729 : f32 = x_2296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2730 : vec4<f32> = vec4<f32>(x_2723, x_2725, x_2727, x_2729);
  let x_2736 : vec4<bool> = (vec4<f32>(x_2730.x, x_2730.y, x_2730.z, x_2730.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2737 : vec2<bool> = vec2<bool>(x_2736.x, x_2736.y);
  let x_2738 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2750 : u32 = u_xlatu_loop_1;
    let x_2751 : u32 = u_xlatu0;
    if ((x_2750 < x_2751)) {
    } else {
      break;
    }
    let x_2754 : u32 = u_xlatu_loop_1;
    u_xlatu55 = (x_2754 >> 2u);
    let x_2757 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2757 & 3u));
    let x_2760 : u32 = u_xlatu55;
    let x_2763 : vec4<f32> = x_837.unity_LightIndices[bitcast<i32>(x_2760)];
    let x_2773 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2778 : vec4<u32> = indexable[x_2773];
    u_xlat55 = dot(x_2763, bitcast<vec4<f32>>(x_2778));
    let x_2782 : f32 = u_xlat55;
    u_xlati55 = i32(x_2782);
    let x_2784 : vec3<f32> = vs_TEXCOORD7;
    let x_2795 : i32 = u_xlati55;
    let x_2797 : vec4<f32> = x_2794.x_AdditionalLightsPosition[x_2795];
    let x_2800 : i32 = u_xlati55;
    let x_2802 : vec4<f32> = x_2794.x_AdditionalLightsPosition[x_2800];
    u_xlat35 = ((-(x_2784) * vec3<f32>(x_2797.w, x_2797.w, x_2797.w)) + vec3<f32>(x_2802.x, x_2802.y, x_2802.z));
    let x_2805 : vec3<f32> = u_xlat35;
    let x_2806 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_2805, x_2806);
    let x_2808 : f32 = u_xlat83;
    u_xlat83 = max(x_2808, 0.00006103515625f);
    let x_2810 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2810);
    let x_2812 : f32 = u_xlat84;
    let x_2814 : vec3<f32> = u_xlat35;
    let x_2815 : vec3<f32> = (vec3<f32>(x_2812, x_2812, x_2812) * x_2814);
    let x_2816 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2816.w);
    let x_2819 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2819);
    let x_2821 : f32 = u_xlat83;
    let x_2822 : i32 = u_xlati55;
    let x_2824 : f32 = x_2794.x_AdditionalLightsAttenuation[x_2822].x;
    u_xlat83 = (x_2821 * x_2824);
    let x_2826 : f32 = u_xlat83;
    let x_2828 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2826) * x_2828) + 1.0f);
    let x_2831 : f32 = u_xlat83;
    u_xlat83 = max(x_2831, 0.0f);
    let x_2833 : f32 = u_xlat83;
    let x_2834 : f32 = u_xlat83;
    u_xlat83 = (x_2833 * x_2834);
    let x_2836 : f32 = u_xlat83;
    let x_2837 : f32 = u_xlat85;
    u_xlat83 = (x_2836 * x_2837);
    let x_2839 : i32 = u_xlati55;
    let x_2841 : vec4<f32> = x_2794.x_AdditionalLightsSpotDir[x_2839];
    let x_2843 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2841.x, x_2841.y, x_2841.z), vec3<f32>(x_2843.x, x_2843.y, x_2843.z));
    let x_2846 : f32 = u_xlat85;
    let x_2847 : i32 = u_xlati55;
    let x_2849 : f32 = x_2794.x_AdditionalLightsAttenuation[x_2847].z;
    let x_2851 : i32 = u_xlati55;
    let x_2853 : f32 = x_2794.x_AdditionalLightsAttenuation[x_2851].w;
    u_xlat85 = ((x_2846 * x_2849) + x_2853);
    let x_2855 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2855, 0.0f, 1.0f);
    let x_2857 : f32 = u_xlat85;
    let x_2858 : f32 = u_xlat85;
    u_xlat85 = (x_2857 * x_2858);
    let x_2860 : f32 = u_xlat83;
    let x_2861 : f32 = u_xlat85;
    u_xlat83 = (x_2860 * x_2861);
    let x_2864 : i32 = u_xlati55;
    let x_2866 : f32 = x_615.x_AdditionalShadowParams[x_2864].w;
    u_xlati85 = i32(x_2866);
    let x_2869 : i32 = u_xlati85;
    u_xlatb86 = (x_2869 >= 0i);
    let x_2871 : bool = u_xlatb86;
    if (x_2871) {
      let x_2875 : i32 = u_xlati55;
      let x_2877 : f32 = x_615.x_AdditionalShadowParams[x_2875].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2877, x_2877, x_2877, x_2877))));
      let x_2881 : bool = u_xlatb86;
      if (x_2881) {
        let x_2885 : vec4<f32> = u_xlat10;
        let x_2888 : vec4<f32> = u_xlat10;
        let x_2891 : vec4<bool> = (abs(vec4<f32>(x_2885.z, x_2885.z, x_2885.y, x_2885.z)) >= abs(vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.x)));
        let x_2893 : vec3<bool> = vec3<bool>(x_2891.x, x_2891.y, x_2891.z);
        let x_2894 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2893.x, x_2893.y, x_2893.z, x_2894.w);
        let x_2897 : bool = u_xlatb11.y;
        let x_2899 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2897 & x_2899);
        let x_2901 : vec4<f32> = u_xlat10;
        let x_2904 : vec4<bool> = (-(vec4<f32>(x_2901.z, x_2901.y, x_2901.z, x_2901.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2905 : vec3<bool> = vec3<bool>(x_2904.x, x_2904.y, x_2904.w);
        let x_2906 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2905.x, x_2905.y, x_2906.z, x_2905.z);
        let x_2909 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2909);
        let x_2914 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2914);
        let x_2919 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2919);
        let x_2922 : bool = u_xlatb11.z;
        if (x_2922) {
          let x_2927 : f32 = u_xlat11.y;
          x_2923 = x_2927;
        } else {
          let x_2929 : f32 = u_xlat88;
          x_2923 = x_2929;
        }
        let x_2930 : f32 = x_2923;
        u_xlat88 = x_2930;
        let x_2932 : bool = u_xlatb86;
        if (x_2932) {
          let x_2937 : f32 = u_xlat11.x;
          x_2933 = x_2937;
        } else {
          let x_2939 : f32 = u_xlat88;
          x_2933 = x_2939;
        }
        let x_2940 : f32 = x_2933;
        u_xlat86 = x_2940;
        let x_2941 : i32 = u_xlati55;
        let x_2943 : f32 = x_615.x_AdditionalShadowParams[x_2941].w;
        u_xlat88 = trunc(x_2943);
        let x_2945 : f32 = u_xlat86;
        let x_2946 : f32 = u_xlat88;
        u_xlat86 = (x_2945 + x_2946);
        let x_2948 : f32 = u_xlat86;
        u_xlati85 = i32(x_2948);
      }
      let x_2950 : i32 = u_xlati85;
      u_xlati85 = (x_2950 << bitcast<u32>(2i));
      let x_2952 : vec3<f32> = vs_TEXCOORD7;
      let x_2954 : i32 = u_xlati85;
      let x_2957 : i32 = u_xlati85;
      let x_2961 : vec4<f32> = x_615.x_AdditionalLightsWorldToShadow[((x_2954 + 1i) / 4i)][((x_2957 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2952.y, x_2952.y, x_2952.y, x_2952.y) * x_2961);
      let x_2963 : i32 = u_xlati85;
      let x_2965 : i32 = u_xlati85;
      let x_2968 : vec4<f32> = x_615.x_AdditionalLightsWorldToShadow[(x_2963 / 4i)][(x_2965 % 4i)];
      let x_2969 : vec3<f32> = vs_TEXCOORD7;
      let x_2972 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2968 * vec4<f32>(x_2969.x, x_2969.x, x_2969.x, x_2969.x)) + x_2972);
      let x_2974 : i32 = u_xlati85;
      let x_2977 : i32 = u_xlati85;
      let x_2981 : vec4<f32> = x_615.x_AdditionalLightsWorldToShadow[((x_2974 + 2i) / 4i)][((x_2977 + 2i) % 4i)];
      let x_2982 : vec3<f32> = vs_TEXCOORD7;
      let x_2985 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2981 * vec4<f32>(x_2982.z, x_2982.z, x_2982.z, x_2982.z)) + x_2985);
      let x_2987 : vec4<f32> = u_xlat11;
      let x_2988 : i32 = u_xlati85;
      let x_2991 : i32 = u_xlati85;
      let x_2995 : vec4<f32> = x_615.x_AdditionalLightsWorldToShadow[((x_2988 + 3i) / 4i)][((x_2991 + 3i) % 4i)];
      u_xlat11 = (x_2987 + x_2995);
      let x_2997 : vec4<f32> = u_xlat11;
      let x_2999 : vec4<f32> = u_xlat11;
      let x_3001 : vec3<f32> = (vec3<f32>(x_2997.x, x_2997.y, x_2997.z) / vec3<f32>(x_2999.w, x_2999.w, x_2999.w));
      let x_3002 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3001.x, x_3001.y, x_3001.z, x_3002.w);
      let x_3005 : i32 = u_xlati55;
      let x_3007 : f32 = x_615.x_AdditionalShadowParams[x_3005].y;
      u_xlatb85 = (0.0f < x_3007);
      let x_3009 : bool = u_xlatb85;
      if (x_3009) {
        let x_3012 : i32 = u_xlati55;
        let x_3014 : f32 = x_615.x_AdditionalShadowParams[x_3012].y;
        u_xlatb85 = (1.0f == x_3014);
        let x_3016 : bool = u_xlatb85;
        if (x_3016) {
          let x_3019 : vec4<f32> = u_xlat11;
          let x_3022 : vec4<f32> = x_615.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3019.x, x_3019.y, x_3019.x, x_3019.y) + x_3022);
          let x_3025 : vec4<f32> = u_xlat12;
          let x_3026 : vec2<f32> = vec2<f32>(x_3025.x, x_3025.y);
          let x_3028 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3026.x, x_3026.y, x_3028);
          let x_3036 : vec3<f32> = txVec30;
          let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
          u_xlat13.x = x_3038;
          let x_3041 : vec4<f32> = u_xlat12;
          let x_3042 : vec2<f32> = vec2<f32>(x_3041.z, x_3041.w);
          let x_3044 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3042.x, x_3042.y, x_3044);
          let x_3051 : vec3<f32> = txVec31;
          let x_3053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3051.xy, x_3051.z);
          u_xlat13.y = x_3053;
          let x_3055 : vec4<f32> = u_xlat11;
          let x_3058 : vec4<f32> = x_615.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3055.x, x_3055.y, x_3055.x, x_3055.y) + x_3058);
          let x_3061 : vec4<f32> = u_xlat12;
          let x_3062 : vec2<f32> = vec2<f32>(x_3061.x, x_3061.y);
          let x_3064 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
          let x_3071 : vec3<f32> = txVec32;
          let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
          u_xlat13.z = x_3073;
          let x_3076 : vec4<f32> = u_xlat12;
          let x_3077 : vec2<f32> = vec2<f32>(x_3076.z, x_3076.w);
          let x_3079 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
          let x_3086 : vec3<f32> = txVec33;
          let x_3088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
          u_xlat13.w = x_3088;
          let x_3090 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3090, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3093 : i32 = u_xlati55;
          let x_3095 : f32 = x_615.x_AdditionalShadowParams[x_3093].y;
          u_xlatb86 = (2.0f == x_3095);
          let x_3097 : bool = u_xlatb86;
          if (x_3097) {
            let x_3100 : vec4<f32> = u_xlat11;
            let x_3103 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3106 : vec2<f32> = ((vec2<f32>(x_3100.x, x_3100.y) * vec2<f32>(x_3103.z, x_3103.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3107 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3106.x, x_3106.y, x_3107.z, x_3107.w);
            let x_3109 : vec4<f32> = u_xlat12;
            let x_3111 : vec2<f32> = floor(vec2<f32>(x_3109.x, x_3109.y));
            let x_3112 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3111.x, x_3111.y, x_3112.z, x_3112.w);
            let x_3115 : vec4<f32> = u_xlat11;
            let x_3118 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3115.x, x_3115.y) * vec2<f32>(x_3118.z, x_3118.w)) + -(vec2<f32>(x_3121.x, x_3121.y)));
            let x_3125 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3125.x, x_3125.x, x_3125.y, x_3125.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3128 : vec4<f32> = u_xlat13;
            let x_3130 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3128.x, x_3128.x, x_3128.z, x_3128.z) * vec4<f32>(x_3130.x, x_3130.x, x_3130.z, x_3130.z));
            let x_3133 : vec4<f32> = u_xlat14;
            let x_3135 : vec2<f32> = (vec2<f32>(x_3133.y, x_3133.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3136 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3135.x, x_3136.y, x_3135.y, x_3136.w);
            let x_3138 : vec4<f32> = u_xlat14;
            let x_3141 : vec2<f32> = u_xlat64;
            let x_3143 : vec2<f32> = ((vec2<f32>(x_3138.x, x_3138.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3141));
            let x_3144 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3143.x, x_3143.y, x_3144.z, x_3144.w);
            let x_3147 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3147) + vec2<f32>(1.0f, 1.0f));
            let x_3150 : vec2<f32> = u_xlat64;
            let x_3151 : vec2<f32> = min(x_3150, vec2<f32>(0.0f, 0.0f));
            let x_3152 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3151.x, x_3151.y, x_3152.z, x_3152.w);
            let x_3154 : vec4<f32> = u_xlat15;
            let x_3157 : vec4<f32> = u_xlat15;
            let x_3160 : vec2<f32> = u_xlat66;
            let x_3161 : vec2<f32> = ((-(vec2<f32>(x_3154.x, x_3154.y)) * vec2<f32>(x_3157.x, x_3157.y)) + x_3160);
            let x_3162 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3161.x, x_3161.y, x_3162.z, x_3162.w);
            let x_3164 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3164, vec2<f32>(0.0f, 0.0f));
            let x_3166 : vec2<f32> = u_xlat64;
            let x_3168 : vec2<f32> = u_xlat64;
            let x_3170 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3166) * x_3168) + vec2<f32>(x_3170.y, x_3170.w));
            let x_3173 : vec4<f32> = u_xlat15;
            let x_3175 : vec2<f32> = (vec2<f32>(x_3173.x, x_3173.y) + vec2<f32>(1.0f, 1.0f));
            let x_3176 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3175.x, x_3175.y, x_3176.z, x_3176.w);
            let x_3178 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3178 + vec2<f32>(1.0f, 1.0f));
            let x_3180 : vec4<f32> = u_xlat14;
            let x_3182 : vec2<f32> = (vec2<f32>(x_3180.x, x_3180.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3183 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3182.x, x_3182.y, x_3183.z, x_3183.w);
            let x_3185 : vec2<f32> = u_xlat66;
            let x_3186 : vec2<f32> = (x_3185 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3187 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3186.x, x_3186.y, x_3187.z, x_3187.w);
            let x_3189 : vec4<f32> = u_xlat15;
            let x_3191 : vec2<f32> = (vec2<f32>(x_3189.x, x_3189.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3192 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3191.x, x_3191.y, x_3192.z, x_3192.w);
            let x_3194 : vec2<f32> = u_xlat64;
            let x_3195 : vec2<f32> = (x_3194 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3196 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3195.x, x_3195.y, x_3196.z, x_3196.w);
            let x_3198 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3198.y, x_3198.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3202 : f32 = u_xlat15.x;
            u_xlat16.z = x_3202;
            let x_3205 : f32 = u_xlat64.x;
            u_xlat16.w = x_3205;
            let x_3208 : f32 = u_xlat17.x;
            u_xlat14.z = x_3208;
            let x_3211 : f32 = u_xlat13.x;
            u_xlat14.w = x_3211;
            let x_3213 : vec4<f32> = u_xlat14;
            let x_3215 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3213.z, x_3213.w, x_3213.x, x_3213.z) + vec4<f32>(x_3215.z, x_3215.w, x_3215.x, x_3215.z));
            let x_3219 : f32 = u_xlat16.y;
            u_xlat15.z = x_3219;
            let x_3222 : f32 = u_xlat64.y;
            u_xlat15.w = x_3222;
            let x_3225 : f32 = u_xlat14.y;
            u_xlat17.z = x_3225;
            let x_3228 : f32 = u_xlat13.z;
            u_xlat17.w = x_3228;
            let x_3230 : vec4<f32> = u_xlat15;
            let x_3232 : vec4<f32> = u_xlat17;
            let x_3234 : vec3<f32> = (vec3<f32>(x_3230.z, x_3230.y, x_3230.w) + vec3<f32>(x_3232.z, x_3232.y, x_3232.w));
            let x_3235 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3234.x, x_3234.y, x_3234.z, x_3235.w);
            let x_3237 : vec4<f32> = u_xlat14;
            let x_3239 : vec4<f32> = u_xlat18;
            let x_3241 : vec3<f32> = (vec3<f32>(x_3237.x, x_3237.z, x_3237.w) / vec3<f32>(x_3239.z, x_3239.w, x_3239.y));
            let x_3242 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3241.x, x_3241.y, x_3241.z, x_3242.w);
            let x_3244 : vec4<f32> = u_xlat14;
            let x_3246 : vec3<f32> = (vec3<f32>(x_3244.x, x_3244.y, x_3244.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3247 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3246.x, x_3246.y, x_3246.z, x_3247.w);
            let x_3249 : vec4<f32> = u_xlat17;
            let x_3251 : vec4<f32> = u_xlat13;
            let x_3253 : vec3<f32> = (vec3<f32>(x_3249.z, x_3249.y, x_3249.w) / vec3<f32>(x_3251.x, x_3251.y, x_3251.z));
            let x_3254 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3254.w);
            let x_3256 : vec4<f32> = u_xlat15;
            let x_3258 : vec3<f32> = (vec3<f32>(x_3256.x, x_3256.y, x_3256.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3259 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3258.x, x_3258.y, x_3258.z, x_3259.w);
            let x_3261 : vec4<f32> = u_xlat14;
            let x_3264 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3266 : vec3<f32> = (vec3<f32>(x_3261.y, x_3261.x, x_3261.z) * vec3<f32>(x_3264.x, x_3264.x, x_3264.x));
            let x_3267 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
            let x_3269 : vec4<f32> = u_xlat15;
            let x_3272 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3274 : vec3<f32> = (vec3<f32>(x_3269.x, x_3269.y, x_3269.z) * vec3<f32>(x_3272.y, x_3272.y, x_3272.y));
            let x_3275 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3274.x, x_3274.y, x_3274.z, x_3275.w);
            let x_3278 : f32 = u_xlat15.x;
            u_xlat14.w = x_3278;
            let x_3280 : vec4<f32> = u_xlat12;
            let x_3283 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3286 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3280.x, x_3280.y, x_3280.x, x_3280.y) * vec4<f32>(x_3283.x, x_3283.y, x_3283.x, x_3283.y)) + vec4<f32>(x_3286.y, x_3286.w, x_3286.x, x_3286.w));
            let x_3289 : vec4<f32> = u_xlat12;
            let x_3292 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3295 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3289.x, x_3289.y) * vec2<f32>(x_3292.x, x_3292.y)) + vec2<f32>(x_3295.z, x_3295.w));
            let x_3299 : f32 = u_xlat14.y;
            u_xlat15.w = x_3299;
            let x_3301 : vec4<f32> = u_xlat15;
            let x_3302 : vec2<f32> = vec2<f32>(x_3301.y, x_3301.z);
            let x_3303 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3303.x, x_3302.x, x_3303.z, x_3302.y);
            let x_3305 : vec4<f32> = u_xlat12;
            let x_3308 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3311 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y) * vec4<f32>(x_3308.x, x_3308.y, x_3308.x, x_3308.y)) + vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3311.y));
            let x_3314 : vec4<f32> = u_xlat12;
            let x_3317 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3320 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3314.x, x_3314.y, x_3314.x, x_3314.y) * vec4<f32>(x_3317.x, x_3317.y, x_3317.x, x_3317.y)) + vec4<f32>(x_3320.w, x_3320.y, x_3320.w, x_3320.z));
            let x_3323 : vec4<f32> = u_xlat12;
            let x_3326 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3329 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3323.x, x_3323.y, x_3323.x, x_3323.y) * vec4<f32>(x_3326.x, x_3326.y, x_3326.x, x_3326.y)) + vec4<f32>(x_3329.x, x_3329.w, x_3329.z, x_3329.w));
            let x_3332 : vec4<f32> = u_xlat13;
            let x_3334 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3332.x, x_3332.x, x_3332.x, x_3332.y) * vec4<f32>(x_3334.z, x_3334.w, x_3334.y, x_3334.z));
            let x_3337 : vec4<f32> = u_xlat13;
            let x_3339 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3337.y, x_3337.y, x_3337.z, x_3337.z) * x_3339);
            let x_3342 : f32 = u_xlat13.z;
            let x_3344 : f32 = u_xlat18.y;
            u_xlat86 = (x_3342 * x_3344);
            let x_3347 : vec4<f32> = u_xlat16;
            let x_3348 : vec2<f32> = vec2<f32>(x_3347.x, x_3347.y);
            let x_3350 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec34;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat88 = x_3359;
            let x_3361 : vec4<f32> = u_xlat16;
            let x_3362 : vec2<f32> = vec2<f32>(x_3361.z, x_3361.w);
            let x_3364 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
            let x_3372 : vec3<f32> = txVec35;
            let x_3374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3372.xy, x_3372.z);
            u_xlat89 = x_3374;
            let x_3375 : f32 = u_xlat89;
            let x_3377 : f32 = u_xlat19.y;
            u_xlat89 = (x_3375 * x_3377);
            let x_3380 : f32 = u_xlat19.x;
            let x_3381 : f32 = u_xlat88;
            let x_3383 : f32 = u_xlat89;
            u_xlat88 = ((x_3380 * x_3381) + x_3383);
            let x_3386 : vec2<f32> = u_xlat64;
            let x_3388 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3395 : vec3<f32> = txVec36;
            let x_3397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
            u_xlat89 = x_3397;
            let x_3399 : f32 = u_xlat19.z;
            let x_3400 : f32 = u_xlat89;
            let x_3402 : f32 = u_xlat88;
            u_xlat88 = ((x_3399 * x_3400) + x_3402);
            let x_3405 : vec4<f32> = u_xlat15;
            let x_3406 : vec2<f32> = vec2<f32>(x_3405.x, x_3405.y);
            let x_3408 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
            let x_3415 : vec3<f32> = txVec37;
            let x_3417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
            u_xlat89 = x_3417;
            let x_3419 : f32 = u_xlat19.w;
            let x_3420 : f32 = u_xlat89;
            let x_3422 : f32 = u_xlat88;
            u_xlat88 = ((x_3419 * x_3420) + x_3422);
            let x_3425 : vec4<f32> = u_xlat17;
            let x_3426 : vec2<f32> = vec2<f32>(x_3425.x, x_3425.y);
            let x_3428 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
            let x_3435 : vec3<f32> = txVec38;
            let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
            u_xlat89 = x_3437;
            let x_3439 : f32 = u_xlat20.x;
            let x_3440 : f32 = u_xlat89;
            let x_3442 : f32 = u_xlat88;
            u_xlat88 = ((x_3439 * x_3440) + x_3442);
            let x_3445 : vec4<f32> = u_xlat17;
            let x_3446 : vec2<f32> = vec2<f32>(x_3445.z, x_3445.w);
            let x_3448 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3446.x, x_3446.y, x_3448);
            let x_3455 : vec3<f32> = txVec39;
            let x_3457 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3455.xy, x_3455.z);
            u_xlat89 = x_3457;
            let x_3459 : f32 = u_xlat20.y;
            let x_3460 : f32 = u_xlat89;
            let x_3462 : f32 = u_xlat88;
            u_xlat88 = ((x_3459 * x_3460) + x_3462);
            let x_3465 : vec4<f32> = u_xlat15;
            let x_3466 : vec2<f32> = vec2<f32>(x_3465.z, x_3465.w);
            let x_3468 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec40;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat89 = x_3477;
            let x_3479 : f32 = u_xlat20.z;
            let x_3480 : f32 = u_xlat89;
            let x_3482 : f32 = u_xlat88;
            u_xlat88 = ((x_3479 * x_3480) + x_3482);
            let x_3485 : vec4<f32> = u_xlat14;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.x, x_3485.y);
            let x_3488 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec41;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat89 = x_3497;
            let x_3499 : f32 = u_xlat20.w;
            let x_3500 : f32 = u_xlat89;
            let x_3502 : f32 = u_xlat88;
            u_xlat88 = ((x_3499 * x_3500) + x_3502);
            let x_3505 : vec4<f32> = u_xlat14;
            let x_3506 : vec2<f32> = vec2<f32>(x_3505.z, x_3505.w);
            let x_3508 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3506.x, x_3506.y, x_3508);
            let x_3515 : vec3<f32> = txVec42;
            let x_3517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3515.xy, x_3515.z);
            u_xlat89 = x_3517;
            let x_3518 : f32 = u_xlat86;
            let x_3519 : f32 = u_xlat89;
            let x_3521 : f32 = u_xlat88;
            u_xlat85 = ((x_3518 * x_3519) + x_3521);
          } else {
            let x_3524 : vec4<f32> = u_xlat11;
            let x_3527 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3530 : vec2<f32> = ((vec2<f32>(x_3524.x, x_3524.y) * vec2<f32>(x_3527.z, x_3527.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3531 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3530.x, x_3530.y, x_3531.z, x_3531.w);
            let x_3533 : vec4<f32> = u_xlat12;
            let x_3535 : vec2<f32> = floor(vec2<f32>(x_3533.x, x_3533.y));
            let x_3536 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3535.x, x_3535.y, x_3536.z, x_3536.w);
            let x_3538 : vec4<f32> = u_xlat11;
            let x_3541 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3544 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3538.x, x_3538.y) * vec2<f32>(x_3541.z, x_3541.w)) + -(vec2<f32>(x_3544.x, x_3544.y)));
            let x_3548 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3548.x, x_3548.x, x_3548.y, x_3548.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3551 : vec4<f32> = u_xlat13;
            let x_3553 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3551.x, x_3551.x, x_3551.z, x_3551.z) * vec4<f32>(x_3553.x, x_3553.x, x_3553.z, x_3553.z));
            let x_3556 : vec4<f32> = u_xlat14;
            let x_3558 : vec2<f32> = (vec2<f32>(x_3556.y, x_3556.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3559 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3559.x, x_3558.x, x_3559.z, x_3558.y);
            let x_3561 : vec4<f32> = u_xlat14;
            let x_3564 : vec2<f32> = u_xlat64;
            let x_3566 : vec2<f32> = ((vec2<f32>(x_3561.x, x_3561.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3564));
            let x_3567 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3566.x, x_3567.y, x_3566.y, x_3567.w);
            let x_3569 : vec2<f32> = u_xlat64;
            let x_3571 : vec2<f32> = (-(x_3569) + vec2<f32>(1.0f, 1.0f));
            let x_3572 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3571.x, x_3571.y, x_3572.z, x_3572.w);
            let x_3574 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3574, vec2<f32>(0.0f, 0.0f));
            let x_3576 : vec2<f32> = u_xlat66;
            let x_3578 : vec2<f32> = u_xlat66;
            let x_3580 : vec4<f32> = u_xlat14;
            let x_3582 : vec2<f32> = ((-(x_3576) * x_3578) + vec2<f32>(x_3580.x, x_3580.y));
            let x_3583 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3582.x, x_3582.y, x_3583.z, x_3583.w);
            let x_3585 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3585, vec2<f32>(0.0f, 0.0f));
            let x_3588 : vec2<f32> = u_xlat66;
            let x_3590 : vec2<f32> = u_xlat66;
            let x_3592 : vec4<f32> = u_xlat13;
            let x_3594 : vec2<f32> = ((-(x_3588) * x_3590) + vec2<f32>(x_3592.y, x_3592.w));
            let x_3595 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3594.x, x_3595.y, x_3594.y);
            let x_3597 : vec4<f32> = u_xlat14;
            let x_3599 : vec2<f32> = (vec2<f32>(x_3597.x, x_3597.y) + vec2<f32>(2.0f, 2.0f));
            let x_3600 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3599.x, x_3599.y, x_3600.z, x_3600.w);
            let x_3602 : vec3<f32> = u_xlat39;
            let x_3604 : vec2<f32> = (vec2<f32>(x_3602.x, x_3602.z) + vec2<f32>(2.0f, 2.0f));
            let x_3605 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3605.x, x_3604.x, x_3605.z, x_3604.y);
            let x_3608 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3608 * 0.08163200318813323975f);
            let x_3611 : vec4<f32> = u_xlat13;
            let x_3613 : vec3<f32> = (vec3<f32>(x_3611.z, x_3611.x, x_3611.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3614 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3613.x, x_3613.y, x_3613.z, x_3614.w);
            let x_3616 : vec4<f32> = u_xlat14;
            let x_3618 : vec2<f32> = (vec2<f32>(x_3616.x, x_3616.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3619 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3618.x, x_3618.y, x_3619.z, x_3619.w);
            let x_3622 : f32 = u_xlat17.y;
            u_xlat16.x = x_3622;
            let x_3624 : vec2<f32> = u_xlat64;
            let x_3627 : vec2<f32> = ((vec2<f32>(x_3624.x, x_3624.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3628 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3628.x, x_3627.x, x_3628.z, x_3627.y);
            let x_3630 : vec2<f32> = u_xlat64;
            let x_3633 : vec2<f32> = ((vec2<f32>(x_3630.x, x_3630.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3634 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3633.x, x_3634.y, x_3633.y, x_3634.w);
            let x_3637 : f32 = u_xlat13.x;
            u_xlat14.y = x_3637;
            let x_3640 : f32 = u_xlat15.y;
            u_xlat14.w = x_3640;
            let x_3642 : vec4<f32> = u_xlat14;
            let x_3643 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3642 + x_3643);
            let x_3645 : vec2<f32> = u_xlat64;
            let x_3648 : vec2<f32> = ((vec2<f32>(x_3645.y, x_3645.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3649 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3649.x, x_3648.x, x_3649.z, x_3648.y);
            let x_3651 : vec2<f32> = u_xlat64;
            let x_3654 : vec2<f32> = ((vec2<f32>(x_3651.y, x_3651.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3655 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3654.x, x_3655.y, x_3654.y, x_3655.w);
            let x_3658 : f32 = u_xlat13.y;
            u_xlat15.y = x_3658;
            let x_3660 : vec4<f32> = u_xlat15;
            let x_3661 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3660 + x_3661);
            let x_3663 : vec4<f32> = u_xlat14;
            let x_3664 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3663 / x_3664);
            let x_3666 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3666 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3668 : vec4<f32> = u_xlat15;
            let x_3669 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3668 / x_3669);
            let x_3671 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3671 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3673 : vec4<f32> = u_xlat14;
            let x_3676 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3673.w, x_3673.x, x_3673.y, x_3673.z) * vec4<f32>(x_3676.x, x_3676.x, x_3676.x, x_3676.x));
            let x_3679 : vec4<f32> = u_xlat15;
            let x_3682 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3679.x, x_3679.w, x_3679.y, x_3679.z) * vec4<f32>(x_3682.y, x_3682.y, x_3682.y, x_3682.y));
            let x_3685 : vec4<f32> = u_xlat14;
            let x_3686 : vec3<f32> = vec3<f32>(x_3685.y, x_3685.z, x_3685.w);
            let x_3687 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3686.x, x_3687.y, x_3686.y, x_3686.z);
            let x_3690 : f32 = u_xlat15.x;
            u_xlat17.y = x_3690;
            let x_3692 : vec4<f32> = u_xlat12;
            let x_3695 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3698 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3692.x, x_3692.y, x_3692.x, x_3692.y) * vec4<f32>(x_3695.x, x_3695.y, x_3695.x, x_3695.y)) + vec4<f32>(x_3698.x, x_3698.y, x_3698.z, x_3698.y));
            let x_3701 : vec4<f32> = u_xlat12;
            let x_3704 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3707 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3701.x, x_3701.y) * vec2<f32>(x_3704.x, x_3704.y)) + vec2<f32>(x_3707.w, x_3707.y));
            let x_3711 : f32 = u_xlat17.y;
            u_xlat14.y = x_3711;
            let x_3714 : f32 = u_xlat15.z;
            u_xlat17.y = x_3714;
            let x_3716 : vec4<f32> = u_xlat12;
            let x_3719 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3722 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3716.x, x_3716.y, x_3716.x, x_3716.y) * vec4<f32>(x_3719.x, x_3719.y, x_3719.x, x_3719.y)) + vec4<f32>(x_3722.x, x_3722.y, x_3722.z, x_3722.y));
            let x_3725 : vec4<f32> = u_xlat12;
            let x_3728 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3731 : vec4<f32> = u_xlat17;
            let x_3733 : vec2<f32> = ((vec2<f32>(x_3725.x, x_3725.y) * vec2<f32>(x_3728.x, x_3728.y)) + vec2<f32>(x_3731.w, x_3731.y));
            let x_3734 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3733.x, x_3733.y, x_3734.z, x_3734.w);
            let x_3737 : f32 = u_xlat17.y;
            u_xlat14.z = x_3737;
            let x_3740 : vec4<f32> = u_xlat12;
            let x_3743 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3746 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3740.x, x_3740.y, x_3740.x, x_3740.y) * vec4<f32>(x_3743.x, x_3743.y, x_3743.x, x_3743.y)) + vec4<f32>(x_3746.x, x_3746.y, x_3746.x, x_3746.z));
            let x_3750 : f32 = u_xlat15.w;
            u_xlat17.y = x_3750;
            let x_3753 : vec4<f32> = u_xlat12;
            let x_3756 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3759 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3753.x, x_3753.y, x_3753.x, x_3753.y) * vec4<f32>(x_3756.x, x_3756.y, x_3756.x, x_3756.y)) + vec4<f32>(x_3759.x, x_3759.y, x_3759.z, x_3759.y));
            let x_3763 : vec4<f32> = u_xlat12;
            let x_3766 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3769 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3763.x, x_3763.y) * vec2<f32>(x_3766.x, x_3766.y)) + vec2<f32>(x_3769.w, x_3769.y));
            let x_3773 : f32 = u_xlat17.y;
            u_xlat14.w = x_3773;
            let x_3776 : vec4<f32> = u_xlat12;
            let x_3779 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3782 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3776.x, x_3776.y) * vec2<f32>(x_3779.x, x_3779.y)) + vec2<f32>(x_3782.x, x_3782.w));
            let x_3785 : vec4<f32> = u_xlat17;
            let x_3786 : vec3<f32> = vec3<f32>(x_3785.x, x_3785.z, x_3785.w);
            let x_3787 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3786.x, x_3787.y, x_3786.y, x_3786.z);
            let x_3789 : vec4<f32> = u_xlat12;
            let x_3792 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3795 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3789.x, x_3789.y, x_3789.x, x_3789.y) * vec4<f32>(x_3792.x, x_3792.y, x_3792.x, x_3792.y)) + vec4<f32>(x_3795.x, x_3795.y, x_3795.z, x_3795.y));
            let x_3798 : vec4<f32> = u_xlat12;
            let x_3801 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3804 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3798.x, x_3798.y) * vec2<f32>(x_3801.x, x_3801.y)) + vec2<f32>(x_3804.w, x_3804.y));
            let x_3808 : f32 = u_xlat14.x;
            u_xlat15.x = x_3808;
            let x_3810 : vec4<f32> = u_xlat12;
            let x_3813 : vec4<f32> = x_615.x_AdditionalShadowmapSize;
            let x_3816 : vec4<f32> = u_xlat15;
            let x_3818 : vec2<f32> = ((vec2<f32>(x_3810.x, x_3810.y) * vec2<f32>(x_3813.x, x_3813.y)) + vec2<f32>(x_3816.x, x_3816.y));
            let x_3819 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3818.x, x_3818.y, x_3819.z, x_3819.w);
            let x_3822 : vec4<f32> = u_xlat13;
            let x_3824 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3822.x, x_3822.x, x_3822.x, x_3822.x) * x_3824);
            let x_3827 : vec4<f32> = u_xlat13;
            let x_3829 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3827.y, x_3827.y, x_3827.y, x_3827.y) * x_3829);
            let x_3832 : vec4<f32> = u_xlat13;
            let x_3834 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3832.z, x_3832.z, x_3832.z, x_3832.z) * x_3834);
            let x_3836 : vec4<f32> = u_xlat13;
            let x_3838 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3836.w, x_3836.w, x_3836.w, x_3836.w) * x_3838);
            let x_3841 : vec4<f32> = u_xlat18;
            let x_3842 : vec2<f32> = vec2<f32>(x_3841.x, x_3841.y);
            let x_3844 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3842.x, x_3842.y, x_3844);
            let x_3851 : vec3<f32> = txVec43;
            let x_3853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3851.xy, x_3851.z);
            u_xlat86 = x_3853;
            let x_3855 : vec4<f32> = u_xlat18;
            let x_3856 : vec2<f32> = vec2<f32>(x_3855.z, x_3855.w);
            let x_3858 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3856.x, x_3856.y, x_3858);
            let x_3865 : vec3<f32> = txVec44;
            let x_3867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3865.xy, x_3865.z);
            u_xlat88 = x_3867;
            let x_3868 : f32 = u_xlat88;
            let x_3870 : f32 = u_xlat23.y;
            u_xlat88 = (x_3868 * x_3870);
            let x_3873 : f32 = u_xlat23.x;
            let x_3874 : f32 = u_xlat86;
            let x_3876 : f32 = u_xlat88;
            u_xlat86 = ((x_3873 * x_3874) + x_3876);
            let x_3879 : vec2<f32> = u_xlat64;
            let x_3881 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3879.x, x_3879.y, x_3881);
            let x_3888 : vec3<f32> = txVec45;
            let x_3890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3888.xy, x_3888.z);
            u_xlat88 = x_3890;
            let x_3892 : f32 = u_xlat23.z;
            let x_3893 : f32 = u_xlat88;
            let x_3895 : f32 = u_xlat86;
            u_xlat86 = ((x_3892 * x_3893) + x_3895);
            let x_3898 : vec4<f32> = u_xlat21;
            let x_3899 : vec2<f32> = vec2<f32>(x_3898.x, x_3898.y);
            let x_3901 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3899.x, x_3899.y, x_3901);
            let x_3908 : vec3<f32> = txVec46;
            let x_3910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3908.xy, x_3908.z);
            u_xlat88 = x_3910;
            let x_3912 : f32 = u_xlat23.w;
            let x_3913 : f32 = u_xlat88;
            let x_3915 : f32 = u_xlat86;
            u_xlat86 = ((x_3912 * x_3913) + x_3915);
            let x_3918 : vec4<f32> = u_xlat19;
            let x_3919 : vec2<f32> = vec2<f32>(x_3918.x, x_3918.y);
            let x_3921 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3919.x, x_3919.y, x_3921);
            let x_3928 : vec3<f32> = txVec47;
            let x_3930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3928.xy, x_3928.z);
            u_xlat88 = x_3930;
            let x_3932 : f32 = u_xlat24.x;
            let x_3933 : f32 = u_xlat88;
            let x_3935 : f32 = u_xlat86;
            u_xlat86 = ((x_3932 * x_3933) + x_3935);
            let x_3938 : vec4<f32> = u_xlat19;
            let x_3939 : vec2<f32> = vec2<f32>(x_3938.z, x_3938.w);
            let x_3941 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3939.x, x_3939.y, x_3941);
            let x_3948 : vec3<f32> = txVec48;
            let x_3950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3948.xy, x_3948.z);
            u_xlat88 = x_3950;
            let x_3952 : f32 = u_xlat24.y;
            let x_3953 : f32 = u_xlat88;
            let x_3955 : f32 = u_xlat86;
            u_xlat86 = ((x_3952 * x_3953) + x_3955);
            let x_3958 : vec4<f32> = u_xlat20;
            let x_3959 : vec2<f32> = vec2<f32>(x_3958.x, x_3958.y);
            let x_3961 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3959.x, x_3959.y, x_3961);
            let x_3968 : vec3<f32> = txVec49;
            let x_3970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3968.xy, x_3968.z);
            u_xlat88 = x_3970;
            let x_3972 : f32 = u_xlat24.z;
            let x_3973 : f32 = u_xlat88;
            let x_3975 : f32 = u_xlat86;
            u_xlat86 = ((x_3972 * x_3973) + x_3975);
            let x_3978 : vec4<f32> = u_xlat21;
            let x_3979 : vec2<f32> = vec2<f32>(x_3978.z, x_3978.w);
            let x_3981 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3979.x, x_3979.y, x_3981);
            let x_3988 : vec3<f32> = txVec50;
            let x_3990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3988.xy, x_3988.z);
            u_xlat88 = x_3990;
            let x_3992 : f32 = u_xlat24.w;
            let x_3993 : f32 = u_xlat88;
            let x_3995 : f32 = u_xlat86;
            u_xlat86 = ((x_3992 * x_3993) + x_3995);
            let x_3998 : vec4<f32> = u_xlat22;
            let x_3999 : vec2<f32> = vec2<f32>(x_3998.x, x_3998.y);
            let x_4001 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3999.x, x_3999.y, x_4001);
            let x_4008 : vec3<f32> = txVec51;
            let x_4010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4008.xy, x_4008.z);
            u_xlat88 = x_4010;
            let x_4012 : f32 = u_xlat25.x;
            let x_4013 : f32 = u_xlat88;
            let x_4015 : f32 = u_xlat86;
            u_xlat86 = ((x_4012 * x_4013) + x_4015);
            let x_4018 : vec4<f32> = u_xlat22;
            let x_4019 : vec2<f32> = vec2<f32>(x_4018.z, x_4018.w);
            let x_4021 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4019.x, x_4019.y, x_4021);
            let x_4028 : vec3<f32> = txVec52;
            let x_4030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4028.xy, x_4028.z);
            u_xlat88 = x_4030;
            let x_4032 : f32 = u_xlat25.y;
            let x_4033 : f32 = u_xlat88;
            let x_4035 : f32 = u_xlat86;
            u_xlat86 = ((x_4032 * x_4033) + x_4035);
            let x_4038 : vec2<f32> = u_xlat40;
            let x_4040 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4038.x, x_4038.y, x_4040);
            let x_4047 : vec3<f32> = txVec53;
            let x_4049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4047.xy, x_4047.z);
            u_xlat88 = x_4049;
            let x_4051 : f32 = u_xlat25.z;
            let x_4052 : f32 = u_xlat88;
            let x_4054 : f32 = u_xlat86;
            u_xlat86 = ((x_4051 * x_4052) + x_4054);
            let x_4057 : vec2<f32> = u_xlat72;
            let x_4059 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4057.x, x_4057.y, x_4059);
            let x_4066 : vec3<f32> = txVec54;
            let x_4068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4066.xy, x_4066.z);
            u_xlat88 = x_4068;
            let x_4070 : f32 = u_xlat25.w;
            let x_4071 : f32 = u_xlat88;
            let x_4073 : f32 = u_xlat86;
            u_xlat86 = ((x_4070 * x_4071) + x_4073);
            let x_4076 : vec4<f32> = u_xlat17;
            let x_4077 : vec2<f32> = vec2<f32>(x_4076.x, x_4076.y);
            let x_4079 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4077.x, x_4077.y, x_4079);
            let x_4086 : vec3<f32> = txVec55;
            let x_4088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4086.xy, x_4086.z);
            u_xlat88 = x_4088;
            let x_4090 : f32 = u_xlat13.x;
            let x_4091 : f32 = u_xlat88;
            let x_4093 : f32 = u_xlat86;
            u_xlat86 = ((x_4090 * x_4091) + x_4093);
            let x_4096 : vec4<f32> = u_xlat17;
            let x_4097 : vec2<f32> = vec2<f32>(x_4096.z, x_4096.w);
            let x_4099 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4097.x, x_4097.y, x_4099);
            let x_4106 : vec3<f32> = txVec56;
            let x_4108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4106.xy, x_4106.z);
            u_xlat88 = x_4108;
            let x_4110 : f32 = u_xlat13.y;
            let x_4111 : f32 = u_xlat88;
            let x_4113 : f32 = u_xlat86;
            u_xlat86 = ((x_4110 * x_4111) + x_4113);
            let x_4116 : vec2<f32> = u_xlat67;
            let x_4118 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4116.x, x_4116.y, x_4118);
            let x_4125 : vec3<f32> = txVec57;
            let x_4127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4125.xy, x_4125.z);
            u_xlat88 = x_4127;
            let x_4129 : f32 = u_xlat13.z;
            let x_4130 : f32 = u_xlat88;
            let x_4132 : f32 = u_xlat86;
            u_xlat86 = ((x_4129 * x_4130) + x_4132);
            let x_4135 : vec4<f32> = u_xlat12;
            let x_4136 : vec2<f32> = vec2<f32>(x_4135.x, x_4135.y);
            let x_4138 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4136.x, x_4136.y, x_4138);
            let x_4145 : vec3<f32> = txVec58;
            let x_4147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4145.xy, x_4145.z);
            u_xlat88 = x_4147;
            let x_4149 : f32 = u_xlat13.w;
            let x_4150 : f32 = u_xlat88;
            let x_4152 : f32 = u_xlat86;
            u_xlat85 = ((x_4149 * x_4150) + x_4152);
          }
        }
      } else {
        let x_4156 : vec4<f32> = u_xlat11;
        let x_4157 : vec2<f32> = vec2<f32>(x_4156.x, x_4156.y);
        let x_4159 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4157.x, x_4157.y, x_4159);
        let x_4166 : vec3<f32> = txVec59;
        let x_4168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4166.xy, x_4166.z);
        u_xlat85 = x_4168;
      }
      let x_4169 : i32 = u_xlati55;
      let x_4171 : f32 = x_615.x_AdditionalShadowParams[x_4169].x;
      u_xlat86 = (1.0f + -(x_4171));
      let x_4174 : f32 = u_xlat85;
      let x_4175 : i32 = u_xlati55;
      let x_4177 : f32 = x_615.x_AdditionalShadowParams[x_4175].x;
      let x_4179 : f32 = u_xlat86;
      u_xlat85 = ((x_4174 * x_4177) + x_4179);
      let x_4182 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4182);
      let x_4186 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4186 >= 1.0f);
      let x_4188 : bool = u_xlatb86;
      let x_4189 : bool = u_xlatb88;
      u_xlatb86 = (x_4188 | x_4189);
      let x_4191 : bool = u_xlatb86;
      let x_4192 : f32 = u_xlat85;
      u_xlat85 = select(x_4192, 1.0f, x_4191);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4195 : f32 = u_xlat85;
    u_xlat86 = (-(x_4195) + 1.0f);
    let x_4198 : f32 = u_xlat52;
    let x_4199 : f32 = u_xlat86;
    let x_4201 : f32 = u_xlat85;
    u_xlat85 = ((x_4198 * x_4199) + x_4201);
    let x_4204 : i32 = u_xlati55;
    u_xlati86 = (1i << bitcast<u32>((x_4204 & 31i)));
    let x_4207 : i32 = u_xlati86;
    let x_4210 : f32 = x_2296.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4207) & bitcast<u32>(x_4210)));
    let x_4214 : i32 = u_xlati86;
    if ((x_4214 != 0i)) {
      let x_4218 : i32 = u_xlati55;
      let x_4220 : f32 = x_2296.x_AdditionalLightsLightTypes[x_4218].el;
      u_xlati86 = i32(x_4220);
      let x_4223 : i32 = u_xlati86;
      u_xlati88 = select(1i, 0i, (x_4223 != 0i));
      let x_4227 : i32 = u_xlati55;
      u_xlati11 = (x_4227 << bitcast<u32>(2i));
      let x_4229 : i32 = u_xlati88;
      if ((x_4229 != 0i)) {
        let x_4234 : vec3<f32> = vs_TEXCOORD7;
        let x_4236 : i32 = u_xlati11;
        let x_4239 : i32 = u_xlati11;
        let x_4243 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4236 + 1i) / 4i)][((x_4239 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4234.y, x_4234.y, x_4234.y) * vec3<f32>(x_4243.x, x_4243.y, x_4243.w));
        let x_4246 : i32 = u_xlati11;
        let x_4248 : i32 = u_xlati11;
        let x_4251 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[(x_4246 / 4i)][(x_4248 % 4i)];
        let x_4253 : vec3<f32> = vs_TEXCOORD7;
        let x_4256 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4251.x, x_4251.y, x_4251.w) * vec3<f32>(x_4253.x, x_4253.x, x_4253.x)) + x_4256);
        let x_4258 : i32 = u_xlati11;
        let x_4261 : i32 = u_xlati11;
        let x_4265 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4258 + 2i) / 4i)][((x_4261 + 2i) % 4i)];
        let x_4267 : vec3<f32> = vs_TEXCOORD7;
        let x_4270 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4265.x, x_4265.y, x_4265.w) * vec3<f32>(x_4267.z, x_4267.z, x_4267.z)) + x_4270);
        let x_4272 : vec3<f32> = u_xlat37;
        let x_4273 : i32 = u_xlati11;
        let x_4276 : i32 = u_xlati11;
        let x_4280 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4273 + 3i) / 4i)][((x_4276 + 3i) % 4i)];
        u_xlat37 = (x_4272 + vec3<f32>(x_4280.x, x_4280.y, x_4280.w));
        let x_4283 : vec3<f32> = u_xlat37;
        let x_4285 : vec3<f32> = u_xlat37;
        let x_4287 : vec2<f32> = (vec2<f32>(x_4283.x, x_4283.y) / vec2<f32>(x_4285.z, x_4285.z));
        let x_4288 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4287.x, x_4287.y, x_4288.z);
        let x_4290 : vec3<f32> = u_xlat37;
        let x_4293 : vec2<f32> = ((vec2<f32>(x_4290.x, x_4290.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4294 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4293.x, x_4293.y, x_4294.z);
        let x_4296 : vec3<f32> = u_xlat37;
        let x_4300 : vec2<f32> = clamp(vec2<f32>(x_4296.x, x_4296.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4301 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4300.x, x_4300.y, x_4301.z);
        let x_4303 : i32 = u_xlati55;
        let x_4305 : vec4<f32> = x_2296.x_AdditionalLightsCookieAtlasUVRects[x_4303];
        let x_4307 : vec3<f32> = u_xlat37;
        let x_4310 : i32 = u_xlati55;
        let x_4312 : vec4<f32> = x_2296.x_AdditionalLightsCookieAtlasUVRects[x_4310];
        let x_4314 : vec2<f32> = ((vec2<f32>(x_4305.x, x_4305.y) * vec2<f32>(x_4307.x, x_4307.y)) + vec2<f32>(x_4312.z, x_4312.w));
        let x_4315 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4314.x, x_4314.y, x_4315.z);
      } else {
        let x_4318 : i32 = u_xlati86;
        u_xlatb86 = (x_4318 == 1i);
        let x_4320 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4320);
        let x_4322 : i32 = u_xlati86;
        if ((x_4322 != 0i)) {
          let x_4326 : vec3<f32> = vs_TEXCOORD7;
          let x_4328 : i32 = u_xlati11;
          let x_4331 : i32 = u_xlati11;
          let x_4335 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4328 + 1i) / 4i)][((x_4331 + 1i) % 4i)];
          let x_4337 : vec2<f32> = (vec2<f32>(x_4326.y, x_4326.y) * vec2<f32>(x_4335.x, x_4335.y));
          let x_4338 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4337.x, x_4337.y, x_4338.z, x_4338.w);
          let x_4340 : i32 = u_xlati11;
          let x_4342 : i32 = u_xlati11;
          let x_4345 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[(x_4340 / 4i)][(x_4342 % 4i)];
          let x_4347 : vec3<f32> = vs_TEXCOORD7;
          let x_4350 : vec4<f32> = u_xlat12;
          let x_4352 : vec2<f32> = ((vec2<f32>(x_4345.x, x_4345.y) * vec2<f32>(x_4347.x, x_4347.x)) + vec2<f32>(x_4350.x, x_4350.y));
          let x_4353 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4352.x, x_4352.y, x_4353.z, x_4353.w);
          let x_4355 : i32 = u_xlati11;
          let x_4358 : i32 = u_xlati11;
          let x_4362 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4355 + 2i) / 4i)][((x_4358 + 2i) % 4i)];
          let x_4364 : vec3<f32> = vs_TEXCOORD7;
          let x_4367 : vec4<f32> = u_xlat12;
          let x_4369 : vec2<f32> = ((vec2<f32>(x_4362.x, x_4362.y) * vec2<f32>(x_4364.z, x_4364.z)) + vec2<f32>(x_4367.x, x_4367.y));
          let x_4370 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4369.x, x_4369.y, x_4370.z, x_4370.w);
          let x_4372 : vec4<f32> = u_xlat12;
          let x_4374 : i32 = u_xlati11;
          let x_4377 : i32 = u_xlati11;
          let x_4381 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4374 + 3i) / 4i)][((x_4377 + 3i) % 4i)];
          let x_4383 : vec2<f32> = (vec2<f32>(x_4372.x, x_4372.y) + vec2<f32>(x_4381.x, x_4381.y));
          let x_4384 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4383.x, x_4383.y, x_4384.z, x_4384.w);
          let x_4386 : vec4<f32> = u_xlat12;
          let x_4389 : vec2<f32> = ((vec2<f32>(x_4386.x, x_4386.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4390 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4389.x, x_4389.y, x_4390.z, x_4390.w);
          let x_4392 : vec4<f32> = u_xlat12;
          let x_4394 : vec2<f32> = fract(vec2<f32>(x_4392.x, x_4392.y));
          let x_4395 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4394.x, x_4394.y, x_4395.z, x_4395.w);
          let x_4397 : i32 = u_xlati55;
          let x_4399 : vec4<f32> = x_2296.x_AdditionalLightsCookieAtlasUVRects[x_4397];
          let x_4401 : vec4<f32> = u_xlat12;
          let x_4404 : i32 = u_xlati55;
          let x_4406 : vec4<f32> = x_2296.x_AdditionalLightsCookieAtlasUVRects[x_4404];
          let x_4408 : vec2<f32> = ((vec2<f32>(x_4399.x, x_4399.y) * vec2<f32>(x_4401.x, x_4401.y)) + vec2<f32>(x_4406.z, x_4406.w));
          let x_4409 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4408.x, x_4408.y, x_4409.z);
        } else {
          let x_4412 : vec3<f32> = vs_TEXCOORD7;
          let x_4414 : i32 = u_xlati11;
          let x_4417 : i32 = u_xlati11;
          let x_4421 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4414 + 1i) / 4i)][((x_4417 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4412.y, x_4412.y, x_4412.y, x_4412.y) * x_4421);
          let x_4423 : i32 = u_xlati11;
          let x_4425 : i32 = u_xlati11;
          let x_4428 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[(x_4423 / 4i)][(x_4425 % 4i)];
          let x_4429 : vec3<f32> = vs_TEXCOORD7;
          let x_4432 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4428 * vec4<f32>(x_4429.x, x_4429.x, x_4429.x, x_4429.x)) + x_4432);
          let x_4434 : i32 = u_xlati11;
          let x_4437 : i32 = u_xlati11;
          let x_4441 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4434 + 2i) / 4i)][((x_4437 + 2i) % 4i)];
          let x_4442 : vec3<f32> = vs_TEXCOORD7;
          let x_4445 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4441 * vec4<f32>(x_4442.z, x_4442.z, x_4442.z, x_4442.z)) + x_4445);
          let x_4447 : vec4<f32> = u_xlat12;
          let x_4448 : i32 = u_xlati11;
          let x_4451 : i32 = u_xlati11;
          let x_4455 : vec4<f32> = x_2296.x_AdditionalLightsWorldToLights[((x_4448 + 3i) / 4i)][((x_4451 + 3i) % 4i)];
          u_xlat12 = (x_4447 + x_4455);
          let x_4457 : vec4<f32> = u_xlat12;
          let x_4459 : vec4<f32> = u_xlat12;
          let x_4461 : vec3<f32> = (vec3<f32>(x_4457.x, x_4457.y, x_4457.z) / vec3<f32>(x_4459.w, x_4459.w, x_4459.w));
          let x_4462 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4461.x, x_4461.y, x_4461.z, x_4462.w);
          let x_4464 : vec4<f32> = u_xlat12;
          let x_4466 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4464.x, x_4464.y, x_4464.z), vec3<f32>(x_4466.x, x_4466.y, x_4466.z));
          let x_4469 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4469);
          let x_4471 : f32 = u_xlat86;
          let x_4473 : vec4<f32> = u_xlat12;
          let x_4475 : vec3<f32> = (vec3<f32>(x_4471, x_4471, x_4471) * vec3<f32>(x_4473.x, x_4473.y, x_4473.z));
          let x_4476 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4475.x, x_4475.y, x_4475.z, x_4476.w);
          let x_4478 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4478.x, x_4478.y, x_4478.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4483 : f32 = u_xlat86;
          u_xlat86 = max(x_4483, 0.00000099999999747524f);
          let x_4486 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4486);
          let x_4488 : f32 = u_xlat86;
          let x_4490 : vec4<f32> = u_xlat12;
          let x_4492 : vec3<f32> = (vec3<f32>(x_4488, x_4488, x_4488) * vec3<f32>(x_4490.z, x_4490.x, x_4490.y));
          let x_4493 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4492.x, x_4492.y, x_4492.z, x_4493.w);
          let x_4496 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4496);
          let x_4500 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4500, 0.0f, 1.0f);
          let x_4503 : vec4<f32> = u_xlat13;
          let x_4505 : vec4<bool> = (vec4<f32>(x_4503.y, x_4503.y, x_4503.y, x_4503.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4506 : vec2<bool> = vec2<bool>(x_4505.x, x_4505.w);
          let x_4507 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4506.x, x_4507.y, x_4507.z, x_4506.y);
          let x_4510 : bool = u_xlatb11.x;
          if (x_4510) {
            let x_4515 : f32 = u_xlat13.x;
            x_4511 = x_4515;
          } else {
            let x_4518 : f32 = u_xlat13.x;
            x_4511 = -(x_4518);
          }
          let x_4520 : f32 = x_4511;
          u_xlat11.x = x_4520;
          let x_4523 : bool = u_xlatb11.w;
          if (x_4523) {
            let x_4528 : f32 = u_xlat13.x;
            x_4524 = x_4528;
          } else {
            let x_4531 : f32 = u_xlat13.x;
            x_4524 = -(x_4531);
          }
          let x_4533 : f32 = x_4524;
          u_xlat11.w = x_4533;
          let x_4535 : vec4<f32> = u_xlat12;
          let x_4537 : f32 = u_xlat86;
          let x_4540 : vec4<f32> = u_xlat11;
          let x_4542 : vec2<f32> = ((vec2<f32>(x_4535.x, x_4535.y) * vec2<f32>(x_4537, x_4537)) + vec2<f32>(x_4540.x, x_4540.w));
          let x_4543 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4542.x, x_4543.y, x_4543.z, x_4542.y);
          let x_4545 : vec4<f32> = u_xlat11;
          let x_4548 : vec2<f32> = ((vec2<f32>(x_4545.x, x_4545.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4549 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4548.x, x_4549.y, x_4549.z, x_4548.y);
          let x_4551 : vec4<f32> = u_xlat11;
          let x_4555 : vec2<f32> = clamp(vec2<f32>(x_4551.x, x_4551.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4556 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4555.x, x_4556.y, x_4556.z, x_4555.y);
          let x_4558 : i32 = u_xlati55;
          let x_4560 : vec4<f32> = x_2296.x_AdditionalLightsCookieAtlasUVRects[x_4558];
          let x_4562 : vec4<f32> = u_xlat11;
          let x_4565 : i32 = u_xlati55;
          let x_4567 : vec4<f32> = x_2296.x_AdditionalLightsCookieAtlasUVRects[x_4565];
          let x_4569 : vec2<f32> = ((vec2<f32>(x_4560.x, x_4560.y) * vec2<f32>(x_4562.x, x_4562.w)) + vec2<f32>(x_4567.z, x_4567.w));
          let x_4570 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4569.x, x_4569.y, x_4570.z);
        }
      }
      let x_4577 : vec3<f32> = u_xlat37;
      let x_4579 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4577.x, x_4577.y), 0.0f);
      u_xlat11 = x_4579;
      let x_4581 : bool = u_xlatb3.y;
      if (x_4581) {
        let x_4586 : f32 = u_xlat11.w;
        x_4582 = x_4586;
      } else {
        let x_4589 : f32 = u_xlat11.x;
        x_4582 = x_4589;
      }
      let x_4590 : f32 = x_4582;
      u_xlat86 = x_4590;
      let x_4592 : bool = u_xlatb3.x;
      if (x_4592) {
        let x_4596 : vec4<f32> = u_xlat11;
        x_4593 = vec3<f32>(x_4596.x, x_4596.y, x_4596.z);
      } else {
        let x_4599 : f32 = u_xlat86;
        x_4593 = vec3<f32>(x_4599, x_4599, x_4599);
      }
      let x_4601 : vec3<f32> = x_4593;
      let x_4602 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4601.x, x_4601.y, x_4601.z, x_4602.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4608 : vec4<f32> = u_xlat11;
    let x_4610 : i32 = u_xlati55;
    let x_4612 : vec4<f32> = x_2794.x_AdditionalLightsColor[x_4610];
    let x_4614 : vec3<f32> = (vec3<f32>(x_4608.x, x_4608.y, x_4608.z) * vec3<f32>(x_4612.x, x_4612.y, x_4612.z));
    let x_4615 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4614.x, x_4614.y, x_4614.z, x_4615.w);
    let x_4617 : f32 = u_xlat83;
    let x_4618 : f32 = u_xlat85;
    u_xlat55 = (x_4617 * x_4618);
    let x_4620 : vec4<f32> = u_xlat2;
    let x_4622 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4620.x, x_4620.y, x_4620.z), vec3<f32>(x_4622.x, x_4622.y, x_4622.z));
    let x_4625 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4625, 0.0f, 1.0f);
    let x_4627 : f32 = u_xlat55;
    let x_4628 : f32 = u_xlat83;
    u_xlat55 = (x_4627 * x_4628);
    let x_4630 : f32 = u_xlat55;
    let x_4632 : vec4<f32> = u_xlat11;
    let x_4634 : vec3<f32> = (vec3<f32>(x_4630, x_4630, x_4630) * vec3<f32>(x_4632.x, x_4632.y, x_4632.z));
    let x_4635 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4634.x, x_4634.y, x_4634.z, x_4635.w);
    let x_4637 : vec3<f32> = u_xlat35;
    let x_4638 : f32 = u_xlat84;
    let x_4641 : vec4<f32> = u_xlat1;
    u_xlat35 = ((x_4637 * vec3<f32>(x_4638, x_4638, x_4638)) + vec3<f32>(x_4641.x, x_4641.y, x_4641.z));
    let x_4644 : vec3<f32> = u_xlat35;
    let x_4645 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(x_4644, x_4645);
    let x_4647 : f32 = u_xlat55;
    u_xlat55 = max(x_4647, 1.17549435e-38f);
    let x_4649 : f32 = u_xlat55;
    u_xlat55 = inverseSqrt(x_4649);
    let x_4651 : f32 = u_xlat55;
    let x_4653 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4651, x_4651, x_4651) * x_4653);
    let x_4655 : vec4<f32> = u_xlat2;
    let x_4657 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(vec3<f32>(x_4655.x, x_4655.y, x_4655.z), x_4657);
    let x_4659 : f32 = u_xlat55;
    u_xlat55 = clamp(x_4659, 0.0f, 1.0f);
    let x_4661 : vec4<f32> = u_xlat10;
    let x_4663 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_4661.x, x_4661.y, x_4661.z), x_4663);
    let x_4665 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4665, 0.0f, 1.0f);
    let x_4667 : f32 = u_xlat55;
    let x_4668 : f32 = u_xlat55;
    u_xlat55 = (x_4667 * x_4668);
    let x_4670 : f32 = u_xlat55;
    let x_4672 : f32 = u_xlat9.x;
    u_xlat55 = ((x_4670 * x_4672) + 1.00001001358032226562f);
    let x_4675 : f32 = u_xlat83;
    let x_4676 : f32 = u_xlat83;
    u_xlat83 = (x_4675 * x_4676);
    let x_4678 : f32 = u_xlat55;
    let x_4679 : f32 = u_xlat55;
    u_xlat55 = (x_4678 * x_4679);
    let x_4681 : f32 = u_xlat83;
    u_xlat83 = max(x_4681, 0.10000000149011611938f);
    let x_4683 : f32 = u_xlat55;
    let x_4684 : f32 = u_xlat83;
    u_xlat55 = (x_4683 * x_4684);
    let x_4686 : f32 = u_xlat81;
    let x_4687 : f32 = u_xlat55;
    u_xlat55 = (x_4686 * x_4687);
    let x_4689 : f32 = u_xlat82;
    let x_4690 : f32 = u_xlat55;
    u_xlat55 = (x_4689 / x_4690);
    let x_4692 : vec4<f32> = u_xlat5;
    let x_4694 : f32 = u_xlat55;
    let x_4697 : vec4<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4692.x, x_4692.y, x_4692.z) * vec3<f32>(x_4694, x_4694, x_4694)) + vec3<f32>(x_4697.x, x_4697.y, x_4697.z));
    let x_4700 : vec3<f32> = u_xlat35;
    let x_4701 : vec4<f32> = u_xlat11;
    let x_4704 : vec4<f32> = u_xlat8;
    let x_4706 : vec3<f32> = ((x_4700 * vec3<f32>(x_4701.x, x_4701.y, x_4701.z)) + vec3<f32>(x_4704.x, x_4704.y, x_4704.z));
    let x_4707 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4706.x, x_4706.y, x_4706.z, x_4707.w);

    continuing {
      let x_4709 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4709 + bitcast<u32>(1i));
    }
  }
  let x_4711 : vec4<f32> = u_xlat4;
  let x_4713 : f32 = u_xlat26;
  let x_4716 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4711.x, x_4711.y, x_4711.z) * vec3<f32>(x_4713, x_4713, x_4713)) + vec3<f32>(x_4716.x, x_4716.y, x_4716.z));
  let x_4719 : vec4<f32> = u_xlat8;
  let x_4721 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4719.x, x_4719.y, x_4719.z) + x_4721);
  let x_4723 : f32 = u_xlat78;
  let x_4725 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4723, x_4723, x_4723) * x_4725);
  let x_4727 : f32 = u_xlat79;
  let x_4728 : f32 = u_xlat79;
  u_xlat78 = (x_4727 * -(x_4728));
  let x_4731 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4731);
  let x_4735 : vec3<f32> = u_xlat0;
  let x_4736 : f32 = u_xlat78;
  let x_4738 : vec3<f32> = (x_4735 * vec3<f32>(x_4736, x_4736, x_4736));
  let x_4739 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4738.x, x_4738.y, x_4738.z, x_4739.w);
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


