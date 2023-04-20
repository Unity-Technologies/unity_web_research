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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

@group(1) @binding(4) var<uniform> x_606 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2193 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2381 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2670 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu55 : u32;

fn main_1() {
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
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
  var x_2146 : f32;
  var x_2276 : f32;
  var x_2287 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2804 : f32;
  var x_2814 : f32;
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
  var x_4384 : f32;
  var x_4397 : f32;
  var x_4445 : f32;
  var x_4456 : vec3<f32>;
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
  let x_279 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_279);
  let x_281 : bool = u_xlatb80;
  if (((select(0i, 1i, x_281) * -1i) != 0i)) {
    discard;
  }
  let x_290 : f32 = u_xlat79;
  u_xlat79 = (x_290 + 0.00006103515625f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat79;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_367;
  let x_370 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_370;
  let x_373 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_373;
  let x_376 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_376;
  let x_379 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_379;
  let x_382 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_382;
  let x_385 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_385;
  let x_388 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_388;
  let x_390 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_390 + x_391);
  let x_394 : f32 = u_xlat0.z;
  u_xlat7.x = x_394;
  let x_397 : f32 = u_xlat1.z;
  u_xlat7.y = x_397;
  let x_400 : f32 = u_xlat2.z;
  u_xlat7.z = x_400;
  let x_403 : f32 = u_xlat3.y;
  u_xlat7.w = x_403;
  let x_405 : vec4<f32> = u_xlat9;
  let x_408 : f32 = x_13.x_Smoothness0;
  let x_410 : f32 = x_13.x_Smoothness1;
  let x_412 : f32 = x_13.x_Smoothness2;
  let x_414 : f32 = x_13.x_Smoothness3;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_405) * vec4<f32>(x_408, x_410, x_412, x_414)) + x_417);
  let x_421 : f32 = x_13.x_LayerHasMask0;
  let x_424 : f32 = x_13.x_LayerHasMask1;
  let x_427 : f32 = x_13.x_LayerHasMask2;
  let x_430 : f32 = x_13.x_LayerHasMask3;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_421, x_424, x_427, x_430) * x_432) + x_434);
  let x_437 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_437, x_438);
  let x_441 : f32 = u_xlat0.x;
  u_xlat7.x = x_441;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.y = x_444;
  let x_447 : f32 = u_xlat2.x;
  u_xlat7.z = x_447;
  let x_450 : f32 = u_xlat3.x;
  u_xlat7.w = x_450;
  let x_452 : vec4<f32> = u_xlat7;
  let x_455 : f32 = x_13.x_Metallic0;
  let x_458 : f32 = x_13.x_Metallic1;
  let x_461 : f32 = x_13.x_Metallic2;
  let x_464 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_452 + -(vec4<f32>(x_455, x_458, x_461, x_464)));
  let x_469 : f32 = x_13.x_LayerHasMask0;
  let x_471 : f32 = x_13.x_LayerHasMask1;
  let x_473 : f32 = x_13.x_LayerHasMask2;
  let x_475 : f32 = x_13.x_LayerHasMask3;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_13.x_Metallic0;
  let x_482 : f32 = x_13.x_Metallic1;
  let x_484 : f32 = x_13.x_Metallic2;
  let x_486 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_469, x_471, x_473, x_475) * x_477) + vec4<f32>(x_480, x_482, x_484, x_486));
  let x_489 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat0.y;
  u_xlat3.x = x_494;
  let x_497 : f32 = u_xlat1.y;
  u_xlat3.y = x_497;
  let x_500 : f32 = u_xlat2.y;
  u_xlat3.z = x_500;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_502) + x_504);
  let x_507 : f32 = x_13.x_LayerHasMask0;
  let x_509 : f32 = x_13.x_LayerHasMask1;
  let x_511 : f32 = x_13.x_LayerHasMask2;
  let x_513 : f32 = x_13.x_LayerHasMask3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_507, x_509, x_511, x_513) * x_515) + x_517);
  let x_520 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_520, x_521);
  let x_525 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_525 == 0.0f);
  let x_530 : vec3<f32> = vs_TEXCOORD7;
  let x_534 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_530) + x_534);
  let x_536 : vec3<f32> = u_xlat27;
  let x_537 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_541);
  let x_544 : vec3<f32> = u_xlat27;
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat27 = (x_544 * vec3<f32>(x_545.x, x_545.x, x_545.x));
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_554 : f32 = u_xlat27.x;
    x_550 = x_554;
  } else {
    let x_557 : f32 = x_111.unity_MatrixV[0i].z;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  u_xlat2.x = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat27.y;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[1i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.y = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat27.z;
    x_572 = x_576;
  } else {
    let x_580 : f32 = x_111.unity_MatrixV[2i].z;
    x_572 = x_580;
  }
  let x_581 : f32 = x_572;
  u_xlat2.z = x_581;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_584, x_585);
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_589);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * x_594);
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec3<f32> = vs_TEXCOORD7;
  let x_608 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres0;
  let x_611 : vec3<f32> = (x_598 + -(vec3<f32>(x_608.x, x_608.y, x_608.z)));
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres1;
  let x_619 : vec3<f32> = (x_614 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_625 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres2;
  let x_628 : vec3<f32> = (x_622 + -(vec3<f32>(x_625.x, x_625.y, x_625.z)));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres3;
  let x_636 : vec3<f32> = (x_631 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_657 : vec4<f32> = u_xlat7;
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_657.x, x_657.y, x_657.z), vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec4<f32> = x_606.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_665 < x_667);
  let x_670 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_686);
  let x_691 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_691);
  let x_695 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_695);
  let x_698 : vec4<f32> = u_xlat3;
  let x_700 : vec4<f32> = u_xlat4;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(x_700.y, x_700.z, x_700.w));
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat3;
  let x_708 : vec3<f32> = max(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_709.x, x_708.x, x_708.y, x_708.z);
  let x_711 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_711, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_716 : f32 = u_xlat79;
  u_xlat79 = (-(x_716) + 4.0f);
  let x_721 : f32 = u_xlat79;
  u_xlatu79 = u32(x_721);
  let x_725 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_725) << bitcast<u32>(2i));
  let x_728 : vec3<f32> = vs_TEXCOORD7;
  let x_730 : i32 = u_xlati79;
  let x_733 : i32 = u_xlati79;
  let x_737 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_730 + 1i) / 4i)][((x_733 + 1i) % 4i)];
  let x_739 : vec3<f32> = (vec3<f32>(x_728.y, x_728.y, x_728.y) * vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : i32 = u_xlati79;
  let x_744 : i32 = u_xlati79;
  let x_747 : vec4<f32> = x_606.x_MainLightWorldToShadow[(x_742 / 4i)][(x_744 % 4i)];
  let x_749 : vec3<f32> = vs_TEXCOORD7;
  let x_752 : vec4<f32> = u_xlat3;
  let x_754 : vec3<f32> = ((vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749.x, x_749.x, x_749.x)) + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : i32 = u_xlati79;
  let x_760 : i32 = u_xlati79;
  let x_764 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_757 + 2i) / 4i)][((x_760 + 2i) % 4i)];
  let x_766 : vec3<f32> = vs_TEXCOORD7;
  let x_769 : vec4<f32> = u_xlat3;
  let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_766.z, x_766.z, x_766.z)) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat3;
  let x_776 : i32 = u_xlati79;
  let x_779 : i32 = u_xlati79;
  let x_783 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_776 + 3i) / 4i)][((x_779 + 3i) % 4i)];
  let x_785 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_793 : vec4<f32> = vs_TEXCOORD0;
  let x_796 : f32 = x_111.x_GlobalMipBias.x;
  let x_797 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_793.z, x_793.w), x_796);
  u_xlat4 = x_797;
  let x_802 : vec4<f32> = vs_TEXCOORD0;
  let x_805 : f32 = x_111.x_GlobalMipBias.x;
  let x_806 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_802.z, x_802.w), x_805);
  let x_807 : vec3<f32> = vec3<f32>(x_806.x, x_806.y, x_806.z);
  let x_808 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat4;
  let x_814 : vec3<f32> = (vec3<f32>(x_810.x, x_810.y, x_810.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat79;
  u_xlat79 = (x_822 + 0.5f);
  let x_824 : f32 = u_xlat79;
  let x_826 : vec4<f32> = u_xlat6;
  let x_828 : vec3<f32> = (vec3<f32>(x_824, x_824, x_824) * vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_832 : f32 = u_xlat4.w;
  u_xlat79 = max(x_832, 0.00009999999747378752f);
  let x_835 : vec4<f32> = u_xlat4;
  let x_837 : f32 = u_xlat79;
  let x_839 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) / vec3<f32>(x_837, x_837, x_837));
  let x_840 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_843 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_843) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_849 : f32 = u_xlat52;
  let x_850 : f32 = u_xlat79;
  u_xlat80 = (x_849 + -(x_850));
  let x_853 : f32 = u_xlat79;
  let x_855 : vec4<f32> = u_xlat5;
  let x_857 : vec3<f32> = (vec3<f32>(x_853, x_853, x_853) * vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat5;
  let x_864 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_865 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec3<f32> = u_xlat0;
  let x_869 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.x, x_867.x) * vec3<f32>(x_869.x, x_869.y, x_869.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : f32 = u_xlat52;
  u_xlat0.x = (-(x_877) + 1.0f);
  let x_882 : f32 = u_xlat0.x;
  let x_884 : f32 = u_xlat0.x;
  u_xlat52 = (x_882 * x_884);
  let x_886 : f32 = u_xlat52;
  u_xlat52 = max(x_886, 0.0078125f);
  let x_889 : f32 = u_xlat52;
  let x_890 : f32 = u_xlat52;
  u_xlat79 = (x_889 * x_890);
  let x_892 : f32 = u_xlat80;
  u_xlat80 = (x_892 + 1.0f);
  let x_894 : f32 = u_xlat80;
  u_xlat80 = clamp(x_894, 0.0f, 1.0f);
  let x_897 : f32 = u_xlat52;
  u_xlat81 = ((x_897 * 4.0f) + 2.0f);
  let x_900 : f32 = u_xlat26;
  u_xlat26 = min(x_900, 1.0f);
  let x_904 : f32 = x_606.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_904);
  let x_906 : bool = u_xlatb82;
  if (x_906) {
    let x_910 : f32 = x_606.x_MainLightShadowParams.y;
    u_xlatb82 = (x_910 == 1.0f);
    let x_912 : bool = u_xlatb82;
    if (x_912) {
      let x_915 : vec4<f32> = u_xlat3;
      let x_918 : vec4<f32> = x_606.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_915.x, x_915.y, x_915.x, x_915.y) + x_918);
      let x_922 : vec4<f32> = u_xlat7;
      let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
      let x_925 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_923.x, x_923.y, x_925);
      let x_937 : vec3<f32> = txVec0;
      let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
      u_xlat8.x = x_939;
      let x_942 : vec4<f32> = u_xlat7;
      let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
      let x_945 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_943.x, x_943.y, x_945);
      let x_952 : vec3<f32> = txVec1;
      let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
      u_xlat8.y = x_954;
      let x_956 : vec4<f32> = u_xlat3;
      let x_959 : vec4<f32> = x_606.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y) + x_959);
      let x_962 : vec4<f32> = u_xlat7;
      let x_963 : vec2<f32> = vec2<f32>(x_962.x, x_962.y);
      let x_965 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_963.x, x_963.y, x_965);
      let x_972 : vec3<f32> = txVec2;
      let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_972.xy, x_972.z);
      u_xlat8.z = x_974;
      let x_977 : vec4<f32> = u_xlat7;
      let x_978 : vec2<f32> = vec2<f32>(x_977.z, x_977.w);
      let x_980 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_978.x, x_978.y, x_980);
      let x_987 : vec3<f32> = txVec3;
      let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_987.xy, x_987.z);
      u_xlat8.w = x_989;
      let x_992 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_992, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_999 : f32 = x_606.x_MainLightShadowParams.y;
      u_xlatb83 = (x_999 == 2.0f);
      let x_1001 : bool = u_xlatb83;
      if (x_1001) {
        let x_1004 : vec4<f32> = u_xlat3;
        let x_1007 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.z, x_1007.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1015 : vec2<f32> = floor(vec2<f32>(x_1013.x, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1020 : vec4<f32> = u_xlat3;
        let x_1023 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1020.x, x_1020.y) * vec2<f32>(x_1023.z, x_1023.w)) + -(vec2<f32>(x_1026.x, x_1026.y)));
        let x_1030 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1030.x, x_1030.x, x_1030.y, x_1030.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1034.x, x_1034.x, x_1034.z, x_1034.z) * vec4<f32>(x_1036.x, x_1036.x, x_1036.z, x_1036.z));
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1043 : vec2<f32> = (vec2<f32>(x_1039.y, x_1039.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat9;
        let x_1049 : vec2<f32> = u_xlat59;
        let x_1051 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1049));
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1055 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1055) + vec2<f32>(1.0f, 1.0f));
        let x_1059 : vec2<f32> = u_xlat59;
        let x_1061 : vec2<f32> = min(x_1059, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat10;
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1070 : vec2<f32> = u_xlat61;
        let x_1071 : vec2<f32> = ((-(vec2<f32>(x_1064.x, x_1064.y)) * vec2<f32>(x_1067.x, x_1067.y)) + x_1070);
        let x_1072 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1074, vec2<f32>(0.0f, 0.0f));
        let x_1076 : vec2<f32> = u_xlat59;
        let x_1078 : vec2<f32> = u_xlat59;
        let x_1080 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1076) * x_1078) + vec2<f32>(x_1080.y, x_1080.w));
        let x_1083 : vec4<f32> = u_xlat10;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) + vec2<f32>(1.0f, 1.0f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1088 + vec2<f32>(1.0f, 1.0f));
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1094 : vec2<f32> = (vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1095 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec2<f32> = u_xlat61;
        let x_1098 : vec2<f32> = (x_1097 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1099 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1103 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1103.x, x_1103.y, x_1104.z, x_1104.w);
        let x_1106 : vec2<f32> = u_xlat59;
        let x_1107 : vec2<f32> = (x_1106 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1108 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1110.y, x_1110.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1114 : f32 = u_xlat10.x;
        u_xlat11.z = x_1114;
        let x_1117 : f32 = u_xlat59.x;
        u_xlat11.w = x_1117;
        let x_1120 : f32 = u_xlat12.x;
        u_xlat9.z = x_1120;
        let x_1123 : f32 = u_xlat8.x;
        u_xlat9.w = x_1123;
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1125.z, x_1125.w, x_1125.x, x_1125.z) + vec4<f32>(x_1127.z, x_1127.w, x_1127.x, x_1127.z));
        let x_1131 : f32 = u_xlat11.y;
        u_xlat10.z = x_1131;
        let x_1134 : f32 = u_xlat59.y;
        u_xlat10.w = x_1134;
        let x_1137 : f32 = u_xlat9.y;
        u_xlat12.z = x_1137;
        let x_1140 : f32 = u_xlat8.z;
        u_xlat12.w = x_1140;
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1144 : vec4<f32> = u_xlat12;
        let x_1146 : vec3<f32> = (vec3<f32>(x_1142.z, x_1142.y, x_1142.w) + vec3<f32>(x_1144.z, x_1144.y, x_1144.w));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat9;
        let x_1151 : vec4<f32> = u_xlat13;
        let x_1153 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.z, x_1149.w) / vec3<f32>(x_1151.z, x_1151.w, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat9;
        let x_1161 : vec3<f32> = (vec3<f32>(x_1156.x, x_1156.y, x_1156.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat12;
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1168 : vec3<f32> = (vec3<f32>(x_1164.z, x_1164.y, x_1164.w) / vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
        let x_1169 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1173 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.y, x_1171.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1179 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1181 : vec3<f32> = (vec3<f32>(x_1176.y, x_1176.x, x_1176.z) * vec3<f32>(x_1179.x, x_1179.x, x_1179.x));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat10;
        let x_1187 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1189 : vec3<f32> = (vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1187.y, x_1187.y, x_1187.y));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
        let x_1193 : f32 = u_xlat10.x;
        u_xlat9.w = x_1193;
        let x_1195 : vec4<f32> = u_xlat7;
        let x_1198 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.y, x_1201.w, x_1201.x, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1207 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.z, x_1210.w));
        let x_1214 : f32 = u_xlat9.y;
        u_xlat10.w = x_1214;
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.y, x_1216.z);
        let x_1218 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1223 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y) * vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y)) + vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1232 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.w, x_1235.y, x_1235.w, x_1235.z));
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1241 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) * vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y)) + vec4<f32>(x_1244.x, x_1244.w, x_1244.z, x_1244.w));
        let x_1248 : vec4<f32> = u_xlat8;
        let x_1250 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1248.x, x_1248.x, x_1248.x, x_1248.y) * vec4<f32>(x_1250.z, x_1250.w, x_1250.y, x_1250.z));
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1256 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1254.y, x_1254.y, x_1254.z, x_1254.z) * x_1256);
        let x_1260 : f32 = u_xlat8.z;
        let x_1262 : f32 = u_xlat13.y;
        u_xlat83 = (x_1260 * x_1262);
        let x_1265 : vec4<f32> = u_xlat11;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.x, x_1265.y);
        let x_1268 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1276 : vec3<f32> = txVec4;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1276.xy, x_1276.z);
        u_xlat84 = x_1278;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec5;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat7.x = x_1292;
        let x_1295 : f32 = u_xlat7.x;
        let x_1297 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1295 * x_1297);
        let x_1301 : f32 = u_xlat14.x;
        let x_1302 : f32 = u_xlat84;
        let x_1305 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1301 * x_1302) + x_1305);
        let x_1308 : vec2<f32> = u_xlat59;
        let x_1310 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec6;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat7.x = x_1319;
        let x_1322 : f32 = u_xlat14.z;
        let x_1324 : f32 = u_xlat7.x;
        let x_1326 : f32 = u_xlat84;
        u_xlat84 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat10;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec7;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat7.x = x_1341;
        let x_1344 : f32 = u_xlat14.w;
        let x_1346 : f32 = u_xlat7.x;
        let x_1348 : f32 = u_xlat84;
        u_xlat84 = ((x_1344 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat12;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.x, x_1351.y);
        let x_1354 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec8;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat7.x = x_1363;
        let x_1366 : f32 = u_xlat15.x;
        let x_1368 : f32 = u_xlat7.x;
        let x_1370 : f32 = u_xlat84;
        u_xlat84 = ((x_1366 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat12;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec9;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat7.x = x_1385;
        let x_1388 : f32 = u_xlat15.y;
        let x_1390 : f32 = u_xlat7.x;
        let x_1392 : f32 = u_xlat84;
        u_xlat84 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat10;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec10;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat7.x = x_1407;
        let x_1410 : f32 = u_xlat15.z;
        let x_1412 : f32 = u_xlat7.x;
        let x_1414 : f32 = u_xlat84;
        u_xlat84 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat9;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec11;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat7.x = x_1429;
        let x_1432 : f32 = u_xlat15.w;
        let x_1434 : f32 = u_xlat7.x;
        let x_1436 : f32 = u_xlat84;
        u_xlat84 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat9;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec12;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat7.x = x_1451;
        let x_1453 : f32 = u_xlat83;
        let x_1455 : f32 = u_xlat7.x;
        let x_1457 : f32 = u_xlat84;
        u_xlat82 = ((x_1453 * x_1455) + x_1457);
      } else {
        let x_1460 : vec4<f32> = u_xlat3;
        let x_1463 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1466 : vec2<f32> = ((vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(x_1463.z, x_1463.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1467 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1466.x, x_1466.y, x_1467.z, x_1467.w);
        let x_1469 : vec4<f32> = u_xlat7;
        let x_1471 : vec2<f32> = floor(vec2<f32>(x_1469.x, x_1469.y));
        let x_1472 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1471.x, x_1471.y, x_1472.z, x_1472.w);
        let x_1474 : vec4<f32> = u_xlat3;
        let x_1477 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1474.x, x_1474.y) * vec2<f32>(x_1477.z, x_1477.w)) + -(vec2<f32>(x_1480.x, x_1480.y)));
        let x_1484 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1484.x, x_1484.x, x_1484.y, x_1484.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1487 : vec4<f32> = u_xlat8;
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1487.x, x_1487.x, x_1487.z, x_1487.z) * vec4<f32>(x_1489.x, x_1489.x, x_1489.z, x_1489.z));
        let x_1492 : vec4<f32> = u_xlat9;
        let x_1496 : vec2<f32> = (vec2<f32>(x_1492.y, x_1492.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1497.x, x_1496.x, x_1497.z, x_1496.y);
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1502 : vec2<f32> = u_xlat59;
        let x_1504 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1502));
        let x_1505 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1504.x, x_1505.y, x_1504.y, x_1505.w);
        let x_1507 : vec2<f32> = u_xlat59;
        let x_1509 : vec2<f32> = (-(x_1507) + vec2<f32>(1.0f, 1.0f));
        let x_1510 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1509.x, x_1509.y, x_1510.z, x_1510.w);
        let x_1512 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1512, vec2<f32>(0.0f, 0.0f));
        let x_1514 : vec2<f32> = u_xlat61;
        let x_1516 : vec2<f32> = u_xlat61;
        let x_1518 : vec4<f32> = u_xlat9;
        let x_1520 : vec2<f32> = ((-(x_1514) * x_1516) + vec2<f32>(x_1518.x, x_1518.y));
        let x_1521 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
        let x_1523 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1523, vec2<f32>(0.0f, 0.0f));
        let x_1526 : vec2<f32> = u_xlat61;
        let x_1528 : vec2<f32> = u_xlat61;
        let x_1530 : vec4<f32> = u_xlat8;
        let x_1532 : vec2<f32> = ((-(x_1526) * x_1528) + vec2<f32>(x_1530.y, x_1530.w));
        let x_1533 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1532.x, x_1533.y, x_1532.y);
        let x_1535 : vec4<f32> = u_xlat9;
        let x_1538 : vec2<f32> = (vec2<f32>(x_1535.x, x_1535.y) + vec2<f32>(2.0f, 2.0f));
        let x_1539 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1541 : vec3<f32> = u_xlat34;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1541.x, x_1541.z) + vec2<f32>(2.0f, 2.0f));
        let x_1544 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1547 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1547 * 0.08163200318813323975f);
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1554 : vec3<f32> = (vec3<f32>(x_1551.z, x_1551.x, x_1551.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1555 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1555.w);
        let x_1557 : vec4<f32> = u_xlat9;
        let x_1560 : vec2<f32> = (vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1561 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1560.x, x_1560.y, x_1561.z, x_1561.w);
        let x_1564 : f32 = u_xlat12.y;
        u_xlat11.x = x_1564;
        let x_1566 : vec2<f32> = u_xlat59;
        let x_1573 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1574 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1574.x, x_1573.x, x_1574.z, x_1573.y);
        let x_1576 : vec2<f32> = u_xlat59;
        let x_1580 : vec2<f32> = ((vec2<f32>(x_1576.x, x_1576.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1580.x, x_1581.y, x_1580.y, x_1581.w);
        let x_1584 : f32 = u_xlat8.x;
        u_xlat9.y = x_1584;
        let x_1587 : f32 = u_xlat10.y;
        u_xlat9.w = x_1587;
        let x_1589 : vec4<f32> = u_xlat9;
        let x_1590 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1589 + x_1590);
        let x_1592 : vec2<f32> = u_xlat59;
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1592.y, x_1592.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1596.x, x_1595.x, x_1596.z, x_1595.y);
        let x_1598 : vec2<f32> = u_xlat59;
        let x_1601 : vec2<f32> = ((vec2<f32>(x_1598.y, x_1598.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1602 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1601.x, x_1602.y, x_1601.y, x_1602.w);
        let x_1605 : f32 = u_xlat8.y;
        u_xlat10.y = x_1605;
        let x_1607 : vec4<f32> = u_xlat10;
        let x_1608 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1607 + x_1608);
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1611 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1610 / x_1611);
        let x_1613 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1613 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1619 : vec4<f32> = u_xlat10;
        let x_1620 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1619 / x_1620);
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1622 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1624 : vec4<f32> = u_xlat9;
        let x_1627 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1624.w, x_1624.x, x_1624.y, x_1624.z) * vec4<f32>(x_1627.x, x_1627.x, x_1627.x, x_1627.x));
        let x_1630 : vec4<f32> = u_xlat10;
        let x_1633 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1630.x, x_1630.w, x_1630.y, x_1630.z) * vec4<f32>(x_1633.y, x_1633.y, x_1633.y, x_1633.y));
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1637 : vec3<f32> = vec3<f32>(x_1636.y, x_1636.z, x_1636.w);
        let x_1638 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1637.x, x_1638.y, x_1637.y, x_1637.z);
        let x_1641 : f32 = u_xlat10.x;
        u_xlat12.y = x_1641;
        let x_1643 : vec4<f32> = u_xlat7;
        let x_1646 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1649 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1643.x, x_1643.y, x_1643.x, x_1643.y) * vec4<f32>(x_1646.x, x_1646.y, x_1646.x, x_1646.y)) + vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1649.y));
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1655 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1658 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1652.x, x_1652.y) * vec2<f32>(x_1655.x, x_1655.y)) + vec2<f32>(x_1658.w, x_1658.y));
        let x_1662 : f32 = u_xlat12.y;
        u_xlat9.y = x_1662;
        let x_1665 : f32 = u_xlat10.z;
        u_xlat12.y = x_1665;
        let x_1667 : vec4<f32> = u_xlat7;
        let x_1670 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1673 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1667.x, x_1667.y, x_1667.x, x_1667.y) * vec4<f32>(x_1670.x, x_1670.y, x_1670.x, x_1670.y)) + vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1673.y));
        let x_1676 : vec4<f32> = u_xlat7;
        let x_1679 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1682 : vec4<f32> = u_xlat12;
        let x_1684 : vec2<f32> = ((vec2<f32>(x_1676.x, x_1676.y) * vec2<f32>(x_1679.x, x_1679.y)) + vec2<f32>(x_1682.w, x_1682.y));
        let x_1685 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1684.x, x_1684.y, x_1685.z, x_1685.w);
        let x_1688 : f32 = u_xlat12.y;
        u_xlat9.z = x_1688;
        let x_1691 : vec4<f32> = u_xlat7;
        let x_1694 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1697 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1691.x, x_1691.y, x_1691.x, x_1691.y) * vec4<f32>(x_1694.x, x_1694.y, x_1694.x, x_1694.y)) + vec4<f32>(x_1697.x, x_1697.y, x_1697.x, x_1697.z));
        let x_1701 : f32 = u_xlat10.w;
        u_xlat12.y = x_1701;
        let x_1704 : vec4<f32> = u_xlat7;
        let x_1707 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1704.x, x_1704.y, x_1704.x, x_1704.y) * vec4<f32>(x_1707.x, x_1707.y, x_1707.x, x_1707.y)) + vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1710.y));
        let x_1714 : vec4<f32> = u_xlat7;
        let x_1717 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1717.x, x_1717.y)) + vec2<f32>(x_1720.w, x_1720.y));
        let x_1724 : f32 = u_xlat12.y;
        u_xlat9.w = x_1724;
        let x_1727 : vec4<f32> = u_xlat7;
        let x_1730 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1733 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1727.x, x_1727.y) * vec2<f32>(x_1730.x, x_1730.y)) + vec2<f32>(x_1733.x, x_1733.w));
        let x_1736 : vec4<f32> = u_xlat12;
        let x_1737 : vec3<f32> = vec3<f32>(x_1736.x, x_1736.z, x_1736.w);
        let x_1738 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1737.x, x_1738.y, x_1737.y, x_1737.z);
        let x_1740 : vec4<f32> = u_xlat7;
        let x_1743 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1746 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1740.x, x_1740.y, x_1740.x, x_1740.y) * vec4<f32>(x_1743.x, x_1743.y, x_1743.x, x_1743.y)) + vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1746.y));
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1753 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1753.x, x_1753.y)) + vec2<f32>(x_1756.w, x_1756.y));
        let x_1760 : f32 = u_xlat9.x;
        u_xlat10.x = x_1760;
        let x_1762 : vec4<f32> = u_xlat7;
        let x_1765 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat10;
        let x_1770 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1765.x, x_1765.y)) + vec2<f32>(x_1768.x, x_1768.y));
        let x_1771 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1770.x, x_1770.y, x_1771.z, x_1771.w);
        let x_1774 : vec4<f32> = u_xlat8;
        let x_1776 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1774.x, x_1774.x, x_1774.x, x_1774.x) * x_1776);
        let x_1779 : vec4<f32> = u_xlat8;
        let x_1781 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1779.y, x_1779.y, x_1779.y, x_1779.y) * x_1781);
        let x_1784 : vec4<f32> = u_xlat8;
        let x_1786 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1784.z, x_1784.z, x_1784.z, x_1784.z) * x_1786);
        let x_1788 : vec4<f32> = u_xlat8;
        let x_1790 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1788.w, x_1788.w, x_1788.w, x_1788.w) * x_1790);
        let x_1793 : vec4<f32> = u_xlat13;
        let x_1794 : vec2<f32> = vec2<f32>(x_1793.x, x_1793.y);
        let x_1796 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
        let x_1803 : vec3<f32> = txVec13;
        let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1803.xy, x_1803.z);
        u_xlat83 = x_1805;
        let x_1807 : vec4<f32> = u_xlat13;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.z, x_1807.w);
        let x_1810 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec14;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat84 = x_1819;
        let x_1820 : f32 = u_xlat84;
        let x_1822 : f32 = u_xlat18.y;
        u_xlat84 = (x_1820 * x_1822);
        let x_1825 : f32 = u_xlat18.x;
        let x_1826 : f32 = u_xlat83;
        let x_1828 : f32 = u_xlat84;
        u_xlat83 = ((x_1825 * x_1826) + x_1828);
        let x_1831 : vec2<f32> = u_xlat59;
        let x_1833 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec15;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1840.xy, x_1840.z);
        u_xlat84 = x_1842;
        let x_1844 : f32 = u_xlat18.z;
        let x_1845 : f32 = u_xlat84;
        let x_1847 : f32 = u_xlat83;
        u_xlat83 = ((x_1844 * x_1845) + x_1847);
        let x_1850 : vec4<f32> = u_xlat16;
        let x_1851 : vec2<f32> = vec2<f32>(x_1850.x, x_1850.y);
        let x_1853 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec16;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1860.xy, x_1860.z);
        u_xlat84 = x_1862;
        let x_1864 : f32 = u_xlat18.w;
        let x_1865 : f32 = u_xlat84;
        let x_1867 : f32 = u_xlat83;
        u_xlat83 = ((x_1864 * x_1865) + x_1867);
        let x_1870 : vec4<f32> = u_xlat14;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
        let x_1873 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec17;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
        u_xlat84 = x_1882;
        let x_1884 : f32 = u_xlat19.x;
        let x_1885 : f32 = u_xlat84;
        let x_1887 : f32 = u_xlat83;
        u_xlat83 = ((x_1884 * x_1885) + x_1887);
        let x_1890 : vec4<f32> = u_xlat14;
        let x_1891 : vec2<f32> = vec2<f32>(x_1890.z, x_1890.w);
        let x_1893 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
        let x_1900 : vec3<f32> = txVec18;
        let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1900.xy, x_1900.z);
        u_xlat84 = x_1902;
        let x_1904 : f32 = u_xlat19.y;
        let x_1905 : f32 = u_xlat84;
        let x_1907 : f32 = u_xlat83;
        u_xlat83 = ((x_1904 * x_1905) + x_1907);
        let x_1910 : vec4<f32> = u_xlat15;
        let x_1911 : vec2<f32> = vec2<f32>(x_1910.x, x_1910.y);
        let x_1913 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1920 : vec3<f32> = txVec19;
        let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1920.xy, x_1920.z);
        u_xlat84 = x_1922;
        let x_1924 : f32 = u_xlat19.z;
        let x_1925 : f32 = u_xlat84;
        let x_1927 : f32 = u_xlat83;
        u_xlat83 = ((x_1924 * x_1925) + x_1927);
        let x_1930 : vec4<f32> = u_xlat16;
        let x_1931 : vec2<f32> = vec2<f32>(x_1930.z, x_1930.w);
        let x_1933 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1931.x, x_1931.y, x_1933);
        let x_1940 : vec3<f32> = txVec20;
        let x_1942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1940.xy, x_1940.z);
        u_xlat84 = x_1942;
        let x_1944 : f32 = u_xlat19.w;
        let x_1945 : f32 = u_xlat84;
        let x_1947 : f32 = u_xlat83;
        u_xlat83 = ((x_1944 * x_1945) + x_1947);
        let x_1950 : vec4<f32> = u_xlat17;
        let x_1951 : vec2<f32> = vec2<f32>(x_1950.x, x_1950.y);
        let x_1953 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1951.x, x_1951.y, x_1953);
        let x_1960 : vec3<f32> = txVec21;
        let x_1962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1960.xy, x_1960.z);
        u_xlat84 = x_1962;
        let x_1964 : f32 = u_xlat20.x;
        let x_1965 : f32 = u_xlat84;
        let x_1967 : f32 = u_xlat83;
        u_xlat83 = ((x_1964 * x_1965) + x_1967);
        let x_1970 : vec4<f32> = u_xlat17;
        let x_1971 : vec2<f32> = vec2<f32>(x_1970.z, x_1970.w);
        let x_1973 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
        let x_1980 : vec3<f32> = txVec22;
        let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1980.xy, x_1980.z);
        u_xlat84 = x_1982;
        let x_1984 : f32 = u_xlat20.y;
        let x_1985 : f32 = u_xlat84;
        let x_1987 : f32 = u_xlat83;
        u_xlat83 = ((x_1984 * x_1985) + x_1987);
        let x_1990 : vec2<f32> = u_xlat35;
        let x_1992 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1990.x, x_1990.y, x_1992);
        let x_1999 : vec3<f32> = txVec23;
        let x_2001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1999.xy, x_1999.z);
        u_xlat84 = x_2001;
        let x_2003 : f32 = u_xlat20.z;
        let x_2004 : f32 = u_xlat84;
        let x_2006 : f32 = u_xlat83;
        u_xlat83 = ((x_2003 * x_2004) + x_2006);
        let x_2009 : vec2<f32> = u_xlat67;
        let x_2011 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2009.x, x_2009.y, x_2011);
        let x_2018 : vec3<f32> = txVec24;
        let x_2020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2018.xy, x_2018.z);
        u_xlat84 = x_2020;
        let x_2022 : f32 = u_xlat20.w;
        let x_2023 : f32 = u_xlat84;
        let x_2025 : f32 = u_xlat83;
        u_xlat83 = ((x_2022 * x_2023) + x_2025);
        let x_2028 : vec4<f32> = u_xlat12;
        let x_2029 : vec2<f32> = vec2<f32>(x_2028.x, x_2028.y);
        let x_2031 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
        let x_2038 : vec3<f32> = txVec25;
        let x_2040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2038.xy, x_2038.z);
        u_xlat84 = x_2040;
        let x_2042 : f32 = u_xlat8.x;
        let x_2043 : f32 = u_xlat84;
        let x_2045 : f32 = u_xlat83;
        u_xlat83 = ((x_2042 * x_2043) + x_2045);
        let x_2048 : vec4<f32> = u_xlat12;
        let x_2049 : vec2<f32> = vec2<f32>(x_2048.z, x_2048.w);
        let x_2051 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2049.x, x_2049.y, x_2051);
        let x_2058 : vec3<f32> = txVec26;
        let x_2060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2058.xy, x_2058.z);
        u_xlat84 = x_2060;
        let x_2062 : f32 = u_xlat8.y;
        let x_2063 : f32 = u_xlat84;
        let x_2065 : f32 = u_xlat83;
        u_xlat83 = ((x_2062 * x_2063) + x_2065);
        let x_2068 : vec2<f32> = u_xlat62;
        let x_2070 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec27;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat84 = x_2079;
        let x_2081 : f32 = u_xlat8.z;
        let x_2082 : f32 = u_xlat84;
        let x_2084 : f32 = u_xlat83;
        u_xlat83 = ((x_2081 * x_2082) + x_2084);
        let x_2087 : vec4<f32> = u_xlat7;
        let x_2088 : vec2<f32> = vec2<f32>(x_2087.x, x_2087.y);
        let x_2090 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
        let x_2097 : vec3<f32> = txVec28;
        let x_2099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2097.xy, x_2097.z);
        u_xlat84 = x_2099;
        let x_2101 : f32 = u_xlat8.w;
        let x_2102 : f32 = u_xlat84;
        let x_2104 : f32 = u_xlat83;
        u_xlat82 = ((x_2101 * x_2102) + x_2104);
      }
    }
  } else {
    let x_2108 : vec4<f32> = u_xlat3;
    let x_2109 : vec2<f32> = vec2<f32>(x_2108.x, x_2108.y);
    let x_2111 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2109.x, x_2109.y, x_2111);
    let x_2118 : vec3<f32> = txVec29;
    let x_2120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2118.xy, x_2118.z);
    u_xlat82 = x_2120;
  }
  let x_2122 : f32 = x_606.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2122) + 1.0f);
  let x_2126 : f32 = u_xlat82;
  let x_2128 : f32 = x_606.x_MainLightShadowParams.x;
  let x_2131 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2126 * x_2128) + x_2131);
  let x_2136 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2136);
  let x_2140 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2140 >= 1.0f);
  let x_2142 : bool = u_xlatb55;
  let x_2143 : bool = u_xlatb29;
  u_xlatb29 = (x_2142 | x_2143);
  let x_2145 : bool = u_xlatb29;
  if (x_2145) {
    x_2146 = 1.0f;
  } else {
    let x_2151 : f32 = u_xlat3.x;
    x_2146 = x_2151;
  }
  let x_2152 : f32 = x_2146;
  u_xlat3.x = x_2152;
  let x_2154 : vec3<f32> = vs_TEXCOORD7;
  let x_2156 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2158 : vec3<f32> = (x_2154 + -(x_2156));
  let x_2159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2158.x, x_2158.y, x_2158.z, x_2159.w);
  let x_2162 : vec4<f32> = u_xlat7;
  let x_2164 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2168 : f32 = u_xlat29;
  let x_2170 : f32 = x_606.x_MainLightShadowParams.z;
  let x_2173 : f32 = x_606.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2168 * x_2170) + x_2173);
  let x_2175 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2175, 0.0f, 1.0f);
  let x_2178 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_2178) + 1.0f);
  let x_2181 : f32 = u_xlat55;
  let x_2182 : f32 = u_xlat82;
  let x_2185 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2181 * x_2182) + x_2185);
  let x_2195 : f32 = x_2193.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2195 == -1.0f));
  let x_2197 : bool = u_xlatb55;
  if (x_2197) {
    let x_2200 : vec3<f32> = vs_TEXCOORD7;
    let x_2203 : vec4<f32> = x_2193.x_MainLightWorldToLight[1i];
    let x_2205 : vec2<f32> = (vec2<f32>(x_2200.y, x_2200.y) * vec2<f32>(x_2203.x, x_2203.y));
    let x_2206 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
    let x_2209 : vec4<f32> = x_2193.x_MainLightWorldToLight[0i];
    let x_2211 : vec3<f32> = vs_TEXCOORD7;
    let x_2214 : vec4<f32> = u_xlat7;
    let x_2216 : vec2<f32> = ((vec2<f32>(x_2209.x, x_2209.y) * vec2<f32>(x_2211.x, x_2211.x)) + vec2<f32>(x_2214.x, x_2214.y));
    let x_2217 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2216.x, x_2216.y, x_2217.z, x_2217.w);
    let x_2220 : vec4<f32> = x_2193.x_MainLightWorldToLight[2i];
    let x_2222 : vec3<f32> = vs_TEXCOORD7;
    let x_2225 : vec4<f32> = u_xlat7;
    let x_2227 : vec2<f32> = ((vec2<f32>(x_2220.x, x_2220.y) * vec2<f32>(x_2222.z, x_2222.z)) + vec2<f32>(x_2225.x, x_2225.y));
    let x_2228 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
    let x_2230 : vec4<f32> = u_xlat7;
    let x_2233 : vec4<f32> = x_2193.x_MainLightWorldToLight[3i];
    let x_2235 : vec2<f32> = (vec2<f32>(x_2230.x, x_2230.y) + vec2<f32>(x_2233.x, x_2233.y));
    let x_2236 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
    let x_2238 : vec4<f32> = u_xlat7;
    let x_2241 : vec2<f32> = ((vec2<f32>(x_2238.x, x_2238.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2242 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2241.x, x_2241.y, x_2242.z, x_2242.w);
    let x_2249 : vec4<f32> = u_xlat7;
    let x_2252 : f32 = x_111.x_GlobalMipBias.x;
    let x_2253 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2249.x, x_2249.y), x_2252);
    u_xlat7 = x_2253;
    let x_2258 : f32 = x_2193.x_MainLightCookieTextureFormat;
    let x_2260 : f32 = x_2193.x_MainLightCookieTextureFormat;
    let x_2262 : f32 = x_2193.x_MainLightCookieTextureFormat;
    let x_2264 : f32 = x_2193.x_MainLightCookieTextureFormat;
    let x_2265 : vec4<f32> = vec4<f32>(x_2258, x_2260, x_2262, x_2264);
    let x_2272 : vec4<bool> = (vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2265.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2272.x, x_2272.y);
    let x_2275 : bool = u_xlatb8.y;
    if (x_2275) {
      let x_2280 : f32 = u_xlat7.w;
      x_2276 = x_2280;
    } else {
      let x_2283 : f32 = u_xlat7.x;
      x_2276 = x_2283;
    }
    let x_2284 : f32 = x_2276;
    u_xlat55 = x_2284;
    let x_2286 : bool = u_xlatb8.x;
    if (x_2286) {
      let x_2290 : vec4<f32> = u_xlat7;
      x_2287 = vec3<f32>(x_2290.x, x_2290.y, x_2290.z);
    } else {
      let x_2293 : f32 = u_xlat55;
      x_2287 = vec3<f32>(x_2293, x_2293, x_2293);
    }
    let x_2295 : vec3<f32> = x_2287;
    let x_2296 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2302 : vec4<f32> = u_xlat7;
  let x_2305 : vec4<f32> = x_111.x_MainLightColor;
  let x_2307 : vec3<f32> = (vec3<f32>(x_2302.x, x_2302.y, x_2302.z) * vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2308 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
  let x_2310 : vec3<f32> = u_xlat2;
  let x_2312 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(x_2310), vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
  let x_2315 : f32 = u_xlat55;
  let x_2316 : f32 = u_xlat55;
  u_xlat55 = (x_2315 + x_2316);
  let x_2318 : vec4<f32> = u_xlat1;
  let x_2320 : f32 = u_xlat55;
  let x_2324 : vec3<f32> = u_xlat2;
  let x_2326 : vec3<f32> = ((vec3<f32>(x_2318.x, x_2318.y, x_2318.z) * -(vec3<f32>(x_2320, x_2320, x_2320))) + -(x_2324));
  let x_2327 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
  let x_2329 : vec4<f32> = u_xlat1;
  let x_2331 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(vec3<f32>(x_2329.x, x_2329.y, x_2329.z), x_2331);
  let x_2333 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2333, 0.0f, 1.0f);
  let x_2335 : f32 = u_xlat55;
  u_xlat55 = (-(x_2335) + 1.0f);
  let x_2338 : f32 = u_xlat55;
  let x_2339 : f32 = u_xlat55;
  u_xlat55 = (x_2338 * x_2339);
  let x_2341 : f32 = u_xlat55;
  let x_2342 : f32 = u_xlat55;
  u_xlat55 = (x_2341 * x_2342);
  let x_2345 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2345) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2352 : f32 = u_xlat0.x;
  let x_2353 : f32 = u_xlat82;
  u_xlat0.x = (x_2352 * x_2353);
  let x_2357 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2357 * 6.0f);
  let x_2369 : vec4<f32> = u_xlat8;
  let x_2372 : f32 = u_xlat0.x;
  let x_2373 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2369.x, x_2369.y, x_2369.z), x_2372);
  u_xlat8 = x_2373;
  let x_2375 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2375 + -1.0f);
  let x_2383 : f32 = x_2381.unity_SpecCube0_HDR.w;
  let x_2385 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2383 * x_2385) + 1.0f);
  let x_2390 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2390, 0.0f);
  let x_2394 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2394);
  let x_2398 : f32 = u_xlat0.x;
  let x_2400 : f32 = x_2381.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2398 * x_2400);
  let x_2404 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2404);
  let x_2408 : f32 = u_xlat0.x;
  let x_2410 : f32 = x_2381.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2408 * x_2410);
  let x_2413 : vec4<f32> = u_xlat8;
  let x_2415 : vec3<f32> = u_xlat0;
  let x_2417 : vec3<f32> = (vec3<f32>(x_2413.x, x_2413.y, x_2413.z) * vec3<f32>(x_2415.x, x_2415.x, x_2415.x));
  let x_2418 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
  let x_2420 : f32 = u_xlat52;
  let x_2422 : f32 = u_xlat52;
  let x_2426 : vec2<f32> = ((vec2<f32>(x_2420, x_2420) * vec2<f32>(x_2422, x_2422)) + vec2<f32>(-1.0f, 1.0f));
  let x_2427 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2426.x, x_2427.y, x_2426.y);
  let x_2430 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2430);
  let x_2432 : vec4<f32> = u_xlat5;
  let x_2435 : f32 = u_xlat80;
  let x_2437 : vec3<f32> = (-(vec3<f32>(x_2432.x, x_2432.y, x_2432.z)) + vec3<f32>(x_2435, x_2435, x_2435));
  let x_2438 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
  let x_2440 : f32 = u_xlat55;
  let x_2442 : vec4<f32> = u_xlat9;
  let x_2445 : vec4<f32> = u_xlat5;
  let x_2447 : vec3<f32> = ((vec3<f32>(x_2440, x_2440, x_2440) * vec3<f32>(x_2442.x, x_2442.y, x_2442.z)) + vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2448 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
  let x_2450 : f32 = u_xlat52;
  let x_2452 : vec4<f32> = u_xlat9;
  let x_2454 : vec3<f32> = (vec3<f32>(x_2450, x_2450, x_2450) * vec3<f32>(x_2452.x, x_2452.y, x_2452.z));
  let x_2455 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  let x_2457 : vec4<f32> = u_xlat8;
  let x_2459 : vec4<f32> = u_xlat9;
  let x_2461 : vec3<f32> = (vec3<f32>(x_2457.x, x_2457.y, x_2457.z) * vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
  let x_2462 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
  let x_2464 : vec4<f32> = u_xlat4;
  let x_2466 : vec4<f32> = u_xlat6;
  let x_2469 : vec4<f32> = u_xlat8;
  let x_2471 : vec3<f32> = ((vec3<f32>(x_2464.x, x_2464.y, x_2464.z) * vec3<f32>(x_2466.x, x_2466.y, x_2466.z)) + vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2472 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
  let x_2475 : f32 = u_xlat3.x;
  let x_2477 : f32 = x_2381.unity_LightData.z;
  u_xlat52 = (x_2475 * x_2477);
  let x_2479 : vec4<f32> = u_xlat1;
  let x_2482 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2479.x, x_2479.y, x_2479.z), vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
  let x_2485 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2485, 0.0f, 1.0f);
  let x_2487 : f32 = u_xlat52;
  let x_2488 : f32 = u_xlat80;
  u_xlat52 = (x_2487 * x_2488);
  let x_2490 : f32 = u_xlat52;
  let x_2492 : vec4<f32> = u_xlat7;
  let x_2494 : vec3<f32> = (vec3<f32>(x_2490, x_2490, x_2490) * vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
  let x_2497 : vec3<f32> = u_xlat2;
  let x_2499 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2501 : vec3<f32> = (x_2497 + vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
  let x_2502 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
  let x_2504 : vec4<f32> = u_xlat8;
  let x_2506 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2504.x, x_2504.y, x_2504.z), vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : f32 = u_xlat52;
  u_xlat52 = max(x_2509, 1.17549435e-38f);
  let x_2512 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2512);
  let x_2514 : f32 = u_xlat52;
  let x_2516 : vec4<f32> = u_xlat8;
  let x_2518 : vec3<f32> = (vec3<f32>(x_2514, x_2514, x_2514) * vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
  let x_2519 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
  let x_2521 : vec4<f32> = u_xlat1;
  let x_2523 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2521.x, x_2521.y, x_2521.z), vec3<f32>(x_2523.x, x_2523.y, x_2523.z));
  let x_2526 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2526, 0.0f, 1.0f);
  let x_2529 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2531 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_2529.x, x_2529.y, x_2529.z), vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
  let x_2534 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2534, 0.0f, 1.0f);
  let x_2536 : f32 = u_xlat52;
  let x_2537 : f32 = u_xlat52;
  u_xlat52 = (x_2536 * x_2537);
  let x_2539 : f32 = u_xlat52;
  let x_2541 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2539 * x_2541) + 1.00001001358032226562f);
  let x_2545 : f32 = u_xlat80;
  let x_2546 : f32 = u_xlat80;
  u_xlat80 = (x_2545 * x_2546);
  let x_2548 : f32 = u_xlat52;
  let x_2549 : f32 = u_xlat52;
  u_xlat52 = (x_2548 * x_2549);
  let x_2551 : f32 = u_xlat80;
  u_xlat80 = max(x_2551, 0.10000000149011611938f);
  let x_2554 : f32 = u_xlat52;
  let x_2555 : f32 = u_xlat80;
  u_xlat52 = (x_2554 * x_2555);
  let x_2557 : f32 = u_xlat81;
  let x_2558 : f32 = u_xlat52;
  u_xlat52 = (x_2557 * x_2558);
  let x_2560 : f32 = u_xlat79;
  let x_2561 : f32 = u_xlat52;
  u_xlat52 = (x_2560 / x_2561);
  let x_2563 : vec4<f32> = u_xlat5;
  let x_2565 : f32 = u_xlat52;
  let x_2568 : vec4<f32> = u_xlat6;
  let x_2570 : vec3<f32> = ((vec3<f32>(x_2563.x, x_2563.y, x_2563.z) * vec3<f32>(x_2565, x_2565, x_2565)) + vec3<f32>(x_2568.x, x_2568.y, x_2568.z));
  let x_2571 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
  let x_2573 : vec4<f32> = u_xlat7;
  let x_2575 : vec4<f32> = u_xlat8;
  let x_2577 : vec3<f32> = (vec3<f32>(x_2573.x, x_2573.y, x_2573.z) * vec3<f32>(x_2575.x, x_2575.y, x_2575.z));
  let x_2578 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);
  let x_2581 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2583 : f32 = x_2381.unity_LightData.y;
  u_xlat52 = min(x_2581, x_2583);
  let x_2586 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2586));
  let x_2589 : f32 = u_xlat29;
  let x_2591 : f32 = x_606.x_AdditionalShadowFadeParams.x;
  let x_2594 : f32 = x_606.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2589 * x_2591) + x_2594);
  let x_2596 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2596, 0.0f, 1.0f);
  let x_2599 : f32 = x_2193.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2601 : f32 = x_2193.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2603 : f32 = x_2193.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2605 : f32 = x_2193.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2606 : vec4<f32> = vec4<f32>(x_2599, x_2601, x_2603, x_2605);
  let x_2612 : vec4<bool> = (vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2606.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2613 : vec2<bool> = vec2<bool>(x_2612.x, x_2612.y);
  let x_2614 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2613.x, x_2613.y, x_2614.z, x_2614.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2626 : u32 = u_xlatu_loop_1;
    let x_2627 : u32 = u_xlatu52;
    if ((x_2626 < x_2627)) {
    } else {
      break;
    }
    let x_2630 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2630 >> 2u);
    let x_2633 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2633 & 3u));
    let x_2636 : u32 = u_xlatu82;
    let x_2639 : vec4<f32> = x_2381.unity_LightIndices[bitcast<i32>(x_2636)];
    let x_2649 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2654 : vec4<u32> = indexable[x_2649];
    u_xlat82 = dot(x_2639, bitcast<vec4<f32>>(x_2654));
    let x_2658 : f32 = u_xlat82;
    u_xlati82 = i32(x_2658);
    let x_2660 : vec3<f32> = vs_TEXCOORD7;
    let x_2671 : i32 = u_xlati82;
    let x_2673 : vec4<f32> = x_2670.x_AdditionalLightsPosition[x_2671];
    let x_2676 : i32 = u_xlati82;
    let x_2678 : vec4<f32> = x_2670.x_AdditionalLightsPosition[x_2676];
    let x_2680 : vec3<f32> = ((-(x_2660) * vec3<f32>(x_2673.w, x_2673.w, x_2673.w)) + vec3<f32>(x_2678.x, x_2678.y, x_2678.z));
    let x_2681 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
    let x_2683 : vec4<f32> = u_xlat9;
    let x_2685 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2683.x, x_2683.y, x_2683.z), vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
    let x_2688 : f32 = u_xlat83;
    u_xlat83 = max(x_2688, 0.00006103515625f);
    let x_2690 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2690);
    let x_2692 : f32 = u_xlat84;
    let x_2694 : vec4<f32> = u_xlat9;
    let x_2696 : vec3<f32> = (vec3<f32>(x_2692, x_2692, x_2692) * vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
    let x_2697 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
    let x_2700 : f32 = u_xlat83;
    u_xlat85 = (1.0f / x_2700);
    let x_2702 : f32 = u_xlat83;
    let x_2703 : i32 = u_xlati82;
    let x_2705 : f32 = x_2670.x_AdditionalLightsAttenuation[x_2703].x;
    u_xlat83 = (x_2702 * x_2705);
    let x_2707 : f32 = u_xlat83;
    let x_2709 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2707) * x_2709) + 1.0f);
    let x_2712 : f32 = u_xlat83;
    u_xlat83 = max(x_2712, 0.0f);
    let x_2714 : f32 = u_xlat83;
    let x_2715 : f32 = u_xlat83;
    u_xlat83 = (x_2714 * x_2715);
    let x_2717 : f32 = u_xlat83;
    let x_2718 : f32 = u_xlat85;
    u_xlat83 = (x_2717 * x_2718);
    let x_2720 : i32 = u_xlati82;
    let x_2722 : vec4<f32> = x_2670.x_AdditionalLightsSpotDir[x_2720];
    let x_2724 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2722.x, x_2722.y, x_2722.z), vec3<f32>(x_2724.x, x_2724.y, x_2724.z));
    let x_2727 : f32 = u_xlat85;
    let x_2728 : i32 = u_xlati82;
    let x_2730 : f32 = x_2670.x_AdditionalLightsAttenuation[x_2728].z;
    let x_2732 : i32 = u_xlati82;
    let x_2734 : f32 = x_2670.x_AdditionalLightsAttenuation[x_2732].w;
    u_xlat85 = ((x_2727 * x_2730) + x_2734);
    let x_2736 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2736, 0.0f, 1.0f);
    let x_2738 : f32 = u_xlat85;
    let x_2739 : f32 = u_xlat85;
    u_xlat85 = (x_2738 * x_2739);
    let x_2741 : f32 = u_xlat83;
    let x_2742 : f32 = u_xlat85;
    u_xlat83 = (x_2741 * x_2742);
    let x_2745 : i32 = u_xlati82;
    let x_2747 : f32 = x_606.x_AdditionalShadowParams[x_2745].w;
    u_xlati85 = i32(x_2747);
    let x_2750 : i32 = u_xlati85;
    u_xlatb86 = (x_2750 >= 0i);
    let x_2752 : bool = u_xlatb86;
    if (x_2752) {
      let x_2756 : i32 = u_xlati82;
      let x_2758 : f32 = x_606.x_AdditionalShadowParams[x_2756].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2758, x_2758, x_2758, x_2758))));
      let x_2762 : bool = u_xlatb86;
      if (x_2762) {
        let x_2766 : vec4<f32> = u_xlat10;
        let x_2769 : vec4<f32> = u_xlat10;
        let x_2772 : vec4<bool> = (abs(vec4<f32>(x_2766.z, x_2766.z, x_2766.y, x_2766.z)) >= abs(vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.x)));
        let x_2774 : vec3<bool> = vec3<bool>(x_2772.x, x_2772.y, x_2772.z);
        let x_2775 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
        let x_2778 : bool = u_xlatb11.y;
        let x_2780 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2778 & x_2780);
        let x_2782 : vec4<f32> = u_xlat10;
        let x_2785 : vec4<bool> = (-(vec4<f32>(x_2782.z, x_2782.y, x_2782.z, x_2782.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2786 : vec3<bool> = vec3<bool>(x_2785.x, x_2785.y, x_2785.w);
        let x_2787 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2786.x, x_2786.y, x_2787.z, x_2786.z);
        let x_2790 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2790);
        let x_2795 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2795);
        let x_2800 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2800);
        let x_2803 : bool = u_xlatb11.z;
        if (x_2803) {
          let x_2808 : f32 = u_xlat11.y;
          x_2804 = x_2808;
        } else {
          let x_2810 : f32 = u_xlat87;
          x_2804 = x_2810;
        }
        let x_2811 : f32 = x_2804;
        u_xlat87 = x_2811;
        let x_2813 : bool = u_xlatb86;
        if (x_2813) {
          let x_2818 : f32 = u_xlat11.x;
          x_2814 = x_2818;
        } else {
          let x_2820 : f32 = u_xlat87;
          x_2814 = x_2820;
        }
        let x_2821 : f32 = x_2814;
        u_xlat86 = x_2821;
        let x_2822 : i32 = u_xlati82;
        let x_2824 : f32 = x_606.x_AdditionalShadowParams[x_2822].w;
        u_xlat87 = trunc(x_2824);
        let x_2826 : f32 = u_xlat86;
        let x_2827 : f32 = u_xlat87;
        u_xlat86 = (x_2826 + x_2827);
        let x_2829 : f32 = u_xlat86;
        u_xlati85 = i32(x_2829);
      }
      let x_2831 : i32 = u_xlati85;
      u_xlati85 = (x_2831 << bitcast<u32>(2i));
      let x_2833 : vec3<f32> = vs_TEXCOORD7;
      let x_2835 : i32 = u_xlati85;
      let x_2838 : i32 = u_xlati85;
      let x_2842 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2835 + 1i) / 4i)][((x_2838 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2833.y, x_2833.y, x_2833.y, x_2833.y) * x_2842);
      let x_2844 : i32 = u_xlati85;
      let x_2846 : i32 = u_xlati85;
      let x_2849 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[(x_2844 / 4i)][(x_2846 % 4i)];
      let x_2850 : vec3<f32> = vs_TEXCOORD7;
      let x_2853 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2849 * vec4<f32>(x_2850.x, x_2850.x, x_2850.x, x_2850.x)) + x_2853);
      let x_2855 : i32 = u_xlati85;
      let x_2858 : i32 = u_xlati85;
      let x_2862 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2855 + 2i) / 4i)][((x_2858 + 2i) % 4i)];
      let x_2863 : vec3<f32> = vs_TEXCOORD7;
      let x_2866 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2862 * vec4<f32>(x_2863.z, x_2863.z, x_2863.z, x_2863.z)) + x_2866);
      let x_2868 : vec4<f32> = u_xlat11;
      let x_2869 : i32 = u_xlati85;
      let x_2872 : i32 = u_xlati85;
      let x_2876 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2869 + 3i) / 4i)][((x_2872 + 3i) % 4i)];
      u_xlat11 = (x_2868 + x_2876);
      let x_2878 : vec4<f32> = u_xlat11;
      let x_2880 : vec4<f32> = u_xlat11;
      let x_2882 : vec3<f32> = (vec3<f32>(x_2878.x, x_2878.y, x_2878.z) / vec3<f32>(x_2880.w, x_2880.w, x_2880.w));
      let x_2883 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2883.w);
      let x_2886 : i32 = u_xlati82;
      let x_2888 : f32 = x_606.x_AdditionalShadowParams[x_2886].y;
      u_xlatb85 = (0.0f < x_2888);
      let x_2890 : bool = u_xlatb85;
      if (x_2890) {
        let x_2893 : i32 = u_xlati82;
        let x_2895 : f32 = x_606.x_AdditionalShadowParams[x_2893].y;
        u_xlatb85 = (1.0f == x_2895);
        let x_2897 : bool = u_xlatb85;
        if (x_2897) {
          let x_2900 : vec4<f32> = u_xlat11;
          let x_2903 : vec4<f32> = x_606.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2900.x, x_2900.y, x_2900.x, x_2900.y) + x_2903);
          let x_2906 : vec4<f32> = u_xlat12;
          let x_2907 : vec2<f32> = vec2<f32>(x_2906.x, x_2906.y);
          let x_2909 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
          let x_2917 : vec3<f32> = txVec30;
          let x_2919 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2917.xy, x_2917.z);
          u_xlat13.x = x_2919;
          let x_2922 : vec4<f32> = u_xlat12;
          let x_2923 : vec2<f32> = vec2<f32>(x_2922.z, x_2922.w);
          let x_2925 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
          let x_2932 : vec3<f32> = txVec31;
          let x_2934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
          u_xlat13.y = x_2934;
          let x_2936 : vec4<f32> = u_xlat11;
          let x_2939 : vec4<f32> = x_606.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2936.x, x_2936.y, x_2936.x, x_2936.y) + x_2939);
          let x_2942 : vec4<f32> = u_xlat12;
          let x_2943 : vec2<f32> = vec2<f32>(x_2942.x, x_2942.y);
          let x_2945 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2943.x, x_2943.y, x_2945);
          let x_2952 : vec3<f32> = txVec32;
          let x_2954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2952.xy, x_2952.z);
          u_xlat13.z = x_2954;
          let x_2957 : vec4<f32> = u_xlat12;
          let x_2958 : vec2<f32> = vec2<f32>(x_2957.z, x_2957.w);
          let x_2960 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
          let x_2967 : vec3<f32> = txVec33;
          let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
          u_xlat13.w = x_2969;
          let x_2971 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2971, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2974 : i32 = u_xlati82;
          let x_2976 : f32 = x_606.x_AdditionalShadowParams[x_2974].y;
          u_xlatb86 = (2.0f == x_2976);
          let x_2978 : bool = u_xlatb86;
          if (x_2978) {
            let x_2981 : vec4<f32> = u_xlat11;
            let x_2984 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_2987 : vec2<f32> = ((vec2<f32>(x_2981.x, x_2981.y) * vec2<f32>(x_2984.z, x_2984.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2988 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat12;
            let x_2992 : vec2<f32> = floor(vec2<f32>(x_2990.x, x_2990.y));
            let x_2993 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2992.x, x_2992.y, x_2993.z, x_2993.w);
            let x_2996 : vec4<f32> = u_xlat11;
            let x_2999 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3002 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2996.x, x_2996.y) * vec2<f32>(x_2999.z, x_2999.w)) + -(vec2<f32>(x_3002.x, x_3002.y)));
            let x_3006 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3006.x, x_3006.x, x_3006.y, x_3006.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3009 : vec4<f32> = u_xlat13;
            let x_3011 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3009.x, x_3009.x, x_3009.z, x_3009.z) * vec4<f32>(x_3011.x, x_3011.x, x_3011.z, x_3011.z));
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3016 : vec2<f32> = (vec2<f32>(x_3014.y, x_3014.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3017 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3016.x, x_3017.y, x_3016.y, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat14;
            let x_3022 : vec2<f32> = u_xlat64;
            let x_3024 : vec2<f32> = ((vec2<f32>(x_3019.x, x_3019.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3022));
            let x_3025 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3024.x, x_3024.y, x_3025.z, x_3025.w);
            let x_3028 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3028) + vec2<f32>(1.0f, 1.0f));
            let x_3031 : vec2<f32> = u_xlat64;
            let x_3032 : vec2<f32> = min(x_3031, vec2<f32>(0.0f, 0.0f));
            let x_3033 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3032.x, x_3032.y, x_3033.z, x_3033.w);
            let x_3035 : vec4<f32> = u_xlat15;
            let x_3038 : vec4<f32> = u_xlat15;
            let x_3041 : vec2<f32> = u_xlat66;
            let x_3042 : vec2<f32> = ((-(vec2<f32>(x_3035.x, x_3035.y)) * vec2<f32>(x_3038.x, x_3038.y)) + x_3041);
            let x_3043 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3042.x, x_3042.y, x_3043.z, x_3043.w);
            let x_3045 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3045, vec2<f32>(0.0f, 0.0f));
            let x_3047 : vec2<f32> = u_xlat64;
            let x_3049 : vec2<f32> = u_xlat64;
            let x_3051 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3047) * x_3049) + vec2<f32>(x_3051.y, x_3051.w));
            let x_3054 : vec4<f32> = u_xlat15;
            let x_3056 : vec2<f32> = (vec2<f32>(x_3054.x, x_3054.y) + vec2<f32>(1.0f, 1.0f));
            let x_3057 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3056.x, x_3056.y, x_3057.z, x_3057.w);
            let x_3059 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3059 + vec2<f32>(1.0f, 1.0f));
            let x_3061 : vec4<f32> = u_xlat14;
            let x_3063 : vec2<f32> = (vec2<f32>(x_3061.x, x_3061.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3064 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3063.x, x_3063.y, x_3064.z, x_3064.w);
            let x_3066 : vec2<f32> = u_xlat66;
            let x_3067 : vec2<f32> = (x_3066 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3067.x, x_3067.y, x_3068.z, x_3068.w);
            let x_3070 : vec4<f32> = u_xlat15;
            let x_3072 : vec2<f32> = (vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3073 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3072.x, x_3072.y, x_3073.z, x_3073.w);
            let x_3075 : vec2<f32> = u_xlat64;
            let x_3076 : vec2<f32> = (x_3075 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3077 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3076.x, x_3076.y, x_3077.z, x_3077.w);
            let x_3079 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3079.y, x_3079.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3083 : f32 = u_xlat15.x;
            u_xlat16.z = x_3083;
            let x_3086 : f32 = u_xlat64.x;
            u_xlat16.w = x_3086;
            let x_3089 : f32 = u_xlat17.x;
            u_xlat14.z = x_3089;
            let x_3092 : f32 = u_xlat13.x;
            u_xlat14.w = x_3092;
            let x_3094 : vec4<f32> = u_xlat14;
            let x_3096 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3094.z, x_3094.w, x_3094.x, x_3094.z) + vec4<f32>(x_3096.z, x_3096.w, x_3096.x, x_3096.z));
            let x_3100 : f32 = u_xlat16.y;
            u_xlat15.z = x_3100;
            let x_3103 : f32 = u_xlat64.y;
            u_xlat15.w = x_3103;
            let x_3106 : f32 = u_xlat14.y;
            u_xlat17.z = x_3106;
            let x_3109 : f32 = u_xlat13.z;
            u_xlat17.w = x_3109;
            let x_3111 : vec4<f32> = u_xlat15;
            let x_3113 : vec4<f32> = u_xlat17;
            let x_3115 : vec3<f32> = (vec3<f32>(x_3111.z, x_3111.y, x_3111.w) + vec3<f32>(x_3113.z, x_3113.y, x_3113.w));
            let x_3116 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3115.x, x_3115.y, x_3115.z, x_3116.w);
            let x_3118 : vec4<f32> = u_xlat14;
            let x_3120 : vec4<f32> = u_xlat18;
            let x_3122 : vec3<f32> = (vec3<f32>(x_3118.x, x_3118.z, x_3118.w) / vec3<f32>(x_3120.z, x_3120.w, x_3120.y));
            let x_3123 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3123.w);
            let x_3125 : vec4<f32> = u_xlat14;
            let x_3127 : vec3<f32> = (vec3<f32>(x_3125.x, x_3125.y, x_3125.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3128 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3127.x, x_3127.y, x_3127.z, x_3128.w);
            let x_3130 : vec4<f32> = u_xlat17;
            let x_3132 : vec4<f32> = u_xlat13;
            let x_3134 : vec3<f32> = (vec3<f32>(x_3130.z, x_3130.y, x_3130.w) / vec3<f32>(x_3132.x, x_3132.y, x_3132.z));
            let x_3135 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3134.x, x_3134.y, x_3134.z, x_3135.w);
            let x_3137 : vec4<f32> = u_xlat15;
            let x_3139 : vec3<f32> = (vec3<f32>(x_3137.x, x_3137.y, x_3137.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3140 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3139.x, x_3139.y, x_3139.z, x_3140.w);
            let x_3142 : vec4<f32> = u_xlat14;
            let x_3145 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3147 : vec3<f32> = (vec3<f32>(x_3142.y, x_3142.x, x_3142.z) * vec3<f32>(x_3145.x, x_3145.x, x_3145.x));
            let x_3148 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3148.w);
            let x_3150 : vec4<f32> = u_xlat15;
            let x_3153 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3155 : vec3<f32> = (vec3<f32>(x_3150.x, x_3150.y, x_3150.z) * vec3<f32>(x_3153.y, x_3153.y, x_3153.y));
            let x_3156 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3156.w);
            let x_3159 : f32 = u_xlat15.x;
            u_xlat14.w = x_3159;
            let x_3161 : vec4<f32> = u_xlat12;
            let x_3164 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3167 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3161.x, x_3161.y, x_3161.x, x_3161.y) * vec4<f32>(x_3164.x, x_3164.y, x_3164.x, x_3164.y)) + vec4<f32>(x_3167.y, x_3167.w, x_3167.x, x_3167.w));
            let x_3170 : vec4<f32> = u_xlat12;
            let x_3173 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3176 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3170.x, x_3170.y) * vec2<f32>(x_3173.x, x_3173.y)) + vec2<f32>(x_3176.z, x_3176.w));
            let x_3180 : f32 = u_xlat14.y;
            u_xlat15.w = x_3180;
            let x_3182 : vec4<f32> = u_xlat15;
            let x_3183 : vec2<f32> = vec2<f32>(x_3182.y, x_3182.z);
            let x_3184 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3184.x, x_3183.x, x_3184.z, x_3183.y);
            let x_3186 : vec4<f32> = u_xlat12;
            let x_3189 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3192 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3186.x, x_3186.y, x_3186.x, x_3186.y) * vec4<f32>(x_3189.x, x_3189.y, x_3189.x, x_3189.y)) + vec4<f32>(x_3192.x, x_3192.y, x_3192.z, x_3192.y));
            let x_3195 : vec4<f32> = u_xlat12;
            let x_3198 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3195.x, x_3195.y, x_3195.x, x_3195.y) * vec4<f32>(x_3198.x, x_3198.y, x_3198.x, x_3198.y)) + vec4<f32>(x_3201.w, x_3201.y, x_3201.w, x_3201.z));
            let x_3204 : vec4<f32> = u_xlat12;
            let x_3207 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3210 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3204.x, x_3204.y, x_3204.x, x_3204.y) * vec4<f32>(x_3207.x, x_3207.y, x_3207.x, x_3207.y)) + vec4<f32>(x_3210.x, x_3210.w, x_3210.z, x_3210.w));
            let x_3213 : vec4<f32> = u_xlat13;
            let x_3215 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3213.x, x_3213.x, x_3213.x, x_3213.y) * vec4<f32>(x_3215.z, x_3215.w, x_3215.y, x_3215.z));
            let x_3218 : vec4<f32> = u_xlat13;
            let x_3220 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3218.y, x_3218.y, x_3218.z, x_3218.z) * x_3220);
            let x_3223 : f32 = u_xlat13.z;
            let x_3225 : f32 = u_xlat18.y;
            u_xlat86 = (x_3223 * x_3225);
            let x_3228 : vec4<f32> = u_xlat16;
            let x_3229 : vec2<f32> = vec2<f32>(x_3228.x, x_3228.y);
            let x_3231 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec34;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat87 = x_3240;
            let x_3242 : vec4<f32> = u_xlat16;
            let x_3243 : vec2<f32> = vec2<f32>(x_3242.z, x_3242.w);
            let x_3245 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3243.x, x_3243.y, x_3245);
            let x_3253 : vec3<f32> = txVec35;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat88 = x_3255;
            let x_3256 : f32 = u_xlat88;
            let x_3258 : f32 = u_xlat19.y;
            u_xlat88 = (x_3256 * x_3258);
            let x_3261 : f32 = u_xlat19.x;
            let x_3262 : f32 = u_xlat87;
            let x_3264 : f32 = u_xlat88;
            u_xlat87 = ((x_3261 * x_3262) + x_3264);
            let x_3267 : vec2<f32> = u_xlat64;
            let x_3269 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec36;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat88 = x_3278;
            let x_3280 : f32 = u_xlat19.z;
            let x_3281 : f32 = u_xlat88;
            let x_3283 : f32 = u_xlat87;
            u_xlat87 = ((x_3280 * x_3281) + x_3283);
            let x_3286 : vec4<f32> = u_xlat15;
            let x_3287 : vec2<f32> = vec2<f32>(x_3286.x, x_3286.y);
            let x_3289 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3287.x, x_3287.y, x_3289);
            let x_3296 : vec3<f32> = txVec37;
            let x_3298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3296.xy, x_3296.z);
            u_xlat88 = x_3298;
            let x_3300 : f32 = u_xlat19.w;
            let x_3301 : f32 = u_xlat88;
            let x_3303 : f32 = u_xlat87;
            u_xlat87 = ((x_3300 * x_3301) + x_3303);
            let x_3306 : vec4<f32> = u_xlat17;
            let x_3307 : vec2<f32> = vec2<f32>(x_3306.x, x_3306.y);
            let x_3309 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3307.x, x_3307.y, x_3309);
            let x_3316 : vec3<f32> = txVec38;
            let x_3318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3316.xy, x_3316.z);
            u_xlat88 = x_3318;
            let x_3320 : f32 = u_xlat20.x;
            let x_3321 : f32 = u_xlat88;
            let x_3323 : f32 = u_xlat87;
            u_xlat87 = ((x_3320 * x_3321) + x_3323);
            let x_3326 : vec4<f32> = u_xlat17;
            let x_3327 : vec2<f32> = vec2<f32>(x_3326.z, x_3326.w);
            let x_3329 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3327.x, x_3327.y, x_3329);
            let x_3336 : vec3<f32> = txVec39;
            let x_3338 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3336.xy, x_3336.z);
            u_xlat88 = x_3338;
            let x_3340 : f32 = u_xlat20.y;
            let x_3341 : f32 = u_xlat88;
            let x_3343 : f32 = u_xlat87;
            u_xlat87 = ((x_3340 * x_3341) + x_3343);
            let x_3346 : vec4<f32> = u_xlat15;
            let x_3347 : vec2<f32> = vec2<f32>(x_3346.z, x_3346.w);
            let x_3349 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec40;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat88 = x_3358;
            let x_3360 : f32 = u_xlat20.z;
            let x_3361 : f32 = u_xlat88;
            let x_3363 : f32 = u_xlat87;
            u_xlat87 = ((x_3360 * x_3361) + x_3363);
            let x_3366 : vec4<f32> = u_xlat14;
            let x_3367 : vec2<f32> = vec2<f32>(x_3366.x, x_3366.y);
            let x_3369 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3367.x, x_3367.y, x_3369);
            let x_3376 : vec3<f32> = txVec41;
            let x_3378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3376.xy, x_3376.z);
            u_xlat88 = x_3378;
            let x_3380 : f32 = u_xlat20.w;
            let x_3381 : f32 = u_xlat88;
            let x_3383 : f32 = u_xlat87;
            u_xlat87 = ((x_3380 * x_3381) + x_3383);
            let x_3386 : vec4<f32> = u_xlat14;
            let x_3387 : vec2<f32> = vec2<f32>(x_3386.z, x_3386.w);
            let x_3389 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec42;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat88 = x_3398;
            let x_3399 : f32 = u_xlat86;
            let x_3400 : f32 = u_xlat88;
            let x_3402 : f32 = u_xlat87;
            u_xlat85 = ((x_3399 * x_3400) + x_3402);
          } else {
            let x_3405 : vec4<f32> = u_xlat11;
            let x_3408 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3411 : vec2<f32> = ((vec2<f32>(x_3405.x, x_3405.y) * vec2<f32>(x_3408.z, x_3408.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3412 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3411.x, x_3411.y, x_3412.z, x_3412.w);
            let x_3414 : vec4<f32> = u_xlat12;
            let x_3416 : vec2<f32> = floor(vec2<f32>(x_3414.x, x_3414.y));
            let x_3417 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3416.x, x_3416.y, x_3417.z, x_3417.w);
            let x_3419 : vec4<f32> = u_xlat11;
            let x_3422 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3425 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3419.x, x_3419.y) * vec2<f32>(x_3422.z, x_3422.w)) + -(vec2<f32>(x_3425.x, x_3425.y)));
            let x_3429 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3429.x, x_3429.x, x_3429.y, x_3429.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3432 : vec4<f32> = u_xlat13;
            let x_3434 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3432.x, x_3432.x, x_3432.z, x_3432.z) * vec4<f32>(x_3434.x, x_3434.x, x_3434.z, x_3434.z));
            let x_3437 : vec4<f32> = u_xlat14;
            let x_3439 : vec2<f32> = (vec2<f32>(x_3437.y, x_3437.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3440 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3440.x, x_3439.x, x_3440.z, x_3439.y);
            let x_3442 : vec4<f32> = u_xlat14;
            let x_3445 : vec2<f32> = u_xlat64;
            let x_3447 : vec2<f32> = ((vec2<f32>(x_3442.x, x_3442.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3445));
            let x_3448 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3447.x, x_3448.y, x_3447.y, x_3448.w);
            let x_3450 : vec2<f32> = u_xlat64;
            let x_3452 : vec2<f32> = (-(x_3450) + vec2<f32>(1.0f, 1.0f));
            let x_3453 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3452.x, x_3452.y, x_3453.z, x_3453.w);
            let x_3455 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3455, vec2<f32>(0.0f, 0.0f));
            let x_3457 : vec2<f32> = u_xlat66;
            let x_3459 : vec2<f32> = u_xlat66;
            let x_3461 : vec4<f32> = u_xlat14;
            let x_3463 : vec2<f32> = ((-(x_3457) * x_3459) + vec2<f32>(x_3461.x, x_3461.y));
            let x_3464 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3463.x, x_3463.y, x_3464.z, x_3464.w);
            let x_3466 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3466, vec2<f32>(0.0f, 0.0f));
            let x_3469 : vec2<f32> = u_xlat66;
            let x_3471 : vec2<f32> = u_xlat66;
            let x_3473 : vec4<f32> = u_xlat13;
            let x_3475 : vec2<f32> = ((-(x_3469) * x_3471) + vec2<f32>(x_3473.y, x_3473.w));
            let x_3476 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3475.x, x_3476.y, x_3475.y);
            let x_3478 : vec4<f32> = u_xlat14;
            let x_3480 : vec2<f32> = (vec2<f32>(x_3478.x, x_3478.y) + vec2<f32>(2.0f, 2.0f));
            let x_3481 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3480.x, x_3480.y, x_3481.z, x_3481.w);
            let x_3483 : vec3<f32> = u_xlat39;
            let x_3485 : vec2<f32> = (vec2<f32>(x_3483.x, x_3483.z) + vec2<f32>(2.0f, 2.0f));
            let x_3486 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3486.x, x_3485.x, x_3486.z, x_3485.y);
            let x_3489 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3489 * 0.08163200318813323975f);
            let x_3492 : vec4<f32> = u_xlat13;
            let x_3494 : vec3<f32> = (vec3<f32>(x_3492.z, x_3492.x, x_3492.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3495 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3494.x, x_3494.y, x_3494.z, x_3495.w);
            let x_3497 : vec4<f32> = u_xlat14;
            let x_3499 : vec2<f32> = (vec2<f32>(x_3497.x, x_3497.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3500 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3499.x, x_3499.y, x_3500.z, x_3500.w);
            let x_3503 : f32 = u_xlat17.y;
            u_xlat16.x = x_3503;
            let x_3505 : vec2<f32> = u_xlat64;
            let x_3508 : vec2<f32> = ((vec2<f32>(x_3505.x, x_3505.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3509 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3509.x, x_3508.x, x_3509.z, x_3508.y);
            let x_3511 : vec2<f32> = u_xlat64;
            let x_3514 : vec2<f32> = ((vec2<f32>(x_3511.x, x_3511.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3515 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3514.x, x_3515.y, x_3514.y, x_3515.w);
            let x_3518 : f32 = u_xlat13.x;
            u_xlat14.y = x_3518;
            let x_3521 : f32 = u_xlat15.y;
            u_xlat14.w = x_3521;
            let x_3523 : vec4<f32> = u_xlat14;
            let x_3524 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3523 + x_3524);
            let x_3526 : vec2<f32> = u_xlat64;
            let x_3529 : vec2<f32> = ((vec2<f32>(x_3526.y, x_3526.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3530 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3530.x, x_3529.x, x_3530.z, x_3529.y);
            let x_3532 : vec2<f32> = u_xlat64;
            let x_3535 : vec2<f32> = ((vec2<f32>(x_3532.y, x_3532.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3536 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3535.x, x_3536.y, x_3535.y, x_3536.w);
            let x_3539 : f32 = u_xlat13.y;
            u_xlat15.y = x_3539;
            let x_3541 : vec4<f32> = u_xlat15;
            let x_3542 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3541 + x_3542);
            let x_3544 : vec4<f32> = u_xlat14;
            let x_3545 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3544 / x_3545);
            let x_3547 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3547 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3549 : vec4<f32> = u_xlat15;
            let x_3550 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3549 / x_3550);
            let x_3552 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3552 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3554 : vec4<f32> = u_xlat14;
            let x_3557 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3554.w, x_3554.x, x_3554.y, x_3554.z) * vec4<f32>(x_3557.x, x_3557.x, x_3557.x, x_3557.x));
            let x_3560 : vec4<f32> = u_xlat15;
            let x_3563 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3560.x, x_3560.w, x_3560.y, x_3560.z) * vec4<f32>(x_3563.y, x_3563.y, x_3563.y, x_3563.y));
            let x_3566 : vec4<f32> = u_xlat14;
            let x_3567 : vec3<f32> = vec3<f32>(x_3566.y, x_3566.z, x_3566.w);
            let x_3568 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3567.x, x_3568.y, x_3567.y, x_3567.z);
            let x_3571 : f32 = u_xlat15.x;
            u_xlat17.y = x_3571;
            let x_3573 : vec4<f32> = u_xlat12;
            let x_3576 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3579 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3573.x, x_3573.y, x_3573.x, x_3573.y) * vec4<f32>(x_3576.x, x_3576.y, x_3576.x, x_3576.y)) + vec4<f32>(x_3579.x, x_3579.y, x_3579.z, x_3579.y));
            let x_3582 : vec4<f32> = u_xlat12;
            let x_3585 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3588 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3582.x, x_3582.y) * vec2<f32>(x_3585.x, x_3585.y)) + vec2<f32>(x_3588.w, x_3588.y));
            let x_3592 : f32 = u_xlat17.y;
            u_xlat14.y = x_3592;
            let x_3595 : f32 = u_xlat15.z;
            u_xlat17.y = x_3595;
            let x_3597 : vec4<f32> = u_xlat12;
            let x_3600 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3603 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3597.x, x_3597.y, x_3597.x, x_3597.y) * vec4<f32>(x_3600.x, x_3600.y, x_3600.x, x_3600.y)) + vec4<f32>(x_3603.x, x_3603.y, x_3603.z, x_3603.y));
            let x_3606 : vec4<f32> = u_xlat12;
            let x_3609 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3612 : vec4<f32> = u_xlat17;
            let x_3614 : vec2<f32> = ((vec2<f32>(x_3606.x, x_3606.y) * vec2<f32>(x_3609.x, x_3609.y)) + vec2<f32>(x_3612.w, x_3612.y));
            let x_3615 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3614.x, x_3614.y, x_3615.z, x_3615.w);
            let x_3618 : f32 = u_xlat17.y;
            u_xlat14.z = x_3618;
            let x_3621 : vec4<f32> = u_xlat12;
            let x_3624 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3627 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3621.x, x_3621.y, x_3621.x, x_3621.y) * vec4<f32>(x_3624.x, x_3624.y, x_3624.x, x_3624.y)) + vec4<f32>(x_3627.x, x_3627.y, x_3627.x, x_3627.z));
            let x_3631 : f32 = u_xlat15.w;
            u_xlat17.y = x_3631;
            let x_3634 : vec4<f32> = u_xlat12;
            let x_3637 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3640 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3634.x, x_3634.y, x_3634.x, x_3634.y) * vec4<f32>(x_3637.x, x_3637.y, x_3637.x, x_3637.y)) + vec4<f32>(x_3640.x, x_3640.y, x_3640.z, x_3640.y));
            let x_3644 : vec4<f32> = u_xlat12;
            let x_3647 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3650 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3644.x, x_3644.y) * vec2<f32>(x_3647.x, x_3647.y)) + vec2<f32>(x_3650.w, x_3650.y));
            let x_3654 : f32 = u_xlat17.y;
            u_xlat14.w = x_3654;
            let x_3657 : vec4<f32> = u_xlat12;
            let x_3660 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3663 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3660.x, x_3660.y)) + vec2<f32>(x_3663.x, x_3663.w));
            let x_3666 : vec4<f32> = u_xlat17;
            let x_3667 : vec3<f32> = vec3<f32>(x_3666.x, x_3666.z, x_3666.w);
            let x_3668 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3667.x, x_3668.y, x_3667.y, x_3667.z);
            let x_3670 : vec4<f32> = u_xlat12;
            let x_3673 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3676 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3670.x, x_3670.y, x_3670.x, x_3670.y) * vec4<f32>(x_3673.x, x_3673.y, x_3673.x, x_3673.y)) + vec4<f32>(x_3676.x, x_3676.y, x_3676.z, x_3676.y));
            let x_3679 : vec4<f32> = u_xlat12;
            let x_3682 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3685 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3679.x, x_3679.y) * vec2<f32>(x_3682.x, x_3682.y)) + vec2<f32>(x_3685.w, x_3685.y));
            let x_3689 : f32 = u_xlat14.x;
            u_xlat15.x = x_3689;
            let x_3691 : vec4<f32> = u_xlat12;
            let x_3694 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3697 : vec4<f32> = u_xlat15;
            let x_3699 : vec2<f32> = ((vec2<f32>(x_3691.x, x_3691.y) * vec2<f32>(x_3694.x, x_3694.y)) + vec2<f32>(x_3697.x, x_3697.y));
            let x_3700 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3699.x, x_3699.y, x_3700.z, x_3700.w);
            let x_3703 : vec4<f32> = u_xlat13;
            let x_3705 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3703.x, x_3703.x, x_3703.x, x_3703.x) * x_3705);
            let x_3708 : vec4<f32> = u_xlat13;
            let x_3710 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3708.y, x_3708.y, x_3708.y, x_3708.y) * x_3710);
            let x_3713 : vec4<f32> = u_xlat13;
            let x_3715 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3713.z, x_3713.z, x_3713.z, x_3713.z) * x_3715);
            let x_3717 : vec4<f32> = u_xlat13;
            let x_3719 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3717.w, x_3717.w, x_3717.w, x_3717.w) * x_3719);
            let x_3722 : vec4<f32> = u_xlat18;
            let x_3723 : vec2<f32> = vec2<f32>(x_3722.x, x_3722.y);
            let x_3725 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3723.x, x_3723.y, x_3725);
            let x_3732 : vec3<f32> = txVec43;
            let x_3734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3732.xy, x_3732.z);
            u_xlat86 = x_3734;
            let x_3736 : vec4<f32> = u_xlat18;
            let x_3737 : vec2<f32> = vec2<f32>(x_3736.z, x_3736.w);
            let x_3739 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3737.x, x_3737.y, x_3739);
            let x_3746 : vec3<f32> = txVec44;
            let x_3748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3746.xy, x_3746.z);
            u_xlat87 = x_3748;
            let x_3749 : f32 = u_xlat87;
            let x_3751 : f32 = u_xlat23.y;
            u_xlat87 = (x_3749 * x_3751);
            let x_3754 : f32 = u_xlat23.x;
            let x_3755 : f32 = u_xlat86;
            let x_3757 : f32 = u_xlat87;
            u_xlat86 = ((x_3754 * x_3755) + x_3757);
            let x_3760 : vec2<f32> = u_xlat64;
            let x_3762 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3760.x, x_3760.y, x_3762);
            let x_3769 : vec3<f32> = txVec45;
            let x_3771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3769.xy, x_3769.z);
            u_xlat87 = x_3771;
            let x_3773 : f32 = u_xlat23.z;
            let x_3774 : f32 = u_xlat87;
            let x_3776 : f32 = u_xlat86;
            u_xlat86 = ((x_3773 * x_3774) + x_3776);
            let x_3779 : vec4<f32> = u_xlat21;
            let x_3780 : vec2<f32> = vec2<f32>(x_3779.x, x_3779.y);
            let x_3782 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3780.x, x_3780.y, x_3782);
            let x_3789 : vec3<f32> = txVec46;
            let x_3791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3789.xy, x_3789.z);
            u_xlat87 = x_3791;
            let x_3793 : f32 = u_xlat23.w;
            let x_3794 : f32 = u_xlat87;
            let x_3796 : f32 = u_xlat86;
            u_xlat86 = ((x_3793 * x_3794) + x_3796);
            let x_3799 : vec4<f32> = u_xlat19;
            let x_3800 : vec2<f32> = vec2<f32>(x_3799.x, x_3799.y);
            let x_3802 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3800.x, x_3800.y, x_3802);
            let x_3809 : vec3<f32> = txVec47;
            let x_3811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3809.xy, x_3809.z);
            u_xlat87 = x_3811;
            let x_3813 : f32 = u_xlat24.x;
            let x_3814 : f32 = u_xlat87;
            let x_3816 : f32 = u_xlat86;
            u_xlat86 = ((x_3813 * x_3814) + x_3816);
            let x_3819 : vec4<f32> = u_xlat19;
            let x_3820 : vec2<f32> = vec2<f32>(x_3819.z, x_3819.w);
            let x_3822 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3820.x, x_3820.y, x_3822);
            let x_3829 : vec3<f32> = txVec48;
            let x_3831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3829.xy, x_3829.z);
            u_xlat87 = x_3831;
            let x_3833 : f32 = u_xlat24.y;
            let x_3834 : f32 = u_xlat87;
            let x_3836 : f32 = u_xlat86;
            u_xlat86 = ((x_3833 * x_3834) + x_3836);
            let x_3839 : vec4<f32> = u_xlat20;
            let x_3840 : vec2<f32> = vec2<f32>(x_3839.x, x_3839.y);
            let x_3842 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3840.x, x_3840.y, x_3842);
            let x_3849 : vec3<f32> = txVec49;
            let x_3851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3849.xy, x_3849.z);
            u_xlat87 = x_3851;
            let x_3853 : f32 = u_xlat24.z;
            let x_3854 : f32 = u_xlat87;
            let x_3856 : f32 = u_xlat86;
            u_xlat86 = ((x_3853 * x_3854) + x_3856);
            let x_3859 : vec4<f32> = u_xlat21;
            let x_3860 : vec2<f32> = vec2<f32>(x_3859.z, x_3859.w);
            let x_3862 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
            let x_3869 : vec3<f32> = txVec50;
            let x_3871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3869.xy, x_3869.z);
            u_xlat87 = x_3871;
            let x_3873 : f32 = u_xlat24.w;
            let x_3874 : f32 = u_xlat87;
            let x_3876 : f32 = u_xlat86;
            u_xlat86 = ((x_3873 * x_3874) + x_3876);
            let x_3879 : vec4<f32> = u_xlat22;
            let x_3880 : vec2<f32> = vec2<f32>(x_3879.x, x_3879.y);
            let x_3882 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3880.x, x_3880.y, x_3882);
            let x_3889 : vec3<f32> = txVec51;
            let x_3891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3889.xy, x_3889.z);
            u_xlat87 = x_3891;
            let x_3893 : f32 = u_xlat25.x;
            let x_3894 : f32 = u_xlat87;
            let x_3896 : f32 = u_xlat86;
            u_xlat86 = ((x_3893 * x_3894) + x_3896);
            let x_3899 : vec4<f32> = u_xlat22;
            let x_3900 : vec2<f32> = vec2<f32>(x_3899.z, x_3899.w);
            let x_3902 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3900.x, x_3900.y, x_3902);
            let x_3909 : vec3<f32> = txVec52;
            let x_3911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3909.xy, x_3909.z);
            u_xlat87 = x_3911;
            let x_3913 : f32 = u_xlat25.y;
            let x_3914 : f32 = u_xlat87;
            let x_3916 : f32 = u_xlat86;
            u_xlat86 = ((x_3913 * x_3914) + x_3916);
            let x_3919 : vec2<f32> = u_xlat40;
            let x_3921 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3919.x, x_3919.y, x_3921);
            let x_3928 : vec3<f32> = txVec53;
            let x_3930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3928.xy, x_3928.z);
            u_xlat87 = x_3930;
            let x_3932 : f32 = u_xlat25.z;
            let x_3933 : f32 = u_xlat87;
            let x_3935 : f32 = u_xlat86;
            u_xlat86 = ((x_3932 * x_3933) + x_3935);
            let x_3938 : vec2<f32> = u_xlat72;
            let x_3940 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3938.x, x_3938.y, x_3940);
            let x_3947 : vec3<f32> = txVec54;
            let x_3949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3947.xy, x_3947.z);
            u_xlat87 = x_3949;
            let x_3951 : f32 = u_xlat25.w;
            let x_3952 : f32 = u_xlat87;
            let x_3954 : f32 = u_xlat86;
            u_xlat86 = ((x_3951 * x_3952) + x_3954);
            let x_3957 : vec4<f32> = u_xlat17;
            let x_3958 : vec2<f32> = vec2<f32>(x_3957.x, x_3957.y);
            let x_3960 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3958.x, x_3958.y, x_3960);
            let x_3967 : vec3<f32> = txVec55;
            let x_3969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3967.xy, x_3967.z);
            u_xlat87 = x_3969;
            let x_3971 : f32 = u_xlat13.x;
            let x_3972 : f32 = u_xlat87;
            let x_3974 : f32 = u_xlat86;
            u_xlat86 = ((x_3971 * x_3972) + x_3974);
            let x_3977 : vec4<f32> = u_xlat17;
            let x_3978 : vec2<f32> = vec2<f32>(x_3977.z, x_3977.w);
            let x_3980 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3978.x, x_3978.y, x_3980);
            let x_3987 : vec3<f32> = txVec56;
            let x_3989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3987.xy, x_3987.z);
            u_xlat87 = x_3989;
            let x_3991 : f32 = u_xlat13.y;
            let x_3992 : f32 = u_xlat87;
            let x_3994 : f32 = u_xlat86;
            u_xlat86 = ((x_3991 * x_3992) + x_3994);
            let x_3997 : vec2<f32> = u_xlat67;
            let x_3999 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3997.x, x_3997.y, x_3999);
            let x_4006 : vec3<f32> = txVec57;
            let x_4008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4006.xy, x_4006.z);
            u_xlat87 = x_4008;
            let x_4010 : f32 = u_xlat13.z;
            let x_4011 : f32 = u_xlat87;
            let x_4013 : f32 = u_xlat86;
            u_xlat86 = ((x_4010 * x_4011) + x_4013);
            let x_4016 : vec4<f32> = u_xlat12;
            let x_4017 : vec2<f32> = vec2<f32>(x_4016.x, x_4016.y);
            let x_4019 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4017.x, x_4017.y, x_4019);
            let x_4026 : vec3<f32> = txVec58;
            let x_4028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4026.xy, x_4026.z);
            u_xlat87 = x_4028;
            let x_4030 : f32 = u_xlat13.w;
            let x_4031 : f32 = u_xlat87;
            let x_4033 : f32 = u_xlat86;
            u_xlat85 = ((x_4030 * x_4031) + x_4033);
          }
        }
      } else {
        let x_4037 : vec4<f32> = u_xlat11;
        let x_4038 : vec2<f32> = vec2<f32>(x_4037.x, x_4037.y);
        let x_4040 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4038.x, x_4038.y, x_4040);
        let x_4047 : vec3<f32> = txVec59;
        let x_4049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4047.xy, x_4047.z);
        u_xlat85 = x_4049;
      }
      let x_4050 : i32 = u_xlati82;
      let x_4052 : f32 = x_606.x_AdditionalShadowParams[x_4050].x;
      u_xlat86 = (1.0f + -(x_4052));
      let x_4055 : f32 = u_xlat85;
      let x_4056 : i32 = u_xlati82;
      let x_4058 : f32 = x_606.x_AdditionalShadowParams[x_4056].x;
      let x_4060 : f32 = u_xlat86;
      u_xlat85 = ((x_4055 * x_4058) + x_4060);
      let x_4063 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4063);
      let x_4067 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4067 >= 1.0f);
      let x_4069 : bool = u_xlatb86;
      let x_4070 : bool = u_xlatb87;
      u_xlatb86 = (x_4069 | x_4070);
      let x_4072 : bool = u_xlatb86;
      let x_4073 : f32 = u_xlat85;
      u_xlat85 = select(x_4073, 1.0f, x_4072);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4076 : f32 = u_xlat85;
    u_xlat86 = (-(x_4076) + 1.0f);
    let x_4079 : f32 = u_xlat80;
    let x_4080 : f32 = u_xlat86;
    let x_4082 : f32 = u_xlat85;
    u_xlat85 = ((x_4079 * x_4080) + x_4082);
    let x_4085 : i32 = u_xlati82;
    u_xlati86 = (1i << bitcast<u32>((x_4085 & 31i)));
    let x_4088 : i32 = u_xlati86;
    let x_4091 : f32 = x_2193.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4088) & bitcast<u32>(x_4091)));
    let x_4095 : i32 = u_xlati86;
    if ((x_4095 != 0i)) {
      let x_4099 : i32 = u_xlati82;
      let x_4101 : f32 = x_2193.x_AdditionalLightsLightTypes[x_4099].el;
      u_xlati86 = i32(x_4101);
      let x_4104 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4104 != 0i));
      let x_4108 : i32 = u_xlati82;
      u_xlati88 = (x_4108 << bitcast<u32>(2i));
      let x_4110 : i32 = u_xlati87;
      if ((x_4110 != 0i)) {
        let x_4114 : vec3<f32> = vs_TEXCOORD7;
        let x_4116 : i32 = u_xlati88;
        let x_4119 : i32 = u_xlati88;
        let x_4123 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4116 + 1i) / 4i)][((x_4119 + 1i) % 4i)];
        let x_4125 : vec3<f32> = (vec3<f32>(x_4114.y, x_4114.y, x_4114.y) * vec3<f32>(x_4123.x, x_4123.y, x_4123.w));
        let x_4126 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4125.x, x_4125.y, x_4125.z, x_4126.w);
        let x_4128 : i32 = u_xlati88;
        let x_4130 : i32 = u_xlati88;
        let x_4133 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[(x_4128 / 4i)][(x_4130 % 4i)];
        let x_4135 : vec3<f32> = vs_TEXCOORD7;
        let x_4138 : vec4<f32> = u_xlat11;
        let x_4140 : vec3<f32> = ((vec3<f32>(x_4133.x, x_4133.y, x_4133.w) * vec3<f32>(x_4135.x, x_4135.x, x_4135.x)) + vec3<f32>(x_4138.x, x_4138.y, x_4138.z));
        let x_4141 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4140.x, x_4140.y, x_4140.z, x_4141.w);
        let x_4143 : i32 = u_xlati88;
        let x_4146 : i32 = u_xlati88;
        let x_4150 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4143 + 2i) / 4i)][((x_4146 + 2i) % 4i)];
        let x_4152 : vec3<f32> = vs_TEXCOORD7;
        let x_4155 : vec4<f32> = u_xlat11;
        let x_4157 : vec3<f32> = ((vec3<f32>(x_4150.x, x_4150.y, x_4150.w) * vec3<f32>(x_4152.z, x_4152.z, x_4152.z)) + vec3<f32>(x_4155.x, x_4155.y, x_4155.z));
        let x_4158 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4157.x, x_4157.y, x_4157.z, x_4158.w);
        let x_4160 : vec4<f32> = u_xlat11;
        let x_4162 : i32 = u_xlati88;
        let x_4165 : i32 = u_xlati88;
        let x_4169 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4162 + 3i) / 4i)][((x_4165 + 3i) % 4i)];
        let x_4171 : vec3<f32> = (vec3<f32>(x_4160.x, x_4160.y, x_4160.z) + vec3<f32>(x_4169.x, x_4169.y, x_4169.w));
        let x_4172 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4171.x, x_4171.y, x_4171.z, x_4172.w);
        let x_4174 : vec4<f32> = u_xlat11;
        let x_4176 : vec4<f32> = u_xlat11;
        let x_4178 : vec2<f32> = (vec2<f32>(x_4174.x, x_4174.y) / vec2<f32>(x_4176.z, x_4176.z));
        let x_4179 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4178.x, x_4178.y, x_4179.z, x_4179.w);
        let x_4181 : vec4<f32> = u_xlat11;
        let x_4184 : vec2<f32> = ((vec2<f32>(x_4181.x, x_4181.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4185 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4184.x, x_4184.y, x_4185.z, x_4185.w);
        let x_4187 : vec4<f32> = u_xlat11;
        let x_4191 : vec2<f32> = clamp(vec2<f32>(x_4187.x, x_4187.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4192 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4191.x, x_4191.y, x_4192.z, x_4192.w);
        let x_4194 : i32 = u_xlati82;
        let x_4196 : vec4<f32> = x_2193.x_AdditionalLightsCookieAtlasUVRects[x_4194];
        let x_4198 : vec4<f32> = u_xlat11;
        let x_4201 : i32 = u_xlati82;
        let x_4203 : vec4<f32> = x_2193.x_AdditionalLightsCookieAtlasUVRects[x_4201];
        let x_4205 : vec2<f32> = ((vec2<f32>(x_4196.x, x_4196.y) * vec2<f32>(x_4198.x, x_4198.y)) + vec2<f32>(x_4203.z, x_4203.w));
        let x_4206 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4205.x, x_4205.y, x_4206.z, x_4206.w);
      } else {
        let x_4209 : i32 = u_xlati86;
        u_xlatb86 = (x_4209 == 1i);
        let x_4211 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4211);
        let x_4213 : i32 = u_xlati86;
        if ((x_4213 != 0i)) {
          let x_4218 : vec3<f32> = vs_TEXCOORD7;
          let x_4220 : i32 = u_xlati88;
          let x_4223 : i32 = u_xlati88;
          let x_4227 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4220 + 1i) / 4i)][((x_4223 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4218.y, x_4218.y) * vec2<f32>(x_4227.x, x_4227.y));
          let x_4230 : i32 = u_xlati88;
          let x_4232 : i32 = u_xlati88;
          let x_4235 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[(x_4230 / 4i)][(x_4232 % 4i)];
          let x_4237 : vec3<f32> = vs_TEXCOORD7;
          let x_4240 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4235.x, x_4235.y) * vec2<f32>(x_4237.x, x_4237.x)) + x_4240);
          let x_4242 : i32 = u_xlati88;
          let x_4245 : i32 = u_xlati88;
          let x_4249 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4242 + 2i) / 4i)][((x_4245 + 2i) % 4i)];
          let x_4251 : vec3<f32> = vs_TEXCOORD7;
          let x_4254 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4249.x, x_4249.y) * vec2<f32>(x_4251.z, x_4251.z)) + x_4254);
          let x_4256 : vec2<f32> = u_xlat63;
          let x_4257 : i32 = u_xlati88;
          let x_4260 : i32 = u_xlati88;
          let x_4264 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4257 + 3i) / 4i)][((x_4260 + 3i) % 4i)];
          u_xlat63 = (x_4256 + vec2<f32>(x_4264.x, x_4264.y));
          let x_4267 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4267 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4270 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4270);
          let x_4272 : i32 = u_xlati82;
          let x_4274 : vec4<f32> = x_2193.x_AdditionalLightsCookieAtlasUVRects[x_4272];
          let x_4276 : vec2<f32> = u_xlat63;
          let x_4278 : i32 = u_xlati82;
          let x_4280 : vec4<f32> = x_2193.x_AdditionalLightsCookieAtlasUVRects[x_4278];
          let x_4282 : vec2<f32> = ((vec2<f32>(x_4274.x, x_4274.y) * x_4276) + vec2<f32>(x_4280.z, x_4280.w));
          let x_4283 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4282.x, x_4282.y, x_4283.z, x_4283.w);
        } else {
          let x_4286 : vec3<f32> = vs_TEXCOORD7;
          let x_4288 : i32 = u_xlati88;
          let x_4291 : i32 = u_xlati88;
          let x_4295 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4288 + 1i) / 4i)][((x_4291 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4286.y, x_4286.y, x_4286.y, x_4286.y) * x_4295);
          let x_4297 : i32 = u_xlati88;
          let x_4299 : i32 = u_xlati88;
          let x_4302 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[(x_4297 / 4i)][(x_4299 % 4i)];
          let x_4303 : vec3<f32> = vs_TEXCOORD7;
          let x_4306 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4302 * vec4<f32>(x_4303.x, x_4303.x, x_4303.x, x_4303.x)) + x_4306);
          let x_4308 : i32 = u_xlati88;
          let x_4311 : i32 = u_xlati88;
          let x_4315 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4308 + 2i) / 4i)][((x_4311 + 2i) % 4i)];
          let x_4316 : vec3<f32> = vs_TEXCOORD7;
          let x_4319 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4315 * vec4<f32>(x_4316.z, x_4316.z, x_4316.z, x_4316.z)) + x_4319);
          let x_4321 : vec4<f32> = u_xlat12;
          let x_4322 : i32 = u_xlati88;
          let x_4325 : i32 = u_xlati88;
          let x_4329 : vec4<f32> = x_2193.x_AdditionalLightsWorldToLights[((x_4322 + 3i) / 4i)][((x_4325 + 3i) % 4i)];
          u_xlat12 = (x_4321 + x_4329);
          let x_4331 : vec4<f32> = u_xlat12;
          let x_4333 : vec4<f32> = u_xlat12;
          let x_4335 : vec3<f32> = (vec3<f32>(x_4331.x, x_4331.y, x_4331.z) / vec3<f32>(x_4333.w, x_4333.w, x_4333.w));
          let x_4336 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4335.x, x_4335.y, x_4335.z, x_4336.w);
          let x_4338 : vec4<f32> = u_xlat12;
          let x_4340 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4338.x, x_4338.y, x_4338.z), vec3<f32>(x_4340.x, x_4340.y, x_4340.z));
          let x_4343 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4343);
          let x_4345 : f32 = u_xlat86;
          let x_4347 : vec4<f32> = u_xlat12;
          let x_4349 : vec3<f32> = (vec3<f32>(x_4345, x_4345, x_4345) * vec3<f32>(x_4347.x, x_4347.y, x_4347.z));
          let x_4350 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4349.x, x_4349.y, x_4349.z, x_4350.w);
          let x_4352 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4352.x, x_4352.y, x_4352.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4357 : f32 = u_xlat86;
          u_xlat86 = max(x_4357, 0.00000099999999747524f);
          let x_4360 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4360);
          let x_4362 : f32 = u_xlat86;
          let x_4364 : vec4<f32> = u_xlat12;
          let x_4366 : vec3<f32> = (vec3<f32>(x_4362, x_4362, x_4362) * vec3<f32>(x_4364.z, x_4364.x, x_4364.y));
          let x_4367 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4366.x, x_4366.y, x_4366.z, x_4367.w);
          let x_4370 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4370);
          let x_4374 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4374, 0.0f, 1.0f);
          let x_4378 : vec4<f32> = u_xlat13;
          let x_4380 : vec4<bool> = (vec4<f32>(x_4378.y, x_4378.z, x_4378.y, x_4378.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4380.x, x_4380.y);
          let x_4383 : bool = u_xlatb63.x;
          if (x_4383) {
            let x_4388 : f32 = u_xlat13.x;
            x_4384 = x_4388;
          } else {
            let x_4391 : f32 = u_xlat13.x;
            x_4384 = -(x_4391);
          }
          let x_4393 : f32 = x_4384;
          u_xlat63.x = x_4393;
          let x_4396 : bool = u_xlatb63.y;
          if (x_4396) {
            let x_4401 : f32 = u_xlat13.x;
            x_4397 = x_4401;
          } else {
            let x_4404 : f32 = u_xlat13.x;
            x_4397 = -(x_4404);
          }
          let x_4406 : f32 = x_4397;
          u_xlat63.y = x_4406;
          let x_4408 : vec4<f32> = u_xlat12;
          let x_4410 : f32 = u_xlat86;
          let x_4413 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4408.x, x_4408.y) * vec2<f32>(x_4410, x_4410)) + x_4413);
          let x_4415 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4415 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4418 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4418, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4422 : i32 = u_xlati82;
          let x_4424 : vec4<f32> = x_2193.x_AdditionalLightsCookieAtlasUVRects[x_4422];
          let x_4426 : vec2<f32> = u_xlat63;
          let x_4428 : i32 = u_xlati82;
          let x_4430 : vec4<f32> = x_2193.x_AdditionalLightsCookieAtlasUVRects[x_4428];
          let x_4432 : vec2<f32> = ((vec2<f32>(x_4424.x, x_4424.y) * x_4426) + vec2<f32>(x_4430.z, x_4430.w));
          let x_4433 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4432.x, x_4432.y, x_4433.z, x_4433.w);
        }
      }
      let x_4440 : vec4<f32> = u_xlat11;
      let x_4442 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4440.x, x_4440.y), 0.0f);
      u_xlat11 = x_4442;
      let x_4444 : bool = u_xlatb3.y;
      if (x_4444) {
        let x_4449 : f32 = u_xlat11.w;
        x_4445 = x_4449;
      } else {
        let x_4452 : f32 = u_xlat11.x;
        x_4445 = x_4452;
      }
      let x_4453 : f32 = x_4445;
      u_xlat86 = x_4453;
      let x_4455 : bool = u_xlatb3.x;
      if (x_4455) {
        let x_4459 : vec4<f32> = u_xlat11;
        x_4456 = vec3<f32>(x_4459.x, x_4459.y, x_4459.z);
      } else {
        let x_4462 : f32 = u_xlat86;
        x_4456 = vec3<f32>(x_4462, x_4462, x_4462);
      }
      let x_4464 : vec3<f32> = x_4456;
      let x_4465 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4464.x, x_4464.y, x_4464.z, x_4465.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4471 : vec4<f32> = u_xlat11;
    let x_4473 : i32 = u_xlati82;
    let x_4475 : vec4<f32> = x_2670.x_AdditionalLightsColor[x_4473];
    let x_4477 : vec3<f32> = (vec3<f32>(x_4471.x, x_4471.y, x_4471.z) * vec3<f32>(x_4475.x, x_4475.y, x_4475.z));
    let x_4478 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4477.x, x_4477.y, x_4477.z, x_4478.w);
    let x_4480 : f32 = u_xlat83;
    let x_4481 : f32 = u_xlat85;
    u_xlat82 = (x_4480 * x_4481);
    let x_4483 : vec4<f32> = u_xlat1;
    let x_4485 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4483.x, x_4483.y, x_4483.z), vec3<f32>(x_4485.x, x_4485.y, x_4485.z));
    let x_4488 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4488, 0.0f, 1.0f);
    let x_4490 : f32 = u_xlat82;
    let x_4491 : f32 = u_xlat83;
    u_xlat82 = (x_4490 * x_4491);
    let x_4493 : f32 = u_xlat82;
    let x_4495 : vec4<f32> = u_xlat11;
    let x_4497 : vec3<f32> = (vec3<f32>(x_4493, x_4493, x_4493) * vec3<f32>(x_4495.x, x_4495.y, x_4495.z));
    let x_4498 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4497.x, x_4497.y, x_4497.z, x_4498.w);
    let x_4500 : vec4<f32> = u_xlat9;
    let x_4502 : f32 = u_xlat84;
    let x_4505 : vec3<f32> = u_xlat2;
    let x_4506 : vec3<f32> = ((vec3<f32>(x_4500.x, x_4500.y, x_4500.z) * vec3<f32>(x_4502, x_4502, x_4502)) + x_4505);
    let x_4507 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4506.x, x_4506.y, x_4506.z, x_4507.w);
    let x_4509 : vec4<f32> = u_xlat9;
    let x_4511 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4509.x, x_4509.y, x_4509.z), vec3<f32>(x_4511.x, x_4511.y, x_4511.z));
    let x_4514 : f32 = u_xlat82;
    u_xlat82 = max(x_4514, 1.17549435e-38f);
    let x_4516 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4516);
    let x_4518 : f32 = u_xlat82;
    let x_4520 : vec4<f32> = u_xlat9;
    let x_4522 : vec3<f32> = (vec3<f32>(x_4518, x_4518, x_4518) * vec3<f32>(x_4520.x, x_4520.y, x_4520.z));
    let x_4523 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4522.x, x_4522.y, x_4522.z, x_4523.w);
    let x_4525 : vec4<f32> = u_xlat1;
    let x_4527 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4525.x, x_4525.y, x_4525.z), vec3<f32>(x_4527.x, x_4527.y, x_4527.z));
    let x_4530 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4530, 0.0f, 1.0f);
    let x_4532 : vec4<f32> = u_xlat10;
    let x_4534 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4532.x, x_4532.y, x_4532.z), vec3<f32>(x_4534.x, x_4534.y, x_4534.z));
    let x_4537 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4537, 0.0f, 1.0f);
    let x_4539 : f32 = u_xlat82;
    let x_4540 : f32 = u_xlat82;
    u_xlat82 = (x_4539 * x_4540);
    let x_4542 : f32 = u_xlat82;
    let x_4544 : f32 = u_xlat0.x;
    u_xlat82 = ((x_4542 * x_4544) + 1.00001001358032226562f);
    let x_4547 : f32 = u_xlat83;
    let x_4548 : f32 = u_xlat83;
    u_xlat83 = (x_4547 * x_4548);
    let x_4550 : f32 = u_xlat82;
    let x_4551 : f32 = u_xlat82;
    u_xlat82 = (x_4550 * x_4551);
    let x_4553 : f32 = u_xlat83;
    u_xlat83 = max(x_4553, 0.10000000149011611938f);
    let x_4555 : f32 = u_xlat82;
    let x_4556 : f32 = u_xlat83;
    u_xlat82 = (x_4555 * x_4556);
    let x_4558 : f32 = u_xlat81;
    let x_4559 : f32 = u_xlat82;
    u_xlat82 = (x_4558 * x_4559);
    let x_4561 : f32 = u_xlat79;
    let x_4562 : f32 = u_xlat82;
    u_xlat82 = (x_4561 / x_4562);
    let x_4564 : vec4<f32> = u_xlat5;
    let x_4566 : f32 = u_xlat82;
    let x_4569 : vec4<f32> = u_xlat6;
    let x_4571 : vec3<f32> = ((vec3<f32>(x_4564.x, x_4564.y, x_4564.z) * vec3<f32>(x_4566, x_4566, x_4566)) + vec3<f32>(x_4569.x, x_4569.y, x_4569.z));
    let x_4572 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4571.x, x_4571.y, x_4571.z, x_4572.w);
    let x_4574 : vec4<f32> = u_xlat9;
    let x_4576 : vec4<f32> = u_xlat11;
    let x_4579 : vec4<f32> = u_xlat8;
    let x_4581 : vec3<f32> = ((vec3<f32>(x_4574.x, x_4574.y, x_4574.z) * vec3<f32>(x_4576.x, x_4576.y, x_4576.z)) + vec3<f32>(x_4579.x, x_4579.y, x_4579.z));
    let x_4582 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4581.x, x_4581.y, x_4581.z, x_4582.w);

    continuing {
      let x_4584 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4584 + bitcast<u32>(1i));
    }
  }
  let x_4586 : vec4<f32> = u_xlat4;
  let x_4588 : f32 = u_xlat26;
  let x_4591 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4586.x, x_4586.y, x_4586.z) * vec3<f32>(x_4588, x_4588, x_4588)) + vec3<f32>(x_4591.x, x_4591.y, x_4591.z));
  let x_4594 : vec4<f32> = u_xlat8;
  let x_4596 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4594.x, x_4594.y, x_4594.z) + x_4596);
  let x_4600 : f32 = u_xlat78;
  let x_4602 : vec3<f32> = u_xlat0;
  let x_4603 : vec3<f32> = (vec3<f32>(x_4600, x_4600, x_4600) * x_4602);
  let x_4604 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4603.x, x_4603.y, x_4603.z, x_4604.w);
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


