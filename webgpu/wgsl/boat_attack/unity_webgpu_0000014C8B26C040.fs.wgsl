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

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

@group(1) @binding(5) var<uniform> x_2460 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2661 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu83 : u32;

var<private> u_xlati58 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2954 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2412 : f32;
  var x_2543 : f32;
  var x_2554 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3108 : f32;
  var x_3118 : f32;
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
  var x_4689 : f32;
  var x_4702 : f32;
  var x_4750 : f32;
  var x_4761 : vec3<f32>;
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
  let x_836 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_836 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_953 : f32 = u_xlat79;
  u_xlat79 = (-(x_953) + 4.0f);
  let x_958 : f32 = u_xlat79;
  u_xlatu79 = u32(x_958);
  let x_962 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_962) << bitcast<u32>(2i));
  let x_965 : vec3<f32> = vs_TEXCOORD7;
  let x_967 : i32 = u_xlati79;
  let x_970 : i32 = u_xlati79;
  let x_974 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_967 + 1i) / 4i)][((x_970 + 1i) % 4i)];
  let x_976 : vec3<f32> = (vec3<f32>(x_965.y, x_965.y, x_965.y) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : i32 = u_xlati79;
  let x_981 : i32 = u_xlati79;
  let x_984 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : i32 = u_xlati79;
  let x_997 : i32 = u_xlati79;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : i32 = u_xlati79;
  let x_1016 : i32 = u_xlati79;
  let x_1020 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
  let x_1022 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1030 : vec4<f32> = vs_TEXCOORD0;
  let x_1033 : f32 = x_112.x_GlobalMipBias.x;
  let x_1034 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1030.z, x_1030.w), x_1033);
  u_xlat3 = x_1034;
  let x_1039 : vec4<f32> = vs_TEXCOORD0;
  let x_1042 : f32 = x_112.x_GlobalMipBias.x;
  let x_1043 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  let x_1044 : vec3<f32> = vec3<f32>(x_1043.x, x_1043.y, x_1043.z);
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat3;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1052 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat1;
  let x_1056 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat79;
  u_xlat79 = (x_1059 + 0.5f);
  let x_1061 : f32 = u_xlat79;
  let x_1063 : vec4<f32> = u_xlat4;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061, x_1061, x_1061) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1069 : f32 = u_xlat3.w;
  u_xlat79 = max(x_1069, 0.00009999999747378752f);
  let x_1072 : vec4<f32> = u_xlat3;
  let x_1074 : f32 = u_xlat79;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) / vec3<f32>(x_1074, x_1074, x_1074));
  let x_1077 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1080 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1080) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1086 : f32 = u_xlat52;
  let x_1087 : f32 = u_xlat79;
  u_xlat80 = (x_1086 + -(x_1087));
  let x_1090 : f32 = u_xlat79;
  let x_1092 : vec4<f32> = u_xlat5;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat5;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1102 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : vec3<f32> = u_xlat0;
  let x_1106 : vec4<f32> = u_xlat5;
  let x_1111 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.x, x_1104.x) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1114) + 1.0f);
  let x_1119 : f32 = u_xlat0.x;
  let x_1121 : f32 = u_xlat0.x;
  u_xlat52 = (x_1119 * x_1121);
  let x_1123 : f32 = u_xlat52;
  u_xlat52 = max(x_1123, 0.0078125f);
  let x_1126 : f32 = u_xlat52;
  let x_1127 : f32 = u_xlat52;
  u_xlat79 = (x_1126 * x_1127);
  let x_1129 : f32 = u_xlat80;
  u_xlat80 = (x_1129 + 1.0f);
  let x_1131 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1131, 0.0f, 1.0f);
  let x_1134 : f32 = u_xlat52;
  u_xlat81 = ((x_1134 * 4.0f) + 2.0f);
  let x_1137 : f32 = u_xlat26;
  u_xlat26 = min(x_1137, 1.0f);
  let x_1141 : f32 = x_845.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_1141);
  let x_1143 : bool = u_xlatb82;
  if (x_1143) {
    let x_1147 : f32 = x_845.x_MainLightShadowParams.y;
    u_xlatb82 = (x_1147 == 1.0f);
    let x_1149 : bool = u_xlatb82;
    if (x_1149) {
      let x_1152 : vec4<f32> = u_xlat2;
      let x_1155 : vec4<f32> = x_845.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y) + x_1155);
      let x_1159 : vec4<f32> = u_xlat6;
      let x_1160 : vec2<f32> = vec2<f32>(x_1159.x, x_1159.y);
      let x_1162 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1160.x, x_1160.y, x_1162);
      let x_1174 : vec3<f32> = txVec0;
      let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
      u_xlat7.x = x_1176;
      let x_1179 : vec4<f32> = u_xlat6;
      let x_1180 : vec2<f32> = vec2<f32>(x_1179.z, x_1179.w);
      let x_1182 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1180.x, x_1180.y, x_1182);
      let x_1189 : vec3<f32> = txVec1;
      let x_1191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1189.xy, x_1189.z);
      u_xlat7.y = x_1191;
      let x_1193 : vec4<f32> = u_xlat2;
      let x_1196 : vec4<f32> = x_845.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y) + x_1196);
      let x_1199 : vec4<f32> = u_xlat6;
      let x_1200 : vec2<f32> = vec2<f32>(x_1199.x, x_1199.y);
      let x_1202 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1200.x, x_1200.y, x_1202);
      let x_1209 : vec3<f32> = txVec2;
      let x_1211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1209.xy, x_1209.z);
      u_xlat7.z = x_1211;
      let x_1214 : vec4<f32> = u_xlat6;
      let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
      let x_1217 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
      let x_1224 : vec3<f32> = txVec3;
      let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
      u_xlat7.w = x_1226;
      let x_1229 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_1229, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1236 : f32 = x_845.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1236 == 2.0f);
      let x_1238 : bool = u_xlatb83;
      if (x_1238) {
        let x_1241 : vec4<f32> = u_xlat2;
        let x_1244 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.z, x_1244.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1248 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1252 : vec2<f32> = floor(vec2<f32>(x_1250.x, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1253.w);
        let x_1257 : vec4<f32> = u_xlat2;
        let x_1260 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1260.z, x_1260.w)) + -(vec2<f32>(x_1263.x, x_1263.y)));
        let x_1267 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1267.x, x_1267.x, x_1267.y, x_1267.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1271 : vec4<f32> = u_xlat7;
        let x_1273 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1271.x, x_1271.x, x_1271.z, x_1271.z) * vec4<f32>(x_1273.x, x_1273.x, x_1273.z, x_1273.z));
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1280 : vec2<f32> = (vec2<f32>(x_1276.y, x_1276.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1281 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1280.x, x_1281.y, x_1280.y, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1286 : vec2<f32> = u_xlat58;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1286));
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1292 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1292) + vec2<f32>(1.0f, 1.0f));
        let x_1296 : vec2<f32> = u_xlat58;
        let x_1298 : vec2<f32> = min(x_1296, vec2<f32>(0.0f, 0.0f));
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat9;
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1307 : vec2<f32> = u_xlat60;
        let x_1308 : vec2<f32> = ((-(vec2<f32>(x_1301.x, x_1301.y)) * vec2<f32>(x_1304.x, x_1304.y)) + x_1307);
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1308.x, x_1308.y, x_1309.z, x_1309.w);
        let x_1311 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1311, vec2<f32>(0.0f, 0.0f));
        let x_1313 : vec2<f32> = u_xlat58;
        let x_1315 : vec2<f32> = u_xlat58;
        let x_1317 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1313) * x_1315) + vec2<f32>(x_1317.y, x_1317.w));
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1320.x, x_1320.y) + vec2<f32>(1.0f, 1.0f));
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1325 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1325 + vec2<f32>(1.0f, 1.0f));
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1331 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1332 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1331.x, x_1331.y, x_1332.z, x_1332.w);
        let x_1334 : vec2<f32> = u_xlat60;
        let x_1335 : vec2<f32> = (x_1334 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1336 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat9;
        let x_1340 : vec2<f32> = (vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1343 : vec2<f32> = u_xlat58;
        let x_1344 : vec2<f32> = (x_1343 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1345 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
        let x_1347 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1347.y, x_1347.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1351 : f32 = u_xlat9.x;
        u_xlat10.z = x_1351;
        let x_1354 : f32 = u_xlat58.x;
        u_xlat10.w = x_1354;
        let x_1357 : f32 = u_xlat11.x;
        u_xlat8.z = x_1357;
        let x_1360 : f32 = u_xlat7.x;
        u_xlat8.w = x_1360;
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1362.z, x_1362.w, x_1362.x, x_1362.z) + vec4<f32>(x_1364.z, x_1364.w, x_1364.x, x_1364.z));
        let x_1368 : f32 = u_xlat10.y;
        u_xlat9.z = x_1368;
        let x_1371 : f32 = u_xlat58.y;
        u_xlat9.w = x_1371;
        let x_1374 : f32 = u_xlat8.y;
        u_xlat11.z = x_1374;
        let x_1377 : f32 = u_xlat7.z;
        u_xlat11.w = x_1377;
        let x_1379 : vec4<f32> = u_xlat9;
        let x_1381 : vec4<f32> = u_xlat11;
        let x_1383 : vec3<f32> = (vec3<f32>(x_1379.z, x_1379.y, x_1379.w) + vec3<f32>(x_1381.z, x_1381.y, x_1381.w));
        let x_1384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
        let x_1386 : vec4<f32> = u_xlat8;
        let x_1388 : vec4<f32> = u_xlat12;
        let x_1390 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.z, x_1386.w) / vec3<f32>(x_1388.z, x_1388.w, x_1388.y));
        let x_1391 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1398 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1403 : vec4<f32> = u_xlat7;
        let x_1405 : vec3<f32> = (vec3<f32>(x_1401.z, x_1401.y, x_1401.w) / vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat9;
        let x_1410 : vec3<f32> = (vec3<f32>(x_1408.x, x_1408.y, x_1408.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1411 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
        let x_1413 : vec4<f32> = u_xlat8;
        let x_1416 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1418 : vec3<f32> = (vec3<f32>(x_1413.y, x_1413.x, x_1413.z) * vec3<f32>(x_1416.x, x_1416.x, x_1416.x));
        let x_1419 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
        let x_1421 : vec4<f32> = u_xlat9;
        let x_1424 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1426 : vec3<f32> = (vec3<f32>(x_1421.x, x_1421.y, x_1421.z) * vec3<f32>(x_1424.y, x_1424.y, x_1424.y));
        let x_1427 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
        let x_1430 : f32 = u_xlat9.x;
        u_xlat8.w = x_1430;
        let x_1432 : vec4<f32> = u_xlat6;
        let x_1435 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y) * vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y)) + vec4<f32>(x_1438.y, x_1438.w, x_1438.x, x_1438.w));
        let x_1441 : vec4<f32> = u_xlat6;
        let x_1444 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1447 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(x_1444.x, x_1444.y)) + vec2<f32>(x_1447.z, x_1447.w));
        let x_1451 : f32 = u_xlat8.y;
        u_xlat9.w = x_1451;
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.y, x_1453.z);
        let x_1455 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1455.x, x_1454.x, x_1455.z, x_1454.y);
        let x_1457 : vec4<f32> = u_xlat6;
        let x_1460 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1463 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1457.x, x_1457.y, x_1457.x, x_1457.y) * vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.y)) + vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1463.y));
        let x_1466 : vec4<f32> = u_xlat6;
        let x_1469 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1472 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1466.x, x_1466.y, x_1466.x, x_1466.y) * vec4<f32>(x_1469.x, x_1469.y, x_1469.x, x_1469.y)) + vec4<f32>(x_1472.w, x_1472.y, x_1472.w, x_1472.z));
        let x_1475 : vec4<f32> = u_xlat6;
        let x_1478 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1481 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y) * vec4<f32>(x_1478.x, x_1478.y, x_1478.x, x_1478.y)) + vec4<f32>(x_1481.x, x_1481.w, x_1481.z, x_1481.w));
        let x_1484 : vec4<f32> = u_xlat7;
        let x_1486 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1484.x, x_1484.x, x_1484.x, x_1484.y) * vec4<f32>(x_1486.z, x_1486.w, x_1486.y, x_1486.z));
        let x_1490 : vec4<f32> = u_xlat7;
        let x_1492 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1490.y, x_1490.y, x_1490.z, x_1490.z) * x_1492);
        let x_1496 : f32 = u_xlat7.z;
        let x_1498 : f32 = u_xlat12.y;
        u_xlat83 = (x_1496 * x_1498);
        let x_1501 : vec4<f32> = u_xlat10;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec4;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat6.x = x_1513;
        let x_1516 : vec4<f32> = u_xlat10;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.z, x_1516.w);
        let x_1519 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1527 : vec3<f32> = txVec5;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1527.xy, x_1527.z);
        u_xlat32 = x_1529;
        let x_1530 : f32 = u_xlat32;
        let x_1532 : f32 = u_xlat13.y;
        u_xlat32 = (x_1530 * x_1532);
        let x_1535 : f32 = u_xlat13.x;
        let x_1537 : f32 = u_xlat6.x;
        let x_1539 : f32 = u_xlat32;
        u_xlat6.x = ((x_1535 * x_1537) + x_1539);
        let x_1543 : vec2<f32> = u_xlat58;
        let x_1545 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec6;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat32 = x_1554;
        let x_1556 : f32 = u_xlat13.z;
        let x_1557 : f32 = u_xlat32;
        let x_1560 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1556 * x_1557) + x_1560);
        let x_1564 : vec4<f32> = u_xlat9;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec7;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat32 = x_1576;
        let x_1578 : f32 = u_xlat13.w;
        let x_1579 : f32 = u_xlat32;
        let x_1582 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1578 * x_1579) + x_1582);
        let x_1586 : vec4<f32> = u_xlat11;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec8;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat32 = x_1598;
        let x_1600 : f32 = u_xlat14.x;
        let x_1601 : f32 = u_xlat32;
        let x_1604 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1600 * x_1601) + x_1604);
        let x_1608 : vec4<f32> = u_xlat11;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec9;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat32 = x_1620;
        let x_1622 : f32 = u_xlat14.y;
        let x_1623 : f32 = u_xlat32;
        let x_1626 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1622 * x_1623) + x_1626);
        let x_1630 : vec4<f32> = u_xlat9;
        let x_1631 : vec2<f32> = vec2<f32>(x_1630.z, x_1630.w);
        let x_1633 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec10;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat32 = x_1642;
        let x_1644 : f32 = u_xlat14.z;
        let x_1645 : f32 = u_xlat32;
        let x_1648 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1644 * x_1645) + x_1648);
        let x_1652 : vec4<f32> = u_xlat8;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.x, x_1652.y);
        let x_1655 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec11;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat32 = x_1664;
        let x_1666 : f32 = u_xlat14.w;
        let x_1667 : f32 = u_xlat32;
        let x_1670 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1666 * x_1667) + x_1670);
        let x_1674 : vec4<f32> = u_xlat8;
        let x_1675 : vec2<f32> = vec2<f32>(x_1674.z, x_1674.w);
        let x_1677 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec12;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
        u_xlat32 = x_1686;
        let x_1687 : f32 = u_xlat83;
        let x_1688 : f32 = u_xlat32;
        let x_1691 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1687 * x_1688) + x_1691);
      } else {
        let x_1694 : vec4<f32> = u_xlat2;
        let x_1697 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1700 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1697.z, x_1697.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1701 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1700.x, x_1700.y, x_1701.z, x_1701.w);
        let x_1703 : vec4<f32> = u_xlat6;
        let x_1705 : vec2<f32> = floor(vec2<f32>(x_1703.x, x_1703.y));
        let x_1706 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1705.x, x_1705.y, x_1706.z, x_1706.w);
        let x_1708 : vec4<f32> = u_xlat2;
        let x_1711 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1711.z, x_1711.w)) + -(vec2<f32>(x_1714.x, x_1714.y)));
        let x_1718 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1718.x, x_1718.x, x_1718.y, x_1718.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1721 : vec4<f32> = u_xlat7;
        let x_1723 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1721.x, x_1721.x, x_1721.z, x_1721.z) * vec4<f32>(x_1723.x, x_1723.x, x_1723.z, x_1723.z));
        let x_1726 : vec4<f32> = u_xlat8;
        let x_1730 : vec2<f32> = (vec2<f32>(x_1726.y, x_1726.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1731 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1731.x, x_1730.x, x_1731.z, x_1730.y);
        let x_1733 : vec4<f32> = u_xlat8;
        let x_1736 : vec2<f32> = u_xlat58;
        let x_1738 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1736));
        let x_1739 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1738.x, x_1739.y, x_1738.y, x_1739.w);
        let x_1741 : vec2<f32> = u_xlat58;
        let x_1743 : vec2<f32> = (-(x_1741) + vec2<f32>(1.0f, 1.0f));
        let x_1744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        let x_1746 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1746, vec2<f32>(0.0f, 0.0f));
        let x_1748 : vec2<f32> = u_xlat60;
        let x_1750 : vec2<f32> = u_xlat60;
        let x_1752 : vec4<f32> = u_xlat8;
        let x_1754 : vec2<f32> = ((-(x_1748) * x_1750) + vec2<f32>(x_1752.x, x_1752.y));
        let x_1755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
        let x_1757 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1757, vec2<f32>(0.0f, 0.0f));
        let x_1760 : vec2<f32> = u_xlat60;
        let x_1762 : vec2<f32> = u_xlat60;
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1766 : vec2<f32> = ((-(x_1760) * x_1762) + vec2<f32>(x_1764.y, x_1764.w));
        let x_1767 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1766.x, x_1767.y, x_1766.y);
        let x_1769 : vec4<f32> = u_xlat8;
        let x_1771 : vec2<f32> = (vec2<f32>(x_1769.x, x_1769.y) + vec2<f32>(2.0f, 2.0f));
        let x_1772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
        let x_1774 : vec3<f32> = u_xlat33;
        let x_1776 : vec2<f32> = (vec2<f32>(x_1774.x, x_1774.z) + vec2<f32>(2.0f, 2.0f));
        let x_1777 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1777.x, x_1776.x, x_1777.z, x_1776.y);
        let x_1780 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1780 * 0.08163200318813323975f);
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1787 : vec3<f32> = (vec3<f32>(x_1784.z, x_1784.x, x_1784.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1788.w);
        let x_1790 : vec4<f32> = u_xlat8;
        let x_1793 : vec2<f32> = (vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1794 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
        let x_1797 : f32 = u_xlat11.y;
        u_xlat10.x = x_1797;
        let x_1799 : vec2<f32> = u_xlat58;
        let x_1806 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1807 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1807.x, x_1806.x, x_1807.z, x_1806.y);
        let x_1809 : vec2<f32> = u_xlat58;
        let x_1813 : vec2<f32> = ((vec2<f32>(x_1809.x, x_1809.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1813.x, x_1814.y, x_1813.y, x_1814.w);
        let x_1817 : f32 = u_xlat7.x;
        u_xlat8.y = x_1817;
        let x_1820 : f32 = u_xlat9.y;
        u_xlat8.w = x_1820;
        let x_1822 : vec4<f32> = u_xlat8;
        let x_1823 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1822 + x_1823);
        let x_1825 : vec2<f32> = u_xlat58;
        let x_1828 : vec2<f32> = ((vec2<f32>(x_1825.y, x_1825.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1829 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1829.x, x_1828.x, x_1829.z, x_1828.y);
        let x_1831 : vec2<f32> = u_xlat58;
        let x_1834 : vec2<f32> = ((vec2<f32>(x_1831.y, x_1831.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1834.x, x_1835.y, x_1834.y, x_1835.w);
        let x_1838 : f32 = u_xlat7.y;
        u_xlat9.y = x_1838;
        let x_1840 : vec4<f32> = u_xlat9;
        let x_1841 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1840 + x_1841);
        let x_1843 : vec4<f32> = u_xlat8;
        let x_1844 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1843 / x_1844);
        let x_1846 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1846 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1852 : vec4<f32> = u_xlat9;
        let x_1853 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1852 / x_1853);
        let x_1855 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1855 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1857 : vec4<f32> = u_xlat8;
        let x_1860 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1857.w, x_1857.x, x_1857.y, x_1857.z) * vec4<f32>(x_1860.x, x_1860.x, x_1860.x, x_1860.x));
        let x_1863 : vec4<f32> = u_xlat9;
        let x_1866 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1863.x, x_1863.w, x_1863.y, x_1863.z) * vec4<f32>(x_1866.y, x_1866.y, x_1866.y, x_1866.y));
        let x_1869 : vec4<f32> = u_xlat8;
        let x_1870 : vec3<f32> = vec3<f32>(x_1869.y, x_1869.z, x_1869.w);
        let x_1871 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1870.x, x_1871.y, x_1870.y, x_1870.z);
        let x_1874 : f32 = u_xlat9.x;
        u_xlat11.y = x_1874;
        let x_1876 : vec4<f32> = u_xlat6;
        let x_1879 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1882 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1876.x, x_1876.y, x_1876.x, x_1876.y) * vec4<f32>(x_1879.x, x_1879.y, x_1879.x, x_1879.y)) + vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1882.y));
        let x_1885 : vec4<f32> = u_xlat6;
        let x_1888 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1891 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1885.x, x_1885.y) * vec2<f32>(x_1888.x, x_1888.y)) + vec2<f32>(x_1891.w, x_1891.y));
        let x_1895 : f32 = u_xlat11.y;
        u_xlat8.y = x_1895;
        let x_1898 : f32 = u_xlat9.z;
        u_xlat11.y = x_1898;
        let x_1900 : vec4<f32> = u_xlat6;
        let x_1903 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1906 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1900.x, x_1900.y, x_1900.x, x_1900.y) * vec4<f32>(x_1903.x, x_1903.y, x_1903.x, x_1903.y)) + vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1906.y));
        let x_1909 : vec4<f32> = u_xlat6;
        let x_1912 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1915 : vec4<f32> = u_xlat11;
        let x_1917 : vec2<f32> = ((vec2<f32>(x_1909.x, x_1909.y) * vec2<f32>(x_1912.x, x_1912.y)) + vec2<f32>(x_1915.w, x_1915.y));
        let x_1918 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1917.x, x_1917.y, x_1918.z, x_1918.w);
        let x_1921 : f32 = u_xlat11.y;
        u_xlat8.z = x_1921;
        let x_1924 : vec4<f32> = u_xlat6;
        let x_1927 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1930 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1924.x, x_1924.y, x_1924.x, x_1924.y) * vec4<f32>(x_1927.x, x_1927.y, x_1927.x, x_1927.y)) + vec4<f32>(x_1930.x, x_1930.y, x_1930.x, x_1930.z));
        let x_1934 : f32 = u_xlat9.w;
        u_xlat11.y = x_1934;
        let x_1937 : vec4<f32> = u_xlat6;
        let x_1940 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1943 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1937.x, x_1937.y, x_1937.x, x_1937.y) * vec4<f32>(x_1940.x, x_1940.y, x_1940.x, x_1940.y)) + vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1943.y));
        let x_1947 : vec4<f32> = u_xlat6;
        let x_1950 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1953 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1947.x, x_1947.y) * vec2<f32>(x_1950.x, x_1950.y)) + vec2<f32>(x_1953.w, x_1953.y));
        let x_1957 : f32 = u_xlat11.y;
        u_xlat8.w = x_1957;
        let x_1960 : vec4<f32> = u_xlat6;
        let x_1963 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1966 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1960.x, x_1960.y) * vec2<f32>(x_1963.x, x_1963.y)) + vec2<f32>(x_1966.x, x_1966.w));
        let x_1969 : vec4<f32> = u_xlat11;
        let x_1970 : vec3<f32> = vec3<f32>(x_1969.x, x_1969.z, x_1969.w);
        let x_1971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1970.x, x_1971.y, x_1970.y, x_1970.z);
        let x_1973 : vec4<f32> = u_xlat6;
        let x_1976 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1979 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1973.x, x_1973.y, x_1973.x, x_1973.y) * vec4<f32>(x_1976.x, x_1976.y, x_1976.x, x_1976.y)) + vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1979.y));
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1986 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1983.x, x_1983.y) * vec2<f32>(x_1986.x, x_1986.y)) + vec2<f32>(x_1989.w, x_1989.y));
        let x_1993 : f32 = u_xlat8.x;
        u_xlat9.x = x_1993;
        let x_1995 : vec4<f32> = u_xlat6;
        let x_1998 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2001 : vec4<f32> = u_xlat9;
        let x_2003 : vec2<f32> = ((vec2<f32>(x_1995.x, x_1995.y) * vec2<f32>(x_1998.x, x_1998.y)) + vec2<f32>(x_2001.x, x_2001.y));
        let x_2004 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2003.x, x_2003.y, x_2004.z, x_2004.w);
        let x_2007 : vec4<f32> = u_xlat7;
        let x_2009 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2007.x, x_2007.x, x_2007.x, x_2007.x) * x_2009);
        let x_2012 : vec4<f32> = u_xlat7;
        let x_2014 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2012.y, x_2012.y, x_2012.y, x_2012.y) * x_2014);
        let x_2017 : vec4<f32> = u_xlat7;
        let x_2019 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2017.z, x_2017.z, x_2017.z, x_2017.z) * x_2019);
        let x_2021 : vec4<f32> = u_xlat7;
        let x_2023 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2021.w, x_2021.w, x_2021.w, x_2021.w) * x_2023);
        let x_2026 : vec4<f32> = u_xlat12;
        let x_2027 : vec2<f32> = vec2<f32>(x_2026.x, x_2026.y);
        let x_2029 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2027.x, x_2027.y, x_2029);
        let x_2036 : vec3<f32> = txVec13;
        let x_2038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2036.xy, x_2036.z);
        u_xlat83 = x_2038;
        let x_2040 : vec4<f32> = u_xlat12;
        let x_2041 : vec2<f32> = vec2<f32>(x_2040.z, x_2040.w);
        let x_2043 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec14;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
        u_xlat8.x = x_2052;
        let x_2055 : f32 = u_xlat8.x;
        let x_2057 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2055 * x_2057);
        let x_2061 : f32 = u_xlat17.x;
        let x_2062 : f32 = u_xlat83;
        let x_2065 : f32 = u_xlat8.x;
        u_xlat83 = ((x_2061 * x_2062) + x_2065);
        let x_2068 : vec2<f32> = u_xlat58;
        let x_2070 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec15;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat58.x = x_2079;
        let x_2082 : f32 = u_xlat17.z;
        let x_2084 : f32 = u_xlat58.x;
        let x_2086 : f32 = u_xlat83;
        u_xlat83 = ((x_2082 * x_2084) + x_2086);
        let x_2089 : vec4<f32> = u_xlat15;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.x, x_2089.y);
        let x_2092 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec16;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
        u_xlat58.x = x_2101;
        let x_2104 : f32 = u_xlat17.w;
        let x_2106 : f32 = u_xlat58.x;
        let x_2108 : f32 = u_xlat83;
        u_xlat83 = ((x_2104 * x_2106) + x_2108);
        let x_2111 : vec4<f32> = u_xlat13;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
        let x_2114 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec17;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
        u_xlat58.x = x_2123;
        let x_2126 : f32 = u_xlat18.x;
        let x_2128 : f32 = u_xlat58.x;
        let x_2130 : f32 = u_xlat83;
        u_xlat83 = ((x_2126 * x_2128) + x_2130);
        let x_2133 : vec4<f32> = u_xlat13;
        let x_2134 : vec2<f32> = vec2<f32>(x_2133.z, x_2133.w);
        let x_2136 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
        let x_2143 : vec3<f32> = txVec18;
        let x_2145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2143.xy, x_2143.z);
        u_xlat58.x = x_2145;
        let x_2148 : f32 = u_xlat18.y;
        let x_2150 : f32 = u_xlat58.x;
        let x_2152 : f32 = u_xlat83;
        u_xlat83 = ((x_2148 * x_2150) + x_2152);
        let x_2155 : vec4<f32> = u_xlat14;
        let x_2156 : vec2<f32> = vec2<f32>(x_2155.x, x_2155.y);
        let x_2158 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2156.x, x_2156.y, x_2158);
        let x_2165 : vec3<f32> = txVec19;
        let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2165.xy, x_2165.z);
        u_xlat58.x = x_2167;
        let x_2170 : f32 = u_xlat18.z;
        let x_2172 : f32 = u_xlat58.x;
        let x_2174 : f32 = u_xlat83;
        u_xlat83 = ((x_2170 * x_2172) + x_2174);
        let x_2177 : vec4<f32> = u_xlat15;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.z, x_2177.w);
        let x_2180 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec20;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
        u_xlat58.x = x_2189;
        let x_2192 : f32 = u_xlat18.w;
        let x_2194 : f32 = u_xlat58.x;
        let x_2196 : f32 = u_xlat83;
        u_xlat83 = ((x_2192 * x_2194) + x_2196);
        let x_2199 : vec4<f32> = u_xlat16;
        let x_2200 : vec2<f32> = vec2<f32>(x_2199.x, x_2199.y);
        let x_2202 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2200.x, x_2200.y, x_2202);
        let x_2209 : vec3<f32> = txVec21;
        let x_2211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2209.xy, x_2209.z);
        u_xlat58.x = x_2211;
        let x_2214 : f32 = u_xlat19.x;
        let x_2216 : f32 = u_xlat58.x;
        let x_2218 : f32 = u_xlat83;
        u_xlat83 = ((x_2214 * x_2216) + x_2218);
        let x_2221 : vec4<f32> = u_xlat16;
        let x_2222 : vec2<f32> = vec2<f32>(x_2221.z, x_2221.w);
        let x_2224 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec22;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
        u_xlat58.x = x_2233;
        let x_2236 : f32 = u_xlat19.y;
        let x_2238 : f32 = u_xlat58.x;
        let x_2240 : f32 = u_xlat83;
        u_xlat83 = ((x_2236 * x_2238) + x_2240);
        let x_2243 : vec2<f32> = u_xlat34;
        let x_2245 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2243.x, x_2243.y, x_2245);
        let x_2252 : vec3<f32> = txVec23;
        let x_2254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2252.xy, x_2252.z);
        u_xlat58.x = x_2254;
        let x_2257 : f32 = u_xlat19.z;
        let x_2259 : f32 = u_xlat58.x;
        let x_2261 : f32 = u_xlat83;
        u_xlat83 = ((x_2257 * x_2259) + x_2261);
        let x_2264 : vec2<f32> = u_xlat66;
        let x_2266 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2264.x, x_2264.y, x_2266);
        let x_2273 : vec3<f32> = txVec24;
        let x_2275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2273.xy, x_2273.z);
        u_xlat58.x = x_2275;
        let x_2278 : f32 = u_xlat19.w;
        let x_2280 : f32 = u_xlat58.x;
        let x_2282 : f32 = u_xlat83;
        u_xlat83 = ((x_2278 * x_2280) + x_2282);
        let x_2285 : vec4<f32> = u_xlat11;
        let x_2286 : vec2<f32> = vec2<f32>(x_2285.x, x_2285.y);
        let x_2288 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2286.x, x_2286.y, x_2288);
        let x_2295 : vec3<f32> = txVec25;
        let x_2297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2295.xy, x_2295.z);
        u_xlat58.x = x_2297;
        let x_2300 : f32 = u_xlat7.x;
        let x_2302 : f32 = u_xlat58.x;
        let x_2304 : f32 = u_xlat83;
        u_xlat83 = ((x_2300 * x_2302) + x_2304);
        let x_2307 : vec4<f32> = u_xlat11;
        let x_2308 : vec2<f32> = vec2<f32>(x_2307.z, x_2307.w);
        let x_2310 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2308.x, x_2308.y, x_2310);
        let x_2317 : vec3<f32> = txVec26;
        let x_2319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2317.xy, x_2317.z);
        u_xlat58.x = x_2319;
        let x_2322 : f32 = u_xlat7.y;
        let x_2324 : f32 = u_xlat58.x;
        let x_2326 : f32 = u_xlat83;
        u_xlat83 = ((x_2322 * x_2324) + x_2326);
        let x_2329 : vec2<f32> = u_xlat61;
        let x_2331 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
        let x_2338 : vec3<f32> = txVec27;
        let x_2340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
        u_xlat58.x = x_2340;
        let x_2343 : f32 = u_xlat7.z;
        let x_2345 : f32 = u_xlat58.x;
        let x_2347 : f32 = u_xlat83;
        u_xlat83 = ((x_2343 * x_2345) + x_2347);
        let x_2350 : vec4<f32> = u_xlat6;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.x, x_2350.y);
        let x_2353 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
        let x_2360 : vec3<f32> = txVec28;
        let x_2362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2360.xy, x_2360.z);
        u_xlat6.x = x_2362;
        let x_2365 : f32 = u_xlat7.w;
        let x_2367 : f32 = u_xlat6.x;
        let x_2369 : f32 = u_xlat83;
        u_xlat82 = ((x_2365 * x_2367) + x_2369);
      }
    }
  } else {
    let x_2373 : vec4<f32> = u_xlat2;
    let x_2374 : vec2<f32> = vec2<f32>(x_2373.x, x_2373.y);
    let x_2376 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
    let x_2383 : vec3<f32> = txVec29;
    let x_2385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
    u_xlat82 = x_2385;
  }
  let x_2387 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2387) + 1.0f);
  let x_2391 : f32 = u_xlat82;
  let x_2393 : f32 = x_845.x_MainLightShadowParams.x;
  let x_2396 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2391 * x_2393) + x_2396);
  let x_2401 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2401);
  let x_2405 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2405 >= 1.0f);
  let x_2407 : bool = u_xlatb54;
  let x_2408 : bool = u_xlatb28;
  u_xlatb28 = (x_2407 | x_2408);
  let x_2410 : bool = u_xlatb28;
  if (x_2410) {
    x_2412 = 1.0f;
  } else {
    let x_2417 : f32 = u_xlat2.x;
    x_2412 = x_2417;
  }
  let x_2418 : f32 = x_2412;
  u_xlat2.x = x_2418;
  let x_2420 : vec3<f32> = vs_TEXCOORD7;
  let x_2423 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2425 : vec3<f32> = (x_2420 + -(x_2423));
  let x_2426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
  let x_2429 : vec4<f32> = u_xlat6;
  let x_2431 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_2429.x, x_2429.y, x_2429.z), vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2435 : f32 = u_xlat28;
  let x_2437 : f32 = x_845.x_MainLightShadowParams.z;
  let x_2440 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2435 * x_2437) + x_2440);
  let x_2442 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2442, 0.0f, 1.0f);
  let x_2445 : f32 = u_xlat2.x;
  u_xlat82 = (-(x_2445) + 1.0f);
  let x_2448 : f32 = u_xlat54;
  let x_2449 : f32 = u_xlat82;
  let x_2452 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2448 * x_2449) + x_2452);
  let x_2462 : f32 = x_2460.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2462 == -1.0f));
  let x_2464 : bool = u_xlatb54;
  if (x_2464) {
    let x_2467 : vec3<f32> = vs_TEXCOORD7;
    let x_2470 : vec4<f32> = x_2460.x_MainLightWorldToLight[1i];
    let x_2472 : vec2<f32> = (vec2<f32>(x_2467.y, x_2467.y) * vec2<f32>(x_2470.x, x_2470.y));
    let x_2473 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
    let x_2476 : vec4<f32> = x_2460.x_MainLightWorldToLight[0i];
    let x_2478 : vec3<f32> = vs_TEXCOORD7;
    let x_2481 : vec4<f32> = u_xlat6;
    let x_2483 : vec2<f32> = ((vec2<f32>(x_2476.x, x_2476.y) * vec2<f32>(x_2478.x, x_2478.x)) + vec2<f32>(x_2481.x, x_2481.y));
    let x_2484 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2483.x, x_2483.y, x_2484.z, x_2484.w);
    let x_2487 : vec4<f32> = x_2460.x_MainLightWorldToLight[2i];
    let x_2489 : vec3<f32> = vs_TEXCOORD7;
    let x_2492 : vec4<f32> = u_xlat6;
    let x_2494 : vec2<f32> = ((vec2<f32>(x_2487.x, x_2487.y) * vec2<f32>(x_2489.z, x_2489.z)) + vec2<f32>(x_2492.x, x_2492.y));
    let x_2495 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2494.x, x_2494.y, x_2495.z, x_2495.w);
    let x_2497 : vec4<f32> = u_xlat6;
    let x_2500 : vec4<f32> = x_2460.x_MainLightWorldToLight[3i];
    let x_2502 : vec2<f32> = (vec2<f32>(x_2497.x, x_2497.y) + vec2<f32>(x_2500.x, x_2500.y));
    let x_2503 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
    let x_2505 : vec4<f32> = u_xlat6;
    let x_2508 : vec2<f32> = ((vec2<f32>(x_2505.x, x_2505.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2509 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2508.x, x_2508.y, x_2509.z, x_2509.w);
    let x_2516 : vec4<f32> = u_xlat6;
    let x_2519 : f32 = x_112.x_GlobalMipBias.x;
    let x_2520 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2516.x, x_2516.y), x_2519);
    u_xlat6 = x_2520;
    let x_2525 : f32 = x_2460.x_MainLightCookieTextureFormat;
    let x_2527 : f32 = x_2460.x_MainLightCookieTextureFormat;
    let x_2529 : f32 = x_2460.x_MainLightCookieTextureFormat;
    let x_2531 : f32 = x_2460.x_MainLightCookieTextureFormat;
    let x_2532 : vec4<f32> = vec4<f32>(x_2525, x_2527, x_2529, x_2531);
    let x_2539 : vec4<bool> = (vec4<f32>(x_2532.x, x_2532.y, x_2532.z, x_2532.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2539.x, x_2539.y);
    let x_2542 : bool = u_xlatb7.y;
    if (x_2542) {
      let x_2547 : f32 = u_xlat6.w;
      x_2543 = x_2547;
    } else {
      let x_2550 : f32 = u_xlat6.x;
      x_2543 = x_2550;
    }
    let x_2551 : f32 = x_2543;
    u_xlat54 = x_2551;
    let x_2553 : bool = u_xlatb7.x;
    if (x_2553) {
      let x_2557 : vec4<f32> = u_xlat6;
      x_2554 = vec3<f32>(x_2557.x, x_2557.y, x_2557.z);
    } else {
      let x_2560 : f32 = u_xlat54;
      x_2554 = vec3<f32>(x_2560, x_2560, x_2560);
    }
    let x_2562 : vec3<f32> = x_2554;
    let x_2563 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2569 : vec4<f32> = u_xlat6;
  let x_2572 : vec4<f32> = x_112.x_MainLightColor;
  let x_2574 : vec3<f32> = (vec3<f32>(x_2569.x, x_2569.y, x_2569.z) * vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
  let x_2575 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
  let x_2579 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2579;
  let x_2582 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2582;
  let x_2585 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2585;
  let x_2587 : vec4<f32> = u_xlat7;
  let x_2590 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2587.x, x_2587.y, x_2587.z)), vec3<f32>(x_2590.x, x_2590.y, x_2590.z));
  let x_2593 : f32 = u_xlat54;
  let x_2594 : f32 = u_xlat54;
  u_xlat54 = (x_2593 + x_2594);
  let x_2596 : vec4<f32> = u_xlat1;
  let x_2598 : f32 = u_xlat54;
  let x_2602 : vec4<f32> = u_xlat7;
  let x_2605 : vec3<f32> = ((vec3<f32>(x_2596.x, x_2596.y, x_2596.z) * -(vec3<f32>(x_2598, x_2598, x_2598))) + -(vec3<f32>(x_2602.x, x_2602.y, x_2602.z)));
  let x_2606 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
  let x_2608 : vec4<f32> = u_xlat1;
  let x_2610 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2608.x, x_2608.y, x_2608.z), vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2613, 0.0f, 1.0f);
  let x_2615 : f32 = u_xlat54;
  u_xlat54 = (-(x_2615) + 1.0f);
  let x_2618 : f32 = u_xlat54;
  let x_2619 : f32 = u_xlat54;
  u_xlat54 = (x_2618 * x_2619);
  let x_2621 : f32 = u_xlat54;
  let x_2622 : f32 = u_xlat54;
  u_xlat54 = (x_2621 * x_2622);
  let x_2625 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2625) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2632 : f32 = u_xlat0.x;
  let x_2633 : f32 = u_xlat82;
  u_xlat0.x = (x_2632 * x_2633);
  let x_2637 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2637 * 6.0f);
  let x_2649 : vec4<f32> = u_xlat8;
  let x_2652 : f32 = u_xlat0.x;
  let x_2653 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2649.x, x_2649.y, x_2649.z), x_2652);
  u_xlat8 = x_2653;
  let x_2655 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2655 + -1.0f);
  let x_2663 : f32 = x_2661.unity_SpecCube0_HDR.w;
  let x_2665 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2663 * x_2665) + 1.0f);
  let x_2670 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2670, 0.0f);
  let x_2674 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2674);
  let x_2678 : f32 = u_xlat0.x;
  let x_2680 : f32 = x_2661.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2678 * x_2680);
  let x_2684 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2684);
  let x_2688 : f32 = u_xlat0.x;
  let x_2690 : f32 = x_2661.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2688 * x_2690);
  let x_2693 : vec4<f32> = u_xlat8;
  let x_2695 : vec3<f32> = u_xlat0;
  let x_2697 : vec3<f32> = (vec3<f32>(x_2693.x, x_2693.y, x_2693.z) * vec3<f32>(x_2695.x, x_2695.x, x_2695.x));
  let x_2698 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2697.x, x_2697.y, x_2697.z, x_2698.w);
  let x_2700 : f32 = u_xlat52;
  let x_2702 : f32 = u_xlat52;
  let x_2706 : vec2<f32> = ((vec2<f32>(x_2700, x_2700) * vec2<f32>(x_2702, x_2702)) + vec2<f32>(-1.0f, 1.0f));
  let x_2707 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2706.x, x_2707.y, x_2706.y);
  let x_2710 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2710);
  let x_2712 : vec4<f32> = u_xlat5;
  let x_2715 : f32 = u_xlat80;
  let x_2717 : vec3<f32> = (-(vec3<f32>(x_2712.x, x_2712.y, x_2712.z)) + vec3<f32>(x_2715, x_2715, x_2715));
  let x_2718 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2717.x, x_2717.y, x_2717.z, x_2718.w);
  let x_2720 : f32 = u_xlat54;
  let x_2722 : vec4<f32> = u_xlat9;
  let x_2725 : vec4<f32> = u_xlat5;
  let x_2727 : vec3<f32> = ((vec3<f32>(x_2720, x_2720, x_2720) * vec3<f32>(x_2722.x, x_2722.y, x_2722.z)) + vec3<f32>(x_2725.x, x_2725.y, x_2725.z));
  let x_2728 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
  let x_2730 : f32 = u_xlat52;
  let x_2732 : vec4<f32> = u_xlat9;
  let x_2734 : vec3<f32> = (vec3<f32>(x_2730, x_2730, x_2730) * vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
  let x_2735 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
  let x_2737 : vec4<f32> = u_xlat8;
  let x_2739 : vec4<f32> = u_xlat9;
  let x_2741 : vec3<f32> = (vec3<f32>(x_2737.x, x_2737.y, x_2737.z) * vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
  let x_2742 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
  let x_2744 : vec4<f32> = u_xlat3;
  let x_2746 : vec4<f32> = u_xlat4;
  let x_2749 : vec4<f32> = u_xlat8;
  let x_2751 : vec3<f32> = ((vec3<f32>(x_2744.x, x_2744.y, x_2744.z) * vec3<f32>(x_2746.x, x_2746.y, x_2746.z)) + vec3<f32>(x_2749.x, x_2749.y, x_2749.z));
  let x_2752 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
  let x_2755 : f32 = u_xlat2.x;
  let x_2757 : f32 = x_2661.unity_LightData.z;
  u_xlat52 = (x_2755 * x_2757);
  let x_2759 : vec4<f32> = u_xlat1;
  let x_2762 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2759.x, x_2759.y, x_2759.z), vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
  let x_2767 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2767, 0.0f, 1.0f);
  let x_2770 : f32 = u_xlat52;
  let x_2772 : f32 = u_xlat2.x;
  u_xlat52 = (x_2770 * x_2772);
  let x_2774 : f32 = u_xlat52;
  let x_2776 : vec4<f32> = u_xlat6;
  let x_2778 : vec3<f32> = (vec3<f32>(x_2774, x_2774, x_2774) * vec3<f32>(x_2776.x, x_2776.y, x_2776.z));
  let x_2779 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2778.x, x_2779.y, x_2778.y, x_2778.z);
  let x_2781 : vec4<f32> = u_xlat7;
  let x_2784 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2786 : vec3<f32> = (vec3<f32>(x_2781.x, x_2781.y, x_2781.z) + vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
  let x_2787 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);
  let x_2789 : vec4<f32> = u_xlat6;
  let x_2791 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2789.x, x_2789.y, x_2789.z), vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
  let x_2794 : f32 = u_xlat52;
  u_xlat52 = max(x_2794, 1.17549435e-38f);
  let x_2797 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2797);
  let x_2799 : f32 = u_xlat52;
  let x_2801 : vec4<f32> = u_xlat6;
  let x_2803 : vec3<f32> = (vec3<f32>(x_2799, x_2799, x_2799) * vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
  let x_2804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
  let x_2806 : vec4<f32> = u_xlat1;
  let x_2808 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2806.x, x_2806.y, x_2806.z), vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
  let x_2811 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2811, 0.0f, 1.0f);
  let x_2814 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2816 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_2814.x, x_2814.y, x_2814.z), vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
  let x_2819 : f32 = u_xlat82;
  u_xlat82 = clamp(x_2819, 0.0f, 1.0f);
  let x_2821 : f32 = u_xlat52;
  let x_2822 : f32 = u_xlat52;
  u_xlat52 = (x_2821 * x_2822);
  let x_2824 : f32 = u_xlat52;
  let x_2826 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2824 * x_2826) + 1.00001001358032226562f);
  let x_2830 : f32 = u_xlat82;
  let x_2831 : f32 = u_xlat82;
  u_xlat82 = (x_2830 * x_2831);
  let x_2833 : f32 = u_xlat52;
  let x_2834 : f32 = u_xlat52;
  u_xlat52 = (x_2833 * x_2834);
  let x_2836 : f32 = u_xlat82;
  u_xlat82 = max(x_2836, 0.10000000149011611938f);
  let x_2839 : f32 = u_xlat52;
  let x_2840 : f32 = u_xlat82;
  u_xlat52 = (x_2839 * x_2840);
  let x_2842 : f32 = u_xlat81;
  let x_2843 : f32 = u_xlat52;
  u_xlat52 = (x_2842 * x_2843);
  let x_2845 : f32 = u_xlat79;
  let x_2846 : f32 = u_xlat52;
  u_xlat52 = (x_2845 / x_2846);
  let x_2848 : vec4<f32> = u_xlat5;
  let x_2850 : f32 = u_xlat52;
  let x_2853 : vec4<f32> = u_xlat4;
  let x_2855 : vec3<f32> = ((vec3<f32>(x_2848.x, x_2848.y, x_2848.z) * vec3<f32>(x_2850, x_2850, x_2850)) + vec3<f32>(x_2853.x, x_2853.y, x_2853.z));
  let x_2856 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2855.x, x_2855.y, x_2855.z, x_2856.w);
  let x_2858 : vec4<f32> = u_xlat2;
  let x_2860 : vec4<f32> = u_xlat6;
  let x_2862 : vec3<f32> = (vec3<f32>(x_2858.x, x_2858.z, x_2858.w) * vec3<f32>(x_2860.x, x_2860.y, x_2860.z));
  let x_2863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2862.x, x_2863.y, x_2862.y, x_2862.z);
  let x_2866 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2868 : f32 = x_2661.unity_LightData.y;
  u_xlat52 = min(x_2866, x_2868);
  let x_2871 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2871));
  let x_2874 : f32 = u_xlat28;
  let x_2876 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_2879 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_2874 * x_2876) + x_2879);
  let x_2881 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2881, 0.0f, 1.0f);
  let x_2885 : f32 = x_2460.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2887 : f32 = x_2460.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2889 : f32 = x_2460.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2891 : f32 = x_2460.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2892 : vec4<f32> = vec4<f32>(x_2885, x_2887, x_2889, x_2891);
  let x_2898 : vec4<bool> = (vec4<f32>(x_2892.x, x_2892.y, x_2892.z, x_2892.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2898.x, x_2898.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2910 : u32 = u_xlatu_loop_1;
    let x_2911 : u32 = u_xlatu52;
    if ((x_2910 < x_2911)) {
    } else {
      break;
    }
    let x_2914 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2914 >> 2u);
    let x_2917 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_2917 & 3u));
    let x_2920 : u32 = u_xlatu83;
    let x_2923 : vec4<f32> = x_2661.unity_LightIndices[bitcast<i32>(x_2920)];
    let x_2933 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2938 : vec4<u32> = indexable[x_2933];
    u_xlat83 = dot(x_2923, bitcast<vec4<f32>>(x_2938));
    let x_2942 : f32 = u_xlat83;
    u_xlati83 = i32(x_2942);
    let x_2944 : vec3<f32> = vs_TEXCOORD7;
    let x_2955 : i32 = u_xlati83;
    let x_2957 : vec4<f32> = x_2954.x_AdditionalLightsPosition[x_2955];
    let x_2960 : i32 = u_xlati83;
    let x_2962 : vec4<f32> = x_2954.x_AdditionalLightsPosition[x_2960];
    let x_2964 : vec3<f32> = ((-(x_2944) * vec3<f32>(x_2957.w, x_2957.w, x_2957.w)) + vec3<f32>(x_2962.x, x_2962.y, x_2962.z));
    let x_2965 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
    let x_2967 : vec4<f32> = u_xlat9;
    let x_2969 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_2967.x, x_2967.y, x_2967.z), vec3<f32>(x_2969.x, x_2969.y, x_2969.z));
    let x_2974 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_2974, 0.00006103515625f);
    let x_2979 : f32 = u_xlat58.x;
    u_xlat84 = inverseSqrt(x_2979);
    let x_2981 : f32 = u_xlat84;
    let x_2983 : vec4<f32> = u_xlat9;
    let x_2985 : vec3<f32> = (vec3<f32>(x_2981, x_2981, x_2981) * vec3<f32>(x_2983.x, x_2983.y, x_2983.z));
    let x_2986 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2986.w);
    let x_2990 : f32 = u_xlat58.x;
    u_xlat85 = (1.0f / x_2990);
    let x_2993 : f32 = u_xlat58.x;
    let x_2994 : i32 = u_xlati83;
    let x_2996 : f32 = x_2954.x_AdditionalLightsAttenuation[x_2994].x;
    u_xlat58.x = (x_2993 * x_2996);
    let x_3000 : f32 = u_xlat58.x;
    let x_3003 : f32 = u_xlat58.x;
    u_xlat58.x = ((-(x_3000) * x_3003) + 1.0f);
    let x_3008 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_3008, 0.0f);
    let x_3012 : f32 = u_xlat58.x;
    let x_3014 : f32 = u_xlat58.x;
    u_xlat58.x = (x_3012 * x_3014);
    let x_3018 : f32 = u_xlat58.x;
    let x_3019 : f32 = u_xlat85;
    u_xlat58.x = (x_3018 * x_3019);
    let x_3022 : i32 = u_xlati83;
    let x_3024 : vec4<f32> = x_2954.x_AdditionalLightsSpotDir[x_3022];
    let x_3026 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3024.x, x_3024.y, x_3024.z), vec3<f32>(x_3026.x, x_3026.y, x_3026.z));
    let x_3029 : f32 = u_xlat85;
    let x_3030 : i32 = u_xlati83;
    let x_3032 : f32 = x_2954.x_AdditionalLightsAttenuation[x_3030].z;
    let x_3034 : i32 = u_xlati83;
    let x_3036 : f32 = x_2954.x_AdditionalLightsAttenuation[x_3034].w;
    u_xlat85 = ((x_3029 * x_3032) + x_3036);
    let x_3038 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3038, 0.0f, 1.0f);
    let x_3040 : f32 = u_xlat85;
    let x_3041 : f32 = u_xlat85;
    u_xlat85 = (x_3040 * x_3041);
    let x_3044 : f32 = u_xlat58.x;
    let x_3045 : f32 = u_xlat85;
    u_xlat58.x = (x_3044 * x_3045);
    let x_3049 : i32 = u_xlati83;
    let x_3051 : f32 = x_845.x_AdditionalShadowParams[x_3049].w;
    u_xlati85 = i32(x_3051);
    let x_3054 : i32 = u_xlati85;
    u_xlatb86 = (x_3054 >= 0i);
    let x_3056 : bool = u_xlatb86;
    if (x_3056) {
      let x_3060 : i32 = u_xlati83;
      let x_3062 : f32 = x_845.x_AdditionalShadowParams[x_3060].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3062, x_3062, x_3062, x_3062))));
      let x_3066 : bool = u_xlatb86;
      if (x_3066) {
        let x_3070 : vec4<f32> = u_xlat10;
        let x_3073 : vec4<f32> = u_xlat10;
        let x_3076 : vec4<bool> = (abs(vec4<f32>(x_3070.z, x_3070.z, x_3070.y, x_3070.z)) >= abs(vec4<f32>(x_3073.x, x_3073.y, x_3073.x, x_3073.x)));
        let x_3078 : vec3<bool> = vec3<bool>(x_3076.x, x_3076.y, x_3076.z);
        let x_3079 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
        let x_3082 : bool = u_xlatb11.y;
        let x_3084 : bool = u_xlatb11.x;
        u_xlatb86 = (x_3082 & x_3084);
        let x_3086 : vec4<f32> = u_xlat10;
        let x_3089 : vec4<bool> = (-(vec4<f32>(x_3086.z, x_3086.y, x_3086.z, x_3086.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3090 : vec3<bool> = vec3<bool>(x_3089.x, x_3089.y, x_3089.w);
        let x_3091 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3090.x, x_3090.y, x_3091.z, x_3090.z);
        let x_3094 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3094);
        let x_3099 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3099);
        let x_3104 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3104);
        let x_3107 : bool = u_xlatb11.z;
        if (x_3107) {
          let x_3112 : f32 = u_xlat11.y;
          x_3108 = x_3112;
        } else {
          let x_3114 : f32 = u_xlat87;
          x_3108 = x_3114;
        }
        let x_3115 : f32 = x_3108;
        u_xlat87 = x_3115;
        let x_3117 : bool = u_xlatb86;
        if (x_3117) {
          let x_3122 : f32 = u_xlat11.x;
          x_3118 = x_3122;
        } else {
          let x_3124 : f32 = u_xlat87;
          x_3118 = x_3124;
        }
        let x_3125 : f32 = x_3118;
        u_xlat86 = x_3125;
        let x_3126 : i32 = u_xlati83;
        let x_3128 : f32 = x_845.x_AdditionalShadowParams[x_3126].w;
        u_xlat87 = trunc(x_3128);
        let x_3130 : f32 = u_xlat86;
        let x_3131 : f32 = u_xlat87;
        u_xlat86 = (x_3130 + x_3131);
        let x_3133 : f32 = u_xlat86;
        u_xlati85 = i32(x_3133);
      }
      let x_3135 : i32 = u_xlati85;
      u_xlati85 = (x_3135 << bitcast<u32>(2i));
      let x_3137 : vec3<f32> = vs_TEXCOORD7;
      let x_3139 : i32 = u_xlati85;
      let x_3142 : i32 = u_xlati85;
      let x_3146 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3139 + 1i) / 4i)][((x_3142 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3137.y, x_3137.y, x_3137.y, x_3137.y) * x_3146);
      let x_3148 : i32 = u_xlati85;
      let x_3150 : i32 = u_xlati85;
      let x_3153 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_3148 / 4i)][(x_3150 % 4i)];
      let x_3154 : vec3<f32> = vs_TEXCOORD7;
      let x_3157 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3153 * vec4<f32>(x_3154.x, x_3154.x, x_3154.x, x_3154.x)) + x_3157);
      let x_3159 : i32 = u_xlati85;
      let x_3162 : i32 = u_xlati85;
      let x_3166 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3159 + 2i) / 4i)][((x_3162 + 2i) % 4i)];
      let x_3167 : vec3<f32> = vs_TEXCOORD7;
      let x_3170 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3166 * vec4<f32>(x_3167.z, x_3167.z, x_3167.z, x_3167.z)) + x_3170);
      let x_3172 : vec4<f32> = u_xlat11;
      let x_3173 : i32 = u_xlati85;
      let x_3176 : i32 = u_xlati85;
      let x_3180 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3173 + 3i) / 4i)][((x_3176 + 3i) % 4i)];
      u_xlat11 = (x_3172 + x_3180);
      let x_3182 : vec4<f32> = u_xlat11;
      let x_3184 : vec4<f32> = u_xlat11;
      let x_3186 : vec3<f32> = (vec3<f32>(x_3182.x, x_3182.y, x_3182.z) / vec3<f32>(x_3184.w, x_3184.w, x_3184.w));
      let x_3187 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3186.x, x_3186.y, x_3186.z, x_3187.w);
      let x_3190 : i32 = u_xlati83;
      let x_3192 : f32 = x_845.x_AdditionalShadowParams[x_3190].y;
      u_xlatb85 = (0.0f < x_3192);
      let x_3194 : bool = u_xlatb85;
      if (x_3194) {
        let x_3197 : i32 = u_xlati83;
        let x_3199 : f32 = x_845.x_AdditionalShadowParams[x_3197].y;
        u_xlatb85 = (1.0f == x_3199);
        let x_3201 : bool = u_xlatb85;
        if (x_3201) {
          let x_3204 : vec4<f32> = u_xlat11;
          let x_3207 : vec4<f32> = x_845.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3204.x, x_3204.y, x_3204.x, x_3204.y) + x_3207);
          let x_3210 : vec4<f32> = u_xlat12;
          let x_3211 : vec2<f32> = vec2<f32>(x_3210.x, x_3210.y);
          let x_3213 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3211.x, x_3211.y, x_3213);
          let x_3221 : vec3<f32> = txVec30;
          let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
          u_xlat13.x = x_3223;
          let x_3226 : vec4<f32> = u_xlat12;
          let x_3227 : vec2<f32> = vec2<f32>(x_3226.z, x_3226.w);
          let x_3229 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3227.x, x_3227.y, x_3229);
          let x_3236 : vec3<f32> = txVec31;
          let x_3238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3236.xy, x_3236.z);
          u_xlat13.y = x_3238;
          let x_3240 : vec4<f32> = u_xlat11;
          let x_3243 : vec4<f32> = x_845.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3240.x, x_3240.y, x_3240.x, x_3240.y) + x_3243);
          let x_3246 : vec4<f32> = u_xlat12;
          let x_3247 : vec2<f32> = vec2<f32>(x_3246.x, x_3246.y);
          let x_3249 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
          let x_3256 : vec3<f32> = txVec32;
          let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
          u_xlat13.z = x_3258;
          let x_3261 : vec4<f32> = u_xlat12;
          let x_3262 : vec2<f32> = vec2<f32>(x_3261.z, x_3261.w);
          let x_3264 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
          let x_3271 : vec3<f32> = txVec33;
          let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
          u_xlat13.w = x_3273;
          let x_3275 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3275, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3278 : i32 = u_xlati83;
          let x_3280 : f32 = x_845.x_AdditionalShadowParams[x_3278].y;
          u_xlatb86 = (2.0f == x_3280);
          let x_3282 : bool = u_xlatb86;
          if (x_3282) {
            let x_3285 : vec4<f32> = u_xlat11;
            let x_3288 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3291 : vec2<f32> = ((vec2<f32>(x_3285.x, x_3285.y) * vec2<f32>(x_3288.z, x_3288.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3292 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3291.x, x_3291.y, x_3292.z, x_3292.w);
            let x_3294 : vec4<f32> = u_xlat12;
            let x_3296 : vec2<f32> = floor(vec2<f32>(x_3294.x, x_3294.y));
            let x_3297 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3296.x, x_3296.y, x_3297.z, x_3297.w);
            let x_3300 : vec4<f32> = u_xlat11;
            let x_3303 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3306 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3300.x, x_3300.y) * vec2<f32>(x_3303.z, x_3303.w)) + -(vec2<f32>(x_3306.x, x_3306.y)));
            let x_3310 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3310.x, x_3310.x, x_3310.y, x_3310.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3313 : vec4<f32> = u_xlat13;
            let x_3315 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3313.x, x_3313.x, x_3313.z, x_3313.z) * vec4<f32>(x_3315.x, x_3315.x, x_3315.z, x_3315.z));
            let x_3318 : vec4<f32> = u_xlat14;
            let x_3320 : vec2<f32> = (vec2<f32>(x_3318.y, x_3318.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3321 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3320.x, x_3321.y, x_3320.y, x_3321.w);
            let x_3323 : vec4<f32> = u_xlat14;
            let x_3326 : vec2<f32> = u_xlat64;
            let x_3328 : vec2<f32> = ((vec2<f32>(x_3323.x, x_3323.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3326));
            let x_3329 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3328.x, x_3328.y, x_3329.z, x_3329.w);
            let x_3331 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3331) + vec2<f32>(1.0f, 1.0f));
            let x_3334 : vec2<f32> = u_xlat64;
            let x_3335 : vec2<f32> = min(x_3334, vec2<f32>(0.0f, 0.0f));
            let x_3336 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3335.x, x_3335.y, x_3336.z, x_3336.w);
            let x_3338 : vec4<f32> = u_xlat15;
            let x_3341 : vec4<f32> = u_xlat15;
            let x_3344 : vec2<f32> = u_xlat66;
            let x_3345 : vec2<f32> = ((-(vec2<f32>(x_3338.x, x_3338.y)) * vec2<f32>(x_3341.x, x_3341.y)) + x_3344);
            let x_3346 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3345.x, x_3345.y, x_3346.z, x_3346.w);
            let x_3348 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3348, vec2<f32>(0.0f, 0.0f));
            let x_3350 : vec2<f32> = u_xlat64;
            let x_3352 : vec2<f32> = u_xlat64;
            let x_3354 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3350) * x_3352) + vec2<f32>(x_3354.y, x_3354.w));
            let x_3357 : vec4<f32> = u_xlat15;
            let x_3359 : vec2<f32> = (vec2<f32>(x_3357.x, x_3357.y) + vec2<f32>(1.0f, 1.0f));
            let x_3360 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3359.x, x_3359.y, x_3360.z, x_3360.w);
            let x_3362 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3362 + vec2<f32>(1.0f, 1.0f));
            let x_3364 : vec4<f32> = u_xlat14;
            let x_3366 : vec2<f32> = (vec2<f32>(x_3364.x, x_3364.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3367 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3366.x, x_3366.y, x_3367.z, x_3367.w);
            let x_3369 : vec2<f32> = u_xlat66;
            let x_3370 : vec2<f32> = (x_3369 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3371 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3370.x, x_3370.y, x_3371.z, x_3371.w);
            let x_3373 : vec4<f32> = u_xlat15;
            let x_3375 : vec2<f32> = (vec2<f32>(x_3373.x, x_3373.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3376 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3375.x, x_3375.y, x_3376.z, x_3376.w);
            let x_3378 : vec2<f32> = u_xlat64;
            let x_3379 : vec2<f32> = (x_3378 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3380 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3379.x, x_3379.y, x_3380.z, x_3380.w);
            let x_3382 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3382.y, x_3382.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3386 : f32 = u_xlat15.x;
            u_xlat16.z = x_3386;
            let x_3389 : f32 = u_xlat64.x;
            u_xlat16.w = x_3389;
            let x_3392 : f32 = u_xlat17.x;
            u_xlat14.z = x_3392;
            let x_3395 : f32 = u_xlat13.x;
            u_xlat14.w = x_3395;
            let x_3397 : vec4<f32> = u_xlat14;
            let x_3399 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3397.z, x_3397.w, x_3397.x, x_3397.z) + vec4<f32>(x_3399.z, x_3399.w, x_3399.x, x_3399.z));
            let x_3403 : f32 = u_xlat16.y;
            u_xlat15.z = x_3403;
            let x_3406 : f32 = u_xlat64.y;
            u_xlat15.w = x_3406;
            let x_3409 : f32 = u_xlat14.y;
            u_xlat17.z = x_3409;
            let x_3412 : f32 = u_xlat13.z;
            u_xlat17.w = x_3412;
            let x_3414 : vec4<f32> = u_xlat15;
            let x_3416 : vec4<f32> = u_xlat17;
            let x_3418 : vec3<f32> = (vec3<f32>(x_3414.z, x_3414.y, x_3414.w) + vec3<f32>(x_3416.z, x_3416.y, x_3416.w));
            let x_3419 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3418.x, x_3418.y, x_3418.z, x_3419.w);
            let x_3421 : vec4<f32> = u_xlat14;
            let x_3423 : vec4<f32> = u_xlat18;
            let x_3425 : vec3<f32> = (vec3<f32>(x_3421.x, x_3421.z, x_3421.w) / vec3<f32>(x_3423.z, x_3423.w, x_3423.y));
            let x_3426 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
            let x_3428 : vec4<f32> = u_xlat14;
            let x_3430 : vec3<f32> = (vec3<f32>(x_3428.x, x_3428.y, x_3428.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3431 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3430.x, x_3430.y, x_3430.z, x_3431.w);
            let x_3433 : vec4<f32> = u_xlat17;
            let x_3435 : vec4<f32> = u_xlat13;
            let x_3437 : vec3<f32> = (vec3<f32>(x_3433.z, x_3433.y, x_3433.w) / vec3<f32>(x_3435.x, x_3435.y, x_3435.z));
            let x_3438 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3437.x, x_3437.y, x_3437.z, x_3438.w);
            let x_3440 : vec4<f32> = u_xlat15;
            let x_3442 : vec3<f32> = (vec3<f32>(x_3440.x, x_3440.y, x_3440.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3443 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3442.x, x_3442.y, x_3442.z, x_3443.w);
            let x_3445 : vec4<f32> = u_xlat14;
            let x_3448 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3450 : vec3<f32> = (vec3<f32>(x_3445.y, x_3445.x, x_3445.z) * vec3<f32>(x_3448.x, x_3448.x, x_3448.x));
            let x_3451 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3451.w);
            let x_3453 : vec4<f32> = u_xlat15;
            let x_3456 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3458 : vec3<f32> = (vec3<f32>(x_3453.x, x_3453.y, x_3453.z) * vec3<f32>(x_3456.y, x_3456.y, x_3456.y));
            let x_3459 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3458.x, x_3458.y, x_3458.z, x_3459.w);
            let x_3462 : f32 = u_xlat15.x;
            u_xlat14.w = x_3462;
            let x_3464 : vec4<f32> = u_xlat12;
            let x_3467 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3470 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3464.x, x_3464.y, x_3464.x, x_3464.y) * vec4<f32>(x_3467.x, x_3467.y, x_3467.x, x_3467.y)) + vec4<f32>(x_3470.y, x_3470.w, x_3470.x, x_3470.w));
            let x_3473 : vec4<f32> = u_xlat12;
            let x_3476 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3479 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3473.x, x_3473.y) * vec2<f32>(x_3476.x, x_3476.y)) + vec2<f32>(x_3479.z, x_3479.w));
            let x_3483 : f32 = u_xlat14.y;
            u_xlat15.w = x_3483;
            let x_3485 : vec4<f32> = u_xlat15;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.y, x_3485.z);
            let x_3487 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3487.x, x_3486.x, x_3487.z, x_3486.y);
            let x_3489 : vec4<f32> = u_xlat12;
            let x_3492 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3495 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3489.x, x_3489.y, x_3489.x, x_3489.y) * vec4<f32>(x_3492.x, x_3492.y, x_3492.x, x_3492.y)) + vec4<f32>(x_3495.x, x_3495.y, x_3495.z, x_3495.y));
            let x_3498 : vec4<f32> = u_xlat12;
            let x_3501 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3504 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3498.x, x_3498.y, x_3498.x, x_3498.y) * vec4<f32>(x_3501.x, x_3501.y, x_3501.x, x_3501.y)) + vec4<f32>(x_3504.w, x_3504.y, x_3504.w, x_3504.z));
            let x_3507 : vec4<f32> = u_xlat12;
            let x_3510 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3513 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3507.x, x_3507.y, x_3507.x, x_3507.y) * vec4<f32>(x_3510.x, x_3510.y, x_3510.x, x_3510.y)) + vec4<f32>(x_3513.x, x_3513.w, x_3513.z, x_3513.w));
            let x_3516 : vec4<f32> = u_xlat13;
            let x_3518 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3516.x, x_3516.x, x_3516.x, x_3516.y) * vec4<f32>(x_3518.z, x_3518.w, x_3518.y, x_3518.z));
            let x_3522 : vec4<f32> = u_xlat13;
            let x_3524 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3522.y, x_3522.y, x_3522.z, x_3522.z) * x_3524);
            let x_3527 : f32 = u_xlat13.z;
            let x_3529 : f32 = u_xlat18.y;
            u_xlat86 = (x_3527 * x_3529);
            let x_3532 : vec4<f32> = u_xlat16;
            let x_3533 : vec2<f32> = vec2<f32>(x_3532.x, x_3532.y);
            let x_3535 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3533.x, x_3533.y, x_3535);
            let x_3542 : vec3<f32> = txVec34;
            let x_3544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3542.xy, x_3542.z);
            u_xlat87 = x_3544;
            let x_3546 : vec4<f32> = u_xlat16;
            let x_3547 : vec2<f32> = vec2<f32>(x_3546.z, x_3546.w);
            let x_3549 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3547.x, x_3547.y, x_3549);
            let x_3557 : vec3<f32> = txVec35;
            let x_3559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3557.xy, x_3557.z);
            u_xlat88 = x_3559;
            let x_3560 : f32 = u_xlat88;
            let x_3562 : f32 = u_xlat19.y;
            u_xlat88 = (x_3560 * x_3562);
            let x_3565 : f32 = u_xlat19.x;
            let x_3566 : f32 = u_xlat87;
            let x_3568 : f32 = u_xlat88;
            u_xlat87 = ((x_3565 * x_3566) + x_3568);
            let x_3571 : vec2<f32> = u_xlat64;
            let x_3573 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec36;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat88 = x_3582;
            let x_3584 : f32 = u_xlat19.z;
            let x_3585 : f32 = u_xlat88;
            let x_3587 : f32 = u_xlat87;
            u_xlat87 = ((x_3584 * x_3585) + x_3587);
            let x_3590 : vec4<f32> = u_xlat15;
            let x_3591 : vec2<f32> = vec2<f32>(x_3590.x, x_3590.y);
            let x_3593 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
            let x_3600 : vec3<f32> = txVec37;
            let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
            u_xlat88 = x_3602;
            let x_3604 : f32 = u_xlat19.w;
            let x_3605 : f32 = u_xlat88;
            let x_3607 : f32 = u_xlat87;
            u_xlat87 = ((x_3604 * x_3605) + x_3607);
            let x_3610 : vec4<f32> = u_xlat17;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.x, x_3610.y);
            let x_3613 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec38;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat88 = x_3622;
            let x_3624 : f32 = u_xlat20.x;
            let x_3625 : f32 = u_xlat88;
            let x_3627 : f32 = u_xlat87;
            u_xlat87 = ((x_3624 * x_3625) + x_3627);
            let x_3630 : vec4<f32> = u_xlat17;
            let x_3631 : vec2<f32> = vec2<f32>(x_3630.z, x_3630.w);
            let x_3633 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec39;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat88 = x_3642;
            let x_3644 : f32 = u_xlat20.y;
            let x_3645 : f32 = u_xlat88;
            let x_3647 : f32 = u_xlat87;
            u_xlat87 = ((x_3644 * x_3645) + x_3647);
            let x_3650 : vec4<f32> = u_xlat15;
            let x_3651 : vec2<f32> = vec2<f32>(x_3650.z, x_3650.w);
            let x_3653 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec40;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat88 = x_3662;
            let x_3664 : f32 = u_xlat20.z;
            let x_3665 : f32 = u_xlat88;
            let x_3667 : f32 = u_xlat87;
            u_xlat87 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec4<f32> = u_xlat14;
            let x_3671 : vec2<f32> = vec2<f32>(x_3670.x, x_3670.y);
            let x_3673 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3671.x, x_3671.y, x_3673);
            let x_3680 : vec3<f32> = txVec41;
            let x_3682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3680.xy, x_3680.z);
            u_xlat88 = x_3682;
            let x_3684 : f32 = u_xlat20.w;
            let x_3685 : f32 = u_xlat88;
            let x_3687 : f32 = u_xlat87;
            u_xlat87 = ((x_3684 * x_3685) + x_3687);
            let x_3690 : vec4<f32> = u_xlat14;
            let x_3691 : vec2<f32> = vec2<f32>(x_3690.z, x_3690.w);
            let x_3693 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3691.x, x_3691.y, x_3693);
            let x_3700 : vec3<f32> = txVec42;
            let x_3702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3700.xy, x_3700.z);
            u_xlat88 = x_3702;
            let x_3703 : f32 = u_xlat86;
            let x_3704 : f32 = u_xlat88;
            let x_3706 : f32 = u_xlat87;
            u_xlat85 = ((x_3703 * x_3704) + x_3706);
          } else {
            let x_3709 : vec4<f32> = u_xlat11;
            let x_3712 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3715 : vec2<f32> = ((vec2<f32>(x_3709.x, x_3709.y) * vec2<f32>(x_3712.z, x_3712.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3716 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3715.x, x_3715.y, x_3716.z, x_3716.w);
            let x_3718 : vec4<f32> = u_xlat12;
            let x_3720 : vec2<f32> = floor(vec2<f32>(x_3718.x, x_3718.y));
            let x_3721 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3720.x, x_3720.y, x_3721.z, x_3721.w);
            let x_3723 : vec4<f32> = u_xlat11;
            let x_3726 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3729 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3723.x, x_3723.y) * vec2<f32>(x_3726.z, x_3726.w)) + -(vec2<f32>(x_3729.x, x_3729.y)));
            let x_3733 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3733.x, x_3733.x, x_3733.y, x_3733.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3736 : vec4<f32> = u_xlat13;
            let x_3738 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3736.x, x_3736.x, x_3736.z, x_3736.z) * vec4<f32>(x_3738.x, x_3738.x, x_3738.z, x_3738.z));
            let x_3741 : vec4<f32> = u_xlat14;
            let x_3743 : vec2<f32> = (vec2<f32>(x_3741.y, x_3741.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3744 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3744.x, x_3743.x, x_3744.z, x_3743.y);
            let x_3746 : vec4<f32> = u_xlat14;
            let x_3749 : vec2<f32> = u_xlat64;
            let x_3751 : vec2<f32> = ((vec2<f32>(x_3746.x, x_3746.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3749));
            let x_3752 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3751.x, x_3752.y, x_3751.y, x_3752.w);
            let x_3754 : vec2<f32> = u_xlat64;
            let x_3756 : vec2<f32> = (-(x_3754) + vec2<f32>(1.0f, 1.0f));
            let x_3757 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3756.x, x_3756.y, x_3757.z, x_3757.w);
            let x_3759 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3759, vec2<f32>(0.0f, 0.0f));
            let x_3761 : vec2<f32> = u_xlat66;
            let x_3763 : vec2<f32> = u_xlat66;
            let x_3765 : vec4<f32> = u_xlat14;
            let x_3767 : vec2<f32> = ((-(x_3761) * x_3763) + vec2<f32>(x_3765.x, x_3765.y));
            let x_3768 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3767.x, x_3767.y, x_3768.z, x_3768.w);
            let x_3770 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3770, vec2<f32>(0.0f, 0.0f));
            let x_3773 : vec2<f32> = u_xlat66;
            let x_3775 : vec2<f32> = u_xlat66;
            let x_3777 : vec4<f32> = u_xlat13;
            let x_3779 : vec2<f32> = ((-(x_3773) * x_3775) + vec2<f32>(x_3777.y, x_3777.w));
            let x_3780 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3779.x, x_3780.y, x_3779.y);
            let x_3782 : vec4<f32> = u_xlat14;
            let x_3784 : vec2<f32> = (vec2<f32>(x_3782.x, x_3782.y) + vec2<f32>(2.0f, 2.0f));
            let x_3785 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3784.x, x_3784.y, x_3785.z, x_3785.w);
            let x_3787 : vec3<f32> = u_xlat39;
            let x_3789 : vec2<f32> = (vec2<f32>(x_3787.x, x_3787.z) + vec2<f32>(2.0f, 2.0f));
            let x_3790 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3790.x, x_3789.x, x_3790.z, x_3789.y);
            let x_3793 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3793 * 0.08163200318813323975f);
            let x_3796 : vec4<f32> = u_xlat13;
            let x_3798 : vec3<f32> = (vec3<f32>(x_3796.z, x_3796.x, x_3796.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3799 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3798.x, x_3798.y, x_3798.z, x_3799.w);
            let x_3801 : vec4<f32> = u_xlat14;
            let x_3803 : vec2<f32> = (vec2<f32>(x_3801.x, x_3801.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3804 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3803.x, x_3803.y, x_3804.z, x_3804.w);
            let x_3807 : f32 = u_xlat17.y;
            u_xlat16.x = x_3807;
            let x_3809 : vec2<f32> = u_xlat64;
            let x_3812 : vec2<f32> = ((vec2<f32>(x_3809.x, x_3809.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3813 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3813.x, x_3812.x, x_3813.z, x_3812.y);
            let x_3815 : vec2<f32> = u_xlat64;
            let x_3818 : vec2<f32> = ((vec2<f32>(x_3815.x, x_3815.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3819 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3818.x, x_3819.y, x_3818.y, x_3819.w);
            let x_3822 : f32 = u_xlat13.x;
            u_xlat14.y = x_3822;
            let x_3825 : f32 = u_xlat15.y;
            u_xlat14.w = x_3825;
            let x_3827 : vec4<f32> = u_xlat14;
            let x_3828 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3827 + x_3828);
            let x_3830 : vec2<f32> = u_xlat64;
            let x_3833 : vec2<f32> = ((vec2<f32>(x_3830.y, x_3830.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3834 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3834.x, x_3833.x, x_3834.z, x_3833.y);
            let x_3836 : vec2<f32> = u_xlat64;
            let x_3839 : vec2<f32> = ((vec2<f32>(x_3836.y, x_3836.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3840 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3839.x, x_3840.y, x_3839.y, x_3840.w);
            let x_3843 : f32 = u_xlat13.y;
            u_xlat15.y = x_3843;
            let x_3845 : vec4<f32> = u_xlat15;
            let x_3846 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3845 + x_3846);
            let x_3848 : vec4<f32> = u_xlat14;
            let x_3849 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3848 / x_3849);
            let x_3851 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3851 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3853 : vec4<f32> = u_xlat15;
            let x_3854 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3853 / x_3854);
            let x_3856 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3856 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3858 : vec4<f32> = u_xlat14;
            let x_3861 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3858.w, x_3858.x, x_3858.y, x_3858.z) * vec4<f32>(x_3861.x, x_3861.x, x_3861.x, x_3861.x));
            let x_3864 : vec4<f32> = u_xlat15;
            let x_3867 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3864.x, x_3864.w, x_3864.y, x_3864.z) * vec4<f32>(x_3867.y, x_3867.y, x_3867.y, x_3867.y));
            let x_3870 : vec4<f32> = u_xlat14;
            let x_3871 : vec3<f32> = vec3<f32>(x_3870.y, x_3870.z, x_3870.w);
            let x_3872 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3871.x, x_3872.y, x_3871.y, x_3871.z);
            let x_3875 : f32 = u_xlat15.x;
            u_xlat17.y = x_3875;
            let x_3877 : vec4<f32> = u_xlat12;
            let x_3880 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3883 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3877.x, x_3877.y, x_3877.x, x_3877.y) * vec4<f32>(x_3880.x, x_3880.y, x_3880.x, x_3880.y)) + vec4<f32>(x_3883.x, x_3883.y, x_3883.z, x_3883.y));
            let x_3886 : vec4<f32> = u_xlat12;
            let x_3889 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3892 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3886.x, x_3886.y) * vec2<f32>(x_3889.x, x_3889.y)) + vec2<f32>(x_3892.w, x_3892.y));
            let x_3896 : f32 = u_xlat17.y;
            u_xlat14.y = x_3896;
            let x_3899 : f32 = u_xlat15.z;
            u_xlat17.y = x_3899;
            let x_3901 : vec4<f32> = u_xlat12;
            let x_3904 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3907 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3901.x, x_3901.y, x_3901.x, x_3901.y) * vec4<f32>(x_3904.x, x_3904.y, x_3904.x, x_3904.y)) + vec4<f32>(x_3907.x, x_3907.y, x_3907.z, x_3907.y));
            let x_3910 : vec4<f32> = u_xlat12;
            let x_3913 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3916 : vec4<f32> = u_xlat17;
            let x_3918 : vec2<f32> = ((vec2<f32>(x_3910.x, x_3910.y) * vec2<f32>(x_3913.x, x_3913.y)) + vec2<f32>(x_3916.w, x_3916.y));
            let x_3919 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3918.x, x_3918.y, x_3919.z, x_3919.w);
            let x_3922 : f32 = u_xlat17.y;
            u_xlat14.z = x_3922;
            let x_3925 : vec4<f32> = u_xlat12;
            let x_3928 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3931 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3925.x, x_3925.y, x_3925.x, x_3925.y) * vec4<f32>(x_3928.x, x_3928.y, x_3928.x, x_3928.y)) + vec4<f32>(x_3931.x, x_3931.y, x_3931.x, x_3931.z));
            let x_3935 : f32 = u_xlat15.w;
            u_xlat17.y = x_3935;
            let x_3938 : vec4<f32> = u_xlat12;
            let x_3941 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3944 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3938.x, x_3938.y, x_3938.x, x_3938.y) * vec4<f32>(x_3941.x, x_3941.y, x_3941.x, x_3941.y)) + vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3944.y));
            let x_3948 : vec4<f32> = u_xlat12;
            let x_3951 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3954 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3948.x, x_3948.y) * vec2<f32>(x_3951.x, x_3951.y)) + vec2<f32>(x_3954.w, x_3954.y));
            let x_3958 : f32 = u_xlat17.y;
            u_xlat14.w = x_3958;
            let x_3961 : vec4<f32> = u_xlat12;
            let x_3964 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3967 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3961.x, x_3961.y) * vec2<f32>(x_3964.x, x_3964.y)) + vec2<f32>(x_3967.x, x_3967.w));
            let x_3970 : vec4<f32> = u_xlat17;
            let x_3971 : vec3<f32> = vec3<f32>(x_3970.x, x_3970.z, x_3970.w);
            let x_3972 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3971.x, x_3972.y, x_3971.y, x_3971.z);
            let x_3974 : vec4<f32> = u_xlat12;
            let x_3977 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3980 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3974.x, x_3974.y, x_3974.x, x_3974.y) * vec4<f32>(x_3977.x, x_3977.y, x_3977.x, x_3977.y)) + vec4<f32>(x_3980.x, x_3980.y, x_3980.z, x_3980.y));
            let x_3984 : vec4<f32> = u_xlat12;
            let x_3987 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3990 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3984.x, x_3984.y) * vec2<f32>(x_3987.x, x_3987.y)) + vec2<f32>(x_3990.w, x_3990.y));
            let x_3994 : f32 = u_xlat14.x;
            u_xlat15.x = x_3994;
            let x_3996 : vec4<f32> = u_xlat12;
            let x_3999 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4002 : vec4<f32> = u_xlat15;
            let x_4004 : vec2<f32> = ((vec2<f32>(x_3996.x, x_3996.y) * vec2<f32>(x_3999.x, x_3999.y)) + vec2<f32>(x_4002.x, x_4002.y));
            let x_4005 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4004.x, x_4004.y, x_4005.z, x_4005.w);
            let x_4008 : vec4<f32> = u_xlat13;
            let x_4010 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4008.x, x_4008.x, x_4008.x, x_4008.x) * x_4010);
            let x_4013 : vec4<f32> = u_xlat13;
            let x_4015 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4013.y, x_4013.y, x_4013.y, x_4013.y) * x_4015);
            let x_4018 : vec4<f32> = u_xlat13;
            let x_4020 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4018.z, x_4018.z, x_4018.z, x_4018.z) * x_4020);
            let x_4022 : vec4<f32> = u_xlat13;
            let x_4024 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4022.w, x_4022.w, x_4022.w, x_4022.w) * x_4024);
            let x_4027 : vec4<f32> = u_xlat18;
            let x_4028 : vec2<f32> = vec2<f32>(x_4027.x, x_4027.y);
            let x_4030 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4028.x, x_4028.y, x_4030);
            let x_4037 : vec3<f32> = txVec43;
            let x_4039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4037.xy, x_4037.z);
            u_xlat86 = x_4039;
            let x_4041 : vec4<f32> = u_xlat18;
            let x_4042 : vec2<f32> = vec2<f32>(x_4041.z, x_4041.w);
            let x_4044 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4042.x, x_4042.y, x_4044);
            let x_4051 : vec3<f32> = txVec44;
            let x_4053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4051.xy, x_4051.z);
            u_xlat87 = x_4053;
            let x_4054 : f32 = u_xlat87;
            let x_4056 : f32 = u_xlat23.y;
            u_xlat87 = (x_4054 * x_4056);
            let x_4059 : f32 = u_xlat23.x;
            let x_4060 : f32 = u_xlat86;
            let x_4062 : f32 = u_xlat87;
            u_xlat86 = ((x_4059 * x_4060) + x_4062);
            let x_4065 : vec2<f32> = u_xlat64;
            let x_4067 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
            let x_4074 : vec3<f32> = txVec45;
            let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
            u_xlat87 = x_4076;
            let x_4078 : f32 = u_xlat23.z;
            let x_4079 : f32 = u_xlat87;
            let x_4081 : f32 = u_xlat86;
            u_xlat86 = ((x_4078 * x_4079) + x_4081);
            let x_4084 : vec4<f32> = u_xlat21;
            let x_4085 : vec2<f32> = vec2<f32>(x_4084.x, x_4084.y);
            let x_4087 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4085.x, x_4085.y, x_4087);
            let x_4094 : vec3<f32> = txVec46;
            let x_4096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4094.xy, x_4094.z);
            u_xlat87 = x_4096;
            let x_4098 : f32 = u_xlat23.w;
            let x_4099 : f32 = u_xlat87;
            let x_4101 : f32 = u_xlat86;
            u_xlat86 = ((x_4098 * x_4099) + x_4101);
            let x_4104 : vec4<f32> = u_xlat19;
            let x_4105 : vec2<f32> = vec2<f32>(x_4104.x, x_4104.y);
            let x_4107 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4105.x, x_4105.y, x_4107);
            let x_4114 : vec3<f32> = txVec47;
            let x_4116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4114.xy, x_4114.z);
            u_xlat87 = x_4116;
            let x_4118 : f32 = u_xlat24.x;
            let x_4119 : f32 = u_xlat87;
            let x_4121 : f32 = u_xlat86;
            u_xlat86 = ((x_4118 * x_4119) + x_4121);
            let x_4124 : vec4<f32> = u_xlat19;
            let x_4125 : vec2<f32> = vec2<f32>(x_4124.z, x_4124.w);
            let x_4127 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4125.x, x_4125.y, x_4127);
            let x_4134 : vec3<f32> = txVec48;
            let x_4136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4134.xy, x_4134.z);
            u_xlat87 = x_4136;
            let x_4138 : f32 = u_xlat24.y;
            let x_4139 : f32 = u_xlat87;
            let x_4141 : f32 = u_xlat86;
            u_xlat86 = ((x_4138 * x_4139) + x_4141);
            let x_4144 : vec4<f32> = u_xlat20;
            let x_4145 : vec2<f32> = vec2<f32>(x_4144.x, x_4144.y);
            let x_4147 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4145.x, x_4145.y, x_4147);
            let x_4154 : vec3<f32> = txVec49;
            let x_4156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4154.xy, x_4154.z);
            u_xlat87 = x_4156;
            let x_4158 : f32 = u_xlat24.z;
            let x_4159 : f32 = u_xlat87;
            let x_4161 : f32 = u_xlat86;
            u_xlat86 = ((x_4158 * x_4159) + x_4161);
            let x_4164 : vec4<f32> = u_xlat21;
            let x_4165 : vec2<f32> = vec2<f32>(x_4164.z, x_4164.w);
            let x_4167 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4165.x, x_4165.y, x_4167);
            let x_4174 : vec3<f32> = txVec50;
            let x_4176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4174.xy, x_4174.z);
            u_xlat87 = x_4176;
            let x_4178 : f32 = u_xlat24.w;
            let x_4179 : f32 = u_xlat87;
            let x_4181 : f32 = u_xlat86;
            u_xlat86 = ((x_4178 * x_4179) + x_4181);
            let x_4184 : vec4<f32> = u_xlat22;
            let x_4185 : vec2<f32> = vec2<f32>(x_4184.x, x_4184.y);
            let x_4187 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec51;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat87 = x_4196;
            let x_4198 : f32 = u_xlat25.x;
            let x_4199 : f32 = u_xlat87;
            let x_4201 : f32 = u_xlat86;
            u_xlat86 = ((x_4198 * x_4199) + x_4201);
            let x_4204 : vec4<f32> = u_xlat22;
            let x_4205 : vec2<f32> = vec2<f32>(x_4204.z, x_4204.w);
            let x_4207 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4205.x, x_4205.y, x_4207);
            let x_4214 : vec3<f32> = txVec52;
            let x_4216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4214.xy, x_4214.z);
            u_xlat87 = x_4216;
            let x_4218 : f32 = u_xlat25.y;
            let x_4219 : f32 = u_xlat87;
            let x_4221 : f32 = u_xlat86;
            u_xlat86 = ((x_4218 * x_4219) + x_4221);
            let x_4224 : vec2<f32> = u_xlat40;
            let x_4226 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4224.x, x_4224.y, x_4226);
            let x_4233 : vec3<f32> = txVec53;
            let x_4235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4233.xy, x_4233.z);
            u_xlat87 = x_4235;
            let x_4237 : f32 = u_xlat25.z;
            let x_4238 : f32 = u_xlat87;
            let x_4240 : f32 = u_xlat86;
            u_xlat86 = ((x_4237 * x_4238) + x_4240);
            let x_4243 : vec2<f32> = u_xlat72;
            let x_4245 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4243.x, x_4243.y, x_4245);
            let x_4252 : vec3<f32> = txVec54;
            let x_4254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4252.xy, x_4252.z);
            u_xlat87 = x_4254;
            let x_4256 : f32 = u_xlat25.w;
            let x_4257 : f32 = u_xlat87;
            let x_4259 : f32 = u_xlat86;
            u_xlat86 = ((x_4256 * x_4257) + x_4259);
            let x_4262 : vec4<f32> = u_xlat17;
            let x_4263 : vec2<f32> = vec2<f32>(x_4262.x, x_4262.y);
            let x_4265 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4263.x, x_4263.y, x_4265);
            let x_4272 : vec3<f32> = txVec55;
            let x_4274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4272.xy, x_4272.z);
            u_xlat87 = x_4274;
            let x_4276 : f32 = u_xlat13.x;
            let x_4277 : f32 = u_xlat87;
            let x_4279 : f32 = u_xlat86;
            u_xlat86 = ((x_4276 * x_4277) + x_4279);
            let x_4282 : vec4<f32> = u_xlat17;
            let x_4283 : vec2<f32> = vec2<f32>(x_4282.z, x_4282.w);
            let x_4285 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4283.x, x_4283.y, x_4285);
            let x_4292 : vec3<f32> = txVec56;
            let x_4294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4292.xy, x_4292.z);
            u_xlat87 = x_4294;
            let x_4296 : f32 = u_xlat13.y;
            let x_4297 : f32 = u_xlat87;
            let x_4299 : f32 = u_xlat86;
            u_xlat86 = ((x_4296 * x_4297) + x_4299);
            let x_4302 : vec2<f32> = u_xlat67;
            let x_4304 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4302.x, x_4302.y, x_4304);
            let x_4311 : vec3<f32> = txVec57;
            let x_4313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4311.xy, x_4311.z);
            u_xlat87 = x_4313;
            let x_4315 : f32 = u_xlat13.z;
            let x_4316 : f32 = u_xlat87;
            let x_4318 : f32 = u_xlat86;
            u_xlat86 = ((x_4315 * x_4316) + x_4318);
            let x_4321 : vec4<f32> = u_xlat12;
            let x_4322 : vec2<f32> = vec2<f32>(x_4321.x, x_4321.y);
            let x_4324 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4322.x, x_4322.y, x_4324);
            let x_4331 : vec3<f32> = txVec58;
            let x_4333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4331.xy, x_4331.z);
            u_xlat87 = x_4333;
            let x_4335 : f32 = u_xlat13.w;
            let x_4336 : f32 = u_xlat87;
            let x_4338 : f32 = u_xlat86;
            u_xlat85 = ((x_4335 * x_4336) + x_4338);
          }
        }
      } else {
        let x_4342 : vec4<f32> = u_xlat11;
        let x_4343 : vec2<f32> = vec2<f32>(x_4342.x, x_4342.y);
        let x_4345 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4343.x, x_4343.y, x_4345);
        let x_4352 : vec3<f32> = txVec59;
        let x_4354 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4352.xy, x_4352.z);
        u_xlat85 = x_4354;
      }
      let x_4355 : i32 = u_xlati83;
      let x_4357 : f32 = x_845.x_AdditionalShadowParams[x_4355].x;
      u_xlat86 = (1.0f + -(x_4357));
      let x_4360 : f32 = u_xlat85;
      let x_4361 : i32 = u_xlati83;
      let x_4363 : f32 = x_845.x_AdditionalShadowParams[x_4361].x;
      let x_4365 : f32 = u_xlat86;
      u_xlat85 = ((x_4360 * x_4363) + x_4365);
      let x_4368 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4368);
      let x_4372 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4372 >= 1.0f);
      let x_4374 : bool = u_xlatb86;
      let x_4375 : bool = u_xlatb87;
      u_xlatb86 = (x_4374 | x_4375);
      let x_4377 : bool = u_xlatb86;
      let x_4378 : f32 = u_xlat85;
      u_xlat85 = select(x_4378, 1.0f, x_4377);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4381 : f32 = u_xlat85;
    u_xlat86 = (-(x_4381) + 1.0f);
    let x_4384 : f32 = u_xlat28;
    let x_4385 : f32 = u_xlat86;
    let x_4387 : f32 = u_xlat85;
    u_xlat85 = ((x_4384 * x_4385) + x_4387);
    let x_4390 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_4390 & 31i)));
    let x_4393 : i32 = u_xlati86;
    let x_4396 : f32 = x_2460.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4393) & bitcast<u32>(x_4396)));
    let x_4400 : i32 = u_xlati86;
    if ((x_4400 != 0i)) {
      let x_4404 : i32 = u_xlati83;
      let x_4406 : f32 = x_2460.x_AdditionalLightsLightTypes[x_4404].el;
      u_xlati86 = i32(x_4406);
      let x_4409 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4409 != 0i));
      let x_4413 : i32 = u_xlati83;
      u_xlati88 = (x_4413 << bitcast<u32>(2i));
      let x_4415 : i32 = u_xlati87;
      if ((x_4415 != 0i)) {
        let x_4419 : vec3<f32> = vs_TEXCOORD7;
        let x_4421 : i32 = u_xlati88;
        let x_4424 : i32 = u_xlati88;
        let x_4428 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4421 + 1i) / 4i)][((x_4424 + 1i) % 4i)];
        let x_4430 : vec3<f32> = (vec3<f32>(x_4419.y, x_4419.y, x_4419.y) * vec3<f32>(x_4428.x, x_4428.y, x_4428.w));
        let x_4431 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4430.x, x_4430.y, x_4430.z, x_4431.w);
        let x_4433 : i32 = u_xlati88;
        let x_4435 : i32 = u_xlati88;
        let x_4438 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[(x_4433 / 4i)][(x_4435 % 4i)];
        let x_4440 : vec3<f32> = vs_TEXCOORD7;
        let x_4443 : vec4<f32> = u_xlat11;
        let x_4445 : vec3<f32> = ((vec3<f32>(x_4438.x, x_4438.y, x_4438.w) * vec3<f32>(x_4440.x, x_4440.x, x_4440.x)) + vec3<f32>(x_4443.x, x_4443.y, x_4443.z));
        let x_4446 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4445.x, x_4445.y, x_4445.z, x_4446.w);
        let x_4448 : i32 = u_xlati88;
        let x_4451 : i32 = u_xlati88;
        let x_4455 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4448 + 2i) / 4i)][((x_4451 + 2i) % 4i)];
        let x_4457 : vec3<f32> = vs_TEXCOORD7;
        let x_4460 : vec4<f32> = u_xlat11;
        let x_4462 : vec3<f32> = ((vec3<f32>(x_4455.x, x_4455.y, x_4455.w) * vec3<f32>(x_4457.z, x_4457.z, x_4457.z)) + vec3<f32>(x_4460.x, x_4460.y, x_4460.z));
        let x_4463 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4462.x, x_4462.y, x_4462.z, x_4463.w);
        let x_4465 : vec4<f32> = u_xlat11;
        let x_4467 : i32 = u_xlati88;
        let x_4470 : i32 = u_xlati88;
        let x_4474 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4467 + 3i) / 4i)][((x_4470 + 3i) % 4i)];
        let x_4476 : vec3<f32> = (vec3<f32>(x_4465.x, x_4465.y, x_4465.z) + vec3<f32>(x_4474.x, x_4474.y, x_4474.w));
        let x_4477 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4476.x, x_4476.y, x_4476.z, x_4477.w);
        let x_4479 : vec4<f32> = u_xlat11;
        let x_4481 : vec4<f32> = u_xlat11;
        let x_4483 : vec2<f32> = (vec2<f32>(x_4479.x, x_4479.y) / vec2<f32>(x_4481.z, x_4481.z));
        let x_4484 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4483.x, x_4483.y, x_4484.z, x_4484.w);
        let x_4486 : vec4<f32> = u_xlat11;
        let x_4489 : vec2<f32> = ((vec2<f32>(x_4486.x, x_4486.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4490 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4489.x, x_4489.y, x_4490.z, x_4490.w);
        let x_4492 : vec4<f32> = u_xlat11;
        let x_4496 : vec2<f32> = clamp(vec2<f32>(x_4492.x, x_4492.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4497 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4496.x, x_4496.y, x_4497.z, x_4497.w);
        let x_4499 : i32 = u_xlati83;
        let x_4501 : vec4<f32> = x_2460.x_AdditionalLightsCookieAtlasUVRects[x_4499];
        let x_4503 : vec4<f32> = u_xlat11;
        let x_4506 : i32 = u_xlati83;
        let x_4508 : vec4<f32> = x_2460.x_AdditionalLightsCookieAtlasUVRects[x_4506];
        let x_4510 : vec2<f32> = ((vec2<f32>(x_4501.x, x_4501.y) * vec2<f32>(x_4503.x, x_4503.y)) + vec2<f32>(x_4508.z, x_4508.w));
        let x_4511 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4510.x, x_4510.y, x_4511.z, x_4511.w);
      } else {
        let x_4514 : i32 = u_xlati86;
        u_xlatb86 = (x_4514 == 1i);
        let x_4516 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4516);
        let x_4518 : i32 = u_xlati86;
        if ((x_4518 != 0i)) {
          let x_4523 : vec3<f32> = vs_TEXCOORD7;
          let x_4525 : i32 = u_xlati88;
          let x_4528 : i32 = u_xlati88;
          let x_4532 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4525 + 1i) / 4i)][((x_4528 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4523.y, x_4523.y) * vec2<f32>(x_4532.x, x_4532.y));
          let x_4535 : i32 = u_xlati88;
          let x_4537 : i32 = u_xlati88;
          let x_4540 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[(x_4535 / 4i)][(x_4537 % 4i)];
          let x_4542 : vec3<f32> = vs_TEXCOORD7;
          let x_4545 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4540.x, x_4540.y) * vec2<f32>(x_4542.x, x_4542.x)) + x_4545);
          let x_4547 : i32 = u_xlati88;
          let x_4550 : i32 = u_xlati88;
          let x_4554 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4547 + 2i) / 4i)][((x_4550 + 2i) % 4i)];
          let x_4556 : vec3<f32> = vs_TEXCOORD7;
          let x_4559 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4554.x, x_4554.y) * vec2<f32>(x_4556.z, x_4556.z)) + x_4559);
          let x_4561 : vec2<f32> = u_xlat63;
          let x_4562 : i32 = u_xlati88;
          let x_4565 : i32 = u_xlati88;
          let x_4569 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4562 + 3i) / 4i)][((x_4565 + 3i) % 4i)];
          u_xlat63 = (x_4561 + vec2<f32>(x_4569.x, x_4569.y));
          let x_4572 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4572 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4575 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4575);
          let x_4577 : i32 = u_xlati83;
          let x_4579 : vec4<f32> = x_2460.x_AdditionalLightsCookieAtlasUVRects[x_4577];
          let x_4581 : vec2<f32> = u_xlat63;
          let x_4583 : i32 = u_xlati83;
          let x_4585 : vec4<f32> = x_2460.x_AdditionalLightsCookieAtlasUVRects[x_4583];
          let x_4587 : vec2<f32> = ((vec2<f32>(x_4579.x, x_4579.y) * x_4581) + vec2<f32>(x_4585.z, x_4585.w));
          let x_4588 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4587.x, x_4587.y, x_4588.z, x_4588.w);
        } else {
          let x_4591 : vec3<f32> = vs_TEXCOORD7;
          let x_4593 : i32 = u_xlati88;
          let x_4596 : i32 = u_xlati88;
          let x_4600 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4593 + 1i) / 4i)][((x_4596 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4591.y, x_4591.y, x_4591.y, x_4591.y) * x_4600);
          let x_4602 : i32 = u_xlati88;
          let x_4604 : i32 = u_xlati88;
          let x_4607 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[(x_4602 / 4i)][(x_4604 % 4i)];
          let x_4608 : vec3<f32> = vs_TEXCOORD7;
          let x_4611 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4607 * vec4<f32>(x_4608.x, x_4608.x, x_4608.x, x_4608.x)) + x_4611);
          let x_4613 : i32 = u_xlati88;
          let x_4616 : i32 = u_xlati88;
          let x_4620 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4613 + 2i) / 4i)][((x_4616 + 2i) % 4i)];
          let x_4621 : vec3<f32> = vs_TEXCOORD7;
          let x_4624 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4620 * vec4<f32>(x_4621.z, x_4621.z, x_4621.z, x_4621.z)) + x_4624);
          let x_4626 : vec4<f32> = u_xlat12;
          let x_4627 : i32 = u_xlati88;
          let x_4630 : i32 = u_xlati88;
          let x_4634 : vec4<f32> = x_2460.x_AdditionalLightsWorldToLights[((x_4627 + 3i) / 4i)][((x_4630 + 3i) % 4i)];
          u_xlat12 = (x_4626 + x_4634);
          let x_4636 : vec4<f32> = u_xlat12;
          let x_4638 : vec4<f32> = u_xlat12;
          let x_4640 : vec3<f32> = (vec3<f32>(x_4636.x, x_4636.y, x_4636.z) / vec3<f32>(x_4638.w, x_4638.w, x_4638.w));
          let x_4641 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4640.x, x_4640.y, x_4640.z, x_4641.w);
          let x_4643 : vec4<f32> = u_xlat12;
          let x_4645 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4643.x, x_4643.y, x_4643.z), vec3<f32>(x_4645.x, x_4645.y, x_4645.z));
          let x_4648 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4648);
          let x_4650 : f32 = u_xlat86;
          let x_4652 : vec4<f32> = u_xlat12;
          let x_4654 : vec3<f32> = (vec3<f32>(x_4650, x_4650, x_4650) * vec3<f32>(x_4652.x, x_4652.y, x_4652.z));
          let x_4655 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4654.x, x_4654.y, x_4654.z, x_4655.w);
          let x_4657 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4657.x, x_4657.y, x_4657.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4662 : f32 = u_xlat86;
          u_xlat86 = max(x_4662, 0.00000099999999747524f);
          let x_4665 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4665);
          let x_4667 : f32 = u_xlat86;
          let x_4669 : vec4<f32> = u_xlat12;
          let x_4671 : vec3<f32> = (vec3<f32>(x_4667, x_4667, x_4667) * vec3<f32>(x_4669.z, x_4669.x, x_4669.y));
          let x_4672 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4671.x, x_4671.y, x_4671.z, x_4672.w);
          let x_4675 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4675);
          let x_4679 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4679, 0.0f, 1.0f);
          let x_4683 : vec4<f32> = u_xlat13;
          let x_4685 : vec4<bool> = (vec4<f32>(x_4683.y, x_4683.z, x_4683.y, x_4683.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4685.x, x_4685.y);
          let x_4688 : bool = u_xlatb63.x;
          if (x_4688) {
            let x_4693 : f32 = u_xlat13.x;
            x_4689 = x_4693;
          } else {
            let x_4696 : f32 = u_xlat13.x;
            x_4689 = -(x_4696);
          }
          let x_4698 : f32 = x_4689;
          u_xlat63.x = x_4698;
          let x_4701 : bool = u_xlatb63.y;
          if (x_4701) {
            let x_4706 : f32 = u_xlat13.x;
            x_4702 = x_4706;
          } else {
            let x_4709 : f32 = u_xlat13.x;
            x_4702 = -(x_4709);
          }
          let x_4711 : f32 = x_4702;
          u_xlat63.y = x_4711;
          let x_4713 : vec4<f32> = u_xlat12;
          let x_4715 : f32 = u_xlat86;
          let x_4718 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4713.x, x_4713.y) * vec2<f32>(x_4715, x_4715)) + x_4718);
          let x_4720 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4720 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4723 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4723, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4727 : i32 = u_xlati83;
          let x_4729 : vec4<f32> = x_2460.x_AdditionalLightsCookieAtlasUVRects[x_4727];
          let x_4731 : vec2<f32> = u_xlat63;
          let x_4733 : i32 = u_xlati83;
          let x_4735 : vec4<f32> = x_2460.x_AdditionalLightsCookieAtlasUVRects[x_4733];
          let x_4737 : vec2<f32> = ((vec2<f32>(x_4729.x, x_4729.y) * x_4731) + vec2<f32>(x_4735.z, x_4735.w));
          let x_4738 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4737.x, x_4737.y, x_4738.z, x_4738.w);
        }
      }
      let x_4745 : vec4<f32> = u_xlat11;
      let x_4747 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4745.x, x_4745.y), 0.0f);
      u_xlat11 = x_4747;
      let x_4749 : bool = u_xlatb6.y;
      if (x_4749) {
        let x_4754 : f32 = u_xlat11.w;
        x_4750 = x_4754;
      } else {
        let x_4757 : f32 = u_xlat11.x;
        x_4750 = x_4757;
      }
      let x_4758 : f32 = x_4750;
      u_xlat86 = x_4758;
      let x_4760 : bool = u_xlatb6.x;
      if (x_4760) {
        let x_4764 : vec4<f32> = u_xlat11;
        x_4761 = vec3<f32>(x_4764.x, x_4764.y, x_4764.z);
      } else {
        let x_4767 : f32 = u_xlat86;
        x_4761 = vec3<f32>(x_4767, x_4767, x_4767);
      }
      let x_4769 : vec3<f32> = x_4761;
      let x_4770 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4769.x, x_4769.y, x_4769.z, x_4770.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4776 : vec4<f32> = u_xlat11;
    let x_4778 : i32 = u_xlati83;
    let x_4780 : vec4<f32> = x_2954.x_AdditionalLightsColor[x_4778];
    let x_4782 : vec3<f32> = (vec3<f32>(x_4776.x, x_4776.y, x_4776.z) * vec3<f32>(x_4780.x, x_4780.y, x_4780.z));
    let x_4783 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4782.x, x_4782.y, x_4782.z, x_4783.w);
    let x_4786 : f32 = u_xlat58.x;
    let x_4787 : f32 = u_xlat85;
    u_xlat83 = (x_4786 * x_4787);
    let x_4789 : vec4<f32> = u_xlat1;
    let x_4791 : vec4<f32> = u_xlat10;
    u_xlat58.x = dot(vec3<f32>(x_4789.x, x_4789.y, x_4789.z), vec3<f32>(x_4791.x, x_4791.y, x_4791.z));
    let x_4796 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4796, 0.0f, 1.0f);
    let x_4799 : f32 = u_xlat83;
    let x_4801 : f32 = u_xlat58.x;
    u_xlat83 = (x_4799 * x_4801);
    let x_4803 : f32 = u_xlat83;
    let x_4805 : vec4<f32> = u_xlat11;
    let x_4807 : vec3<f32> = (vec3<f32>(x_4803, x_4803, x_4803) * vec3<f32>(x_4805.x, x_4805.y, x_4805.z));
    let x_4808 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4807.x, x_4807.y, x_4807.z, x_4808.w);
    let x_4810 : vec4<f32> = u_xlat9;
    let x_4812 : f32 = u_xlat84;
    let x_4815 : vec4<f32> = u_xlat7;
    let x_4817 : vec3<f32> = ((vec3<f32>(x_4810.x, x_4810.y, x_4810.z) * vec3<f32>(x_4812, x_4812, x_4812)) + vec3<f32>(x_4815.x, x_4815.y, x_4815.z));
    let x_4818 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4817.x, x_4817.y, x_4817.z, x_4818.w);
    let x_4820 : vec4<f32> = u_xlat9;
    let x_4822 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4820.x, x_4820.y, x_4820.z), vec3<f32>(x_4822.x, x_4822.y, x_4822.z));
    let x_4825 : f32 = u_xlat83;
    u_xlat83 = max(x_4825, 1.17549435e-38f);
    let x_4827 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4827);
    let x_4829 : f32 = u_xlat83;
    let x_4831 : vec4<f32> = u_xlat9;
    let x_4833 : vec3<f32> = (vec3<f32>(x_4829, x_4829, x_4829) * vec3<f32>(x_4831.x, x_4831.y, x_4831.z));
    let x_4834 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4833.x, x_4833.y, x_4833.z, x_4834.w);
    let x_4836 : vec4<f32> = u_xlat1;
    let x_4838 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4836.x, x_4836.y, x_4836.z), vec3<f32>(x_4838.x, x_4838.y, x_4838.z));
    let x_4841 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4841, 0.0f, 1.0f);
    let x_4843 : vec4<f32> = u_xlat10;
    let x_4845 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4843.x, x_4843.y, x_4843.z), vec3<f32>(x_4845.x, x_4845.y, x_4845.z));
    let x_4850 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4850, 0.0f, 1.0f);
    let x_4853 : f32 = u_xlat83;
    let x_4854 : f32 = u_xlat83;
    u_xlat83 = (x_4853 * x_4854);
    let x_4856 : f32 = u_xlat83;
    let x_4858 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4856 * x_4858) + 1.00001001358032226562f);
    let x_4862 : f32 = u_xlat58.x;
    let x_4864 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4862 * x_4864);
    let x_4867 : f32 = u_xlat83;
    let x_4868 : f32 = u_xlat83;
    u_xlat83 = (x_4867 * x_4868);
    let x_4871 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4871, 0.10000000149011611938f);
    let x_4874 : f32 = u_xlat83;
    let x_4876 : f32 = u_xlat58.x;
    u_xlat83 = (x_4874 * x_4876);
    let x_4878 : f32 = u_xlat81;
    let x_4879 : f32 = u_xlat83;
    u_xlat83 = (x_4878 * x_4879);
    let x_4881 : f32 = u_xlat79;
    let x_4882 : f32 = u_xlat83;
    u_xlat83 = (x_4881 / x_4882);
    let x_4884 : vec4<f32> = u_xlat5;
    let x_4886 : f32 = u_xlat83;
    let x_4889 : vec4<f32> = u_xlat4;
    let x_4891 : vec3<f32> = ((vec3<f32>(x_4884.x, x_4884.y, x_4884.z) * vec3<f32>(x_4886, x_4886, x_4886)) + vec3<f32>(x_4889.x, x_4889.y, x_4889.z));
    let x_4892 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4891.x, x_4891.y, x_4891.z, x_4892.w);
    let x_4894 : vec4<f32> = u_xlat9;
    let x_4896 : vec4<f32> = u_xlat11;
    let x_4899 : vec4<f32> = u_xlat8;
    let x_4901 : vec3<f32> = ((vec3<f32>(x_4894.x, x_4894.y, x_4894.z) * vec3<f32>(x_4896.x, x_4896.y, x_4896.z)) + vec3<f32>(x_4899.x, x_4899.y, x_4899.z));
    let x_4902 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4901.x, x_4901.y, x_4901.z, x_4902.w);

    continuing {
      let x_4904 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4904 + bitcast<u32>(1i));
    }
  }
  let x_4906 : vec4<f32> = u_xlat3;
  let x_4908 : f32 = u_xlat26;
  let x_4911 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_4906.x, x_4906.y, x_4906.z) * vec3<f32>(x_4908, x_4908, x_4908)) + vec3<f32>(x_4911.x, x_4911.z, x_4911.w));
  let x_4914 : vec4<f32> = u_xlat8;
  let x_4916 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4914.x, x_4914.y, x_4914.z) + x_4916);
  let x_4920 : f32 = u_xlat78;
  let x_4922 : vec3<f32> = u_xlat0;
  let x_4923 : vec3<f32> = (vec3<f32>(x_4920, x_4920, x_4920) * x_4922);
  let x_4924 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4923.x, x_4923.y, x_4923.z, x_4924.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


