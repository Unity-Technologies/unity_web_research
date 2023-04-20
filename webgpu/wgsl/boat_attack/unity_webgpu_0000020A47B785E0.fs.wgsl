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

@group(1) @binding(2) var<uniform> x_648 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_792 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2135 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2612 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

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
  var x_2218 : f32;
  var x_2230 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2748 : f32;
  var x_2758 : f32;
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
  var x_4337 : f32;
  var x_4350 : f32;
  var x_4408 : f32;
  var x_4419 : vec3<f32>;
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
  let x_609 : f32 = vs_TEXCOORD7.y;
  let x_611 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat79 = (x_609 * x_611);
  let x_614 : f32 = x_29.unity_MatrixV[0i].z;
  let x_616 : f32 = vs_TEXCOORD7.x;
  let x_618 : f32 = u_xlat79;
  u_xlat79 = ((x_614 * x_616) + x_618);
  let x_621 : f32 = x_29.unity_MatrixV[2i].z;
  let x_623 : f32 = vs_TEXCOORD7.z;
  let x_625 : f32 = u_xlat79;
  u_xlat79 = ((x_621 * x_623) + x_625);
  let x_627 : f32 = u_xlat79;
  let x_630 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat79 = (x_627 + x_630);
  let x_632 : f32 = u_xlat79;
  let x_635 : f32 = x_29.x_ProjectionParams.y;
  u_xlat79 = (-(x_632) + -(x_635));
  let x_638 : f32 = u_xlat79;
  u_xlat79 = max(x_638, 0.0f);
  let x_640 : f32 = u_xlat79;
  let x_642 : f32 = x_29.unity_FogParams.x;
  u_xlat79 = (x_640 * x_642);
  u_xlat2.w = 1.0f;
  let x_650 : vec4<f32> = x_648.unity_SHAr;
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_650, x_651);
  let x_655 : vec4<f32> = x_648.unity_SHAg;
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_655, x_656);
  let x_660 : vec4<f32> = x_648.unity_SHAb;
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_660, x_661);
  let x_664 : vec4<f32> = u_xlat2;
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_664.y, x_664.z, x_664.z, x_664.x) * vec4<f32>(x_666.x, x_666.y, x_666.z, x_666.z));
  let x_670 : vec4<f32> = x_648.unity_SHBr;
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_670, x_671);
  let x_675 : vec4<f32> = x_648.unity_SHBg;
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_675, x_676);
  let x_680 : vec4<f32> = x_648.unity_SHBb;
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_680, x_681);
  let x_686 : f32 = u_xlat2.y;
  let x_688 : f32 = u_xlat2.y;
  u_xlat80 = (x_686 * x_688);
  let x_691 : f32 = u_xlat2.x;
  let x_693 : f32 = u_xlat2.x;
  let x_695 : f32 = u_xlat80;
  u_xlat80 = ((x_691 * x_693) + -(x_695));
  let x_700 : vec4<f32> = x_648.unity_SHC;
  let x_702 : f32 = u_xlat80;
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702, x_702, x_702)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat3;
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat3;
  let x_720 : vec3<f32> = max(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_724) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_730 : f32 = u_xlat52;
  let x_731 : f32 = u_xlat80;
  u_xlat81 = (x_730 + -(x_731));
  let x_734 : f32 = u_xlat80;
  let x_736 : vec4<f32> = u_xlat5;
  let x_738 : vec3<f32> = (vec3<f32>(x_734, x_734, x_734) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat5;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_746 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec3<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat5;
  let x_755 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.x, x_748.x) * vec3<f32>(x_750.x, x_750.y, x_750.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_756 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : f32 = u_xlat52;
  u_xlat0.x = (-(x_758) + 1.0f);
  let x_763 : f32 = u_xlat0.x;
  let x_765 : f32 = u_xlat0.x;
  u_xlat52 = (x_763 * x_765);
  let x_767 : f32 = u_xlat52;
  u_xlat52 = max(x_767, 0.0078125f);
  let x_770 : f32 = u_xlat52;
  let x_771 : f32 = u_xlat52;
  u_xlat80 = (x_770 * x_771);
  let x_773 : f32 = u_xlat81;
  u_xlat81 = (x_773 + 1.0f);
  let x_775 : f32 = u_xlat81;
  u_xlat81 = clamp(x_775, 0.0f, 1.0f);
  let x_778 : f32 = u_xlat52;
  u_xlat82 = ((x_778 * 4.0f) + 2.0f);
  let x_782 : f32 = u_xlat26;
  u_xlat26 = min(x_782, 1.0f);
  let x_794 : f32 = x_792.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_794);
  let x_796 : bool = u_xlatb83;
  if (x_796) {
    let x_800 : f32 = x_792.x_MainLightShadowParams.y;
    u_xlatb83 = (x_800 == 1.0f);
    let x_802 : bool = u_xlatb83;
    if (x_802) {
      let x_806 : vec4<f32> = vs_TEXCOORD8;
      let x_809 : vec4<f32> = x_792.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y) + x_809);
      let x_812 : vec4<f32> = u_xlat6;
      let x_813 : vec2<f32> = vec2<f32>(x_812.x, x_812.y);
      let x_815 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_813.x, x_813.y, x_815);
      let x_827 : vec3<f32> = txVec0;
      let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
      u_xlat7.x = x_829;
      let x_832 : vec4<f32> = u_xlat6;
      let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
      let x_835 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_833.x, x_833.y, x_835);
      let x_842 : vec3<f32> = txVec1;
      let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
      u_xlat7.y = x_844;
      let x_846 : vec4<f32> = vs_TEXCOORD8;
      let x_849 : vec4<f32> = x_792.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_846.x, x_846.y, x_846.x, x_846.y) + x_849);
      let x_852 : vec4<f32> = u_xlat6;
      let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
      let x_855 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_853.x, x_853.y, x_855);
      let x_862 : vec3<f32> = txVec2;
      let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_862.xy, x_862.z);
      u_xlat7.z = x_864;
      let x_867 : vec4<f32> = u_xlat6;
      let x_868 : vec2<f32> = vec2<f32>(x_867.z, x_867.w);
      let x_870 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_868.x, x_868.y, x_870);
      let x_877 : vec3<f32> = txVec3;
      let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_877.xy, x_877.z);
      u_xlat7.w = x_879;
      let x_882 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_882, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_889 : f32 = x_792.x_MainLightShadowParams.y;
      u_xlatb6 = (x_889 == 2.0f);
      let x_891 : bool = u_xlatb6;
      if (x_891) {
        let x_894 : vec4<f32> = vs_TEXCOORD8;
        let x_897 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat6;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_910 : vec4<f32> = vs_TEXCOORD8;
        let x_913 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_913.z, x_913.w)) + -(vec2<f32>(x_916.x, x_916.y)));
        let x_920 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_920.x, x_920.x, x_920.y, x_920.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_924 : vec4<f32> = u_xlat7;
        let x_926 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_924.x, x_924.x, x_924.z, x_924.z) * vec4<f32>(x_926.x, x_926.x, x_926.z, x_926.z));
        let x_929 : vec4<f32> = u_xlat8;
        let x_933 : vec2<f32> = (vec2<f32>(x_929.y, x_929.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_933.x, x_934.y, x_933.y, x_934.w);
        let x_936 : vec4<f32> = u_xlat8;
        let x_939 : vec2<f32> = u_xlat58;
        let x_941 : vec2<f32> = ((vec2<f32>(x_936.x, x_936.z) * vec2<f32>(0.5f, 0.5f)) + -(x_939));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_945 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_945) + vec2<f32>(1.0f, 1.0f));
        let x_949 : vec2<f32> = u_xlat58;
        let x_951 : vec2<f32> = min(x_949, vec2<f32>(0.0f, 0.0f));
        let x_952 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat9;
        let x_957 : vec4<f32> = u_xlat9;
        let x_960 : vec2<f32> = u_xlat60;
        let x_961 : vec2<f32> = ((-(vec2<f32>(x_954.x, x_954.y)) * vec2<f32>(x_957.x, x_957.y)) + x_960);
        let x_962 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_964, vec2<f32>(0.0f, 0.0f));
        let x_966 : vec2<f32> = u_xlat58;
        let x_968 : vec2<f32> = u_xlat58;
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_966) * x_968) + vec2<f32>(x_970.y, x_970.w));
        let x_973 : vec4<f32> = u_xlat9;
        let x_975 : vec2<f32> = (vec2<f32>(x_973.x, x_973.y) + vec2<f32>(1.0f, 1.0f));
        let x_976 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_978 + vec2<f32>(1.0f, 1.0f));
        let x_980 : vec4<f32> = u_xlat8;
        let x_984 : vec2<f32> = (vec2<f32>(x_980.x, x_980.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_985 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec2<f32> = u_xlat60;
        let x_988 : vec2<f32> = (x_987 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat9;
        let x_993 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec2<f32> = u_xlat58;
        let x_997 : vec2<f32> = (x_996 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_998 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1000.y, x_1000.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1004 : f32 = u_xlat9.x;
        u_xlat10.z = x_1004;
        let x_1007 : f32 = u_xlat58.x;
        u_xlat10.w = x_1007;
        let x_1010 : f32 = u_xlat11.x;
        u_xlat8.z = x_1010;
        let x_1013 : f32 = u_xlat7.x;
        u_xlat8.w = x_1013;
        let x_1015 : vec4<f32> = u_xlat8;
        let x_1017 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1015.z, x_1015.w, x_1015.x, x_1015.z) + vec4<f32>(x_1017.z, x_1017.w, x_1017.x, x_1017.z));
        let x_1021 : f32 = u_xlat10.y;
        u_xlat9.z = x_1021;
        let x_1024 : f32 = u_xlat58.y;
        u_xlat9.w = x_1024;
        let x_1027 : f32 = u_xlat8.y;
        u_xlat11.z = x_1027;
        let x_1030 : f32 = u_xlat7.z;
        u_xlat11.w = x_1030;
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec4<f32> = u_xlat11;
        let x_1036 : vec3<f32> = (vec3<f32>(x_1032.z, x_1032.y, x_1032.w) + vec3<f32>(x_1034.z, x_1034.y, x_1034.w));
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1041 : vec4<f32> = u_xlat12;
        let x_1043 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.z, x_1039.w) / vec3<f32>(x_1041.z, x_1041.w, x_1041.y));
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1052 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat11;
        let x_1057 : vec4<f32> = u_xlat7;
        let x_1059 : vec3<f32> = (vec3<f32>(x_1055.z, x_1055.y, x_1055.w) / vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1062.x, x_1062.y, x_1062.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1070 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1072 : vec3<f32> = (vec3<f32>(x_1067.y, x_1067.x, x_1067.z) * vec3<f32>(x_1070.x, x_1070.x, x_1070.x));
        let x_1073 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat9;
        let x_1078 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1080 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * vec3<f32>(x_1078.y, x_1078.y, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
        let x_1084 : f32 = u_xlat9.x;
        u_xlat8.w = x_1084;
        let x_1086 : vec4<f32> = u_xlat6;
        let x_1089 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y) * vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y)) + vec4<f32>(x_1092.y, x_1092.w, x_1092.x, x_1092.w));
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1098 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.z, x_1101.w));
        let x_1105 : f32 = u_xlat8.y;
        u_xlat9.w = x_1105;
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1108 : vec2<f32> = vec2<f32>(x_1107.y, x_1107.z);
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1109.x, x_1108.x, x_1109.z, x_1108.y);
        let x_1111 : vec4<f32> = u_xlat6;
        let x_1114 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat6;
        let x_1123 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y) * vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y)) + vec4<f32>(x_1126.w, x_1126.y, x_1126.w, x_1126.z));
        let x_1129 : vec4<f32> = u_xlat6;
        let x_1132 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.x, x_1135.w, x_1135.z, x_1135.w));
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1140 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.x, x_1138.y) * vec4<f32>(x_1140.z, x_1140.w, x_1140.y, x_1140.z));
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1146 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1144.y, x_1144.y, x_1144.z, x_1144.z) * x_1146);
        let x_1149 : f32 = u_xlat7.z;
        let x_1151 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1149 * x_1151);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1156 : vec2<f32> = vec2<f32>(x_1155.x, x_1155.y);
        let x_1158 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1156.x, x_1156.y, x_1158);
        let x_1166 : vec3<f32> = txVec4;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1166.xy, x_1166.z);
        u_xlat32.x = x_1168;
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1172 : vec2<f32> = vec2<f32>(x_1171.z, x_1171.w);
        let x_1174 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec5;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
        u_xlat7.x = x_1183;
        let x_1186 : f32 = u_xlat7.x;
        let x_1188 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1186 * x_1188);
        let x_1192 : f32 = u_xlat13.x;
        let x_1194 : f32 = u_xlat32.x;
        let x_1197 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1192 * x_1194) + x_1197);
        let x_1201 : vec2<f32> = u_xlat58;
        let x_1203 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec6;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1210.xy, x_1210.z);
        u_xlat58.x = x_1212;
        let x_1215 : f32 = u_xlat13.z;
        let x_1217 : f32 = u_xlat58.x;
        let x_1220 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1215 * x_1217) + x_1220);
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec7;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
        u_xlat58.x = x_1236;
        let x_1239 : f32 = u_xlat13.w;
        let x_1241 : f32 = u_xlat58.x;
        let x_1244 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1239 * x_1241) + x_1244);
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.x, x_1248.y);
        let x_1251 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec8;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat58.x = x_1260;
        let x_1263 : f32 = u_xlat14.x;
        let x_1265 : f32 = u_xlat58.x;
        let x_1268 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1263 * x_1265) + x_1268);
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.z, x_1272.w);
        let x_1275 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec9;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1282.xy, x_1282.z);
        u_xlat58.x = x_1284;
        let x_1287 : f32 = u_xlat14.y;
        let x_1289 : f32 = u_xlat58.x;
        let x_1292 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1287 * x_1289) + x_1292);
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.z, x_1296.w);
        let x_1299 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec10;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1306.xy, x_1306.z);
        u_xlat58.x = x_1308;
        let x_1311 : f32 = u_xlat14.z;
        let x_1313 : f32 = u_xlat58.x;
        let x_1316 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1311 * x_1313) + x_1316);
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec11;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat58.x = x_1332;
        let x_1335 : f32 = u_xlat14.w;
        let x_1337 : f32 = u_xlat58.x;
        let x_1340 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1335 * x_1337) + x_1340);
        let x_1344 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec12;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat58.x = x_1356;
        let x_1359 : f32 = u_xlat6.x;
        let x_1361 : f32 = u_xlat58.x;
        let x_1364 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1359 * x_1361) + x_1364);
      } else {
        let x_1367 : vec4<f32> = vs_TEXCOORD8;
        let x_1370 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1373 : vec2<f32> = ((vec2<f32>(x_1367.x, x_1367.y) * vec2<f32>(x_1370.z, x_1370.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1374 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
        let x_1376 : vec4<f32> = u_xlat6;
        let x_1378 : vec2<f32> = floor(vec2<f32>(x_1376.x, x_1376.y));
        let x_1379 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1381 : vec4<f32> = vs_TEXCOORD8;
        let x_1384 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1381.x, x_1381.y) * vec2<f32>(x_1384.z, x_1384.w)) + -(vec2<f32>(x_1387.x, x_1387.y)));
        let x_1391 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1391.x, x_1391.x, x_1391.y, x_1391.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1396 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1394.x, x_1394.x, x_1394.z, x_1394.z) * vec4<f32>(x_1396.x, x_1396.x, x_1396.z, x_1396.z));
        let x_1399 : vec4<f32> = u_xlat8;
        let x_1403 : vec2<f32> = (vec2<f32>(x_1399.y, x_1399.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1404 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1404.x, x_1403.x, x_1404.z, x_1403.y);
        let x_1406 : vec4<f32> = u_xlat8;
        let x_1409 : vec2<f32> = u_xlat58;
        let x_1411 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1409));
        let x_1412 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1411.x, x_1412.y, x_1411.y, x_1412.w);
        let x_1414 : vec2<f32> = u_xlat58;
        let x_1416 : vec2<f32> = (-(x_1414) + vec2<f32>(1.0f, 1.0f));
        let x_1417 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        let x_1419 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1419, vec2<f32>(0.0f, 0.0f));
        let x_1421 : vec2<f32> = u_xlat60;
        let x_1423 : vec2<f32> = u_xlat60;
        let x_1425 : vec4<f32> = u_xlat8;
        let x_1427 : vec2<f32> = ((-(x_1421) * x_1423) + vec2<f32>(x_1425.x, x_1425.y));
        let x_1428 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1427.x, x_1427.y, x_1428.z, x_1428.w);
        let x_1430 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1430, vec2<f32>(0.0f, 0.0f));
        let x_1433 : vec2<f32> = u_xlat60;
        let x_1435 : vec2<f32> = u_xlat60;
        let x_1437 : vec4<f32> = u_xlat7;
        let x_1439 : vec2<f32> = ((-(x_1433) * x_1435) + vec2<f32>(x_1437.y, x_1437.w));
        let x_1440 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1439.x, x_1440.y, x_1439.y);
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1442.x, x_1442.y) + vec2<f32>(2.0f, 2.0f));
        let x_1446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        let x_1448 : vec3<f32> = u_xlat33;
        let x_1450 : vec2<f32> = (vec2<f32>(x_1448.x, x_1448.z) + vec2<f32>(2.0f, 2.0f));
        let x_1451 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1451.x, x_1450.x, x_1451.z, x_1450.y);
        let x_1454 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1454 * 0.08163200318813323975f);
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1461 : vec3<f32> = (vec3<f32>(x_1458.z, x_1458.x, x_1458.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1462 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
        let x_1464 : vec4<f32> = u_xlat8;
        let x_1467 : vec2<f32> = (vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1468 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1467.x, x_1467.y, x_1468.z, x_1468.w);
        let x_1471 : f32 = u_xlat11.y;
        u_xlat10.x = x_1471;
        let x_1473 : vec2<f32> = u_xlat58;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec2<f32> = u_xlat58;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1488 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1487.x, x_1488.y, x_1487.y, x_1488.w);
        let x_1491 : f32 = u_xlat7.x;
        u_xlat8.y = x_1491;
        let x_1494 : f32 = u_xlat9.y;
        u_xlat8.w = x_1494;
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1497 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1496 + x_1497);
        let x_1499 : vec2<f32> = u_xlat58;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1499.y, x_1499.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1503.x, x_1502.x, x_1503.z, x_1502.y);
        let x_1505 : vec2<f32> = u_xlat58;
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1505.y, x_1505.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1508.x, x_1509.y, x_1508.y, x_1509.w);
        let x_1512 : f32 = u_xlat7.y;
        u_xlat9.y = x_1512;
        let x_1514 : vec4<f32> = u_xlat9;
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1514 + x_1515);
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1518 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1517 / x_1518);
        let x_1520 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1520 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1526 : vec4<f32> = u_xlat9;
        let x_1527 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1526 / x_1527);
        let x_1529 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1529 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1534 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1531.w, x_1531.x, x_1531.y, x_1531.z) * vec4<f32>(x_1534.x, x_1534.x, x_1534.x, x_1534.x));
        let x_1537 : vec4<f32> = u_xlat9;
        let x_1540 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1537.x, x_1537.w, x_1537.y, x_1537.z) * vec4<f32>(x_1540.y, x_1540.y, x_1540.y, x_1540.y));
        let x_1543 : vec4<f32> = u_xlat8;
        let x_1544 : vec3<f32> = vec3<f32>(x_1543.y, x_1543.z, x_1543.w);
        let x_1545 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1544.x, x_1545.y, x_1544.y, x_1544.z);
        let x_1548 : f32 = u_xlat9.x;
        u_xlat11.y = x_1548;
        let x_1550 : vec4<f32> = u_xlat6;
        let x_1553 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y) * vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.y)) + vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1556.y));
        let x_1559 : vec4<f32> = u_xlat6;
        let x_1562 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1565 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1562.x, x_1562.y)) + vec2<f32>(x_1565.w, x_1565.y));
        let x_1569 : f32 = u_xlat11.y;
        u_xlat8.y = x_1569;
        let x_1572 : f32 = u_xlat9.z;
        u_xlat11.y = x_1572;
        let x_1574 : vec4<f32> = u_xlat6;
        let x_1577 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y) * vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y)) + vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1580.y));
        let x_1583 : vec4<f32> = u_xlat6;
        let x_1586 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat11;
        let x_1591 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1589.w, x_1589.y));
        let x_1592 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
        let x_1595 : f32 = u_xlat11.y;
        u_xlat8.z = x_1595;
        let x_1598 : vec4<f32> = u_xlat6;
        let x_1601 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1598.x, x_1598.y, x_1598.x, x_1598.y) * vec4<f32>(x_1601.x, x_1601.y, x_1601.x, x_1601.y)) + vec4<f32>(x_1604.x, x_1604.y, x_1604.x, x_1604.z));
        let x_1608 : f32 = u_xlat9.w;
        u_xlat11.y = x_1608;
        let x_1611 : vec4<f32> = u_xlat6;
        let x_1614 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1611.x, x_1611.y, x_1611.x, x_1611.y) * vec4<f32>(x_1614.x, x_1614.y, x_1614.x, x_1614.y)) + vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1617.y));
        let x_1621 : vec4<f32> = u_xlat6;
        let x_1624 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1621.x, x_1621.y) * vec2<f32>(x_1624.x, x_1624.y)) + vec2<f32>(x_1627.w, x_1627.y));
        let x_1631 : f32 = u_xlat11.y;
        u_xlat8.w = x_1631;
        let x_1634 : vec4<f32> = u_xlat6;
        let x_1637 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.x, x_1640.w));
        let x_1643 : vec4<f32> = u_xlat11;
        let x_1644 : vec3<f32> = vec3<f32>(x_1643.x, x_1643.z, x_1643.w);
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1644.x, x_1645.y, x_1644.y, x_1644.z);
        let x_1647 : vec4<f32> = u_xlat6;
        let x_1650 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1653 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1647.x, x_1647.y, x_1647.x, x_1647.y) * vec4<f32>(x_1650.x, x_1650.y, x_1650.x, x_1650.y)) + vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1653.y));
        let x_1657 : vec4<f32> = u_xlat6;
        let x_1660 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1663 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(x_1660.x, x_1660.y)) + vec2<f32>(x_1663.w, x_1663.y));
        let x_1667 : f32 = u_xlat8.x;
        u_xlat9.x = x_1667;
        let x_1669 : vec4<f32> = u_xlat6;
        let x_1672 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1675 : vec4<f32> = u_xlat9;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1672.x, x_1672.y)) + vec2<f32>(x_1675.x, x_1675.y));
        let x_1678 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1677.x, x_1677.y, x_1678.z, x_1678.w);
        let x_1681 : vec4<f32> = u_xlat7;
        let x_1683 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1681.x, x_1681.x, x_1681.x, x_1681.x) * x_1683);
        let x_1686 : vec4<f32> = u_xlat7;
        let x_1688 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1686.y, x_1686.y, x_1686.y, x_1686.y) * x_1688);
        let x_1691 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1691.z, x_1691.z, x_1691.z, x_1691.z) * x_1693);
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1697 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1695.w, x_1695.w, x_1695.w, x_1695.w) * x_1697);
        let x_1700 : vec4<f32> = u_xlat12;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec13;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat8.x = x_1712;
        let x_1715 : vec4<f32> = u_xlat12;
        let x_1716 : vec2<f32> = vec2<f32>(x_1715.z, x_1715.w);
        let x_1718 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1716.x, x_1716.y, x_1718);
        let x_1726 : vec3<f32> = txVec14;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat86 = x_1728;
        let x_1729 : f32 = u_xlat86;
        let x_1731 : f32 = u_xlat17.y;
        u_xlat86 = (x_1729 * x_1731);
        let x_1734 : f32 = u_xlat17.x;
        let x_1736 : f32 = u_xlat8.x;
        let x_1738 : f32 = u_xlat86;
        u_xlat8.x = ((x_1734 * x_1736) + x_1738);
        let x_1742 : vec2<f32> = u_xlat58;
        let x_1744 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec15;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
        u_xlat58.x = x_1753;
        let x_1756 : f32 = u_xlat17.z;
        let x_1758 : f32 = u_xlat58.x;
        let x_1761 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1756 * x_1758) + x_1761);
        let x_1765 : vec4<f32> = u_xlat15;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1776 : vec3<f32> = txVec16;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1776.xy, x_1776.z);
        u_xlat84 = x_1778;
        let x_1780 : f32 = u_xlat17.w;
        let x_1781 : f32 = u_xlat84;
        let x_1784 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1780 * x_1781) + x_1784);
        let x_1788 : vec4<f32> = u_xlat13;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
        let x_1791 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec17;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
        u_xlat84 = x_1800;
        let x_1802 : f32 = u_xlat18.x;
        let x_1803 : f32 = u_xlat84;
        let x_1806 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1802 * x_1803) + x_1806);
        let x_1810 : vec4<f32> = u_xlat13;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.z, x_1810.w);
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec18;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1820.xy, x_1820.z);
        u_xlat84 = x_1822;
        let x_1824 : f32 = u_xlat18.y;
        let x_1825 : f32 = u_xlat84;
        let x_1828 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1824 * x_1825) + x_1828);
        let x_1832 : vec4<f32> = u_xlat14;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.x, x_1832.y);
        let x_1835 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1842 : vec3<f32> = txVec19;
        let x_1844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
        u_xlat84 = x_1844;
        let x_1846 : f32 = u_xlat18.z;
        let x_1847 : f32 = u_xlat84;
        let x_1850 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1846 * x_1847) + x_1850);
        let x_1854 : vec4<f32> = u_xlat15;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.z, x_1854.w);
        let x_1857 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec20;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat84 = x_1866;
        let x_1868 : f32 = u_xlat18.w;
        let x_1869 : f32 = u_xlat84;
        let x_1872 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1868 * x_1869) + x_1872);
        let x_1876 : vec4<f32> = u_xlat16;
        let x_1877 : vec2<f32> = vec2<f32>(x_1876.x, x_1876.y);
        let x_1879 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec21;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1886.xy, x_1886.z);
        u_xlat84 = x_1888;
        let x_1890 : f32 = u_xlat19.x;
        let x_1891 : f32 = u_xlat84;
        let x_1894 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1890 * x_1891) + x_1894);
        let x_1898 : vec4<f32> = u_xlat16;
        let x_1899 : vec2<f32> = vec2<f32>(x_1898.z, x_1898.w);
        let x_1901 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
        let x_1908 : vec3<f32> = txVec22;
        let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
        u_xlat84 = x_1910;
        let x_1912 : f32 = u_xlat19.y;
        let x_1913 : f32 = u_xlat84;
        let x_1916 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1912 * x_1913) + x_1916);
        let x_1920 : vec2<f32> = u_xlat34;
        let x_1922 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1920.x, x_1920.y, x_1922);
        let x_1929 : vec3<f32> = txVec23;
        let x_1931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1929.xy, x_1929.z);
        u_xlat84 = x_1931;
        let x_1933 : f32 = u_xlat19.z;
        let x_1934 : f32 = u_xlat84;
        let x_1937 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1933 * x_1934) + x_1937);
        let x_1941 : vec2<f32> = u_xlat66;
        let x_1943 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec24;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat84 = x_1952;
        let x_1954 : f32 = u_xlat19.w;
        let x_1955 : f32 = u_xlat84;
        let x_1958 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1954 * x_1955) + x_1958);
        let x_1962 : vec4<f32> = u_xlat11;
        let x_1963 : vec2<f32> = vec2<f32>(x_1962.x, x_1962.y);
        let x_1965 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1963.x, x_1963.y, x_1965);
        let x_1972 : vec3<f32> = txVec25;
        let x_1974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1972.xy, x_1972.z);
        u_xlat84 = x_1974;
        let x_1976 : f32 = u_xlat7.x;
        let x_1977 : f32 = u_xlat84;
        let x_1980 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1976 * x_1977) + x_1980);
        let x_1984 : vec4<f32> = u_xlat11;
        let x_1985 : vec2<f32> = vec2<f32>(x_1984.z, x_1984.w);
        let x_1987 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
        let x_1994 : vec3<f32> = txVec26;
        let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1994.xy, x_1994.z);
        u_xlat84 = x_1996;
        let x_1998 : f32 = u_xlat7.y;
        let x_1999 : f32 = u_xlat84;
        let x_2002 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1998 * x_1999) + x_2002);
        let x_2006 : vec2<f32> = u_xlat61;
        let x_2008 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2006.x, x_2006.y, x_2008);
        let x_2015 : vec3<f32> = txVec27;
        let x_2017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2015.xy, x_2015.z);
        u_xlat84 = x_2017;
        let x_2019 : f32 = u_xlat7.z;
        let x_2020 : f32 = u_xlat84;
        let x_2023 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2019 * x_2020) + x_2023);
        let x_2027 : vec4<f32> = u_xlat6;
        let x_2028 : vec2<f32> = vec2<f32>(x_2027.x, x_2027.y);
        let x_2030 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2028.x, x_2028.y, x_2030);
        let x_2037 : vec3<f32> = txVec28;
        let x_2039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2037.xy, x_2037.z);
        u_xlat6.x = x_2039;
        let x_2042 : f32 = u_xlat7.w;
        let x_2044 : f32 = u_xlat6.x;
        let x_2047 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2042 * x_2044) + x_2047);
      }
    }
  } else {
    let x_2051 : vec4<f32> = vs_TEXCOORD8;
    let x_2052 : vec2<f32> = vec2<f32>(x_2051.x, x_2051.y);
    let x_2054 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
    let x_2061 : vec3<f32> = txVec29;
    let x_2063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2061.xy, x_2061.z);
    u_xlat83 = x_2063;
  }
  let x_2065 : f32 = x_792.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2065) + 1.0f);
  let x_2069 : f32 = u_xlat83;
  let x_2071 : f32 = x_792.x_MainLightShadowParams.x;
  let x_2074 : f32 = u_xlat6.x;
  u_xlat83 = ((x_2069 * x_2071) + x_2074);
  let x_2077 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2077);
  let x_2083 : f32 = vs_TEXCOORD8.z;
  u_xlatb32.x = (x_2083 >= 1.0f);
  let x_2087 : bool = u_xlatb32.x;
  let x_2088 : bool = u_xlatb6;
  u_xlatb6 = (x_2087 | x_2088);
  let x_2090 : bool = u_xlatb6;
  let x_2091 : f32 = u_xlat83;
  u_xlat83 = select(x_2091, 1.0f, x_2090);
  let x_2093 : vec3<f32> = vs_TEXCOORD7;
  let x_2095 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2097 : vec3<f32> = (x_2093 + -(x_2095));
  let x_2098 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2100 : vec4<f32> = u_xlat6;
  let x_2102 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2107 : f32 = u_xlat6.x;
  let x_2109 : f32 = x_792.x_MainLightShadowParams.z;
  let x_2112 : f32 = x_792.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_2107 * x_2109) + x_2112);
  let x_2116 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_2116, 0.0f, 1.0f);
  let x_2119 : f32 = u_xlat83;
  u_xlat58.x = (-(x_2119) + 1.0f);
  let x_2124 : f32 = u_xlat32.x;
  let x_2126 : f32 = u_xlat58.x;
  let x_2128 : f32 = u_xlat83;
  u_xlat83 = ((x_2124 * x_2126) + x_2128);
  let x_2137 : f32 = x_2135.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_2137 == -1.0f));
  let x_2141 : bool = u_xlatb32.x;
  if (x_2141) {
    let x_2144 : vec3<f32> = vs_TEXCOORD7;
    let x_2147 : vec4<f32> = x_2135.x_MainLightWorldToLight[1i];
    let x_2149 : vec2<f32> = (vec2<f32>(x_2144.y, x_2144.y) * vec2<f32>(x_2147.x, x_2147.y));
    let x_2150 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2149.x, x_2149.y, x_2150.z);
    let x_2153 : vec4<f32> = x_2135.x_MainLightWorldToLight[0i];
    let x_2155 : vec3<f32> = vs_TEXCOORD7;
    let x_2158 : vec3<f32> = u_xlat32;
    let x_2160 : vec2<f32> = ((vec2<f32>(x_2153.x, x_2153.y) * vec2<f32>(x_2155.x, x_2155.x)) + vec2<f32>(x_2158.x, x_2158.y));
    let x_2161 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2160.x, x_2160.y, x_2161.z);
    let x_2164 : vec4<f32> = x_2135.x_MainLightWorldToLight[2i];
    let x_2166 : vec3<f32> = vs_TEXCOORD7;
    let x_2169 : vec3<f32> = u_xlat32;
    let x_2171 : vec2<f32> = ((vec2<f32>(x_2164.x, x_2164.y) * vec2<f32>(x_2166.z, x_2166.z)) + vec2<f32>(x_2169.x, x_2169.y));
    let x_2172 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2171.x, x_2171.y, x_2172.z);
    let x_2174 : vec3<f32> = u_xlat32;
    let x_2177 : vec4<f32> = x_2135.x_MainLightWorldToLight[3i];
    let x_2179 : vec2<f32> = (vec2<f32>(x_2174.x, x_2174.y) + vec2<f32>(x_2177.x, x_2177.y));
    let x_2180 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2179.x, x_2179.y, x_2180.z);
    let x_2182 : vec3<f32> = u_xlat32;
    let x_2185 : vec2<f32> = ((vec2<f32>(x_2182.x, x_2182.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2186 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2185.x, x_2185.y, x_2186.z);
    let x_2193 : vec3<f32> = u_xlat32;
    let x_2196 : f32 = x_29.x_GlobalMipBias.x;
    let x_2197 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2193.x, x_2193.y), x_2196);
    u_xlat7 = x_2197;
    let x_2199 : f32 = x_2135.x_MainLightCookieTextureFormat;
    let x_2201 : f32 = x_2135.x_MainLightCookieTextureFormat;
    let x_2203 : f32 = x_2135.x_MainLightCookieTextureFormat;
    let x_2205 : f32 = x_2135.x_MainLightCookieTextureFormat;
    let x_2206 : vec4<f32> = vec4<f32>(x_2199, x_2201, x_2203, x_2205);
    let x_2213 : vec4<bool> = (vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2206.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_2213.x, x_2213.y);
    let x_2216 : bool = u_xlatb32.y;
    if (x_2216) {
      let x_2222 : f32 = u_xlat7.w;
      x_2218 = x_2222;
    } else {
      let x_2225 : f32 = u_xlat7.x;
      x_2218 = x_2225;
    }
    let x_2226 : f32 = x_2218;
    u_xlat58.x = x_2226;
    let x_2229 : bool = u_xlatb32.x;
    if (x_2229) {
      let x_2233 : vec4<f32> = u_xlat7;
      x_2230 = vec3<f32>(x_2233.x, x_2233.y, x_2233.z);
    } else {
      let x_2236 : vec2<f32> = u_xlat58;
      x_2230 = vec3<f32>(x_2236.x, x_2236.x, x_2236.x);
    }
    let x_2238 : vec3<f32> = x_2230;
    u_xlat32 = x_2238;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_2243 : vec3<f32> = u_xlat32;
  let x_2245 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat32 = (x_2243 * vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
  let x_2248 : vec4<f32> = u_xlat1;
  let x_2251 : vec4<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_2248.x, x_2248.y, x_2248.z)), vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
  let x_2256 : f32 = u_xlat7.x;
  let x_2258 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2256 + x_2258);
  let x_2261 : vec4<f32> = u_xlat2;
  let x_2263 : vec4<f32> = u_xlat7;
  let x_2267 : vec4<f32> = u_xlat1;
  let x_2270 : vec3<f32> = ((vec3<f32>(x_2261.x, x_2261.y, x_2261.z) * -(vec3<f32>(x_2263.x, x_2263.x, x_2263.x))) + -(vec3<f32>(x_2267.x, x_2267.y, x_2267.z)));
  let x_2271 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2270.x, x_2270.y, x_2270.z, x_2271.w);
  let x_2274 : vec4<f32> = u_xlat2;
  let x_2276 : vec4<f32> = u_xlat1;
  u_xlat85 = dot(vec3<f32>(x_2274.x, x_2274.y, x_2274.z), vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : f32 = u_xlat85;
  u_xlat85 = clamp(x_2279, 0.0f, 1.0f);
  let x_2281 : f32 = u_xlat85;
  u_xlat85 = (-(x_2281) + 1.0f);
  let x_2284 : f32 = u_xlat85;
  let x_2285 : f32 = u_xlat85;
  u_xlat85 = (x_2284 * x_2285);
  let x_2287 : f32 = u_xlat85;
  let x_2288 : f32 = u_xlat85;
  u_xlat85 = (x_2287 * x_2288);
  let x_2291 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_2291) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2299 : f32 = u_xlat0.x;
  let x_2301 : f32 = u_xlat8.x;
  u_xlat0.x = (x_2299 * x_2301);
  let x_2305 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2305 * 6.0f);
  let x_2317 : vec4<f32> = u_xlat7;
  let x_2320 : f32 = u_xlat0.x;
  let x_2321 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2317.x, x_2317.y, x_2317.z), x_2320);
  u_xlat8 = x_2321;
  let x_2323 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2323 + -1.0f);
  let x_2327 : f32 = x_648.unity_SpecCube0_HDR.w;
  let x_2329 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2327 * x_2329) + 1.0f);
  let x_2334 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2334, 0.0f);
  let x_2338 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2338);
  let x_2342 : f32 = u_xlat0.x;
  let x_2344 : f32 = x_648.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2342 * x_2344);
  let x_2348 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2348);
  let x_2352 : f32 = u_xlat0.x;
  let x_2354 : f32 = x_648.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2352 * x_2354);
  let x_2357 : vec4<f32> = u_xlat8;
  let x_2359 : vec3<f32> = u_xlat0;
  let x_2361 : vec3<f32> = (vec3<f32>(x_2357.x, x_2357.y, x_2357.z) * vec3<f32>(x_2359.x, x_2359.x, x_2359.x));
  let x_2362 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
  let x_2364 : f32 = u_xlat52;
  let x_2366 : f32 = u_xlat52;
  let x_2370 : vec2<f32> = ((vec2<f32>(x_2364, x_2364) * vec2<f32>(x_2366, x_2366)) + vec2<f32>(-1.0f, 1.0f));
  let x_2371 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2370.x, x_2371.y, x_2370.y);
  let x_2374 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2374);
  let x_2376 : vec4<f32> = u_xlat5;
  let x_2379 : f32 = u_xlat81;
  let x_2381 : vec3<f32> = (-(vec3<f32>(x_2376.x, x_2376.y, x_2376.z)) + vec3<f32>(x_2379, x_2379, x_2379));
  let x_2382 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2384 : f32 = u_xlat85;
  let x_2386 : vec4<f32> = u_xlat8;
  let x_2389 : vec4<f32> = u_xlat5;
  let x_2391 : vec3<f32> = ((vec3<f32>(x_2384, x_2384, x_2384) * vec3<f32>(x_2386.x, x_2386.y, x_2386.z)) + vec3<f32>(x_2389.x, x_2389.y, x_2389.z));
  let x_2392 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2391.x, x_2391.y, x_2391.z, x_2392.w);
  let x_2394 : f32 = u_xlat52;
  let x_2396 : vec4<f32> = u_xlat8;
  let x_2398 : vec3<f32> = (vec3<f32>(x_2394, x_2394, x_2394) * vec3<f32>(x_2396.x, x_2396.y, x_2396.z));
  let x_2399 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
  let x_2401 : vec4<f32> = u_xlat7;
  let x_2403 : vec4<f32> = u_xlat8;
  let x_2405 : vec3<f32> = (vec3<f32>(x_2401.x, x_2401.y, x_2401.z) * vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
  let x_2406 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2408 : vec4<f32> = u_xlat3;
  let x_2410 : vec4<f32> = u_xlat4;
  let x_2413 : vec4<f32> = u_xlat7;
  let x_2415 : vec3<f32> = ((vec3<f32>(x_2408.x, x_2408.y, x_2408.z) * vec3<f32>(x_2410.x, x_2410.y, x_2410.z)) + vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
  let x_2416 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
  let x_2418 : f32 = u_xlat83;
  let x_2420 : f32 = x_648.unity_LightData.z;
  u_xlat52 = (x_2418 * x_2420);
  let x_2422 : vec4<f32> = u_xlat2;
  let x_2425 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_2422.x, x_2422.y, x_2422.z), vec3<f32>(x_2425.x, x_2425.y, x_2425.z));
  let x_2428 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2428, 0.0f, 1.0f);
  let x_2430 : f32 = u_xlat52;
  let x_2431 : f32 = u_xlat81;
  u_xlat52 = (x_2430 * x_2431);
  let x_2433 : f32 = u_xlat52;
  let x_2435 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2433, x_2433, x_2433) * x_2435);
  let x_2437 : vec4<f32> = u_xlat1;
  let x_2440 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2442 : vec3<f32> = (vec3<f32>(x_2437.x, x_2437.y, x_2437.z) + vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
  let x_2443 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
  let x_2445 : vec4<f32> = u_xlat7;
  let x_2447 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2445.x, x_2445.y, x_2445.z), vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
  let x_2450 : f32 = u_xlat52;
  u_xlat52 = max(x_2450, 1.17549435e-38f);
  let x_2453 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2453);
  let x_2455 : f32 = u_xlat52;
  let x_2457 : vec4<f32> = u_xlat7;
  let x_2459 : vec3<f32> = (vec3<f32>(x_2455, x_2455, x_2455) * vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
  let x_2462 : vec4<f32> = u_xlat2;
  let x_2464 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2462.x, x_2462.y, x_2462.z), vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
  let x_2467 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2467, 0.0f, 1.0f);
  let x_2470 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2472 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_2470.x, x_2470.y, x_2470.z), vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
  let x_2475 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2475, 0.0f, 1.0f);
  let x_2477 : f32 = u_xlat52;
  let x_2478 : f32 = u_xlat52;
  u_xlat52 = (x_2477 * x_2478);
  let x_2480 : f32 = u_xlat52;
  let x_2482 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2480 * x_2482) + 1.00001001358032226562f);
  let x_2486 : f32 = u_xlat81;
  let x_2487 : f32 = u_xlat81;
  u_xlat81 = (x_2486 * x_2487);
  let x_2489 : f32 = u_xlat52;
  let x_2490 : f32 = u_xlat52;
  u_xlat52 = (x_2489 * x_2490);
  let x_2492 : f32 = u_xlat81;
  u_xlat81 = max(x_2492, 0.10000000149011611938f);
  let x_2495 : f32 = u_xlat52;
  let x_2496 : f32 = u_xlat81;
  u_xlat52 = (x_2495 * x_2496);
  let x_2498 : f32 = u_xlat82;
  let x_2499 : f32 = u_xlat52;
  u_xlat52 = (x_2498 * x_2499);
  let x_2501 : f32 = u_xlat80;
  let x_2502 : f32 = u_xlat52;
  u_xlat52 = (x_2501 / x_2502);
  let x_2504 : vec4<f32> = u_xlat5;
  let x_2506 : f32 = u_xlat52;
  let x_2509 : vec4<f32> = u_xlat4;
  let x_2511 : vec3<f32> = ((vec3<f32>(x_2504.x, x_2504.y, x_2504.z) * vec3<f32>(x_2506, x_2506, x_2506)) + vec3<f32>(x_2509.x, x_2509.y, x_2509.z));
  let x_2512 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
  let x_2514 : vec3<f32> = u_xlat32;
  let x_2515 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2514 * vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2519 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2521 : f32 = x_648.unity_LightData.y;
  u_xlat52 = min(x_2519, x_2521);
  let x_2525 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2525));
  let x_2529 : f32 = u_xlat6.x;
  let x_2531 : f32 = x_792.x_AdditionalShadowFadeParams.x;
  let x_2534 : f32 = x_792.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2529 * x_2531) + x_2534);
  let x_2536 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2536, 0.0f, 1.0f);
  let x_2540 : f32 = x_2135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2542 : f32 = x_2135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2544 : f32 = x_2135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2546 : f32 = x_2135.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2547 : vec4<f32> = vec4<f32>(x_2540, x_2542, x_2544, x_2546);
  let x_2553 : vec4<bool> = (vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2547.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2553.x, x_2553.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2565 : u32 = u_xlatu_loop_1;
    let x_2566 : u32 = u_xlatu52;
    if ((x_2565 < x_2566)) {
    } else {
      break;
    }
    let x_2569 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2569 >> 2u);
    let x_2573 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2573 & 3u));
    let x_2576 : u32 = u_xlatu6;
    let x_2579 : vec4<f32> = x_648.unity_LightIndices[bitcast<i32>(x_2576)];
    let x_2589 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2594 : vec4<u32> = indexable[x_2589];
    u_xlat6.x = dot(x_2579, bitcast<vec4<f32>>(x_2594));
    let x_2600 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2600);
    let x_2602 : vec3<f32> = vs_TEXCOORD7;
    let x_2613 : i32 = u_xlati6;
    let x_2615 : vec4<f32> = x_2612.x_AdditionalLightsPosition[x_2613];
    let x_2618 : i32 = u_xlati6;
    let x_2620 : vec4<f32> = x_2612.x_AdditionalLightsPosition[x_2618];
    let x_2622 : vec3<f32> = ((-(x_2602) * vec3<f32>(x_2615.w, x_2615.w, x_2615.w)) + vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
    let x_2623 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
    let x_2626 : vec4<f32> = u_xlat9;
    let x_2628 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2626.x, x_2626.y, x_2626.z), vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
    let x_2631 : f32 = u_xlat59;
    u_xlat59 = max(x_2631, 0.00006103515625f);
    let x_2633 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2633);
    let x_2635 : f32 = u_xlat85;
    let x_2637 : vec4<f32> = u_xlat9;
    let x_2639 : vec3<f32> = (vec3<f32>(x_2635, x_2635, x_2635) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
    let x_2640 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
    let x_2642 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2642);
    let x_2644 : f32 = u_xlat59;
    let x_2645 : i32 = u_xlati6;
    let x_2647 : f32 = x_2612.x_AdditionalLightsAttenuation[x_2645].x;
    u_xlat59 = (x_2644 * x_2647);
    let x_2649 : f32 = u_xlat59;
    let x_2651 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2649) * x_2651) + 1.0f);
    let x_2654 : f32 = u_xlat59;
    u_xlat59 = max(x_2654, 0.0f);
    let x_2656 : f32 = u_xlat59;
    let x_2657 : f32 = u_xlat59;
    u_xlat59 = (x_2656 * x_2657);
    let x_2659 : f32 = u_xlat59;
    let x_2660 : f32 = u_xlat86;
    u_xlat59 = (x_2659 * x_2660);
    let x_2662 : i32 = u_xlati6;
    let x_2664 : vec4<f32> = x_2612.x_AdditionalLightsSpotDir[x_2662];
    let x_2666 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2664.x, x_2664.y, x_2664.z), vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
    let x_2669 : f32 = u_xlat86;
    let x_2670 : i32 = u_xlati6;
    let x_2672 : f32 = x_2612.x_AdditionalLightsAttenuation[x_2670].z;
    let x_2674 : i32 = u_xlati6;
    let x_2676 : f32 = x_2612.x_AdditionalLightsAttenuation[x_2674].w;
    u_xlat86 = ((x_2669 * x_2672) + x_2676);
    let x_2678 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2678, 0.0f, 1.0f);
    let x_2680 : f32 = u_xlat86;
    let x_2681 : f32 = u_xlat86;
    u_xlat86 = (x_2680 * x_2681);
    let x_2683 : f32 = u_xlat59;
    let x_2684 : f32 = u_xlat86;
    u_xlat59 = (x_2683 * x_2684);
    let x_2687 : i32 = u_xlati6;
    let x_2689 : f32 = x_792.x_AdditionalShadowParams[x_2687].w;
    u_xlati86 = i32(x_2689);
    let x_2692 : i32 = u_xlati86;
    u_xlatb87 = (x_2692 >= 0i);
    let x_2694 : bool = u_xlatb87;
    if (x_2694) {
      let x_2698 : i32 = u_xlati6;
      let x_2700 : f32 = x_792.x_AdditionalShadowParams[x_2698].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2700, x_2700, x_2700, x_2700))));
      let x_2704 : bool = u_xlatb87;
      if (x_2704) {
        let x_2709 : vec4<f32> = u_xlat10;
        let x_2712 : vec4<f32> = u_xlat10;
        let x_2715 : vec4<bool> = (abs(vec4<f32>(x_2709.z, x_2709.z, x_2709.y, x_2709.z)) >= abs(vec4<f32>(x_2712.x, x_2712.y, x_2712.x, x_2712.x)));
        let x_2717 : vec3<bool> = vec3<bool>(x_2715.x, x_2715.y, x_2715.z);
        let x_2718 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2717.x, x_2717.y, x_2717.z, x_2718.w);
        let x_2721 : bool = u_xlatb11.y;
        let x_2723 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2721 & x_2723);
        let x_2725 : vec4<f32> = u_xlat10;
        let x_2728 : vec4<bool> = (-(vec4<f32>(x_2725.z, x_2725.y, x_2725.z, x_2725.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2729 : vec3<bool> = vec3<bool>(x_2728.x, x_2728.y, x_2728.w);
        let x_2730 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2729.x, x_2729.y, x_2730.z, x_2729.z);
        let x_2733 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2733);
        let x_2738 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2738);
        let x_2744 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2744);
        let x_2747 : bool = u_xlatb11.z;
        if (x_2747) {
          let x_2752 : f32 = u_xlat11.y;
          x_2748 = x_2752;
        } else {
          let x_2754 : f32 = u_xlat88;
          x_2748 = x_2754;
        }
        let x_2755 : f32 = x_2748;
        u_xlat88 = x_2755;
        let x_2757 : bool = u_xlatb87;
        if (x_2757) {
          let x_2762 : f32 = u_xlat11.x;
          x_2758 = x_2762;
        } else {
          let x_2764 : f32 = u_xlat88;
          x_2758 = x_2764;
        }
        let x_2765 : f32 = x_2758;
        u_xlat87 = x_2765;
        let x_2766 : i32 = u_xlati6;
        let x_2768 : f32 = x_792.x_AdditionalShadowParams[x_2766].w;
        u_xlat88 = trunc(x_2768);
        let x_2770 : f32 = u_xlat87;
        let x_2771 : f32 = u_xlat88;
        u_xlat87 = (x_2770 + x_2771);
        let x_2773 : f32 = u_xlat87;
        u_xlati86 = i32(x_2773);
      }
      let x_2775 : i32 = u_xlati86;
      u_xlati86 = (x_2775 << bitcast<u32>(2i));
      let x_2777 : vec3<f32> = vs_TEXCOORD7;
      let x_2779 : i32 = u_xlati86;
      let x_2782 : i32 = u_xlati86;
      let x_2786 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[((x_2779 + 1i) / 4i)][((x_2782 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2777.y, x_2777.y, x_2777.y, x_2777.y) * x_2786);
      let x_2788 : i32 = u_xlati86;
      let x_2790 : i32 = u_xlati86;
      let x_2793 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[(x_2788 / 4i)][(x_2790 % 4i)];
      let x_2794 : vec3<f32> = vs_TEXCOORD7;
      let x_2797 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2793 * vec4<f32>(x_2794.x, x_2794.x, x_2794.x, x_2794.x)) + x_2797);
      let x_2799 : i32 = u_xlati86;
      let x_2802 : i32 = u_xlati86;
      let x_2806 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[((x_2799 + 2i) / 4i)][((x_2802 + 2i) % 4i)];
      let x_2807 : vec3<f32> = vs_TEXCOORD7;
      let x_2810 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2806 * vec4<f32>(x_2807.z, x_2807.z, x_2807.z, x_2807.z)) + x_2810);
      let x_2812 : vec4<f32> = u_xlat11;
      let x_2813 : i32 = u_xlati86;
      let x_2816 : i32 = u_xlati86;
      let x_2820 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[((x_2813 + 3i) / 4i)][((x_2816 + 3i) % 4i)];
      u_xlat11 = (x_2812 + x_2820);
      let x_2822 : vec4<f32> = u_xlat11;
      let x_2824 : vec4<f32> = u_xlat11;
      let x_2826 : vec3<f32> = (vec3<f32>(x_2822.x, x_2822.y, x_2822.z) / vec3<f32>(x_2824.w, x_2824.w, x_2824.w));
      let x_2827 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2826.x, x_2826.y, x_2826.z, x_2827.w);
      let x_2830 : i32 = u_xlati6;
      let x_2832 : f32 = x_792.x_AdditionalShadowParams[x_2830].y;
      u_xlatb86 = (0.0f < x_2832);
      let x_2834 : bool = u_xlatb86;
      if (x_2834) {
        let x_2837 : i32 = u_xlati6;
        let x_2839 : f32 = x_792.x_AdditionalShadowParams[x_2837].y;
        u_xlatb86 = (1.0f == x_2839);
        let x_2841 : bool = u_xlatb86;
        if (x_2841) {
          let x_2844 : vec4<f32> = u_xlat11;
          let x_2847 : vec4<f32> = x_792.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y) + x_2847);
          let x_2850 : vec4<f32> = u_xlat12;
          let x_2851 : vec2<f32> = vec2<f32>(x_2850.x, x_2850.y);
          let x_2853 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2851.x, x_2851.y, x_2853);
          let x_2861 : vec3<f32> = txVec30;
          let x_2863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
          u_xlat13.x = x_2863;
          let x_2866 : vec4<f32> = u_xlat12;
          let x_2867 : vec2<f32> = vec2<f32>(x_2866.z, x_2866.w);
          let x_2869 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
          let x_2876 : vec3<f32> = txVec31;
          let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
          u_xlat13.y = x_2878;
          let x_2880 : vec4<f32> = u_xlat11;
          let x_2883 : vec4<f32> = x_792.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y) + x_2883);
          let x_2886 : vec4<f32> = u_xlat12;
          let x_2887 : vec2<f32> = vec2<f32>(x_2886.x, x_2886.y);
          let x_2889 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2887.x, x_2887.y, x_2889);
          let x_2896 : vec3<f32> = txVec32;
          let x_2898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2896.xy, x_2896.z);
          u_xlat13.z = x_2898;
          let x_2901 : vec4<f32> = u_xlat12;
          let x_2902 : vec2<f32> = vec2<f32>(x_2901.z, x_2901.w);
          let x_2904 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2902.x, x_2902.y, x_2904);
          let x_2911 : vec3<f32> = txVec33;
          let x_2913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2911.xy, x_2911.z);
          u_xlat13.w = x_2913;
          let x_2915 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2915, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2918 : i32 = u_xlati6;
          let x_2920 : f32 = x_792.x_AdditionalShadowParams[x_2918].y;
          u_xlatb87 = (2.0f == x_2920);
          let x_2922 : bool = u_xlatb87;
          if (x_2922) {
            let x_2925 : vec4<f32> = u_xlat11;
            let x_2928 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2931 : vec2<f32> = ((vec2<f32>(x_2925.x, x_2925.y) * vec2<f32>(x_2928.z, x_2928.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2932 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2931.x, x_2931.y, x_2932.z, x_2932.w);
            let x_2934 : vec4<f32> = u_xlat12;
            let x_2936 : vec2<f32> = floor(vec2<f32>(x_2934.x, x_2934.y));
            let x_2937 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2940 : vec4<f32> = u_xlat11;
            let x_2943 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2940.x, x_2940.y) * vec2<f32>(x_2943.z, x_2943.w)) + -(vec2<f32>(x_2946.x, x_2946.y)));
            let x_2950 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2950.x, x_2950.x, x_2950.y, x_2950.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2953 : vec4<f32> = u_xlat13;
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2953.x, x_2953.x, x_2953.z, x_2953.z) * vec4<f32>(x_2955.x, x_2955.x, x_2955.z, x_2955.z));
            let x_2958 : vec4<f32> = u_xlat14;
            let x_2960 : vec2<f32> = (vec2<f32>(x_2958.y, x_2958.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2961 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2960.x, x_2961.y, x_2960.y, x_2961.w);
            let x_2963 : vec4<f32> = u_xlat14;
            let x_2966 : vec2<f32> = u_xlat64;
            let x_2968 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2966));
            let x_2969 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2968.x, x_2968.y, x_2969.z, x_2969.w);
            let x_2971 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2971) + vec2<f32>(1.0f, 1.0f));
            let x_2974 : vec2<f32> = u_xlat64;
            let x_2975 : vec2<f32> = min(x_2974, vec2<f32>(0.0f, 0.0f));
            let x_2976 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
            let x_2978 : vec4<f32> = u_xlat15;
            let x_2981 : vec4<f32> = u_xlat15;
            let x_2984 : vec2<f32> = u_xlat66;
            let x_2985 : vec2<f32> = ((-(vec2<f32>(x_2978.x, x_2978.y)) * vec2<f32>(x_2981.x, x_2981.y)) + x_2984);
            let x_2986 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
            let x_2988 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2988, vec2<f32>(0.0f, 0.0f));
            let x_2990 : vec2<f32> = u_xlat64;
            let x_2992 : vec2<f32> = u_xlat64;
            let x_2994 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2990) * x_2992) + vec2<f32>(x_2994.y, x_2994.w));
            let x_2997 : vec4<f32> = u_xlat15;
            let x_2999 : vec2<f32> = (vec2<f32>(x_2997.x, x_2997.y) + vec2<f32>(1.0f, 1.0f));
            let x_3000 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2999.x, x_2999.y, x_3000.z, x_3000.w);
            let x_3002 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3002 + vec2<f32>(1.0f, 1.0f));
            let x_3004 : vec4<f32> = u_xlat14;
            let x_3006 : vec2<f32> = (vec2<f32>(x_3004.x, x_3004.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3007 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3006.x, x_3006.y, x_3007.z, x_3007.w);
            let x_3009 : vec2<f32> = u_xlat66;
            let x_3010 : vec2<f32> = (x_3009 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3011 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3010.x, x_3010.y, x_3011.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat15;
            let x_3015 : vec2<f32> = (vec2<f32>(x_3013.x, x_3013.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3016 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3015.x, x_3015.y, x_3016.z, x_3016.w);
            let x_3018 : vec2<f32> = u_xlat64;
            let x_3019 : vec2<f32> = (x_3018 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3020 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3019.x, x_3019.y, x_3020.z, x_3020.w);
            let x_3022 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3022.y, x_3022.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3026 : f32 = u_xlat15.x;
            u_xlat16.z = x_3026;
            let x_3029 : f32 = u_xlat64.x;
            u_xlat16.w = x_3029;
            let x_3032 : f32 = u_xlat17.x;
            u_xlat14.z = x_3032;
            let x_3035 : f32 = u_xlat13.x;
            u_xlat14.w = x_3035;
            let x_3037 : vec4<f32> = u_xlat14;
            let x_3039 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3037.z, x_3037.w, x_3037.x, x_3037.z) + vec4<f32>(x_3039.z, x_3039.w, x_3039.x, x_3039.z));
            let x_3043 : f32 = u_xlat16.y;
            u_xlat15.z = x_3043;
            let x_3046 : f32 = u_xlat64.y;
            u_xlat15.w = x_3046;
            let x_3049 : f32 = u_xlat14.y;
            u_xlat17.z = x_3049;
            let x_3052 : f32 = u_xlat13.z;
            u_xlat17.w = x_3052;
            let x_3054 : vec4<f32> = u_xlat15;
            let x_3056 : vec4<f32> = u_xlat17;
            let x_3058 : vec3<f32> = (vec3<f32>(x_3054.z, x_3054.y, x_3054.w) + vec3<f32>(x_3056.z, x_3056.y, x_3056.w));
            let x_3059 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);
            let x_3061 : vec4<f32> = u_xlat14;
            let x_3063 : vec4<f32> = u_xlat18;
            let x_3065 : vec3<f32> = (vec3<f32>(x_3061.x, x_3061.z, x_3061.w) / vec3<f32>(x_3063.z, x_3063.w, x_3063.y));
            let x_3066 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3065.x, x_3065.y, x_3065.z, x_3066.w);
            let x_3068 : vec4<f32> = u_xlat14;
            let x_3070 : vec3<f32> = (vec3<f32>(x_3068.x, x_3068.y, x_3068.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3071 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3070.x, x_3070.y, x_3070.z, x_3071.w);
            let x_3073 : vec4<f32> = u_xlat17;
            let x_3075 : vec4<f32> = u_xlat13;
            let x_3077 : vec3<f32> = (vec3<f32>(x_3073.z, x_3073.y, x_3073.w) / vec3<f32>(x_3075.x, x_3075.y, x_3075.z));
            let x_3078 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3078.w);
            let x_3080 : vec4<f32> = u_xlat15;
            let x_3082 : vec3<f32> = (vec3<f32>(x_3080.x, x_3080.y, x_3080.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3083 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3082.x, x_3082.y, x_3082.z, x_3083.w);
            let x_3085 : vec4<f32> = u_xlat14;
            let x_3088 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3090 : vec3<f32> = (vec3<f32>(x_3085.y, x_3085.x, x_3085.z) * vec3<f32>(x_3088.x, x_3088.x, x_3088.x));
            let x_3091 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3090.x, x_3090.y, x_3090.z, x_3091.w);
            let x_3093 : vec4<f32> = u_xlat15;
            let x_3096 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3098 : vec3<f32> = (vec3<f32>(x_3093.x, x_3093.y, x_3093.z) * vec3<f32>(x_3096.y, x_3096.y, x_3096.y));
            let x_3099 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3098.x, x_3098.y, x_3098.z, x_3099.w);
            let x_3102 : f32 = u_xlat15.x;
            u_xlat14.w = x_3102;
            let x_3104 : vec4<f32> = u_xlat12;
            let x_3107 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3110 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3104.x, x_3104.y, x_3104.x, x_3104.y) * vec4<f32>(x_3107.x, x_3107.y, x_3107.x, x_3107.y)) + vec4<f32>(x_3110.y, x_3110.w, x_3110.x, x_3110.w));
            let x_3113 : vec4<f32> = u_xlat12;
            let x_3116 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3119 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3113.x, x_3113.y) * vec2<f32>(x_3116.x, x_3116.y)) + vec2<f32>(x_3119.z, x_3119.w));
            let x_3123 : f32 = u_xlat14.y;
            u_xlat15.w = x_3123;
            let x_3125 : vec4<f32> = u_xlat15;
            let x_3126 : vec2<f32> = vec2<f32>(x_3125.y, x_3125.z);
            let x_3127 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3127.x, x_3126.x, x_3127.z, x_3126.y);
            let x_3129 : vec4<f32> = u_xlat12;
            let x_3132 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3135 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3129.x, x_3129.y, x_3129.x, x_3129.y) * vec4<f32>(x_3132.x, x_3132.y, x_3132.x, x_3132.y)) + vec4<f32>(x_3135.x, x_3135.y, x_3135.z, x_3135.y));
            let x_3138 : vec4<f32> = u_xlat12;
            let x_3141 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3144 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3138.x, x_3138.y, x_3138.x, x_3138.y) * vec4<f32>(x_3141.x, x_3141.y, x_3141.x, x_3141.y)) + vec4<f32>(x_3144.w, x_3144.y, x_3144.w, x_3144.z));
            let x_3147 : vec4<f32> = u_xlat12;
            let x_3150 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3153 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3147.x, x_3147.y, x_3147.x, x_3147.y) * vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.y)) + vec4<f32>(x_3153.x, x_3153.w, x_3153.z, x_3153.w));
            let x_3156 : vec4<f32> = u_xlat13;
            let x_3158 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3156.x, x_3156.x, x_3156.x, x_3156.y) * vec4<f32>(x_3158.z, x_3158.w, x_3158.y, x_3158.z));
            let x_3162 : vec4<f32> = u_xlat13;
            let x_3164 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3162.y, x_3162.y, x_3162.z, x_3162.z) * x_3164);
            let x_3167 : f32 = u_xlat13.z;
            let x_3169 : f32 = u_xlat18.y;
            u_xlat87 = (x_3167 * x_3169);
            let x_3172 : vec4<f32> = u_xlat16;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.x, x_3172.y);
            let x_3175 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec34;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat88 = x_3184;
            let x_3186 : vec4<f32> = u_xlat16;
            let x_3187 : vec2<f32> = vec2<f32>(x_3186.z, x_3186.w);
            let x_3189 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3197 : vec3<f32> = txVec35;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat89 = x_3199;
            let x_3200 : f32 = u_xlat89;
            let x_3202 : f32 = u_xlat19.y;
            u_xlat89 = (x_3200 * x_3202);
            let x_3205 : f32 = u_xlat19.x;
            let x_3206 : f32 = u_xlat88;
            let x_3208 : f32 = u_xlat89;
            u_xlat88 = ((x_3205 * x_3206) + x_3208);
            let x_3211 : vec2<f32> = u_xlat64;
            let x_3213 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
            let x_3220 : vec3<f32> = txVec36;
            let x_3222 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3220.xy, x_3220.z);
            u_xlat89 = x_3222;
            let x_3224 : f32 = u_xlat19.z;
            let x_3225 : f32 = u_xlat89;
            let x_3227 : f32 = u_xlat88;
            u_xlat88 = ((x_3224 * x_3225) + x_3227);
            let x_3230 : vec4<f32> = u_xlat15;
            let x_3231 : vec2<f32> = vec2<f32>(x_3230.x, x_3230.y);
            let x_3233 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec37;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat89 = x_3242;
            let x_3244 : f32 = u_xlat19.w;
            let x_3245 : f32 = u_xlat89;
            let x_3247 : f32 = u_xlat88;
            u_xlat88 = ((x_3244 * x_3245) + x_3247);
            let x_3250 : vec4<f32> = u_xlat17;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.x, x_3250.y);
            let x_3253 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec38;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat89 = x_3262;
            let x_3264 : f32 = u_xlat20.x;
            let x_3265 : f32 = u_xlat89;
            let x_3267 : f32 = u_xlat88;
            u_xlat88 = ((x_3264 * x_3265) + x_3267);
            let x_3270 : vec4<f32> = u_xlat17;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.z, x_3270.w);
            let x_3273 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec39;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat89 = x_3282;
            let x_3284 : f32 = u_xlat20.y;
            let x_3285 : f32 = u_xlat89;
            let x_3287 : f32 = u_xlat88;
            u_xlat88 = ((x_3284 * x_3285) + x_3287);
            let x_3290 : vec4<f32> = u_xlat15;
            let x_3291 : vec2<f32> = vec2<f32>(x_3290.z, x_3290.w);
            let x_3293 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3291.x, x_3291.y, x_3293);
            let x_3300 : vec3<f32> = txVec40;
            let x_3302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3300.xy, x_3300.z);
            u_xlat89 = x_3302;
            let x_3304 : f32 = u_xlat20.z;
            let x_3305 : f32 = u_xlat89;
            let x_3307 : f32 = u_xlat88;
            u_xlat88 = ((x_3304 * x_3305) + x_3307);
            let x_3310 : vec4<f32> = u_xlat14;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.x, x_3310.y);
            let x_3313 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3320 : vec3<f32> = txVec41;
            let x_3322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
            u_xlat89 = x_3322;
            let x_3324 : f32 = u_xlat20.w;
            let x_3325 : f32 = u_xlat89;
            let x_3327 : f32 = u_xlat88;
            u_xlat88 = ((x_3324 * x_3325) + x_3327);
            let x_3330 : vec4<f32> = u_xlat14;
            let x_3331 : vec2<f32> = vec2<f32>(x_3330.z, x_3330.w);
            let x_3333 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3331.x, x_3331.y, x_3333);
            let x_3340 : vec3<f32> = txVec42;
            let x_3342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3340.xy, x_3340.z);
            u_xlat89 = x_3342;
            let x_3343 : f32 = u_xlat87;
            let x_3344 : f32 = u_xlat89;
            let x_3346 : f32 = u_xlat88;
            u_xlat86 = ((x_3343 * x_3344) + x_3346);
          } else {
            let x_3349 : vec4<f32> = u_xlat11;
            let x_3352 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3355 : vec2<f32> = ((vec2<f32>(x_3349.x, x_3349.y) * vec2<f32>(x_3352.z, x_3352.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3356 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3355.x, x_3355.y, x_3356.z, x_3356.w);
            let x_3358 : vec4<f32> = u_xlat12;
            let x_3360 : vec2<f32> = floor(vec2<f32>(x_3358.x, x_3358.y));
            let x_3361 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3360.x, x_3360.y, x_3361.z, x_3361.w);
            let x_3363 : vec4<f32> = u_xlat11;
            let x_3366 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3369 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3363.x, x_3363.y) * vec2<f32>(x_3366.z, x_3366.w)) + -(vec2<f32>(x_3369.x, x_3369.y)));
            let x_3373 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3373.x, x_3373.x, x_3373.y, x_3373.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3376 : vec4<f32> = u_xlat13;
            let x_3378 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3376.x, x_3376.x, x_3376.z, x_3376.z) * vec4<f32>(x_3378.x, x_3378.x, x_3378.z, x_3378.z));
            let x_3381 : vec4<f32> = u_xlat14;
            let x_3383 : vec2<f32> = (vec2<f32>(x_3381.y, x_3381.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3384 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3384.x, x_3383.x, x_3384.z, x_3383.y);
            let x_3386 : vec4<f32> = u_xlat14;
            let x_3389 : vec2<f32> = u_xlat64;
            let x_3391 : vec2<f32> = ((vec2<f32>(x_3386.x, x_3386.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3389));
            let x_3392 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3391.x, x_3392.y, x_3391.y, x_3392.w);
            let x_3394 : vec2<f32> = u_xlat64;
            let x_3396 : vec2<f32> = (-(x_3394) + vec2<f32>(1.0f, 1.0f));
            let x_3397 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3396.x, x_3396.y, x_3397.z, x_3397.w);
            let x_3399 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3399, vec2<f32>(0.0f, 0.0f));
            let x_3401 : vec2<f32> = u_xlat66;
            let x_3403 : vec2<f32> = u_xlat66;
            let x_3405 : vec4<f32> = u_xlat14;
            let x_3407 : vec2<f32> = ((-(x_3401) * x_3403) + vec2<f32>(x_3405.x, x_3405.y));
            let x_3408 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3407.x, x_3407.y, x_3408.z, x_3408.w);
            let x_3410 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3410, vec2<f32>(0.0f, 0.0f));
            let x_3413 : vec2<f32> = u_xlat66;
            let x_3415 : vec2<f32> = u_xlat66;
            let x_3417 : vec4<f32> = u_xlat13;
            let x_3419 : vec2<f32> = ((-(x_3413) * x_3415) + vec2<f32>(x_3417.y, x_3417.w));
            let x_3420 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3419.x, x_3420.y, x_3419.y);
            let x_3422 : vec4<f32> = u_xlat14;
            let x_3424 : vec2<f32> = (vec2<f32>(x_3422.x, x_3422.y) + vec2<f32>(2.0f, 2.0f));
            let x_3425 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3424.x, x_3424.y, x_3425.z, x_3425.w);
            let x_3427 : vec3<f32> = u_xlat39;
            let x_3429 : vec2<f32> = (vec2<f32>(x_3427.x, x_3427.z) + vec2<f32>(2.0f, 2.0f));
            let x_3430 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3430.x, x_3429.x, x_3430.z, x_3429.y);
            let x_3433 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3433 * 0.08163200318813323975f);
            let x_3436 : vec4<f32> = u_xlat13;
            let x_3438 : vec3<f32> = (vec3<f32>(x_3436.z, x_3436.x, x_3436.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3439 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3438.x, x_3438.y, x_3438.z, x_3439.w);
            let x_3441 : vec4<f32> = u_xlat14;
            let x_3443 : vec2<f32> = (vec2<f32>(x_3441.x, x_3441.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3444 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3443.x, x_3443.y, x_3444.z, x_3444.w);
            let x_3447 : f32 = u_xlat17.y;
            u_xlat16.x = x_3447;
            let x_3449 : vec2<f32> = u_xlat64;
            let x_3452 : vec2<f32> = ((vec2<f32>(x_3449.x, x_3449.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3453 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3453.x, x_3452.x, x_3453.z, x_3452.y);
            let x_3455 : vec2<f32> = u_xlat64;
            let x_3458 : vec2<f32> = ((vec2<f32>(x_3455.x, x_3455.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3459 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3458.x, x_3459.y, x_3458.y, x_3459.w);
            let x_3462 : f32 = u_xlat13.x;
            u_xlat14.y = x_3462;
            let x_3465 : f32 = u_xlat15.y;
            u_xlat14.w = x_3465;
            let x_3467 : vec4<f32> = u_xlat14;
            let x_3468 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3467 + x_3468);
            let x_3470 : vec2<f32> = u_xlat64;
            let x_3473 : vec2<f32> = ((vec2<f32>(x_3470.y, x_3470.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3474 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3474.x, x_3473.x, x_3474.z, x_3473.y);
            let x_3476 : vec2<f32> = u_xlat64;
            let x_3479 : vec2<f32> = ((vec2<f32>(x_3476.y, x_3476.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3480 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3479.x, x_3480.y, x_3479.y, x_3480.w);
            let x_3483 : f32 = u_xlat13.y;
            u_xlat15.y = x_3483;
            let x_3485 : vec4<f32> = u_xlat15;
            let x_3486 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3485 + x_3486);
            let x_3488 : vec4<f32> = u_xlat14;
            let x_3489 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3488 / x_3489);
            let x_3491 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3491 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3493 : vec4<f32> = u_xlat15;
            let x_3494 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3493 / x_3494);
            let x_3496 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3496 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3498 : vec4<f32> = u_xlat14;
            let x_3501 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3498.w, x_3498.x, x_3498.y, x_3498.z) * vec4<f32>(x_3501.x, x_3501.x, x_3501.x, x_3501.x));
            let x_3504 : vec4<f32> = u_xlat15;
            let x_3507 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3504.x, x_3504.w, x_3504.y, x_3504.z) * vec4<f32>(x_3507.y, x_3507.y, x_3507.y, x_3507.y));
            let x_3510 : vec4<f32> = u_xlat14;
            let x_3511 : vec3<f32> = vec3<f32>(x_3510.y, x_3510.z, x_3510.w);
            let x_3512 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3511.x, x_3512.y, x_3511.y, x_3511.z);
            let x_3515 : f32 = u_xlat15.x;
            u_xlat17.y = x_3515;
            let x_3517 : vec4<f32> = u_xlat12;
            let x_3520 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3523 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3517.x, x_3517.y, x_3517.x, x_3517.y) * vec4<f32>(x_3520.x, x_3520.y, x_3520.x, x_3520.y)) + vec4<f32>(x_3523.x, x_3523.y, x_3523.z, x_3523.y));
            let x_3526 : vec4<f32> = u_xlat12;
            let x_3529 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3532 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3526.x, x_3526.y) * vec2<f32>(x_3529.x, x_3529.y)) + vec2<f32>(x_3532.w, x_3532.y));
            let x_3536 : f32 = u_xlat17.y;
            u_xlat14.y = x_3536;
            let x_3539 : f32 = u_xlat15.z;
            u_xlat17.y = x_3539;
            let x_3541 : vec4<f32> = u_xlat12;
            let x_3544 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3547 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3541.x, x_3541.y, x_3541.x, x_3541.y) * vec4<f32>(x_3544.x, x_3544.y, x_3544.x, x_3544.y)) + vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3547.y));
            let x_3550 : vec4<f32> = u_xlat12;
            let x_3553 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3556 : vec4<f32> = u_xlat17;
            let x_3558 : vec2<f32> = ((vec2<f32>(x_3550.x, x_3550.y) * vec2<f32>(x_3553.x, x_3553.y)) + vec2<f32>(x_3556.w, x_3556.y));
            let x_3559 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3558.x, x_3558.y, x_3559.z, x_3559.w);
            let x_3562 : f32 = u_xlat17.y;
            u_xlat14.z = x_3562;
            let x_3565 : vec4<f32> = u_xlat12;
            let x_3568 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3571 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3565.x, x_3565.y, x_3565.x, x_3565.y) * vec4<f32>(x_3568.x, x_3568.y, x_3568.x, x_3568.y)) + vec4<f32>(x_3571.x, x_3571.y, x_3571.x, x_3571.z));
            let x_3575 : f32 = u_xlat15.w;
            u_xlat17.y = x_3575;
            let x_3578 : vec4<f32> = u_xlat12;
            let x_3581 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3584 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3578.x, x_3578.y, x_3578.x, x_3578.y) * vec4<f32>(x_3581.x, x_3581.y, x_3581.x, x_3581.y)) + vec4<f32>(x_3584.x, x_3584.y, x_3584.z, x_3584.y));
            let x_3588 : vec4<f32> = u_xlat12;
            let x_3591 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3594 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3588.x, x_3588.y) * vec2<f32>(x_3591.x, x_3591.y)) + vec2<f32>(x_3594.w, x_3594.y));
            let x_3598 : f32 = u_xlat17.y;
            u_xlat14.w = x_3598;
            let x_3601 : vec4<f32> = u_xlat12;
            let x_3604 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3607 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3601.x, x_3601.y) * vec2<f32>(x_3604.x, x_3604.y)) + vec2<f32>(x_3607.x, x_3607.w));
            let x_3610 : vec4<f32> = u_xlat17;
            let x_3611 : vec3<f32> = vec3<f32>(x_3610.x, x_3610.z, x_3610.w);
            let x_3612 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3611.x, x_3612.y, x_3611.y, x_3611.z);
            let x_3614 : vec4<f32> = u_xlat12;
            let x_3617 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3620 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3614.x, x_3614.y, x_3614.x, x_3614.y) * vec4<f32>(x_3617.x, x_3617.y, x_3617.x, x_3617.y)) + vec4<f32>(x_3620.x, x_3620.y, x_3620.z, x_3620.y));
            let x_3624 : vec4<f32> = u_xlat12;
            let x_3627 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3630 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3624.x, x_3624.y) * vec2<f32>(x_3627.x, x_3627.y)) + vec2<f32>(x_3630.w, x_3630.y));
            let x_3634 : f32 = u_xlat14.x;
            u_xlat15.x = x_3634;
            let x_3636 : vec4<f32> = u_xlat12;
            let x_3639 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3642 : vec4<f32> = u_xlat15;
            let x_3644 : vec2<f32> = ((vec2<f32>(x_3636.x, x_3636.y) * vec2<f32>(x_3639.x, x_3639.y)) + vec2<f32>(x_3642.x, x_3642.y));
            let x_3645 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3644.x, x_3644.y, x_3645.z, x_3645.w);
            let x_3648 : vec4<f32> = u_xlat13;
            let x_3650 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3648.x, x_3648.x, x_3648.x, x_3648.x) * x_3650);
            let x_3653 : vec4<f32> = u_xlat13;
            let x_3655 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3653.y, x_3653.y, x_3653.y, x_3653.y) * x_3655);
            let x_3658 : vec4<f32> = u_xlat13;
            let x_3660 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3658.z, x_3658.z, x_3658.z, x_3658.z) * x_3660);
            let x_3662 : vec4<f32> = u_xlat13;
            let x_3664 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3662.w, x_3662.w, x_3662.w, x_3662.w) * x_3664);
            let x_3667 : vec4<f32> = u_xlat18;
            let x_3668 : vec2<f32> = vec2<f32>(x_3667.x, x_3667.y);
            let x_3670 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3668.x, x_3668.y, x_3670);
            let x_3677 : vec3<f32> = txVec43;
            let x_3679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3677.xy, x_3677.z);
            u_xlat87 = x_3679;
            let x_3681 : vec4<f32> = u_xlat18;
            let x_3682 : vec2<f32> = vec2<f32>(x_3681.z, x_3681.w);
            let x_3684 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3682.x, x_3682.y, x_3684);
            let x_3691 : vec3<f32> = txVec44;
            let x_3693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3691.xy, x_3691.z);
            u_xlat88 = x_3693;
            let x_3694 : f32 = u_xlat88;
            let x_3696 : f32 = u_xlat23.y;
            u_xlat88 = (x_3694 * x_3696);
            let x_3699 : f32 = u_xlat23.x;
            let x_3700 : f32 = u_xlat87;
            let x_3702 : f32 = u_xlat88;
            u_xlat87 = ((x_3699 * x_3700) + x_3702);
            let x_3705 : vec2<f32> = u_xlat64;
            let x_3707 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3705.x, x_3705.y, x_3707);
            let x_3714 : vec3<f32> = txVec45;
            let x_3716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3714.xy, x_3714.z);
            u_xlat88 = x_3716;
            let x_3718 : f32 = u_xlat23.z;
            let x_3719 : f32 = u_xlat88;
            let x_3721 : f32 = u_xlat87;
            u_xlat87 = ((x_3718 * x_3719) + x_3721);
            let x_3724 : vec4<f32> = u_xlat21;
            let x_3725 : vec2<f32> = vec2<f32>(x_3724.x, x_3724.y);
            let x_3727 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec46;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat88 = x_3736;
            let x_3738 : f32 = u_xlat23.w;
            let x_3739 : f32 = u_xlat88;
            let x_3741 : f32 = u_xlat87;
            u_xlat87 = ((x_3738 * x_3739) + x_3741);
            let x_3744 : vec4<f32> = u_xlat19;
            let x_3745 : vec2<f32> = vec2<f32>(x_3744.x, x_3744.y);
            let x_3747 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3745.x, x_3745.y, x_3747);
            let x_3754 : vec3<f32> = txVec47;
            let x_3756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3754.xy, x_3754.z);
            u_xlat88 = x_3756;
            let x_3758 : f32 = u_xlat24.x;
            let x_3759 : f32 = u_xlat88;
            let x_3761 : f32 = u_xlat87;
            u_xlat87 = ((x_3758 * x_3759) + x_3761);
            let x_3764 : vec4<f32> = u_xlat19;
            let x_3765 : vec2<f32> = vec2<f32>(x_3764.z, x_3764.w);
            let x_3767 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3765.x, x_3765.y, x_3767);
            let x_3774 : vec3<f32> = txVec48;
            let x_3776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3774.xy, x_3774.z);
            u_xlat88 = x_3776;
            let x_3778 : f32 = u_xlat24.y;
            let x_3779 : f32 = u_xlat88;
            let x_3781 : f32 = u_xlat87;
            u_xlat87 = ((x_3778 * x_3779) + x_3781);
            let x_3784 : vec4<f32> = u_xlat20;
            let x_3785 : vec2<f32> = vec2<f32>(x_3784.x, x_3784.y);
            let x_3787 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3785.x, x_3785.y, x_3787);
            let x_3794 : vec3<f32> = txVec49;
            let x_3796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3794.xy, x_3794.z);
            u_xlat88 = x_3796;
            let x_3798 : f32 = u_xlat24.z;
            let x_3799 : f32 = u_xlat88;
            let x_3801 : f32 = u_xlat87;
            u_xlat87 = ((x_3798 * x_3799) + x_3801);
            let x_3804 : vec4<f32> = u_xlat21;
            let x_3805 : vec2<f32> = vec2<f32>(x_3804.z, x_3804.w);
            let x_3807 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3805.x, x_3805.y, x_3807);
            let x_3814 : vec3<f32> = txVec50;
            let x_3816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3814.xy, x_3814.z);
            u_xlat88 = x_3816;
            let x_3818 : f32 = u_xlat24.w;
            let x_3819 : f32 = u_xlat88;
            let x_3821 : f32 = u_xlat87;
            u_xlat87 = ((x_3818 * x_3819) + x_3821);
            let x_3824 : vec4<f32> = u_xlat22;
            let x_3825 : vec2<f32> = vec2<f32>(x_3824.x, x_3824.y);
            let x_3827 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3825.x, x_3825.y, x_3827);
            let x_3834 : vec3<f32> = txVec51;
            let x_3836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3834.xy, x_3834.z);
            u_xlat88 = x_3836;
            let x_3838 : f32 = u_xlat25.x;
            let x_3839 : f32 = u_xlat88;
            let x_3841 : f32 = u_xlat87;
            u_xlat87 = ((x_3838 * x_3839) + x_3841);
            let x_3844 : vec4<f32> = u_xlat22;
            let x_3845 : vec2<f32> = vec2<f32>(x_3844.z, x_3844.w);
            let x_3847 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3845.x, x_3845.y, x_3847);
            let x_3854 : vec3<f32> = txVec52;
            let x_3856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3854.xy, x_3854.z);
            u_xlat88 = x_3856;
            let x_3858 : f32 = u_xlat25.y;
            let x_3859 : f32 = u_xlat88;
            let x_3861 : f32 = u_xlat87;
            u_xlat87 = ((x_3858 * x_3859) + x_3861);
            let x_3864 : vec2<f32> = u_xlat40;
            let x_3866 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3864.x, x_3864.y, x_3866);
            let x_3873 : vec3<f32> = txVec53;
            let x_3875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3873.xy, x_3873.z);
            u_xlat88 = x_3875;
            let x_3877 : f32 = u_xlat25.z;
            let x_3878 : f32 = u_xlat88;
            let x_3880 : f32 = u_xlat87;
            u_xlat87 = ((x_3877 * x_3878) + x_3880);
            let x_3883 : vec2<f32> = u_xlat72;
            let x_3885 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3883.x, x_3883.y, x_3885);
            let x_3892 : vec3<f32> = txVec54;
            let x_3894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3892.xy, x_3892.z);
            u_xlat88 = x_3894;
            let x_3896 : f32 = u_xlat25.w;
            let x_3897 : f32 = u_xlat88;
            let x_3899 : f32 = u_xlat87;
            u_xlat87 = ((x_3896 * x_3897) + x_3899);
            let x_3902 : vec4<f32> = u_xlat17;
            let x_3903 : vec2<f32> = vec2<f32>(x_3902.x, x_3902.y);
            let x_3905 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3903.x, x_3903.y, x_3905);
            let x_3912 : vec3<f32> = txVec55;
            let x_3914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3912.xy, x_3912.z);
            u_xlat88 = x_3914;
            let x_3916 : f32 = u_xlat13.x;
            let x_3917 : f32 = u_xlat88;
            let x_3919 : f32 = u_xlat87;
            u_xlat87 = ((x_3916 * x_3917) + x_3919);
            let x_3922 : vec4<f32> = u_xlat17;
            let x_3923 : vec2<f32> = vec2<f32>(x_3922.z, x_3922.w);
            let x_3925 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3923.x, x_3923.y, x_3925);
            let x_3932 : vec3<f32> = txVec56;
            let x_3934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3932.xy, x_3932.z);
            u_xlat88 = x_3934;
            let x_3936 : f32 = u_xlat13.y;
            let x_3937 : f32 = u_xlat88;
            let x_3939 : f32 = u_xlat87;
            u_xlat87 = ((x_3936 * x_3937) + x_3939);
            let x_3942 : vec2<f32> = u_xlat67;
            let x_3944 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3942.x, x_3942.y, x_3944);
            let x_3951 : vec3<f32> = txVec57;
            let x_3953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3951.xy, x_3951.z);
            u_xlat88 = x_3953;
            let x_3955 : f32 = u_xlat13.z;
            let x_3956 : f32 = u_xlat88;
            let x_3958 : f32 = u_xlat87;
            u_xlat87 = ((x_3955 * x_3956) + x_3958);
            let x_3961 : vec4<f32> = u_xlat12;
            let x_3962 : vec2<f32> = vec2<f32>(x_3961.x, x_3961.y);
            let x_3964 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3962.x, x_3962.y, x_3964);
            let x_3971 : vec3<f32> = txVec58;
            let x_3973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3971.xy, x_3971.z);
            u_xlat88 = x_3973;
            let x_3975 : f32 = u_xlat13.w;
            let x_3976 : f32 = u_xlat88;
            let x_3978 : f32 = u_xlat87;
            u_xlat86 = ((x_3975 * x_3976) + x_3978);
          }
        }
      } else {
        let x_3982 : vec4<f32> = u_xlat11;
        let x_3983 : vec2<f32> = vec2<f32>(x_3982.x, x_3982.y);
        let x_3985 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3983.x, x_3983.y, x_3985);
        let x_3992 : vec3<f32> = txVec59;
        let x_3994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3992.xy, x_3992.z);
        u_xlat86 = x_3994;
      }
      let x_3995 : i32 = u_xlati6;
      let x_3997 : f32 = x_792.x_AdditionalShadowParams[x_3995].x;
      u_xlat87 = (1.0f + -(x_3997));
      let x_4000 : f32 = u_xlat86;
      let x_4001 : i32 = u_xlati6;
      let x_4003 : f32 = x_792.x_AdditionalShadowParams[x_4001].x;
      let x_4005 : f32 = u_xlat87;
      u_xlat86 = ((x_4000 * x_4003) + x_4005);
      let x_4008 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4008);
      let x_4012 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4012 >= 1.0f);
      let x_4014 : bool = u_xlatb87;
      let x_4015 : bool = u_xlatb88;
      u_xlatb87 = (x_4014 | x_4015);
      let x_4017 : bool = u_xlatb87;
      let x_4018 : f32 = u_xlat86;
      u_xlat86 = select(x_4018, 1.0f, x_4017);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4021 : f32 = u_xlat86;
    u_xlat87 = (-(x_4021) + 1.0f);
    let x_4024 : f32 = u_xlat81;
    let x_4025 : f32 = u_xlat87;
    let x_4027 : f32 = u_xlat86;
    u_xlat86 = ((x_4024 * x_4025) + x_4027);
    let x_4030 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_4030 & 31i)));
    let x_4033 : i32 = u_xlati87;
    let x_4036 : f32 = x_2135.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4033) & bitcast<u32>(x_4036)));
    let x_4040 : i32 = u_xlati87;
    if ((x_4040 != 0i)) {
      let x_4044 : i32 = u_xlati6;
      let x_4046 : f32 = x_2135.x_AdditionalLightsLightTypes[x_4044].el;
      u_xlati87 = i32(x_4046);
      let x_4049 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4049 != 0i));
      let x_4053 : i32 = u_xlati6;
      u_xlati11 = (x_4053 << bitcast<u32>(2i));
      let x_4055 : i32 = u_xlati88;
      if ((x_4055 != 0i)) {
        let x_4060 : vec3<f32> = vs_TEXCOORD7;
        let x_4062 : i32 = u_xlati11;
        let x_4065 : i32 = u_xlati11;
        let x_4069 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4062 + 1i) / 4i)][((x_4065 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4060.y, x_4060.y, x_4060.y) * vec3<f32>(x_4069.x, x_4069.y, x_4069.w));
        let x_4072 : i32 = u_xlati11;
        let x_4074 : i32 = u_xlati11;
        let x_4077 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[(x_4072 / 4i)][(x_4074 % 4i)];
        let x_4079 : vec3<f32> = vs_TEXCOORD7;
        let x_4082 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4077.x, x_4077.y, x_4077.w) * vec3<f32>(x_4079.x, x_4079.x, x_4079.x)) + x_4082);
        let x_4084 : i32 = u_xlati11;
        let x_4087 : i32 = u_xlati11;
        let x_4091 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4084 + 2i) / 4i)][((x_4087 + 2i) % 4i)];
        let x_4093 : vec3<f32> = vs_TEXCOORD7;
        let x_4096 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4091.x, x_4091.y, x_4091.w) * vec3<f32>(x_4093.z, x_4093.z, x_4093.z)) + x_4096);
        let x_4098 : vec3<f32> = u_xlat37;
        let x_4099 : i32 = u_xlati11;
        let x_4102 : i32 = u_xlati11;
        let x_4106 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4099 + 3i) / 4i)][((x_4102 + 3i) % 4i)];
        u_xlat37 = (x_4098 + vec3<f32>(x_4106.x, x_4106.y, x_4106.w));
        let x_4109 : vec3<f32> = u_xlat37;
        let x_4111 : vec3<f32> = u_xlat37;
        let x_4113 : vec2<f32> = (vec2<f32>(x_4109.x, x_4109.y) / vec2<f32>(x_4111.z, x_4111.z));
        let x_4114 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4113.x, x_4113.y, x_4114.z);
        let x_4116 : vec3<f32> = u_xlat37;
        let x_4119 : vec2<f32> = ((vec2<f32>(x_4116.x, x_4116.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4120 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4119.x, x_4119.y, x_4120.z);
        let x_4122 : vec3<f32> = u_xlat37;
        let x_4126 : vec2<f32> = clamp(vec2<f32>(x_4122.x, x_4122.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4127 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4126.x, x_4126.y, x_4127.z);
        let x_4129 : i32 = u_xlati6;
        let x_4131 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[x_4129];
        let x_4133 : vec3<f32> = u_xlat37;
        let x_4136 : i32 = u_xlati6;
        let x_4138 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[x_4136];
        let x_4140 : vec2<f32> = ((vec2<f32>(x_4131.x, x_4131.y) * vec2<f32>(x_4133.x, x_4133.y)) + vec2<f32>(x_4138.z, x_4138.w));
        let x_4141 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4140.x, x_4140.y, x_4141.z);
      } else {
        let x_4144 : i32 = u_xlati87;
        u_xlatb87 = (x_4144 == 1i);
        let x_4146 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4146);
        let x_4148 : i32 = u_xlati87;
        if ((x_4148 != 0i)) {
          let x_4152 : vec3<f32> = vs_TEXCOORD7;
          let x_4154 : i32 = u_xlati11;
          let x_4157 : i32 = u_xlati11;
          let x_4161 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4154 + 1i) / 4i)][((x_4157 + 1i) % 4i)];
          let x_4163 : vec2<f32> = (vec2<f32>(x_4152.y, x_4152.y) * vec2<f32>(x_4161.x, x_4161.y));
          let x_4164 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4163.x, x_4163.y, x_4164.z, x_4164.w);
          let x_4166 : i32 = u_xlati11;
          let x_4168 : i32 = u_xlati11;
          let x_4171 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[(x_4166 / 4i)][(x_4168 % 4i)];
          let x_4173 : vec3<f32> = vs_TEXCOORD7;
          let x_4176 : vec4<f32> = u_xlat12;
          let x_4178 : vec2<f32> = ((vec2<f32>(x_4171.x, x_4171.y) * vec2<f32>(x_4173.x, x_4173.x)) + vec2<f32>(x_4176.x, x_4176.y));
          let x_4179 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4178.x, x_4178.y, x_4179.z, x_4179.w);
          let x_4181 : i32 = u_xlati11;
          let x_4184 : i32 = u_xlati11;
          let x_4188 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4181 + 2i) / 4i)][((x_4184 + 2i) % 4i)];
          let x_4190 : vec3<f32> = vs_TEXCOORD7;
          let x_4193 : vec4<f32> = u_xlat12;
          let x_4195 : vec2<f32> = ((vec2<f32>(x_4188.x, x_4188.y) * vec2<f32>(x_4190.z, x_4190.z)) + vec2<f32>(x_4193.x, x_4193.y));
          let x_4196 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4195.x, x_4195.y, x_4196.z, x_4196.w);
          let x_4198 : vec4<f32> = u_xlat12;
          let x_4200 : i32 = u_xlati11;
          let x_4203 : i32 = u_xlati11;
          let x_4207 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4200 + 3i) / 4i)][((x_4203 + 3i) % 4i)];
          let x_4209 : vec2<f32> = (vec2<f32>(x_4198.x, x_4198.y) + vec2<f32>(x_4207.x, x_4207.y));
          let x_4210 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4209.x, x_4209.y, x_4210.z, x_4210.w);
          let x_4212 : vec4<f32> = u_xlat12;
          let x_4215 : vec2<f32> = ((vec2<f32>(x_4212.x, x_4212.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4216 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4215.x, x_4215.y, x_4216.z, x_4216.w);
          let x_4218 : vec4<f32> = u_xlat12;
          let x_4220 : vec2<f32> = fract(vec2<f32>(x_4218.x, x_4218.y));
          let x_4221 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4220.x, x_4220.y, x_4221.z, x_4221.w);
          let x_4223 : i32 = u_xlati6;
          let x_4225 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[x_4223];
          let x_4227 : vec4<f32> = u_xlat12;
          let x_4230 : i32 = u_xlati6;
          let x_4232 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[x_4230];
          let x_4234 : vec2<f32> = ((vec2<f32>(x_4225.x, x_4225.y) * vec2<f32>(x_4227.x, x_4227.y)) + vec2<f32>(x_4232.z, x_4232.w));
          let x_4235 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4234.x, x_4234.y, x_4235.z);
        } else {
          let x_4238 : vec3<f32> = vs_TEXCOORD7;
          let x_4240 : i32 = u_xlati11;
          let x_4243 : i32 = u_xlati11;
          let x_4247 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4240 + 1i) / 4i)][((x_4243 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4238.y, x_4238.y, x_4238.y, x_4238.y) * x_4247);
          let x_4249 : i32 = u_xlati11;
          let x_4251 : i32 = u_xlati11;
          let x_4254 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[(x_4249 / 4i)][(x_4251 % 4i)];
          let x_4255 : vec3<f32> = vs_TEXCOORD7;
          let x_4258 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4254 * vec4<f32>(x_4255.x, x_4255.x, x_4255.x, x_4255.x)) + x_4258);
          let x_4260 : i32 = u_xlati11;
          let x_4263 : i32 = u_xlati11;
          let x_4267 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4260 + 2i) / 4i)][((x_4263 + 2i) % 4i)];
          let x_4268 : vec3<f32> = vs_TEXCOORD7;
          let x_4271 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4267 * vec4<f32>(x_4268.z, x_4268.z, x_4268.z, x_4268.z)) + x_4271);
          let x_4273 : vec4<f32> = u_xlat12;
          let x_4274 : i32 = u_xlati11;
          let x_4277 : i32 = u_xlati11;
          let x_4281 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_4274 + 3i) / 4i)][((x_4277 + 3i) % 4i)];
          u_xlat12 = (x_4273 + x_4281);
          let x_4283 : vec4<f32> = u_xlat12;
          let x_4285 : vec4<f32> = u_xlat12;
          let x_4287 : vec3<f32> = (vec3<f32>(x_4283.x, x_4283.y, x_4283.z) / vec3<f32>(x_4285.w, x_4285.w, x_4285.w));
          let x_4288 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4287.x, x_4287.y, x_4287.z, x_4288.w);
          let x_4290 : vec4<f32> = u_xlat12;
          let x_4292 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4290.x, x_4290.y, x_4290.z), vec3<f32>(x_4292.x, x_4292.y, x_4292.z));
          let x_4295 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4295);
          let x_4297 : f32 = u_xlat87;
          let x_4299 : vec4<f32> = u_xlat12;
          let x_4301 : vec3<f32> = (vec3<f32>(x_4297, x_4297, x_4297) * vec3<f32>(x_4299.x, x_4299.y, x_4299.z));
          let x_4302 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4301.x, x_4301.y, x_4301.z, x_4302.w);
          let x_4304 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4304.x, x_4304.y, x_4304.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4309 : f32 = u_xlat87;
          u_xlat87 = max(x_4309, 0.00000099999999747524f);
          let x_4312 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4312);
          let x_4314 : f32 = u_xlat87;
          let x_4316 : vec4<f32> = u_xlat12;
          let x_4318 : vec3<f32> = (vec3<f32>(x_4314, x_4314, x_4314) * vec3<f32>(x_4316.z, x_4316.x, x_4316.y));
          let x_4319 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4318.x, x_4318.y, x_4318.z, x_4319.w);
          let x_4322 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4322);
          let x_4326 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4326, 0.0f, 1.0f);
          let x_4329 : vec4<f32> = u_xlat13;
          let x_4331 : vec4<bool> = (vec4<f32>(x_4329.y, x_4329.y, x_4329.y, x_4329.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4332 : vec2<bool> = vec2<bool>(x_4331.x, x_4331.w);
          let x_4333 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4332.x, x_4333.y, x_4333.z, x_4332.y);
          let x_4336 : bool = u_xlatb11.x;
          if (x_4336) {
            let x_4341 : f32 = u_xlat13.x;
            x_4337 = x_4341;
          } else {
            let x_4344 : f32 = u_xlat13.x;
            x_4337 = -(x_4344);
          }
          let x_4346 : f32 = x_4337;
          u_xlat11.x = x_4346;
          let x_4349 : bool = u_xlatb11.w;
          if (x_4349) {
            let x_4354 : f32 = u_xlat13.x;
            x_4350 = x_4354;
          } else {
            let x_4357 : f32 = u_xlat13.x;
            x_4350 = -(x_4357);
          }
          let x_4359 : f32 = x_4350;
          u_xlat11.w = x_4359;
          let x_4361 : vec4<f32> = u_xlat12;
          let x_4363 : f32 = u_xlat87;
          let x_4366 : vec4<f32> = u_xlat11;
          let x_4368 : vec2<f32> = ((vec2<f32>(x_4361.x, x_4361.y) * vec2<f32>(x_4363, x_4363)) + vec2<f32>(x_4366.x, x_4366.w));
          let x_4369 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4368.x, x_4369.y, x_4369.z, x_4368.y);
          let x_4371 : vec4<f32> = u_xlat11;
          let x_4374 : vec2<f32> = ((vec2<f32>(x_4371.x, x_4371.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4375 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4374.x, x_4375.y, x_4375.z, x_4374.y);
          let x_4377 : vec4<f32> = u_xlat11;
          let x_4381 : vec2<f32> = clamp(vec2<f32>(x_4377.x, x_4377.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4382 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4381.x, x_4382.y, x_4382.z, x_4381.y);
          let x_4384 : i32 = u_xlati6;
          let x_4386 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[x_4384];
          let x_4388 : vec4<f32> = u_xlat11;
          let x_4391 : i32 = u_xlati6;
          let x_4393 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[x_4391];
          let x_4395 : vec2<f32> = ((vec2<f32>(x_4386.x, x_4386.y) * vec2<f32>(x_4388.x, x_4388.w)) + vec2<f32>(x_4393.z, x_4393.w));
          let x_4396 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4395.x, x_4395.y, x_4396.z);
        }
      }
      let x_4403 : vec3<f32> = u_xlat37;
      let x_4405 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4403.x, x_4403.y), 0.0f);
      u_xlat11 = x_4405;
      let x_4407 : bool = u_xlatb7.y;
      if (x_4407) {
        let x_4412 : f32 = u_xlat11.w;
        x_4408 = x_4412;
      } else {
        let x_4415 : f32 = u_xlat11.x;
        x_4408 = x_4415;
      }
      let x_4416 : f32 = x_4408;
      u_xlat87 = x_4416;
      let x_4418 : bool = u_xlatb7.x;
      if (x_4418) {
        let x_4422 : vec4<f32> = u_xlat11;
        x_4419 = vec3<f32>(x_4422.x, x_4422.y, x_4422.z);
      } else {
        let x_4425 : f32 = u_xlat87;
        x_4419 = vec3<f32>(x_4425, x_4425, x_4425);
      }
      let x_4427 : vec3<f32> = x_4419;
      let x_4428 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4427.x, x_4427.y, x_4427.z, x_4428.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4434 : vec4<f32> = u_xlat11;
    let x_4436 : i32 = u_xlati6;
    let x_4438 : vec4<f32> = x_2612.x_AdditionalLightsColor[x_4436];
    let x_4440 : vec3<f32> = (vec3<f32>(x_4434.x, x_4434.y, x_4434.z) * vec3<f32>(x_4438.x, x_4438.y, x_4438.z));
    let x_4441 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4440.x, x_4440.y, x_4440.z, x_4441.w);
    let x_4443 : f32 = u_xlat59;
    let x_4444 : f32 = u_xlat86;
    u_xlat6.x = (x_4443 * x_4444);
    let x_4447 : vec4<f32> = u_xlat2;
    let x_4449 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_4447.x, x_4447.y, x_4447.z), vec3<f32>(x_4449.x, x_4449.y, x_4449.z));
    let x_4452 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4452, 0.0f, 1.0f);
    let x_4455 : f32 = u_xlat6.x;
    let x_4456 : f32 = u_xlat59;
    u_xlat6.x = (x_4455 * x_4456);
    let x_4459 : vec4<f32> = u_xlat6;
    let x_4461 : vec4<f32> = u_xlat11;
    let x_4463 : vec3<f32> = (vec3<f32>(x_4459.x, x_4459.x, x_4459.x) * vec3<f32>(x_4461.x, x_4461.y, x_4461.z));
    let x_4464 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4463.x, x_4463.y, x_4463.z, x_4464.w);
    let x_4466 : vec4<f32> = u_xlat9;
    let x_4468 : f32 = u_xlat85;
    let x_4471 : vec4<f32> = u_xlat1;
    let x_4473 : vec3<f32> = ((vec3<f32>(x_4466.x, x_4466.y, x_4466.z) * vec3<f32>(x_4468, x_4468, x_4468)) + vec3<f32>(x_4471.x, x_4471.y, x_4471.z));
    let x_4474 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4473.x, x_4473.y, x_4473.z, x_4474.w);
    let x_4476 : vec4<f32> = u_xlat9;
    let x_4478 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4476.x, x_4476.y, x_4476.z), vec3<f32>(x_4478.x, x_4478.y, x_4478.z));
    let x_4483 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4483, 1.17549435e-38f);
    let x_4487 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4487);
    let x_4490 : vec4<f32> = u_xlat6;
    let x_4492 : vec4<f32> = u_xlat9;
    let x_4494 : vec3<f32> = (vec3<f32>(x_4490.x, x_4490.x, x_4490.x) * vec3<f32>(x_4492.x, x_4492.y, x_4492.z));
    let x_4495 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4494.x, x_4494.y, x_4494.z, x_4495.w);
    let x_4497 : vec4<f32> = u_xlat2;
    let x_4499 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4497.x, x_4497.y, x_4497.z), vec3<f32>(x_4499.x, x_4499.y, x_4499.z));
    let x_4504 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4504, 0.0f, 1.0f);
    let x_4507 : vec4<f32> = u_xlat10;
    let x_4509 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4507.x, x_4507.y, x_4507.z), vec3<f32>(x_4509.x, x_4509.y, x_4509.z));
    let x_4512 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4512, 0.0f, 1.0f);
    let x_4515 : f32 = u_xlat6.x;
    let x_4517 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4515 * x_4517);
    let x_4521 : f32 = u_xlat6.x;
    let x_4523 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4521 * x_4523) + 1.00001001358032226562f);
    let x_4527 : f32 = u_xlat59;
    let x_4528 : f32 = u_xlat59;
    u_xlat59 = (x_4527 * x_4528);
    let x_4531 : f32 = u_xlat6.x;
    let x_4533 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4531 * x_4533);
    let x_4536 : f32 = u_xlat59;
    u_xlat59 = max(x_4536, 0.10000000149011611938f);
    let x_4539 : f32 = u_xlat6.x;
    let x_4540 : f32 = u_xlat59;
    u_xlat6.x = (x_4539 * x_4540);
    let x_4543 : f32 = u_xlat82;
    let x_4545 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4543 * x_4545);
    let x_4548 : f32 = u_xlat80;
    let x_4550 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4548 / x_4550);
    let x_4553 : vec4<f32> = u_xlat5;
    let x_4555 : vec4<f32> = u_xlat6;
    let x_4558 : vec4<f32> = u_xlat4;
    let x_4560 : vec3<f32> = ((vec3<f32>(x_4553.x, x_4553.y, x_4553.z) * vec3<f32>(x_4555.x, x_4555.x, x_4555.x)) + vec3<f32>(x_4558.x, x_4558.y, x_4558.z));
    let x_4561 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4560.x, x_4560.y, x_4560.z, x_4561.w);
    let x_4563 : vec4<f32> = u_xlat9;
    let x_4565 : vec4<f32> = u_xlat11;
    let x_4568 : vec4<f32> = u_xlat8;
    let x_4570 : vec3<f32> = ((vec3<f32>(x_4563.x, x_4563.y, x_4563.z) * vec3<f32>(x_4565.x, x_4565.y, x_4565.z)) + vec3<f32>(x_4568.x, x_4568.y, x_4568.z));
    let x_4571 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4570.x, x_4570.y, x_4570.z, x_4571.w);

    continuing {
      let x_4573 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4573 + bitcast<u32>(1i));
    }
  }
  let x_4575 : vec4<f32> = u_xlat3;
  let x_4577 : f32 = u_xlat26;
  let x_4580 : vec3<f32> = u_xlat32;
  u_xlat0 = ((vec3<f32>(x_4575.x, x_4575.y, x_4575.z) * vec3<f32>(x_4577, x_4577, x_4577)) + x_4580);
  let x_4582 : vec4<f32> = u_xlat8;
  let x_4584 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4582.x, x_4582.y, x_4582.z) + x_4584);
  let x_4586 : f32 = u_xlat78;
  let x_4588 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4586, x_4586, x_4586) * x_4588);
  let x_4590 : f32 = u_xlat79;
  let x_4591 : f32 = u_xlat79;
  u_xlat78 = (x_4590 * -(x_4591));
  let x_4594 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4594);
  let x_4598 : vec3<f32> = u_xlat0;
  let x_4599 : f32 = u_xlat78;
  let x_4601 : vec3<f32> = (x_4598 * vec3<f32>(x_4599, x_4599, x_4599));
  let x_4602 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4601.x, x_4601.y, x_4601.z, x_4602.w);
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


