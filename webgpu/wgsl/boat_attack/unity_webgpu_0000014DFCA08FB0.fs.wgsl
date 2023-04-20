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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

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

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_957 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb31 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2302 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2499 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_2786 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

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

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_2385 : f32;
  var x_2397 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2922 : f32;
  var x_2932 : f32;
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
  var x_4505 : f32;
  var x_4518 : f32;
  var x_4566 : f32;
  var x_4577 : vec3<f32>;
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
  let x_118 : f32 = x_112.x_GlobalMipBias.x;
  let x_119 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_118);
  u_xlat4 = x_119;
  let x_122 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_122, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_133 : vec4<f32> = vs_TEXCOORD1;
  let x_136 : f32 = x_112.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_133.x, x_133.y), x_136);
  u_xlat5 = x_137;
  let x_143 : vec4<f32> = vs_TEXCOORD1;
  let x_146 : f32 = x_112.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_143.z, x_143.w), x_146);
  u_xlat6 = x_147;
  let x_154 : vec4<f32> = vs_TEXCOORD2;
  let x_157 : f32 = x_112.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat7 = x_158;
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_167 : f32 = x_112.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_164.z, x_164.w), x_167);
  u_xlat8 = x_168;
  let x_172 : f32 = u_xlat5.w;
  u_xlat9.x = x_172;
  let x_175 : f32 = u_xlat6.w;
  u_xlat9.y = x_175;
  let x_179 : f32 = u_xlat7.w;
  u_xlat9.z = x_179;
  let x_183 : f32 = u_xlat8.w;
  u_xlat9.w = x_183;
  let x_186 : vec4<f32> = u_xlat9;
  let x_189 : f32 = x_13.x_Smoothness0;
  let x_192 : f32 = x_13.x_Smoothness1;
  let x_195 : f32 = x_13.x_Smoothness2;
  let x_198 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_186 * vec4<f32>(x_189, x_192, x_195, x_198));
  let x_207 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_207);
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_210) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_213 : vec4<f32> = u_xlat9;
  let x_214 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_213 + -(x_214));
  let x_217 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_217 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_221 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_221, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_226 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_230);
  let x_233 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_233 + -(x_234));
  let x_239 : f32 = u_xlat12.x;
  let x_242 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_239 * x_242);
  let x_246 : f32 = u_xlat12.y;
  let x_249 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_246 * x_249);
  let x_253 : f32 = u_xlat12.z;
  let x_256 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_253 * x_256);
  let x_260 : f32 = u_xlat12.w;
  let x_263 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_260 * x_263);
  let x_266 : vec4<f32> = u_xlat11;
  let x_267 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_266 + x_267);
  let x_269 : bool = u_xlatb79;
  let x_270 : vec4<f32> = u_xlat11;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_271, x_270, vec4<bool>(x_269, x_269, x_269, x_269));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_276, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_280 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_280);
  let x_282 : bool = u_xlatb80;
  if (((select(0i, 1i, x_282) * -1i) != 0i)) {
    discard;
  }
  let x_291 : f32 = u_xlat79;
  u_xlat79 = (x_291 + 0.00006103515625f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat79;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_112.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat79;
  u_xlat79 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat79;
  u_xlat79 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_404);
  let x_406 : f32 = u_xlat79;
  u_xlat7.z = max(x_406, 0.0000000000000001f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_413 : f32 = x_13.x_NormalScale0;
  let x_415 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413, x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_112.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_422.z, x_422.w), x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat6.z;
  u_xlat6.x = (x_431 * x_433);
  let x_436 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat79;
  u_xlat79 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat79;
  u_xlat79 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_452);
  let x_454 : f32 = u_xlat79;
  u_xlat8.z = max(x_454, 0.0000000000000001f);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : f32 = x_13.x_NormalScale1;
  let x_462 : f32 = x_13.x_NormalScale1;
  let x_463 : vec2<f32> = vec2<f32>(x_460, x_462);
  let x_467 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_463.x, x_463.y));
  let x_468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat8;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : vec4<f32> = u_xlat6;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_491 : vec4<f32> = vs_TEXCOORD2;
  let x_494 : f32 = x_112.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_491.x, x_491.y), x_494);
  let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = u_xlat7.z;
  u_xlat7.x = (x_500 * x_502);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat79;
  u_xlat79 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat79;
  u_xlat79 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_521);
  let x_523 : f32 = u_xlat79;
  u_xlat8.z = max(x_523, 0.0000000000000001f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_530 : f32 = x_13.x_NormalScale2;
  let x_532 : f32 = x_13.x_NormalScale2;
  let x_533 : vec2<f32> = vec2<f32>(x_530, x_532);
  let x_537 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat8;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.z, x_540.z) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_554 : vec4<f32> = vs_TEXCOORD2;
  let x_557 : f32 = x_112.x_GlobalMipBias.x;
  let x_558 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_554.z, x_554.w), x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat7.z;
  u_xlat7.x = (x_563 * x_565);
  let x_568 : vec4<f32> = u_xlat7;
  let x_571 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat79;
  u_xlat79 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat79;
  u_xlat79 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_584);
  let x_586 : f32 = u_xlat79;
  u_xlat8.z = max(x_586, 0.0000000000000001f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_593 : f32 = x_13.x_NormalScale3;
  let x_595 : f32 = x_13.x_NormalScale3;
  let x_596 : vec2<f32> = vec2<f32>(x_593, x_595);
  let x_600 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_596.x, x_596.y));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.w, x_603.w, x_603.w) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat6.z;
  u_xlat6.w = (x_614 + 0.00000999999974737875f);
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat79;
  let x_627 : vec4<f32> = u_xlat6;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.w));
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_642;
  let x_645 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_645;
  let x_648 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_648;
  let x_651 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_651;
  let x_654 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_654;
  let x_656 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_656 + x_657);
  let x_660 : f32 = u_xlat0.z;
  u_xlat8.x = x_660;
  let x_663 : f32 = u_xlat1.z;
  u_xlat8.y = x_663;
  let x_666 : f32 = u_xlat2.z;
  u_xlat8.z = x_666;
  let x_669 : f32 = u_xlat3.y;
  u_xlat8.w = x_669;
  let x_671 : vec4<f32> = u_xlat9;
  let x_674 : f32 = x_13.x_Smoothness0;
  let x_676 : f32 = x_13.x_Smoothness1;
  let x_678 : f32 = x_13.x_Smoothness2;
  let x_680 : f32 = x_13.x_Smoothness3;
  let x_683 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_671) * vec4<f32>(x_674, x_676, x_678, x_680)) + x_683);
  let x_687 : f32 = x_13.x_LayerHasMask0;
  let x_690 : f32 = x_13.x_LayerHasMask1;
  let x_693 : f32 = x_13.x_LayerHasMask2;
  let x_696 : f32 = x_13.x_LayerHasMask3;
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_687, x_690, x_693, x_696) * x_698) + x_700);
  let x_703 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat0.x;
  u_xlat8.x = x_707;
  let x_710 : f32 = u_xlat1.x;
  u_xlat8.y = x_710;
  let x_713 : f32 = u_xlat2.x;
  u_xlat8.z = x_713;
  let x_716 : f32 = u_xlat3.x;
  u_xlat8.w = x_716;
  let x_718 : vec4<f32> = u_xlat8;
  let x_721 : f32 = x_13.x_Metallic0;
  let x_724 : f32 = x_13.x_Metallic1;
  let x_727 : f32 = x_13.x_Metallic2;
  let x_730 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_718 + -(vec4<f32>(x_721, x_724, x_727, x_730)));
  let x_735 : f32 = x_13.x_LayerHasMask0;
  let x_737 : f32 = x_13.x_LayerHasMask1;
  let x_739 : f32 = x_13.x_LayerHasMask2;
  let x_741 : f32 = x_13.x_LayerHasMask3;
  let x_743 : vec4<f32> = u_xlat8;
  let x_746 : f32 = x_13.x_Metallic0;
  let x_748 : f32 = x_13.x_Metallic1;
  let x_750 : f32 = x_13.x_Metallic2;
  let x_752 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_735, x_737, x_739, x_741) * x_743) + vec4<f32>(x_746, x_748, x_750, x_752));
  let x_755 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_755, x_756);
  let x_760 : f32 = u_xlat0.y;
  u_xlat3.x = x_760;
  let x_763 : f32 = u_xlat1.y;
  u_xlat3.y = x_763;
  let x_766 : f32 = u_xlat2.y;
  u_xlat3.z = x_766;
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_768) + x_770);
  let x_773 : f32 = x_13.x_LayerHasMask0;
  let x_775 : f32 = x_13.x_LayerHasMask1;
  let x_777 : f32 = x_13.x_LayerHasMask2;
  let x_779 : f32 = x_13.x_LayerHasMask3;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_773, x_775, x_777, x_779) * x_781) + x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_786, x_787);
  let x_789 : vec4<f32> = u_xlat6;
  let x_792 : vec4<f32> = vs_TEXCOORD5;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD4;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.x, x_797.x) * -(vec3<f32>(x_800.x, x_800.y, x_800.z))) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD3;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.z, x_809.z, x_809.z) * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat79;
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_839 : vec4<f32> = vs_TEXCOORD0;
  let x_842 : f32 = x_112.x_GlobalMipBias.x;
  let x_843 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_839.z, x_839.w), x_842);
  u_xlat2 = x_843;
  let x_848 : vec4<f32> = vs_TEXCOORD0;
  let x_851 : f32 = x_112.x_GlobalMipBias.x;
  let x_852 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_848.z, x_848.w), x_851);
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat1;
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat79;
  u_xlat79 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat79;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat79 = max(x_878, 0.00009999999747378752f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat79;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883, x_883, x_883));
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat52;
  let x_896 : f32 = u_xlat79;
  u_xlat80 = (x_895 + -(x_896));
  let x_899 : f32 = u_xlat79;
  let x_901 : vec4<f32> = u_xlat5;
  let x_903 : vec3<f32> = (vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat5;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = u_xlat0;
  let x_915 : vec4<f32> = u_xlat4;
  let x_920 : vec3<f32> = ((vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_915.x, x_915.y, x_915.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : f32 = u_xlat52;
  u_xlat0.x = (-(x_923) + 1.0f);
  let x_928 : f32 = u_xlat0.x;
  let x_930 : f32 = u_xlat0.x;
  u_xlat52 = (x_928 * x_930);
  let x_932 : f32 = u_xlat52;
  u_xlat52 = max(x_932, 0.0078125f);
  let x_935 : f32 = u_xlat52;
  let x_936 : f32 = u_xlat52;
  u_xlat79 = (x_935 * x_936);
  let x_938 : f32 = u_xlat80;
  u_xlat80 = (x_938 + 1.0f);
  let x_940 : f32 = u_xlat80;
  u_xlat80 = clamp(x_940, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat52;
  u_xlat81 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat26;
  u_xlat26 = min(x_946, 1.0f);
  let x_959 : f32 = x_957.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_959);
  let x_961 : bool = u_xlatb82;
  if (x_961) {
    let x_965 : f32 = x_957.x_MainLightShadowParams.y;
    u_xlatb82 = (x_965 == 1.0f);
    let x_967 : bool = u_xlatb82;
    if (x_967) {
      let x_971 : vec4<f32> = vs_TEXCOORD8;
      let x_974 : vec4<f32> = x_957.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_971.x, x_971.y, x_971.x, x_971.y) + x_974);
      let x_978 : vec4<f32> = u_xlat5;
      let x_979 : vec2<f32> = vec2<f32>(x_978.x, x_978.y);
      let x_982 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_979.x, x_979.y, x_982);
      let x_994 : vec3<f32> = txVec0;
      let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_994.xy, x_994.z);
      u_xlat6.x = x_996;
      let x_999 : vec4<f32> = u_xlat5;
      let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
      let x_1002 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
      let x_1009 : vec3<f32> = txVec1;
      let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1009.xy, x_1009.z);
      u_xlat6.y = x_1011;
      let x_1013 : vec4<f32> = vs_TEXCOORD8;
      let x_1016 : vec4<f32> = x_957.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) + x_1016);
      let x_1019 : vec4<f32> = u_xlat5;
      let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
      let x_1022 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
      let x_1029 : vec3<f32> = txVec2;
      let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1029.xy, x_1029.z);
      u_xlat6.z = x_1031;
      let x_1034 : vec4<f32> = u_xlat5;
      let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
      let x_1037 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
      let x_1044 : vec3<f32> = txVec3;
      let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1044.xy, x_1044.z);
      u_xlat6.w = x_1046;
      let x_1049 : vec4<f32> = u_xlat6;
      u_xlat82 = dot(x_1049, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1056 : f32 = x_957.x_MainLightShadowParams.y;
      u_xlatb5 = (x_1056 == 2.0f);
      let x_1058 : bool = u_xlatb5;
      if (x_1058) {
        let x_1061 : vec4<f32> = vs_TEXCOORD8;
        let x_1064 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.z, x_1064.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1068 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat5;
        let x_1072 : vec2<f32> = floor(vec2<f32>(x_1070.x, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1077 : vec4<f32> = vs_TEXCOORD8;
        let x_1080 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1080.z, x_1080.w)) + -(vec2<f32>(x_1083.x, x_1083.y)));
        let x_1087 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1087.x, x_1087.x, x_1087.y, x_1087.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1091 : vec4<f32> = u_xlat6;
        let x_1093 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1091.x, x_1091.x, x_1091.z, x_1091.z) * vec4<f32>(x_1093.x, x_1093.x, x_1093.z, x_1093.z));
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1100 : vec2<f32> = (vec2<f32>(x_1096.y, x_1096.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1101 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1100.x, x_1101.y, x_1100.y, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec2<f32> = u_xlat57;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1106));
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1112 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1112) + vec2<f32>(1.0f, 1.0f));
        let x_1116 : vec2<f32> = u_xlat57;
        let x_1118 : vec2<f32> = min(x_1116, vec2<f32>(0.0f, 0.0f));
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1127 : vec2<f32> = u_xlat59;
        let x_1128 : vec2<f32> = ((-(vec2<f32>(x_1121.x, x_1121.y)) * vec2<f32>(x_1124.x, x_1124.y)) + x_1127);
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1131, vec2<f32>(0.0f, 0.0f));
        let x_1133 : vec2<f32> = u_xlat57;
        let x_1135 : vec2<f32> = u_xlat57;
        let x_1137 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_1133) * x_1135) + vec2<f32>(x_1137.y, x_1137.w));
        let x_1140 : vec4<f32> = u_xlat8;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.y) + vec2<f32>(1.0f, 1.0f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1145 + vec2<f32>(1.0f, 1.0f));
        let x_1147 : vec4<f32> = u_xlat7;
        let x_1151 : vec2<f32> = (vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1152 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1154 : vec2<f32> = u_xlat59;
        let x_1155 : vec2<f32> = (x_1154 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1156 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec2<f32> = u_xlat57;
        let x_1164 : vec2<f32> = (x_1163 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_1167.y, x_1167.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1171 : f32 = u_xlat8.x;
        u_xlat9.z = x_1171;
        let x_1174 : f32 = u_xlat57.x;
        u_xlat9.w = x_1174;
        let x_1177 : f32 = u_xlat10.x;
        u_xlat7.z = x_1177;
        let x_1180 : f32 = u_xlat6.x;
        u_xlat7.w = x_1180;
        let x_1182 : vec4<f32> = u_xlat7;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_1182.z, x_1182.w, x_1182.x, x_1182.z) + vec4<f32>(x_1184.z, x_1184.w, x_1184.x, x_1184.z));
        let x_1188 : f32 = u_xlat9.y;
        u_xlat8.z = x_1188;
        let x_1191 : f32 = u_xlat57.y;
        u_xlat8.w = x_1191;
        let x_1194 : f32 = u_xlat7.y;
        u_xlat10.z = x_1194;
        let x_1197 : f32 = u_xlat6.z;
        u_xlat10.w = x_1197;
        let x_1199 : vec4<f32> = u_xlat8;
        let x_1201 : vec4<f32> = u_xlat10;
        let x_1203 : vec3<f32> = (vec3<f32>(x_1199.z, x_1199.y, x_1199.w) + vec3<f32>(x_1201.z, x_1201.y, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat7;
        let x_1208 : vec4<f32> = u_xlat11;
        let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.z, x_1206.w) / vec3<f32>(x_1208.z, x_1208.w, x_1208.y));
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat7;
        let x_1218 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.y, x_1213.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1219 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1223 : vec4<f32> = u_xlat6;
        let x_1225 : vec3<f32> = (vec3<f32>(x_1221.z, x_1221.y, x_1221.w) / vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
        let x_1226 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
        let x_1228 : vec4<f32> = u_xlat8;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1236 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1238 : vec3<f32> = (vec3<f32>(x_1233.y, x_1233.x, x_1233.z) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x));
        let x_1239 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat8;
        let x_1244 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1246 : vec3<f32> = (vec3<f32>(x_1241.x, x_1241.y, x_1241.z) * vec3<f32>(x_1244.y, x_1244.y, x_1244.y));
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1250 : f32 = u_xlat8.x;
        u_xlat7.w = x_1250;
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.y, x_1258.w, x_1258.x, x_1258.w));
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.z, x_1267.w));
        let x_1271 : f32 = u_xlat7.y;
        u_xlat8.w = x_1271;
        let x_1273 : vec4<f32> = u_xlat8;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.y, x_1273.z);
        let x_1275 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1275.x, x_1274.x, x_1275.z, x_1274.y);
        let x_1277 : vec4<f32> = u_xlat5;
        let x_1280 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1283.y));
        let x_1286 : vec4<f32> = u_xlat5;
        let x_1289 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y) * vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y)) + vec4<f32>(x_1292.w, x_1292.y, x_1292.w, x_1292.z));
        let x_1295 : vec4<f32> = u_xlat5;
        let x_1298 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y) * vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y)) + vec4<f32>(x_1301.x, x_1301.w, x_1301.z, x_1301.w));
        let x_1304 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_1304.x, x_1304.x, x_1304.x, x_1304.y) * vec4<f32>(x_1306.z, x_1306.w, x_1306.y, x_1306.z));
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1309.y, x_1309.y, x_1309.z, x_1309.z) * x_1311);
        let x_1314 : f32 = u_xlat6.z;
        let x_1316 : f32 = u_xlat11.y;
        u_xlat5.x = (x_1314 * x_1316);
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1331 : vec3<f32> = txVec4;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat31.x = x_1333;
        let x_1336 : vec4<f32> = u_xlat9;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.z, x_1336.w);
        let x_1339 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec5;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat6.x = x_1348;
        let x_1351 : f32 = u_xlat6.x;
        let x_1353 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1351 * x_1353);
        let x_1357 : f32 = u_xlat12.x;
        let x_1359 : f32 = u_xlat31.x;
        let x_1362 : f32 = u_xlat6.x;
        u_xlat31.x = ((x_1357 * x_1359) + x_1362);
        let x_1366 : vec2<f32> = u_xlat57;
        let x_1368 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec6;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat57.x = x_1377;
        let x_1380 : f32 = u_xlat12.z;
        let x_1382 : f32 = u_xlat57.x;
        let x_1385 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1380 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec7;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat57.x = x_1401;
        let x_1404 : f32 = u_xlat12.w;
        let x_1406 : f32 = u_xlat57.x;
        let x_1409 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1404 * x_1406) + x_1409);
        let x_1413 : vec4<f32> = u_xlat10;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec8;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat57.x = x_1425;
        let x_1428 : f32 = u_xlat13.x;
        let x_1430 : f32 = u_xlat57.x;
        let x_1433 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1428 * x_1430) + x_1433);
        let x_1437 : vec4<f32> = u_xlat10;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec9;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat57.x = x_1449;
        let x_1452 : f32 = u_xlat13.y;
        let x_1454 : f32 = u_xlat57.x;
        let x_1457 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1452 * x_1454) + x_1457);
        let x_1461 : vec4<f32> = u_xlat8;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.z, x_1461.w);
        let x_1464 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec10;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat57.x = x_1473;
        let x_1476 : f32 = u_xlat13.z;
        let x_1478 : f32 = u_xlat57.x;
        let x_1481 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1476 * x_1478) + x_1481);
        let x_1485 : vec4<f32> = u_xlat7;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec11;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat57.x = x_1497;
        let x_1500 : f32 = u_xlat13.w;
        let x_1502 : f32 = u_xlat57.x;
        let x_1505 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1500 * x_1502) + x_1505);
        let x_1509 : vec4<f32> = u_xlat7;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec12;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat57.x = x_1521;
        let x_1524 : f32 = u_xlat5.x;
        let x_1526 : f32 = u_xlat57.x;
        let x_1529 : f32 = u_xlat31.x;
        u_xlat82 = ((x_1524 * x_1526) + x_1529);
      } else {
        let x_1532 : vec4<f32> = vs_TEXCOORD8;
        let x_1535 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1538 : vec2<f32> = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.z, x_1535.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1539 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1541 : vec4<f32> = u_xlat5;
        let x_1543 : vec2<f32> = floor(vec2<f32>(x_1541.x, x_1541.y));
        let x_1544 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1546 : vec4<f32> = vs_TEXCOORD8;
        let x_1549 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1549.z, x_1549.w)) + -(vec2<f32>(x_1552.x, x_1552.y)));
        let x_1556 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1556.x, x_1556.x, x_1556.y, x_1556.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1559 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1559.x, x_1559.x, x_1559.z, x_1559.z) * vec4<f32>(x_1561.x, x_1561.x, x_1561.z, x_1561.z));
        let x_1564 : vec4<f32> = u_xlat7;
        let x_1568 : vec2<f32> = (vec2<f32>(x_1564.y, x_1564.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1569 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1569.x, x_1568.x, x_1569.z, x_1568.y);
        let x_1571 : vec4<f32> = u_xlat7;
        let x_1574 : vec2<f32> = u_xlat57;
        let x_1576 : vec2<f32> = ((vec2<f32>(x_1571.x, x_1571.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1574));
        let x_1577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1576.x, x_1577.y, x_1576.y, x_1577.w);
        let x_1579 : vec2<f32> = u_xlat57;
        let x_1581 : vec2<f32> = (-(x_1579) + vec2<f32>(1.0f, 1.0f));
        let x_1582 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
        let x_1584 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1584, vec2<f32>(0.0f, 0.0f));
        let x_1586 : vec2<f32> = u_xlat59;
        let x_1588 : vec2<f32> = u_xlat59;
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1592 : vec2<f32> = ((-(x_1586) * x_1588) + vec2<f32>(x_1590.x, x_1590.y));
        let x_1593 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
        let x_1595 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1595, vec2<f32>(0.0f, 0.0f));
        let x_1598 : vec2<f32> = u_xlat59;
        let x_1600 : vec2<f32> = u_xlat59;
        let x_1602 : vec4<f32> = u_xlat6;
        let x_1604 : vec2<f32> = ((-(x_1598) * x_1600) + vec2<f32>(x_1602.y, x_1602.w));
        let x_1605 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1604.x, x_1605.y, x_1604.y);
        let x_1607 : vec4<f32> = u_xlat7;
        let x_1609 : vec2<f32> = (vec2<f32>(x_1607.x, x_1607.y) + vec2<f32>(2.0f, 2.0f));
        let x_1610 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1609.x, x_1609.y, x_1610.z, x_1610.w);
        let x_1612 : vec3<f32> = u_xlat32;
        let x_1614 : vec2<f32> = (vec2<f32>(x_1612.x, x_1612.z) + vec2<f32>(2.0f, 2.0f));
        let x_1615 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1615.x, x_1614.x, x_1615.z, x_1614.y);
        let x_1618 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1618 * 0.08163200318813323975f);
        let x_1622 : vec4<f32> = u_xlat6;
        let x_1625 : vec3<f32> = (vec3<f32>(x_1622.z, x_1622.x, x_1622.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1626 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
        let x_1628 : vec4<f32> = u_xlat7;
        let x_1631 : vec2<f32> = (vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1632 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
        let x_1635 : f32 = u_xlat10.y;
        u_xlat9.x = x_1635;
        let x_1637 : vec2<f32> = u_xlat57;
        let x_1644 : vec2<f32> = ((vec2<f32>(x_1637.x, x_1637.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1645.x, x_1644.x, x_1645.z, x_1644.y);
        let x_1647 : vec2<f32> = u_xlat57;
        let x_1651 : vec2<f32> = ((vec2<f32>(x_1647.x, x_1647.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1651.x, x_1652.y, x_1651.y, x_1652.w);
        let x_1655 : f32 = u_xlat6.x;
        u_xlat7.y = x_1655;
        let x_1658 : f32 = u_xlat8.y;
        u_xlat7.w = x_1658;
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1661 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1660 + x_1661);
        let x_1663 : vec2<f32> = u_xlat57;
        let x_1666 : vec2<f32> = ((vec2<f32>(x_1663.y, x_1663.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1667 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1667.x, x_1666.x, x_1667.z, x_1666.y);
        let x_1669 : vec2<f32> = u_xlat57;
        let x_1672 : vec2<f32> = ((vec2<f32>(x_1669.y, x_1669.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1673 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1672.x, x_1673.y, x_1672.y, x_1673.w);
        let x_1676 : f32 = u_xlat6.y;
        u_xlat8.y = x_1676;
        let x_1678 : vec4<f32> = u_xlat8;
        let x_1679 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1678 + x_1679);
        let x_1681 : vec4<f32> = u_xlat7;
        let x_1682 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1681 / x_1682);
        let x_1684 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1684 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1690 : vec4<f32> = u_xlat8;
        let x_1691 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1690 / x_1691);
        let x_1693 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1693 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1698 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1695.w, x_1695.x, x_1695.y, x_1695.z) * vec4<f32>(x_1698.x, x_1698.x, x_1698.x, x_1698.x));
        let x_1701 : vec4<f32> = u_xlat8;
        let x_1704 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1701.x, x_1701.w, x_1701.y, x_1701.z) * vec4<f32>(x_1704.y, x_1704.y, x_1704.y, x_1704.y));
        let x_1707 : vec4<f32> = u_xlat7;
        let x_1708 : vec3<f32> = vec3<f32>(x_1707.y, x_1707.z, x_1707.w);
        let x_1709 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1708.x, x_1709.y, x_1708.y, x_1708.z);
        let x_1712 : f32 = u_xlat8.x;
        u_xlat10.y = x_1712;
        let x_1714 : vec4<f32> = u_xlat5;
        let x_1717 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y) * vec4<f32>(x_1717.x, x_1717.y, x_1717.x, x_1717.y)) + vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.y));
        let x_1723 : vec4<f32> = u_xlat5;
        let x_1726 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1726.x, x_1726.y)) + vec2<f32>(x_1729.w, x_1729.y));
        let x_1733 : f32 = u_xlat10.y;
        u_xlat7.y = x_1733;
        let x_1736 : f32 = u_xlat8.z;
        u_xlat10.y = x_1736;
        let x_1738 : vec4<f32> = u_xlat5;
        let x_1741 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1744 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.y) * vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y)) + vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1744.y));
        let x_1747 : vec4<f32> = u_xlat5;
        let x_1750 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1753 : vec4<f32> = u_xlat10;
        let x_1755 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1750.x, x_1750.y)) + vec2<f32>(x_1753.w, x_1753.y));
        let x_1756 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1755.x, x_1755.y, x_1756.z, x_1756.w);
        let x_1759 : f32 = u_xlat10.y;
        u_xlat7.z = x_1759;
        let x_1762 : vec4<f32> = u_xlat5;
        let x_1765 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.y) * vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y)) + vec4<f32>(x_1768.x, x_1768.y, x_1768.x, x_1768.z));
        let x_1772 : f32 = u_xlat8.w;
        u_xlat10.y = x_1772;
        let x_1775 : vec4<f32> = u_xlat5;
        let x_1778 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y) * vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y)) + vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1781.y));
        let x_1785 : vec4<f32> = u_xlat5;
        let x_1788 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1785.x, x_1785.y) * vec2<f32>(x_1788.x, x_1788.y)) + vec2<f32>(x_1791.w, x_1791.y));
        let x_1795 : f32 = u_xlat10.y;
        u_xlat7.w = x_1795;
        let x_1798 : vec4<f32> = u_xlat5;
        let x_1801 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1801.x, x_1801.y)) + vec2<f32>(x_1804.x, x_1804.w));
        let x_1807 : vec4<f32> = u_xlat10;
        let x_1808 : vec3<f32> = vec3<f32>(x_1807.x, x_1807.z, x_1807.w);
        let x_1809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1808.x, x_1809.y, x_1808.y, x_1808.z);
        let x_1811 : vec4<f32> = u_xlat5;
        let x_1814 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y) * vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y)) + vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1817.y));
        let x_1821 : vec4<f32> = u_xlat5;
        let x_1824 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.w, x_1827.y));
        let x_1831 : f32 = u_xlat7.x;
        u_xlat8.x = x_1831;
        let x_1833 : vec4<f32> = u_xlat5;
        let x_1836 : vec4<f32> = x_957.x_MainLightShadowmapSize;
        let x_1839 : vec4<f32> = u_xlat8;
        let x_1841 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1836.x, x_1836.y)) + vec2<f32>(x_1839.x, x_1839.y));
        let x_1842 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
        let x_1845 : vec4<f32> = u_xlat6;
        let x_1847 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1845.x, x_1845.x, x_1845.x, x_1845.x) * x_1847);
        let x_1850 : vec4<f32> = u_xlat6;
        let x_1852 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1850.y, x_1850.y, x_1850.y, x_1850.y) * x_1852);
        let x_1855 : vec4<f32> = u_xlat6;
        let x_1857 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1855.z, x_1855.z, x_1855.z, x_1855.z) * x_1857);
        let x_1859 : vec4<f32> = u_xlat6;
        let x_1861 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1859.w, x_1859.w, x_1859.w, x_1859.w) * x_1861);
        let x_1864 : vec4<f32> = u_xlat11;
        let x_1865 : vec2<f32> = vec2<f32>(x_1864.x, x_1864.y);
        let x_1867 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec13;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1874.xy, x_1874.z);
        u_xlat7.x = x_1876;
        let x_1879 : vec4<f32> = u_xlat11;
        let x_1880 : vec2<f32> = vec2<f32>(x_1879.z, x_1879.w);
        let x_1882 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
        let x_1890 : vec3<f32> = txVec14;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat85 = x_1892;
        let x_1893 : f32 = u_xlat85;
        let x_1895 : f32 = u_xlat16.y;
        u_xlat85 = (x_1893 * x_1895);
        let x_1898 : f32 = u_xlat16.x;
        let x_1900 : f32 = u_xlat7.x;
        let x_1902 : f32 = u_xlat85;
        u_xlat7.x = ((x_1898 * x_1900) + x_1902);
        let x_1906 : vec2<f32> = u_xlat57;
        let x_1908 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec15;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat57.x = x_1917;
        let x_1920 : f32 = u_xlat16.z;
        let x_1922 : f32 = u_xlat57.x;
        let x_1925 : f32 = u_xlat7.x;
        u_xlat57.x = ((x_1920 * x_1922) + x_1925);
        let x_1929 : vec4<f32> = u_xlat14;
        let x_1930 : vec2<f32> = vec2<f32>(x_1929.x, x_1929.y);
        let x_1932 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1930.x, x_1930.y, x_1932);
        let x_1940 : vec3<f32> = txVec16;
        let x_1942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1940.xy, x_1940.z);
        u_xlat83 = x_1942;
        let x_1944 : f32 = u_xlat16.w;
        let x_1945 : f32 = u_xlat83;
        let x_1948 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1944 * x_1945) + x_1948);
        let x_1952 : vec4<f32> = u_xlat12;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec17;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1962.xy, x_1962.z);
        u_xlat83 = x_1964;
        let x_1966 : f32 = u_xlat17.x;
        let x_1967 : f32 = u_xlat83;
        let x_1970 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1966 * x_1967) + x_1970);
        let x_1974 : vec4<f32> = u_xlat12;
        let x_1975 : vec2<f32> = vec2<f32>(x_1974.z, x_1974.w);
        let x_1977 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1975.x, x_1975.y, x_1977);
        let x_1984 : vec3<f32> = txVec18;
        let x_1986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1984.xy, x_1984.z);
        u_xlat83 = x_1986;
        let x_1988 : f32 = u_xlat17.y;
        let x_1989 : f32 = u_xlat83;
        let x_1992 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1988 * x_1989) + x_1992);
        let x_1996 : vec4<f32> = u_xlat13;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.x, x_1996.y);
        let x_1999 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec19;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2006.xy, x_2006.z);
        u_xlat83 = x_2008;
        let x_2010 : f32 = u_xlat17.z;
        let x_2011 : f32 = u_xlat83;
        let x_2014 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2010 * x_2011) + x_2014);
        let x_2018 : vec4<f32> = u_xlat14;
        let x_2019 : vec2<f32> = vec2<f32>(x_2018.z, x_2018.w);
        let x_2021 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2019.x, x_2019.y, x_2021);
        let x_2028 : vec3<f32> = txVec20;
        let x_2030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2028.xy, x_2028.z);
        u_xlat83 = x_2030;
        let x_2032 : f32 = u_xlat17.w;
        let x_2033 : f32 = u_xlat83;
        let x_2036 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2032 * x_2033) + x_2036);
        let x_2040 : vec4<f32> = u_xlat15;
        let x_2041 : vec2<f32> = vec2<f32>(x_2040.x, x_2040.y);
        let x_2043 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec21;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
        u_xlat83 = x_2052;
        let x_2054 : f32 = u_xlat18.x;
        let x_2055 : f32 = u_xlat83;
        let x_2058 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2054 * x_2055) + x_2058);
        let x_2062 : vec4<f32> = u_xlat15;
        let x_2063 : vec2<f32> = vec2<f32>(x_2062.z, x_2062.w);
        let x_2065 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
        let x_2072 : vec3<f32> = txVec22;
        let x_2074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
        u_xlat83 = x_2074;
        let x_2076 : f32 = u_xlat18.y;
        let x_2077 : f32 = u_xlat83;
        let x_2080 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2076 * x_2077) + x_2080);
        let x_2084 : vec2<f32> = u_xlat33;
        let x_2086 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2084.x, x_2084.y, x_2086);
        let x_2093 : vec3<f32> = txVec23;
        let x_2095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2093.xy, x_2093.z);
        u_xlat83 = x_2095;
        let x_2097 : f32 = u_xlat18.z;
        let x_2098 : f32 = u_xlat83;
        let x_2101 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2097 * x_2098) + x_2101);
        let x_2105 : vec2<f32> = u_xlat65;
        let x_2107 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec24;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2114.xy, x_2114.z);
        u_xlat83 = x_2116;
        let x_2118 : f32 = u_xlat18.w;
        let x_2119 : f32 = u_xlat83;
        let x_2122 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2118 * x_2119) + x_2122);
        let x_2126 : vec4<f32> = u_xlat10;
        let x_2127 : vec2<f32> = vec2<f32>(x_2126.x, x_2126.y);
        let x_2129 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2127.x, x_2127.y, x_2129);
        let x_2136 : vec3<f32> = txVec25;
        let x_2138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2136.xy, x_2136.z);
        u_xlat83 = x_2138;
        let x_2140 : f32 = u_xlat6.x;
        let x_2141 : f32 = u_xlat83;
        let x_2144 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2140 * x_2141) + x_2144);
        let x_2148 : vec4<f32> = u_xlat10;
        let x_2149 : vec2<f32> = vec2<f32>(x_2148.z, x_2148.w);
        let x_2151 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
        let x_2158 : vec3<f32> = txVec26;
        let x_2160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2158.xy, x_2158.z);
        u_xlat83 = x_2160;
        let x_2162 : f32 = u_xlat6.y;
        let x_2163 : f32 = u_xlat83;
        let x_2166 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2162 * x_2163) + x_2166);
        let x_2170 : vec2<f32> = u_xlat60;
        let x_2172 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec27;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2179.xy, x_2179.z);
        u_xlat83 = x_2181;
        let x_2183 : f32 = u_xlat6.z;
        let x_2184 : f32 = u_xlat83;
        let x_2187 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2183 * x_2184) + x_2187);
        let x_2191 : vec4<f32> = u_xlat5;
        let x_2192 : vec2<f32> = vec2<f32>(x_2191.x, x_2191.y);
        let x_2194 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2192.x, x_2192.y, x_2194);
        let x_2201 : vec3<f32> = txVec28;
        let x_2203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2201.xy, x_2201.z);
        u_xlat5.x = x_2203;
        let x_2206 : f32 = u_xlat6.w;
        let x_2208 : f32 = u_xlat5.x;
        let x_2211 : f32 = u_xlat57.x;
        u_xlat82 = ((x_2206 * x_2208) + x_2211);
      }
    }
  } else {
    let x_2215 : vec4<f32> = vs_TEXCOORD8;
    let x_2216 : vec2<f32> = vec2<f32>(x_2215.x, x_2215.y);
    let x_2218 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2216.x, x_2216.y, x_2218);
    let x_2225 : vec3<f32> = txVec29;
    let x_2227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2225.xy, x_2225.z);
    u_xlat82 = x_2227;
  }
  let x_2229 : f32 = x_957.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_2229) + 1.0f);
  let x_2233 : f32 = u_xlat82;
  let x_2235 : f32 = x_957.x_MainLightShadowParams.x;
  let x_2238 : f32 = u_xlat5.x;
  u_xlat82 = ((x_2233 * x_2235) + x_2238);
  let x_2241 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_2241);
  let x_2247 : f32 = vs_TEXCOORD8.z;
  u_xlatb31.x = (x_2247 >= 1.0f);
  let x_2251 : bool = u_xlatb31.x;
  let x_2252 : bool = u_xlatb5;
  u_xlatb5 = (x_2251 | x_2252);
  let x_2254 : bool = u_xlatb5;
  let x_2255 : f32 = u_xlat82;
  u_xlat82 = select(x_2255, 1.0f, x_2254);
  let x_2259 : vec3<f32> = vs_TEXCOORD7;
  let x_2262 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2264 : vec3<f32> = (x_2259 + -(x_2262));
  let x_2265 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
  let x_2267 : vec4<f32> = u_xlat5;
  let x_2269 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2267.x, x_2267.y, x_2267.z), vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2274 : f32 = u_xlat5.x;
  let x_2276 : f32 = x_957.x_MainLightShadowParams.z;
  let x_2279 : f32 = x_957.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2274 * x_2276) + x_2279);
  let x_2283 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2283, 0.0f, 1.0f);
  let x_2286 : f32 = u_xlat82;
  u_xlat57.x = (-(x_2286) + 1.0f);
  let x_2291 : f32 = u_xlat31.x;
  let x_2293 : f32 = u_xlat57.x;
  let x_2295 : f32 = u_xlat82;
  u_xlat82 = ((x_2291 * x_2293) + x_2295);
  let x_2304 : f32 = x_2302.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_2304 == -1.0f));
  let x_2308 : bool = u_xlatb31.x;
  if (x_2308) {
    let x_2311 : vec3<f32> = vs_TEXCOORD7;
    let x_2314 : vec4<f32> = x_2302.x_MainLightWorldToLight[1i];
    let x_2316 : vec2<f32> = (vec2<f32>(x_2311.y, x_2311.y) * vec2<f32>(x_2314.x, x_2314.y));
    let x_2317 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2316.x, x_2316.y, x_2317.z);
    let x_2320 : vec4<f32> = x_2302.x_MainLightWorldToLight[0i];
    let x_2322 : vec3<f32> = vs_TEXCOORD7;
    let x_2325 : vec3<f32> = u_xlat31;
    let x_2327 : vec2<f32> = ((vec2<f32>(x_2320.x, x_2320.y) * vec2<f32>(x_2322.x, x_2322.x)) + vec2<f32>(x_2325.x, x_2325.y));
    let x_2328 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2327.x, x_2327.y, x_2328.z);
    let x_2331 : vec4<f32> = x_2302.x_MainLightWorldToLight[2i];
    let x_2333 : vec3<f32> = vs_TEXCOORD7;
    let x_2336 : vec3<f32> = u_xlat31;
    let x_2338 : vec2<f32> = ((vec2<f32>(x_2331.x, x_2331.y) * vec2<f32>(x_2333.z, x_2333.z)) + vec2<f32>(x_2336.x, x_2336.y));
    let x_2339 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2338.x, x_2338.y, x_2339.z);
    let x_2341 : vec3<f32> = u_xlat31;
    let x_2344 : vec4<f32> = x_2302.x_MainLightWorldToLight[3i];
    let x_2346 : vec2<f32> = (vec2<f32>(x_2341.x, x_2341.y) + vec2<f32>(x_2344.x, x_2344.y));
    let x_2347 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2346.x, x_2346.y, x_2347.z);
    let x_2349 : vec3<f32> = u_xlat31;
    let x_2352 : vec2<f32> = ((vec2<f32>(x_2349.x, x_2349.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2353 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2352.x, x_2352.y, x_2353.z);
    let x_2360 : vec3<f32> = u_xlat31;
    let x_2363 : f32 = x_112.x_GlobalMipBias.x;
    let x_2364 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2360.x, x_2360.y), x_2363);
    u_xlat6 = x_2364;
    let x_2366 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2368 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2370 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2372 : f32 = x_2302.x_MainLightCookieTextureFormat;
    let x_2373 : vec4<f32> = vec4<f32>(x_2366, x_2368, x_2370, x_2372);
    let x_2380 : vec4<bool> = (vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2373.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_2380.x, x_2380.y);
    let x_2383 : bool = u_xlatb31.y;
    if (x_2383) {
      let x_2389 : f32 = u_xlat6.w;
      x_2385 = x_2389;
    } else {
      let x_2392 : f32 = u_xlat6.x;
      x_2385 = x_2392;
    }
    let x_2393 : f32 = x_2385;
    u_xlat57.x = x_2393;
    let x_2396 : bool = u_xlatb31.x;
    if (x_2396) {
      let x_2400 : vec4<f32> = u_xlat6;
      x_2397 = vec3<f32>(x_2400.x, x_2400.y, x_2400.z);
    } else {
      let x_2403 : vec2<f32> = u_xlat57;
      x_2397 = vec3<f32>(x_2403.x, x_2403.x, x_2403.x);
    }
    let x_2405 : vec3<f32> = x_2397;
    u_xlat31 = x_2405;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_2410 : vec3<f32> = u_xlat31;
  let x_2412 : vec4<f32> = x_112.x_MainLightColor;
  u_xlat31 = (x_2410 * vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
  let x_2416 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2416;
  let x_2419 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2419;
  let x_2422 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2422;
  let x_2425 : vec4<f32> = u_xlat6;
  let x_2428 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(vec3<f32>(x_2425.x, x_2425.y, x_2425.z)), vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
  let x_2431 : f32 = u_xlat84;
  let x_2432 : f32 = u_xlat84;
  u_xlat84 = (x_2431 + x_2432);
  let x_2434 : vec4<f32> = u_xlat1;
  let x_2436 : f32 = u_xlat84;
  let x_2440 : vec4<f32> = u_xlat6;
  let x_2443 : vec3<f32> = ((vec3<f32>(x_2434.x, x_2434.y, x_2434.z) * -(vec3<f32>(x_2436, x_2436, x_2436))) + -(vec3<f32>(x_2440.x, x_2440.y, x_2440.z)));
  let x_2444 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
  let x_2446 : vec4<f32> = u_xlat1;
  let x_2448 : vec4<f32> = u_xlat6;
  u_xlat84 = dot(vec3<f32>(x_2446.x, x_2446.y, x_2446.z), vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
  let x_2451 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2451, 0.0f, 1.0f);
  let x_2453 : f32 = u_xlat84;
  u_xlat84 = (-(x_2453) + 1.0f);
  let x_2456 : f32 = u_xlat84;
  let x_2457 : f32 = u_xlat84;
  u_xlat84 = (x_2456 * x_2457);
  let x_2459 : f32 = u_xlat84;
  let x_2460 : f32 = u_xlat84;
  u_xlat84 = (x_2459 * x_2460);
  let x_2463 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2463) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2470 : f32 = u_xlat0.x;
  let x_2471 : f32 = u_xlat85;
  u_xlat0.x = (x_2470 * x_2471);
  let x_2475 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2475 * 6.0f);
  let x_2487 : vec4<f32> = u_xlat7;
  let x_2490 : f32 = u_xlat0.x;
  let x_2491 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2487.x, x_2487.y, x_2487.z), x_2490);
  u_xlat7 = x_2491;
  let x_2493 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2493 + -1.0f);
  let x_2501 : f32 = x_2499.unity_SpecCube0_HDR.w;
  let x_2503 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2501 * x_2503) + 1.0f);
  let x_2508 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2508, 0.0f);
  let x_2512 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2512);
  let x_2516 : f32 = u_xlat0.x;
  let x_2518 : f32 = x_2499.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2516 * x_2518);
  let x_2522 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2522);
  let x_2526 : f32 = u_xlat0.x;
  let x_2528 : f32 = x_2499.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2526 * x_2528);
  let x_2531 : vec4<f32> = u_xlat7;
  let x_2533 : vec3<f32> = u_xlat0;
  let x_2535 : vec3<f32> = (vec3<f32>(x_2531.x, x_2531.y, x_2531.z) * vec3<f32>(x_2533.x, x_2533.x, x_2533.x));
  let x_2536 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
  let x_2538 : f32 = u_xlat52;
  let x_2540 : f32 = u_xlat52;
  let x_2544 : vec2<f32> = ((vec2<f32>(x_2538, x_2538) * vec2<f32>(x_2540, x_2540)) + vec2<f32>(-1.0f, 1.0f));
  let x_2545 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2544.x, x_2545.y, x_2544.y);
  let x_2548 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2548);
  let x_2550 : vec4<f32> = u_xlat4;
  let x_2553 : f32 = u_xlat80;
  let x_2555 : vec3<f32> = (-(vec3<f32>(x_2550.x, x_2550.y, x_2550.z)) + vec3<f32>(x_2553, x_2553, x_2553));
  let x_2556 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2556.w);
  let x_2558 : f32 = u_xlat84;
  let x_2560 : vec4<f32> = u_xlat8;
  let x_2563 : vec4<f32> = u_xlat4;
  let x_2565 : vec3<f32> = ((vec3<f32>(x_2558, x_2558, x_2558) * vec3<f32>(x_2560.x, x_2560.y, x_2560.z)) + vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
  let x_2566 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2566.w);
  let x_2568 : f32 = u_xlat52;
  let x_2570 : vec4<f32> = u_xlat8;
  let x_2572 : vec3<f32> = (vec3<f32>(x_2568, x_2568, x_2568) * vec3<f32>(x_2570.x, x_2570.y, x_2570.z));
  let x_2573 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2573.w);
  let x_2575 : vec4<f32> = u_xlat7;
  let x_2577 : vec4<f32> = u_xlat8;
  let x_2579 : vec3<f32> = (vec3<f32>(x_2575.x, x_2575.y, x_2575.z) * vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
  let x_2580 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
  let x_2582 : vec4<f32> = u_xlat2;
  let x_2584 : vec4<f32> = u_xlat3;
  let x_2587 : vec4<f32> = u_xlat7;
  let x_2589 : vec3<f32> = ((vec3<f32>(x_2582.x, x_2582.y, x_2582.z) * vec3<f32>(x_2584.x, x_2584.y, x_2584.z)) + vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
  let x_2590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2589.x, x_2589.y, x_2589.z, x_2590.w);
  let x_2592 : f32 = u_xlat82;
  let x_2594 : f32 = x_2499.unity_LightData.z;
  u_xlat52 = (x_2592 * x_2594);
  let x_2596 : vec4<f32> = u_xlat1;
  let x_2599 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2596.x, x_2596.y, x_2596.z), vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
  let x_2602 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2602, 0.0f, 1.0f);
  let x_2604 : f32 = u_xlat52;
  let x_2605 : f32 = u_xlat80;
  u_xlat52 = (x_2604 * x_2605);
  let x_2607 : f32 = u_xlat52;
  let x_2609 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2607, x_2607, x_2607) * x_2609);
  let x_2611 : vec4<f32> = u_xlat6;
  let x_2614 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2616 : vec3<f32> = (vec3<f32>(x_2611.x, x_2611.y, x_2611.z) + vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
  let x_2617 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
  let x_2619 : vec4<f32> = u_xlat7;
  let x_2621 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2619.x, x_2619.y, x_2619.z), vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
  let x_2624 : f32 = u_xlat52;
  u_xlat52 = max(x_2624, 1.17549435e-38f);
  let x_2627 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2627);
  let x_2629 : f32 = u_xlat52;
  let x_2631 : vec4<f32> = u_xlat7;
  let x_2633 : vec3<f32> = (vec3<f32>(x_2629, x_2629, x_2629) * vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
  let x_2634 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
  let x_2636 : vec4<f32> = u_xlat1;
  let x_2638 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2636.x, x_2636.y, x_2636.z), vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
  let x_2641 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2641, 0.0f, 1.0f);
  let x_2644 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2646 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2644.x, x_2644.y, x_2644.z), vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
  let x_2649 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2649, 0.0f, 1.0f);
  let x_2651 : f32 = u_xlat52;
  let x_2652 : f32 = u_xlat52;
  u_xlat52 = (x_2651 * x_2652);
  let x_2654 : f32 = u_xlat52;
  let x_2656 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2654 * x_2656) + 1.00001001358032226562f);
  let x_2660 : f32 = u_xlat80;
  let x_2661 : f32 = u_xlat80;
  u_xlat80 = (x_2660 * x_2661);
  let x_2663 : f32 = u_xlat52;
  let x_2664 : f32 = u_xlat52;
  u_xlat52 = (x_2663 * x_2664);
  let x_2666 : f32 = u_xlat80;
  u_xlat80 = max(x_2666, 0.10000000149011611938f);
  let x_2669 : f32 = u_xlat52;
  let x_2670 : f32 = u_xlat80;
  u_xlat52 = (x_2669 * x_2670);
  let x_2672 : f32 = u_xlat81;
  let x_2673 : f32 = u_xlat52;
  u_xlat52 = (x_2672 * x_2673);
  let x_2675 : f32 = u_xlat79;
  let x_2676 : f32 = u_xlat52;
  u_xlat52 = (x_2675 / x_2676);
  let x_2678 : vec4<f32> = u_xlat4;
  let x_2680 : f32 = u_xlat52;
  let x_2683 : vec4<f32> = u_xlat3;
  let x_2685 : vec3<f32> = ((vec3<f32>(x_2678.x, x_2678.y, x_2678.z) * vec3<f32>(x_2680, x_2680, x_2680)) + vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
  let x_2686 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
  let x_2688 : vec3<f32> = u_xlat31;
  let x_2689 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2688 * vec3<f32>(x_2689.x, x_2689.y, x_2689.z));
  let x_2693 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2695 : f32 = x_2499.unity_LightData.y;
  u_xlat52 = min(x_2693, x_2695);
  let x_2699 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2699));
  let x_2703 : f32 = u_xlat5.x;
  let x_2705 : f32 = x_957.x_AdditionalShadowFadeParams.x;
  let x_2708 : f32 = x_957.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2703 * x_2705) + x_2708);
  let x_2710 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2710, 0.0f, 1.0f);
  let x_2714 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2716 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2718 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2720 : f32 = x_2302.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2721 : vec4<f32> = vec4<f32>(x_2714, x_2716, x_2718, x_2720);
  let x_2727 : vec4<bool> = (vec4<f32>(x_2721.x, x_2721.y, x_2721.z, x_2721.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2727.x, x_2727.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2739 : u32 = u_xlatu_loop_1;
    let x_2740 : u32 = u_xlatu52;
    if ((x_2739 < x_2740)) {
    } else {
      break;
    }
    let x_2743 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_2743 >> 2u);
    let x_2747 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2747 & 3u));
    let x_2750 : u32 = u_xlatu5;
    let x_2753 : vec4<f32> = x_2499.unity_LightIndices[bitcast<i32>(x_2750)];
    let x_2763 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2768 : vec4<u32> = indexable[x_2763];
    u_xlat5.x = dot(x_2753, bitcast<vec4<f32>>(x_2768));
    let x_2774 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_2774);
    let x_2776 : vec3<f32> = vs_TEXCOORD7;
    let x_2787 : i32 = u_xlati5;
    let x_2789 : vec4<f32> = x_2786.x_AdditionalLightsPosition[x_2787];
    let x_2792 : i32 = u_xlati5;
    let x_2794 : vec4<f32> = x_2786.x_AdditionalLightsPosition[x_2792];
    let x_2796 : vec3<f32> = ((-(x_2776) * vec3<f32>(x_2789.w, x_2789.w, x_2789.w)) + vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
    let x_2797 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
    let x_2799 : vec4<f32> = u_xlat9;
    let x_2801 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2799.x, x_2799.y, x_2799.z), vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
    let x_2804 : f32 = u_xlat84;
    u_xlat84 = max(x_2804, 0.00006103515625f);
    let x_2806 : f32 = u_xlat84;
    u_xlat59.x = inverseSqrt(x_2806);
    let x_2809 : vec2<f32> = u_xlat59;
    let x_2811 : vec4<f32> = u_xlat9;
    let x_2813 : vec3<f32> = (vec3<f32>(x_2809.x, x_2809.x, x_2809.x) * vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
    let x_2814 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
    let x_2816 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2816);
    let x_2818 : f32 = u_xlat84;
    let x_2819 : i32 = u_xlati5;
    let x_2821 : f32 = x_2786.x_AdditionalLightsAttenuation[x_2819].x;
    u_xlat84 = (x_2818 * x_2821);
    let x_2823 : f32 = u_xlat84;
    let x_2825 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2823) * x_2825) + 1.0f);
    let x_2828 : f32 = u_xlat84;
    u_xlat84 = max(x_2828, 0.0f);
    let x_2830 : f32 = u_xlat84;
    let x_2831 : f32 = u_xlat84;
    u_xlat84 = (x_2830 * x_2831);
    let x_2833 : f32 = u_xlat84;
    let x_2834 : f32 = u_xlat85;
    u_xlat84 = (x_2833 * x_2834);
    let x_2836 : i32 = u_xlati5;
    let x_2838 : vec4<f32> = x_2786.x_AdditionalLightsSpotDir[x_2836];
    let x_2840 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2838.x, x_2838.y, x_2838.z), vec3<f32>(x_2840.x, x_2840.y, x_2840.z));
    let x_2843 : f32 = u_xlat85;
    let x_2844 : i32 = u_xlati5;
    let x_2846 : f32 = x_2786.x_AdditionalLightsAttenuation[x_2844].z;
    let x_2848 : i32 = u_xlati5;
    let x_2850 : f32 = x_2786.x_AdditionalLightsAttenuation[x_2848].w;
    u_xlat85 = ((x_2843 * x_2846) + x_2850);
    let x_2852 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2852, 0.0f, 1.0f);
    let x_2854 : f32 = u_xlat85;
    let x_2855 : f32 = u_xlat85;
    u_xlat85 = (x_2854 * x_2855);
    let x_2857 : f32 = u_xlat84;
    let x_2858 : f32 = u_xlat85;
    u_xlat84 = (x_2857 * x_2858);
    let x_2861 : i32 = u_xlati5;
    let x_2863 : f32 = x_957.x_AdditionalShadowParams[x_2861].w;
    u_xlati85 = i32(x_2863);
    let x_2866 : i32 = u_xlati85;
    u_xlatb86 = (x_2866 >= 0i);
    let x_2868 : bool = u_xlatb86;
    if (x_2868) {
      let x_2872 : i32 = u_xlati5;
      let x_2874 : f32 = x_957.x_AdditionalShadowParams[x_2872].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2874, x_2874, x_2874, x_2874))));
      let x_2878 : bool = u_xlatb86;
      if (x_2878) {
        let x_2883 : vec4<f32> = u_xlat10;
        let x_2886 : vec4<f32> = u_xlat10;
        let x_2889 : vec4<bool> = (abs(vec4<f32>(x_2883.z, x_2883.z, x_2883.y, x_2883.z)) >= abs(vec4<f32>(x_2886.x, x_2886.y, x_2886.x, x_2886.x)));
        let x_2891 : vec3<bool> = vec3<bool>(x_2889.x, x_2889.y, x_2889.z);
        let x_2892 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2891.x, x_2891.y, x_2891.z, x_2892.w);
        let x_2895 : bool = u_xlatb11.y;
        let x_2897 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2895 & x_2897);
        let x_2899 : vec4<f32> = u_xlat10;
        let x_2902 : vec4<bool> = (-(vec4<f32>(x_2899.z, x_2899.y, x_2899.z, x_2899.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2903 : vec3<bool> = vec3<bool>(x_2902.x, x_2902.y, x_2902.w);
        let x_2904 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2903.x, x_2903.y, x_2904.z, x_2903.z);
        let x_2907 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2907);
        let x_2912 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2912);
        let x_2918 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2918);
        let x_2921 : bool = u_xlatb11.z;
        if (x_2921) {
          let x_2926 : f32 = u_xlat11.y;
          x_2922 = x_2926;
        } else {
          let x_2928 : f32 = u_xlat87;
          x_2922 = x_2928;
        }
        let x_2929 : f32 = x_2922;
        u_xlat87 = x_2929;
        let x_2931 : bool = u_xlatb86;
        if (x_2931) {
          let x_2936 : f32 = u_xlat11.x;
          x_2932 = x_2936;
        } else {
          let x_2938 : f32 = u_xlat87;
          x_2932 = x_2938;
        }
        let x_2939 : f32 = x_2932;
        u_xlat86 = x_2939;
        let x_2940 : i32 = u_xlati5;
        let x_2942 : f32 = x_957.x_AdditionalShadowParams[x_2940].w;
        u_xlat87 = trunc(x_2942);
        let x_2944 : f32 = u_xlat86;
        let x_2945 : f32 = u_xlat87;
        u_xlat86 = (x_2944 + x_2945);
        let x_2947 : f32 = u_xlat86;
        u_xlati85 = i32(x_2947);
      }
      let x_2949 : i32 = u_xlati85;
      u_xlati85 = (x_2949 << bitcast<u32>(2i));
      let x_2951 : vec3<f32> = vs_TEXCOORD7;
      let x_2953 : i32 = u_xlati85;
      let x_2956 : i32 = u_xlati85;
      let x_2960 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[((x_2953 + 1i) / 4i)][((x_2956 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2951.y, x_2951.y, x_2951.y, x_2951.y) * x_2960);
      let x_2962 : i32 = u_xlati85;
      let x_2964 : i32 = u_xlati85;
      let x_2967 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[(x_2962 / 4i)][(x_2964 % 4i)];
      let x_2968 : vec3<f32> = vs_TEXCOORD7;
      let x_2971 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2967 * vec4<f32>(x_2968.x, x_2968.x, x_2968.x, x_2968.x)) + x_2971);
      let x_2973 : i32 = u_xlati85;
      let x_2976 : i32 = u_xlati85;
      let x_2980 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[((x_2973 + 2i) / 4i)][((x_2976 + 2i) % 4i)];
      let x_2981 : vec3<f32> = vs_TEXCOORD7;
      let x_2984 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2980 * vec4<f32>(x_2981.z, x_2981.z, x_2981.z, x_2981.z)) + x_2984);
      let x_2986 : vec4<f32> = u_xlat11;
      let x_2987 : i32 = u_xlati85;
      let x_2990 : i32 = u_xlati85;
      let x_2994 : vec4<f32> = x_957.x_AdditionalLightsWorldToShadow[((x_2987 + 3i) / 4i)][((x_2990 + 3i) % 4i)];
      u_xlat11 = (x_2986 + x_2994);
      let x_2996 : vec4<f32> = u_xlat11;
      let x_2998 : vec4<f32> = u_xlat11;
      let x_3000 : vec3<f32> = (vec3<f32>(x_2996.x, x_2996.y, x_2996.z) / vec3<f32>(x_2998.w, x_2998.w, x_2998.w));
      let x_3001 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3001.w);
      let x_3004 : i32 = u_xlati5;
      let x_3006 : f32 = x_957.x_AdditionalShadowParams[x_3004].y;
      u_xlatb85 = (0.0f < x_3006);
      let x_3008 : bool = u_xlatb85;
      if (x_3008) {
        let x_3011 : i32 = u_xlati5;
        let x_3013 : f32 = x_957.x_AdditionalShadowParams[x_3011].y;
        u_xlatb85 = (1.0f == x_3013);
        let x_3015 : bool = u_xlatb85;
        if (x_3015) {
          let x_3018 : vec4<f32> = u_xlat11;
          let x_3021 : vec4<f32> = x_957.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3018.x, x_3018.y, x_3018.x, x_3018.y) + x_3021);
          let x_3024 : vec4<f32> = u_xlat12;
          let x_3025 : vec2<f32> = vec2<f32>(x_3024.x, x_3024.y);
          let x_3027 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
          let x_3035 : vec3<f32> = txVec30;
          let x_3037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3035.xy, x_3035.z);
          u_xlat13.x = x_3037;
          let x_3040 : vec4<f32> = u_xlat12;
          let x_3041 : vec2<f32> = vec2<f32>(x_3040.z, x_3040.w);
          let x_3043 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
          let x_3050 : vec3<f32> = txVec31;
          let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
          u_xlat13.y = x_3052;
          let x_3054 : vec4<f32> = u_xlat11;
          let x_3057 : vec4<f32> = x_957.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y) + x_3057);
          let x_3060 : vec4<f32> = u_xlat12;
          let x_3061 : vec2<f32> = vec2<f32>(x_3060.x, x_3060.y);
          let x_3063 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
          let x_3070 : vec3<f32> = txVec32;
          let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
          u_xlat13.z = x_3072;
          let x_3075 : vec4<f32> = u_xlat12;
          let x_3076 : vec2<f32> = vec2<f32>(x_3075.z, x_3075.w);
          let x_3078 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3076.x, x_3076.y, x_3078);
          let x_3085 : vec3<f32> = txVec33;
          let x_3087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3085.xy, x_3085.z);
          u_xlat13.w = x_3087;
          let x_3089 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3089, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3092 : i32 = u_xlati5;
          let x_3094 : f32 = x_957.x_AdditionalShadowParams[x_3092].y;
          u_xlatb86 = (2.0f == x_3094);
          let x_3096 : bool = u_xlatb86;
          if (x_3096) {
            let x_3099 : vec4<f32> = u_xlat11;
            let x_3102 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3105 : vec2<f32> = ((vec2<f32>(x_3099.x, x_3099.y) * vec2<f32>(x_3102.z, x_3102.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3106 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3105.x, x_3105.y, x_3106.z, x_3106.w);
            let x_3108 : vec4<f32> = u_xlat12;
            let x_3110 : vec2<f32> = floor(vec2<f32>(x_3108.x, x_3108.y));
            let x_3111 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3110.x, x_3110.y, x_3111.z, x_3111.w);
            let x_3114 : vec4<f32> = u_xlat11;
            let x_3117 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3120 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3114.x, x_3114.y) * vec2<f32>(x_3117.z, x_3117.w)) + -(vec2<f32>(x_3120.x, x_3120.y)));
            let x_3124 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3124.x, x_3124.x, x_3124.y, x_3124.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3129 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3127.x, x_3127.x, x_3127.z, x_3127.z) * vec4<f32>(x_3129.x, x_3129.x, x_3129.z, x_3129.z));
            let x_3132 : vec4<f32> = u_xlat14;
            let x_3134 : vec2<f32> = (vec2<f32>(x_3132.y, x_3132.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3135 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3134.x, x_3135.y, x_3134.y, x_3135.w);
            let x_3137 : vec4<f32> = u_xlat14;
            let x_3140 : vec2<f32> = u_xlat64;
            let x_3142 : vec2<f32> = ((vec2<f32>(x_3137.x, x_3137.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3140));
            let x_3143 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3142.x, x_3142.y, x_3143.z, x_3143.w);
            let x_3146 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3146) + vec2<f32>(1.0f, 1.0f));
            let x_3149 : vec2<f32> = u_xlat64;
            let x_3150 : vec2<f32> = min(x_3149, vec2<f32>(0.0f, 0.0f));
            let x_3151 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3150.x, x_3150.y, x_3151.z, x_3151.w);
            let x_3153 : vec4<f32> = u_xlat15;
            let x_3156 : vec4<f32> = u_xlat15;
            let x_3159 : vec2<f32> = u_xlat66;
            let x_3160 : vec2<f32> = ((-(vec2<f32>(x_3153.x, x_3153.y)) * vec2<f32>(x_3156.x, x_3156.y)) + x_3159);
            let x_3161 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3160.x, x_3160.y, x_3161.z, x_3161.w);
            let x_3163 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3163, vec2<f32>(0.0f, 0.0f));
            let x_3165 : vec2<f32> = u_xlat64;
            let x_3167 : vec2<f32> = u_xlat64;
            let x_3169 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3165) * x_3167) + vec2<f32>(x_3169.y, x_3169.w));
            let x_3172 : vec4<f32> = u_xlat15;
            let x_3174 : vec2<f32> = (vec2<f32>(x_3172.x, x_3172.y) + vec2<f32>(1.0f, 1.0f));
            let x_3175 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3177 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3177 + vec2<f32>(1.0f, 1.0f));
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3181 : vec2<f32> = (vec2<f32>(x_3179.x, x_3179.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3182 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3181.x, x_3181.y, x_3182.z, x_3182.w);
            let x_3184 : vec2<f32> = u_xlat66;
            let x_3185 : vec2<f32> = (x_3184 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3186 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3185.x, x_3185.y, x_3186.z, x_3186.w);
            let x_3188 : vec4<f32> = u_xlat15;
            let x_3190 : vec2<f32> = (vec2<f32>(x_3188.x, x_3188.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3191 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3190.x, x_3190.y, x_3191.z, x_3191.w);
            let x_3193 : vec2<f32> = u_xlat64;
            let x_3194 : vec2<f32> = (x_3193 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3195 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3194.x, x_3194.y, x_3195.z, x_3195.w);
            let x_3197 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3197.y, x_3197.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3201 : f32 = u_xlat15.x;
            u_xlat16.z = x_3201;
            let x_3204 : f32 = u_xlat64.x;
            u_xlat16.w = x_3204;
            let x_3207 : f32 = u_xlat17.x;
            u_xlat14.z = x_3207;
            let x_3210 : f32 = u_xlat13.x;
            u_xlat14.w = x_3210;
            let x_3212 : vec4<f32> = u_xlat14;
            let x_3214 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3212.z, x_3212.w, x_3212.x, x_3212.z) + vec4<f32>(x_3214.z, x_3214.w, x_3214.x, x_3214.z));
            let x_3218 : f32 = u_xlat16.y;
            u_xlat15.z = x_3218;
            let x_3221 : f32 = u_xlat64.y;
            u_xlat15.w = x_3221;
            let x_3224 : f32 = u_xlat14.y;
            u_xlat17.z = x_3224;
            let x_3227 : f32 = u_xlat13.z;
            u_xlat17.w = x_3227;
            let x_3229 : vec4<f32> = u_xlat15;
            let x_3231 : vec4<f32> = u_xlat17;
            let x_3233 : vec3<f32> = (vec3<f32>(x_3229.z, x_3229.y, x_3229.w) + vec3<f32>(x_3231.z, x_3231.y, x_3231.w));
            let x_3234 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3234.w);
            let x_3236 : vec4<f32> = u_xlat14;
            let x_3238 : vec4<f32> = u_xlat18;
            let x_3240 : vec3<f32> = (vec3<f32>(x_3236.x, x_3236.z, x_3236.w) / vec3<f32>(x_3238.z, x_3238.w, x_3238.y));
            let x_3241 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
            let x_3243 : vec4<f32> = u_xlat14;
            let x_3245 : vec3<f32> = (vec3<f32>(x_3243.x, x_3243.y, x_3243.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3246 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
            let x_3248 : vec4<f32> = u_xlat17;
            let x_3250 : vec4<f32> = u_xlat13;
            let x_3252 : vec3<f32> = (vec3<f32>(x_3248.z, x_3248.y, x_3248.w) / vec3<f32>(x_3250.x, x_3250.y, x_3250.z));
            let x_3253 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3252.x, x_3252.y, x_3252.z, x_3253.w);
            let x_3255 : vec4<f32> = u_xlat15;
            let x_3257 : vec3<f32> = (vec3<f32>(x_3255.x, x_3255.y, x_3255.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3258 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3257.x, x_3257.y, x_3257.z, x_3258.w);
            let x_3260 : vec4<f32> = u_xlat14;
            let x_3263 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3265 : vec3<f32> = (vec3<f32>(x_3260.y, x_3260.x, x_3260.z) * vec3<f32>(x_3263.x, x_3263.x, x_3263.x));
            let x_3266 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
            let x_3268 : vec4<f32> = u_xlat15;
            let x_3271 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3273 : vec3<f32> = (vec3<f32>(x_3268.x, x_3268.y, x_3268.z) * vec3<f32>(x_3271.y, x_3271.y, x_3271.y));
            let x_3274 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3273.x, x_3273.y, x_3273.z, x_3274.w);
            let x_3277 : f32 = u_xlat15.x;
            u_xlat14.w = x_3277;
            let x_3279 : vec4<f32> = u_xlat12;
            let x_3282 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3285 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3279.x, x_3279.y, x_3279.x, x_3279.y) * vec4<f32>(x_3282.x, x_3282.y, x_3282.x, x_3282.y)) + vec4<f32>(x_3285.y, x_3285.w, x_3285.x, x_3285.w));
            let x_3288 : vec4<f32> = u_xlat12;
            let x_3291 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3294 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3288.x, x_3288.y) * vec2<f32>(x_3291.x, x_3291.y)) + vec2<f32>(x_3294.z, x_3294.w));
            let x_3298 : f32 = u_xlat14.y;
            u_xlat15.w = x_3298;
            let x_3300 : vec4<f32> = u_xlat15;
            let x_3301 : vec2<f32> = vec2<f32>(x_3300.y, x_3300.z);
            let x_3302 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3302.x, x_3301.x, x_3302.z, x_3301.y);
            let x_3304 : vec4<f32> = u_xlat12;
            let x_3307 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3310 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3304.x, x_3304.y, x_3304.x, x_3304.y) * vec4<f32>(x_3307.x, x_3307.y, x_3307.x, x_3307.y)) + vec4<f32>(x_3310.x, x_3310.y, x_3310.z, x_3310.y));
            let x_3313 : vec4<f32> = u_xlat12;
            let x_3316 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3319 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3313.x, x_3313.y, x_3313.x, x_3313.y) * vec4<f32>(x_3316.x, x_3316.y, x_3316.x, x_3316.y)) + vec4<f32>(x_3319.w, x_3319.y, x_3319.w, x_3319.z));
            let x_3322 : vec4<f32> = u_xlat12;
            let x_3325 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3328 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3322.x, x_3322.y, x_3322.x, x_3322.y) * vec4<f32>(x_3325.x, x_3325.y, x_3325.x, x_3325.y)) + vec4<f32>(x_3328.x, x_3328.w, x_3328.z, x_3328.w));
            let x_3332 : vec4<f32> = u_xlat13;
            let x_3334 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3332.x, x_3332.x, x_3332.x, x_3332.y) * vec4<f32>(x_3334.z, x_3334.w, x_3334.y, x_3334.z));
            let x_3338 : vec4<f32> = u_xlat13;
            let x_3340 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3338.y, x_3338.y, x_3338.z, x_3338.z) * x_3340);
            let x_3343 : f32 = u_xlat13.z;
            let x_3345 : f32 = u_xlat18.y;
            u_xlat86 = (x_3343 * x_3345);
            let x_3348 : vec4<f32> = u_xlat16;
            let x_3349 : vec2<f32> = vec2<f32>(x_3348.x, x_3348.y);
            let x_3351 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3349.x, x_3349.y, x_3351);
            let x_3358 : vec3<f32> = txVec34;
            let x_3360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3358.xy, x_3358.z);
            u_xlat87 = x_3360;
            let x_3362 : vec4<f32> = u_xlat16;
            let x_3363 : vec2<f32> = vec2<f32>(x_3362.z, x_3362.w);
            let x_3365 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3363.x, x_3363.y, x_3365);
            let x_3373 : vec3<f32> = txVec35;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat88 = x_3375;
            let x_3376 : f32 = u_xlat88;
            let x_3378 : f32 = u_xlat19.y;
            u_xlat88 = (x_3376 * x_3378);
            let x_3381 : f32 = u_xlat19.x;
            let x_3382 : f32 = u_xlat87;
            let x_3384 : f32 = u_xlat88;
            u_xlat87 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec2<f32> = u_xlat64;
            let x_3389 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec36;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat88 = x_3398;
            let x_3400 : f32 = u_xlat19.z;
            let x_3401 : f32 = u_xlat88;
            let x_3403 : f32 = u_xlat87;
            u_xlat87 = ((x_3400 * x_3401) + x_3403);
            let x_3406 : vec4<f32> = u_xlat15;
            let x_3407 : vec2<f32> = vec2<f32>(x_3406.x, x_3406.y);
            let x_3409 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec37;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat88 = x_3418;
            let x_3420 : f32 = u_xlat19.w;
            let x_3421 : f32 = u_xlat88;
            let x_3423 : f32 = u_xlat87;
            u_xlat87 = ((x_3420 * x_3421) + x_3423);
            let x_3426 : vec4<f32> = u_xlat17;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.x, x_3426.y);
            let x_3429 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec38;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat88 = x_3438;
            let x_3440 : f32 = u_xlat20.x;
            let x_3441 : f32 = u_xlat88;
            let x_3443 : f32 = u_xlat87;
            u_xlat87 = ((x_3440 * x_3441) + x_3443);
            let x_3446 : vec4<f32> = u_xlat17;
            let x_3447 : vec2<f32> = vec2<f32>(x_3446.z, x_3446.w);
            let x_3449 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3447.x, x_3447.y, x_3449);
            let x_3456 : vec3<f32> = txVec39;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat88 = x_3458;
            let x_3460 : f32 = u_xlat20.y;
            let x_3461 : f32 = u_xlat88;
            let x_3463 : f32 = u_xlat87;
            u_xlat87 = ((x_3460 * x_3461) + x_3463);
            let x_3466 : vec4<f32> = u_xlat15;
            let x_3467 : vec2<f32> = vec2<f32>(x_3466.z, x_3466.w);
            let x_3469 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
            let x_3476 : vec3<f32> = txVec40;
            let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
            u_xlat88 = x_3478;
            let x_3480 : f32 = u_xlat20.z;
            let x_3481 : f32 = u_xlat88;
            let x_3483 : f32 = u_xlat87;
            u_xlat87 = ((x_3480 * x_3481) + x_3483);
            let x_3486 : vec4<f32> = u_xlat14;
            let x_3487 : vec2<f32> = vec2<f32>(x_3486.x, x_3486.y);
            let x_3489 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3487.x, x_3487.y, x_3489);
            let x_3496 : vec3<f32> = txVec41;
            let x_3498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3496.xy, x_3496.z);
            u_xlat88 = x_3498;
            let x_3500 : f32 = u_xlat20.w;
            let x_3501 : f32 = u_xlat88;
            let x_3503 : f32 = u_xlat87;
            u_xlat87 = ((x_3500 * x_3501) + x_3503);
            let x_3506 : vec4<f32> = u_xlat14;
            let x_3507 : vec2<f32> = vec2<f32>(x_3506.z, x_3506.w);
            let x_3509 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
            let x_3516 : vec3<f32> = txVec42;
            let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
            u_xlat88 = x_3518;
            let x_3519 : f32 = u_xlat86;
            let x_3520 : f32 = u_xlat88;
            let x_3522 : f32 = u_xlat87;
            u_xlat85 = ((x_3519 * x_3520) + x_3522);
          } else {
            let x_3525 : vec4<f32> = u_xlat11;
            let x_3528 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3531 : vec2<f32> = ((vec2<f32>(x_3525.x, x_3525.y) * vec2<f32>(x_3528.z, x_3528.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3532 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
            let x_3534 : vec4<f32> = u_xlat12;
            let x_3536 : vec2<f32> = floor(vec2<f32>(x_3534.x, x_3534.y));
            let x_3537 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3536.x, x_3536.y, x_3537.z, x_3537.w);
            let x_3539 : vec4<f32> = u_xlat11;
            let x_3542 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3545 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3539.x, x_3539.y) * vec2<f32>(x_3542.z, x_3542.w)) + -(vec2<f32>(x_3545.x, x_3545.y)));
            let x_3549 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3549.x, x_3549.x, x_3549.y, x_3549.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3552 : vec4<f32> = u_xlat13;
            let x_3554 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3552.x, x_3552.x, x_3552.z, x_3552.z) * vec4<f32>(x_3554.x, x_3554.x, x_3554.z, x_3554.z));
            let x_3557 : vec4<f32> = u_xlat14;
            let x_3559 : vec2<f32> = (vec2<f32>(x_3557.y, x_3557.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3560 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3560.x, x_3559.x, x_3560.z, x_3559.y);
            let x_3562 : vec4<f32> = u_xlat14;
            let x_3565 : vec2<f32> = u_xlat64;
            let x_3567 : vec2<f32> = ((vec2<f32>(x_3562.x, x_3562.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3565));
            let x_3568 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3567.x, x_3568.y, x_3567.y, x_3568.w);
            let x_3570 : vec2<f32> = u_xlat64;
            let x_3572 : vec2<f32> = (-(x_3570) + vec2<f32>(1.0f, 1.0f));
            let x_3573 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3572.x, x_3572.y, x_3573.z, x_3573.w);
            let x_3575 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3575, vec2<f32>(0.0f, 0.0f));
            let x_3577 : vec2<f32> = u_xlat66;
            let x_3579 : vec2<f32> = u_xlat66;
            let x_3581 : vec4<f32> = u_xlat14;
            let x_3583 : vec2<f32> = ((-(x_3577) * x_3579) + vec2<f32>(x_3581.x, x_3581.y));
            let x_3584 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3583.x, x_3583.y, x_3584.z, x_3584.w);
            let x_3586 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3586, vec2<f32>(0.0f, 0.0f));
            let x_3589 : vec2<f32> = u_xlat66;
            let x_3591 : vec2<f32> = u_xlat66;
            let x_3593 : vec4<f32> = u_xlat13;
            let x_3595 : vec2<f32> = ((-(x_3589) * x_3591) + vec2<f32>(x_3593.y, x_3593.w));
            let x_3596 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3595.x, x_3596.y, x_3595.y);
            let x_3598 : vec4<f32> = u_xlat14;
            let x_3600 : vec2<f32> = (vec2<f32>(x_3598.x, x_3598.y) + vec2<f32>(2.0f, 2.0f));
            let x_3601 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3600.x, x_3600.y, x_3601.z, x_3601.w);
            let x_3603 : vec3<f32> = u_xlat39;
            let x_3605 : vec2<f32> = (vec2<f32>(x_3603.x, x_3603.z) + vec2<f32>(2.0f, 2.0f));
            let x_3606 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3606.x, x_3605.x, x_3606.z, x_3605.y);
            let x_3609 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3609 * 0.08163200318813323975f);
            let x_3612 : vec4<f32> = u_xlat13;
            let x_3614 : vec3<f32> = (vec3<f32>(x_3612.z, x_3612.x, x_3612.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3615 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3614.x, x_3614.y, x_3614.z, x_3615.w);
            let x_3617 : vec4<f32> = u_xlat14;
            let x_3619 : vec2<f32> = (vec2<f32>(x_3617.x, x_3617.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3620 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3619.x, x_3619.y, x_3620.z, x_3620.w);
            let x_3623 : f32 = u_xlat17.y;
            u_xlat16.x = x_3623;
            let x_3625 : vec2<f32> = u_xlat64;
            let x_3628 : vec2<f32> = ((vec2<f32>(x_3625.x, x_3625.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3629 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3629.x, x_3628.x, x_3629.z, x_3628.y);
            let x_3631 : vec2<f32> = u_xlat64;
            let x_3634 : vec2<f32> = ((vec2<f32>(x_3631.x, x_3631.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3635 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3634.x, x_3635.y, x_3634.y, x_3635.w);
            let x_3638 : f32 = u_xlat13.x;
            u_xlat14.y = x_3638;
            let x_3641 : f32 = u_xlat15.y;
            u_xlat14.w = x_3641;
            let x_3643 : vec4<f32> = u_xlat14;
            let x_3644 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3643 + x_3644);
            let x_3646 : vec2<f32> = u_xlat64;
            let x_3649 : vec2<f32> = ((vec2<f32>(x_3646.y, x_3646.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3650 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3650.x, x_3649.x, x_3650.z, x_3649.y);
            let x_3652 : vec2<f32> = u_xlat64;
            let x_3655 : vec2<f32> = ((vec2<f32>(x_3652.y, x_3652.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3656 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3655.x, x_3656.y, x_3655.y, x_3656.w);
            let x_3659 : f32 = u_xlat13.y;
            u_xlat15.y = x_3659;
            let x_3661 : vec4<f32> = u_xlat15;
            let x_3662 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3661 + x_3662);
            let x_3664 : vec4<f32> = u_xlat14;
            let x_3665 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3664 / x_3665);
            let x_3667 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3667 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3669 : vec4<f32> = u_xlat15;
            let x_3670 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3669 / x_3670);
            let x_3672 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3672 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3674 : vec4<f32> = u_xlat14;
            let x_3677 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3674.w, x_3674.x, x_3674.y, x_3674.z) * vec4<f32>(x_3677.x, x_3677.x, x_3677.x, x_3677.x));
            let x_3680 : vec4<f32> = u_xlat15;
            let x_3683 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3680.x, x_3680.w, x_3680.y, x_3680.z) * vec4<f32>(x_3683.y, x_3683.y, x_3683.y, x_3683.y));
            let x_3686 : vec4<f32> = u_xlat14;
            let x_3687 : vec3<f32> = vec3<f32>(x_3686.y, x_3686.z, x_3686.w);
            let x_3688 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3687.x, x_3688.y, x_3687.y, x_3687.z);
            let x_3691 : f32 = u_xlat15.x;
            u_xlat17.y = x_3691;
            let x_3693 : vec4<f32> = u_xlat12;
            let x_3696 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3699 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3693.x, x_3693.y, x_3693.x, x_3693.y) * vec4<f32>(x_3696.x, x_3696.y, x_3696.x, x_3696.y)) + vec4<f32>(x_3699.x, x_3699.y, x_3699.z, x_3699.y));
            let x_3702 : vec4<f32> = u_xlat12;
            let x_3705 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3708 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3702.x, x_3702.y) * vec2<f32>(x_3705.x, x_3705.y)) + vec2<f32>(x_3708.w, x_3708.y));
            let x_3712 : f32 = u_xlat17.y;
            u_xlat14.y = x_3712;
            let x_3715 : f32 = u_xlat15.z;
            u_xlat17.y = x_3715;
            let x_3717 : vec4<f32> = u_xlat12;
            let x_3720 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3723 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3717.x, x_3717.y, x_3717.x, x_3717.y) * vec4<f32>(x_3720.x, x_3720.y, x_3720.x, x_3720.y)) + vec4<f32>(x_3723.x, x_3723.y, x_3723.z, x_3723.y));
            let x_3726 : vec4<f32> = u_xlat12;
            let x_3729 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3732 : vec4<f32> = u_xlat17;
            let x_3734 : vec2<f32> = ((vec2<f32>(x_3726.x, x_3726.y) * vec2<f32>(x_3729.x, x_3729.y)) + vec2<f32>(x_3732.w, x_3732.y));
            let x_3735 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3734.x, x_3734.y, x_3735.z, x_3735.w);
            let x_3738 : f32 = u_xlat17.y;
            u_xlat14.z = x_3738;
            let x_3741 : vec4<f32> = u_xlat12;
            let x_3744 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3747 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3741.x, x_3741.y, x_3741.x, x_3741.y) * vec4<f32>(x_3744.x, x_3744.y, x_3744.x, x_3744.y)) + vec4<f32>(x_3747.x, x_3747.y, x_3747.x, x_3747.z));
            let x_3751 : f32 = u_xlat15.w;
            u_xlat17.y = x_3751;
            let x_3754 : vec4<f32> = u_xlat12;
            let x_3757 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3760 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3754.x, x_3754.y, x_3754.x, x_3754.y) * vec4<f32>(x_3757.x, x_3757.y, x_3757.x, x_3757.y)) + vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3760.y));
            let x_3764 : vec4<f32> = u_xlat12;
            let x_3767 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3770 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3764.x, x_3764.y) * vec2<f32>(x_3767.x, x_3767.y)) + vec2<f32>(x_3770.w, x_3770.y));
            let x_3774 : f32 = u_xlat17.y;
            u_xlat14.w = x_3774;
            let x_3777 : vec4<f32> = u_xlat12;
            let x_3780 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3783 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3777.x, x_3777.y) * vec2<f32>(x_3780.x, x_3780.y)) + vec2<f32>(x_3783.x, x_3783.w));
            let x_3786 : vec4<f32> = u_xlat17;
            let x_3787 : vec3<f32> = vec3<f32>(x_3786.x, x_3786.z, x_3786.w);
            let x_3788 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3787.x, x_3788.y, x_3787.y, x_3787.z);
            let x_3790 : vec4<f32> = u_xlat12;
            let x_3793 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3796 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3790.x, x_3790.y, x_3790.x, x_3790.y) * vec4<f32>(x_3793.x, x_3793.y, x_3793.x, x_3793.y)) + vec4<f32>(x_3796.x, x_3796.y, x_3796.z, x_3796.y));
            let x_3800 : vec4<f32> = u_xlat12;
            let x_3803 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3806 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3800.x, x_3800.y) * vec2<f32>(x_3803.x, x_3803.y)) + vec2<f32>(x_3806.w, x_3806.y));
            let x_3810 : f32 = u_xlat14.x;
            u_xlat15.x = x_3810;
            let x_3812 : vec4<f32> = u_xlat12;
            let x_3815 : vec4<f32> = x_957.x_AdditionalShadowmapSize;
            let x_3818 : vec4<f32> = u_xlat15;
            let x_3820 : vec2<f32> = ((vec2<f32>(x_3812.x, x_3812.y) * vec2<f32>(x_3815.x, x_3815.y)) + vec2<f32>(x_3818.x, x_3818.y));
            let x_3821 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3820.x, x_3820.y, x_3821.z, x_3821.w);
            let x_3824 : vec4<f32> = u_xlat13;
            let x_3826 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3824.x, x_3824.x, x_3824.x, x_3824.x) * x_3826);
            let x_3829 : vec4<f32> = u_xlat13;
            let x_3831 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3829.y, x_3829.y, x_3829.y, x_3829.y) * x_3831);
            let x_3834 : vec4<f32> = u_xlat13;
            let x_3836 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3834.z, x_3834.z, x_3834.z, x_3834.z) * x_3836);
            let x_3838 : vec4<f32> = u_xlat13;
            let x_3840 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3838.w, x_3838.w, x_3838.w, x_3838.w) * x_3840);
            let x_3843 : vec4<f32> = u_xlat18;
            let x_3844 : vec2<f32> = vec2<f32>(x_3843.x, x_3843.y);
            let x_3846 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3844.x, x_3844.y, x_3846);
            let x_3853 : vec3<f32> = txVec43;
            let x_3855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3853.xy, x_3853.z);
            u_xlat86 = x_3855;
            let x_3857 : vec4<f32> = u_xlat18;
            let x_3858 : vec2<f32> = vec2<f32>(x_3857.z, x_3857.w);
            let x_3860 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3858.x, x_3858.y, x_3860);
            let x_3867 : vec3<f32> = txVec44;
            let x_3869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3867.xy, x_3867.z);
            u_xlat87 = x_3869;
            let x_3870 : f32 = u_xlat87;
            let x_3872 : f32 = u_xlat23.y;
            u_xlat87 = (x_3870 * x_3872);
            let x_3875 : f32 = u_xlat23.x;
            let x_3876 : f32 = u_xlat86;
            let x_3878 : f32 = u_xlat87;
            u_xlat86 = ((x_3875 * x_3876) + x_3878);
            let x_3881 : vec2<f32> = u_xlat64;
            let x_3883 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3881.x, x_3881.y, x_3883);
            let x_3890 : vec3<f32> = txVec45;
            let x_3892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3890.xy, x_3890.z);
            u_xlat87 = x_3892;
            let x_3894 : f32 = u_xlat23.z;
            let x_3895 : f32 = u_xlat87;
            let x_3897 : f32 = u_xlat86;
            u_xlat86 = ((x_3894 * x_3895) + x_3897);
            let x_3900 : vec4<f32> = u_xlat21;
            let x_3901 : vec2<f32> = vec2<f32>(x_3900.x, x_3900.y);
            let x_3903 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3901.x, x_3901.y, x_3903);
            let x_3910 : vec3<f32> = txVec46;
            let x_3912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3910.xy, x_3910.z);
            u_xlat87 = x_3912;
            let x_3914 : f32 = u_xlat23.w;
            let x_3915 : f32 = u_xlat87;
            let x_3917 : f32 = u_xlat86;
            u_xlat86 = ((x_3914 * x_3915) + x_3917);
            let x_3920 : vec4<f32> = u_xlat19;
            let x_3921 : vec2<f32> = vec2<f32>(x_3920.x, x_3920.y);
            let x_3923 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3921.x, x_3921.y, x_3923);
            let x_3930 : vec3<f32> = txVec47;
            let x_3932 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3930.xy, x_3930.z);
            u_xlat87 = x_3932;
            let x_3934 : f32 = u_xlat24.x;
            let x_3935 : f32 = u_xlat87;
            let x_3937 : f32 = u_xlat86;
            u_xlat86 = ((x_3934 * x_3935) + x_3937);
            let x_3940 : vec4<f32> = u_xlat19;
            let x_3941 : vec2<f32> = vec2<f32>(x_3940.z, x_3940.w);
            let x_3943 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3941.x, x_3941.y, x_3943);
            let x_3950 : vec3<f32> = txVec48;
            let x_3952 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3950.xy, x_3950.z);
            u_xlat87 = x_3952;
            let x_3954 : f32 = u_xlat24.y;
            let x_3955 : f32 = u_xlat87;
            let x_3957 : f32 = u_xlat86;
            u_xlat86 = ((x_3954 * x_3955) + x_3957);
            let x_3960 : vec4<f32> = u_xlat20;
            let x_3961 : vec2<f32> = vec2<f32>(x_3960.x, x_3960.y);
            let x_3963 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3961.x, x_3961.y, x_3963);
            let x_3970 : vec3<f32> = txVec49;
            let x_3972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3970.xy, x_3970.z);
            u_xlat87 = x_3972;
            let x_3974 : f32 = u_xlat24.z;
            let x_3975 : f32 = u_xlat87;
            let x_3977 : f32 = u_xlat86;
            u_xlat86 = ((x_3974 * x_3975) + x_3977);
            let x_3980 : vec4<f32> = u_xlat21;
            let x_3981 : vec2<f32> = vec2<f32>(x_3980.z, x_3980.w);
            let x_3983 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3981.x, x_3981.y, x_3983);
            let x_3990 : vec3<f32> = txVec50;
            let x_3992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3990.xy, x_3990.z);
            u_xlat87 = x_3992;
            let x_3994 : f32 = u_xlat24.w;
            let x_3995 : f32 = u_xlat87;
            let x_3997 : f32 = u_xlat86;
            u_xlat86 = ((x_3994 * x_3995) + x_3997);
            let x_4000 : vec4<f32> = u_xlat22;
            let x_4001 : vec2<f32> = vec2<f32>(x_4000.x, x_4000.y);
            let x_4003 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4001.x, x_4001.y, x_4003);
            let x_4010 : vec3<f32> = txVec51;
            let x_4012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4010.xy, x_4010.z);
            u_xlat87 = x_4012;
            let x_4014 : f32 = u_xlat25.x;
            let x_4015 : f32 = u_xlat87;
            let x_4017 : f32 = u_xlat86;
            u_xlat86 = ((x_4014 * x_4015) + x_4017);
            let x_4020 : vec4<f32> = u_xlat22;
            let x_4021 : vec2<f32> = vec2<f32>(x_4020.z, x_4020.w);
            let x_4023 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4021.x, x_4021.y, x_4023);
            let x_4030 : vec3<f32> = txVec52;
            let x_4032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4030.xy, x_4030.z);
            u_xlat87 = x_4032;
            let x_4034 : f32 = u_xlat25.y;
            let x_4035 : f32 = u_xlat87;
            let x_4037 : f32 = u_xlat86;
            u_xlat86 = ((x_4034 * x_4035) + x_4037);
            let x_4040 : vec2<f32> = u_xlat40;
            let x_4042 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec53;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat87 = x_4051;
            let x_4053 : f32 = u_xlat25.z;
            let x_4054 : f32 = u_xlat87;
            let x_4056 : f32 = u_xlat86;
            u_xlat86 = ((x_4053 * x_4054) + x_4056);
            let x_4059 : vec2<f32> = u_xlat72;
            let x_4061 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4059.x, x_4059.y, x_4061);
            let x_4068 : vec3<f32> = txVec54;
            let x_4070 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4068.xy, x_4068.z);
            u_xlat87 = x_4070;
            let x_4072 : f32 = u_xlat25.w;
            let x_4073 : f32 = u_xlat87;
            let x_4075 : f32 = u_xlat86;
            u_xlat86 = ((x_4072 * x_4073) + x_4075);
            let x_4078 : vec4<f32> = u_xlat17;
            let x_4079 : vec2<f32> = vec2<f32>(x_4078.x, x_4078.y);
            let x_4081 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4079.x, x_4079.y, x_4081);
            let x_4088 : vec3<f32> = txVec55;
            let x_4090 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4088.xy, x_4088.z);
            u_xlat87 = x_4090;
            let x_4092 : f32 = u_xlat13.x;
            let x_4093 : f32 = u_xlat87;
            let x_4095 : f32 = u_xlat86;
            u_xlat86 = ((x_4092 * x_4093) + x_4095);
            let x_4098 : vec4<f32> = u_xlat17;
            let x_4099 : vec2<f32> = vec2<f32>(x_4098.z, x_4098.w);
            let x_4101 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4099.x, x_4099.y, x_4101);
            let x_4108 : vec3<f32> = txVec56;
            let x_4110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4108.xy, x_4108.z);
            u_xlat87 = x_4110;
            let x_4112 : f32 = u_xlat13.y;
            let x_4113 : f32 = u_xlat87;
            let x_4115 : f32 = u_xlat86;
            u_xlat86 = ((x_4112 * x_4113) + x_4115);
            let x_4118 : vec2<f32> = u_xlat67;
            let x_4120 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4118.x, x_4118.y, x_4120);
            let x_4127 : vec3<f32> = txVec57;
            let x_4129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4127.xy, x_4127.z);
            u_xlat87 = x_4129;
            let x_4131 : f32 = u_xlat13.z;
            let x_4132 : f32 = u_xlat87;
            let x_4134 : f32 = u_xlat86;
            u_xlat86 = ((x_4131 * x_4132) + x_4134);
            let x_4137 : vec4<f32> = u_xlat12;
            let x_4138 : vec2<f32> = vec2<f32>(x_4137.x, x_4137.y);
            let x_4140 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4138.x, x_4138.y, x_4140);
            let x_4147 : vec3<f32> = txVec58;
            let x_4149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4147.xy, x_4147.z);
            u_xlat87 = x_4149;
            let x_4151 : f32 = u_xlat13.w;
            let x_4152 : f32 = u_xlat87;
            let x_4154 : f32 = u_xlat86;
            u_xlat85 = ((x_4151 * x_4152) + x_4154);
          }
        }
      } else {
        let x_4158 : vec4<f32> = u_xlat11;
        let x_4159 : vec2<f32> = vec2<f32>(x_4158.x, x_4158.y);
        let x_4161 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4159.x, x_4159.y, x_4161);
        let x_4168 : vec3<f32> = txVec59;
        let x_4170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4168.xy, x_4168.z);
        u_xlat85 = x_4170;
      }
      let x_4171 : i32 = u_xlati5;
      let x_4173 : f32 = x_957.x_AdditionalShadowParams[x_4171].x;
      u_xlat86 = (1.0f + -(x_4173));
      let x_4176 : f32 = u_xlat85;
      let x_4177 : i32 = u_xlati5;
      let x_4179 : f32 = x_957.x_AdditionalShadowParams[x_4177].x;
      let x_4181 : f32 = u_xlat86;
      u_xlat85 = ((x_4176 * x_4179) + x_4181);
      let x_4184 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4184);
      let x_4188 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4188 >= 1.0f);
      let x_4190 : bool = u_xlatb86;
      let x_4191 : bool = u_xlatb87;
      u_xlatb86 = (x_4190 | x_4191);
      let x_4193 : bool = u_xlatb86;
      let x_4194 : f32 = u_xlat85;
      u_xlat85 = select(x_4194, 1.0f, x_4193);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4197 : f32 = u_xlat85;
    u_xlat86 = (-(x_4197) + 1.0f);
    let x_4200 : f32 = u_xlat80;
    let x_4201 : f32 = u_xlat86;
    let x_4203 : f32 = u_xlat85;
    u_xlat85 = ((x_4200 * x_4201) + x_4203);
    let x_4206 : i32 = u_xlati5;
    u_xlati86 = (1i << bitcast<u32>((x_4206 & 31i)));
    let x_4209 : i32 = u_xlati86;
    let x_4212 : f32 = x_2302.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4209) & bitcast<u32>(x_4212)));
    let x_4216 : i32 = u_xlati86;
    if ((x_4216 != 0i)) {
      let x_4220 : i32 = u_xlati5;
      let x_4222 : f32 = x_2302.x_AdditionalLightsLightTypes[x_4220].el;
      u_xlati86 = i32(x_4222);
      let x_4225 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4225 != 0i));
      let x_4229 : i32 = u_xlati5;
      u_xlati88 = (x_4229 << bitcast<u32>(2i));
      let x_4231 : i32 = u_xlati87;
      if ((x_4231 != 0i)) {
        let x_4235 : vec3<f32> = vs_TEXCOORD7;
        let x_4237 : i32 = u_xlati88;
        let x_4240 : i32 = u_xlati88;
        let x_4244 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4237 + 1i) / 4i)][((x_4240 + 1i) % 4i)];
        let x_4246 : vec3<f32> = (vec3<f32>(x_4235.y, x_4235.y, x_4235.y) * vec3<f32>(x_4244.x, x_4244.y, x_4244.w));
        let x_4247 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4246.x, x_4246.y, x_4246.z, x_4247.w);
        let x_4249 : i32 = u_xlati88;
        let x_4251 : i32 = u_xlati88;
        let x_4254 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[(x_4249 / 4i)][(x_4251 % 4i)];
        let x_4256 : vec3<f32> = vs_TEXCOORD7;
        let x_4259 : vec4<f32> = u_xlat11;
        let x_4261 : vec3<f32> = ((vec3<f32>(x_4254.x, x_4254.y, x_4254.w) * vec3<f32>(x_4256.x, x_4256.x, x_4256.x)) + vec3<f32>(x_4259.x, x_4259.y, x_4259.z));
        let x_4262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4261.x, x_4261.y, x_4261.z, x_4262.w);
        let x_4264 : i32 = u_xlati88;
        let x_4267 : i32 = u_xlati88;
        let x_4271 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4264 + 2i) / 4i)][((x_4267 + 2i) % 4i)];
        let x_4273 : vec3<f32> = vs_TEXCOORD7;
        let x_4276 : vec4<f32> = u_xlat11;
        let x_4278 : vec3<f32> = ((vec3<f32>(x_4271.x, x_4271.y, x_4271.w) * vec3<f32>(x_4273.z, x_4273.z, x_4273.z)) + vec3<f32>(x_4276.x, x_4276.y, x_4276.z));
        let x_4279 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4278.x, x_4278.y, x_4278.z, x_4279.w);
        let x_4281 : vec4<f32> = u_xlat11;
        let x_4283 : i32 = u_xlati88;
        let x_4286 : i32 = u_xlati88;
        let x_4290 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4283 + 3i) / 4i)][((x_4286 + 3i) % 4i)];
        let x_4292 : vec3<f32> = (vec3<f32>(x_4281.x, x_4281.y, x_4281.z) + vec3<f32>(x_4290.x, x_4290.y, x_4290.w));
        let x_4293 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4292.x, x_4292.y, x_4292.z, x_4293.w);
        let x_4295 : vec4<f32> = u_xlat11;
        let x_4297 : vec4<f32> = u_xlat11;
        let x_4299 : vec2<f32> = (vec2<f32>(x_4295.x, x_4295.y) / vec2<f32>(x_4297.z, x_4297.z));
        let x_4300 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4299.x, x_4299.y, x_4300.z, x_4300.w);
        let x_4302 : vec4<f32> = u_xlat11;
        let x_4305 : vec2<f32> = ((vec2<f32>(x_4302.x, x_4302.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4306 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4305.x, x_4305.y, x_4306.z, x_4306.w);
        let x_4308 : vec4<f32> = u_xlat11;
        let x_4312 : vec2<f32> = clamp(vec2<f32>(x_4308.x, x_4308.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4313 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4312.x, x_4312.y, x_4313.z, x_4313.w);
        let x_4315 : i32 = u_xlati5;
        let x_4317 : vec4<f32> = x_2302.x_AdditionalLightsCookieAtlasUVRects[x_4315];
        let x_4319 : vec4<f32> = u_xlat11;
        let x_4322 : i32 = u_xlati5;
        let x_4324 : vec4<f32> = x_2302.x_AdditionalLightsCookieAtlasUVRects[x_4322];
        let x_4326 : vec2<f32> = ((vec2<f32>(x_4317.x, x_4317.y) * vec2<f32>(x_4319.x, x_4319.y)) + vec2<f32>(x_4324.z, x_4324.w));
        let x_4327 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4326.x, x_4326.y, x_4327.z, x_4327.w);
      } else {
        let x_4330 : i32 = u_xlati86;
        u_xlatb86 = (x_4330 == 1i);
        let x_4332 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4332);
        let x_4334 : i32 = u_xlati86;
        if ((x_4334 != 0i)) {
          let x_4339 : vec3<f32> = vs_TEXCOORD7;
          let x_4341 : i32 = u_xlati88;
          let x_4344 : i32 = u_xlati88;
          let x_4348 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4341 + 1i) / 4i)][((x_4344 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4339.y, x_4339.y) * vec2<f32>(x_4348.x, x_4348.y));
          let x_4351 : i32 = u_xlati88;
          let x_4353 : i32 = u_xlati88;
          let x_4356 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[(x_4351 / 4i)][(x_4353 % 4i)];
          let x_4358 : vec3<f32> = vs_TEXCOORD7;
          let x_4361 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4356.x, x_4356.y) * vec2<f32>(x_4358.x, x_4358.x)) + x_4361);
          let x_4363 : i32 = u_xlati88;
          let x_4366 : i32 = u_xlati88;
          let x_4370 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4363 + 2i) / 4i)][((x_4366 + 2i) % 4i)];
          let x_4372 : vec3<f32> = vs_TEXCOORD7;
          let x_4375 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4370.x, x_4370.y) * vec2<f32>(x_4372.z, x_4372.z)) + x_4375);
          let x_4377 : vec2<f32> = u_xlat63;
          let x_4378 : i32 = u_xlati88;
          let x_4381 : i32 = u_xlati88;
          let x_4385 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4378 + 3i) / 4i)][((x_4381 + 3i) % 4i)];
          u_xlat63 = (x_4377 + vec2<f32>(x_4385.x, x_4385.y));
          let x_4388 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4388 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4391 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4391);
          let x_4393 : i32 = u_xlati5;
          let x_4395 : vec4<f32> = x_2302.x_AdditionalLightsCookieAtlasUVRects[x_4393];
          let x_4397 : vec2<f32> = u_xlat63;
          let x_4399 : i32 = u_xlati5;
          let x_4401 : vec4<f32> = x_2302.x_AdditionalLightsCookieAtlasUVRects[x_4399];
          let x_4403 : vec2<f32> = ((vec2<f32>(x_4395.x, x_4395.y) * x_4397) + vec2<f32>(x_4401.z, x_4401.w));
          let x_4404 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4403.x, x_4403.y, x_4404.z, x_4404.w);
        } else {
          let x_4407 : vec3<f32> = vs_TEXCOORD7;
          let x_4409 : i32 = u_xlati88;
          let x_4412 : i32 = u_xlati88;
          let x_4416 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4409 + 1i) / 4i)][((x_4412 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4407.y, x_4407.y, x_4407.y, x_4407.y) * x_4416);
          let x_4418 : i32 = u_xlati88;
          let x_4420 : i32 = u_xlati88;
          let x_4423 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[(x_4418 / 4i)][(x_4420 % 4i)];
          let x_4424 : vec3<f32> = vs_TEXCOORD7;
          let x_4427 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4423 * vec4<f32>(x_4424.x, x_4424.x, x_4424.x, x_4424.x)) + x_4427);
          let x_4429 : i32 = u_xlati88;
          let x_4432 : i32 = u_xlati88;
          let x_4436 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4429 + 2i) / 4i)][((x_4432 + 2i) % 4i)];
          let x_4437 : vec3<f32> = vs_TEXCOORD7;
          let x_4440 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4436 * vec4<f32>(x_4437.z, x_4437.z, x_4437.z, x_4437.z)) + x_4440);
          let x_4442 : vec4<f32> = u_xlat12;
          let x_4443 : i32 = u_xlati88;
          let x_4446 : i32 = u_xlati88;
          let x_4450 : vec4<f32> = x_2302.x_AdditionalLightsWorldToLights[((x_4443 + 3i) / 4i)][((x_4446 + 3i) % 4i)];
          u_xlat12 = (x_4442 + x_4450);
          let x_4452 : vec4<f32> = u_xlat12;
          let x_4454 : vec4<f32> = u_xlat12;
          let x_4456 : vec3<f32> = (vec3<f32>(x_4452.x, x_4452.y, x_4452.z) / vec3<f32>(x_4454.w, x_4454.w, x_4454.w));
          let x_4457 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4456.x, x_4456.y, x_4456.z, x_4457.w);
          let x_4459 : vec4<f32> = u_xlat12;
          let x_4461 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4459.x, x_4459.y, x_4459.z), vec3<f32>(x_4461.x, x_4461.y, x_4461.z));
          let x_4464 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4464);
          let x_4466 : f32 = u_xlat86;
          let x_4468 : vec4<f32> = u_xlat12;
          let x_4470 : vec3<f32> = (vec3<f32>(x_4466, x_4466, x_4466) * vec3<f32>(x_4468.x, x_4468.y, x_4468.z));
          let x_4471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4470.x, x_4470.y, x_4470.z, x_4471.w);
          let x_4473 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4473.x, x_4473.y, x_4473.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4478 : f32 = u_xlat86;
          u_xlat86 = max(x_4478, 0.00000099999999747524f);
          let x_4481 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4481);
          let x_4483 : f32 = u_xlat86;
          let x_4485 : vec4<f32> = u_xlat12;
          let x_4487 : vec3<f32> = (vec3<f32>(x_4483, x_4483, x_4483) * vec3<f32>(x_4485.z, x_4485.x, x_4485.y));
          let x_4488 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4487.x, x_4487.y, x_4487.z, x_4488.w);
          let x_4491 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4491);
          let x_4495 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4495, 0.0f, 1.0f);
          let x_4499 : vec4<f32> = u_xlat13;
          let x_4501 : vec4<bool> = (vec4<f32>(x_4499.y, x_4499.z, x_4499.y, x_4499.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4501.x, x_4501.y);
          let x_4504 : bool = u_xlatb63.x;
          if (x_4504) {
            let x_4509 : f32 = u_xlat13.x;
            x_4505 = x_4509;
          } else {
            let x_4512 : f32 = u_xlat13.x;
            x_4505 = -(x_4512);
          }
          let x_4514 : f32 = x_4505;
          u_xlat63.x = x_4514;
          let x_4517 : bool = u_xlatb63.y;
          if (x_4517) {
            let x_4522 : f32 = u_xlat13.x;
            x_4518 = x_4522;
          } else {
            let x_4525 : f32 = u_xlat13.x;
            x_4518 = -(x_4525);
          }
          let x_4527 : f32 = x_4518;
          u_xlat63.y = x_4527;
          let x_4529 : vec4<f32> = u_xlat12;
          let x_4531 : f32 = u_xlat86;
          let x_4534 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4529.x, x_4529.y) * vec2<f32>(x_4531, x_4531)) + x_4534);
          let x_4536 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4536 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4539 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4539, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4543 : i32 = u_xlati5;
          let x_4545 : vec4<f32> = x_2302.x_AdditionalLightsCookieAtlasUVRects[x_4543];
          let x_4547 : vec2<f32> = u_xlat63;
          let x_4549 : i32 = u_xlati5;
          let x_4551 : vec4<f32> = x_2302.x_AdditionalLightsCookieAtlasUVRects[x_4549];
          let x_4553 : vec2<f32> = ((vec2<f32>(x_4545.x, x_4545.y) * x_4547) + vec2<f32>(x_4551.z, x_4551.w));
          let x_4554 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4553.x, x_4553.y, x_4554.z, x_4554.w);
        }
      }
      let x_4561 : vec4<f32> = u_xlat11;
      let x_4563 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4561.x, x_4561.y), 0.0f);
      u_xlat11 = x_4563;
      let x_4565 : bool = u_xlatb7.y;
      if (x_4565) {
        let x_4570 : f32 = u_xlat11.w;
        x_4566 = x_4570;
      } else {
        let x_4573 : f32 = u_xlat11.x;
        x_4566 = x_4573;
      }
      let x_4574 : f32 = x_4566;
      u_xlat86 = x_4574;
      let x_4576 : bool = u_xlatb7.x;
      if (x_4576) {
        let x_4580 : vec4<f32> = u_xlat11;
        x_4577 = vec3<f32>(x_4580.x, x_4580.y, x_4580.z);
      } else {
        let x_4583 : f32 = u_xlat86;
        x_4577 = vec3<f32>(x_4583, x_4583, x_4583);
      }
      let x_4585 : vec3<f32> = x_4577;
      let x_4586 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4585.x, x_4585.y, x_4585.z, x_4586.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4592 : vec4<f32> = u_xlat11;
    let x_4594 : i32 = u_xlati5;
    let x_4596 : vec4<f32> = x_2786.x_AdditionalLightsColor[x_4594];
    let x_4598 : vec3<f32> = (vec3<f32>(x_4592.x, x_4592.y, x_4592.z) * vec3<f32>(x_4596.x, x_4596.y, x_4596.z));
    let x_4599 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4598.x, x_4598.y, x_4598.z, x_4599.w);
    let x_4601 : f32 = u_xlat84;
    let x_4602 : f32 = u_xlat85;
    u_xlat5.x = (x_4601 * x_4602);
    let x_4605 : vec4<f32> = u_xlat1;
    let x_4607 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4605.x, x_4605.y, x_4605.z), vec3<f32>(x_4607.x, x_4607.y, x_4607.z));
    let x_4610 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4610, 0.0f, 1.0f);
    let x_4613 : f32 = u_xlat5.x;
    let x_4614 : f32 = u_xlat84;
    u_xlat5.x = (x_4613 * x_4614);
    let x_4617 : vec4<f32> = u_xlat5;
    let x_4619 : vec4<f32> = u_xlat11;
    let x_4621 : vec3<f32> = (vec3<f32>(x_4617.x, x_4617.x, x_4617.x) * vec3<f32>(x_4619.x, x_4619.y, x_4619.z));
    let x_4622 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4621.x, x_4621.y, x_4621.z, x_4622.w);
    let x_4624 : vec4<f32> = u_xlat9;
    let x_4626 : vec2<f32> = u_xlat59;
    let x_4629 : vec4<f32> = u_xlat6;
    let x_4631 : vec3<f32> = ((vec3<f32>(x_4624.x, x_4624.y, x_4624.z) * vec3<f32>(x_4626.x, x_4626.x, x_4626.x)) + vec3<f32>(x_4629.x, x_4629.y, x_4629.z));
    let x_4632 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4631.x, x_4631.y, x_4631.z, x_4632.w);
    let x_4634 : vec4<f32> = u_xlat9;
    let x_4636 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4634.x, x_4634.y, x_4634.z), vec3<f32>(x_4636.x, x_4636.y, x_4636.z));
    let x_4641 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_4641, 1.17549435e-38f);
    let x_4645 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_4645);
    let x_4648 : vec4<f32> = u_xlat5;
    let x_4650 : vec4<f32> = u_xlat9;
    let x_4652 : vec3<f32> = (vec3<f32>(x_4648.x, x_4648.x, x_4648.x) * vec3<f32>(x_4650.x, x_4650.y, x_4650.z));
    let x_4653 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4652.x, x_4652.y, x_4652.z, x_4653.w);
    let x_4655 : vec4<f32> = u_xlat1;
    let x_4657 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4655.x, x_4655.y, x_4655.z), vec3<f32>(x_4657.x, x_4657.y, x_4657.z));
    let x_4662 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_4662, 0.0f, 1.0f);
    let x_4665 : vec4<f32> = u_xlat10;
    let x_4667 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4665.x, x_4665.y, x_4665.z), vec3<f32>(x_4667.x, x_4667.y, x_4667.z));
    let x_4670 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4670, 0.0f, 1.0f);
    let x_4673 : f32 = u_xlat5.x;
    let x_4675 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4673 * x_4675);
    let x_4679 : f32 = u_xlat5.x;
    let x_4681 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_4679 * x_4681) + 1.00001001358032226562f);
    let x_4685 : f32 = u_xlat84;
    let x_4686 : f32 = u_xlat84;
    u_xlat84 = (x_4685 * x_4686);
    let x_4689 : f32 = u_xlat5.x;
    let x_4691 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4689 * x_4691);
    let x_4694 : f32 = u_xlat84;
    u_xlat84 = max(x_4694, 0.10000000149011611938f);
    let x_4697 : f32 = u_xlat5.x;
    let x_4698 : f32 = u_xlat84;
    u_xlat5.x = (x_4697 * x_4698);
    let x_4701 : f32 = u_xlat81;
    let x_4703 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4701 * x_4703);
    let x_4706 : f32 = u_xlat79;
    let x_4708 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4706 / x_4708);
    let x_4711 : vec4<f32> = u_xlat4;
    let x_4713 : vec4<f32> = u_xlat5;
    let x_4716 : vec4<f32> = u_xlat3;
    let x_4718 : vec3<f32> = ((vec3<f32>(x_4711.x, x_4711.y, x_4711.z) * vec3<f32>(x_4713.x, x_4713.x, x_4713.x)) + vec3<f32>(x_4716.x, x_4716.y, x_4716.z));
    let x_4719 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4718.x, x_4718.y, x_4718.z, x_4719.w);
    let x_4721 : vec4<f32> = u_xlat9;
    let x_4723 : vec4<f32> = u_xlat11;
    let x_4726 : vec4<f32> = u_xlat8;
    let x_4728 : vec3<f32> = ((vec3<f32>(x_4721.x, x_4721.y, x_4721.z) * vec3<f32>(x_4723.x, x_4723.y, x_4723.z)) + vec3<f32>(x_4726.x, x_4726.y, x_4726.z));
    let x_4729 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4728.x, x_4728.y, x_4728.z, x_4729.w);

    continuing {
      let x_4731 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4731 + bitcast<u32>(1i));
    }
  }
  let x_4733 : vec4<f32> = u_xlat2;
  let x_4735 : f32 = u_xlat26;
  let x_4738 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4733.x, x_4733.y, x_4733.z) * vec3<f32>(x_4735, x_4735, x_4735)) + x_4738);
  let x_4740 : vec4<f32> = u_xlat8;
  let x_4742 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4740.x, x_4740.y, x_4740.z) + x_4742);
  let x_4746 : f32 = u_xlat78;
  let x_4748 : vec3<f32> = u_xlat0;
  let x_4749 : vec3<f32> = (vec3<f32>(x_4746, x_4746, x_4746) * x_4748);
  let x_4750 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4749.x, x_4749.y, x_4749.z, x_4750.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


