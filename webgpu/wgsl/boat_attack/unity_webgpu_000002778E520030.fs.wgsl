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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

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

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_594 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat80 : f32;

var<private> u_xlatu80 : u32;

var<private> u_xlati80 : i32;

@group(1) @binding(2) var<uniform> x_781 : UnityPerDraw;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2208 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu55 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati55 : i32;

@group(1) @binding(1) var<uniform> x_2702 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu79 : u32;

fn main_1() {
  var x_537 : f32;
  var x_548 : f32;
  var x_560 : f32;
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
  var x_2161 : f32;
  var x_2291 : f32;
  var x_2302 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2830 : f32;
  var x_2840 : f32;
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
  var x_4410 : f32;
  var x_4423 : f32;
  var x_4471 : f32;
  var x_4482 : vec3<f32>;
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
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_117 : f32 = x_111.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_117);
  u_xlat4 = x_118;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_132 : vec4<f32> = vs_TEXCOORD1;
  let x_135 : f32 = x_111.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_132.x, x_132.y), x_135);
  u_xlat5 = x_136;
  let x_142 : vec4<f32> = vs_TEXCOORD1;
  let x_145 : f32 = x_111.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_142.z, x_142.w), x_145);
  u_xlat6 = x_146;
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_156 : f32 = x_111.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_153.x, x_153.y), x_156);
  u_xlat7 = x_157;
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : f32 = x_111.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat8 = x_167;
  let x_171 : f32 = u_xlat5.w;
  u_xlat9.x = x_171;
  let x_174 : f32 = u_xlat6.w;
  u_xlat9.y = x_174;
  let x_178 : f32 = u_xlat7.w;
  u_xlat9.z = x_178;
  let x_182 : f32 = u_xlat8.w;
  u_xlat9.w = x_182;
  let x_185 : vec4<f32> = u_xlat9;
  let x_188 : f32 = x_13.x_Smoothness0;
  let x_191 : f32 = x_13.x_Smoothness1;
  let x_194 : f32 = x_13.x_Smoothness2;
  let x_197 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_185 * vec4<f32>(x_188, x_191, x_194, x_197));
  let x_206 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_206);
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat9;
  let x_213 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_225 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_229);
  let x_232 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_232 + -(x_233));
  let x_238 : f32 = u_xlat12.x;
  let x_241 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_238 * x_241);
  let x_245 : f32 = u_xlat12.y;
  let x_248 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_245 * x_248);
  let x_252 : f32 = u_xlat12.z;
  let x_255 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.w;
  let x_262 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_259 * x_262);
  let x_265 : vec4<f32> = u_xlat11;
  let x_266 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_265 + x_266);
  let x_268 : bool = u_xlatb79;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_277 : f32 = u_xlat79;
  u_xlat79 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat79;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat27;
  let x_524 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat27;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat27 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_535 : bool = u_xlatb1;
  if (x_535) {
    let x_541 : f32 = u_xlat27.x;
    x_537 = x_541;
  } else {
    let x_544 : f32 = x_111.unity_MatrixV[0i].z;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat2.x = x_545;
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat27.y;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_111.unity_MatrixV[1i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.y = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat27.z;
    x_560 = x_564;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[2i].z;
    x_560 = x_568;
  }
  let x_569 : f32 = x_560;
  u_xlat2.z = x_569;
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_577);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.x, x_580.x) * x_582);
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = vs_TEXCOORD7;
  let x_596 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres0;
  let x_599 : vec3<f32> = (x_586 + -(vec3<f32>(x_596.x, x_596.y, x_596.z)));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres1;
  let x_607 : vec3<f32> = (x_602 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_613 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres2;
  let x_616 : vec3<f32> = (x_610 + -(vec3<f32>(x_613.x, x_613.y, x_613.z)));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_594.x_CascadeShadowSplitSpheres3;
  let x_624 : vec3<f32> = (x_619 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat3;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec4<f32> = x_594.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_653 < x_655);
  let x_658 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_658);
  let x_662 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_662);
  let x_666 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_674);
  let x_679 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_679);
  let x_683 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_683);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec4<f32> = u_xlat4;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(x_688.y, x_688.z, x_688.w));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : vec3<f32> = max(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_697.x, x_696.x, x_696.y, x_696.z);
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_700, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_705 : f32 = u_xlat80;
  u_xlat80 = (-(x_705) + 4.0f);
  let x_710 : f32 = u_xlat80;
  u_xlatu80 = u32(x_710);
  let x_714 : u32 = u_xlatu80;
  u_xlati80 = (bitcast<i32>(x_714) << bitcast<u32>(2i));
  let x_717 : vec3<f32> = vs_TEXCOORD7;
  let x_719 : i32 = u_xlati80;
  let x_722 : i32 = u_xlati80;
  let x_726 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
  let x_728 : vec3<f32> = (vec3<f32>(x_717.y, x_717.y, x_717.y) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati80;
  let x_733 : i32 = u_xlati80;
  let x_736 : vec4<f32> = x_594.x_MainLightWorldToShadow[(x_731 / 4i)][(x_733 % 4i)];
  let x_738 : vec3<f32> = vs_TEXCOORD7;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati80;
  let x_749 : i32 = u_xlati80;
  let x_753 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
  let x_755 : vec3<f32> = vs_TEXCOORD7;
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.z, x_755.z, x_755.z)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : i32 = u_xlati80;
  let x_768 : i32 = u_xlati80;
  let x_772 : vec4<f32> = x_594.x_MainLightWorldToShadow[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
  let x_774 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  u_xlat1.w = 1.0f;
  let x_783 : vec4<f32> = x_781.unity_SHAr;
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_783, x_784);
  let x_788 : vec4<f32> = x_781.unity_SHAg;
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_788, x_789);
  let x_793 : vec4<f32> = x_781.unity_SHAb;
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_793, x_794);
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_797.y, x_797.z, x_797.z, x_797.x) * vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.z));
  let x_803 : vec4<f32> = x_781.unity_SHBr;
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_803, x_804);
  let x_808 : vec4<f32> = x_781.unity_SHBg;
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_808, x_809);
  let x_813 : vec4<f32> = x_781.unity_SHBb;
  let x_814 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_813, x_814);
  let x_818 : f32 = u_xlat1.y;
  let x_820 : f32 = u_xlat1.y;
  u_xlat79 = (x_818 * x_820);
  let x_823 : f32 = u_xlat1.x;
  let x_825 : f32 = u_xlat1.x;
  let x_827 : f32 = u_xlat79;
  u_xlat79 = ((x_823 * x_825) + -(x_827));
  let x_832 : vec4<f32> = x_781.unity_SHC;
  let x_834 : f32 = u_xlat79;
  let x_837 : vec4<f32> = u_xlat7;
  let x_839 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834, x_834, x_834)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat4;
  let x_844 : vec4<f32> = u_xlat6;
  let x_846 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat4;
  let x_851 : vec3<f32> = max(vec3<f32>(x_849.x, x_849.y, x_849.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_855) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_860 : f32 = u_xlat79;
  u_xlat80 = (-(x_860) + 1.0f);
  let x_863 : f32 = u_xlat79;
  let x_865 : vec4<f32> = u_xlat5;
  let x_867 : vec3<f32> = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.y, x_870.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec3<f32> = u_xlat0;
  let x_879 : vec4<f32> = u_xlat5;
  let x_884 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_885 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : f32 = u_xlat52;
  u_xlat0.x = (-(x_887) + 1.0f);
  let x_892 : f32 = u_xlat0.x;
  let x_894 : f32 = u_xlat0.x;
  u_xlat79 = (x_892 * x_894);
  let x_896 : f32 = u_xlat79;
  u_xlat79 = max(x_896, 0.0078125f);
  let x_900 : f32 = u_xlat79;
  let x_901 : f32 = u_xlat79;
  u_xlat81 = (x_900 * x_901);
  let x_903 : f32 = u_xlat52;
  let x_904 : f32 = u_xlat80;
  u_xlat52 = (x_903 + x_904);
  let x_906 : f32 = u_xlat52;
  u_xlat52 = clamp(x_906, 0.0f, 1.0f);
  let x_908 : f32 = u_xlat79;
  u_xlat80 = ((x_908 * 4.0f) + 2.0f);
  let x_911 : f32 = u_xlat26;
  u_xlat26 = min(x_911, 1.0f);
  let x_915 : f32 = x_594.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_915);
  let x_917 : bool = u_xlatb82;
  if (x_917) {
    let x_921 : f32 = x_594.x_MainLightShadowParams.y;
    u_xlatb82 = (x_921 == 1.0f);
    let x_923 : bool = u_xlatb82;
    if (x_923) {
      let x_926 : vec4<f32> = u_xlat3;
      let x_929 : vec4<f32> = x_594.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_926.x, x_926.y, x_926.x, x_926.y) + x_929);
      let x_933 : vec4<f32> = u_xlat7;
      let x_934 : vec2<f32> = vec2<f32>(x_933.x, x_933.y);
      let x_936 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_934.x, x_934.y, x_936);
      let x_948 : vec3<f32> = txVec0;
      let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_948.xy, x_948.z);
      u_xlat8.x = x_950;
      let x_953 : vec4<f32> = u_xlat7;
      let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
      let x_956 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_954.x, x_954.y, x_956);
      let x_963 : vec3<f32> = txVec1;
      let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
      u_xlat8.y = x_965;
      let x_967 : vec4<f32> = u_xlat3;
      let x_970 : vec4<f32> = x_594.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.y) + x_970);
      let x_973 : vec4<f32> = u_xlat7;
      let x_974 : vec2<f32> = vec2<f32>(x_973.x, x_973.y);
      let x_976 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_974.x, x_974.y, x_976);
      let x_983 : vec3<f32> = txVec2;
      let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
      u_xlat8.z = x_985;
      let x_988 : vec4<f32> = u_xlat7;
      let x_989 : vec2<f32> = vec2<f32>(x_988.z, x_988.w);
      let x_991 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_989.x, x_989.y, x_991);
      let x_998 : vec3<f32> = txVec3;
      let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
      u_xlat8.w = x_1000;
      let x_1003 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_1003, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1010 : f32 = x_594.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1010 == 2.0f);
      let x_1012 : bool = u_xlatb83;
      if (x_1012) {
        let x_1015 : vec4<f32> = u_xlat3;
        let x_1018 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1021 : vec2<f32> = ((vec2<f32>(x_1015.x, x_1015.y) * vec2<f32>(x_1018.z, x_1018.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1022 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat7;
        let x_1026 : vec2<f32> = floor(vec2<f32>(x_1024.x, x_1024.y));
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1031 : vec4<f32> = u_xlat3;
        let x_1034 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1034.z, x_1034.w)) + -(vec2<f32>(x_1037.x, x_1037.y)));
        let x_1041 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1041.x, x_1041.x, x_1041.y, x_1041.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1045.x, x_1045.x, x_1045.z, x_1045.z) * vec4<f32>(x_1047.x, x_1047.x, x_1047.z, x_1047.z));
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1054 : vec2<f32> = (vec2<f32>(x_1050.y, x_1050.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1060 : vec2<f32> = u_xlat59;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1060));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1066 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1066) + vec2<f32>(1.0f, 1.0f));
        let x_1070 : vec2<f32> = u_xlat59;
        let x_1072 : vec2<f32> = min(x_1070, vec2<f32>(0.0f, 0.0f));
        let x_1073 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat10;
        let x_1078 : vec4<f32> = u_xlat10;
        let x_1081 : vec2<f32> = u_xlat61;
        let x_1082 : vec2<f32> = ((-(vec2<f32>(x_1075.x, x_1075.y)) * vec2<f32>(x_1078.x, x_1078.y)) + x_1081);
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1085, vec2<f32>(0.0f, 0.0f));
        let x_1087 : vec2<f32> = u_xlat59;
        let x_1089 : vec2<f32> = u_xlat59;
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1087) * x_1089) + vec2<f32>(x_1091.y, x_1091.w));
        let x_1094 : vec4<f32> = u_xlat10;
        let x_1096 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) + vec2<f32>(1.0f, 1.0f));
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1099 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1099 + vec2<f32>(1.0f, 1.0f));
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec2<f32> = u_xlat61;
        let x_1109 : vec2<f32> = (x_1108 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1114 : vec2<f32> = (vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec2<f32> = u_xlat59;
        let x_1118 : vec2<f32> = (x_1117 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1121.y, x_1121.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1125 : f32 = u_xlat10.x;
        u_xlat11.z = x_1125;
        let x_1128 : f32 = u_xlat59.x;
        u_xlat11.w = x_1128;
        let x_1131 : f32 = u_xlat12.x;
        u_xlat9.z = x_1131;
        let x_1134 : f32 = u_xlat8.x;
        u_xlat9.w = x_1134;
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1138 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1136.z, x_1136.w, x_1136.x, x_1136.z) + vec4<f32>(x_1138.z, x_1138.w, x_1138.x, x_1138.z));
        let x_1142 : f32 = u_xlat11.y;
        u_xlat10.z = x_1142;
        let x_1145 : f32 = u_xlat59.y;
        u_xlat10.w = x_1145;
        let x_1148 : f32 = u_xlat9.y;
        u_xlat12.z = x_1148;
        let x_1151 : f32 = u_xlat8.z;
        u_xlat12.w = x_1151;
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1155 : vec4<f32> = u_xlat12;
        let x_1157 : vec3<f32> = (vec3<f32>(x_1153.z, x_1153.y, x_1153.w) + vec3<f32>(x_1155.z, x_1155.y, x_1155.w));
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1162 : vec4<f32> = u_xlat13;
        let x_1164 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.z, x_1160.w) / vec3<f32>(x_1162.z, x_1162.w, x_1162.y));
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1173 : vec3<f32> = (vec3<f32>(x_1167.x, x_1167.y, x_1167.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat12;
        let x_1178 : vec4<f32> = u_xlat8;
        let x_1180 : vec3<f32> = (vec3<f32>(x_1176.z, x_1176.y, x_1176.w) / vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
        let x_1183 : vec4<f32> = u_xlat10;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.y, x_1183.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1191 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1193 : vec3<f32> = (vec3<f32>(x_1188.y, x_1188.x, x_1188.z) * vec3<f32>(x_1191.x, x_1191.x, x_1191.x));
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
        let x_1196 : vec4<f32> = u_xlat10;
        let x_1199 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1201 : vec3<f32> = (vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(x_1199.y, x_1199.y, x_1199.y));
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1205 : f32 = u_xlat10.x;
        u_xlat9.w = x_1205;
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1210 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.y, x_1213.w, x_1213.x, x_1213.w));
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1219 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.z, x_1222.w));
        let x_1226 : f32 = u_xlat9.y;
        u_xlat10.w = x_1226;
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1229 : vec2<f32> = vec2<f32>(x_1228.y, x_1228.z);
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1230.x, x_1229.x, x_1230.z, x_1229.y);
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1235 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat7;
        let x_1244 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.w, x_1247.y, x_1247.w, x_1247.z));
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1253 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y) * vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y)) + vec4<f32>(x_1256.x, x_1256.w, x_1256.z, x_1256.w));
        let x_1260 : vec4<f32> = u_xlat8;
        let x_1262 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1260.x, x_1260.x, x_1260.x, x_1260.y) * vec4<f32>(x_1262.z, x_1262.w, x_1262.y, x_1262.z));
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1268 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1266.y, x_1266.y, x_1266.z, x_1266.z) * x_1268);
        let x_1272 : f32 = u_xlat8.z;
        let x_1274 : f32 = u_xlat13.y;
        u_xlat83 = (x_1272 * x_1274);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1288 : vec3<f32> = txVec4;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat84 = x_1290;
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.z, x_1292.w);
        let x_1295 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec5;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1302.xy, x_1302.z);
        u_xlat7.x = x_1304;
        let x_1307 : f32 = u_xlat7.x;
        let x_1309 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1307 * x_1309);
        let x_1313 : f32 = u_xlat14.x;
        let x_1314 : f32 = u_xlat84;
        let x_1317 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1313 * x_1314) + x_1317);
        let x_1320 : vec2<f32> = u_xlat59;
        let x_1322 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec6;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat7.x = x_1331;
        let x_1334 : f32 = u_xlat14.z;
        let x_1336 : f32 = u_xlat7.x;
        let x_1338 : f32 = u_xlat84;
        u_xlat84 = ((x_1334 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat10;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec7;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat7.x = x_1353;
        let x_1356 : f32 = u_xlat14.w;
        let x_1358 : f32 = u_xlat7.x;
        let x_1360 : f32 = u_xlat84;
        u_xlat84 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat12;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec8;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat7.x = x_1375;
        let x_1378 : f32 = u_xlat15.x;
        let x_1380 : f32 = u_xlat7.x;
        let x_1382 : f32 = u_xlat84;
        u_xlat84 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat12;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec9;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat7.x = x_1397;
        let x_1400 : f32 = u_xlat15.y;
        let x_1402 : f32 = u_xlat7.x;
        let x_1404 : f32 = u_xlat84;
        u_xlat84 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat10;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec10;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat7.x = x_1419;
        let x_1422 : f32 = u_xlat15.z;
        let x_1424 : f32 = u_xlat7.x;
        let x_1426 : f32 = u_xlat84;
        u_xlat84 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec11;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat7.x = x_1441;
        let x_1444 : f32 = u_xlat15.w;
        let x_1446 : f32 = u_xlat7.x;
        let x_1448 : f32 = u_xlat84;
        u_xlat84 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec12;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat7.x = x_1463;
        let x_1465 : f32 = u_xlat83;
        let x_1467 : f32 = u_xlat7.x;
        let x_1469 : f32 = u_xlat84;
        u_xlat82 = ((x_1465 * x_1467) + x_1469);
      } else {
        let x_1472 : vec4<f32> = u_xlat3;
        let x_1475 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1478 : vec2<f32> = ((vec2<f32>(x_1472.x, x_1472.y) * vec2<f32>(x_1475.z, x_1475.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1479 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat7;
        let x_1483 : vec2<f32> = floor(vec2<f32>(x_1481.x, x_1481.y));
        let x_1484 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1483.x, x_1483.y, x_1484.z, x_1484.w);
        let x_1486 : vec4<f32> = u_xlat3;
        let x_1489 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1486.x, x_1486.y) * vec2<f32>(x_1489.z, x_1489.w)) + -(vec2<f32>(x_1492.x, x_1492.y)));
        let x_1496 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1496.x, x_1496.x, x_1496.y, x_1496.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1499 : vec4<f32> = u_xlat8;
        let x_1501 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1499.x, x_1499.x, x_1499.z, x_1499.z) * vec4<f32>(x_1501.x, x_1501.x, x_1501.z, x_1501.z));
        let x_1504 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = (vec2<f32>(x_1504.y, x_1504.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1509 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1509.x, x_1508.x, x_1509.z, x_1508.y);
        let x_1511 : vec4<f32> = u_xlat9;
        let x_1514 : vec2<f32> = u_xlat59;
        let x_1516 : vec2<f32> = ((vec2<f32>(x_1511.x, x_1511.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1514));
        let x_1517 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1516.x, x_1517.y, x_1516.y, x_1517.w);
        let x_1519 : vec2<f32> = u_xlat59;
        let x_1521 : vec2<f32> = (-(x_1519) + vec2<f32>(1.0f, 1.0f));
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
        let x_1524 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1524, vec2<f32>(0.0f, 0.0f));
        let x_1526 : vec2<f32> = u_xlat61;
        let x_1528 : vec2<f32> = u_xlat61;
        let x_1530 : vec4<f32> = u_xlat9;
        let x_1532 : vec2<f32> = ((-(x_1526) * x_1528) + vec2<f32>(x_1530.x, x_1530.y));
        let x_1533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
        let x_1535 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1535, vec2<f32>(0.0f, 0.0f));
        let x_1538 : vec2<f32> = u_xlat61;
        let x_1540 : vec2<f32> = u_xlat61;
        let x_1542 : vec4<f32> = u_xlat8;
        let x_1544 : vec2<f32> = ((-(x_1538) * x_1540) + vec2<f32>(x_1542.y, x_1542.w));
        let x_1545 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1544.x, x_1545.y, x_1544.y);
        let x_1547 : vec4<f32> = u_xlat9;
        let x_1550 : vec2<f32> = (vec2<f32>(x_1547.x, x_1547.y) + vec2<f32>(2.0f, 2.0f));
        let x_1551 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        let x_1553 : vec3<f32> = u_xlat34;
        let x_1555 : vec2<f32> = (vec2<f32>(x_1553.x, x_1553.z) + vec2<f32>(2.0f, 2.0f));
        let x_1556 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1556.x, x_1555.x, x_1556.z, x_1555.y);
        let x_1559 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1559 * 0.08163200318813323975f);
        let x_1563 : vec4<f32> = u_xlat8;
        let x_1566 : vec3<f32> = (vec3<f32>(x_1563.z, x_1563.x, x_1563.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1567 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
        let x_1569 : vec4<f32> = u_xlat9;
        let x_1572 : vec2<f32> = (vec2<f32>(x_1569.x, x_1569.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1573 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1572.x, x_1572.y, x_1573.z, x_1573.w);
        let x_1576 : f32 = u_xlat12.y;
        u_xlat11.x = x_1576;
        let x_1578 : vec2<f32> = u_xlat59;
        let x_1585 : vec2<f32> = ((vec2<f32>(x_1578.x, x_1578.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1586.x, x_1585.x, x_1586.z, x_1585.y);
        let x_1588 : vec2<f32> = u_xlat59;
        let x_1592 : vec2<f32> = ((vec2<f32>(x_1588.x, x_1588.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1592.x, x_1593.y, x_1592.y, x_1593.w);
        let x_1596 : f32 = u_xlat8.x;
        u_xlat9.y = x_1596;
        let x_1599 : f32 = u_xlat10.y;
        u_xlat9.w = x_1599;
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1602 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1601 + x_1602);
        let x_1604 : vec2<f32> = u_xlat59;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1604.y, x_1604.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1608 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1608.x, x_1607.x, x_1608.z, x_1607.y);
        let x_1610 : vec2<f32> = u_xlat59;
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1610.y, x_1610.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1613.x, x_1614.y, x_1613.y, x_1614.w);
        let x_1617 : f32 = u_xlat8.y;
        u_xlat10.y = x_1617;
        let x_1619 : vec4<f32> = u_xlat10;
        let x_1620 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1619 + x_1620);
        let x_1622 : vec4<f32> = u_xlat9;
        let x_1623 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1622 / x_1623);
        let x_1625 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1625 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1631 : vec4<f32> = u_xlat10;
        let x_1632 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1631 / x_1632);
        let x_1634 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1634 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1639 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1636.w, x_1636.x, x_1636.y, x_1636.z) * vec4<f32>(x_1639.x, x_1639.x, x_1639.x, x_1639.x));
        let x_1642 : vec4<f32> = u_xlat10;
        let x_1645 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1642.x, x_1642.w, x_1642.y, x_1642.z) * vec4<f32>(x_1645.y, x_1645.y, x_1645.y, x_1645.y));
        let x_1648 : vec4<f32> = u_xlat9;
        let x_1649 : vec3<f32> = vec3<f32>(x_1648.y, x_1648.z, x_1648.w);
        let x_1650 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1649.x, x_1650.y, x_1649.y, x_1649.z);
        let x_1653 : f32 = u_xlat10.x;
        u_xlat12.y = x_1653;
        let x_1655 : vec4<f32> = u_xlat7;
        let x_1658 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1661 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1655.x, x_1655.y, x_1655.x, x_1655.y) * vec4<f32>(x_1658.x, x_1658.y, x_1658.x, x_1658.y)) + vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1661.y));
        let x_1664 : vec4<f32> = u_xlat7;
        let x_1667 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1670 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1667.x, x_1667.y)) + vec2<f32>(x_1670.w, x_1670.y));
        let x_1674 : f32 = u_xlat12.y;
        u_xlat9.y = x_1674;
        let x_1677 : f32 = u_xlat10.z;
        u_xlat12.y = x_1677;
        let x_1679 : vec4<f32> = u_xlat7;
        let x_1682 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1685 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1679.x, x_1679.y, x_1679.x, x_1679.y) * vec4<f32>(x_1682.x, x_1682.y, x_1682.x, x_1682.y)) + vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1685.y));
        let x_1688 : vec4<f32> = u_xlat7;
        let x_1691 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1694 : vec4<f32> = u_xlat12;
        let x_1696 : vec2<f32> = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1691.x, x_1691.y)) + vec2<f32>(x_1694.w, x_1694.y));
        let x_1697 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1696.x, x_1696.y, x_1697.z, x_1697.w);
        let x_1700 : f32 = u_xlat12.y;
        u_xlat9.z = x_1700;
        let x_1703 : vec4<f32> = u_xlat7;
        let x_1706 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1709 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1703.x, x_1703.y, x_1703.x, x_1703.y) * vec4<f32>(x_1706.x, x_1706.y, x_1706.x, x_1706.y)) + vec4<f32>(x_1709.x, x_1709.y, x_1709.x, x_1709.z));
        let x_1713 : f32 = u_xlat10.w;
        u_xlat12.y = x_1713;
        let x_1716 : vec4<f32> = u_xlat7;
        let x_1719 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1716.x, x_1716.y, x_1716.x, x_1716.y) * vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y)) + vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1722.y));
        let x_1726 : vec4<f32> = u_xlat7;
        let x_1729 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1732 : vec4<f32> = u_xlat12;
        let x_1734 : vec2<f32> = ((vec2<f32>(x_1726.x, x_1726.y) * vec2<f32>(x_1729.x, x_1729.y)) + vec2<f32>(x_1732.w, x_1732.y));
        let x_1735 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1734.x, x_1734.y, x_1735.z);
        let x_1738 : f32 = u_xlat12.y;
        u_xlat9.w = x_1738;
        let x_1741 : vec4<f32> = u_xlat7;
        let x_1744 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1741.x, x_1741.y) * vec2<f32>(x_1744.x, x_1744.y)) + vec2<f32>(x_1747.x, x_1747.w));
        let x_1750 : vec4<f32> = u_xlat12;
        let x_1751 : vec3<f32> = vec3<f32>(x_1750.x, x_1750.z, x_1750.w);
        let x_1752 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1751.x, x_1752.y, x_1751.y, x_1751.z);
        let x_1754 : vec4<f32> = u_xlat7;
        let x_1757 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1760 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1754.x, x_1754.y, x_1754.x, x_1754.y) * vec4<f32>(x_1757.x, x_1757.y, x_1757.x, x_1757.y)) + vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1760.y));
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1767 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.w, x_1770.y));
        let x_1774 : f32 = u_xlat9.x;
        u_xlat10.x = x_1774;
        let x_1776 : vec4<f32> = u_xlat7;
        let x_1779 : vec4<f32> = x_594.x_MainLightShadowmapSize;
        let x_1782 : vec4<f32> = u_xlat10;
        let x_1784 : vec2<f32> = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(x_1779.x, x_1779.y)) + vec2<f32>(x_1782.x, x_1782.y));
        let x_1785 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1784.x, x_1784.y, x_1785.z, x_1785.w);
        let x_1788 : vec4<f32> = u_xlat8;
        let x_1790 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1788.x, x_1788.x, x_1788.x, x_1788.x) * x_1790);
        let x_1793 : vec4<f32> = u_xlat8;
        let x_1795 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1793.y, x_1793.y, x_1793.y, x_1793.y) * x_1795);
        let x_1798 : vec4<f32> = u_xlat8;
        let x_1800 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1798.z, x_1798.z, x_1798.z, x_1798.z) * x_1800);
        let x_1802 : vec4<f32> = u_xlat8;
        let x_1804 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1802.w, x_1802.w, x_1802.w, x_1802.w) * x_1804);
        let x_1807 : vec4<f32> = u_xlat13;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.x, x_1807.y);
        let x_1810 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec13;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat83 = x_1819;
        let x_1821 : vec4<f32> = u_xlat13;
        let x_1822 : vec2<f32> = vec2<f32>(x_1821.z, x_1821.w);
        let x_1824 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
        let x_1831 : vec3<f32> = txVec14;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1831.xy, x_1831.z);
        u_xlat84 = x_1833;
        let x_1834 : f32 = u_xlat84;
        let x_1836 : f32 = u_xlat18.y;
        u_xlat84 = (x_1834 * x_1836);
        let x_1839 : f32 = u_xlat18.x;
        let x_1840 : f32 = u_xlat83;
        let x_1842 : f32 = u_xlat84;
        u_xlat83 = ((x_1839 * x_1840) + x_1842);
        let x_1845 : vec2<f32> = u_xlat59;
        let x_1847 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1845.x, x_1845.y, x_1847);
        let x_1854 : vec3<f32> = txVec15;
        let x_1856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1854.xy, x_1854.z);
        u_xlat84 = x_1856;
        let x_1858 : f32 = u_xlat18.z;
        let x_1859 : f32 = u_xlat84;
        let x_1861 : f32 = u_xlat83;
        u_xlat83 = ((x_1858 * x_1859) + x_1861);
        let x_1864 : vec4<f32> = u_xlat16;
        let x_1865 : vec2<f32> = vec2<f32>(x_1864.x, x_1864.y);
        let x_1867 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec16;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1874.xy, x_1874.z);
        u_xlat84 = x_1876;
        let x_1878 : f32 = u_xlat18.w;
        let x_1879 : f32 = u_xlat84;
        let x_1881 : f32 = u_xlat83;
        u_xlat83 = ((x_1878 * x_1879) + x_1881);
        let x_1884 : vec4<f32> = u_xlat14;
        let x_1885 : vec2<f32> = vec2<f32>(x_1884.x, x_1884.y);
        let x_1887 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1894 : vec3<f32> = txVec17;
        let x_1896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1894.xy, x_1894.z);
        u_xlat84 = x_1896;
        let x_1898 : f32 = u_xlat19.x;
        let x_1899 : f32 = u_xlat84;
        let x_1901 : f32 = u_xlat83;
        u_xlat83 = ((x_1898 * x_1899) + x_1901);
        let x_1904 : vec4<f32> = u_xlat14;
        let x_1905 : vec2<f32> = vec2<f32>(x_1904.z, x_1904.w);
        let x_1907 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1905.x, x_1905.y, x_1907);
        let x_1914 : vec3<f32> = txVec18;
        let x_1916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1914.xy, x_1914.z);
        u_xlat84 = x_1916;
        let x_1918 : f32 = u_xlat19.y;
        let x_1919 : f32 = u_xlat84;
        let x_1921 : f32 = u_xlat83;
        u_xlat83 = ((x_1918 * x_1919) + x_1921);
        let x_1924 : vec4<f32> = u_xlat15;
        let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
        let x_1927 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
        let x_1934 : vec3<f32> = txVec19;
        let x_1936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1934.xy, x_1934.z);
        u_xlat84 = x_1936;
        let x_1938 : f32 = u_xlat19.z;
        let x_1939 : f32 = u_xlat84;
        let x_1941 : f32 = u_xlat83;
        u_xlat83 = ((x_1938 * x_1939) + x_1941);
        let x_1944 : vec4<f32> = u_xlat16;
        let x_1945 : vec2<f32> = vec2<f32>(x_1944.z, x_1944.w);
        let x_1947 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1945.x, x_1945.y, x_1947);
        let x_1954 : vec3<f32> = txVec20;
        let x_1956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1954.xy, x_1954.z);
        u_xlat84 = x_1956;
        let x_1958 : f32 = u_xlat19.w;
        let x_1959 : f32 = u_xlat84;
        let x_1961 : f32 = u_xlat83;
        u_xlat83 = ((x_1958 * x_1959) + x_1961);
        let x_1964 : vec4<f32> = u_xlat17;
        let x_1965 : vec2<f32> = vec2<f32>(x_1964.x, x_1964.y);
        let x_1967 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1965.x, x_1965.y, x_1967);
        let x_1974 : vec3<f32> = txVec21;
        let x_1976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1974.xy, x_1974.z);
        u_xlat84 = x_1976;
        let x_1978 : f32 = u_xlat20.x;
        let x_1979 : f32 = u_xlat84;
        let x_1981 : f32 = u_xlat83;
        u_xlat83 = ((x_1978 * x_1979) + x_1981);
        let x_1984 : vec4<f32> = u_xlat17;
        let x_1985 : vec2<f32> = vec2<f32>(x_1984.z, x_1984.w);
        let x_1987 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
        let x_1994 : vec3<f32> = txVec22;
        let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1994.xy, x_1994.z);
        u_xlat84 = x_1996;
        let x_1998 : f32 = u_xlat20.y;
        let x_1999 : f32 = u_xlat84;
        let x_2001 : f32 = u_xlat83;
        u_xlat83 = ((x_1998 * x_1999) + x_2001);
        let x_2004 : vec3<f32> = u_xlat35;
        let x_2005 : vec2<f32> = vec2<f32>(x_2004.x, x_2004.y);
        let x_2007 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec23;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2014.xy, x_2014.z);
        u_xlat84 = x_2016;
        let x_2018 : f32 = u_xlat20.z;
        let x_2019 : f32 = u_xlat84;
        let x_2021 : f32 = u_xlat83;
        u_xlat83 = ((x_2018 * x_2019) + x_2021);
        let x_2024 : vec2<f32> = u_xlat67;
        let x_2026 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec24;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2033.xy, x_2033.z);
        u_xlat84 = x_2035;
        let x_2037 : f32 = u_xlat20.w;
        let x_2038 : f32 = u_xlat84;
        let x_2040 : f32 = u_xlat83;
        u_xlat83 = ((x_2037 * x_2038) + x_2040);
        let x_2043 : vec4<f32> = u_xlat12;
        let x_2044 : vec2<f32> = vec2<f32>(x_2043.x, x_2043.y);
        let x_2046 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2044.x, x_2044.y, x_2046);
        let x_2053 : vec3<f32> = txVec25;
        let x_2055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2053.xy, x_2053.z);
        u_xlat84 = x_2055;
        let x_2057 : f32 = u_xlat8.x;
        let x_2058 : f32 = u_xlat84;
        let x_2060 : f32 = u_xlat83;
        u_xlat83 = ((x_2057 * x_2058) + x_2060);
        let x_2063 : vec4<f32> = u_xlat12;
        let x_2064 : vec2<f32> = vec2<f32>(x_2063.z, x_2063.w);
        let x_2066 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
        let x_2073 : vec3<f32> = txVec26;
        let x_2075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2073.xy, x_2073.z);
        u_xlat84 = x_2075;
        let x_2077 : f32 = u_xlat8.y;
        let x_2078 : f32 = u_xlat84;
        let x_2080 : f32 = u_xlat83;
        u_xlat83 = ((x_2077 * x_2078) + x_2080);
        let x_2083 : vec2<f32> = u_xlat62;
        let x_2085 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2083.x, x_2083.y, x_2085);
        let x_2092 : vec3<f32> = txVec27;
        let x_2094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2092.xy, x_2092.z);
        u_xlat84 = x_2094;
        let x_2096 : f32 = u_xlat8.z;
        let x_2097 : f32 = u_xlat84;
        let x_2099 : f32 = u_xlat83;
        u_xlat83 = ((x_2096 * x_2097) + x_2099);
        let x_2102 : vec4<f32> = u_xlat7;
        let x_2103 : vec2<f32> = vec2<f32>(x_2102.x, x_2102.y);
        let x_2105 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2103.x, x_2103.y, x_2105);
        let x_2112 : vec3<f32> = txVec28;
        let x_2114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2112.xy, x_2112.z);
        u_xlat84 = x_2114;
        let x_2116 : f32 = u_xlat8.w;
        let x_2117 : f32 = u_xlat84;
        let x_2119 : f32 = u_xlat83;
        u_xlat82 = ((x_2116 * x_2117) + x_2119);
      }
    }
  } else {
    let x_2123 : vec4<f32> = u_xlat3;
    let x_2124 : vec2<f32> = vec2<f32>(x_2123.x, x_2123.y);
    let x_2126 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2124.x, x_2124.y, x_2126);
    let x_2133 : vec3<f32> = txVec29;
    let x_2135 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2133.xy, x_2133.z);
    u_xlat82 = x_2135;
  }
  let x_2137 : f32 = x_594.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2137) + 1.0f);
  let x_2141 : f32 = u_xlat82;
  let x_2143 : f32 = x_594.x_MainLightShadowParams.x;
  let x_2146 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2141 * x_2143) + x_2146);
  let x_2151 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2151);
  let x_2155 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2155 >= 1.0f);
  let x_2157 : bool = u_xlatb55;
  let x_2158 : bool = u_xlatb29;
  u_xlatb29 = (x_2157 | x_2158);
  let x_2160 : bool = u_xlatb29;
  if (x_2160) {
    x_2161 = 1.0f;
  } else {
    let x_2166 : f32 = u_xlat3.x;
    x_2161 = x_2166;
  }
  let x_2167 : f32 = x_2161;
  u_xlat3.x = x_2167;
  let x_2169 : vec3<f32> = vs_TEXCOORD7;
  let x_2171 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2173 : vec3<f32> = (x_2169 + -(x_2171));
  let x_2174 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2177 : vec4<f32> = u_xlat7;
  let x_2179 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2177.x, x_2177.y, x_2177.z), vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
  let x_2183 : f32 = u_xlat29;
  let x_2185 : f32 = x_594.x_MainLightShadowParams.z;
  let x_2188 : f32 = x_594.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2183 * x_2185) + x_2188);
  let x_2190 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2190, 0.0f, 1.0f);
  let x_2193 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_2193) + 1.0f);
  let x_2196 : f32 = u_xlat55;
  let x_2197 : f32 = u_xlat82;
  let x_2200 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2196 * x_2197) + x_2200);
  let x_2210 : f32 = x_2208.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2210 == -1.0f));
  let x_2212 : bool = u_xlatb55;
  if (x_2212) {
    let x_2215 : vec3<f32> = vs_TEXCOORD7;
    let x_2218 : vec4<f32> = x_2208.x_MainLightWorldToLight[1i];
    let x_2220 : vec2<f32> = (vec2<f32>(x_2215.y, x_2215.y) * vec2<f32>(x_2218.x, x_2218.y));
    let x_2221 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
    let x_2224 : vec4<f32> = x_2208.x_MainLightWorldToLight[0i];
    let x_2226 : vec3<f32> = vs_TEXCOORD7;
    let x_2229 : vec4<f32> = u_xlat7;
    let x_2231 : vec2<f32> = ((vec2<f32>(x_2224.x, x_2224.y) * vec2<f32>(x_2226.x, x_2226.x)) + vec2<f32>(x_2229.x, x_2229.y));
    let x_2232 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
    let x_2235 : vec4<f32> = x_2208.x_MainLightWorldToLight[2i];
    let x_2237 : vec3<f32> = vs_TEXCOORD7;
    let x_2240 : vec4<f32> = u_xlat7;
    let x_2242 : vec2<f32> = ((vec2<f32>(x_2235.x, x_2235.y) * vec2<f32>(x_2237.z, x_2237.z)) + vec2<f32>(x_2240.x, x_2240.y));
    let x_2243 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2242.x, x_2242.y, x_2243.z, x_2243.w);
    let x_2245 : vec4<f32> = u_xlat7;
    let x_2248 : vec4<f32> = x_2208.x_MainLightWorldToLight[3i];
    let x_2250 : vec2<f32> = (vec2<f32>(x_2245.x, x_2245.y) + vec2<f32>(x_2248.x, x_2248.y));
    let x_2251 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2250.x, x_2250.y, x_2251.z, x_2251.w);
    let x_2253 : vec4<f32> = u_xlat7;
    let x_2256 : vec2<f32> = ((vec2<f32>(x_2253.x, x_2253.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2257 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2256.x, x_2256.y, x_2257.z, x_2257.w);
    let x_2264 : vec4<f32> = u_xlat7;
    let x_2267 : f32 = x_111.x_GlobalMipBias.x;
    let x_2268 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2264.x, x_2264.y), x_2267);
    u_xlat7 = x_2268;
    let x_2273 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2275 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2277 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2279 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2280 : vec4<f32> = vec4<f32>(x_2273, x_2275, x_2277, x_2279);
    let x_2287 : vec4<bool> = (vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2280.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2287.x, x_2287.y);
    let x_2290 : bool = u_xlatb8.y;
    if (x_2290) {
      let x_2295 : f32 = u_xlat7.w;
      x_2291 = x_2295;
    } else {
      let x_2298 : f32 = u_xlat7.x;
      x_2291 = x_2298;
    }
    let x_2299 : f32 = x_2291;
    u_xlat55 = x_2299;
    let x_2301 : bool = u_xlatb8.x;
    if (x_2301) {
      let x_2305 : vec4<f32> = u_xlat7;
      x_2302 = vec3<f32>(x_2305.x, x_2305.y, x_2305.z);
    } else {
      let x_2308 : f32 = u_xlat55;
      x_2302 = vec3<f32>(x_2308, x_2308, x_2308);
    }
    let x_2310 : vec3<f32> = x_2302;
    let x_2311 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2317 : vec4<f32> = u_xlat7;
  let x_2320 : vec4<f32> = x_111.x_MainLightColor;
  let x_2322 : vec3<f32> = (vec3<f32>(x_2317.x, x_2317.y, x_2317.z) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
  let x_2323 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
  let x_2325 : vec3<f32> = u_xlat2;
  let x_2327 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(x_2325), vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
  let x_2330 : f32 = u_xlat55;
  let x_2331 : f32 = u_xlat55;
  u_xlat55 = (x_2330 + x_2331);
  let x_2333 : vec4<f32> = u_xlat1;
  let x_2335 : f32 = u_xlat55;
  let x_2339 : vec3<f32> = u_xlat2;
  let x_2341 : vec3<f32> = ((vec3<f32>(x_2333.x, x_2333.y, x_2333.z) * -(vec3<f32>(x_2335, x_2335, x_2335))) + -(x_2339));
  let x_2342 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  let x_2344 : vec4<f32> = u_xlat1;
  let x_2346 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(vec3<f32>(x_2344.x, x_2344.y, x_2344.z), x_2346);
  let x_2348 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2348, 0.0f, 1.0f);
  let x_2350 : f32 = u_xlat55;
  u_xlat55 = (-(x_2350) + 1.0f);
  let x_2353 : f32 = u_xlat55;
  let x_2354 : f32 = u_xlat55;
  u_xlat55 = (x_2353 * x_2354);
  let x_2356 : f32 = u_xlat55;
  let x_2357 : f32 = u_xlat55;
  u_xlat55 = (x_2356 * x_2357);
  let x_2360 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2360) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2367 : f32 = u_xlat0.x;
  let x_2368 : f32 = u_xlat82;
  u_xlat0.x = (x_2367 * x_2368);
  let x_2372 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2372 * 6.0f);
  let x_2384 : vec4<f32> = u_xlat8;
  let x_2387 : f32 = u_xlat0.x;
  let x_2388 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2384.x, x_2384.y, x_2384.z), x_2387);
  u_xlat8 = x_2388;
  let x_2390 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2390 + -1.0f);
  let x_2394 : f32 = x_781.unity_SpecCube0_HDR.w;
  let x_2396 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2394 * x_2396) + 1.0f);
  let x_2401 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2401, 0.0f);
  let x_2405 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2405);
  let x_2409 : f32 = u_xlat0.x;
  let x_2411 : f32 = x_781.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2409 * x_2411);
  let x_2415 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2415);
  let x_2419 : f32 = u_xlat0.x;
  let x_2421 : f32 = x_781.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2419 * x_2421);
  let x_2424 : vec4<f32> = u_xlat8;
  let x_2426 : vec3<f32> = u_xlat0;
  let x_2428 : vec3<f32> = (vec3<f32>(x_2424.x, x_2424.y, x_2424.z) * vec3<f32>(x_2426.x, x_2426.x, x_2426.x));
  let x_2429 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
  let x_2431 : f32 = u_xlat79;
  let x_2433 : f32 = u_xlat79;
  let x_2437 : vec2<f32> = ((vec2<f32>(x_2431, x_2431) * vec2<f32>(x_2433, x_2433)) + vec2<f32>(-1.0f, 1.0f));
  let x_2438 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
  let x_2441 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2441);
  let x_2444 : vec4<f32> = u_xlat5;
  let x_2447 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2444.x, x_2444.y, x_2444.z)) + vec3<f32>(x_2447, x_2447, x_2447));
  let x_2450 : f32 = u_xlat55;
  let x_2452 : vec3<f32> = u_xlat35;
  let x_2454 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2450, x_2450, x_2450) * x_2452) + vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
  let x_2457 : vec3<f32> = u_xlat0;
  let x_2459 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2457.x, x_2457.x, x_2457.x) * x_2459);
  let x_2461 : vec4<f32> = u_xlat8;
  let x_2463 : vec3<f32> = u_xlat35;
  let x_2464 : vec3<f32> = (vec3<f32>(x_2461.x, x_2461.y, x_2461.z) * x_2463);
  let x_2465 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  let x_2467 : vec4<f32> = u_xlat4;
  let x_2469 : vec4<f32> = u_xlat6;
  let x_2472 : vec4<f32> = u_xlat8;
  let x_2474 : vec3<f32> = ((vec3<f32>(x_2467.x, x_2467.y, x_2467.z) * vec3<f32>(x_2469.x, x_2469.y, x_2469.z)) + vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
  let x_2475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
  let x_2478 : f32 = u_xlat3.x;
  let x_2480 : f32 = x_781.unity_LightData.z;
  u_xlat0.x = (x_2478 * x_2480);
  let x_2483 : vec4<f32> = u_xlat1;
  let x_2486 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2483.x, x_2483.y, x_2483.z), vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
  let x_2489 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2489, 0.0f, 1.0f);
  let x_2491 : f32 = u_xlat52;
  let x_2493 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2491 * x_2493);
  let x_2496 : vec3<f32> = u_xlat0;
  let x_2498 : vec4<f32> = u_xlat7;
  let x_2500 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.x, x_2496.x) * vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
  let x_2501 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
  let x_2503 : vec3<f32> = u_xlat2;
  let x_2505 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2507 : vec3<f32> = (x_2503 + vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
  let x_2508 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
  let x_2510 : vec4<f32> = u_xlat8;
  let x_2512 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2510.x, x_2510.y, x_2510.z), vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
  let x_2517 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2517, 1.17549435e-38f);
  let x_2522 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2522);
  let x_2525 : vec3<f32> = u_xlat0;
  let x_2527 : vec4<f32> = u_xlat8;
  let x_2529 : vec3<f32> = (vec3<f32>(x_2525.x, x_2525.x, x_2525.x) * vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
  let x_2530 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2529.x, x_2529.y, x_2529.z, x_2530.w);
  let x_2532 : vec4<f32> = u_xlat1;
  let x_2534 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2532.x, x_2532.y, x_2532.z), vec3<f32>(x_2534.x, x_2534.y, x_2534.z));
  let x_2539 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2539, 0.0f, 1.0f);
  let x_2543 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2545 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2543.x, x_2543.y, x_2543.z), vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
  let x_2550 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2550, 0.0f, 1.0f);
  let x_2553 : vec3<f32> = u_xlat0;
  let x_2555 : vec3<f32> = u_xlat0;
  let x_2557 : vec2<f32> = (vec2<f32>(x_2553.x, x_2553.z) * vec2<f32>(x_2555.x, x_2555.z));
  let x_2558 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2557.x, x_2558.y, x_2557.y);
  let x_2561 : f32 = u_xlat0.x;
  let x_2563 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2561 * x_2563) + 1.00001001358032226562f);
  let x_2569 : f32 = u_xlat0.x;
  let x_2571 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2569 * x_2571);
  let x_2575 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2575, 0.10000000149011611938f);
  let x_2578 : f32 = u_xlat52;
  let x_2580 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2578 * x_2580);
  let x_2583 : f32 = u_xlat80;
  let x_2585 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2583 * x_2585);
  let x_2588 : f32 = u_xlat81;
  let x_2590 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2588 / x_2590);
  let x_2593 : vec4<f32> = u_xlat5;
  let x_2595 : vec3<f32> = u_xlat0;
  let x_2598 : vec4<f32> = u_xlat6;
  let x_2600 : vec3<f32> = ((vec3<f32>(x_2593.x, x_2593.y, x_2593.z) * vec3<f32>(x_2595.x, x_2595.x, x_2595.x)) + vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
  let x_2601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
  let x_2603 : vec4<f32> = u_xlat7;
  let x_2605 : vec4<f32> = u_xlat8;
  let x_2607 : vec3<f32> = (vec3<f32>(x_2603.x, x_2603.y, x_2603.z) * vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
  let x_2608 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
  let x_2611 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2613 : f32 = x_781.unity_LightData.y;
  u_xlat0.x = min(x_2611, x_2613);
  let x_2618 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2618));
  let x_2621 : f32 = u_xlat29;
  let x_2623 : f32 = x_594.x_AdditionalShadowFadeParams.x;
  let x_2626 : f32 = x_594.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2621 * x_2623) + x_2626);
  let x_2628 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2628, 0.0f, 1.0f);
  let x_2631 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2633 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2635 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2637 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2638 : vec4<f32> = vec4<f32>(x_2631, x_2633, x_2635, x_2637);
  let x_2644 : vec4<bool> = (vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2638.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2645 : vec2<bool> = vec2<bool>(x_2644.x, x_2644.y);
  let x_2646 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2658 : u32 = u_xlatu_loop_1;
    let x_2659 : u32 = u_xlatu0;
    if ((x_2658 < x_2659)) {
    } else {
      break;
    }
    let x_2662 : u32 = u_xlatu_loop_1;
    u_xlatu55 = (x_2662 >> 2u);
    let x_2665 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2665 & 3u));
    let x_2668 : u32 = u_xlatu55;
    let x_2671 : vec4<f32> = x_781.unity_LightIndices[bitcast<i32>(x_2668)];
    let x_2681 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2686 : vec4<u32> = indexable[x_2681];
    u_xlat55 = dot(x_2671, bitcast<vec4<f32>>(x_2686));
    let x_2690 : f32 = u_xlat55;
    u_xlati55 = i32(x_2690);
    let x_2692 : vec3<f32> = vs_TEXCOORD7;
    let x_2703 : i32 = u_xlati55;
    let x_2705 : vec4<f32> = x_2702.x_AdditionalLightsPosition[x_2703];
    let x_2708 : i32 = u_xlati55;
    let x_2710 : vec4<f32> = x_2702.x_AdditionalLightsPosition[x_2708];
    u_xlat35 = ((-(x_2692) * vec3<f32>(x_2705.w, x_2705.w, x_2705.w)) + vec3<f32>(x_2710.x, x_2710.y, x_2710.z));
    let x_2713 : vec3<f32> = u_xlat35;
    let x_2714 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_2713, x_2714);
    let x_2716 : f32 = u_xlat82;
    u_xlat82 = max(x_2716, 0.00006103515625f);
    let x_2718 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2718);
    let x_2720 : f32 = u_xlat83;
    let x_2722 : vec3<f32> = u_xlat35;
    let x_2723 : vec3<f32> = (vec3<f32>(x_2720, x_2720, x_2720) * x_2722);
    let x_2724 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);
    let x_2726 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2726);
    let x_2728 : f32 = u_xlat82;
    let x_2729 : i32 = u_xlati55;
    let x_2731 : f32 = x_2702.x_AdditionalLightsAttenuation[x_2729].x;
    u_xlat82 = (x_2728 * x_2731);
    let x_2733 : f32 = u_xlat82;
    let x_2735 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2733) * x_2735) + 1.0f);
    let x_2738 : f32 = u_xlat82;
    u_xlat82 = max(x_2738, 0.0f);
    let x_2740 : f32 = u_xlat82;
    let x_2741 : f32 = u_xlat82;
    u_xlat82 = (x_2740 * x_2741);
    let x_2743 : f32 = u_xlat82;
    let x_2744 : f32 = u_xlat84;
    u_xlat82 = (x_2743 * x_2744);
    let x_2746 : i32 = u_xlati55;
    let x_2748 : vec4<f32> = x_2702.x_AdditionalLightsSpotDir[x_2746];
    let x_2750 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2748.x, x_2748.y, x_2748.z), vec3<f32>(x_2750.x, x_2750.y, x_2750.z));
    let x_2753 : f32 = u_xlat84;
    let x_2754 : i32 = u_xlati55;
    let x_2756 : f32 = x_2702.x_AdditionalLightsAttenuation[x_2754].z;
    let x_2758 : i32 = u_xlati55;
    let x_2760 : f32 = x_2702.x_AdditionalLightsAttenuation[x_2758].w;
    u_xlat84 = ((x_2753 * x_2756) + x_2760);
    let x_2762 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2762, 0.0f, 1.0f);
    let x_2764 : f32 = u_xlat84;
    let x_2765 : f32 = u_xlat84;
    u_xlat84 = (x_2764 * x_2765);
    let x_2767 : f32 = u_xlat82;
    let x_2768 : f32 = u_xlat84;
    u_xlat82 = (x_2767 * x_2768);
    let x_2771 : i32 = u_xlati55;
    let x_2773 : f32 = x_594.x_AdditionalShadowParams[x_2771].w;
    u_xlati84 = i32(x_2773);
    let x_2776 : i32 = u_xlati84;
    u_xlatb85 = (x_2776 >= 0i);
    let x_2778 : bool = u_xlatb85;
    if (x_2778) {
      let x_2782 : i32 = u_xlati55;
      let x_2784 : f32 = x_594.x_AdditionalShadowParams[x_2782].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2784, x_2784, x_2784, x_2784))));
      let x_2788 : bool = u_xlatb85;
      if (x_2788) {
        let x_2792 : vec4<f32> = u_xlat10;
        let x_2795 : vec4<f32> = u_xlat10;
        let x_2798 : vec4<bool> = (abs(vec4<f32>(x_2792.z, x_2792.z, x_2792.y, x_2792.z)) >= abs(vec4<f32>(x_2795.x, x_2795.y, x_2795.x, x_2795.x)));
        let x_2800 : vec3<bool> = vec3<bool>(x_2798.x, x_2798.y, x_2798.z);
        let x_2801 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2800.x, x_2800.y, x_2800.z, x_2801.w);
        let x_2804 : bool = u_xlatb11.y;
        let x_2806 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2804 & x_2806);
        let x_2808 : vec4<f32> = u_xlat10;
        let x_2811 : vec4<bool> = (-(vec4<f32>(x_2808.z, x_2808.y, x_2808.z, x_2808.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2812 : vec3<bool> = vec3<bool>(x_2811.x, x_2811.y, x_2811.w);
        let x_2813 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2812.x, x_2812.y, x_2813.z, x_2812.z);
        let x_2816 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2816);
        let x_2821 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2821);
        let x_2826 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2826);
        let x_2829 : bool = u_xlatb11.z;
        if (x_2829) {
          let x_2834 : f32 = u_xlat11.y;
          x_2830 = x_2834;
        } else {
          let x_2836 : f32 = u_xlat86;
          x_2830 = x_2836;
        }
        let x_2837 : f32 = x_2830;
        u_xlat86 = x_2837;
        let x_2839 : bool = u_xlatb85;
        if (x_2839) {
          let x_2844 : f32 = u_xlat11.x;
          x_2840 = x_2844;
        } else {
          let x_2846 : f32 = u_xlat86;
          x_2840 = x_2846;
        }
        let x_2847 : f32 = x_2840;
        u_xlat85 = x_2847;
        let x_2848 : i32 = u_xlati55;
        let x_2850 : f32 = x_594.x_AdditionalShadowParams[x_2848].w;
        u_xlat86 = trunc(x_2850);
        let x_2852 : f32 = u_xlat85;
        let x_2853 : f32 = u_xlat86;
        u_xlat85 = (x_2852 + x_2853);
        let x_2855 : f32 = u_xlat85;
        u_xlati84 = i32(x_2855);
      }
      let x_2857 : i32 = u_xlati84;
      u_xlati84 = (x_2857 << bitcast<u32>(2i));
      let x_2859 : vec3<f32> = vs_TEXCOORD7;
      let x_2861 : i32 = u_xlati84;
      let x_2864 : i32 = u_xlati84;
      let x_2868 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2861 + 1i) / 4i)][((x_2864 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2859.y, x_2859.y, x_2859.y, x_2859.y) * x_2868);
      let x_2870 : i32 = u_xlati84;
      let x_2872 : i32 = u_xlati84;
      let x_2875 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[(x_2870 / 4i)][(x_2872 % 4i)];
      let x_2876 : vec3<f32> = vs_TEXCOORD7;
      let x_2879 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2875 * vec4<f32>(x_2876.x, x_2876.x, x_2876.x, x_2876.x)) + x_2879);
      let x_2881 : i32 = u_xlati84;
      let x_2884 : i32 = u_xlati84;
      let x_2888 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2881 + 2i) / 4i)][((x_2884 + 2i) % 4i)];
      let x_2889 : vec3<f32> = vs_TEXCOORD7;
      let x_2892 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2888 * vec4<f32>(x_2889.z, x_2889.z, x_2889.z, x_2889.z)) + x_2892);
      let x_2894 : vec4<f32> = u_xlat11;
      let x_2895 : i32 = u_xlati84;
      let x_2898 : i32 = u_xlati84;
      let x_2902 : vec4<f32> = x_594.x_AdditionalLightsWorldToShadow[((x_2895 + 3i) / 4i)][((x_2898 + 3i) % 4i)];
      u_xlat11 = (x_2894 + x_2902);
      let x_2904 : vec4<f32> = u_xlat11;
      let x_2906 : vec4<f32> = u_xlat11;
      let x_2908 : vec3<f32> = (vec3<f32>(x_2904.x, x_2904.y, x_2904.z) / vec3<f32>(x_2906.w, x_2906.w, x_2906.w));
      let x_2909 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2908.x, x_2908.y, x_2908.z, x_2909.w);
      let x_2912 : i32 = u_xlati55;
      let x_2914 : f32 = x_594.x_AdditionalShadowParams[x_2912].y;
      u_xlatb84 = (0.0f < x_2914);
      let x_2916 : bool = u_xlatb84;
      if (x_2916) {
        let x_2919 : i32 = u_xlati55;
        let x_2921 : f32 = x_594.x_AdditionalShadowParams[x_2919].y;
        u_xlatb84 = (1.0f == x_2921);
        let x_2923 : bool = u_xlatb84;
        if (x_2923) {
          let x_2926 : vec4<f32> = u_xlat11;
          let x_2929 : vec4<f32> = x_594.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2926.x, x_2926.y, x_2926.x, x_2926.y) + x_2929);
          let x_2932 : vec4<f32> = u_xlat12;
          let x_2933 : vec2<f32> = vec2<f32>(x_2932.x, x_2932.y);
          let x_2935 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2933.x, x_2933.y, x_2935);
          let x_2943 : vec3<f32> = txVec30;
          let x_2945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2943.xy, x_2943.z);
          u_xlat13.x = x_2945;
          let x_2948 : vec4<f32> = u_xlat12;
          let x_2949 : vec2<f32> = vec2<f32>(x_2948.z, x_2948.w);
          let x_2951 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2949.x, x_2949.y, x_2951);
          let x_2958 : vec3<f32> = txVec31;
          let x_2960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2958.xy, x_2958.z);
          u_xlat13.y = x_2960;
          let x_2962 : vec4<f32> = u_xlat11;
          let x_2965 : vec4<f32> = x_594.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y) + x_2965);
          let x_2968 : vec4<f32> = u_xlat12;
          let x_2969 : vec2<f32> = vec2<f32>(x_2968.x, x_2968.y);
          let x_2971 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
          let x_2978 : vec3<f32> = txVec32;
          let x_2980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
          u_xlat13.z = x_2980;
          let x_2983 : vec4<f32> = u_xlat12;
          let x_2984 : vec2<f32> = vec2<f32>(x_2983.z, x_2983.w);
          let x_2986 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
          let x_2993 : vec3<f32> = txVec33;
          let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
          u_xlat13.w = x_2995;
          let x_2997 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2997, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3000 : i32 = u_xlati55;
          let x_3002 : f32 = x_594.x_AdditionalShadowParams[x_3000].y;
          u_xlatb85 = (2.0f == x_3002);
          let x_3004 : bool = u_xlatb85;
          if (x_3004) {
            let x_3007 : vec4<f32> = u_xlat11;
            let x_3010 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3013 : vec2<f32> = ((vec2<f32>(x_3007.x, x_3007.y) * vec2<f32>(x_3010.z, x_3010.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3014 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3013.x, x_3013.y, x_3014.z, x_3014.w);
            let x_3016 : vec4<f32> = u_xlat12;
            let x_3018 : vec2<f32> = floor(vec2<f32>(x_3016.x, x_3016.y));
            let x_3019 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3018.x, x_3018.y, x_3019.z, x_3019.w);
            let x_3022 : vec4<f32> = u_xlat11;
            let x_3025 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(x_3025.z, x_3025.w)) + -(vec2<f32>(x_3028.x, x_3028.y)));
            let x_3032 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3032.x, x_3032.x, x_3032.y, x_3032.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3035 : vec4<f32> = u_xlat13;
            let x_3037 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3035.x, x_3035.x, x_3035.z, x_3035.z) * vec4<f32>(x_3037.x, x_3037.x, x_3037.z, x_3037.z));
            let x_3040 : vec4<f32> = u_xlat14;
            let x_3042 : vec2<f32> = (vec2<f32>(x_3040.y, x_3040.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3043 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3042.x, x_3043.y, x_3042.y, x_3043.w);
            let x_3045 : vec4<f32> = u_xlat14;
            let x_3048 : vec2<f32> = u_xlat64;
            let x_3050 : vec2<f32> = ((vec2<f32>(x_3045.x, x_3045.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3048));
            let x_3051 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3050.x, x_3050.y, x_3051.z, x_3051.w);
            let x_3054 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3054) + vec2<f32>(1.0f, 1.0f));
            let x_3057 : vec2<f32> = u_xlat64;
            let x_3058 : vec2<f32> = min(x_3057, vec2<f32>(0.0f, 0.0f));
            let x_3059 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3058.x, x_3058.y, x_3059.z, x_3059.w);
            let x_3061 : vec4<f32> = u_xlat15;
            let x_3064 : vec4<f32> = u_xlat15;
            let x_3067 : vec2<f32> = u_xlat66;
            let x_3068 : vec2<f32> = ((-(vec2<f32>(x_3061.x, x_3061.y)) * vec2<f32>(x_3064.x, x_3064.y)) + x_3067);
            let x_3069 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3068.x, x_3068.y, x_3069.z, x_3069.w);
            let x_3071 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3071, vec2<f32>(0.0f, 0.0f));
            let x_3073 : vec2<f32> = u_xlat64;
            let x_3075 : vec2<f32> = u_xlat64;
            let x_3077 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3073) * x_3075) + vec2<f32>(x_3077.y, x_3077.w));
            let x_3080 : vec4<f32> = u_xlat15;
            let x_3082 : vec2<f32> = (vec2<f32>(x_3080.x, x_3080.y) + vec2<f32>(1.0f, 1.0f));
            let x_3083 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3082.x, x_3082.y, x_3083.z, x_3083.w);
            let x_3085 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3085 + vec2<f32>(1.0f, 1.0f));
            let x_3087 : vec4<f32> = u_xlat14;
            let x_3089 : vec2<f32> = (vec2<f32>(x_3087.x, x_3087.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3090 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3089.x, x_3089.y, x_3090.z, x_3090.w);
            let x_3092 : vec2<f32> = u_xlat66;
            let x_3093 : vec2<f32> = (x_3092 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3096 : vec4<f32> = u_xlat15;
            let x_3098 : vec2<f32> = (vec2<f32>(x_3096.x, x_3096.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3099 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3098.x, x_3098.y, x_3099.z, x_3099.w);
            let x_3101 : vec2<f32> = u_xlat64;
            let x_3102 : vec2<f32> = (x_3101 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3103 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3102.x, x_3102.y, x_3103.z, x_3103.w);
            let x_3105 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3105.y, x_3105.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3109 : f32 = u_xlat15.x;
            u_xlat16.z = x_3109;
            let x_3112 : f32 = u_xlat64.x;
            u_xlat16.w = x_3112;
            let x_3115 : f32 = u_xlat17.x;
            u_xlat14.z = x_3115;
            let x_3118 : f32 = u_xlat13.x;
            u_xlat14.w = x_3118;
            let x_3120 : vec4<f32> = u_xlat14;
            let x_3122 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3120.z, x_3120.w, x_3120.x, x_3120.z) + vec4<f32>(x_3122.z, x_3122.w, x_3122.x, x_3122.z));
            let x_3126 : f32 = u_xlat16.y;
            u_xlat15.z = x_3126;
            let x_3129 : f32 = u_xlat64.y;
            u_xlat15.w = x_3129;
            let x_3132 : f32 = u_xlat14.y;
            u_xlat17.z = x_3132;
            let x_3135 : f32 = u_xlat13.z;
            u_xlat17.w = x_3135;
            let x_3137 : vec4<f32> = u_xlat15;
            let x_3139 : vec4<f32> = u_xlat17;
            let x_3141 : vec3<f32> = (vec3<f32>(x_3137.z, x_3137.y, x_3137.w) + vec3<f32>(x_3139.z, x_3139.y, x_3139.w));
            let x_3142 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3142.w);
            let x_3144 : vec4<f32> = u_xlat14;
            let x_3146 : vec4<f32> = u_xlat18;
            let x_3148 : vec3<f32> = (vec3<f32>(x_3144.x, x_3144.z, x_3144.w) / vec3<f32>(x_3146.z, x_3146.w, x_3146.y));
            let x_3149 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3148.x, x_3148.y, x_3148.z, x_3149.w);
            let x_3151 : vec4<f32> = u_xlat14;
            let x_3153 : vec3<f32> = (vec3<f32>(x_3151.x, x_3151.y, x_3151.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3154 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3153.x, x_3153.y, x_3153.z, x_3154.w);
            let x_3156 : vec4<f32> = u_xlat17;
            let x_3158 : vec4<f32> = u_xlat13;
            let x_3160 : vec3<f32> = (vec3<f32>(x_3156.z, x_3156.y, x_3156.w) / vec3<f32>(x_3158.x, x_3158.y, x_3158.z));
            let x_3161 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3160.x, x_3160.y, x_3160.z, x_3161.w);
            let x_3163 : vec4<f32> = u_xlat15;
            let x_3165 : vec3<f32> = (vec3<f32>(x_3163.x, x_3163.y, x_3163.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3166 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3166.w);
            let x_3168 : vec4<f32> = u_xlat14;
            let x_3171 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3173 : vec3<f32> = (vec3<f32>(x_3168.y, x_3168.x, x_3168.z) * vec3<f32>(x_3171.x, x_3171.x, x_3171.x));
            let x_3174 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3173.x, x_3173.y, x_3173.z, x_3174.w);
            let x_3176 : vec4<f32> = u_xlat15;
            let x_3179 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3181 : vec3<f32> = (vec3<f32>(x_3176.x, x_3176.y, x_3176.z) * vec3<f32>(x_3179.y, x_3179.y, x_3179.y));
            let x_3182 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3181.x, x_3181.y, x_3181.z, x_3182.w);
            let x_3185 : f32 = u_xlat15.x;
            u_xlat14.w = x_3185;
            let x_3187 : vec4<f32> = u_xlat12;
            let x_3190 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y) * vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y)) + vec4<f32>(x_3193.y, x_3193.w, x_3193.x, x_3193.w));
            let x_3196 : vec4<f32> = u_xlat12;
            let x_3199 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3202 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3196.x, x_3196.y) * vec2<f32>(x_3199.x, x_3199.y)) + vec2<f32>(x_3202.z, x_3202.w));
            let x_3206 : f32 = u_xlat14.y;
            u_xlat15.w = x_3206;
            let x_3208 : vec4<f32> = u_xlat15;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.y, x_3208.z);
            let x_3210 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3210.x, x_3209.x, x_3210.z, x_3209.y);
            let x_3212 : vec4<f32> = u_xlat12;
            let x_3215 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3218 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3212.x, x_3212.y, x_3212.x, x_3212.y) * vec4<f32>(x_3215.x, x_3215.y, x_3215.x, x_3215.y)) + vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3218.y));
            let x_3221 : vec4<f32> = u_xlat12;
            let x_3224 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3227 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3221.x, x_3221.y, x_3221.x, x_3221.y) * vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y)) + vec4<f32>(x_3227.w, x_3227.y, x_3227.w, x_3227.z));
            let x_3230 : vec4<f32> = u_xlat12;
            let x_3233 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3236 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3230.x, x_3230.y, x_3230.x, x_3230.y) * vec4<f32>(x_3233.x, x_3233.y, x_3233.x, x_3233.y)) + vec4<f32>(x_3236.x, x_3236.w, x_3236.z, x_3236.w));
            let x_3239 : vec4<f32> = u_xlat13;
            let x_3241 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3239.x, x_3239.x, x_3239.x, x_3239.y) * vec4<f32>(x_3241.z, x_3241.w, x_3241.y, x_3241.z));
            let x_3244 : vec4<f32> = u_xlat13;
            let x_3246 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3244.y, x_3244.y, x_3244.z, x_3244.z) * x_3246);
            let x_3249 : f32 = u_xlat13.z;
            let x_3251 : f32 = u_xlat18.y;
            u_xlat85 = (x_3249 * x_3251);
            let x_3254 : vec4<f32> = u_xlat16;
            let x_3255 : vec2<f32> = vec2<f32>(x_3254.x, x_3254.y);
            let x_3257 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec34;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat86 = x_3266;
            let x_3268 : vec4<f32> = u_xlat16;
            let x_3269 : vec2<f32> = vec2<f32>(x_3268.z, x_3268.w);
            let x_3271 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3269.x, x_3269.y, x_3271);
            let x_3279 : vec3<f32> = txVec35;
            let x_3281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3279.xy, x_3279.z);
            u_xlat88 = x_3281;
            let x_3282 : f32 = u_xlat88;
            let x_3284 : f32 = u_xlat19.y;
            u_xlat88 = (x_3282 * x_3284);
            let x_3287 : f32 = u_xlat19.x;
            let x_3288 : f32 = u_xlat86;
            let x_3290 : f32 = u_xlat88;
            u_xlat86 = ((x_3287 * x_3288) + x_3290);
            let x_3293 : vec2<f32> = u_xlat64;
            let x_3295 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec36;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat88 = x_3304;
            let x_3306 : f32 = u_xlat19.z;
            let x_3307 : f32 = u_xlat88;
            let x_3309 : f32 = u_xlat86;
            u_xlat86 = ((x_3306 * x_3307) + x_3309);
            let x_3312 : vec4<f32> = u_xlat15;
            let x_3313 : vec2<f32> = vec2<f32>(x_3312.x, x_3312.y);
            let x_3315 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3322 : vec3<f32> = txVec37;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat88 = x_3324;
            let x_3326 : f32 = u_xlat19.w;
            let x_3327 : f32 = u_xlat88;
            let x_3329 : f32 = u_xlat86;
            u_xlat86 = ((x_3326 * x_3327) + x_3329);
            let x_3332 : vec4<f32> = u_xlat17;
            let x_3333 : vec2<f32> = vec2<f32>(x_3332.x, x_3332.y);
            let x_3335 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
            let x_3342 : vec3<f32> = txVec38;
            let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
            u_xlat88 = x_3344;
            let x_3346 : f32 = u_xlat20.x;
            let x_3347 : f32 = u_xlat88;
            let x_3349 : f32 = u_xlat86;
            u_xlat86 = ((x_3346 * x_3347) + x_3349);
            let x_3352 : vec4<f32> = u_xlat17;
            let x_3353 : vec2<f32> = vec2<f32>(x_3352.z, x_3352.w);
            let x_3355 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec39;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat88 = x_3364;
            let x_3366 : f32 = u_xlat20.y;
            let x_3367 : f32 = u_xlat88;
            let x_3369 : f32 = u_xlat86;
            u_xlat86 = ((x_3366 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat15;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.z, x_3372.w);
            let x_3375 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec40;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat88 = x_3384;
            let x_3386 : f32 = u_xlat20.z;
            let x_3387 : f32 = u_xlat88;
            let x_3389 : f32 = u_xlat86;
            u_xlat86 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec4<f32> = u_xlat14;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.x, x_3392.y);
            let x_3395 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec41;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat88 = x_3404;
            let x_3406 : f32 = u_xlat20.w;
            let x_3407 : f32 = u_xlat88;
            let x_3409 : f32 = u_xlat86;
            u_xlat86 = ((x_3406 * x_3407) + x_3409);
            let x_3412 : vec4<f32> = u_xlat14;
            let x_3413 : vec2<f32> = vec2<f32>(x_3412.z, x_3412.w);
            let x_3415 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3413.x, x_3413.y, x_3415);
            let x_3422 : vec3<f32> = txVec42;
            let x_3424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3422.xy, x_3422.z);
            u_xlat88 = x_3424;
            let x_3425 : f32 = u_xlat85;
            let x_3426 : f32 = u_xlat88;
            let x_3428 : f32 = u_xlat86;
            u_xlat84 = ((x_3425 * x_3426) + x_3428);
          } else {
            let x_3431 : vec4<f32> = u_xlat11;
            let x_3434 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3437 : vec2<f32> = ((vec2<f32>(x_3431.x, x_3431.y) * vec2<f32>(x_3434.z, x_3434.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3438 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3437.x, x_3437.y, x_3438.z, x_3438.w);
            let x_3440 : vec4<f32> = u_xlat12;
            let x_3442 : vec2<f32> = floor(vec2<f32>(x_3440.x, x_3440.y));
            let x_3443 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3442.x, x_3442.y, x_3443.z, x_3443.w);
            let x_3445 : vec4<f32> = u_xlat11;
            let x_3448 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3451 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3445.x, x_3445.y) * vec2<f32>(x_3448.z, x_3448.w)) + -(vec2<f32>(x_3451.x, x_3451.y)));
            let x_3455 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3455.x, x_3455.x, x_3455.y, x_3455.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3458 : vec4<f32> = u_xlat13;
            let x_3460 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3458.x, x_3458.x, x_3458.z, x_3458.z) * vec4<f32>(x_3460.x, x_3460.x, x_3460.z, x_3460.z));
            let x_3463 : vec4<f32> = u_xlat14;
            let x_3465 : vec2<f32> = (vec2<f32>(x_3463.y, x_3463.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3466 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3466.x, x_3465.x, x_3466.z, x_3465.y);
            let x_3468 : vec4<f32> = u_xlat14;
            let x_3471 : vec2<f32> = u_xlat64;
            let x_3473 : vec2<f32> = ((vec2<f32>(x_3468.x, x_3468.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3471));
            let x_3474 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3473.x, x_3474.y, x_3473.y, x_3474.w);
            let x_3476 : vec2<f32> = u_xlat64;
            let x_3478 : vec2<f32> = (-(x_3476) + vec2<f32>(1.0f, 1.0f));
            let x_3479 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3478.x, x_3478.y, x_3479.z, x_3479.w);
            let x_3481 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3481, vec2<f32>(0.0f, 0.0f));
            let x_3483 : vec2<f32> = u_xlat66;
            let x_3485 : vec2<f32> = u_xlat66;
            let x_3487 : vec4<f32> = u_xlat14;
            let x_3489 : vec2<f32> = ((-(x_3483) * x_3485) + vec2<f32>(x_3487.x, x_3487.y));
            let x_3490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3489.x, x_3489.y, x_3490.z, x_3490.w);
            let x_3492 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3492, vec2<f32>(0.0f, 0.0f));
            let x_3495 : vec2<f32> = u_xlat66;
            let x_3497 : vec2<f32> = u_xlat66;
            let x_3499 : vec4<f32> = u_xlat13;
            let x_3501 : vec2<f32> = ((-(x_3495) * x_3497) + vec2<f32>(x_3499.y, x_3499.w));
            let x_3502 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3501.x, x_3502.y, x_3501.y);
            let x_3504 : vec4<f32> = u_xlat14;
            let x_3506 : vec2<f32> = (vec2<f32>(x_3504.x, x_3504.y) + vec2<f32>(2.0f, 2.0f));
            let x_3507 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3506.x, x_3506.y, x_3507.z, x_3507.w);
            let x_3509 : vec3<f32> = u_xlat39;
            let x_3511 : vec2<f32> = (vec2<f32>(x_3509.x, x_3509.z) + vec2<f32>(2.0f, 2.0f));
            let x_3512 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3512.x, x_3511.x, x_3512.z, x_3511.y);
            let x_3515 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3515 * 0.08163200318813323975f);
            let x_3518 : vec4<f32> = u_xlat13;
            let x_3520 : vec3<f32> = (vec3<f32>(x_3518.z, x_3518.x, x_3518.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3521 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3520.x, x_3520.y, x_3520.z, x_3521.w);
            let x_3523 : vec4<f32> = u_xlat14;
            let x_3525 : vec2<f32> = (vec2<f32>(x_3523.x, x_3523.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3526 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3525.x, x_3525.y, x_3526.z, x_3526.w);
            let x_3529 : f32 = u_xlat17.y;
            u_xlat16.x = x_3529;
            let x_3531 : vec2<f32> = u_xlat64;
            let x_3534 : vec2<f32> = ((vec2<f32>(x_3531.x, x_3531.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3535 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3535.x, x_3534.x, x_3535.z, x_3534.y);
            let x_3537 : vec2<f32> = u_xlat64;
            let x_3540 : vec2<f32> = ((vec2<f32>(x_3537.x, x_3537.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3541 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3540.x, x_3541.y, x_3540.y, x_3541.w);
            let x_3544 : f32 = u_xlat13.x;
            u_xlat14.y = x_3544;
            let x_3547 : f32 = u_xlat15.y;
            u_xlat14.w = x_3547;
            let x_3549 : vec4<f32> = u_xlat14;
            let x_3550 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3549 + x_3550);
            let x_3552 : vec2<f32> = u_xlat64;
            let x_3555 : vec2<f32> = ((vec2<f32>(x_3552.y, x_3552.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3556 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3556.x, x_3555.x, x_3556.z, x_3555.y);
            let x_3558 : vec2<f32> = u_xlat64;
            let x_3561 : vec2<f32> = ((vec2<f32>(x_3558.y, x_3558.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3562 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3561.x, x_3562.y, x_3561.y, x_3562.w);
            let x_3565 : f32 = u_xlat13.y;
            u_xlat15.y = x_3565;
            let x_3567 : vec4<f32> = u_xlat15;
            let x_3568 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3567 + x_3568);
            let x_3570 : vec4<f32> = u_xlat14;
            let x_3571 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3570 / x_3571);
            let x_3573 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3573 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3575 : vec4<f32> = u_xlat15;
            let x_3576 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3575 / x_3576);
            let x_3578 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3578 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3580 : vec4<f32> = u_xlat14;
            let x_3583 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3580.w, x_3580.x, x_3580.y, x_3580.z) * vec4<f32>(x_3583.x, x_3583.x, x_3583.x, x_3583.x));
            let x_3586 : vec4<f32> = u_xlat15;
            let x_3589 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3586.x, x_3586.w, x_3586.y, x_3586.z) * vec4<f32>(x_3589.y, x_3589.y, x_3589.y, x_3589.y));
            let x_3592 : vec4<f32> = u_xlat14;
            let x_3593 : vec3<f32> = vec3<f32>(x_3592.y, x_3592.z, x_3592.w);
            let x_3594 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3593.x, x_3594.y, x_3593.y, x_3593.z);
            let x_3597 : f32 = u_xlat15.x;
            u_xlat17.y = x_3597;
            let x_3599 : vec4<f32> = u_xlat12;
            let x_3602 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3605 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3599.x, x_3599.y, x_3599.x, x_3599.y) * vec4<f32>(x_3602.x, x_3602.y, x_3602.x, x_3602.y)) + vec4<f32>(x_3605.x, x_3605.y, x_3605.z, x_3605.y));
            let x_3608 : vec4<f32> = u_xlat12;
            let x_3611 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3614 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3608.x, x_3608.y) * vec2<f32>(x_3611.x, x_3611.y)) + vec2<f32>(x_3614.w, x_3614.y));
            let x_3618 : f32 = u_xlat17.y;
            u_xlat14.y = x_3618;
            let x_3621 : f32 = u_xlat15.z;
            u_xlat17.y = x_3621;
            let x_3623 : vec4<f32> = u_xlat12;
            let x_3626 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3629 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3623.x, x_3623.y, x_3623.x, x_3623.y) * vec4<f32>(x_3626.x, x_3626.y, x_3626.x, x_3626.y)) + vec4<f32>(x_3629.x, x_3629.y, x_3629.z, x_3629.y));
            let x_3632 : vec4<f32> = u_xlat12;
            let x_3635 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3638 : vec4<f32> = u_xlat17;
            let x_3640 : vec2<f32> = ((vec2<f32>(x_3632.x, x_3632.y) * vec2<f32>(x_3635.x, x_3635.y)) + vec2<f32>(x_3638.w, x_3638.y));
            let x_3641 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3640.x, x_3640.y, x_3641.z, x_3641.w);
            let x_3644 : f32 = u_xlat17.y;
            u_xlat14.z = x_3644;
            let x_3647 : vec4<f32> = u_xlat12;
            let x_3650 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3653 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3647.x, x_3647.y, x_3647.x, x_3647.y) * vec4<f32>(x_3650.x, x_3650.y, x_3650.x, x_3650.y)) + vec4<f32>(x_3653.x, x_3653.y, x_3653.x, x_3653.z));
            let x_3657 : f32 = u_xlat15.w;
            u_xlat17.y = x_3657;
            let x_3660 : vec4<f32> = u_xlat12;
            let x_3663 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3666 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3660.x, x_3660.y, x_3660.x, x_3660.y) * vec4<f32>(x_3663.x, x_3663.y, x_3663.x, x_3663.y)) + vec4<f32>(x_3666.x, x_3666.y, x_3666.z, x_3666.y));
            let x_3670 : vec4<f32> = u_xlat12;
            let x_3673 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3676 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3670.x, x_3670.y) * vec2<f32>(x_3673.x, x_3673.y)) + vec2<f32>(x_3676.w, x_3676.y));
            let x_3680 : f32 = u_xlat17.y;
            u_xlat14.w = x_3680;
            let x_3683 : vec4<f32> = u_xlat12;
            let x_3686 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3689 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3683.x, x_3683.y) * vec2<f32>(x_3686.x, x_3686.y)) + vec2<f32>(x_3689.x, x_3689.w));
            let x_3692 : vec4<f32> = u_xlat17;
            let x_3693 : vec3<f32> = vec3<f32>(x_3692.x, x_3692.z, x_3692.w);
            let x_3694 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3693.x, x_3694.y, x_3693.y, x_3693.z);
            let x_3696 : vec4<f32> = u_xlat12;
            let x_3699 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3702 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3696.x, x_3696.y, x_3696.x, x_3696.y) * vec4<f32>(x_3699.x, x_3699.y, x_3699.x, x_3699.y)) + vec4<f32>(x_3702.x, x_3702.y, x_3702.z, x_3702.y));
            let x_3705 : vec4<f32> = u_xlat12;
            let x_3708 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3711 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3705.x, x_3705.y) * vec2<f32>(x_3708.x, x_3708.y)) + vec2<f32>(x_3711.w, x_3711.y));
            let x_3715 : f32 = u_xlat14.x;
            u_xlat15.x = x_3715;
            let x_3717 : vec4<f32> = u_xlat12;
            let x_3720 : vec4<f32> = x_594.x_AdditionalShadowmapSize;
            let x_3723 : vec4<f32> = u_xlat15;
            let x_3725 : vec2<f32> = ((vec2<f32>(x_3717.x, x_3717.y) * vec2<f32>(x_3720.x, x_3720.y)) + vec2<f32>(x_3723.x, x_3723.y));
            let x_3726 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3725.x, x_3725.y, x_3726.z, x_3726.w);
            let x_3729 : vec4<f32> = u_xlat13;
            let x_3731 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3729.x, x_3729.x, x_3729.x, x_3729.x) * x_3731);
            let x_3734 : vec4<f32> = u_xlat13;
            let x_3736 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3734.y, x_3734.y, x_3734.y, x_3734.y) * x_3736);
            let x_3739 : vec4<f32> = u_xlat13;
            let x_3741 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3739.z, x_3739.z, x_3739.z, x_3739.z) * x_3741);
            let x_3743 : vec4<f32> = u_xlat13;
            let x_3745 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3743.w, x_3743.w, x_3743.w, x_3743.w) * x_3745);
            let x_3748 : vec4<f32> = u_xlat18;
            let x_3749 : vec2<f32> = vec2<f32>(x_3748.x, x_3748.y);
            let x_3751 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3749.x, x_3749.y, x_3751);
            let x_3758 : vec3<f32> = txVec43;
            let x_3760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3758.xy, x_3758.z);
            u_xlat85 = x_3760;
            let x_3762 : vec4<f32> = u_xlat18;
            let x_3763 : vec2<f32> = vec2<f32>(x_3762.z, x_3762.w);
            let x_3765 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3763.x, x_3763.y, x_3765);
            let x_3772 : vec3<f32> = txVec44;
            let x_3774 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3772.xy, x_3772.z);
            u_xlat86 = x_3774;
            let x_3775 : f32 = u_xlat86;
            let x_3777 : f32 = u_xlat23.y;
            u_xlat86 = (x_3775 * x_3777);
            let x_3780 : f32 = u_xlat23.x;
            let x_3781 : f32 = u_xlat85;
            let x_3783 : f32 = u_xlat86;
            u_xlat85 = ((x_3780 * x_3781) + x_3783);
            let x_3786 : vec2<f32> = u_xlat64;
            let x_3788 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3786.x, x_3786.y, x_3788);
            let x_3795 : vec3<f32> = txVec45;
            let x_3797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3795.xy, x_3795.z);
            u_xlat86 = x_3797;
            let x_3799 : f32 = u_xlat23.z;
            let x_3800 : f32 = u_xlat86;
            let x_3802 : f32 = u_xlat85;
            u_xlat85 = ((x_3799 * x_3800) + x_3802);
            let x_3805 : vec4<f32> = u_xlat21;
            let x_3806 : vec2<f32> = vec2<f32>(x_3805.x, x_3805.y);
            let x_3808 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3806.x, x_3806.y, x_3808);
            let x_3815 : vec3<f32> = txVec46;
            let x_3817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3815.xy, x_3815.z);
            u_xlat86 = x_3817;
            let x_3819 : f32 = u_xlat23.w;
            let x_3820 : f32 = u_xlat86;
            let x_3822 : f32 = u_xlat85;
            u_xlat85 = ((x_3819 * x_3820) + x_3822);
            let x_3825 : vec4<f32> = u_xlat19;
            let x_3826 : vec2<f32> = vec2<f32>(x_3825.x, x_3825.y);
            let x_3828 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3826.x, x_3826.y, x_3828);
            let x_3835 : vec3<f32> = txVec47;
            let x_3837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3835.xy, x_3835.z);
            u_xlat86 = x_3837;
            let x_3839 : f32 = u_xlat24.x;
            let x_3840 : f32 = u_xlat86;
            let x_3842 : f32 = u_xlat85;
            u_xlat85 = ((x_3839 * x_3840) + x_3842);
            let x_3845 : vec4<f32> = u_xlat19;
            let x_3846 : vec2<f32> = vec2<f32>(x_3845.z, x_3845.w);
            let x_3848 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3846.x, x_3846.y, x_3848);
            let x_3855 : vec3<f32> = txVec48;
            let x_3857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3855.xy, x_3855.z);
            u_xlat86 = x_3857;
            let x_3859 : f32 = u_xlat24.y;
            let x_3860 : f32 = u_xlat86;
            let x_3862 : f32 = u_xlat85;
            u_xlat85 = ((x_3859 * x_3860) + x_3862);
            let x_3865 : vec4<f32> = u_xlat20;
            let x_3866 : vec2<f32> = vec2<f32>(x_3865.x, x_3865.y);
            let x_3868 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3866.x, x_3866.y, x_3868);
            let x_3875 : vec3<f32> = txVec49;
            let x_3877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3875.xy, x_3875.z);
            u_xlat86 = x_3877;
            let x_3879 : f32 = u_xlat24.z;
            let x_3880 : f32 = u_xlat86;
            let x_3882 : f32 = u_xlat85;
            u_xlat85 = ((x_3879 * x_3880) + x_3882);
            let x_3885 : vec4<f32> = u_xlat21;
            let x_3886 : vec2<f32> = vec2<f32>(x_3885.z, x_3885.w);
            let x_3888 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3886.x, x_3886.y, x_3888);
            let x_3895 : vec3<f32> = txVec50;
            let x_3897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3895.xy, x_3895.z);
            u_xlat86 = x_3897;
            let x_3899 : f32 = u_xlat24.w;
            let x_3900 : f32 = u_xlat86;
            let x_3902 : f32 = u_xlat85;
            u_xlat85 = ((x_3899 * x_3900) + x_3902);
            let x_3905 : vec4<f32> = u_xlat22;
            let x_3906 : vec2<f32> = vec2<f32>(x_3905.x, x_3905.y);
            let x_3908 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3906.x, x_3906.y, x_3908);
            let x_3915 : vec3<f32> = txVec51;
            let x_3917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3915.xy, x_3915.z);
            u_xlat86 = x_3917;
            let x_3919 : f32 = u_xlat25.x;
            let x_3920 : f32 = u_xlat86;
            let x_3922 : f32 = u_xlat85;
            u_xlat85 = ((x_3919 * x_3920) + x_3922);
            let x_3925 : vec4<f32> = u_xlat22;
            let x_3926 : vec2<f32> = vec2<f32>(x_3925.z, x_3925.w);
            let x_3928 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3926.x, x_3926.y, x_3928);
            let x_3935 : vec3<f32> = txVec52;
            let x_3937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3935.xy, x_3935.z);
            u_xlat86 = x_3937;
            let x_3939 : f32 = u_xlat25.y;
            let x_3940 : f32 = u_xlat86;
            let x_3942 : f32 = u_xlat85;
            u_xlat85 = ((x_3939 * x_3940) + x_3942);
            let x_3945 : vec2<f32> = u_xlat40;
            let x_3947 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3945.x, x_3945.y, x_3947);
            let x_3954 : vec3<f32> = txVec53;
            let x_3956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3954.xy, x_3954.z);
            u_xlat86 = x_3956;
            let x_3958 : f32 = u_xlat25.z;
            let x_3959 : f32 = u_xlat86;
            let x_3961 : f32 = u_xlat85;
            u_xlat85 = ((x_3958 * x_3959) + x_3961);
            let x_3964 : vec2<f32> = u_xlat72;
            let x_3966 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3964.x, x_3964.y, x_3966);
            let x_3973 : vec3<f32> = txVec54;
            let x_3975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3973.xy, x_3973.z);
            u_xlat86 = x_3975;
            let x_3977 : f32 = u_xlat25.w;
            let x_3978 : f32 = u_xlat86;
            let x_3980 : f32 = u_xlat85;
            u_xlat85 = ((x_3977 * x_3978) + x_3980);
            let x_3983 : vec4<f32> = u_xlat17;
            let x_3984 : vec2<f32> = vec2<f32>(x_3983.x, x_3983.y);
            let x_3986 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3984.x, x_3984.y, x_3986);
            let x_3993 : vec3<f32> = txVec55;
            let x_3995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3993.xy, x_3993.z);
            u_xlat86 = x_3995;
            let x_3997 : f32 = u_xlat13.x;
            let x_3998 : f32 = u_xlat86;
            let x_4000 : f32 = u_xlat85;
            u_xlat85 = ((x_3997 * x_3998) + x_4000);
            let x_4003 : vec4<f32> = u_xlat17;
            let x_4004 : vec2<f32> = vec2<f32>(x_4003.z, x_4003.w);
            let x_4006 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4004.x, x_4004.y, x_4006);
            let x_4013 : vec3<f32> = txVec56;
            let x_4015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4013.xy, x_4013.z);
            u_xlat86 = x_4015;
            let x_4017 : f32 = u_xlat13.y;
            let x_4018 : f32 = u_xlat86;
            let x_4020 : f32 = u_xlat85;
            u_xlat85 = ((x_4017 * x_4018) + x_4020);
            let x_4023 : vec2<f32> = u_xlat67;
            let x_4025 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4023.x, x_4023.y, x_4025);
            let x_4032 : vec3<f32> = txVec57;
            let x_4034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4032.xy, x_4032.z);
            u_xlat86 = x_4034;
            let x_4036 : f32 = u_xlat13.z;
            let x_4037 : f32 = u_xlat86;
            let x_4039 : f32 = u_xlat85;
            u_xlat85 = ((x_4036 * x_4037) + x_4039);
            let x_4042 : vec4<f32> = u_xlat12;
            let x_4043 : vec2<f32> = vec2<f32>(x_4042.x, x_4042.y);
            let x_4045 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4043.x, x_4043.y, x_4045);
            let x_4052 : vec3<f32> = txVec58;
            let x_4054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4052.xy, x_4052.z);
            u_xlat86 = x_4054;
            let x_4056 : f32 = u_xlat13.w;
            let x_4057 : f32 = u_xlat86;
            let x_4059 : f32 = u_xlat85;
            u_xlat84 = ((x_4056 * x_4057) + x_4059);
          }
        }
      } else {
        let x_4063 : vec4<f32> = u_xlat11;
        let x_4064 : vec2<f32> = vec2<f32>(x_4063.x, x_4063.y);
        let x_4066 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4064.x, x_4064.y, x_4066);
        let x_4073 : vec3<f32> = txVec59;
        let x_4075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4073.xy, x_4073.z);
        u_xlat84 = x_4075;
      }
      let x_4076 : i32 = u_xlati55;
      let x_4078 : f32 = x_594.x_AdditionalShadowParams[x_4076].x;
      u_xlat85 = (1.0f + -(x_4078));
      let x_4081 : f32 = u_xlat84;
      let x_4082 : i32 = u_xlati55;
      let x_4084 : f32 = x_594.x_AdditionalShadowParams[x_4082].x;
      let x_4086 : f32 = u_xlat85;
      u_xlat84 = ((x_4081 * x_4084) + x_4086);
      let x_4089 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4089);
      let x_4093 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4093 >= 1.0f);
      let x_4095 : bool = u_xlatb85;
      let x_4096 : bool = u_xlatb86;
      u_xlatb85 = (x_4095 | x_4096);
      let x_4098 : bool = u_xlatb85;
      let x_4099 : f32 = u_xlat84;
      u_xlat84 = select(x_4099, 1.0f, x_4098);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4102 : f32 = u_xlat84;
    u_xlat85 = (-(x_4102) + 1.0f);
    let x_4105 : f32 = u_xlat52;
    let x_4106 : f32 = u_xlat85;
    let x_4108 : f32 = u_xlat84;
    u_xlat84 = ((x_4105 * x_4106) + x_4108);
    let x_4111 : i32 = u_xlati55;
    u_xlati85 = (1i << bitcast<u32>((x_4111 & 31i)));
    let x_4114 : i32 = u_xlati85;
    let x_4117 : f32 = x_2208.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4114) & bitcast<u32>(x_4117)));
    let x_4121 : i32 = u_xlati85;
    if ((x_4121 != 0i)) {
      let x_4125 : i32 = u_xlati55;
      let x_4127 : f32 = x_2208.x_AdditionalLightsLightTypes[x_4125].el;
      u_xlati85 = i32(x_4127);
      let x_4130 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4130 != 0i));
      let x_4134 : i32 = u_xlati55;
      u_xlati88 = (x_4134 << bitcast<u32>(2i));
      let x_4136 : i32 = u_xlati86;
      if ((x_4136 != 0i)) {
        let x_4140 : vec3<f32> = vs_TEXCOORD7;
        let x_4142 : i32 = u_xlati88;
        let x_4145 : i32 = u_xlati88;
        let x_4149 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4142 + 1i) / 4i)][((x_4145 + 1i) % 4i)];
        let x_4151 : vec3<f32> = (vec3<f32>(x_4140.y, x_4140.y, x_4140.y) * vec3<f32>(x_4149.x, x_4149.y, x_4149.w));
        let x_4152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4151.x, x_4151.y, x_4151.z, x_4152.w);
        let x_4154 : i32 = u_xlati88;
        let x_4156 : i32 = u_xlati88;
        let x_4159 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[(x_4154 / 4i)][(x_4156 % 4i)];
        let x_4161 : vec3<f32> = vs_TEXCOORD7;
        let x_4164 : vec4<f32> = u_xlat11;
        let x_4166 : vec3<f32> = ((vec3<f32>(x_4159.x, x_4159.y, x_4159.w) * vec3<f32>(x_4161.x, x_4161.x, x_4161.x)) + vec3<f32>(x_4164.x, x_4164.y, x_4164.z));
        let x_4167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4166.x, x_4166.y, x_4166.z, x_4167.w);
        let x_4169 : i32 = u_xlati88;
        let x_4172 : i32 = u_xlati88;
        let x_4176 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4169 + 2i) / 4i)][((x_4172 + 2i) % 4i)];
        let x_4178 : vec3<f32> = vs_TEXCOORD7;
        let x_4181 : vec4<f32> = u_xlat11;
        let x_4183 : vec3<f32> = ((vec3<f32>(x_4176.x, x_4176.y, x_4176.w) * vec3<f32>(x_4178.z, x_4178.z, x_4178.z)) + vec3<f32>(x_4181.x, x_4181.y, x_4181.z));
        let x_4184 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4183.x, x_4183.y, x_4183.z, x_4184.w);
        let x_4186 : vec4<f32> = u_xlat11;
        let x_4188 : i32 = u_xlati88;
        let x_4191 : i32 = u_xlati88;
        let x_4195 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4188 + 3i) / 4i)][((x_4191 + 3i) % 4i)];
        let x_4197 : vec3<f32> = (vec3<f32>(x_4186.x, x_4186.y, x_4186.z) + vec3<f32>(x_4195.x, x_4195.y, x_4195.w));
        let x_4198 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4197.x, x_4197.y, x_4197.z, x_4198.w);
        let x_4200 : vec4<f32> = u_xlat11;
        let x_4202 : vec4<f32> = u_xlat11;
        let x_4204 : vec2<f32> = (vec2<f32>(x_4200.x, x_4200.y) / vec2<f32>(x_4202.z, x_4202.z));
        let x_4205 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4204.x, x_4204.y, x_4205.z, x_4205.w);
        let x_4207 : vec4<f32> = u_xlat11;
        let x_4210 : vec2<f32> = ((vec2<f32>(x_4207.x, x_4207.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4210.x, x_4210.y, x_4211.z, x_4211.w);
        let x_4213 : vec4<f32> = u_xlat11;
        let x_4217 : vec2<f32> = clamp(vec2<f32>(x_4213.x, x_4213.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4217.x, x_4217.y, x_4218.z, x_4218.w);
        let x_4220 : i32 = u_xlati55;
        let x_4222 : vec4<f32> = x_2208.x_AdditionalLightsCookieAtlasUVRects[x_4220];
        let x_4224 : vec4<f32> = u_xlat11;
        let x_4227 : i32 = u_xlati55;
        let x_4229 : vec4<f32> = x_2208.x_AdditionalLightsCookieAtlasUVRects[x_4227];
        let x_4231 : vec2<f32> = ((vec2<f32>(x_4222.x, x_4222.y) * vec2<f32>(x_4224.x, x_4224.y)) + vec2<f32>(x_4229.z, x_4229.w));
        let x_4232 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4231.x, x_4231.y, x_4232.z, x_4232.w);
      } else {
        let x_4235 : i32 = u_xlati85;
        u_xlatb85 = (x_4235 == 1i);
        let x_4237 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4237);
        let x_4239 : i32 = u_xlati85;
        if ((x_4239 != 0i)) {
          let x_4244 : vec3<f32> = vs_TEXCOORD7;
          let x_4246 : i32 = u_xlati88;
          let x_4249 : i32 = u_xlati88;
          let x_4253 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4246 + 1i) / 4i)][((x_4249 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4244.y, x_4244.y) * vec2<f32>(x_4253.x, x_4253.y));
          let x_4256 : i32 = u_xlati88;
          let x_4258 : i32 = u_xlati88;
          let x_4261 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[(x_4256 / 4i)][(x_4258 % 4i)];
          let x_4263 : vec3<f32> = vs_TEXCOORD7;
          let x_4266 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4261.x, x_4261.y) * vec2<f32>(x_4263.x, x_4263.x)) + x_4266);
          let x_4268 : i32 = u_xlati88;
          let x_4271 : i32 = u_xlati88;
          let x_4275 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4268 + 2i) / 4i)][((x_4271 + 2i) % 4i)];
          let x_4277 : vec3<f32> = vs_TEXCOORD7;
          let x_4280 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4275.x, x_4275.y) * vec2<f32>(x_4277.z, x_4277.z)) + x_4280);
          let x_4282 : vec2<f32> = u_xlat63;
          let x_4283 : i32 = u_xlati88;
          let x_4286 : i32 = u_xlati88;
          let x_4290 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4283 + 3i) / 4i)][((x_4286 + 3i) % 4i)];
          u_xlat63 = (x_4282 + vec2<f32>(x_4290.x, x_4290.y));
          let x_4293 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4293 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4296 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4296);
          let x_4298 : i32 = u_xlati55;
          let x_4300 : vec4<f32> = x_2208.x_AdditionalLightsCookieAtlasUVRects[x_4298];
          let x_4302 : vec2<f32> = u_xlat63;
          let x_4304 : i32 = u_xlati55;
          let x_4306 : vec4<f32> = x_2208.x_AdditionalLightsCookieAtlasUVRects[x_4304];
          let x_4308 : vec2<f32> = ((vec2<f32>(x_4300.x, x_4300.y) * x_4302) + vec2<f32>(x_4306.z, x_4306.w));
          let x_4309 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4308.x, x_4308.y, x_4309.z, x_4309.w);
        } else {
          let x_4312 : vec3<f32> = vs_TEXCOORD7;
          let x_4314 : i32 = u_xlati88;
          let x_4317 : i32 = u_xlati88;
          let x_4321 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4314 + 1i) / 4i)][((x_4317 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4312.y, x_4312.y, x_4312.y, x_4312.y) * x_4321);
          let x_4323 : i32 = u_xlati88;
          let x_4325 : i32 = u_xlati88;
          let x_4328 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[(x_4323 / 4i)][(x_4325 % 4i)];
          let x_4329 : vec3<f32> = vs_TEXCOORD7;
          let x_4332 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4328 * vec4<f32>(x_4329.x, x_4329.x, x_4329.x, x_4329.x)) + x_4332);
          let x_4334 : i32 = u_xlati88;
          let x_4337 : i32 = u_xlati88;
          let x_4341 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4334 + 2i) / 4i)][((x_4337 + 2i) % 4i)];
          let x_4342 : vec3<f32> = vs_TEXCOORD7;
          let x_4345 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4341 * vec4<f32>(x_4342.z, x_4342.z, x_4342.z, x_4342.z)) + x_4345);
          let x_4347 : vec4<f32> = u_xlat12;
          let x_4348 : i32 = u_xlati88;
          let x_4351 : i32 = u_xlati88;
          let x_4355 : vec4<f32> = x_2208.x_AdditionalLightsWorldToLights[((x_4348 + 3i) / 4i)][((x_4351 + 3i) % 4i)];
          u_xlat12 = (x_4347 + x_4355);
          let x_4357 : vec4<f32> = u_xlat12;
          let x_4359 : vec4<f32> = u_xlat12;
          let x_4361 : vec3<f32> = (vec3<f32>(x_4357.x, x_4357.y, x_4357.z) / vec3<f32>(x_4359.w, x_4359.w, x_4359.w));
          let x_4362 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4361.x, x_4361.y, x_4361.z, x_4362.w);
          let x_4364 : vec4<f32> = u_xlat12;
          let x_4366 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4364.x, x_4364.y, x_4364.z), vec3<f32>(x_4366.x, x_4366.y, x_4366.z));
          let x_4369 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4369);
          let x_4371 : f32 = u_xlat85;
          let x_4373 : vec4<f32> = u_xlat12;
          let x_4375 : vec3<f32> = (vec3<f32>(x_4371, x_4371, x_4371) * vec3<f32>(x_4373.x, x_4373.y, x_4373.z));
          let x_4376 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4375.x, x_4375.y, x_4375.z, x_4376.w);
          let x_4378 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4378.x, x_4378.y, x_4378.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4383 : f32 = u_xlat85;
          u_xlat85 = max(x_4383, 0.00000099999999747524f);
          let x_4386 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4386);
          let x_4388 : f32 = u_xlat85;
          let x_4390 : vec4<f32> = u_xlat12;
          let x_4392 : vec3<f32> = (vec3<f32>(x_4388, x_4388, x_4388) * vec3<f32>(x_4390.z, x_4390.x, x_4390.y));
          let x_4393 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4392.x, x_4392.y, x_4392.z, x_4393.w);
          let x_4396 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4396);
          let x_4400 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4400, 0.0f, 1.0f);
          let x_4404 : vec4<f32> = u_xlat13;
          let x_4406 : vec4<bool> = (vec4<f32>(x_4404.y, x_4404.z, x_4404.y, x_4404.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4406.x, x_4406.y);
          let x_4409 : bool = u_xlatb63.x;
          if (x_4409) {
            let x_4414 : f32 = u_xlat13.x;
            x_4410 = x_4414;
          } else {
            let x_4417 : f32 = u_xlat13.x;
            x_4410 = -(x_4417);
          }
          let x_4419 : f32 = x_4410;
          u_xlat63.x = x_4419;
          let x_4422 : bool = u_xlatb63.y;
          if (x_4422) {
            let x_4427 : f32 = u_xlat13.x;
            x_4423 = x_4427;
          } else {
            let x_4430 : f32 = u_xlat13.x;
            x_4423 = -(x_4430);
          }
          let x_4432 : f32 = x_4423;
          u_xlat63.y = x_4432;
          let x_4434 : vec4<f32> = u_xlat12;
          let x_4436 : f32 = u_xlat85;
          let x_4439 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4434.x, x_4434.y) * vec2<f32>(x_4436, x_4436)) + x_4439);
          let x_4441 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4441 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4444 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4444, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4448 : i32 = u_xlati55;
          let x_4450 : vec4<f32> = x_2208.x_AdditionalLightsCookieAtlasUVRects[x_4448];
          let x_4452 : vec2<f32> = u_xlat63;
          let x_4454 : i32 = u_xlati55;
          let x_4456 : vec4<f32> = x_2208.x_AdditionalLightsCookieAtlasUVRects[x_4454];
          let x_4458 : vec2<f32> = ((vec2<f32>(x_4450.x, x_4450.y) * x_4452) + vec2<f32>(x_4456.z, x_4456.w));
          let x_4459 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4458.x, x_4458.y, x_4459.z, x_4459.w);
        }
      }
      let x_4466 : vec4<f32> = u_xlat11;
      let x_4468 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4466.x, x_4466.y), 0.0f);
      u_xlat11 = x_4468;
      let x_4470 : bool = u_xlatb3.y;
      if (x_4470) {
        let x_4475 : f32 = u_xlat11.w;
        x_4471 = x_4475;
      } else {
        let x_4478 : f32 = u_xlat11.x;
        x_4471 = x_4478;
      }
      let x_4479 : f32 = x_4471;
      u_xlat85 = x_4479;
      let x_4481 : bool = u_xlatb3.x;
      if (x_4481) {
        let x_4485 : vec4<f32> = u_xlat11;
        x_4482 = vec3<f32>(x_4485.x, x_4485.y, x_4485.z);
      } else {
        let x_4488 : f32 = u_xlat85;
        x_4482 = vec3<f32>(x_4488, x_4488, x_4488);
      }
      let x_4490 : vec3<f32> = x_4482;
      let x_4491 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4490.x, x_4490.y, x_4490.z, x_4491.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4497 : vec4<f32> = u_xlat11;
    let x_4499 : i32 = u_xlati55;
    let x_4501 : vec4<f32> = x_2702.x_AdditionalLightsColor[x_4499];
    let x_4503 : vec3<f32> = (vec3<f32>(x_4497.x, x_4497.y, x_4497.z) * vec3<f32>(x_4501.x, x_4501.y, x_4501.z));
    let x_4504 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4503.x, x_4503.y, x_4503.z, x_4504.w);
    let x_4506 : f32 = u_xlat82;
    let x_4507 : f32 = u_xlat84;
    u_xlat55 = (x_4506 * x_4507);
    let x_4509 : vec4<f32> = u_xlat1;
    let x_4511 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4509.x, x_4509.y, x_4509.z), vec3<f32>(x_4511.x, x_4511.y, x_4511.z));
    let x_4514 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4514, 0.0f, 1.0f);
    let x_4516 : f32 = u_xlat55;
    let x_4517 : f32 = u_xlat82;
    u_xlat55 = (x_4516 * x_4517);
    let x_4519 : f32 = u_xlat55;
    let x_4521 : vec4<f32> = u_xlat11;
    let x_4523 : vec3<f32> = (vec3<f32>(x_4519, x_4519, x_4519) * vec3<f32>(x_4521.x, x_4521.y, x_4521.z));
    let x_4524 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4523.x, x_4523.y, x_4523.z, x_4524.w);
    let x_4526 : vec3<f32> = u_xlat35;
    let x_4527 : f32 = u_xlat83;
    let x_4530 : vec3<f32> = u_xlat2;
    u_xlat35 = ((x_4526 * vec3<f32>(x_4527, x_4527, x_4527)) + x_4530);
    let x_4532 : vec3<f32> = u_xlat35;
    let x_4533 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(x_4532, x_4533);
    let x_4535 : f32 = u_xlat55;
    u_xlat55 = max(x_4535, 1.17549435e-38f);
    let x_4537 : f32 = u_xlat55;
    u_xlat55 = inverseSqrt(x_4537);
    let x_4539 : f32 = u_xlat55;
    let x_4541 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4539, x_4539, x_4539) * x_4541);
    let x_4543 : vec4<f32> = u_xlat1;
    let x_4545 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(vec3<f32>(x_4543.x, x_4543.y, x_4543.z), x_4545);
    let x_4547 : f32 = u_xlat55;
    u_xlat55 = clamp(x_4547, 0.0f, 1.0f);
    let x_4549 : vec4<f32> = u_xlat10;
    let x_4551 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4549.x, x_4549.y, x_4549.z), x_4551);
    let x_4553 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4553, 0.0f, 1.0f);
    let x_4555 : f32 = u_xlat55;
    let x_4556 : f32 = u_xlat55;
    u_xlat55 = (x_4555 * x_4556);
    let x_4558 : f32 = u_xlat55;
    let x_4560 : f32 = u_xlat9.x;
    u_xlat55 = ((x_4558 * x_4560) + 1.00001001358032226562f);
    let x_4563 : f32 = u_xlat82;
    let x_4564 : f32 = u_xlat82;
    u_xlat82 = (x_4563 * x_4564);
    let x_4566 : f32 = u_xlat55;
    let x_4567 : f32 = u_xlat55;
    u_xlat55 = (x_4566 * x_4567);
    let x_4569 : f32 = u_xlat82;
    u_xlat82 = max(x_4569, 0.10000000149011611938f);
    let x_4571 : f32 = u_xlat55;
    let x_4572 : f32 = u_xlat82;
    u_xlat55 = (x_4571 * x_4572);
    let x_4574 : f32 = u_xlat80;
    let x_4575 : f32 = u_xlat55;
    u_xlat55 = (x_4574 * x_4575);
    let x_4577 : f32 = u_xlat81;
    let x_4578 : f32 = u_xlat55;
    u_xlat55 = (x_4577 / x_4578);
    let x_4580 : vec4<f32> = u_xlat5;
    let x_4582 : f32 = u_xlat55;
    let x_4585 : vec4<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4580.x, x_4580.y, x_4580.z) * vec3<f32>(x_4582, x_4582, x_4582)) + vec3<f32>(x_4585.x, x_4585.y, x_4585.z));
    let x_4588 : vec3<f32> = u_xlat35;
    let x_4589 : vec4<f32> = u_xlat11;
    let x_4592 : vec4<f32> = u_xlat8;
    let x_4594 : vec3<f32> = ((x_4588 * vec3<f32>(x_4589.x, x_4589.y, x_4589.z)) + vec3<f32>(x_4592.x, x_4592.y, x_4592.z));
    let x_4595 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4594.x, x_4594.y, x_4594.z, x_4595.w);

    continuing {
      let x_4597 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4597 + bitcast<u32>(1i));
    }
  }
  let x_4599 : vec4<f32> = u_xlat4;
  let x_4601 : f32 = u_xlat26;
  let x_4604 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4599.x, x_4599.y, x_4599.z) * vec3<f32>(x_4601, x_4601, x_4601)) + vec3<f32>(x_4604.x, x_4604.y, x_4604.z));
  let x_4607 : vec4<f32> = u_xlat8;
  let x_4609 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4607.x, x_4607.y, x_4607.z) + x_4609);
  let x_4613 : f32 = u_xlat78;
  let x_4615 : vec3<f32> = u_xlat0;
  let x_4616 : vec3<f32> = (vec3<f32>(x_4613, x_4613, x_4613) * x_4615);
  let x_4617 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4616.x, x_4616.y, x_4616.z, x_4617.w);
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


