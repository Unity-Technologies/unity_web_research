diagnostic(off, derivative_uniformity);

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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

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

@group(1) @binding(4) var<uniform> x_592 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(1) @binding(2) var<uniform> x_814 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2273 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu55 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati55 : i32;

@group(1) @binding(1) var<uniform> x_2771 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_562 : vec3<f32>;
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
  var x_2226 : f32;
  var x_2356 : f32;
  var x_2367 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2900 : f32;
  var x_2910 : f32;
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
  var x_4488 : f32;
  var x_4501 : f32;
  var x_4559 : f32;
  var x_4570 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb79;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_281 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb80;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat79;
  u_xlat79 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat79;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_375;
  let x_378 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_378;
  let x_381 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_381;
  let x_384 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_384;
  let x_387 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_387;
  let x_390 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_392 + x_393);
  let x_396 : f32 = u_xlat0.z;
  u_xlat7.x = x_396;
  let x_399 : f32 = u_xlat1.z;
  u_xlat7.y = x_399;
  let x_402 : f32 = u_xlat2.z;
  u_xlat7.z = x_402;
  let x_405 : f32 = u_xlat3.y;
  u_xlat7.w = x_405;
  let x_407 : vec4<f32> = u_xlat9;
  let x_410 : f32 = x_13.x_Smoothness0;
  let x_412 : f32 = x_13.x_Smoothness1;
  let x_414 : f32 = x_13.x_Smoothness2;
  let x_416 : f32 = x_13.x_Smoothness3;
  let x_419 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_407) * vec4<f32>(x_410, x_412, x_414, x_416)) + x_419);
  let x_423 : f32 = x_13.x_LayerHasMask0;
  let x_426 : f32 = x_13.x_LayerHasMask1;
  let x_429 : f32 = x_13.x_LayerHasMask2;
  let x_432 : f32 = x_13.x_LayerHasMask3;
  let x_434 : vec4<f32> = u_xlat7;
  let x_436 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_423, x_426, x_429, x_432) * x_434) + x_436);
  let x_439 : vec4<f32> = u_xlat4;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_439, x_440);
  let x_443 : f32 = u_xlat0.x;
  u_xlat7.x = x_443;
  let x_446 : f32 = u_xlat1.x;
  u_xlat7.y = x_446;
  let x_449 : f32 = u_xlat2.x;
  u_xlat7.z = x_449;
  let x_452 : f32 = u_xlat3.x;
  u_xlat7.w = x_452;
  let x_454 : vec4<f32> = u_xlat7;
  let x_457 : f32 = x_13.x_Metallic0;
  let x_460 : f32 = x_13.x_Metallic1;
  let x_463 : f32 = x_13.x_Metallic2;
  let x_466 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_454 + -(vec4<f32>(x_457, x_460, x_463, x_466)));
  let x_471 : f32 = x_13.x_LayerHasMask0;
  let x_473 : f32 = x_13.x_LayerHasMask1;
  let x_475 : f32 = x_13.x_LayerHasMask2;
  let x_477 : f32 = x_13.x_LayerHasMask3;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : f32 = x_13.x_Metallic0;
  let x_484 : f32 = x_13.x_Metallic1;
  let x_486 : f32 = x_13.x_Metallic2;
  let x_488 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_471, x_473, x_475, x_477) * x_479) + vec4<f32>(x_482, x_484, x_486, x_488));
  let x_491 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_491, x_492);
  let x_496 : f32 = u_xlat0.y;
  u_xlat3.x = x_496;
  let x_499 : f32 = u_xlat1.y;
  u_xlat3.y = x_499;
  let x_502 : f32 = u_xlat2.y;
  u_xlat3.z = x_502;
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_504) + x_506);
  let x_509 : f32 = x_13.x_LayerHasMask0;
  let x_511 : f32 = x_13.x_LayerHasMask1;
  let x_513 : f32 = x_13.x_LayerHasMask2;
  let x_515 : f32 = x_13.x_LayerHasMask3;
  let x_517 : vec4<f32> = u_xlat1;
  let x_519 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_509, x_511, x_513, x_515) * x_517) + x_519);
  let x_522 : vec4<f32> = u_xlat4;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_522, x_523);
  let x_527 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_527 == 0.0f);
  let x_532 : vec3<f32> = vs_TEXCOORD7;
  let x_536 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_532) + x_536);
  let x_538 : vec3<f32> = u_xlat27;
  let x_539 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_538, x_539);
  let x_543 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_543);
  let x_546 : vec3<f32> = u_xlat27;
  let x_547 : vec4<f32> = u_xlat2;
  u_xlat27 = (x_546 * vec3<f32>(x_547.x, x_547.x, x_547.x));
  let x_551 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : vec3<f32> = u_xlat27;
    x_562 = x_565;
  } else {
    let x_567 : vec4<f32> = u_xlat2;
    x_562 = vec3<f32>(x_567.x, x_567.y, x_567.z);
  }
  let x_569 : vec3<f32> = x_562;
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  let x_574 : vec3<f32> = vs_TEXCOORD3;
  u_xlat79 = dot(x_573, x_574);
  let x_576 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_576);
  let x_578 : f32 = u_xlat79;
  let x_580 : vec3<f32> = vs_TEXCOORD3;
  let x_581 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * x_580);
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres0;
  let x_597 : vec3<f32> = (x_584 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres1;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_611 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres2;
  let x_614 : vec3<f32> = (x_608 + -(vec3<f32>(x_611.x, x_611.y, x_611.z)));
  let x_615 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec3<f32> = vs_TEXCOORD7;
  let x_619 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres3;
  let x_622 : vec3<f32> = (x_617 + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_623 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat3;
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_637 : vec4<f32> = u_xlat6;
  let x_639 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_643 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = x_592.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_651 < x_653);
  let x_656 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_664);
  let x_668 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_668);
  let x_672 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_672);
  let x_677 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_677);
  let x_681 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_681);
  let x_684 : vec4<f32> = u_xlat3;
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + vec3<f32>(x_686.y, x_686.z, x_686.w));
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat3;
  let x_694 : vec3<f32> = max(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_695.x, x_694.x, x_694.y, x_694.z);
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_697, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_702 : f32 = u_xlat79;
  u_xlat79 = (-(x_702) + 4.0f);
  let x_707 : f32 = u_xlat79;
  u_xlatu79 = u32(x_707);
  let x_711 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_711) << bitcast<u32>(2i));
  let x_714 : vec3<f32> = vs_TEXCOORD7;
  let x_716 : i32 = u_xlati79;
  let x_719 : i32 = u_xlati79;
  let x_723 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_716 + 1i) / 4i)][((x_719 + 1i) % 4i)];
  let x_725 : vec3<f32> = (vec3<f32>(x_714.y, x_714.y, x_714.y) * vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : i32 = u_xlati79;
  let x_730 : i32 = u_xlati79;
  let x_733 : vec4<f32> = x_592.x_MainLightWorldToShadow[(x_728 / 4i)][(x_730 % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.x, x_735.x, x_735.x)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : i32 = u_xlati79;
  let x_746 : i32 = u_xlati79;
  let x_750 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_743 + 2i) / 4i)][((x_746 + 2i) % 4i)];
  let x_752 : vec3<f32> = vs_TEXCOORD7;
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752.z, x_752.z, x_752.z)) + vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : i32 = u_xlati79;
  let x_765 : i32 = u_xlati79;
  let x_769 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_762 + 3i) / 4i)][((x_765 + 3i) % 4i)];
  let x_771 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_776 : f32 = vs_TEXCOORD7.y;
  let x_778 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_776 * x_778);
  let x_781 : f32 = x_113.unity_MatrixV[0i].z;
  let x_783 : f32 = vs_TEXCOORD7.x;
  let x_785 : f32 = u_xlat79;
  u_xlat79 = ((x_781 * x_783) + x_785);
  let x_788 : f32 = x_113.unity_MatrixV[2i].z;
  let x_790 : f32 = vs_TEXCOORD7.z;
  let x_792 : f32 = u_xlat79;
  u_xlat79 = ((x_788 * x_790) + x_792);
  let x_794 : f32 = u_xlat79;
  let x_796 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_794 + x_796);
  let x_798 : f32 = u_xlat79;
  let x_801 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_798) + -(x_801));
  let x_804 : f32 = u_xlat79;
  u_xlat79 = max(x_804, 0.0f);
  let x_806 : f32 = u_xlat79;
  let x_808 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_806 * x_808);
  u_xlat2.w = 1.0f;
  let x_816 : vec4<f32> = x_814.unity_SHAr;
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_816, x_817);
  let x_821 : vec4<f32> = x_814.unity_SHAg;
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_821, x_822);
  let x_826 : vec4<f32> = x_814.unity_SHAb;
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_826, x_827);
  let x_830 : vec4<f32> = u_xlat2;
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_830.y, x_830.z, x_830.z, x_830.x) * vec4<f32>(x_832.x, x_832.y, x_832.z, x_832.z));
  let x_836 : vec4<f32> = x_814.unity_SHBr;
  let x_837 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_836, x_837);
  let x_841 : vec4<f32> = x_814.unity_SHBg;
  let x_842 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_841, x_842);
  let x_846 : vec4<f32> = x_814.unity_SHBb;
  let x_847 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_846, x_847);
  let x_852 : f32 = u_xlat2.y;
  let x_854 : f32 = u_xlat2.y;
  u_xlat80 = (x_852 * x_854);
  let x_857 : f32 = u_xlat2.x;
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat80;
  u_xlat80 = ((x_857 * x_859) + -(x_861));
  let x_866 : vec4<f32> = x_814.unity_SHC;
  let x_868 : f32 = u_xlat80;
  let x_871 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat4;
  let x_878 : vec4<f32> = u_xlat6;
  let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec3<f32> = max(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat80;
  u_xlat81 = (-(x_895) + 1.0f);
  let x_898 : f32 = u_xlat80;
  let x_900 : vec4<f32> = u_xlat5;
  let x_902 : vec3<f32> = (vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat5;
  let x_909 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec3<f32> = u_xlat0;
  let x_914 : vec4<f32> = u_xlat5;
  let x_919 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_920 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat52;
  u_xlat0.x = (-(x_922) + 1.0f);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat0.x;
  u_xlat80 = (x_927 * x_929);
  let x_931 : f32 = u_xlat80;
  u_xlat80 = max(x_931, 0.0078125f);
  let x_935 : f32 = u_xlat80;
  let x_936 : f32 = u_xlat80;
  u_xlat82 = (x_935 * x_936);
  let x_938 : f32 = u_xlat52;
  let x_939 : f32 = u_xlat81;
  u_xlat52 = (x_938 + x_939);
  let x_941 : f32 = u_xlat52;
  u_xlat52 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat80;
  u_xlat81 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat26;
  u_xlat26 = min(x_946, 1.0f);
  let x_950 : f32 = x_592.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_950);
  let x_952 : bool = u_xlatb83;
  if (x_952) {
    let x_956 : f32 = x_592.x_MainLightShadowParams.y;
    u_xlatb83 = (x_956 == 1.0f);
    let x_958 : bool = u_xlatb83;
    if (x_958) {
      let x_961 : vec4<f32> = u_xlat3;
      let x_964 : vec4<f32> = x_592.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_961.x, x_961.y, x_961.x, x_961.y) + x_964);
      let x_967 : vec4<f32> = u_xlat7;
      let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
      let x_970 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_968.x, x_968.y, x_970);
      let x_982 : vec3<f32> = txVec0;
      let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
      u_xlat8.x = x_984;
      let x_987 : vec4<f32> = u_xlat7;
      let x_988 : vec2<f32> = vec2<f32>(x_987.z, x_987.w);
      let x_990 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_988.x, x_988.y, x_990);
      let x_997 : vec3<f32> = txVec1;
      let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
      u_xlat8.y = x_999;
      let x_1001 : vec4<f32> = u_xlat3;
      let x_1004 : vec4<f32> = x_592.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) + x_1004);
      let x_1007 : vec4<f32> = u_xlat7;
      let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
      let x_1010 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
      let x_1017 : vec3<f32> = txVec2;
      let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
      u_xlat8.z = x_1019;
      let x_1022 : vec4<f32> = u_xlat7;
      let x_1023 : vec2<f32> = vec2<f32>(x_1022.z, x_1022.w);
      let x_1025 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
      let x_1032 : vec3<f32> = txVec3;
      let x_1034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1032.xy, x_1032.z);
      u_xlat8.w = x_1034;
      let x_1037 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_1037, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1044 : f32 = x_592.x_MainLightShadowParams.y;
      u_xlatb84 = (x_1044 == 2.0f);
      let x_1046 : bool = u_xlatb84;
      if (x_1046) {
        let x_1049 : vec4<f32> = u_xlat3;
        let x_1052 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = floor(vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1065 : vec4<f32> = u_xlat3;
        let x_1068 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.z, x_1068.w)) + -(vec2<f32>(x_1071.x, x_1071.y)));
        let x_1075 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1075.x, x_1075.x, x_1075.y, x_1075.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1079 : vec4<f32> = u_xlat8;
        let x_1081 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1079.x, x_1079.x, x_1079.z, x_1079.z) * vec4<f32>(x_1081.x, x_1081.x, x_1081.z, x_1081.z));
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1088 : vec2<f32> = (vec2<f32>(x_1084.y, x_1084.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1094 : vec2<f32> = u_xlat59;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1091.x, x_1091.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1094));
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1100 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1100) + vec2<f32>(1.0f, 1.0f));
        let x_1104 : vec2<f32> = u_xlat59;
        let x_1106 : vec2<f32> = min(x_1104, vec2<f32>(0.0f, 0.0f));
        let x_1107 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat10;
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1115 : vec2<f32> = u_xlat61;
        let x_1116 : vec2<f32> = ((-(vec2<f32>(x_1109.x, x_1109.y)) * vec2<f32>(x_1112.x, x_1112.y)) + x_1115);
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1119, vec2<f32>(0.0f, 0.0f));
        let x_1121 : vec2<f32> = u_xlat59;
        let x_1123 : vec2<f32> = u_xlat59;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1121) * x_1123) + vec2<f32>(x_1125.y, x_1125.w));
        let x_1128 : vec4<f32> = u_xlat10;
        let x_1130 : vec2<f32> = (vec2<f32>(x_1128.x, x_1128.y) + vec2<f32>(1.0f, 1.0f));
        let x_1131 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1133 + vec2<f32>(1.0f, 1.0f));
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1139 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec2<f32> = u_xlat61;
        let x_1143 : vec2<f32> = (x_1142 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1151 : vec2<f32> = u_xlat59;
        let x_1152 : vec2<f32> = (x_1151 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1155.y, x_1155.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1159 : f32 = u_xlat10.x;
        u_xlat11.z = x_1159;
        let x_1162 : f32 = u_xlat59.x;
        u_xlat11.w = x_1162;
        let x_1165 : f32 = u_xlat12.x;
        u_xlat9.z = x_1165;
        let x_1168 : f32 = u_xlat8.x;
        u_xlat9.w = x_1168;
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1172 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1170.z, x_1170.w, x_1170.x, x_1170.z) + vec4<f32>(x_1172.z, x_1172.w, x_1172.x, x_1172.z));
        let x_1176 : f32 = u_xlat11.y;
        u_xlat10.z = x_1176;
        let x_1179 : f32 = u_xlat59.y;
        u_xlat10.w = x_1179;
        let x_1182 : f32 = u_xlat9.y;
        u_xlat12.z = x_1182;
        let x_1185 : f32 = u_xlat8.z;
        u_xlat12.w = x_1185;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1189 : vec4<f32> = u_xlat12;
        let x_1191 : vec3<f32> = (vec3<f32>(x_1187.z, x_1187.y, x_1187.w) + vec3<f32>(x_1189.z, x_1189.y, x_1189.w));
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat9;
        let x_1196 : vec4<f32> = u_xlat13;
        let x_1198 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.z, x_1194.w) / vec3<f32>(x_1196.z, x_1196.w, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat9;
        let x_1207 : vec3<f32> = (vec3<f32>(x_1201.x, x_1201.y, x_1201.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1208 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat12;
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1214 : vec3<f32> = (vec3<f32>(x_1210.z, x_1210.y, x_1210.w) / vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
        let x_1215 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1219 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat9;
        let x_1225 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1227 : vec3<f32> = (vec3<f32>(x_1222.y, x_1222.x, x_1222.z) * vec3<f32>(x_1225.x, x_1225.x, x_1225.x));
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1233 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1235 : vec3<f32> = (vec3<f32>(x_1230.x, x_1230.y, x_1230.z) * vec3<f32>(x_1233.y, x_1233.y, x_1233.y));
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1239 : f32 = u_xlat10.x;
        u_xlat9.w = x_1239;
        let x_1241 : vec4<f32> = u_xlat7;
        let x_1244 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.y, x_1247.w, x_1247.x, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1253 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.z, x_1256.w));
        let x_1260 : f32 = u_xlat9.y;
        u_xlat10.w = x_1260;
        let x_1262 : vec4<f32> = u_xlat10;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.y, x_1262.z);
        let x_1264 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1264.x, x_1263.x, x_1264.z, x_1263.y);
        let x_1266 : vec4<f32> = u_xlat7;
        let x_1269 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat7;
        let x_1278 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y) * vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y)) + vec4<f32>(x_1281.w, x_1281.y, x_1281.w, x_1281.z));
        let x_1284 : vec4<f32> = u_xlat7;
        let x_1287 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.x, x_1290.w, x_1290.z, x_1290.w));
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1296 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1294.x, x_1294.x, x_1294.x, x_1294.y) * vec4<f32>(x_1296.z, x_1296.w, x_1296.y, x_1296.z));
        let x_1300 : vec4<f32> = u_xlat8;
        let x_1302 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1300.y, x_1300.y, x_1300.z, x_1300.z) * x_1302);
        let x_1306 : f32 = u_xlat8.z;
        let x_1308 : f32 = u_xlat13.y;
        u_xlat84 = (x_1306 * x_1308);
        let x_1311 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.x, x_1311.y);
        let x_1314 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec4;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat7.x = x_1323;
        let x_1326 : vec4<f32> = u_xlat11;
        let x_1327 : vec2<f32> = vec2<f32>(x_1326.z, x_1326.w);
        let x_1329 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1337 : vec3<f32> = txVec5;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat33 = x_1339;
        let x_1340 : f32 = u_xlat33;
        let x_1342 : f32 = u_xlat14.y;
        u_xlat33 = (x_1340 * x_1342);
        let x_1345 : f32 = u_xlat14.x;
        let x_1347 : f32 = u_xlat7.x;
        let x_1349 : f32 = u_xlat33;
        u_xlat7.x = ((x_1345 * x_1347) + x_1349);
        let x_1353 : vec2<f32> = u_xlat59;
        let x_1355 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec6;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat33 = x_1364;
        let x_1366 : f32 = u_xlat14.z;
        let x_1367 : f32 = u_xlat33;
        let x_1370 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1366 * x_1367) + x_1370);
        let x_1374 : vec4<f32> = u_xlat10;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec7;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat33 = x_1386;
        let x_1388 : f32 = u_xlat14.w;
        let x_1389 : f32 = u_xlat33;
        let x_1392 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1388 * x_1389) + x_1392);
        let x_1396 : vec4<f32> = u_xlat12;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec8;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat33 = x_1408;
        let x_1410 : f32 = u_xlat15.x;
        let x_1411 : f32 = u_xlat33;
        let x_1414 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1410 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat12;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec9;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat33 = x_1430;
        let x_1432 : f32 = u_xlat15.y;
        let x_1433 : f32 = u_xlat33;
        let x_1436 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1432 * x_1433) + x_1436);
        let x_1440 : vec4<f32> = u_xlat10;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.z, x_1440.w);
        let x_1443 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec10;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat33 = x_1452;
        let x_1454 : f32 = u_xlat15.z;
        let x_1455 : f32 = u_xlat33;
        let x_1458 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec11;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat33 = x_1474;
        let x_1476 : f32 = u_xlat15.w;
        let x_1477 : f32 = u_xlat33;
        let x_1480 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat9;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.z, x_1484.w);
        let x_1487 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec12;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat33 = x_1496;
        let x_1497 : f32 = u_xlat84;
        let x_1498 : f32 = u_xlat33;
        let x_1501 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1497 * x_1498) + x_1501);
      } else {
        let x_1504 : vec4<f32> = u_xlat3;
        let x_1507 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1510 : vec2<f32> = ((vec2<f32>(x_1504.x, x_1504.y) * vec2<f32>(x_1507.z, x_1507.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1511 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1510.x, x_1510.y, x_1511.z, x_1511.w);
        let x_1513 : vec4<f32> = u_xlat7;
        let x_1515 : vec2<f32> = floor(vec2<f32>(x_1513.x, x_1513.y));
        let x_1516 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
        let x_1518 : vec4<f32> = u_xlat3;
        let x_1521 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1521.z, x_1521.w)) + -(vec2<f32>(x_1524.x, x_1524.y)));
        let x_1528 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1528.x, x_1528.x, x_1528.y, x_1528.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1533 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1531.x, x_1531.x, x_1531.z, x_1531.z) * vec4<f32>(x_1533.x, x_1533.x, x_1533.z, x_1533.z));
        let x_1536 : vec4<f32> = u_xlat9;
        let x_1540 : vec2<f32> = (vec2<f32>(x_1536.y, x_1536.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1541 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1541.x, x_1540.x, x_1541.z, x_1540.y);
        let x_1543 : vec4<f32> = u_xlat9;
        let x_1546 : vec2<f32> = u_xlat59;
        let x_1548 : vec2<f32> = ((vec2<f32>(x_1543.x, x_1543.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1546));
        let x_1549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1548.x, x_1549.y, x_1548.y, x_1549.w);
        let x_1551 : vec2<f32> = u_xlat59;
        let x_1553 : vec2<f32> = (-(x_1551) + vec2<f32>(1.0f, 1.0f));
        let x_1554 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1553.x, x_1553.y, x_1554.z, x_1554.w);
        let x_1556 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1556, vec2<f32>(0.0f, 0.0f));
        let x_1558 : vec2<f32> = u_xlat61;
        let x_1560 : vec2<f32> = u_xlat61;
        let x_1562 : vec4<f32> = u_xlat9;
        let x_1564 : vec2<f32> = ((-(x_1558) * x_1560) + vec2<f32>(x_1562.x, x_1562.y));
        let x_1565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1564.x, x_1564.y, x_1565.z, x_1565.w);
        let x_1567 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1567, vec2<f32>(0.0f, 0.0f));
        let x_1570 : vec2<f32> = u_xlat61;
        let x_1572 : vec2<f32> = u_xlat61;
        let x_1574 : vec4<f32> = u_xlat8;
        let x_1576 : vec2<f32> = ((-(x_1570) * x_1572) + vec2<f32>(x_1574.y, x_1574.w));
        let x_1577 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1576.x, x_1577.y, x_1576.y);
        let x_1579 : vec4<f32> = u_xlat9;
        let x_1582 : vec2<f32> = (vec2<f32>(x_1579.x, x_1579.y) + vec2<f32>(2.0f, 2.0f));
        let x_1583 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : vec3<f32> = u_xlat34;
        let x_1587 : vec2<f32> = (vec2<f32>(x_1585.x, x_1585.z) + vec2<f32>(2.0f, 2.0f));
        let x_1588 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1588.x, x_1587.x, x_1588.z, x_1587.y);
        let x_1591 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1591 * 0.08163200318813323975f);
        let x_1595 : vec4<f32> = u_xlat8;
        let x_1598 : vec3<f32> = (vec3<f32>(x_1595.z, x_1595.x, x_1595.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1599 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1604 : vec2<f32> = (vec2<f32>(x_1601.x, x_1601.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1605 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
        let x_1608 : f32 = u_xlat12.y;
        u_xlat11.x = x_1608;
        let x_1610 : vec2<f32> = u_xlat59;
        let x_1617 : vec2<f32> = ((vec2<f32>(x_1610.x, x_1610.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1618.x, x_1617.x, x_1618.z, x_1617.y);
        let x_1620 : vec2<f32> = u_xlat59;
        let x_1624 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1625 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1624.x, x_1625.y, x_1624.y, x_1625.w);
        let x_1628 : f32 = u_xlat8.x;
        u_xlat9.y = x_1628;
        let x_1631 : f32 = u_xlat10.y;
        u_xlat9.w = x_1631;
        let x_1633 : vec4<f32> = u_xlat9;
        let x_1634 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1633 + x_1634);
        let x_1636 : vec2<f32> = u_xlat59;
        let x_1639 : vec2<f32> = ((vec2<f32>(x_1636.y, x_1636.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1640 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1640.x, x_1639.x, x_1640.z, x_1639.y);
        let x_1642 : vec2<f32> = u_xlat59;
        let x_1645 : vec2<f32> = ((vec2<f32>(x_1642.y, x_1642.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1646 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1645.x, x_1646.y, x_1645.y, x_1646.w);
        let x_1649 : f32 = u_xlat8.y;
        u_xlat10.y = x_1649;
        let x_1651 : vec4<f32> = u_xlat10;
        let x_1652 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1651 + x_1652);
        let x_1654 : vec4<f32> = u_xlat9;
        let x_1655 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1654 / x_1655);
        let x_1657 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1657 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1663 : vec4<f32> = u_xlat10;
        let x_1664 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1663 / x_1664);
        let x_1666 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1666 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1668 : vec4<f32> = u_xlat9;
        let x_1671 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1668.w, x_1668.x, x_1668.y, x_1668.z) * vec4<f32>(x_1671.x, x_1671.x, x_1671.x, x_1671.x));
        let x_1674 : vec4<f32> = u_xlat10;
        let x_1677 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1674.x, x_1674.w, x_1674.y, x_1674.z) * vec4<f32>(x_1677.y, x_1677.y, x_1677.y, x_1677.y));
        let x_1680 : vec4<f32> = u_xlat9;
        let x_1681 : vec3<f32> = vec3<f32>(x_1680.y, x_1680.z, x_1680.w);
        let x_1682 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1681.x, x_1682.y, x_1681.y, x_1681.z);
        let x_1685 : f32 = u_xlat10.x;
        u_xlat12.y = x_1685;
        let x_1687 : vec4<f32> = u_xlat7;
        let x_1690 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1693 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y) * vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y)) + vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1693.y));
        let x_1696 : vec4<f32> = u_xlat7;
        let x_1699 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1702 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1696.x, x_1696.y) * vec2<f32>(x_1699.x, x_1699.y)) + vec2<f32>(x_1702.w, x_1702.y));
        let x_1706 : f32 = u_xlat12.y;
        u_xlat9.y = x_1706;
        let x_1709 : f32 = u_xlat10.z;
        u_xlat12.y = x_1709;
        let x_1711 : vec4<f32> = u_xlat7;
        let x_1714 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1717 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y) * vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y)) + vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1717.y));
        let x_1720 : vec4<f32> = u_xlat7;
        let x_1723 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat12;
        let x_1728 : vec2<f32> = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1723.x, x_1723.y)) + vec2<f32>(x_1726.w, x_1726.y));
        let x_1729 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1732 : f32 = u_xlat12.y;
        u_xlat9.z = x_1732;
        let x_1735 : vec4<f32> = u_xlat7;
        let x_1738 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1741 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.y) * vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.y)) + vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.z));
        let x_1745 : f32 = u_xlat10.w;
        u_xlat12.y = x_1745;
        let x_1748 : vec4<f32> = u_xlat7;
        let x_1751 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1754 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y) * vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y)) + vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1754.y));
        let x_1758 : vec4<f32> = u_xlat7;
        let x_1761 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1764 : vec4<f32> = u_xlat12;
        let x_1766 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(x_1761.x, x_1761.y)) + vec2<f32>(x_1764.w, x_1764.y));
        let x_1767 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1766.x, x_1766.y, x_1767.z);
        let x_1770 : f32 = u_xlat12.y;
        u_xlat9.w = x_1770;
        let x_1773 : vec4<f32> = u_xlat7;
        let x_1776 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1779 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1776.x, x_1776.y)) + vec2<f32>(x_1779.x, x_1779.w));
        let x_1782 : vec4<f32> = u_xlat12;
        let x_1783 : vec3<f32> = vec3<f32>(x_1782.x, x_1782.z, x_1782.w);
        let x_1784 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1783.x, x_1784.y, x_1783.y, x_1783.z);
        let x_1786 : vec4<f32> = u_xlat7;
        let x_1789 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1792 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1786.x, x_1786.y, x_1786.x, x_1786.y) * vec4<f32>(x_1789.x, x_1789.y, x_1789.x, x_1789.y)) + vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1792.y));
        let x_1796 : vec4<f32> = u_xlat7;
        let x_1799 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1802 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1796.x, x_1796.y) * vec2<f32>(x_1799.x, x_1799.y)) + vec2<f32>(x_1802.w, x_1802.y));
        let x_1806 : f32 = u_xlat9.x;
        u_xlat10.x = x_1806;
        let x_1808 : vec4<f32> = u_xlat7;
        let x_1811 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1814 : vec4<f32> = u_xlat10;
        let x_1816 : vec2<f32> = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(x_1811.x, x_1811.y)) + vec2<f32>(x_1814.x, x_1814.y));
        let x_1817 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1816.x, x_1816.y, x_1817.z, x_1817.w);
        let x_1820 : vec4<f32> = u_xlat8;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1820.x, x_1820.x, x_1820.x, x_1820.x) * x_1822);
        let x_1825 : vec4<f32> = u_xlat8;
        let x_1827 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1825.y, x_1825.y, x_1825.y, x_1825.y) * x_1827);
        let x_1830 : vec4<f32> = u_xlat8;
        let x_1832 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1830.z, x_1830.z, x_1830.z, x_1830.z) * x_1832);
        let x_1834 : vec4<f32> = u_xlat8;
        let x_1836 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1834.w, x_1834.w, x_1834.w, x_1834.w) * x_1836);
        let x_1839 : vec4<f32> = u_xlat13;
        let x_1840 : vec2<f32> = vec2<f32>(x_1839.x, x_1839.y);
        let x_1842 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1840.x, x_1840.y, x_1842);
        let x_1849 : vec3<f32> = txVec13;
        let x_1851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1849.xy, x_1849.z);
        u_xlat84 = x_1851;
        let x_1853 : vec4<f32> = u_xlat13;
        let x_1854 : vec2<f32> = vec2<f32>(x_1853.z, x_1853.w);
        let x_1856 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec14;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat9.x = x_1865;
        let x_1868 : f32 = u_xlat9.x;
        let x_1870 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1868 * x_1870);
        let x_1874 : f32 = u_xlat18.x;
        let x_1875 : f32 = u_xlat84;
        let x_1878 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1874 * x_1875) + x_1878);
        let x_1881 : vec2<f32> = u_xlat59;
        let x_1883 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec15;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat59.x = x_1892;
        let x_1895 : f32 = u_xlat18.z;
        let x_1897 : f32 = u_xlat59.x;
        let x_1899 : f32 = u_xlat84;
        u_xlat84 = ((x_1895 * x_1897) + x_1899);
        let x_1902 : vec4<f32> = u_xlat16;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.x, x_1902.y);
        let x_1905 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec16;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
        u_xlat59.x = x_1914;
        let x_1917 : f32 = u_xlat18.w;
        let x_1919 : f32 = u_xlat59.x;
        let x_1921 : f32 = u_xlat84;
        u_xlat84 = ((x_1917 * x_1919) + x_1921);
        let x_1924 : vec4<f32> = u_xlat14;
        let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
        let x_1927 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
        let x_1934 : vec3<f32> = txVec17;
        let x_1936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1934.xy, x_1934.z);
        u_xlat59.x = x_1936;
        let x_1939 : f32 = u_xlat19.x;
        let x_1941 : f32 = u_xlat59.x;
        let x_1943 : f32 = u_xlat84;
        u_xlat84 = ((x_1939 * x_1941) + x_1943);
        let x_1946 : vec4<f32> = u_xlat14;
        let x_1947 : vec2<f32> = vec2<f32>(x_1946.z, x_1946.w);
        let x_1949 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec18;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1956.xy, x_1956.z);
        u_xlat59.x = x_1958;
        let x_1961 : f32 = u_xlat19.y;
        let x_1963 : f32 = u_xlat59.x;
        let x_1965 : f32 = u_xlat84;
        u_xlat84 = ((x_1961 * x_1963) + x_1965);
        let x_1968 : vec4<f32> = u_xlat15;
        let x_1969 : vec2<f32> = vec2<f32>(x_1968.x, x_1968.y);
        let x_1971 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
        let x_1978 : vec3<f32> = txVec19;
        let x_1980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1978.xy, x_1978.z);
        u_xlat59.x = x_1980;
        let x_1983 : f32 = u_xlat19.z;
        let x_1985 : f32 = u_xlat59.x;
        let x_1987 : f32 = u_xlat84;
        u_xlat84 = ((x_1983 * x_1985) + x_1987);
        let x_1990 : vec4<f32> = u_xlat16;
        let x_1991 : vec2<f32> = vec2<f32>(x_1990.z, x_1990.w);
        let x_1993 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1991.x, x_1991.y, x_1993);
        let x_2000 : vec3<f32> = txVec20;
        let x_2002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2000.xy, x_2000.z);
        u_xlat59.x = x_2002;
        let x_2005 : f32 = u_xlat19.w;
        let x_2007 : f32 = u_xlat59.x;
        let x_2009 : f32 = u_xlat84;
        u_xlat84 = ((x_2005 * x_2007) + x_2009);
        let x_2012 : vec4<f32> = u_xlat17;
        let x_2013 : vec2<f32> = vec2<f32>(x_2012.x, x_2012.y);
        let x_2015 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec21;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2022.xy, x_2022.z);
        u_xlat59.x = x_2024;
        let x_2027 : f32 = u_xlat20.x;
        let x_2029 : f32 = u_xlat59.x;
        let x_2031 : f32 = u_xlat84;
        u_xlat84 = ((x_2027 * x_2029) + x_2031);
        let x_2034 : vec4<f32> = u_xlat17;
        let x_2035 : vec2<f32> = vec2<f32>(x_2034.z, x_2034.w);
        let x_2037 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2035.x, x_2035.y, x_2037);
        let x_2044 : vec3<f32> = txVec22;
        let x_2046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2044.xy, x_2044.z);
        u_xlat59.x = x_2046;
        let x_2049 : f32 = u_xlat20.y;
        let x_2051 : f32 = u_xlat59.x;
        let x_2053 : f32 = u_xlat84;
        u_xlat84 = ((x_2049 * x_2051) + x_2053);
        let x_2056 : vec3<f32> = u_xlat35;
        let x_2057 : vec2<f32> = vec2<f32>(x_2056.x, x_2056.y);
        let x_2059 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
        let x_2066 : vec3<f32> = txVec23;
        let x_2068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
        u_xlat59.x = x_2068;
        let x_2071 : f32 = u_xlat20.z;
        let x_2073 : f32 = u_xlat59.x;
        let x_2075 : f32 = u_xlat84;
        u_xlat84 = ((x_2071 * x_2073) + x_2075);
        let x_2078 : vec2<f32> = u_xlat67;
        let x_2080 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec24;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2087.xy, x_2087.z);
        u_xlat59.x = x_2089;
        let x_2092 : f32 = u_xlat20.w;
        let x_2094 : f32 = u_xlat59.x;
        let x_2096 : f32 = u_xlat84;
        u_xlat84 = ((x_2092 * x_2094) + x_2096);
        let x_2099 : vec4<f32> = u_xlat12;
        let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
        let x_2102 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
        let x_2109 : vec3<f32> = txVec25;
        let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2109.xy, x_2109.z);
        u_xlat59.x = x_2111;
        let x_2114 : f32 = u_xlat8.x;
        let x_2116 : f32 = u_xlat59.x;
        let x_2118 : f32 = u_xlat84;
        u_xlat84 = ((x_2114 * x_2116) + x_2118);
        let x_2121 : vec4<f32> = u_xlat12;
        let x_2122 : vec2<f32> = vec2<f32>(x_2121.z, x_2121.w);
        let x_2124 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2122.x, x_2122.y, x_2124);
        let x_2131 : vec3<f32> = txVec26;
        let x_2133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2131.xy, x_2131.z);
        u_xlat59.x = x_2133;
        let x_2136 : f32 = u_xlat8.y;
        let x_2138 : f32 = u_xlat59.x;
        let x_2140 : f32 = u_xlat84;
        u_xlat84 = ((x_2136 * x_2138) + x_2140);
        let x_2143 : vec2<f32> = u_xlat62;
        let x_2145 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
        let x_2152 : vec3<f32> = txVec27;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
        u_xlat59.x = x_2154;
        let x_2157 : f32 = u_xlat8.z;
        let x_2159 : f32 = u_xlat59.x;
        let x_2161 : f32 = u_xlat84;
        u_xlat84 = ((x_2157 * x_2159) + x_2161);
        let x_2164 : vec4<f32> = u_xlat7;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.x, x_2164.y);
        let x_2167 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec28;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2174.xy, x_2174.z);
        u_xlat7.x = x_2176;
        let x_2179 : f32 = u_xlat8.w;
        let x_2181 : f32 = u_xlat7.x;
        let x_2183 : f32 = u_xlat84;
        u_xlat83 = ((x_2179 * x_2181) + x_2183);
      }
    }
  } else {
    let x_2187 : vec4<f32> = u_xlat3;
    let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
    let x_2190 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
    let x_2197 : vec3<f32> = txVec29;
    let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
    u_xlat83 = x_2199;
  }
  let x_2201 : f32 = x_592.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2201) + 1.0f);
  let x_2205 : f32 = u_xlat83;
  let x_2207 : f32 = x_592.x_MainLightShadowParams.x;
  let x_2210 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2205 * x_2207) + x_2210);
  let x_2215 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2215);
  let x_2219 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2219 >= 1.0f);
  let x_2221 : bool = u_xlatb55;
  let x_2222 : bool = u_xlatb29;
  u_xlatb29 = (x_2221 | x_2222);
  let x_2224 : bool = u_xlatb29;
  if (x_2224) {
    x_2226 = 1.0f;
  } else {
    let x_2231 : f32 = u_xlat3.x;
    x_2226 = x_2231;
  }
  let x_2232 : f32 = x_2226;
  u_xlat3.x = x_2232;
  let x_2234 : vec3<f32> = vs_TEXCOORD7;
  let x_2236 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2238 : vec3<f32> = (x_2234 + -(x_2236));
  let x_2239 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2239.w);
  let x_2242 : vec4<f32> = u_xlat7;
  let x_2244 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2242.x, x_2242.y, x_2242.z), vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
  let x_2248 : f32 = u_xlat29;
  let x_2250 : f32 = x_592.x_MainLightShadowParams.z;
  let x_2253 : f32 = x_592.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2248 * x_2250) + x_2253);
  let x_2255 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2255, 0.0f, 1.0f);
  let x_2258 : f32 = u_xlat3.x;
  u_xlat83 = (-(x_2258) + 1.0f);
  let x_2261 : f32 = u_xlat55;
  let x_2262 : f32 = u_xlat83;
  let x_2265 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2261 * x_2262) + x_2265);
  let x_2275 : f32 = x_2273.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2275 == -1.0f));
  let x_2277 : bool = u_xlatb55;
  if (x_2277) {
    let x_2280 : vec3<f32> = vs_TEXCOORD7;
    let x_2283 : vec4<f32> = x_2273.x_MainLightWorldToLight[1i];
    let x_2285 : vec2<f32> = (vec2<f32>(x_2280.y, x_2280.y) * vec2<f32>(x_2283.x, x_2283.y));
    let x_2286 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2285.x, x_2285.y, x_2286.z, x_2286.w);
    let x_2289 : vec4<f32> = x_2273.x_MainLightWorldToLight[0i];
    let x_2291 : vec3<f32> = vs_TEXCOORD7;
    let x_2294 : vec4<f32> = u_xlat7;
    let x_2296 : vec2<f32> = ((vec2<f32>(x_2289.x, x_2289.y) * vec2<f32>(x_2291.x, x_2291.x)) + vec2<f32>(x_2294.x, x_2294.y));
    let x_2297 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2296.x, x_2296.y, x_2297.z, x_2297.w);
    let x_2300 : vec4<f32> = x_2273.x_MainLightWorldToLight[2i];
    let x_2302 : vec3<f32> = vs_TEXCOORD7;
    let x_2305 : vec4<f32> = u_xlat7;
    let x_2307 : vec2<f32> = ((vec2<f32>(x_2300.x, x_2300.y) * vec2<f32>(x_2302.z, x_2302.z)) + vec2<f32>(x_2305.x, x_2305.y));
    let x_2308 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2307.x, x_2307.y, x_2308.z, x_2308.w);
    let x_2310 : vec4<f32> = u_xlat7;
    let x_2313 : vec4<f32> = x_2273.x_MainLightWorldToLight[3i];
    let x_2315 : vec2<f32> = (vec2<f32>(x_2310.x, x_2310.y) + vec2<f32>(x_2313.x, x_2313.y));
    let x_2316 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2315.x, x_2315.y, x_2316.z, x_2316.w);
    let x_2318 : vec4<f32> = u_xlat7;
    let x_2321 : vec2<f32> = ((vec2<f32>(x_2318.x, x_2318.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2322 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
    let x_2329 : vec4<f32> = u_xlat7;
    let x_2332 : f32 = x_113.x_GlobalMipBias.x;
    let x_2333 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2329.x, x_2329.y), x_2332);
    u_xlat7 = x_2333;
    let x_2338 : f32 = x_2273.x_MainLightCookieTextureFormat;
    let x_2340 : f32 = x_2273.x_MainLightCookieTextureFormat;
    let x_2342 : f32 = x_2273.x_MainLightCookieTextureFormat;
    let x_2344 : f32 = x_2273.x_MainLightCookieTextureFormat;
    let x_2345 : vec4<f32> = vec4<f32>(x_2338, x_2340, x_2342, x_2344);
    let x_2352 : vec4<bool> = (vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2345.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2352.x, x_2352.y);
    let x_2355 : bool = u_xlatb8.y;
    if (x_2355) {
      let x_2360 : f32 = u_xlat7.w;
      x_2356 = x_2360;
    } else {
      let x_2363 : f32 = u_xlat7.x;
      x_2356 = x_2363;
    }
    let x_2364 : f32 = x_2356;
    u_xlat55 = x_2364;
    let x_2366 : bool = u_xlatb8.x;
    if (x_2366) {
      let x_2370 : vec4<f32> = u_xlat7;
      x_2367 = vec3<f32>(x_2370.x, x_2370.y, x_2370.z);
    } else {
      let x_2373 : f32 = u_xlat55;
      x_2367 = vec3<f32>(x_2373, x_2373, x_2373);
    }
    let x_2375 : vec3<f32> = x_2367;
    let x_2376 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2382 : vec4<f32> = u_xlat7;
  let x_2385 : vec4<f32> = x_113.x_MainLightColor;
  let x_2387 : vec3<f32> = (vec3<f32>(x_2382.x, x_2382.y, x_2382.z) * vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
  let x_2388 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2387.x, x_2387.y, x_2387.z, x_2388.w);
  let x_2390 : vec4<f32> = u_xlat1;
  let x_2393 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(-(vec3<f32>(x_2390.x, x_2390.y, x_2390.z)), vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2396 : f32 = u_xlat55;
  let x_2397 : f32 = u_xlat55;
  u_xlat55 = (x_2396 + x_2397);
  let x_2399 : vec4<f32> = u_xlat2;
  let x_2401 : f32 = u_xlat55;
  let x_2405 : vec4<f32> = u_xlat1;
  let x_2408 : vec3<f32> = ((vec3<f32>(x_2399.x, x_2399.y, x_2399.z) * -(vec3<f32>(x_2401, x_2401, x_2401))) + -(vec3<f32>(x_2405.x, x_2405.y, x_2405.z)));
  let x_2409 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
  let x_2411 : vec4<f32> = u_xlat2;
  let x_2413 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(vec3<f32>(x_2411.x, x_2411.y, x_2411.z), vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
  let x_2416 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2416, 0.0f, 1.0f);
  let x_2418 : f32 = u_xlat55;
  u_xlat55 = (-(x_2418) + 1.0f);
  let x_2421 : f32 = u_xlat55;
  let x_2422 : f32 = u_xlat55;
  u_xlat55 = (x_2421 * x_2422);
  let x_2424 : f32 = u_xlat55;
  let x_2425 : f32 = u_xlat55;
  u_xlat55 = (x_2424 * x_2425);
  let x_2428 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2428) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2435 : f32 = u_xlat0.x;
  let x_2436 : f32 = u_xlat83;
  u_xlat0.x = (x_2435 * x_2436);
  let x_2440 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2440 * 6.0f);
  let x_2452 : vec4<f32> = u_xlat8;
  let x_2455 : f32 = u_xlat0.x;
  let x_2456 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2452.x, x_2452.y, x_2452.z), x_2455);
  u_xlat8 = x_2456;
  let x_2458 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2458 + -1.0f);
  let x_2462 : f32 = x_814.unity_SpecCube0_HDR.w;
  let x_2464 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2462 * x_2464) + 1.0f);
  let x_2469 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2469, 0.0f);
  let x_2473 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2473);
  let x_2477 : f32 = u_xlat0.x;
  let x_2479 : f32 = x_814.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2477 * x_2479);
  let x_2483 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2483);
  let x_2487 : f32 = u_xlat0.x;
  let x_2489 : f32 = x_814.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2487 * x_2489);
  let x_2492 : vec4<f32> = u_xlat8;
  let x_2494 : vec3<f32> = u_xlat0;
  let x_2496 : vec3<f32> = (vec3<f32>(x_2492.x, x_2492.y, x_2492.z) * vec3<f32>(x_2494.x, x_2494.x, x_2494.x));
  let x_2497 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
  let x_2499 : f32 = u_xlat80;
  let x_2501 : f32 = u_xlat80;
  let x_2505 : vec2<f32> = ((vec2<f32>(x_2499, x_2499) * vec2<f32>(x_2501, x_2501)) + vec2<f32>(-1.0f, 1.0f));
  let x_2506 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2505.x, x_2505.y, x_2506.z, x_2506.w);
  let x_2509 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2509);
  let x_2512 : vec4<f32> = u_xlat5;
  let x_2515 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2512.x, x_2512.y, x_2512.z)) + vec3<f32>(x_2515, x_2515, x_2515));
  let x_2518 : f32 = u_xlat55;
  let x_2520 : vec3<f32> = u_xlat35;
  let x_2522 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2518, x_2518, x_2518) * x_2520) + vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
  let x_2525 : vec3<f32> = u_xlat0;
  let x_2527 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2525.x, x_2525.x, x_2525.x) * x_2527);
  let x_2529 : vec4<f32> = u_xlat8;
  let x_2531 : vec3<f32> = u_xlat35;
  let x_2532 : vec3<f32> = (vec3<f32>(x_2529.x, x_2529.y, x_2529.z) * x_2531);
  let x_2533 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2532.x, x_2532.y, x_2532.z, x_2533.w);
  let x_2535 : vec4<f32> = u_xlat4;
  let x_2537 : vec4<f32> = u_xlat6;
  let x_2540 : vec4<f32> = u_xlat8;
  let x_2542 : vec3<f32> = ((vec3<f32>(x_2535.x, x_2535.y, x_2535.z) * vec3<f32>(x_2537.x, x_2537.y, x_2537.z)) + vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
  let x_2543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
  let x_2546 : f32 = u_xlat3.x;
  let x_2548 : f32 = x_814.unity_LightData.z;
  u_xlat0.x = (x_2546 * x_2548);
  let x_2551 : vec4<f32> = u_xlat2;
  let x_2554 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2551.x, x_2551.y, x_2551.z), vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
  let x_2557 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2557, 0.0f, 1.0f);
  let x_2559 : f32 = u_xlat52;
  let x_2561 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2559 * x_2561);
  let x_2564 : vec3<f32> = u_xlat0;
  let x_2566 : vec4<f32> = u_xlat7;
  let x_2568 : vec3<f32> = (vec3<f32>(x_2564.x, x_2564.x, x_2564.x) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2569 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
  let x_2571 : vec4<f32> = u_xlat1;
  let x_2574 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2576 : vec3<f32> = (vec3<f32>(x_2571.x, x_2571.y, x_2571.z) + vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2577 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2579.x, x_2579.y, x_2579.z), vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2586 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2586, 1.17549435e-38f);
  let x_2591 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2591);
  let x_2594 : vec3<f32> = u_xlat0;
  let x_2596 : vec4<f32> = u_xlat8;
  let x_2598 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.x, x_2594.x) * vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
  let x_2599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
  let x_2601 : vec4<f32> = u_xlat2;
  let x_2603 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2601.x, x_2601.y, x_2601.z), vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
  let x_2608 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2608, 0.0f, 1.0f);
  let x_2612 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2614 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2612.x, x_2612.y, x_2612.z), vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
  let x_2619 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2619, 0.0f, 1.0f);
  let x_2622 : vec3<f32> = u_xlat0;
  let x_2624 : vec3<f32> = u_xlat0;
  let x_2626 : vec2<f32> = (vec2<f32>(x_2622.x, x_2622.z) * vec2<f32>(x_2624.x, x_2624.z));
  let x_2627 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2626.x, x_2627.y, x_2626.y);
  let x_2630 : f32 = u_xlat0.x;
  let x_2632 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2630 * x_2632) + 1.00001001358032226562f);
  let x_2638 : f32 = u_xlat0.x;
  let x_2640 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2638 * x_2640);
  let x_2644 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2644, 0.10000000149011611938f);
  let x_2647 : f32 = u_xlat52;
  let x_2649 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2647 * x_2649);
  let x_2652 : f32 = u_xlat81;
  let x_2654 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2652 * x_2654);
  let x_2657 : f32 = u_xlat82;
  let x_2659 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2657 / x_2659);
  let x_2662 : vec4<f32> = u_xlat5;
  let x_2664 : vec3<f32> = u_xlat0;
  let x_2667 : vec4<f32> = u_xlat6;
  let x_2669 : vec3<f32> = ((vec3<f32>(x_2662.x, x_2662.y, x_2662.z) * vec3<f32>(x_2664.x, x_2664.x, x_2664.x)) + vec3<f32>(x_2667.x, x_2667.y, x_2667.z));
  let x_2670 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
  let x_2672 : vec4<f32> = u_xlat7;
  let x_2674 : vec4<f32> = u_xlat8;
  let x_2676 : vec3<f32> = (vec3<f32>(x_2672.x, x_2672.y, x_2672.z) * vec3<f32>(x_2674.x, x_2674.y, x_2674.z));
  let x_2677 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2676.x, x_2676.y, x_2676.z, x_2677.w);
  let x_2680 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2682 : f32 = x_814.unity_LightData.y;
  u_xlat0.x = min(x_2680, x_2682);
  let x_2687 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2687));
  let x_2690 : f32 = u_xlat29;
  let x_2692 : f32 = x_592.x_AdditionalShadowFadeParams.x;
  let x_2695 : f32 = x_592.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2690 * x_2692) + x_2695);
  let x_2697 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2697, 0.0f, 1.0f);
  let x_2700 : f32 = x_2273.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2702 : f32 = x_2273.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2704 : f32 = x_2273.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2706 : f32 = x_2273.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2707 : vec4<f32> = vec4<f32>(x_2700, x_2702, x_2704, x_2706);
  let x_2713 : vec4<bool> = (vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2707.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2714 : vec2<bool> = vec2<bool>(x_2713.x, x_2713.y);
  let x_2715 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2714.x, x_2714.y, x_2715.z, x_2715.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2727 : u32 = u_xlatu_loop_1;
    let x_2728 : u32 = u_xlatu0;
    if ((x_2727 < x_2728)) {
    } else {
      break;
    }
    let x_2731 : u32 = u_xlatu_loop_1;
    u_xlatu55 = (x_2731 >> 2u);
    let x_2734 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2734 & 3u));
    let x_2737 : u32 = u_xlatu55;
    let x_2740 : vec4<f32> = x_814.unity_LightIndices[bitcast<i32>(x_2737)];
    let x_2750 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2755 : vec4<u32> = indexable[x_2750];
    u_xlat55 = dot(x_2740, bitcast<vec4<f32>>(x_2755));
    let x_2759 : f32 = u_xlat55;
    u_xlati55 = i32(x_2759);
    let x_2761 : vec3<f32> = vs_TEXCOORD7;
    let x_2772 : i32 = u_xlati55;
    let x_2774 : vec4<f32> = x_2771.x_AdditionalLightsPosition[x_2772];
    let x_2777 : i32 = u_xlati55;
    let x_2779 : vec4<f32> = x_2771.x_AdditionalLightsPosition[x_2777];
    u_xlat35 = ((-(x_2761) * vec3<f32>(x_2774.w, x_2774.w, x_2774.w)) + vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
    let x_2782 : vec3<f32> = u_xlat35;
    let x_2783 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_2782, x_2783);
    let x_2785 : f32 = u_xlat83;
    u_xlat83 = max(x_2785, 0.00006103515625f);
    let x_2787 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2787);
    let x_2789 : f32 = u_xlat84;
    let x_2791 : vec3<f32> = u_xlat35;
    let x_2792 : vec3<f32> = (vec3<f32>(x_2789, x_2789, x_2789) * x_2791);
    let x_2793 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2793.w);
    let x_2796 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2796);
    let x_2798 : f32 = u_xlat83;
    let x_2799 : i32 = u_xlati55;
    let x_2801 : f32 = x_2771.x_AdditionalLightsAttenuation[x_2799].x;
    u_xlat83 = (x_2798 * x_2801);
    let x_2803 : f32 = u_xlat83;
    let x_2805 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2803) * x_2805) + 1.0f);
    let x_2808 : f32 = u_xlat83;
    u_xlat83 = max(x_2808, 0.0f);
    let x_2810 : f32 = u_xlat83;
    let x_2811 : f32 = u_xlat83;
    u_xlat83 = (x_2810 * x_2811);
    let x_2813 : f32 = u_xlat83;
    let x_2814 : f32 = u_xlat85;
    u_xlat83 = (x_2813 * x_2814);
    let x_2816 : i32 = u_xlati55;
    let x_2818 : vec4<f32> = x_2771.x_AdditionalLightsSpotDir[x_2816];
    let x_2820 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2818.x, x_2818.y, x_2818.z), vec3<f32>(x_2820.x, x_2820.y, x_2820.z));
    let x_2823 : f32 = u_xlat85;
    let x_2824 : i32 = u_xlati55;
    let x_2826 : f32 = x_2771.x_AdditionalLightsAttenuation[x_2824].z;
    let x_2828 : i32 = u_xlati55;
    let x_2830 : f32 = x_2771.x_AdditionalLightsAttenuation[x_2828].w;
    u_xlat85 = ((x_2823 * x_2826) + x_2830);
    let x_2832 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2832, 0.0f, 1.0f);
    let x_2834 : f32 = u_xlat85;
    let x_2835 : f32 = u_xlat85;
    u_xlat85 = (x_2834 * x_2835);
    let x_2837 : f32 = u_xlat83;
    let x_2838 : f32 = u_xlat85;
    u_xlat83 = (x_2837 * x_2838);
    let x_2841 : i32 = u_xlati55;
    let x_2843 : f32 = x_592.x_AdditionalShadowParams[x_2841].w;
    u_xlati85 = i32(x_2843);
    let x_2846 : i32 = u_xlati85;
    u_xlatb86 = (x_2846 >= 0i);
    let x_2848 : bool = u_xlatb86;
    if (x_2848) {
      let x_2852 : i32 = u_xlati55;
      let x_2854 : f32 = x_592.x_AdditionalShadowParams[x_2852].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2854, x_2854, x_2854, x_2854))));
      let x_2858 : bool = u_xlatb86;
      if (x_2858) {
        let x_2862 : vec4<f32> = u_xlat10;
        let x_2865 : vec4<f32> = u_xlat10;
        let x_2868 : vec4<bool> = (abs(vec4<f32>(x_2862.z, x_2862.z, x_2862.y, x_2862.z)) >= abs(vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.x)));
        let x_2870 : vec3<bool> = vec3<bool>(x_2868.x, x_2868.y, x_2868.z);
        let x_2871 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
        let x_2874 : bool = u_xlatb11.y;
        let x_2876 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2874 & x_2876);
        let x_2878 : vec4<f32> = u_xlat10;
        let x_2881 : vec4<bool> = (-(vec4<f32>(x_2878.z, x_2878.y, x_2878.z, x_2878.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2882 : vec3<bool> = vec3<bool>(x_2881.x, x_2881.y, x_2881.w);
        let x_2883 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2882.x, x_2882.y, x_2883.z, x_2882.z);
        let x_2886 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2886);
        let x_2891 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2891);
        let x_2896 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2896);
        let x_2899 : bool = u_xlatb11.z;
        if (x_2899) {
          let x_2904 : f32 = u_xlat11.y;
          x_2900 = x_2904;
        } else {
          let x_2906 : f32 = u_xlat88;
          x_2900 = x_2906;
        }
        let x_2907 : f32 = x_2900;
        u_xlat88 = x_2907;
        let x_2909 : bool = u_xlatb86;
        if (x_2909) {
          let x_2914 : f32 = u_xlat11.x;
          x_2910 = x_2914;
        } else {
          let x_2916 : f32 = u_xlat88;
          x_2910 = x_2916;
        }
        let x_2917 : f32 = x_2910;
        u_xlat86 = x_2917;
        let x_2918 : i32 = u_xlati55;
        let x_2920 : f32 = x_592.x_AdditionalShadowParams[x_2918].w;
        u_xlat88 = trunc(x_2920);
        let x_2922 : f32 = u_xlat86;
        let x_2923 : f32 = u_xlat88;
        u_xlat86 = (x_2922 + x_2923);
        let x_2925 : f32 = u_xlat86;
        u_xlati85 = i32(x_2925);
      }
      let x_2927 : i32 = u_xlati85;
      u_xlati85 = (x_2927 << bitcast<u32>(2i));
      let x_2929 : vec3<f32> = vs_TEXCOORD7;
      let x_2931 : i32 = u_xlati85;
      let x_2934 : i32 = u_xlati85;
      let x_2938 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_2931 + 1i) / 4i)][((x_2934 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2929.y, x_2929.y, x_2929.y, x_2929.y) * x_2938);
      let x_2940 : i32 = u_xlati85;
      let x_2942 : i32 = u_xlati85;
      let x_2945 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[(x_2940 / 4i)][(x_2942 % 4i)];
      let x_2946 : vec3<f32> = vs_TEXCOORD7;
      let x_2949 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2945 * vec4<f32>(x_2946.x, x_2946.x, x_2946.x, x_2946.x)) + x_2949);
      let x_2951 : i32 = u_xlati85;
      let x_2954 : i32 = u_xlati85;
      let x_2958 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_2951 + 2i) / 4i)][((x_2954 + 2i) % 4i)];
      let x_2959 : vec3<f32> = vs_TEXCOORD7;
      let x_2962 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2958 * vec4<f32>(x_2959.z, x_2959.z, x_2959.z, x_2959.z)) + x_2962);
      let x_2964 : vec4<f32> = u_xlat11;
      let x_2965 : i32 = u_xlati85;
      let x_2968 : i32 = u_xlati85;
      let x_2972 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_2965 + 3i) / 4i)][((x_2968 + 3i) % 4i)];
      u_xlat11 = (x_2964 + x_2972);
      let x_2974 : vec4<f32> = u_xlat11;
      let x_2976 : vec4<f32> = u_xlat11;
      let x_2978 : vec3<f32> = (vec3<f32>(x_2974.x, x_2974.y, x_2974.z) / vec3<f32>(x_2976.w, x_2976.w, x_2976.w));
      let x_2979 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2979.w);
      let x_2982 : i32 = u_xlati55;
      let x_2984 : f32 = x_592.x_AdditionalShadowParams[x_2982].y;
      u_xlatb85 = (0.0f < x_2984);
      let x_2986 : bool = u_xlatb85;
      if (x_2986) {
        let x_2989 : i32 = u_xlati55;
        let x_2991 : f32 = x_592.x_AdditionalShadowParams[x_2989].y;
        u_xlatb85 = (1.0f == x_2991);
        let x_2993 : bool = u_xlatb85;
        if (x_2993) {
          let x_2996 : vec4<f32> = u_xlat11;
          let x_2999 : vec4<f32> = x_592.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y) + x_2999);
          let x_3002 : vec4<f32> = u_xlat12;
          let x_3003 : vec2<f32> = vec2<f32>(x_3002.x, x_3002.y);
          let x_3005 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
          let x_3013 : vec3<f32> = txVec30;
          let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
          u_xlat13.x = x_3015;
          let x_3018 : vec4<f32> = u_xlat12;
          let x_3019 : vec2<f32> = vec2<f32>(x_3018.z, x_3018.w);
          let x_3021 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3019.x, x_3019.y, x_3021);
          let x_3028 : vec3<f32> = txVec31;
          let x_3030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3028.xy, x_3028.z);
          u_xlat13.y = x_3030;
          let x_3032 : vec4<f32> = u_xlat11;
          let x_3035 : vec4<f32> = x_592.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y) + x_3035);
          let x_3038 : vec4<f32> = u_xlat12;
          let x_3039 : vec2<f32> = vec2<f32>(x_3038.x, x_3038.y);
          let x_3041 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3039.x, x_3039.y, x_3041);
          let x_3048 : vec3<f32> = txVec32;
          let x_3050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
          u_xlat13.z = x_3050;
          let x_3053 : vec4<f32> = u_xlat12;
          let x_3054 : vec2<f32> = vec2<f32>(x_3053.z, x_3053.w);
          let x_3056 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3054.x, x_3054.y, x_3056);
          let x_3063 : vec3<f32> = txVec33;
          let x_3065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3063.xy, x_3063.z);
          u_xlat13.w = x_3065;
          let x_3067 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3067, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3070 : i32 = u_xlati55;
          let x_3072 : f32 = x_592.x_AdditionalShadowParams[x_3070].y;
          u_xlatb86 = (2.0f == x_3072);
          let x_3074 : bool = u_xlatb86;
          if (x_3074) {
            let x_3077 : vec4<f32> = u_xlat11;
            let x_3080 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3083 : vec2<f32> = ((vec2<f32>(x_3077.x, x_3077.y) * vec2<f32>(x_3080.z, x_3080.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3084 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3083.x, x_3083.y, x_3084.z, x_3084.w);
            let x_3086 : vec4<f32> = u_xlat12;
            let x_3088 : vec2<f32> = floor(vec2<f32>(x_3086.x, x_3086.y));
            let x_3089 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3088.x, x_3088.y, x_3089.z, x_3089.w);
            let x_3092 : vec4<f32> = u_xlat11;
            let x_3095 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3098 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3092.x, x_3092.y) * vec2<f32>(x_3095.z, x_3095.w)) + -(vec2<f32>(x_3098.x, x_3098.y)));
            let x_3102 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3102.x, x_3102.x, x_3102.y, x_3102.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3105 : vec4<f32> = u_xlat13;
            let x_3107 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3105.x, x_3105.x, x_3105.z, x_3105.z) * vec4<f32>(x_3107.x, x_3107.x, x_3107.z, x_3107.z));
            let x_3110 : vec4<f32> = u_xlat14;
            let x_3112 : vec2<f32> = (vec2<f32>(x_3110.y, x_3110.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3113 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3112.x, x_3113.y, x_3112.y, x_3113.w);
            let x_3115 : vec4<f32> = u_xlat14;
            let x_3118 : vec2<f32> = u_xlat64;
            let x_3120 : vec2<f32> = ((vec2<f32>(x_3115.x, x_3115.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3118));
            let x_3121 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3120.x, x_3120.y, x_3121.z, x_3121.w);
            let x_3124 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3124) + vec2<f32>(1.0f, 1.0f));
            let x_3127 : vec2<f32> = u_xlat64;
            let x_3128 : vec2<f32> = min(x_3127, vec2<f32>(0.0f, 0.0f));
            let x_3129 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3128.x, x_3128.y, x_3129.z, x_3129.w);
            let x_3131 : vec4<f32> = u_xlat15;
            let x_3134 : vec4<f32> = u_xlat15;
            let x_3137 : vec2<f32> = u_xlat66;
            let x_3138 : vec2<f32> = ((-(vec2<f32>(x_3131.x, x_3131.y)) * vec2<f32>(x_3134.x, x_3134.y)) + x_3137);
            let x_3139 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3138.x, x_3138.y, x_3139.z, x_3139.w);
            let x_3141 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3141, vec2<f32>(0.0f, 0.0f));
            let x_3143 : vec2<f32> = u_xlat64;
            let x_3145 : vec2<f32> = u_xlat64;
            let x_3147 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3143) * x_3145) + vec2<f32>(x_3147.y, x_3147.w));
            let x_3150 : vec4<f32> = u_xlat15;
            let x_3152 : vec2<f32> = (vec2<f32>(x_3150.x, x_3150.y) + vec2<f32>(1.0f, 1.0f));
            let x_3153 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3152.x, x_3152.y, x_3153.z, x_3153.w);
            let x_3155 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3155 + vec2<f32>(1.0f, 1.0f));
            let x_3157 : vec4<f32> = u_xlat14;
            let x_3159 : vec2<f32> = (vec2<f32>(x_3157.x, x_3157.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3160 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3159.x, x_3159.y, x_3160.z, x_3160.w);
            let x_3162 : vec2<f32> = u_xlat66;
            let x_3163 : vec2<f32> = (x_3162 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3164 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3163.x, x_3163.y, x_3164.z, x_3164.w);
            let x_3166 : vec4<f32> = u_xlat15;
            let x_3168 : vec2<f32> = (vec2<f32>(x_3166.x, x_3166.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3169 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3168.x, x_3168.y, x_3169.z, x_3169.w);
            let x_3171 : vec2<f32> = u_xlat64;
            let x_3172 : vec2<f32> = (x_3171 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3173 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3172.x, x_3172.y, x_3173.z, x_3173.w);
            let x_3175 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3175.y, x_3175.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3179 : f32 = u_xlat15.x;
            u_xlat16.z = x_3179;
            let x_3182 : f32 = u_xlat64.x;
            u_xlat16.w = x_3182;
            let x_3185 : f32 = u_xlat17.x;
            u_xlat14.z = x_3185;
            let x_3188 : f32 = u_xlat13.x;
            u_xlat14.w = x_3188;
            let x_3190 : vec4<f32> = u_xlat14;
            let x_3192 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3190.z, x_3190.w, x_3190.x, x_3190.z) + vec4<f32>(x_3192.z, x_3192.w, x_3192.x, x_3192.z));
            let x_3196 : f32 = u_xlat16.y;
            u_xlat15.z = x_3196;
            let x_3199 : f32 = u_xlat64.y;
            u_xlat15.w = x_3199;
            let x_3202 : f32 = u_xlat14.y;
            u_xlat17.z = x_3202;
            let x_3205 : f32 = u_xlat13.z;
            u_xlat17.w = x_3205;
            let x_3207 : vec4<f32> = u_xlat15;
            let x_3209 : vec4<f32> = u_xlat17;
            let x_3211 : vec3<f32> = (vec3<f32>(x_3207.z, x_3207.y, x_3207.w) + vec3<f32>(x_3209.z, x_3209.y, x_3209.w));
            let x_3212 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3211.x, x_3211.y, x_3211.z, x_3212.w);
            let x_3214 : vec4<f32> = u_xlat14;
            let x_3216 : vec4<f32> = u_xlat18;
            let x_3218 : vec3<f32> = (vec3<f32>(x_3214.x, x_3214.z, x_3214.w) / vec3<f32>(x_3216.z, x_3216.w, x_3216.y));
            let x_3219 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3219.w);
            let x_3221 : vec4<f32> = u_xlat14;
            let x_3223 : vec3<f32> = (vec3<f32>(x_3221.x, x_3221.y, x_3221.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3224 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3223.x, x_3223.y, x_3223.z, x_3224.w);
            let x_3226 : vec4<f32> = u_xlat17;
            let x_3228 : vec4<f32> = u_xlat13;
            let x_3230 : vec3<f32> = (vec3<f32>(x_3226.z, x_3226.y, x_3226.w) / vec3<f32>(x_3228.x, x_3228.y, x_3228.z));
            let x_3231 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3231.w);
            let x_3233 : vec4<f32> = u_xlat15;
            let x_3235 : vec3<f32> = (vec3<f32>(x_3233.x, x_3233.y, x_3233.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3236 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3235.x, x_3235.y, x_3235.z, x_3236.w);
            let x_3238 : vec4<f32> = u_xlat14;
            let x_3241 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3243 : vec3<f32> = (vec3<f32>(x_3238.y, x_3238.x, x_3238.z) * vec3<f32>(x_3241.x, x_3241.x, x_3241.x));
            let x_3244 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3243.x, x_3243.y, x_3243.z, x_3244.w);
            let x_3246 : vec4<f32> = u_xlat15;
            let x_3249 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3251 : vec3<f32> = (vec3<f32>(x_3246.x, x_3246.y, x_3246.z) * vec3<f32>(x_3249.y, x_3249.y, x_3249.y));
            let x_3252 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3251.x, x_3251.y, x_3251.z, x_3252.w);
            let x_3255 : f32 = u_xlat15.x;
            u_xlat14.w = x_3255;
            let x_3257 : vec4<f32> = u_xlat12;
            let x_3260 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3263 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3257.x, x_3257.y, x_3257.x, x_3257.y) * vec4<f32>(x_3260.x, x_3260.y, x_3260.x, x_3260.y)) + vec4<f32>(x_3263.y, x_3263.w, x_3263.x, x_3263.w));
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3272 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3266.x, x_3266.y) * vec2<f32>(x_3269.x, x_3269.y)) + vec2<f32>(x_3272.z, x_3272.w));
            let x_3276 : f32 = u_xlat14.y;
            u_xlat15.w = x_3276;
            let x_3278 : vec4<f32> = u_xlat15;
            let x_3279 : vec2<f32> = vec2<f32>(x_3278.y, x_3278.z);
            let x_3280 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3280.x, x_3279.x, x_3280.z, x_3279.y);
            let x_3282 : vec4<f32> = u_xlat12;
            let x_3285 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3288 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3282.x, x_3282.y, x_3282.x, x_3282.y) * vec4<f32>(x_3285.x, x_3285.y, x_3285.x, x_3285.y)) + vec4<f32>(x_3288.x, x_3288.y, x_3288.z, x_3288.y));
            let x_3291 : vec4<f32> = u_xlat12;
            let x_3294 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3297 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3291.x, x_3291.y, x_3291.x, x_3291.y) * vec4<f32>(x_3294.x, x_3294.y, x_3294.x, x_3294.y)) + vec4<f32>(x_3297.w, x_3297.y, x_3297.w, x_3297.z));
            let x_3300 : vec4<f32> = u_xlat12;
            let x_3303 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3306 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3300.x, x_3300.y, x_3300.x, x_3300.y) * vec4<f32>(x_3303.x, x_3303.y, x_3303.x, x_3303.y)) + vec4<f32>(x_3306.x, x_3306.w, x_3306.z, x_3306.w));
            let x_3309 : vec4<f32> = u_xlat13;
            let x_3311 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3309.x, x_3309.x, x_3309.x, x_3309.y) * vec4<f32>(x_3311.z, x_3311.w, x_3311.y, x_3311.z));
            let x_3314 : vec4<f32> = u_xlat13;
            let x_3316 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3314.y, x_3314.y, x_3314.z, x_3314.z) * x_3316);
            let x_3319 : f32 = u_xlat13.z;
            let x_3321 : f32 = u_xlat18.y;
            u_xlat86 = (x_3319 * x_3321);
            let x_3324 : vec4<f32> = u_xlat16;
            let x_3325 : vec2<f32> = vec2<f32>(x_3324.x, x_3324.y);
            let x_3327 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3325.x, x_3325.y, x_3327);
            let x_3334 : vec3<f32> = txVec34;
            let x_3336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3334.xy, x_3334.z);
            u_xlat88 = x_3336;
            let x_3338 : vec4<f32> = u_xlat16;
            let x_3339 : vec2<f32> = vec2<f32>(x_3338.z, x_3338.w);
            let x_3341 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3349 : vec3<f32> = txVec35;
            let x_3351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3349.xy, x_3349.z);
            u_xlat89 = x_3351;
            let x_3352 : f32 = u_xlat89;
            let x_3354 : f32 = u_xlat19.y;
            u_xlat89 = (x_3352 * x_3354);
            let x_3357 : f32 = u_xlat19.x;
            let x_3358 : f32 = u_xlat88;
            let x_3360 : f32 = u_xlat89;
            u_xlat88 = ((x_3357 * x_3358) + x_3360);
            let x_3363 : vec2<f32> = u_xlat64;
            let x_3365 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3363.x, x_3363.y, x_3365);
            let x_3372 : vec3<f32> = txVec36;
            let x_3374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3372.xy, x_3372.z);
            u_xlat89 = x_3374;
            let x_3376 : f32 = u_xlat19.z;
            let x_3377 : f32 = u_xlat89;
            let x_3379 : f32 = u_xlat88;
            u_xlat88 = ((x_3376 * x_3377) + x_3379);
            let x_3382 : vec4<f32> = u_xlat15;
            let x_3383 : vec2<f32> = vec2<f32>(x_3382.x, x_3382.y);
            let x_3385 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
            let x_3392 : vec3<f32> = txVec37;
            let x_3394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
            u_xlat89 = x_3394;
            let x_3396 : f32 = u_xlat19.w;
            let x_3397 : f32 = u_xlat89;
            let x_3399 : f32 = u_xlat88;
            u_xlat88 = ((x_3396 * x_3397) + x_3399);
            let x_3402 : vec4<f32> = u_xlat17;
            let x_3403 : vec2<f32> = vec2<f32>(x_3402.x, x_3402.y);
            let x_3405 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3403.x, x_3403.y, x_3405);
            let x_3412 : vec3<f32> = txVec38;
            let x_3414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3412.xy, x_3412.z);
            u_xlat89 = x_3414;
            let x_3416 : f32 = u_xlat20.x;
            let x_3417 : f32 = u_xlat89;
            let x_3419 : f32 = u_xlat88;
            u_xlat88 = ((x_3416 * x_3417) + x_3419);
            let x_3422 : vec4<f32> = u_xlat17;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.z, x_3422.w);
            let x_3425 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec39;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat89 = x_3434;
            let x_3436 : f32 = u_xlat20.y;
            let x_3437 : f32 = u_xlat89;
            let x_3439 : f32 = u_xlat88;
            u_xlat88 = ((x_3436 * x_3437) + x_3439);
            let x_3442 : vec4<f32> = u_xlat15;
            let x_3443 : vec2<f32> = vec2<f32>(x_3442.z, x_3442.w);
            let x_3445 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3443.x, x_3443.y, x_3445);
            let x_3452 : vec3<f32> = txVec40;
            let x_3454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3452.xy, x_3452.z);
            u_xlat89 = x_3454;
            let x_3456 : f32 = u_xlat20.z;
            let x_3457 : f32 = u_xlat89;
            let x_3459 : f32 = u_xlat88;
            u_xlat88 = ((x_3456 * x_3457) + x_3459);
            let x_3462 : vec4<f32> = u_xlat14;
            let x_3463 : vec2<f32> = vec2<f32>(x_3462.x, x_3462.y);
            let x_3465 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
            let x_3472 : vec3<f32> = txVec41;
            let x_3474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3472.xy, x_3472.z);
            u_xlat89 = x_3474;
            let x_3476 : f32 = u_xlat20.w;
            let x_3477 : f32 = u_xlat89;
            let x_3479 : f32 = u_xlat88;
            u_xlat88 = ((x_3476 * x_3477) + x_3479);
            let x_3482 : vec4<f32> = u_xlat14;
            let x_3483 : vec2<f32> = vec2<f32>(x_3482.z, x_3482.w);
            let x_3485 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3483.x, x_3483.y, x_3485);
            let x_3492 : vec3<f32> = txVec42;
            let x_3494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3492.xy, x_3492.z);
            u_xlat89 = x_3494;
            let x_3495 : f32 = u_xlat86;
            let x_3496 : f32 = u_xlat89;
            let x_3498 : f32 = u_xlat88;
            u_xlat85 = ((x_3495 * x_3496) + x_3498);
          } else {
            let x_3501 : vec4<f32> = u_xlat11;
            let x_3504 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3507 : vec2<f32> = ((vec2<f32>(x_3501.x, x_3501.y) * vec2<f32>(x_3504.z, x_3504.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3508 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3507.x, x_3507.y, x_3508.z, x_3508.w);
            let x_3510 : vec4<f32> = u_xlat12;
            let x_3512 : vec2<f32> = floor(vec2<f32>(x_3510.x, x_3510.y));
            let x_3513 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3512.x, x_3512.y, x_3513.z, x_3513.w);
            let x_3515 : vec4<f32> = u_xlat11;
            let x_3518 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3521 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3515.x, x_3515.y) * vec2<f32>(x_3518.z, x_3518.w)) + -(vec2<f32>(x_3521.x, x_3521.y)));
            let x_3525 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3525.x, x_3525.x, x_3525.y, x_3525.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3528 : vec4<f32> = u_xlat13;
            let x_3530 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3528.x, x_3528.x, x_3528.z, x_3528.z) * vec4<f32>(x_3530.x, x_3530.x, x_3530.z, x_3530.z));
            let x_3533 : vec4<f32> = u_xlat14;
            let x_3535 : vec2<f32> = (vec2<f32>(x_3533.y, x_3533.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3536 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3536.x, x_3535.x, x_3536.z, x_3535.y);
            let x_3538 : vec4<f32> = u_xlat14;
            let x_3541 : vec2<f32> = u_xlat64;
            let x_3543 : vec2<f32> = ((vec2<f32>(x_3538.x, x_3538.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3541));
            let x_3544 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3543.x, x_3544.y, x_3543.y, x_3544.w);
            let x_3546 : vec2<f32> = u_xlat64;
            let x_3548 : vec2<f32> = (-(x_3546) + vec2<f32>(1.0f, 1.0f));
            let x_3549 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3548.x, x_3548.y, x_3549.z, x_3549.w);
            let x_3551 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3551, vec2<f32>(0.0f, 0.0f));
            let x_3553 : vec2<f32> = u_xlat66;
            let x_3555 : vec2<f32> = u_xlat66;
            let x_3557 : vec4<f32> = u_xlat14;
            let x_3559 : vec2<f32> = ((-(x_3553) * x_3555) + vec2<f32>(x_3557.x, x_3557.y));
            let x_3560 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3559.x, x_3559.y, x_3560.z, x_3560.w);
            let x_3562 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3562, vec2<f32>(0.0f, 0.0f));
            let x_3565 : vec2<f32> = u_xlat66;
            let x_3567 : vec2<f32> = u_xlat66;
            let x_3569 : vec4<f32> = u_xlat13;
            let x_3571 : vec2<f32> = ((-(x_3565) * x_3567) + vec2<f32>(x_3569.y, x_3569.w));
            let x_3572 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3571.x, x_3572.y, x_3571.y);
            let x_3574 : vec4<f32> = u_xlat14;
            let x_3576 : vec2<f32> = (vec2<f32>(x_3574.x, x_3574.y) + vec2<f32>(2.0f, 2.0f));
            let x_3577 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3576.x, x_3576.y, x_3577.z, x_3577.w);
            let x_3579 : vec3<f32> = u_xlat39;
            let x_3581 : vec2<f32> = (vec2<f32>(x_3579.x, x_3579.z) + vec2<f32>(2.0f, 2.0f));
            let x_3582 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3582.x, x_3581.x, x_3582.z, x_3581.y);
            let x_3585 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3585 * 0.08163200318813323975f);
            let x_3588 : vec4<f32> = u_xlat13;
            let x_3590 : vec3<f32> = (vec3<f32>(x_3588.z, x_3588.x, x_3588.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3591 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3590.x, x_3590.y, x_3590.z, x_3591.w);
            let x_3593 : vec4<f32> = u_xlat14;
            let x_3595 : vec2<f32> = (vec2<f32>(x_3593.x, x_3593.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3596 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3595.x, x_3595.y, x_3596.z, x_3596.w);
            let x_3599 : f32 = u_xlat17.y;
            u_xlat16.x = x_3599;
            let x_3601 : vec2<f32> = u_xlat64;
            let x_3604 : vec2<f32> = ((vec2<f32>(x_3601.x, x_3601.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3605 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3605.x, x_3604.x, x_3605.z, x_3604.y);
            let x_3607 : vec2<f32> = u_xlat64;
            let x_3610 : vec2<f32> = ((vec2<f32>(x_3607.x, x_3607.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3611 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3610.x, x_3611.y, x_3610.y, x_3611.w);
            let x_3614 : f32 = u_xlat13.x;
            u_xlat14.y = x_3614;
            let x_3617 : f32 = u_xlat15.y;
            u_xlat14.w = x_3617;
            let x_3619 : vec4<f32> = u_xlat14;
            let x_3620 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3619 + x_3620);
            let x_3622 : vec2<f32> = u_xlat64;
            let x_3625 : vec2<f32> = ((vec2<f32>(x_3622.y, x_3622.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3626 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3626.x, x_3625.x, x_3626.z, x_3625.y);
            let x_3628 : vec2<f32> = u_xlat64;
            let x_3631 : vec2<f32> = ((vec2<f32>(x_3628.y, x_3628.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3632 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3631.x, x_3632.y, x_3631.y, x_3632.w);
            let x_3635 : f32 = u_xlat13.y;
            u_xlat15.y = x_3635;
            let x_3637 : vec4<f32> = u_xlat15;
            let x_3638 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3637 + x_3638);
            let x_3640 : vec4<f32> = u_xlat14;
            let x_3641 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3640 / x_3641);
            let x_3643 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3643 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3645 : vec4<f32> = u_xlat15;
            let x_3646 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3645 / x_3646);
            let x_3648 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3648 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3650 : vec4<f32> = u_xlat14;
            let x_3653 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3650.w, x_3650.x, x_3650.y, x_3650.z) * vec4<f32>(x_3653.x, x_3653.x, x_3653.x, x_3653.x));
            let x_3656 : vec4<f32> = u_xlat15;
            let x_3659 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3656.x, x_3656.w, x_3656.y, x_3656.z) * vec4<f32>(x_3659.y, x_3659.y, x_3659.y, x_3659.y));
            let x_3662 : vec4<f32> = u_xlat14;
            let x_3663 : vec3<f32> = vec3<f32>(x_3662.y, x_3662.z, x_3662.w);
            let x_3664 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3663.x, x_3664.y, x_3663.y, x_3663.z);
            let x_3667 : f32 = u_xlat15.x;
            u_xlat17.y = x_3667;
            let x_3669 : vec4<f32> = u_xlat12;
            let x_3672 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3675 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3669.x, x_3669.y, x_3669.x, x_3669.y) * vec4<f32>(x_3672.x, x_3672.y, x_3672.x, x_3672.y)) + vec4<f32>(x_3675.x, x_3675.y, x_3675.z, x_3675.y));
            let x_3678 : vec4<f32> = u_xlat12;
            let x_3681 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3684 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3678.x, x_3678.y) * vec2<f32>(x_3681.x, x_3681.y)) + vec2<f32>(x_3684.w, x_3684.y));
            let x_3688 : f32 = u_xlat17.y;
            u_xlat14.y = x_3688;
            let x_3691 : f32 = u_xlat15.z;
            u_xlat17.y = x_3691;
            let x_3693 : vec4<f32> = u_xlat12;
            let x_3696 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3699 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3693.x, x_3693.y, x_3693.x, x_3693.y) * vec4<f32>(x_3696.x, x_3696.y, x_3696.x, x_3696.y)) + vec4<f32>(x_3699.x, x_3699.y, x_3699.z, x_3699.y));
            let x_3702 : vec4<f32> = u_xlat12;
            let x_3705 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3708 : vec4<f32> = u_xlat17;
            let x_3710 : vec2<f32> = ((vec2<f32>(x_3702.x, x_3702.y) * vec2<f32>(x_3705.x, x_3705.y)) + vec2<f32>(x_3708.w, x_3708.y));
            let x_3711 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3710.x, x_3710.y, x_3711.z, x_3711.w);
            let x_3714 : f32 = u_xlat17.y;
            u_xlat14.z = x_3714;
            let x_3717 : vec4<f32> = u_xlat12;
            let x_3720 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3723 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3717.x, x_3717.y, x_3717.x, x_3717.y) * vec4<f32>(x_3720.x, x_3720.y, x_3720.x, x_3720.y)) + vec4<f32>(x_3723.x, x_3723.y, x_3723.x, x_3723.z));
            let x_3727 : f32 = u_xlat15.w;
            u_xlat17.y = x_3727;
            let x_3730 : vec4<f32> = u_xlat12;
            let x_3733 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3736 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3730.x, x_3730.y, x_3730.x, x_3730.y) * vec4<f32>(x_3733.x, x_3733.y, x_3733.x, x_3733.y)) + vec4<f32>(x_3736.x, x_3736.y, x_3736.z, x_3736.y));
            let x_3740 : vec4<f32> = u_xlat12;
            let x_3743 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3746 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3740.x, x_3740.y) * vec2<f32>(x_3743.x, x_3743.y)) + vec2<f32>(x_3746.w, x_3746.y));
            let x_3750 : f32 = u_xlat17.y;
            u_xlat14.w = x_3750;
            let x_3753 : vec4<f32> = u_xlat12;
            let x_3756 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3759 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3753.x, x_3753.y) * vec2<f32>(x_3756.x, x_3756.y)) + vec2<f32>(x_3759.x, x_3759.w));
            let x_3762 : vec4<f32> = u_xlat17;
            let x_3763 : vec3<f32> = vec3<f32>(x_3762.x, x_3762.z, x_3762.w);
            let x_3764 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3763.x, x_3764.y, x_3763.y, x_3763.z);
            let x_3766 : vec4<f32> = u_xlat12;
            let x_3769 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3772 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3766.x, x_3766.y, x_3766.x, x_3766.y) * vec4<f32>(x_3769.x, x_3769.y, x_3769.x, x_3769.y)) + vec4<f32>(x_3772.x, x_3772.y, x_3772.z, x_3772.y));
            let x_3775 : vec4<f32> = u_xlat12;
            let x_3778 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3781 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3775.x, x_3775.y) * vec2<f32>(x_3778.x, x_3778.y)) + vec2<f32>(x_3781.w, x_3781.y));
            let x_3785 : f32 = u_xlat14.x;
            u_xlat15.x = x_3785;
            let x_3787 : vec4<f32> = u_xlat12;
            let x_3790 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3793 : vec4<f32> = u_xlat15;
            let x_3795 : vec2<f32> = ((vec2<f32>(x_3787.x, x_3787.y) * vec2<f32>(x_3790.x, x_3790.y)) + vec2<f32>(x_3793.x, x_3793.y));
            let x_3796 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3795.x, x_3795.y, x_3796.z, x_3796.w);
            let x_3799 : vec4<f32> = u_xlat13;
            let x_3801 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3799.x, x_3799.x, x_3799.x, x_3799.x) * x_3801);
            let x_3804 : vec4<f32> = u_xlat13;
            let x_3806 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3804.y, x_3804.y, x_3804.y, x_3804.y) * x_3806);
            let x_3809 : vec4<f32> = u_xlat13;
            let x_3811 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3809.z, x_3809.z, x_3809.z, x_3809.z) * x_3811);
            let x_3813 : vec4<f32> = u_xlat13;
            let x_3815 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3813.w, x_3813.w, x_3813.w, x_3813.w) * x_3815);
            let x_3818 : vec4<f32> = u_xlat18;
            let x_3819 : vec2<f32> = vec2<f32>(x_3818.x, x_3818.y);
            let x_3821 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3819.x, x_3819.y, x_3821);
            let x_3828 : vec3<f32> = txVec43;
            let x_3830 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3828.xy, x_3828.z);
            u_xlat86 = x_3830;
            let x_3832 : vec4<f32> = u_xlat18;
            let x_3833 : vec2<f32> = vec2<f32>(x_3832.z, x_3832.w);
            let x_3835 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3833.x, x_3833.y, x_3835);
            let x_3842 : vec3<f32> = txVec44;
            let x_3844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3842.xy, x_3842.z);
            u_xlat88 = x_3844;
            let x_3845 : f32 = u_xlat88;
            let x_3847 : f32 = u_xlat23.y;
            u_xlat88 = (x_3845 * x_3847);
            let x_3850 : f32 = u_xlat23.x;
            let x_3851 : f32 = u_xlat86;
            let x_3853 : f32 = u_xlat88;
            u_xlat86 = ((x_3850 * x_3851) + x_3853);
            let x_3856 : vec2<f32> = u_xlat64;
            let x_3858 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3856.x, x_3856.y, x_3858);
            let x_3865 : vec3<f32> = txVec45;
            let x_3867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3865.xy, x_3865.z);
            u_xlat88 = x_3867;
            let x_3869 : f32 = u_xlat23.z;
            let x_3870 : f32 = u_xlat88;
            let x_3872 : f32 = u_xlat86;
            u_xlat86 = ((x_3869 * x_3870) + x_3872);
            let x_3875 : vec4<f32> = u_xlat21;
            let x_3876 : vec2<f32> = vec2<f32>(x_3875.x, x_3875.y);
            let x_3878 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3876.x, x_3876.y, x_3878);
            let x_3885 : vec3<f32> = txVec46;
            let x_3887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3885.xy, x_3885.z);
            u_xlat88 = x_3887;
            let x_3889 : f32 = u_xlat23.w;
            let x_3890 : f32 = u_xlat88;
            let x_3892 : f32 = u_xlat86;
            u_xlat86 = ((x_3889 * x_3890) + x_3892);
            let x_3895 : vec4<f32> = u_xlat19;
            let x_3896 : vec2<f32> = vec2<f32>(x_3895.x, x_3895.y);
            let x_3898 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3896.x, x_3896.y, x_3898);
            let x_3905 : vec3<f32> = txVec47;
            let x_3907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3905.xy, x_3905.z);
            u_xlat88 = x_3907;
            let x_3909 : f32 = u_xlat24.x;
            let x_3910 : f32 = u_xlat88;
            let x_3912 : f32 = u_xlat86;
            u_xlat86 = ((x_3909 * x_3910) + x_3912);
            let x_3915 : vec4<f32> = u_xlat19;
            let x_3916 : vec2<f32> = vec2<f32>(x_3915.z, x_3915.w);
            let x_3918 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3916.x, x_3916.y, x_3918);
            let x_3925 : vec3<f32> = txVec48;
            let x_3927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3925.xy, x_3925.z);
            u_xlat88 = x_3927;
            let x_3929 : f32 = u_xlat24.y;
            let x_3930 : f32 = u_xlat88;
            let x_3932 : f32 = u_xlat86;
            u_xlat86 = ((x_3929 * x_3930) + x_3932);
            let x_3935 : vec4<f32> = u_xlat20;
            let x_3936 : vec2<f32> = vec2<f32>(x_3935.x, x_3935.y);
            let x_3938 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3936.x, x_3936.y, x_3938);
            let x_3945 : vec3<f32> = txVec49;
            let x_3947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3945.xy, x_3945.z);
            u_xlat88 = x_3947;
            let x_3949 : f32 = u_xlat24.z;
            let x_3950 : f32 = u_xlat88;
            let x_3952 : f32 = u_xlat86;
            u_xlat86 = ((x_3949 * x_3950) + x_3952);
            let x_3955 : vec4<f32> = u_xlat21;
            let x_3956 : vec2<f32> = vec2<f32>(x_3955.z, x_3955.w);
            let x_3958 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3956.x, x_3956.y, x_3958);
            let x_3965 : vec3<f32> = txVec50;
            let x_3967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3965.xy, x_3965.z);
            u_xlat88 = x_3967;
            let x_3969 : f32 = u_xlat24.w;
            let x_3970 : f32 = u_xlat88;
            let x_3972 : f32 = u_xlat86;
            u_xlat86 = ((x_3969 * x_3970) + x_3972);
            let x_3975 : vec4<f32> = u_xlat22;
            let x_3976 : vec2<f32> = vec2<f32>(x_3975.x, x_3975.y);
            let x_3978 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3976.x, x_3976.y, x_3978);
            let x_3985 : vec3<f32> = txVec51;
            let x_3987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3985.xy, x_3985.z);
            u_xlat88 = x_3987;
            let x_3989 : f32 = u_xlat25.x;
            let x_3990 : f32 = u_xlat88;
            let x_3992 : f32 = u_xlat86;
            u_xlat86 = ((x_3989 * x_3990) + x_3992);
            let x_3995 : vec4<f32> = u_xlat22;
            let x_3996 : vec2<f32> = vec2<f32>(x_3995.z, x_3995.w);
            let x_3998 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3996.x, x_3996.y, x_3998);
            let x_4005 : vec3<f32> = txVec52;
            let x_4007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4005.xy, x_4005.z);
            u_xlat88 = x_4007;
            let x_4009 : f32 = u_xlat25.y;
            let x_4010 : f32 = u_xlat88;
            let x_4012 : f32 = u_xlat86;
            u_xlat86 = ((x_4009 * x_4010) + x_4012);
            let x_4015 : vec2<f32> = u_xlat40;
            let x_4017 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4015.x, x_4015.y, x_4017);
            let x_4024 : vec3<f32> = txVec53;
            let x_4026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4024.xy, x_4024.z);
            u_xlat88 = x_4026;
            let x_4028 : f32 = u_xlat25.z;
            let x_4029 : f32 = u_xlat88;
            let x_4031 : f32 = u_xlat86;
            u_xlat86 = ((x_4028 * x_4029) + x_4031);
            let x_4034 : vec2<f32> = u_xlat72;
            let x_4036 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4034.x, x_4034.y, x_4036);
            let x_4043 : vec3<f32> = txVec54;
            let x_4045 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4043.xy, x_4043.z);
            u_xlat88 = x_4045;
            let x_4047 : f32 = u_xlat25.w;
            let x_4048 : f32 = u_xlat88;
            let x_4050 : f32 = u_xlat86;
            u_xlat86 = ((x_4047 * x_4048) + x_4050);
            let x_4053 : vec4<f32> = u_xlat17;
            let x_4054 : vec2<f32> = vec2<f32>(x_4053.x, x_4053.y);
            let x_4056 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4054.x, x_4054.y, x_4056);
            let x_4063 : vec3<f32> = txVec55;
            let x_4065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4063.xy, x_4063.z);
            u_xlat88 = x_4065;
            let x_4067 : f32 = u_xlat13.x;
            let x_4068 : f32 = u_xlat88;
            let x_4070 : f32 = u_xlat86;
            u_xlat86 = ((x_4067 * x_4068) + x_4070);
            let x_4073 : vec4<f32> = u_xlat17;
            let x_4074 : vec2<f32> = vec2<f32>(x_4073.z, x_4073.w);
            let x_4076 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4074.x, x_4074.y, x_4076);
            let x_4083 : vec3<f32> = txVec56;
            let x_4085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4083.xy, x_4083.z);
            u_xlat88 = x_4085;
            let x_4087 : f32 = u_xlat13.y;
            let x_4088 : f32 = u_xlat88;
            let x_4090 : f32 = u_xlat86;
            u_xlat86 = ((x_4087 * x_4088) + x_4090);
            let x_4093 : vec2<f32> = u_xlat67;
            let x_4095 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4093.x, x_4093.y, x_4095);
            let x_4102 : vec3<f32> = txVec57;
            let x_4104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4102.xy, x_4102.z);
            u_xlat88 = x_4104;
            let x_4106 : f32 = u_xlat13.z;
            let x_4107 : f32 = u_xlat88;
            let x_4109 : f32 = u_xlat86;
            u_xlat86 = ((x_4106 * x_4107) + x_4109);
            let x_4112 : vec4<f32> = u_xlat12;
            let x_4113 : vec2<f32> = vec2<f32>(x_4112.x, x_4112.y);
            let x_4115 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4113.x, x_4113.y, x_4115);
            let x_4122 : vec3<f32> = txVec58;
            let x_4124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4122.xy, x_4122.z);
            u_xlat88 = x_4124;
            let x_4126 : f32 = u_xlat13.w;
            let x_4127 : f32 = u_xlat88;
            let x_4129 : f32 = u_xlat86;
            u_xlat85 = ((x_4126 * x_4127) + x_4129);
          }
        }
      } else {
        let x_4133 : vec4<f32> = u_xlat11;
        let x_4134 : vec2<f32> = vec2<f32>(x_4133.x, x_4133.y);
        let x_4136 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4134.x, x_4134.y, x_4136);
        let x_4143 : vec3<f32> = txVec59;
        let x_4145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4143.xy, x_4143.z);
        u_xlat85 = x_4145;
      }
      let x_4146 : i32 = u_xlati55;
      let x_4148 : f32 = x_592.x_AdditionalShadowParams[x_4146].x;
      u_xlat86 = (1.0f + -(x_4148));
      let x_4151 : f32 = u_xlat85;
      let x_4152 : i32 = u_xlati55;
      let x_4154 : f32 = x_592.x_AdditionalShadowParams[x_4152].x;
      let x_4156 : f32 = u_xlat86;
      u_xlat85 = ((x_4151 * x_4154) + x_4156);
      let x_4159 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4159);
      let x_4163 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4163 >= 1.0f);
      let x_4165 : bool = u_xlatb86;
      let x_4166 : bool = u_xlatb88;
      u_xlatb86 = (x_4165 | x_4166);
      let x_4168 : bool = u_xlatb86;
      let x_4169 : f32 = u_xlat85;
      u_xlat85 = select(x_4169, 1.0f, x_4168);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4172 : f32 = u_xlat85;
    u_xlat86 = (-(x_4172) + 1.0f);
    let x_4175 : f32 = u_xlat52;
    let x_4176 : f32 = u_xlat86;
    let x_4178 : f32 = u_xlat85;
    u_xlat85 = ((x_4175 * x_4176) + x_4178);
    let x_4181 : i32 = u_xlati55;
    u_xlati86 = (1i << bitcast<u32>((x_4181 & 31i)));
    let x_4184 : i32 = u_xlati86;
    let x_4187 : f32 = x_2273.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4184) & bitcast<u32>(x_4187)));
    let x_4191 : i32 = u_xlati86;
    if ((x_4191 != 0i)) {
      let x_4195 : i32 = u_xlati55;
      let x_4197 : f32 = x_2273.x_AdditionalLightsLightTypes[x_4195].el;
      u_xlati86 = i32(x_4197);
      let x_4200 : i32 = u_xlati86;
      u_xlati88 = select(1i, 0i, (x_4200 != 0i));
      let x_4204 : i32 = u_xlati55;
      u_xlati11 = (x_4204 << bitcast<u32>(2i));
      let x_4206 : i32 = u_xlati88;
      if ((x_4206 != 0i)) {
        let x_4211 : vec3<f32> = vs_TEXCOORD7;
        let x_4213 : i32 = u_xlati11;
        let x_4216 : i32 = u_xlati11;
        let x_4220 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4213 + 1i) / 4i)][((x_4216 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4211.y, x_4211.y, x_4211.y) * vec3<f32>(x_4220.x, x_4220.y, x_4220.w));
        let x_4223 : i32 = u_xlati11;
        let x_4225 : i32 = u_xlati11;
        let x_4228 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[(x_4223 / 4i)][(x_4225 % 4i)];
        let x_4230 : vec3<f32> = vs_TEXCOORD7;
        let x_4233 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4228.x, x_4228.y, x_4228.w) * vec3<f32>(x_4230.x, x_4230.x, x_4230.x)) + x_4233);
        let x_4235 : i32 = u_xlati11;
        let x_4238 : i32 = u_xlati11;
        let x_4242 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4235 + 2i) / 4i)][((x_4238 + 2i) % 4i)];
        let x_4244 : vec3<f32> = vs_TEXCOORD7;
        let x_4247 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4242.x, x_4242.y, x_4242.w) * vec3<f32>(x_4244.z, x_4244.z, x_4244.z)) + x_4247);
        let x_4249 : vec3<f32> = u_xlat37;
        let x_4250 : i32 = u_xlati11;
        let x_4253 : i32 = u_xlati11;
        let x_4257 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4250 + 3i) / 4i)][((x_4253 + 3i) % 4i)];
        u_xlat37 = (x_4249 + vec3<f32>(x_4257.x, x_4257.y, x_4257.w));
        let x_4260 : vec3<f32> = u_xlat37;
        let x_4262 : vec3<f32> = u_xlat37;
        let x_4264 : vec2<f32> = (vec2<f32>(x_4260.x, x_4260.y) / vec2<f32>(x_4262.z, x_4262.z));
        let x_4265 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4264.x, x_4264.y, x_4265.z);
        let x_4267 : vec3<f32> = u_xlat37;
        let x_4270 : vec2<f32> = ((vec2<f32>(x_4267.x, x_4267.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4271 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4270.x, x_4270.y, x_4271.z);
        let x_4273 : vec3<f32> = u_xlat37;
        let x_4277 : vec2<f32> = clamp(vec2<f32>(x_4273.x, x_4273.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4278 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4277.x, x_4277.y, x_4278.z);
        let x_4280 : i32 = u_xlati55;
        let x_4282 : vec4<f32> = x_2273.x_AdditionalLightsCookieAtlasUVRects[x_4280];
        let x_4284 : vec3<f32> = u_xlat37;
        let x_4287 : i32 = u_xlati55;
        let x_4289 : vec4<f32> = x_2273.x_AdditionalLightsCookieAtlasUVRects[x_4287];
        let x_4291 : vec2<f32> = ((vec2<f32>(x_4282.x, x_4282.y) * vec2<f32>(x_4284.x, x_4284.y)) + vec2<f32>(x_4289.z, x_4289.w));
        let x_4292 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4291.x, x_4291.y, x_4292.z);
      } else {
        let x_4295 : i32 = u_xlati86;
        u_xlatb86 = (x_4295 == 1i);
        let x_4297 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4297);
        let x_4299 : i32 = u_xlati86;
        if ((x_4299 != 0i)) {
          let x_4303 : vec3<f32> = vs_TEXCOORD7;
          let x_4305 : i32 = u_xlati11;
          let x_4308 : i32 = u_xlati11;
          let x_4312 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4305 + 1i) / 4i)][((x_4308 + 1i) % 4i)];
          let x_4314 : vec2<f32> = (vec2<f32>(x_4303.y, x_4303.y) * vec2<f32>(x_4312.x, x_4312.y));
          let x_4315 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4314.x, x_4314.y, x_4315.z, x_4315.w);
          let x_4317 : i32 = u_xlati11;
          let x_4319 : i32 = u_xlati11;
          let x_4322 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[(x_4317 / 4i)][(x_4319 % 4i)];
          let x_4324 : vec3<f32> = vs_TEXCOORD7;
          let x_4327 : vec4<f32> = u_xlat12;
          let x_4329 : vec2<f32> = ((vec2<f32>(x_4322.x, x_4322.y) * vec2<f32>(x_4324.x, x_4324.x)) + vec2<f32>(x_4327.x, x_4327.y));
          let x_4330 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4329.x, x_4329.y, x_4330.z, x_4330.w);
          let x_4332 : i32 = u_xlati11;
          let x_4335 : i32 = u_xlati11;
          let x_4339 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4332 + 2i) / 4i)][((x_4335 + 2i) % 4i)];
          let x_4341 : vec3<f32> = vs_TEXCOORD7;
          let x_4344 : vec4<f32> = u_xlat12;
          let x_4346 : vec2<f32> = ((vec2<f32>(x_4339.x, x_4339.y) * vec2<f32>(x_4341.z, x_4341.z)) + vec2<f32>(x_4344.x, x_4344.y));
          let x_4347 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4346.x, x_4346.y, x_4347.z, x_4347.w);
          let x_4349 : vec4<f32> = u_xlat12;
          let x_4351 : i32 = u_xlati11;
          let x_4354 : i32 = u_xlati11;
          let x_4358 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4351 + 3i) / 4i)][((x_4354 + 3i) % 4i)];
          let x_4360 : vec2<f32> = (vec2<f32>(x_4349.x, x_4349.y) + vec2<f32>(x_4358.x, x_4358.y));
          let x_4361 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4360.x, x_4360.y, x_4361.z, x_4361.w);
          let x_4363 : vec4<f32> = u_xlat12;
          let x_4366 : vec2<f32> = ((vec2<f32>(x_4363.x, x_4363.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4367 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4366.x, x_4366.y, x_4367.z, x_4367.w);
          let x_4369 : vec4<f32> = u_xlat12;
          let x_4371 : vec2<f32> = fract(vec2<f32>(x_4369.x, x_4369.y));
          let x_4372 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4371.x, x_4371.y, x_4372.z, x_4372.w);
          let x_4374 : i32 = u_xlati55;
          let x_4376 : vec4<f32> = x_2273.x_AdditionalLightsCookieAtlasUVRects[x_4374];
          let x_4378 : vec4<f32> = u_xlat12;
          let x_4381 : i32 = u_xlati55;
          let x_4383 : vec4<f32> = x_2273.x_AdditionalLightsCookieAtlasUVRects[x_4381];
          let x_4385 : vec2<f32> = ((vec2<f32>(x_4376.x, x_4376.y) * vec2<f32>(x_4378.x, x_4378.y)) + vec2<f32>(x_4383.z, x_4383.w));
          let x_4386 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4385.x, x_4385.y, x_4386.z);
        } else {
          let x_4389 : vec3<f32> = vs_TEXCOORD7;
          let x_4391 : i32 = u_xlati11;
          let x_4394 : i32 = u_xlati11;
          let x_4398 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4391 + 1i) / 4i)][((x_4394 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4389.y, x_4389.y, x_4389.y, x_4389.y) * x_4398);
          let x_4400 : i32 = u_xlati11;
          let x_4402 : i32 = u_xlati11;
          let x_4405 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[(x_4400 / 4i)][(x_4402 % 4i)];
          let x_4406 : vec3<f32> = vs_TEXCOORD7;
          let x_4409 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4405 * vec4<f32>(x_4406.x, x_4406.x, x_4406.x, x_4406.x)) + x_4409);
          let x_4411 : i32 = u_xlati11;
          let x_4414 : i32 = u_xlati11;
          let x_4418 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4411 + 2i) / 4i)][((x_4414 + 2i) % 4i)];
          let x_4419 : vec3<f32> = vs_TEXCOORD7;
          let x_4422 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4418 * vec4<f32>(x_4419.z, x_4419.z, x_4419.z, x_4419.z)) + x_4422);
          let x_4424 : vec4<f32> = u_xlat12;
          let x_4425 : i32 = u_xlati11;
          let x_4428 : i32 = u_xlati11;
          let x_4432 : vec4<f32> = x_2273.x_AdditionalLightsWorldToLights[((x_4425 + 3i) / 4i)][((x_4428 + 3i) % 4i)];
          u_xlat12 = (x_4424 + x_4432);
          let x_4434 : vec4<f32> = u_xlat12;
          let x_4436 : vec4<f32> = u_xlat12;
          let x_4438 : vec3<f32> = (vec3<f32>(x_4434.x, x_4434.y, x_4434.z) / vec3<f32>(x_4436.w, x_4436.w, x_4436.w));
          let x_4439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4438.x, x_4438.y, x_4438.z, x_4439.w);
          let x_4441 : vec4<f32> = u_xlat12;
          let x_4443 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4441.x, x_4441.y, x_4441.z), vec3<f32>(x_4443.x, x_4443.y, x_4443.z));
          let x_4446 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4446);
          let x_4448 : f32 = u_xlat86;
          let x_4450 : vec4<f32> = u_xlat12;
          let x_4452 : vec3<f32> = (vec3<f32>(x_4448, x_4448, x_4448) * vec3<f32>(x_4450.x, x_4450.y, x_4450.z));
          let x_4453 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4452.x, x_4452.y, x_4452.z, x_4453.w);
          let x_4455 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4455.x, x_4455.y, x_4455.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4460 : f32 = u_xlat86;
          u_xlat86 = max(x_4460, 0.00000099999999747524f);
          let x_4463 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4463);
          let x_4465 : f32 = u_xlat86;
          let x_4467 : vec4<f32> = u_xlat12;
          let x_4469 : vec3<f32> = (vec3<f32>(x_4465, x_4465, x_4465) * vec3<f32>(x_4467.z, x_4467.x, x_4467.y));
          let x_4470 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4469.x, x_4469.y, x_4469.z, x_4470.w);
          let x_4473 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4473);
          let x_4477 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4477, 0.0f, 1.0f);
          let x_4480 : vec4<f32> = u_xlat13;
          let x_4482 : vec4<bool> = (vec4<f32>(x_4480.y, x_4480.y, x_4480.y, x_4480.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4483 : vec2<bool> = vec2<bool>(x_4482.x, x_4482.w);
          let x_4484 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4483.x, x_4484.y, x_4484.z, x_4483.y);
          let x_4487 : bool = u_xlatb11.x;
          if (x_4487) {
            let x_4492 : f32 = u_xlat13.x;
            x_4488 = x_4492;
          } else {
            let x_4495 : f32 = u_xlat13.x;
            x_4488 = -(x_4495);
          }
          let x_4497 : f32 = x_4488;
          u_xlat11.x = x_4497;
          let x_4500 : bool = u_xlatb11.w;
          if (x_4500) {
            let x_4505 : f32 = u_xlat13.x;
            x_4501 = x_4505;
          } else {
            let x_4508 : f32 = u_xlat13.x;
            x_4501 = -(x_4508);
          }
          let x_4510 : f32 = x_4501;
          u_xlat11.w = x_4510;
          let x_4512 : vec4<f32> = u_xlat12;
          let x_4514 : f32 = u_xlat86;
          let x_4517 : vec4<f32> = u_xlat11;
          let x_4519 : vec2<f32> = ((vec2<f32>(x_4512.x, x_4512.y) * vec2<f32>(x_4514, x_4514)) + vec2<f32>(x_4517.x, x_4517.w));
          let x_4520 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4519.x, x_4520.y, x_4520.z, x_4519.y);
          let x_4522 : vec4<f32> = u_xlat11;
          let x_4525 : vec2<f32> = ((vec2<f32>(x_4522.x, x_4522.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4526 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4525.x, x_4526.y, x_4526.z, x_4525.y);
          let x_4528 : vec4<f32> = u_xlat11;
          let x_4532 : vec2<f32> = clamp(vec2<f32>(x_4528.x, x_4528.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4533 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4532.x, x_4533.y, x_4533.z, x_4532.y);
          let x_4535 : i32 = u_xlati55;
          let x_4537 : vec4<f32> = x_2273.x_AdditionalLightsCookieAtlasUVRects[x_4535];
          let x_4539 : vec4<f32> = u_xlat11;
          let x_4542 : i32 = u_xlati55;
          let x_4544 : vec4<f32> = x_2273.x_AdditionalLightsCookieAtlasUVRects[x_4542];
          let x_4546 : vec2<f32> = ((vec2<f32>(x_4537.x, x_4537.y) * vec2<f32>(x_4539.x, x_4539.w)) + vec2<f32>(x_4544.z, x_4544.w));
          let x_4547 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4546.x, x_4546.y, x_4547.z);
        }
      }
      let x_4554 : vec3<f32> = u_xlat37;
      let x_4556 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4554.x, x_4554.y), 0.0f);
      u_xlat11 = x_4556;
      let x_4558 : bool = u_xlatb3.y;
      if (x_4558) {
        let x_4563 : f32 = u_xlat11.w;
        x_4559 = x_4563;
      } else {
        let x_4566 : f32 = u_xlat11.x;
        x_4559 = x_4566;
      }
      let x_4567 : f32 = x_4559;
      u_xlat86 = x_4567;
      let x_4569 : bool = u_xlatb3.x;
      if (x_4569) {
        let x_4573 : vec4<f32> = u_xlat11;
        x_4570 = vec3<f32>(x_4573.x, x_4573.y, x_4573.z);
      } else {
        let x_4576 : f32 = u_xlat86;
        x_4570 = vec3<f32>(x_4576, x_4576, x_4576);
      }
      let x_4578 : vec3<f32> = x_4570;
      let x_4579 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4578.x, x_4578.y, x_4578.z, x_4579.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4585 : vec4<f32> = u_xlat11;
    let x_4587 : i32 = u_xlati55;
    let x_4589 : vec4<f32> = x_2771.x_AdditionalLightsColor[x_4587];
    let x_4591 : vec3<f32> = (vec3<f32>(x_4585.x, x_4585.y, x_4585.z) * vec3<f32>(x_4589.x, x_4589.y, x_4589.z));
    let x_4592 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4591.x, x_4591.y, x_4591.z, x_4592.w);
    let x_4594 : f32 = u_xlat83;
    let x_4595 : f32 = u_xlat85;
    u_xlat55 = (x_4594 * x_4595);
    let x_4597 : vec4<f32> = u_xlat2;
    let x_4599 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4597.x, x_4597.y, x_4597.z), vec3<f32>(x_4599.x, x_4599.y, x_4599.z));
    let x_4602 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4602, 0.0f, 1.0f);
    let x_4604 : f32 = u_xlat55;
    let x_4605 : f32 = u_xlat83;
    u_xlat55 = (x_4604 * x_4605);
    let x_4607 : f32 = u_xlat55;
    let x_4609 : vec4<f32> = u_xlat11;
    let x_4611 : vec3<f32> = (vec3<f32>(x_4607, x_4607, x_4607) * vec3<f32>(x_4609.x, x_4609.y, x_4609.z));
    let x_4612 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4611.x, x_4611.y, x_4611.z, x_4612.w);
    let x_4614 : vec3<f32> = u_xlat35;
    let x_4615 : f32 = u_xlat84;
    let x_4618 : vec4<f32> = u_xlat1;
    u_xlat35 = ((x_4614 * vec3<f32>(x_4615, x_4615, x_4615)) + vec3<f32>(x_4618.x, x_4618.y, x_4618.z));
    let x_4621 : vec3<f32> = u_xlat35;
    let x_4622 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(x_4621, x_4622);
    let x_4624 : f32 = u_xlat55;
    u_xlat55 = max(x_4624, 1.17549435e-38f);
    let x_4626 : f32 = u_xlat55;
    u_xlat55 = inverseSqrt(x_4626);
    let x_4628 : f32 = u_xlat55;
    let x_4630 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4628, x_4628, x_4628) * x_4630);
    let x_4632 : vec4<f32> = u_xlat2;
    let x_4634 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(vec3<f32>(x_4632.x, x_4632.y, x_4632.z), x_4634);
    let x_4636 : f32 = u_xlat55;
    u_xlat55 = clamp(x_4636, 0.0f, 1.0f);
    let x_4638 : vec4<f32> = u_xlat10;
    let x_4640 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_4638.x, x_4638.y, x_4638.z), x_4640);
    let x_4642 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4642, 0.0f, 1.0f);
    let x_4644 : f32 = u_xlat55;
    let x_4645 : f32 = u_xlat55;
    u_xlat55 = (x_4644 * x_4645);
    let x_4647 : f32 = u_xlat55;
    let x_4649 : f32 = u_xlat9.x;
    u_xlat55 = ((x_4647 * x_4649) + 1.00001001358032226562f);
    let x_4652 : f32 = u_xlat83;
    let x_4653 : f32 = u_xlat83;
    u_xlat83 = (x_4652 * x_4653);
    let x_4655 : f32 = u_xlat55;
    let x_4656 : f32 = u_xlat55;
    u_xlat55 = (x_4655 * x_4656);
    let x_4658 : f32 = u_xlat83;
    u_xlat83 = max(x_4658, 0.10000000149011611938f);
    let x_4660 : f32 = u_xlat55;
    let x_4661 : f32 = u_xlat83;
    u_xlat55 = (x_4660 * x_4661);
    let x_4663 : f32 = u_xlat81;
    let x_4664 : f32 = u_xlat55;
    u_xlat55 = (x_4663 * x_4664);
    let x_4666 : f32 = u_xlat82;
    let x_4667 : f32 = u_xlat55;
    u_xlat55 = (x_4666 / x_4667);
    let x_4669 : vec4<f32> = u_xlat5;
    let x_4671 : f32 = u_xlat55;
    let x_4674 : vec4<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4669.x, x_4669.y, x_4669.z) * vec3<f32>(x_4671, x_4671, x_4671)) + vec3<f32>(x_4674.x, x_4674.y, x_4674.z));
    let x_4677 : vec3<f32> = u_xlat35;
    let x_4678 : vec4<f32> = u_xlat11;
    let x_4681 : vec4<f32> = u_xlat8;
    let x_4683 : vec3<f32> = ((x_4677 * vec3<f32>(x_4678.x, x_4678.y, x_4678.z)) + vec3<f32>(x_4681.x, x_4681.y, x_4681.z));
    let x_4684 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4683.x, x_4683.y, x_4683.z, x_4684.w);

    continuing {
      let x_4686 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4686 + bitcast<u32>(1i));
    }
  }
  let x_4688 : vec4<f32> = u_xlat4;
  let x_4690 : f32 = u_xlat26;
  let x_4693 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4688.x, x_4688.y, x_4688.z) * vec3<f32>(x_4690, x_4690, x_4690)) + vec3<f32>(x_4693.x, x_4693.y, x_4693.z));
  let x_4696 : vec4<f32> = u_xlat8;
  let x_4698 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4696.x, x_4696.y, x_4696.z) + x_4698);
  let x_4700 : f32 = u_xlat78;
  let x_4702 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4700, x_4700, x_4700) * x_4702);
  let x_4704 : f32 = u_xlat79;
  let x_4705 : f32 = u_xlat79;
  u_xlat78 = (x_4704 * -(x_4705));
  let x_4708 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4708);
  let x_4712 : vec3<f32> = u_xlat0;
  let x_4713 : f32 = u_xlat78;
  let x_4715 : vec3<f32> = (x_4712 * vec3<f32>(x_4713, x_4713, x_4713));
  let x_4716 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4715.x, x_4715.y, x_4715.z, x_4716.w);
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


