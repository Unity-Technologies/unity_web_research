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

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1025 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat54 : f32;

@group(1) @binding(5) var<uniform> x_2481 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu54 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati54 : i32;

@group(1) @binding(1) var<uniform> x_2991 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu79 : u32;

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
  var x_2432 : f32;
  var x_2564 : f32;
  var x_2575 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3120 : f32;
  var x_3130 : f32;
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
  var x_4701 : f32;
  var x_4714 : f32;
  var x_4762 : f32;
  var x_4773 : vec3<f32>;
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
  u_xlat2.x = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_955 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_955) + 4.0f);
  let x_962 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_962);
  let x_966 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_966) << bitcast<u32>(2i));
  let x_970 : vec3<f32> = vs_TEXCOORD7;
  let x_972 : i32 = u_xlati2;
  let x_975 : i32 = u_xlati2;
  let x_979 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_972 + 1i) / 4i)][((x_975 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_970.y, x_970.y, x_970.y) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_987 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_982 / 4i)][(x_984 % 4i)];
  let x_989 : vec3<f32> = vs_TEXCOORD7;
  let x_992 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989.x, x_989.x, x_989.x)) + x_992);
  let x_994 : i32 = u_xlati2;
  let x_997 : i32 = u_xlati2;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + x_1006);
  let x_1008 : vec3<f32> = u_xlat28;
  let x_1009 : i32 = u_xlati2;
  let x_1012 : i32 = u_xlati2;
  let x_1016 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1009 + 3i) / 4i)][((x_1012 + 3i) % 4i)];
  let x_1018 : vec3<f32> = (x_1008 + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  u_xlat1.w = 1.0f;
  let x_1027 : vec4<f32> = x_1025.unity_SHAr;
  let x_1028 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1027, x_1028);
  let x_1032 : vec4<f32> = x_1025.unity_SHAg;
  let x_1033 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1032, x_1033);
  let x_1037 : vec4<f32> = x_1025.unity_SHAb;
  let x_1038 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1037, x_1038);
  let x_1041 : vec4<f32> = u_xlat1;
  let x_1043 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1041.y, x_1041.z, x_1041.z, x_1041.x) * vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1043.z));
  let x_1047 : vec4<f32> = x_1025.unity_SHBr;
  let x_1048 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1047, x_1048);
  let x_1052 : vec4<f32> = x_1025.unity_SHBg;
  let x_1053 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1052, x_1053);
  let x_1057 : vec4<f32> = x_1025.unity_SHBb;
  let x_1058 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1057, x_1058);
  let x_1062 : f32 = u_xlat1.y;
  let x_1064 : f32 = u_xlat1.y;
  u_xlat79 = (x_1062 * x_1064);
  let x_1067 : f32 = u_xlat1.x;
  let x_1069 : f32 = u_xlat1.x;
  let x_1071 : f32 = u_xlat79;
  u_xlat79 = ((x_1067 * x_1069) + -(x_1071));
  let x_1076 : vec4<f32> = x_1025.unity_SHC;
  let x_1078 : f32 = u_xlat79;
  let x_1081 : vec4<f32> = u_xlat6;
  let x_1083 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078, x_1078, x_1078)) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat3;
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) + vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec4<f32> = u_xlat3;
  let x_1095 : vec3<f32> = max(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1096 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1099 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1099) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1105 : f32 = u_xlat79;
  u_xlat80 = (-(x_1105) + 1.0f);
  let x_1108 : f32 = u_xlat79;
  let x_1110 : vec4<f32> = u_xlat5;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1108, x_1108, x_1108) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec3<f32> = u_xlat0;
  let x_1124 : vec4<f32> = u_xlat5;
  let x_1129 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.x, x_1122.x) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1130 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1132) + 1.0f);
  let x_1137 : f32 = u_xlat0.x;
  let x_1139 : f32 = u_xlat0.x;
  u_xlat79 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat79;
  u_xlat79 = max(x_1141, 0.0078125f);
  let x_1145 : f32 = u_xlat79;
  let x_1146 : f32 = u_xlat79;
  u_xlat81 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat52;
  let x_1149 : f32 = u_xlat80;
  u_xlat52 = (x_1148 + x_1149);
  let x_1151 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1151, 0.0f, 1.0f);
  let x_1153 : f32 = u_xlat79;
  u_xlat80 = ((x_1153 * 4.0f) + 2.0f);
  let x_1156 : f32 = u_xlat26;
  u_xlat26 = min(x_1156, 1.0f);
  let x_1160 : f32 = x_845.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_1160);
  let x_1162 : bool = u_xlatb82;
  if (x_1162) {
    let x_1166 : f32 = x_845.x_MainLightShadowParams.y;
    u_xlatb82 = (x_1166 == 1.0f);
    let x_1168 : bool = u_xlatb82;
    if (x_1168) {
      let x_1171 : vec4<f32> = u_xlat2;
      let x_1174 : vec4<f32> = x_845.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) + x_1174);
      let x_1178 : vec4<f32> = u_xlat6;
      let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
      let x_1181 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
      let x_1193 : vec3<f32> = txVec0;
      let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
      u_xlat7.x = x_1195;
      let x_1198 : vec4<f32> = u_xlat6;
      let x_1199 : vec2<f32> = vec2<f32>(x_1198.z, x_1198.w);
      let x_1201 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1199.x, x_1199.y, x_1201);
      let x_1208 : vec3<f32> = txVec1;
      let x_1210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1208.xy, x_1208.z);
      u_xlat7.y = x_1210;
      let x_1212 : vec4<f32> = u_xlat2;
      let x_1215 : vec4<f32> = x_845.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y) + x_1215);
      let x_1218 : vec4<f32> = u_xlat6;
      let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
      let x_1221 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
      let x_1228 : vec3<f32> = txVec2;
      let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
      u_xlat7.z = x_1230;
      let x_1233 : vec4<f32> = u_xlat6;
      let x_1234 : vec2<f32> = vec2<f32>(x_1233.z, x_1233.w);
      let x_1236 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
      let x_1243 : vec3<f32> = txVec3;
      let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
      u_xlat7.w = x_1245;
      let x_1248 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_1248, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1255 : f32 = x_845.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1255 == 2.0f);
      let x_1257 : bool = u_xlatb83;
      if (x_1257) {
        let x_1260 : vec4<f32> = u_xlat2;
        let x_1263 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1266 : vec2<f32> = ((vec2<f32>(x_1260.x, x_1260.y) * vec2<f32>(x_1263.z, x_1263.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1267 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat6;
        let x_1271 : vec2<f32> = floor(vec2<f32>(x_1269.x, x_1269.y));
        let x_1272 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1276 : vec4<f32> = u_xlat2;
        let x_1279 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.z, x_1279.w)) + -(vec2<f32>(x_1282.x, x_1282.y)));
        let x_1286 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1286.x, x_1286.x, x_1286.y, x_1286.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1290 : vec4<f32> = u_xlat7;
        let x_1292 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1290.x, x_1290.x, x_1290.z, x_1290.z) * vec4<f32>(x_1292.x, x_1292.x, x_1292.z, x_1292.z));
        let x_1295 : vec4<f32> = u_xlat8;
        let x_1299 : vec2<f32> = (vec2<f32>(x_1295.y, x_1295.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1300 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1300.w);
        let x_1302 : vec4<f32> = u_xlat8;
        let x_1305 : vec2<f32> = u_xlat58;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1305));
        let x_1308 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1311) + vec2<f32>(1.0f, 1.0f));
        let x_1315 : vec2<f32> = u_xlat58;
        let x_1317 : vec2<f32> = min(x_1315, vec2<f32>(0.0f, 0.0f));
        let x_1318 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1323 : vec4<f32> = u_xlat9;
        let x_1326 : vec2<f32> = u_xlat60;
        let x_1327 : vec2<f32> = ((-(vec2<f32>(x_1320.x, x_1320.y)) * vec2<f32>(x_1323.x, x_1323.y)) + x_1326);
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
        let x_1330 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1330, vec2<f32>(0.0f, 0.0f));
        let x_1332 : vec2<f32> = u_xlat58;
        let x_1334 : vec2<f32> = u_xlat58;
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1332) * x_1334) + vec2<f32>(x_1336.y, x_1336.w));
        let x_1339 : vec4<f32> = u_xlat9;
        let x_1341 : vec2<f32> = (vec2<f32>(x_1339.x, x_1339.y) + vec2<f32>(1.0f, 1.0f));
        let x_1342 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1341.x, x_1341.y, x_1342.z, x_1342.w);
        let x_1344 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1344 + vec2<f32>(1.0f, 1.0f));
        let x_1346 : vec4<f32> = u_xlat8;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1351 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat60;
        let x_1354 : vec2<f32> = (x_1353 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat9;
        let x_1359 : vec2<f32> = (vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1360 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
        let x_1362 : vec2<f32> = u_xlat58;
        let x_1363 : vec2<f32> = (x_1362 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1364 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1366 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1366.y, x_1366.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1370 : f32 = u_xlat9.x;
        u_xlat10.z = x_1370;
        let x_1373 : f32 = u_xlat58.x;
        u_xlat10.w = x_1373;
        let x_1376 : f32 = u_xlat11.x;
        u_xlat8.z = x_1376;
        let x_1379 : f32 = u_xlat7.x;
        u_xlat8.w = x_1379;
        let x_1381 : vec4<f32> = u_xlat8;
        let x_1383 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1381.z, x_1381.w, x_1381.x, x_1381.z) + vec4<f32>(x_1383.z, x_1383.w, x_1383.x, x_1383.z));
        let x_1387 : f32 = u_xlat10.y;
        u_xlat9.z = x_1387;
        let x_1390 : f32 = u_xlat58.y;
        u_xlat9.w = x_1390;
        let x_1393 : f32 = u_xlat8.y;
        u_xlat11.z = x_1393;
        let x_1396 : f32 = u_xlat7.z;
        u_xlat11.w = x_1396;
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1400 : vec4<f32> = u_xlat11;
        let x_1402 : vec3<f32> = (vec3<f32>(x_1398.z, x_1398.y, x_1398.w) + vec3<f32>(x_1400.z, x_1400.y, x_1400.w));
        let x_1403 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1407 : vec4<f32> = u_xlat12;
        let x_1409 : vec3<f32> = (vec3<f32>(x_1405.x, x_1405.z, x_1405.w) / vec3<f32>(x_1407.z, x_1407.w, x_1407.y));
        let x_1410 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat8;
        let x_1418 : vec3<f32> = (vec3<f32>(x_1412.x, x_1412.y, x_1412.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1419 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
        let x_1421 : vec4<f32> = u_xlat11;
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1425 : vec3<f32> = (vec3<f32>(x_1421.z, x_1421.y, x_1421.w) / vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
        let x_1428 : vec4<f32> = u_xlat9;
        let x_1430 : vec3<f32> = (vec3<f32>(x_1428.x, x_1428.y, x_1428.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1431 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat8;
        let x_1436 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1438 : vec3<f32> = (vec3<f32>(x_1433.y, x_1433.x, x_1433.z) * vec3<f32>(x_1436.x, x_1436.x, x_1436.x));
        let x_1439 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1444 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1446 : vec3<f32> = (vec3<f32>(x_1441.x, x_1441.y, x_1441.z) * vec3<f32>(x_1444.y, x_1444.y, x_1444.y));
        let x_1447 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
        let x_1450 : f32 = u_xlat9.x;
        u_xlat8.w = x_1450;
        let x_1452 : vec4<f32> = u_xlat6;
        let x_1455 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1458 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1452.x, x_1452.y, x_1452.x, x_1452.y) * vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y)) + vec4<f32>(x_1458.y, x_1458.w, x_1458.x, x_1458.w));
        let x_1461 : vec4<f32> = u_xlat6;
        let x_1464 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1461.x, x_1461.y) * vec2<f32>(x_1464.x, x_1464.y)) + vec2<f32>(x_1467.z, x_1467.w));
        let x_1471 : f32 = u_xlat8.y;
        u_xlat9.w = x_1471;
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.y, x_1473.z);
        let x_1475 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1475.x, x_1474.x, x_1475.z, x_1474.y);
        let x_1477 : vec4<f32> = u_xlat6;
        let x_1480 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y) * vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y)) + vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1483.y));
        let x_1486 : vec4<f32> = u_xlat6;
        let x_1489 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y) * vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y)) + vec4<f32>(x_1492.w, x_1492.y, x_1492.w, x_1492.z));
        let x_1495 : vec4<f32> = u_xlat6;
        let x_1498 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1495.x, x_1495.y, x_1495.x, x_1495.y) * vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y)) + vec4<f32>(x_1501.x, x_1501.w, x_1501.z, x_1501.w));
        let x_1504 : vec4<f32> = u_xlat7;
        let x_1506 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1504.x, x_1504.x, x_1504.x, x_1504.y) * vec4<f32>(x_1506.z, x_1506.w, x_1506.y, x_1506.z));
        let x_1510 : vec4<f32> = u_xlat7;
        let x_1512 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1510.y, x_1510.y, x_1510.z, x_1510.z) * x_1512);
        let x_1516 : f32 = u_xlat7.z;
        let x_1518 : f32 = u_xlat12.y;
        u_xlat83 = (x_1516 * x_1518);
        let x_1521 : vec4<f32> = u_xlat10;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec4;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat6.x = x_1533;
        let x_1536 : vec4<f32> = u_xlat10;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.z, x_1536.w);
        let x_1539 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1547 : vec3<f32> = txVec5;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1547.xy, x_1547.z);
        u_xlat32 = x_1549;
        let x_1550 : f32 = u_xlat32;
        let x_1552 : f32 = u_xlat13.y;
        u_xlat32 = (x_1550 * x_1552);
        let x_1555 : f32 = u_xlat13.x;
        let x_1557 : f32 = u_xlat6.x;
        let x_1559 : f32 = u_xlat32;
        u_xlat6.x = ((x_1555 * x_1557) + x_1559);
        let x_1563 : vec2<f32> = u_xlat58;
        let x_1565 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec6;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat32 = x_1574;
        let x_1576 : f32 = u_xlat13.z;
        let x_1577 : f32 = u_xlat32;
        let x_1580 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1576 * x_1577) + x_1580);
        let x_1584 : vec4<f32> = u_xlat9;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
        let x_1587 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec7;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat32 = x_1596;
        let x_1598 : f32 = u_xlat13.w;
        let x_1599 : f32 = u_xlat32;
        let x_1602 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1598 * x_1599) + x_1602);
        let x_1606 : vec4<f32> = u_xlat11;
        let x_1607 : vec2<f32> = vec2<f32>(x_1606.x, x_1606.y);
        let x_1609 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec8;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat32 = x_1618;
        let x_1620 : f32 = u_xlat14.x;
        let x_1621 : f32 = u_xlat32;
        let x_1624 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1620 * x_1621) + x_1624);
        let x_1628 : vec4<f32> = u_xlat11;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.z, x_1628.w);
        let x_1631 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec9;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat32 = x_1640;
        let x_1642 : f32 = u_xlat14.y;
        let x_1643 : f32 = u_xlat32;
        let x_1646 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1642 * x_1643) + x_1646);
        let x_1650 : vec4<f32> = u_xlat9;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.z, x_1650.w);
        let x_1653 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec10;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat32 = x_1662;
        let x_1664 : f32 = u_xlat14.z;
        let x_1665 : f32 = u_xlat32;
        let x_1668 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1664 * x_1665) + x_1668);
        let x_1672 : vec4<f32> = u_xlat8;
        let x_1673 : vec2<f32> = vec2<f32>(x_1672.x, x_1672.y);
        let x_1675 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec11;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1682.xy, x_1682.z);
        u_xlat32 = x_1684;
        let x_1686 : f32 = u_xlat14.w;
        let x_1687 : f32 = u_xlat32;
        let x_1690 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1686 * x_1687) + x_1690);
        let x_1694 : vec4<f32> = u_xlat8;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.z, x_1694.w);
        let x_1697 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec12;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
        u_xlat32 = x_1706;
        let x_1707 : f32 = u_xlat83;
        let x_1708 : f32 = u_xlat32;
        let x_1711 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1707 * x_1708) + x_1711);
      } else {
        let x_1714 : vec4<f32> = u_xlat2;
        let x_1717 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1720 : vec2<f32> = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1717.z, x_1717.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1721 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
        let x_1723 : vec4<f32> = u_xlat6;
        let x_1725 : vec2<f32> = floor(vec2<f32>(x_1723.x, x_1723.y));
        let x_1726 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
        let x_1728 : vec4<f32> = u_xlat2;
        let x_1731 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1731.z, x_1731.w)) + -(vec2<f32>(x_1734.x, x_1734.y)));
        let x_1738 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1738.x, x_1738.x, x_1738.y, x_1738.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1741 : vec4<f32> = u_xlat7;
        let x_1743 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1741.x, x_1741.x, x_1741.z, x_1741.z) * vec4<f32>(x_1743.x, x_1743.x, x_1743.z, x_1743.z));
        let x_1746 : vec4<f32> = u_xlat8;
        let x_1750 : vec2<f32> = (vec2<f32>(x_1746.y, x_1746.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1751 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1751.x, x_1750.x, x_1751.z, x_1750.y);
        let x_1753 : vec4<f32> = u_xlat8;
        let x_1756 : vec2<f32> = u_xlat58;
        let x_1758 : vec2<f32> = ((vec2<f32>(x_1753.x, x_1753.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1756));
        let x_1759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1758.x, x_1759.y, x_1758.y, x_1759.w);
        let x_1761 : vec2<f32> = u_xlat58;
        let x_1763 : vec2<f32> = (-(x_1761) + vec2<f32>(1.0f, 1.0f));
        let x_1764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
        let x_1766 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1766, vec2<f32>(0.0f, 0.0f));
        let x_1768 : vec2<f32> = u_xlat60;
        let x_1770 : vec2<f32> = u_xlat60;
        let x_1772 : vec4<f32> = u_xlat8;
        let x_1774 : vec2<f32> = ((-(x_1768) * x_1770) + vec2<f32>(x_1772.x, x_1772.y));
        let x_1775 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1774.x, x_1774.y, x_1775.z, x_1775.w);
        let x_1777 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1777, vec2<f32>(0.0f, 0.0f));
        let x_1780 : vec2<f32> = u_xlat60;
        let x_1782 : vec2<f32> = u_xlat60;
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1786 : vec2<f32> = ((-(x_1780) * x_1782) + vec2<f32>(x_1784.y, x_1784.w));
        let x_1787 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1786.x, x_1787.y, x_1786.y);
        let x_1789 : vec4<f32> = u_xlat8;
        let x_1791 : vec2<f32> = (vec2<f32>(x_1789.x, x_1789.y) + vec2<f32>(2.0f, 2.0f));
        let x_1792 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
        let x_1794 : vec3<f32> = u_xlat33;
        let x_1796 : vec2<f32> = (vec2<f32>(x_1794.x, x_1794.z) + vec2<f32>(2.0f, 2.0f));
        let x_1797 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1797.x, x_1796.x, x_1797.z, x_1796.y);
        let x_1800 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1800 * 0.08163200318813323975f);
        let x_1804 : vec4<f32> = u_xlat7;
        let x_1807 : vec3<f32> = (vec3<f32>(x_1804.z, x_1804.x, x_1804.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1808 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
        let x_1810 : vec4<f32> = u_xlat8;
        let x_1813 : vec2<f32> = (vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1814 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1813.x, x_1813.y, x_1814.z, x_1814.w);
        let x_1817 : f32 = u_xlat11.y;
        u_xlat10.x = x_1817;
        let x_1819 : vec2<f32> = u_xlat58;
        let x_1826 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1827.x, x_1826.x, x_1827.z, x_1826.y);
        let x_1829 : vec2<f32> = u_xlat58;
        let x_1833 : vec2<f32> = ((vec2<f32>(x_1829.x, x_1829.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1834 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1833.x, x_1834.y, x_1833.y, x_1834.w);
        let x_1837 : f32 = u_xlat7.x;
        u_xlat8.y = x_1837;
        let x_1840 : f32 = u_xlat9.y;
        u_xlat8.w = x_1840;
        let x_1842 : vec4<f32> = u_xlat8;
        let x_1843 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1842 + x_1843);
        let x_1845 : vec2<f32> = u_xlat58;
        let x_1848 : vec2<f32> = ((vec2<f32>(x_1845.y, x_1845.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1849 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1849.x, x_1848.x, x_1849.z, x_1848.y);
        let x_1851 : vec2<f32> = u_xlat58;
        let x_1854 : vec2<f32> = ((vec2<f32>(x_1851.y, x_1851.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1854.x, x_1855.y, x_1854.y, x_1855.w);
        let x_1858 : f32 = u_xlat7.y;
        u_xlat9.y = x_1858;
        let x_1860 : vec4<f32> = u_xlat9;
        let x_1861 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1860 + x_1861);
        let x_1863 : vec4<f32> = u_xlat8;
        let x_1864 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1863 / x_1864);
        let x_1866 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1866 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1872 : vec4<f32> = u_xlat9;
        let x_1873 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1872 / x_1873);
        let x_1875 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1875 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1877 : vec4<f32> = u_xlat8;
        let x_1880 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1877.w, x_1877.x, x_1877.y, x_1877.z) * vec4<f32>(x_1880.x, x_1880.x, x_1880.x, x_1880.x));
        let x_1883 : vec4<f32> = u_xlat9;
        let x_1886 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1883.x, x_1883.w, x_1883.y, x_1883.z) * vec4<f32>(x_1886.y, x_1886.y, x_1886.y, x_1886.y));
        let x_1889 : vec4<f32> = u_xlat8;
        let x_1890 : vec3<f32> = vec3<f32>(x_1889.y, x_1889.z, x_1889.w);
        let x_1891 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1890.x, x_1891.y, x_1890.y, x_1890.z);
        let x_1894 : f32 = u_xlat9.x;
        u_xlat11.y = x_1894;
        let x_1896 : vec4<f32> = u_xlat6;
        let x_1899 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1902 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1896.x, x_1896.y, x_1896.x, x_1896.y) * vec4<f32>(x_1899.x, x_1899.y, x_1899.x, x_1899.y)) + vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1902.y));
        let x_1905 : vec4<f32> = u_xlat6;
        let x_1908 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1911 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1905.x, x_1905.y) * vec2<f32>(x_1908.x, x_1908.y)) + vec2<f32>(x_1911.w, x_1911.y));
        let x_1915 : f32 = u_xlat11.y;
        u_xlat8.y = x_1915;
        let x_1918 : f32 = u_xlat9.z;
        u_xlat11.y = x_1918;
        let x_1920 : vec4<f32> = u_xlat6;
        let x_1923 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1926 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1920.x, x_1920.y, x_1920.x, x_1920.y) * vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y)) + vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1926.y));
        let x_1929 : vec4<f32> = u_xlat6;
        let x_1932 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1935 : vec4<f32> = u_xlat11;
        let x_1937 : vec2<f32> = ((vec2<f32>(x_1929.x, x_1929.y) * vec2<f32>(x_1932.x, x_1932.y)) + vec2<f32>(x_1935.w, x_1935.y));
        let x_1938 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1938.w);
        let x_1941 : f32 = u_xlat11.y;
        u_xlat8.z = x_1941;
        let x_1944 : vec4<f32> = u_xlat6;
        let x_1947 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1950 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1944.x, x_1944.y, x_1944.x, x_1944.y) * vec4<f32>(x_1947.x, x_1947.y, x_1947.x, x_1947.y)) + vec4<f32>(x_1950.x, x_1950.y, x_1950.x, x_1950.z));
        let x_1954 : f32 = u_xlat9.w;
        u_xlat11.y = x_1954;
        let x_1957 : vec4<f32> = u_xlat6;
        let x_1960 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1963 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1957.x, x_1957.y, x_1957.x, x_1957.y) * vec4<f32>(x_1960.x, x_1960.y, x_1960.x, x_1960.y)) + vec4<f32>(x_1963.x, x_1963.y, x_1963.z, x_1963.y));
        let x_1967 : vec4<f32> = u_xlat6;
        let x_1970 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1973 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1967.x, x_1967.y) * vec2<f32>(x_1970.x, x_1970.y)) + vec2<f32>(x_1973.w, x_1973.y));
        let x_1977 : f32 = u_xlat11.y;
        u_xlat8.w = x_1977;
        let x_1980 : vec4<f32> = u_xlat6;
        let x_1983 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1986 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1980.x, x_1980.y) * vec2<f32>(x_1983.x, x_1983.y)) + vec2<f32>(x_1986.x, x_1986.w));
        let x_1989 : vec4<f32> = u_xlat11;
        let x_1990 : vec3<f32> = vec3<f32>(x_1989.x, x_1989.z, x_1989.w);
        let x_1991 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1990.x, x_1991.y, x_1990.y, x_1990.z);
        let x_1993 : vec4<f32> = u_xlat6;
        let x_1996 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1999 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1993.x, x_1993.y, x_1993.x, x_1993.y) * vec4<f32>(x_1996.x, x_1996.y, x_1996.x, x_1996.y)) + vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_1999.y));
        let x_2003 : vec4<f32> = u_xlat6;
        let x_2006 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2009 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2003.x, x_2003.y) * vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(x_2009.w, x_2009.y));
        let x_2013 : f32 = u_xlat8.x;
        u_xlat9.x = x_2013;
        let x_2015 : vec4<f32> = u_xlat6;
        let x_2018 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2021 : vec4<f32> = u_xlat9;
        let x_2023 : vec2<f32> = ((vec2<f32>(x_2015.x, x_2015.y) * vec2<f32>(x_2018.x, x_2018.y)) + vec2<f32>(x_2021.x, x_2021.y));
        let x_2024 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2023.x, x_2023.y, x_2024.z, x_2024.w);
        let x_2027 : vec4<f32> = u_xlat7;
        let x_2029 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2027.x, x_2027.x, x_2027.x, x_2027.x) * x_2029);
        let x_2032 : vec4<f32> = u_xlat7;
        let x_2034 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2032.y, x_2032.y, x_2032.y, x_2032.y) * x_2034);
        let x_2037 : vec4<f32> = u_xlat7;
        let x_2039 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2037.z, x_2037.z, x_2037.z, x_2037.z) * x_2039);
        let x_2041 : vec4<f32> = u_xlat7;
        let x_2043 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2041.w, x_2041.w, x_2041.w, x_2041.w) * x_2043);
        let x_2046 : vec4<f32> = u_xlat12;
        let x_2047 : vec2<f32> = vec2<f32>(x_2046.x, x_2046.y);
        let x_2049 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2047.x, x_2047.y, x_2049);
        let x_2056 : vec3<f32> = txVec13;
        let x_2058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2056.xy, x_2056.z);
        u_xlat83 = x_2058;
        let x_2060 : vec4<f32> = u_xlat12;
        let x_2061 : vec2<f32> = vec2<f32>(x_2060.z, x_2060.w);
        let x_2063 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2061.x, x_2061.y, x_2063);
        let x_2070 : vec3<f32> = txVec14;
        let x_2072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2070.xy, x_2070.z);
        u_xlat8.x = x_2072;
        let x_2075 : f32 = u_xlat8.x;
        let x_2077 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2075 * x_2077);
        let x_2081 : f32 = u_xlat17.x;
        let x_2082 : f32 = u_xlat83;
        let x_2085 : f32 = u_xlat8.x;
        u_xlat83 = ((x_2081 * x_2082) + x_2085);
        let x_2088 : vec2<f32> = u_xlat58;
        let x_2090 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
        let x_2097 : vec3<f32> = txVec15;
        let x_2099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2097.xy, x_2097.z);
        u_xlat58.x = x_2099;
        let x_2102 : f32 = u_xlat17.z;
        let x_2104 : f32 = u_xlat58.x;
        let x_2106 : f32 = u_xlat83;
        u_xlat83 = ((x_2102 * x_2104) + x_2106);
        let x_2109 : vec4<f32> = u_xlat15;
        let x_2110 : vec2<f32> = vec2<f32>(x_2109.x, x_2109.y);
        let x_2112 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec16;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2119.xy, x_2119.z);
        u_xlat58.x = x_2121;
        let x_2124 : f32 = u_xlat17.w;
        let x_2126 : f32 = u_xlat58.x;
        let x_2128 : f32 = u_xlat83;
        u_xlat83 = ((x_2124 * x_2126) + x_2128);
        let x_2131 : vec4<f32> = u_xlat13;
        let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
        let x_2134 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
        let x_2141 : vec3<f32> = txVec17;
        let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
        u_xlat58.x = x_2143;
        let x_2146 : f32 = u_xlat18.x;
        let x_2148 : f32 = u_xlat58.x;
        let x_2150 : f32 = u_xlat83;
        u_xlat83 = ((x_2146 * x_2148) + x_2150);
        let x_2153 : vec4<f32> = u_xlat13;
        let x_2154 : vec2<f32> = vec2<f32>(x_2153.z, x_2153.w);
        let x_2156 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2154.x, x_2154.y, x_2156);
        let x_2163 : vec3<f32> = txVec18;
        let x_2165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2163.xy, x_2163.z);
        u_xlat58.x = x_2165;
        let x_2168 : f32 = u_xlat18.y;
        let x_2170 : f32 = u_xlat58.x;
        let x_2172 : f32 = u_xlat83;
        u_xlat83 = ((x_2168 * x_2170) + x_2172);
        let x_2175 : vec4<f32> = u_xlat14;
        let x_2176 : vec2<f32> = vec2<f32>(x_2175.x, x_2175.y);
        let x_2178 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2176.x, x_2176.y, x_2178);
        let x_2185 : vec3<f32> = txVec19;
        let x_2187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2185.xy, x_2185.z);
        u_xlat58.x = x_2187;
        let x_2190 : f32 = u_xlat18.z;
        let x_2192 : f32 = u_xlat58.x;
        let x_2194 : f32 = u_xlat83;
        u_xlat83 = ((x_2190 * x_2192) + x_2194);
        let x_2197 : vec4<f32> = u_xlat15;
        let x_2198 : vec2<f32> = vec2<f32>(x_2197.z, x_2197.w);
        let x_2200 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2198.x, x_2198.y, x_2200);
        let x_2207 : vec3<f32> = txVec20;
        let x_2209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2207.xy, x_2207.z);
        u_xlat58.x = x_2209;
        let x_2212 : f32 = u_xlat18.w;
        let x_2214 : f32 = u_xlat58.x;
        let x_2216 : f32 = u_xlat83;
        u_xlat83 = ((x_2212 * x_2214) + x_2216);
        let x_2219 : vec4<f32> = u_xlat16;
        let x_2220 : vec2<f32> = vec2<f32>(x_2219.x, x_2219.y);
        let x_2222 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2220.x, x_2220.y, x_2222);
        let x_2229 : vec3<f32> = txVec21;
        let x_2231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2229.xy, x_2229.z);
        u_xlat58.x = x_2231;
        let x_2234 : f32 = u_xlat19.x;
        let x_2236 : f32 = u_xlat58.x;
        let x_2238 : f32 = u_xlat83;
        u_xlat83 = ((x_2234 * x_2236) + x_2238);
        let x_2241 : vec4<f32> = u_xlat16;
        let x_2242 : vec2<f32> = vec2<f32>(x_2241.z, x_2241.w);
        let x_2244 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2242.x, x_2242.y, x_2244);
        let x_2251 : vec3<f32> = txVec22;
        let x_2253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2251.xy, x_2251.z);
        u_xlat58.x = x_2253;
        let x_2256 : f32 = u_xlat19.y;
        let x_2258 : f32 = u_xlat58.x;
        let x_2260 : f32 = u_xlat83;
        u_xlat83 = ((x_2256 * x_2258) + x_2260);
        let x_2263 : vec2<f32> = u_xlat34;
        let x_2265 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2263.x, x_2263.y, x_2265);
        let x_2272 : vec3<f32> = txVec23;
        let x_2274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2272.xy, x_2272.z);
        u_xlat58.x = x_2274;
        let x_2277 : f32 = u_xlat19.z;
        let x_2279 : f32 = u_xlat58.x;
        let x_2281 : f32 = u_xlat83;
        u_xlat83 = ((x_2277 * x_2279) + x_2281);
        let x_2284 : vec2<f32> = u_xlat66;
        let x_2286 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2284.x, x_2284.y, x_2286);
        let x_2293 : vec3<f32> = txVec24;
        let x_2295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2293.xy, x_2293.z);
        u_xlat58.x = x_2295;
        let x_2298 : f32 = u_xlat19.w;
        let x_2300 : f32 = u_xlat58.x;
        let x_2302 : f32 = u_xlat83;
        u_xlat83 = ((x_2298 * x_2300) + x_2302);
        let x_2305 : vec4<f32> = u_xlat11;
        let x_2306 : vec2<f32> = vec2<f32>(x_2305.x, x_2305.y);
        let x_2308 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2306.x, x_2306.y, x_2308);
        let x_2315 : vec3<f32> = txVec25;
        let x_2317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2315.xy, x_2315.z);
        u_xlat58.x = x_2317;
        let x_2320 : f32 = u_xlat7.x;
        let x_2322 : f32 = u_xlat58.x;
        let x_2324 : f32 = u_xlat83;
        u_xlat83 = ((x_2320 * x_2322) + x_2324);
        let x_2327 : vec4<f32> = u_xlat11;
        let x_2328 : vec2<f32> = vec2<f32>(x_2327.z, x_2327.w);
        let x_2330 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2328.x, x_2328.y, x_2330);
        let x_2337 : vec3<f32> = txVec26;
        let x_2339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2337.xy, x_2337.z);
        u_xlat58.x = x_2339;
        let x_2342 : f32 = u_xlat7.y;
        let x_2344 : f32 = u_xlat58.x;
        let x_2346 : f32 = u_xlat83;
        u_xlat83 = ((x_2342 * x_2344) + x_2346);
        let x_2349 : vec2<f32> = u_xlat61;
        let x_2351 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
        let x_2358 : vec3<f32> = txVec27;
        let x_2360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2358.xy, x_2358.z);
        u_xlat58.x = x_2360;
        let x_2363 : f32 = u_xlat7.z;
        let x_2365 : f32 = u_xlat58.x;
        let x_2367 : f32 = u_xlat83;
        u_xlat83 = ((x_2363 * x_2365) + x_2367);
        let x_2370 : vec4<f32> = u_xlat6;
        let x_2371 : vec2<f32> = vec2<f32>(x_2370.x, x_2370.y);
        let x_2373 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
        let x_2380 : vec3<f32> = txVec28;
        let x_2382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
        u_xlat6.x = x_2382;
        let x_2385 : f32 = u_xlat7.w;
        let x_2387 : f32 = u_xlat6.x;
        let x_2389 : f32 = u_xlat83;
        u_xlat82 = ((x_2385 * x_2387) + x_2389);
      }
    }
  } else {
    let x_2393 : vec4<f32> = u_xlat2;
    let x_2394 : vec2<f32> = vec2<f32>(x_2393.x, x_2393.y);
    let x_2396 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2394.x, x_2394.y, x_2396);
    let x_2403 : vec3<f32> = txVec29;
    let x_2405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2403.xy, x_2403.z);
    u_xlat82 = x_2405;
  }
  let x_2407 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2407) + 1.0f);
  let x_2411 : f32 = u_xlat82;
  let x_2413 : f32 = x_845.x_MainLightShadowParams.x;
  let x_2416 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2411 * x_2413) + x_2416);
  let x_2421 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2421);
  let x_2425 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2425 >= 1.0f);
  let x_2427 : bool = u_xlatb54;
  let x_2428 : bool = u_xlatb28;
  u_xlatb28 = (x_2427 | x_2428);
  let x_2430 : bool = u_xlatb28;
  if (x_2430) {
    x_2432 = 1.0f;
  } else {
    let x_2437 : f32 = u_xlat2.x;
    x_2432 = x_2437;
  }
  let x_2438 : f32 = x_2432;
  u_xlat2.x = x_2438;
  let x_2440 : vec3<f32> = vs_TEXCOORD7;
  let x_2443 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2445 : vec3<f32> = (x_2440 + -(x_2443));
  let x_2446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  let x_2448 : vec4<f32> = u_xlat6;
  let x_2450 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_2448.x, x_2448.y, x_2448.z), vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2456 : f32 = u_xlat28.x;
  let x_2458 : f32 = x_845.x_MainLightShadowParams.z;
  let x_2461 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2456 * x_2458) + x_2461);
  let x_2463 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2463, 0.0f, 1.0f);
  let x_2466 : f32 = u_xlat2.x;
  u_xlat82 = (-(x_2466) + 1.0f);
  let x_2469 : f32 = u_xlat54;
  let x_2470 : f32 = u_xlat82;
  let x_2473 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2469 * x_2470) + x_2473);
  let x_2483 : f32 = x_2481.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2483 == -1.0f));
  let x_2485 : bool = u_xlatb54;
  if (x_2485) {
    let x_2488 : vec3<f32> = vs_TEXCOORD7;
    let x_2491 : vec4<f32> = x_2481.x_MainLightWorldToLight[1i];
    let x_2493 : vec2<f32> = (vec2<f32>(x_2488.y, x_2488.y) * vec2<f32>(x_2491.x, x_2491.y));
    let x_2494 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2493.x, x_2493.y, x_2494.z, x_2494.w);
    let x_2497 : vec4<f32> = x_2481.x_MainLightWorldToLight[0i];
    let x_2499 : vec3<f32> = vs_TEXCOORD7;
    let x_2502 : vec4<f32> = u_xlat6;
    let x_2504 : vec2<f32> = ((vec2<f32>(x_2497.x, x_2497.y) * vec2<f32>(x_2499.x, x_2499.x)) + vec2<f32>(x_2502.x, x_2502.y));
    let x_2505 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2504.x, x_2504.y, x_2505.z, x_2505.w);
    let x_2508 : vec4<f32> = x_2481.x_MainLightWorldToLight[2i];
    let x_2510 : vec3<f32> = vs_TEXCOORD7;
    let x_2513 : vec4<f32> = u_xlat6;
    let x_2515 : vec2<f32> = ((vec2<f32>(x_2508.x, x_2508.y) * vec2<f32>(x_2510.z, x_2510.z)) + vec2<f32>(x_2513.x, x_2513.y));
    let x_2516 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2515.x, x_2515.y, x_2516.z, x_2516.w);
    let x_2518 : vec4<f32> = u_xlat6;
    let x_2521 : vec4<f32> = x_2481.x_MainLightWorldToLight[3i];
    let x_2523 : vec2<f32> = (vec2<f32>(x_2518.x, x_2518.y) + vec2<f32>(x_2521.x, x_2521.y));
    let x_2524 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2523.x, x_2523.y, x_2524.z, x_2524.w);
    let x_2526 : vec4<f32> = u_xlat6;
    let x_2529 : vec2<f32> = ((vec2<f32>(x_2526.x, x_2526.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2530 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2529.x, x_2529.y, x_2530.z, x_2530.w);
    let x_2537 : vec4<f32> = u_xlat6;
    let x_2540 : f32 = x_112.x_GlobalMipBias.x;
    let x_2541 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2537.x, x_2537.y), x_2540);
    u_xlat6 = x_2541;
    let x_2546 : f32 = x_2481.x_MainLightCookieTextureFormat;
    let x_2548 : f32 = x_2481.x_MainLightCookieTextureFormat;
    let x_2550 : f32 = x_2481.x_MainLightCookieTextureFormat;
    let x_2552 : f32 = x_2481.x_MainLightCookieTextureFormat;
    let x_2553 : vec4<f32> = vec4<f32>(x_2546, x_2548, x_2550, x_2552);
    let x_2560 : vec4<bool> = (vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2553.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2560.x, x_2560.y);
    let x_2563 : bool = u_xlatb7.y;
    if (x_2563) {
      let x_2568 : f32 = u_xlat6.w;
      x_2564 = x_2568;
    } else {
      let x_2571 : f32 = u_xlat6.x;
      x_2564 = x_2571;
    }
    let x_2572 : f32 = x_2564;
    u_xlat54 = x_2572;
    let x_2574 : bool = u_xlatb7.x;
    if (x_2574) {
      let x_2578 : vec4<f32> = u_xlat6;
      x_2575 = vec3<f32>(x_2578.x, x_2578.y, x_2578.z);
    } else {
      let x_2581 : f32 = u_xlat54;
      x_2575 = vec3<f32>(x_2581, x_2581, x_2581);
    }
    let x_2583 : vec3<f32> = x_2575;
    let x_2584 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2590 : vec4<f32> = u_xlat6;
  let x_2593 : vec4<f32> = x_112.x_MainLightColor;
  let x_2595 : vec3<f32> = (vec3<f32>(x_2590.x, x_2590.y, x_2590.z) * vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
  let x_2596 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
  let x_2600 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2600;
  let x_2603 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2603;
  let x_2606 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2606;
  let x_2608 : vec4<f32> = u_xlat7;
  let x_2611 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2608.x, x_2608.y, x_2608.z)), vec3<f32>(x_2611.x, x_2611.y, x_2611.z));
  let x_2614 : f32 = u_xlat54;
  let x_2615 : f32 = u_xlat54;
  u_xlat54 = (x_2614 + x_2615);
  let x_2617 : vec4<f32> = u_xlat1;
  let x_2619 : f32 = u_xlat54;
  let x_2623 : vec4<f32> = u_xlat7;
  let x_2626 : vec3<f32> = ((vec3<f32>(x_2617.x, x_2617.y, x_2617.z) * -(vec3<f32>(x_2619, x_2619, x_2619))) + -(vec3<f32>(x_2623.x, x_2623.y, x_2623.z)));
  let x_2627 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
  let x_2629 : vec4<f32> = u_xlat1;
  let x_2631 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2629.x, x_2629.y, x_2629.z), vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
  let x_2634 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2634, 0.0f, 1.0f);
  let x_2636 : f32 = u_xlat54;
  u_xlat54 = (-(x_2636) + 1.0f);
  let x_2639 : f32 = u_xlat54;
  let x_2640 : f32 = u_xlat54;
  u_xlat54 = (x_2639 * x_2640);
  let x_2642 : f32 = u_xlat54;
  let x_2643 : f32 = u_xlat54;
  u_xlat54 = (x_2642 * x_2643);
  let x_2646 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2646) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2653 : f32 = u_xlat0.x;
  let x_2654 : f32 = u_xlat82;
  u_xlat0.x = (x_2653 * x_2654);
  let x_2658 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2658 * 6.0f);
  let x_2670 : vec4<f32> = u_xlat8;
  let x_2673 : f32 = u_xlat0.x;
  let x_2674 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2670.x, x_2670.y, x_2670.z), x_2673);
  u_xlat8 = x_2674;
  let x_2676 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2676 + -1.0f);
  let x_2680 : f32 = x_1025.unity_SpecCube0_HDR.w;
  let x_2682 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2680 * x_2682) + 1.0f);
  let x_2687 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2687, 0.0f);
  let x_2691 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2691);
  let x_2695 : f32 = u_xlat0.x;
  let x_2697 : f32 = x_1025.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2695 * x_2697);
  let x_2701 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2701);
  let x_2705 : f32 = u_xlat0.x;
  let x_2707 : f32 = x_1025.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2705 * x_2707);
  let x_2710 : vec4<f32> = u_xlat8;
  let x_2712 : vec3<f32> = u_xlat0;
  let x_2714 : vec3<f32> = (vec3<f32>(x_2710.x, x_2710.y, x_2710.z) * vec3<f32>(x_2712.x, x_2712.x, x_2712.x));
  let x_2715 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2714.x, x_2714.y, x_2714.z, x_2715.w);
  let x_2717 : f32 = u_xlat79;
  let x_2719 : f32 = u_xlat79;
  let x_2723 : vec2<f32> = ((vec2<f32>(x_2717, x_2717) * vec2<f32>(x_2719, x_2719)) + vec2<f32>(-1.0f, 1.0f));
  let x_2724 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
  let x_2727 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2727);
  let x_2731 : vec4<f32> = u_xlat5;
  let x_2734 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2731.x, x_2731.y, x_2731.z)) + vec3<f32>(x_2734, x_2734, x_2734));
  let x_2737 : f32 = u_xlat54;
  let x_2739 : vec3<f32> = u_xlat35;
  let x_2741 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2737, x_2737, x_2737) * x_2739) + vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
  let x_2744 : vec3<f32> = u_xlat0;
  let x_2746 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2744.x, x_2744.x, x_2744.x) * x_2746);
  let x_2748 : vec4<f32> = u_xlat8;
  let x_2750 : vec3<f32> = u_xlat35;
  let x_2751 : vec3<f32> = (vec3<f32>(x_2748.x, x_2748.y, x_2748.z) * x_2750);
  let x_2752 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
  let x_2754 : vec4<f32> = u_xlat3;
  let x_2756 : vec4<f32> = u_xlat4;
  let x_2759 : vec4<f32> = u_xlat8;
  let x_2761 : vec3<f32> = ((vec3<f32>(x_2754.x, x_2754.y, x_2754.z) * vec3<f32>(x_2756.x, x_2756.y, x_2756.z)) + vec3<f32>(x_2759.x, x_2759.y, x_2759.z));
  let x_2762 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
  let x_2765 : f32 = u_xlat2.x;
  let x_2767 : f32 = x_1025.unity_LightData.z;
  u_xlat0.x = (x_2765 * x_2767);
  let x_2770 : vec4<f32> = u_xlat1;
  let x_2773 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2770.x, x_2770.y, x_2770.z), vec3<f32>(x_2773.x, x_2773.y, x_2773.z));
  let x_2776 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2776, 0.0f, 1.0f);
  let x_2778 : f32 = u_xlat52;
  let x_2780 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2778 * x_2780);
  let x_2783 : vec3<f32> = u_xlat0;
  let x_2785 : vec4<f32> = u_xlat6;
  let x_2787 : vec3<f32> = (vec3<f32>(x_2783.x, x_2783.x, x_2783.x) * vec3<f32>(x_2785.x, x_2785.y, x_2785.z));
  let x_2788 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2788.w);
  let x_2790 : vec4<f32> = u_xlat7;
  let x_2793 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2795 : vec3<f32> = (vec3<f32>(x_2790.x, x_2790.y, x_2790.z) + vec3<f32>(x_2793.x, x_2793.y, x_2793.z));
  let x_2796 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
  let x_2798 : vec4<f32> = u_xlat8;
  let x_2800 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2798.x, x_2798.y, x_2798.z), vec3<f32>(x_2800.x, x_2800.y, x_2800.z));
  let x_2805 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2805, 1.17549435e-38f);
  let x_2810 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2810);
  let x_2813 : vec3<f32> = u_xlat0;
  let x_2815 : vec4<f32> = u_xlat8;
  let x_2817 : vec3<f32> = (vec3<f32>(x_2813.x, x_2813.x, x_2813.x) * vec3<f32>(x_2815.x, x_2815.y, x_2815.z));
  let x_2818 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2818.w);
  let x_2820 : vec4<f32> = u_xlat1;
  let x_2822 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2820.x, x_2820.y, x_2820.z), vec3<f32>(x_2822.x, x_2822.y, x_2822.z));
  let x_2827 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2827, 0.0f, 1.0f);
  let x_2831 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2833 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2831.x, x_2831.y, x_2831.z), vec3<f32>(x_2833.x, x_2833.y, x_2833.z));
  let x_2838 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2838, 0.0f, 1.0f);
  let x_2841 : vec3<f32> = u_xlat0;
  let x_2843 : vec3<f32> = u_xlat0;
  let x_2845 : vec2<f32> = (vec2<f32>(x_2841.x, x_2841.z) * vec2<f32>(x_2843.x, x_2843.z));
  let x_2846 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2845.x, x_2846.y, x_2845.y);
  let x_2849 : f32 = u_xlat0.x;
  let x_2851 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2849 * x_2851) + 1.00001001358032226562f);
  let x_2857 : f32 = u_xlat0.x;
  let x_2859 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2857 * x_2859);
  let x_2863 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2863, 0.10000000149011611938f);
  let x_2866 : f32 = u_xlat52;
  let x_2868 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2866 * x_2868);
  let x_2871 : f32 = u_xlat80;
  let x_2873 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2871 * x_2873);
  let x_2876 : f32 = u_xlat81;
  let x_2878 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2876 / x_2878);
  let x_2881 : vec4<f32> = u_xlat5;
  let x_2883 : vec3<f32> = u_xlat0;
  let x_2886 : vec4<f32> = u_xlat4;
  let x_2888 : vec3<f32> = ((vec3<f32>(x_2881.x, x_2881.y, x_2881.z) * vec3<f32>(x_2883.x, x_2883.x, x_2883.x)) + vec3<f32>(x_2886.x, x_2886.y, x_2886.z));
  let x_2889 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2888.x, x_2888.y, x_2888.z, x_2889.w);
  let x_2891 : vec4<f32> = u_xlat6;
  let x_2893 : vec4<f32> = u_xlat8;
  let x_2895 : vec3<f32> = (vec3<f32>(x_2891.x, x_2891.y, x_2891.z) * vec3<f32>(x_2893.x, x_2893.y, x_2893.z));
  let x_2896 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2896.w);
  let x_2899 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2901 : f32 = x_1025.unity_LightData.y;
  u_xlat0.x = min(x_2899, x_2901);
  let x_2906 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2906));
  let x_2910 : f32 = u_xlat28.x;
  let x_2912 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_2915 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2910 * x_2912) + x_2915);
  let x_2917 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2917, 0.0f, 1.0f);
  let x_2920 : f32 = x_2481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2922 : f32 = x_2481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2924 : f32 = x_2481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2926 : f32 = x_2481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2927 : vec4<f32> = vec4<f32>(x_2920, x_2922, x_2924, x_2926);
  let x_2933 : vec4<bool> = (vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2927.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2934 : vec2<bool> = vec2<bool>(x_2933.x, x_2933.y);
  let x_2935 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2947 : u32 = u_xlatu_loop_1;
    let x_2948 : u32 = u_xlatu0;
    if ((x_2947 < x_2948)) {
    } else {
      break;
    }
    let x_2951 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2951 >> 2u);
    let x_2954 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2954 & 3u));
    let x_2957 : u32 = u_xlatu54;
    let x_2960 : vec4<f32> = x_1025.unity_LightIndices[bitcast<i32>(x_2957)];
    let x_2970 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2975 : vec4<u32> = indexable[x_2970];
    u_xlat54 = dot(x_2960, bitcast<vec4<f32>>(x_2975));
    let x_2979 : f32 = u_xlat54;
    u_xlati54 = i32(x_2979);
    let x_2981 : vec3<f32> = vs_TEXCOORD7;
    let x_2992 : i32 = u_xlati54;
    let x_2994 : vec4<f32> = x_2991.x_AdditionalLightsPosition[x_2992];
    let x_2997 : i32 = u_xlati54;
    let x_2999 : vec4<f32> = x_2991.x_AdditionalLightsPosition[x_2997];
    u_xlat35 = ((-(x_2981) * vec3<f32>(x_2994.w, x_2994.w, x_2994.w)) + vec3<f32>(x_2999.x, x_2999.y, x_2999.z));
    let x_3002 : vec3<f32> = u_xlat35;
    let x_3003 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_3002, x_3003);
    let x_3005 : f32 = u_xlat82;
    u_xlat82 = max(x_3005, 0.00006103515625f);
    let x_3007 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3007);
    let x_3009 : f32 = u_xlat83;
    let x_3011 : vec3<f32> = u_xlat35;
    let x_3012 : vec3<f32> = (vec3<f32>(x_3009, x_3009, x_3009) * x_3011);
    let x_3013 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3013.w);
    let x_3016 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3016);
    let x_3018 : f32 = u_xlat82;
    let x_3019 : i32 = u_xlati54;
    let x_3021 : f32 = x_2991.x_AdditionalLightsAttenuation[x_3019].x;
    u_xlat82 = (x_3018 * x_3021);
    let x_3023 : f32 = u_xlat82;
    let x_3025 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3023) * x_3025) + 1.0f);
    let x_3028 : f32 = u_xlat82;
    u_xlat82 = max(x_3028, 0.0f);
    let x_3030 : f32 = u_xlat82;
    let x_3031 : f32 = u_xlat82;
    u_xlat82 = (x_3030 * x_3031);
    let x_3033 : f32 = u_xlat82;
    let x_3034 : f32 = u_xlat84;
    u_xlat82 = (x_3033 * x_3034);
    let x_3036 : i32 = u_xlati54;
    let x_3038 : vec4<f32> = x_2991.x_AdditionalLightsSpotDir[x_3036];
    let x_3040 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3038.x, x_3038.y, x_3038.z), vec3<f32>(x_3040.x, x_3040.y, x_3040.z));
    let x_3043 : f32 = u_xlat84;
    let x_3044 : i32 = u_xlati54;
    let x_3046 : f32 = x_2991.x_AdditionalLightsAttenuation[x_3044].z;
    let x_3048 : i32 = u_xlati54;
    let x_3050 : f32 = x_2991.x_AdditionalLightsAttenuation[x_3048].w;
    u_xlat84 = ((x_3043 * x_3046) + x_3050);
    let x_3052 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3052, 0.0f, 1.0f);
    let x_3054 : f32 = u_xlat84;
    let x_3055 : f32 = u_xlat84;
    u_xlat84 = (x_3054 * x_3055);
    let x_3057 : f32 = u_xlat82;
    let x_3058 : f32 = u_xlat84;
    u_xlat82 = (x_3057 * x_3058);
    let x_3061 : i32 = u_xlati54;
    let x_3063 : f32 = x_845.x_AdditionalShadowParams[x_3061].w;
    u_xlati84 = i32(x_3063);
    let x_3066 : i32 = u_xlati84;
    u_xlatb85 = (x_3066 >= 0i);
    let x_3068 : bool = u_xlatb85;
    if (x_3068) {
      let x_3072 : i32 = u_xlati54;
      let x_3074 : f32 = x_845.x_AdditionalShadowParams[x_3072].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3074, x_3074, x_3074, x_3074))));
      let x_3078 : bool = u_xlatb85;
      if (x_3078) {
        let x_3082 : vec4<f32> = u_xlat10;
        let x_3085 : vec4<f32> = u_xlat10;
        let x_3088 : vec4<bool> = (abs(vec4<f32>(x_3082.z, x_3082.z, x_3082.y, x_3082.z)) >= abs(vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.x)));
        let x_3090 : vec3<bool> = vec3<bool>(x_3088.x, x_3088.y, x_3088.z);
        let x_3091 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3090.x, x_3090.y, x_3090.z, x_3091.w);
        let x_3094 : bool = u_xlatb11.y;
        let x_3096 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3094 & x_3096);
        let x_3098 : vec4<f32> = u_xlat10;
        let x_3101 : vec4<bool> = (-(vec4<f32>(x_3098.z, x_3098.y, x_3098.z, x_3098.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3102 : vec3<bool> = vec3<bool>(x_3101.x, x_3101.y, x_3101.w);
        let x_3103 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3102.x, x_3102.y, x_3103.z, x_3102.z);
        let x_3106 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3106);
        let x_3111 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3111);
        let x_3116 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_3116);
        let x_3119 : bool = u_xlatb11.z;
        if (x_3119) {
          let x_3124 : f32 = u_xlat11.y;
          x_3120 = x_3124;
        } else {
          let x_3126 : f32 = u_xlat86;
          x_3120 = x_3126;
        }
        let x_3127 : f32 = x_3120;
        u_xlat86 = x_3127;
        let x_3129 : bool = u_xlatb85;
        if (x_3129) {
          let x_3134 : f32 = u_xlat11.x;
          x_3130 = x_3134;
        } else {
          let x_3136 : f32 = u_xlat86;
          x_3130 = x_3136;
        }
        let x_3137 : f32 = x_3130;
        u_xlat85 = x_3137;
        let x_3138 : i32 = u_xlati54;
        let x_3140 : f32 = x_845.x_AdditionalShadowParams[x_3138].w;
        u_xlat86 = trunc(x_3140);
        let x_3142 : f32 = u_xlat85;
        let x_3143 : f32 = u_xlat86;
        u_xlat85 = (x_3142 + x_3143);
        let x_3145 : f32 = u_xlat85;
        u_xlati84 = i32(x_3145);
      }
      let x_3147 : i32 = u_xlati84;
      u_xlati84 = (x_3147 << bitcast<u32>(2i));
      let x_3149 : vec3<f32> = vs_TEXCOORD7;
      let x_3151 : i32 = u_xlati84;
      let x_3154 : i32 = u_xlati84;
      let x_3158 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3151 + 1i) / 4i)][((x_3154 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3149.y, x_3149.y, x_3149.y, x_3149.y) * x_3158);
      let x_3160 : i32 = u_xlati84;
      let x_3162 : i32 = u_xlati84;
      let x_3165 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_3160 / 4i)][(x_3162 % 4i)];
      let x_3166 : vec3<f32> = vs_TEXCOORD7;
      let x_3169 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3165 * vec4<f32>(x_3166.x, x_3166.x, x_3166.x, x_3166.x)) + x_3169);
      let x_3171 : i32 = u_xlati84;
      let x_3174 : i32 = u_xlati84;
      let x_3178 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3171 + 2i) / 4i)][((x_3174 + 2i) % 4i)];
      let x_3179 : vec3<f32> = vs_TEXCOORD7;
      let x_3182 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3178 * vec4<f32>(x_3179.z, x_3179.z, x_3179.z, x_3179.z)) + x_3182);
      let x_3184 : vec4<f32> = u_xlat11;
      let x_3185 : i32 = u_xlati84;
      let x_3188 : i32 = u_xlati84;
      let x_3192 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3185 + 3i) / 4i)][((x_3188 + 3i) % 4i)];
      u_xlat11 = (x_3184 + x_3192);
      let x_3194 : vec4<f32> = u_xlat11;
      let x_3196 : vec4<f32> = u_xlat11;
      let x_3198 : vec3<f32> = (vec3<f32>(x_3194.x, x_3194.y, x_3194.z) / vec3<f32>(x_3196.w, x_3196.w, x_3196.w));
      let x_3199 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3198.x, x_3198.y, x_3198.z, x_3199.w);
      let x_3202 : i32 = u_xlati54;
      let x_3204 : f32 = x_845.x_AdditionalShadowParams[x_3202].y;
      u_xlatb84 = (0.0f < x_3204);
      let x_3206 : bool = u_xlatb84;
      if (x_3206) {
        let x_3209 : i32 = u_xlati54;
        let x_3211 : f32 = x_845.x_AdditionalShadowParams[x_3209].y;
        u_xlatb84 = (1.0f == x_3211);
        let x_3213 : bool = u_xlatb84;
        if (x_3213) {
          let x_3216 : vec4<f32> = u_xlat11;
          let x_3219 : vec4<f32> = x_845.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3216.x, x_3216.y, x_3216.x, x_3216.y) + x_3219);
          let x_3222 : vec4<f32> = u_xlat12;
          let x_3223 : vec2<f32> = vec2<f32>(x_3222.x, x_3222.y);
          let x_3225 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
          let x_3233 : vec3<f32> = txVec30;
          let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
          u_xlat13.x = x_3235;
          let x_3238 : vec4<f32> = u_xlat12;
          let x_3239 : vec2<f32> = vec2<f32>(x_3238.z, x_3238.w);
          let x_3241 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3239.x, x_3239.y, x_3241);
          let x_3248 : vec3<f32> = txVec31;
          let x_3250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3248.xy, x_3248.z);
          u_xlat13.y = x_3250;
          let x_3252 : vec4<f32> = u_xlat11;
          let x_3255 : vec4<f32> = x_845.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3252.x, x_3252.y, x_3252.x, x_3252.y) + x_3255);
          let x_3258 : vec4<f32> = u_xlat12;
          let x_3259 : vec2<f32> = vec2<f32>(x_3258.x, x_3258.y);
          let x_3261 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3259.x, x_3259.y, x_3261);
          let x_3268 : vec3<f32> = txVec32;
          let x_3270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3268.xy, x_3268.z);
          u_xlat13.z = x_3270;
          let x_3273 : vec4<f32> = u_xlat12;
          let x_3274 : vec2<f32> = vec2<f32>(x_3273.z, x_3273.w);
          let x_3276 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3274.x, x_3274.y, x_3276);
          let x_3283 : vec3<f32> = txVec33;
          let x_3285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3283.xy, x_3283.z);
          u_xlat13.w = x_3285;
          let x_3287 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3287, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3290 : i32 = u_xlati54;
          let x_3292 : f32 = x_845.x_AdditionalShadowParams[x_3290].y;
          u_xlatb85 = (2.0f == x_3292);
          let x_3294 : bool = u_xlatb85;
          if (x_3294) {
            let x_3297 : vec4<f32> = u_xlat11;
            let x_3300 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3303 : vec2<f32> = ((vec2<f32>(x_3297.x, x_3297.y) * vec2<f32>(x_3300.z, x_3300.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3304 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3303.x, x_3303.y, x_3304.z, x_3304.w);
            let x_3306 : vec4<f32> = u_xlat12;
            let x_3308 : vec2<f32> = floor(vec2<f32>(x_3306.x, x_3306.y));
            let x_3309 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3308.x, x_3308.y, x_3309.z, x_3309.w);
            let x_3312 : vec4<f32> = u_xlat11;
            let x_3315 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3318 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3312.x, x_3312.y) * vec2<f32>(x_3315.z, x_3315.w)) + -(vec2<f32>(x_3318.x, x_3318.y)));
            let x_3322 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3322.x, x_3322.x, x_3322.y, x_3322.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3325 : vec4<f32> = u_xlat13;
            let x_3327 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3325.x, x_3325.x, x_3325.z, x_3325.z) * vec4<f32>(x_3327.x, x_3327.x, x_3327.z, x_3327.z));
            let x_3330 : vec4<f32> = u_xlat14;
            let x_3332 : vec2<f32> = (vec2<f32>(x_3330.y, x_3330.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3333 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3332.x, x_3333.y, x_3332.y, x_3333.w);
            let x_3335 : vec4<f32> = u_xlat14;
            let x_3338 : vec2<f32> = u_xlat64;
            let x_3340 : vec2<f32> = ((vec2<f32>(x_3335.x, x_3335.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3338));
            let x_3341 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3340.x, x_3340.y, x_3341.z, x_3341.w);
            let x_3343 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3343) + vec2<f32>(1.0f, 1.0f));
            let x_3346 : vec2<f32> = u_xlat64;
            let x_3347 : vec2<f32> = min(x_3346, vec2<f32>(0.0f, 0.0f));
            let x_3348 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3347.x, x_3347.y, x_3348.z, x_3348.w);
            let x_3350 : vec4<f32> = u_xlat15;
            let x_3353 : vec4<f32> = u_xlat15;
            let x_3356 : vec2<f32> = u_xlat66;
            let x_3357 : vec2<f32> = ((-(vec2<f32>(x_3350.x, x_3350.y)) * vec2<f32>(x_3353.x, x_3353.y)) + x_3356);
            let x_3358 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3357.x, x_3357.y, x_3358.z, x_3358.w);
            let x_3360 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3360, vec2<f32>(0.0f, 0.0f));
            let x_3362 : vec2<f32> = u_xlat64;
            let x_3364 : vec2<f32> = u_xlat64;
            let x_3366 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3362) * x_3364) + vec2<f32>(x_3366.y, x_3366.w));
            let x_3369 : vec4<f32> = u_xlat15;
            let x_3371 : vec2<f32> = (vec2<f32>(x_3369.x, x_3369.y) + vec2<f32>(1.0f, 1.0f));
            let x_3372 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3371.x, x_3371.y, x_3372.z, x_3372.w);
            let x_3374 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3374 + vec2<f32>(1.0f, 1.0f));
            let x_3376 : vec4<f32> = u_xlat14;
            let x_3378 : vec2<f32> = (vec2<f32>(x_3376.x, x_3376.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3379 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3378.x, x_3378.y, x_3379.z, x_3379.w);
            let x_3381 : vec2<f32> = u_xlat66;
            let x_3382 : vec2<f32> = (x_3381 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3383 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
            let x_3385 : vec4<f32> = u_xlat15;
            let x_3387 : vec2<f32> = (vec2<f32>(x_3385.x, x_3385.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3388 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3387.x, x_3387.y, x_3388.z, x_3388.w);
            let x_3390 : vec2<f32> = u_xlat64;
            let x_3391 : vec2<f32> = (x_3390 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3392 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3391.x, x_3391.y, x_3392.z, x_3392.w);
            let x_3394 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3394.y, x_3394.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3398 : f32 = u_xlat15.x;
            u_xlat16.z = x_3398;
            let x_3401 : f32 = u_xlat64.x;
            u_xlat16.w = x_3401;
            let x_3404 : f32 = u_xlat17.x;
            u_xlat14.z = x_3404;
            let x_3407 : f32 = u_xlat13.x;
            u_xlat14.w = x_3407;
            let x_3409 : vec4<f32> = u_xlat14;
            let x_3411 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3409.z, x_3409.w, x_3409.x, x_3409.z) + vec4<f32>(x_3411.z, x_3411.w, x_3411.x, x_3411.z));
            let x_3415 : f32 = u_xlat16.y;
            u_xlat15.z = x_3415;
            let x_3418 : f32 = u_xlat64.y;
            u_xlat15.w = x_3418;
            let x_3421 : f32 = u_xlat14.y;
            u_xlat17.z = x_3421;
            let x_3424 : f32 = u_xlat13.z;
            u_xlat17.w = x_3424;
            let x_3426 : vec4<f32> = u_xlat15;
            let x_3428 : vec4<f32> = u_xlat17;
            let x_3430 : vec3<f32> = (vec3<f32>(x_3426.z, x_3426.y, x_3426.w) + vec3<f32>(x_3428.z, x_3428.y, x_3428.w));
            let x_3431 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3430.x, x_3430.y, x_3430.z, x_3431.w);
            let x_3433 : vec4<f32> = u_xlat14;
            let x_3435 : vec4<f32> = u_xlat18;
            let x_3437 : vec3<f32> = (vec3<f32>(x_3433.x, x_3433.z, x_3433.w) / vec3<f32>(x_3435.z, x_3435.w, x_3435.y));
            let x_3438 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3437.x, x_3437.y, x_3437.z, x_3438.w);
            let x_3440 : vec4<f32> = u_xlat14;
            let x_3442 : vec3<f32> = (vec3<f32>(x_3440.x, x_3440.y, x_3440.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3443 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3442.x, x_3442.y, x_3442.z, x_3443.w);
            let x_3445 : vec4<f32> = u_xlat17;
            let x_3447 : vec4<f32> = u_xlat13;
            let x_3449 : vec3<f32> = (vec3<f32>(x_3445.z, x_3445.y, x_3445.w) / vec3<f32>(x_3447.x, x_3447.y, x_3447.z));
            let x_3450 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3449.x, x_3449.y, x_3449.z, x_3450.w);
            let x_3452 : vec4<f32> = u_xlat15;
            let x_3454 : vec3<f32> = (vec3<f32>(x_3452.x, x_3452.y, x_3452.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3455 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3454.x, x_3454.y, x_3454.z, x_3455.w);
            let x_3457 : vec4<f32> = u_xlat14;
            let x_3460 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3462 : vec3<f32> = (vec3<f32>(x_3457.y, x_3457.x, x_3457.z) * vec3<f32>(x_3460.x, x_3460.x, x_3460.x));
            let x_3463 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3462.x, x_3462.y, x_3462.z, x_3463.w);
            let x_3465 : vec4<f32> = u_xlat15;
            let x_3468 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3470 : vec3<f32> = (vec3<f32>(x_3465.x, x_3465.y, x_3465.z) * vec3<f32>(x_3468.y, x_3468.y, x_3468.y));
            let x_3471 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3470.x, x_3470.y, x_3470.z, x_3471.w);
            let x_3474 : f32 = u_xlat15.x;
            u_xlat14.w = x_3474;
            let x_3476 : vec4<f32> = u_xlat12;
            let x_3479 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3482 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3476.x, x_3476.y, x_3476.x, x_3476.y) * vec4<f32>(x_3479.x, x_3479.y, x_3479.x, x_3479.y)) + vec4<f32>(x_3482.y, x_3482.w, x_3482.x, x_3482.w));
            let x_3485 : vec4<f32> = u_xlat12;
            let x_3488 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3491 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3485.x, x_3485.y) * vec2<f32>(x_3488.x, x_3488.y)) + vec2<f32>(x_3491.z, x_3491.w));
            let x_3495 : f32 = u_xlat14.y;
            u_xlat15.w = x_3495;
            let x_3497 : vec4<f32> = u_xlat15;
            let x_3498 : vec2<f32> = vec2<f32>(x_3497.y, x_3497.z);
            let x_3499 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3499.x, x_3498.x, x_3499.z, x_3498.y);
            let x_3501 : vec4<f32> = u_xlat12;
            let x_3504 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3507 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3501.x, x_3501.y, x_3501.x, x_3501.y) * vec4<f32>(x_3504.x, x_3504.y, x_3504.x, x_3504.y)) + vec4<f32>(x_3507.x, x_3507.y, x_3507.z, x_3507.y));
            let x_3510 : vec4<f32> = u_xlat12;
            let x_3513 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3516 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3510.x, x_3510.y, x_3510.x, x_3510.y) * vec4<f32>(x_3513.x, x_3513.y, x_3513.x, x_3513.y)) + vec4<f32>(x_3516.w, x_3516.y, x_3516.w, x_3516.z));
            let x_3519 : vec4<f32> = u_xlat12;
            let x_3522 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3525 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3519.x, x_3519.y, x_3519.x, x_3519.y) * vec4<f32>(x_3522.x, x_3522.y, x_3522.x, x_3522.y)) + vec4<f32>(x_3525.x, x_3525.w, x_3525.z, x_3525.w));
            let x_3528 : vec4<f32> = u_xlat13;
            let x_3530 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3528.x, x_3528.x, x_3528.x, x_3528.y) * vec4<f32>(x_3530.z, x_3530.w, x_3530.y, x_3530.z));
            let x_3534 : vec4<f32> = u_xlat13;
            let x_3536 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3534.y, x_3534.y, x_3534.z, x_3534.z) * x_3536);
            let x_3539 : f32 = u_xlat13.z;
            let x_3541 : f32 = u_xlat18.y;
            u_xlat85 = (x_3539 * x_3541);
            let x_3544 : vec4<f32> = u_xlat16;
            let x_3545 : vec2<f32> = vec2<f32>(x_3544.x, x_3544.y);
            let x_3547 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3545.x, x_3545.y, x_3547);
            let x_3554 : vec3<f32> = txVec34;
            let x_3556 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3554.xy, x_3554.z);
            u_xlat86 = x_3556;
            let x_3558 : vec4<f32> = u_xlat16;
            let x_3559 : vec2<f32> = vec2<f32>(x_3558.z, x_3558.w);
            let x_3561 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3559.x, x_3559.y, x_3561);
            let x_3569 : vec3<f32> = txVec35;
            let x_3571 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3569.xy, x_3569.z);
            u_xlat88 = x_3571;
            let x_3572 : f32 = u_xlat88;
            let x_3574 : f32 = u_xlat19.y;
            u_xlat88 = (x_3572 * x_3574);
            let x_3577 : f32 = u_xlat19.x;
            let x_3578 : f32 = u_xlat86;
            let x_3580 : f32 = u_xlat88;
            u_xlat86 = ((x_3577 * x_3578) + x_3580);
            let x_3583 : vec2<f32> = u_xlat64;
            let x_3585 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3583.x, x_3583.y, x_3585);
            let x_3592 : vec3<f32> = txVec36;
            let x_3594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3592.xy, x_3592.z);
            u_xlat88 = x_3594;
            let x_3596 : f32 = u_xlat19.z;
            let x_3597 : f32 = u_xlat88;
            let x_3599 : f32 = u_xlat86;
            u_xlat86 = ((x_3596 * x_3597) + x_3599);
            let x_3602 : vec4<f32> = u_xlat15;
            let x_3603 : vec2<f32> = vec2<f32>(x_3602.x, x_3602.y);
            let x_3605 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3603.x, x_3603.y, x_3605);
            let x_3612 : vec3<f32> = txVec37;
            let x_3614 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3612.xy, x_3612.z);
            u_xlat88 = x_3614;
            let x_3616 : f32 = u_xlat19.w;
            let x_3617 : f32 = u_xlat88;
            let x_3619 : f32 = u_xlat86;
            u_xlat86 = ((x_3616 * x_3617) + x_3619);
            let x_3622 : vec4<f32> = u_xlat17;
            let x_3623 : vec2<f32> = vec2<f32>(x_3622.x, x_3622.y);
            let x_3625 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3623.x, x_3623.y, x_3625);
            let x_3632 : vec3<f32> = txVec38;
            let x_3634 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3632.xy, x_3632.z);
            u_xlat88 = x_3634;
            let x_3636 : f32 = u_xlat20.x;
            let x_3637 : f32 = u_xlat88;
            let x_3639 : f32 = u_xlat86;
            u_xlat86 = ((x_3636 * x_3637) + x_3639);
            let x_3642 : vec4<f32> = u_xlat17;
            let x_3643 : vec2<f32> = vec2<f32>(x_3642.z, x_3642.w);
            let x_3645 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3643.x, x_3643.y, x_3645);
            let x_3652 : vec3<f32> = txVec39;
            let x_3654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3652.xy, x_3652.z);
            u_xlat88 = x_3654;
            let x_3656 : f32 = u_xlat20.y;
            let x_3657 : f32 = u_xlat88;
            let x_3659 : f32 = u_xlat86;
            u_xlat86 = ((x_3656 * x_3657) + x_3659);
            let x_3662 : vec4<f32> = u_xlat15;
            let x_3663 : vec2<f32> = vec2<f32>(x_3662.z, x_3662.w);
            let x_3665 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3663.x, x_3663.y, x_3665);
            let x_3672 : vec3<f32> = txVec40;
            let x_3674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3672.xy, x_3672.z);
            u_xlat88 = x_3674;
            let x_3676 : f32 = u_xlat20.z;
            let x_3677 : f32 = u_xlat88;
            let x_3679 : f32 = u_xlat86;
            u_xlat86 = ((x_3676 * x_3677) + x_3679);
            let x_3682 : vec4<f32> = u_xlat14;
            let x_3683 : vec2<f32> = vec2<f32>(x_3682.x, x_3682.y);
            let x_3685 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3683.x, x_3683.y, x_3685);
            let x_3692 : vec3<f32> = txVec41;
            let x_3694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3692.xy, x_3692.z);
            u_xlat88 = x_3694;
            let x_3696 : f32 = u_xlat20.w;
            let x_3697 : f32 = u_xlat88;
            let x_3699 : f32 = u_xlat86;
            u_xlat86 = ((x_3696 * x_3697) + x_3699);
            let x_3702 : vec4<f32> = u_xlat14;
            let x_3703 : vec2<f32> = vec2<f32>(x_3702.z, x_3702.w);
            let x_3705 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3703.x, x_3703.y, x_3705);
            let x_3712 : vec3<f32> = txVec42;
            let x_3714 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3712.xy, x_3712.z);
            u_xlat88 = x_3714;
            let x_3715 : f32 = u_xlat85;
            let x_3716 : f32 = u_xlat88;
            let x_3718 : f32 = u_xlat86;
            u_xlat84 = ((x_3715 * x_3716) + x_3718);
          } else {
            let x_3721 : vec4<f32> = u_xlat11;
            let x_3724 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3727 : vec2<f32> = ((vec2<f32>(x_3721.x, x_3721.y) * vec2<f32>(x_3724.z, x_3724.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3728 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3727.x, x_3727.y, x_3728.z, x_3728.w);
            let x_3730 : vec4<f32> = u_xlat12;
            let x_3732 : vec2<f32> = floor(vec2<f32>(x_3730.x, x_3730.y));
            let x_3733 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3732.x, x_3732.y, x_3733.z, x_3733.w);
            let x_3735 : vec4<f32> = u_xlat11;
            let x_3738 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3741 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3735.x, x_3735.y) * vec2<f32>(x_3738.z, x_3738.w)) + -(vec2<f32>(x_3741.x, x_3741.y)));
            let x_3745 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3745.x, x_3745.x, x_3745.y, x_3745.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3748 : vec4<f32> = u_xlat13;
            let x_3750 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3748.x, x_3748.x, x_3748.z, x_3748.z) * vec4<f32>(x_3750.x, x_3750.x, x_3750.z, x_3750.z));
            let x_3753 : vec4<f32> = u_xlat14;
            let x_3755 : vec2<f32> = (vec2<f32>(x_3753.y, x_3753.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3756 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3756.x, x_3755.x, x_3756.z, x_3755.y);
            let x_3758 : vec4<f32> = u_xlat14;
            let x_3761 : vec2<f32> = u_xlat64;
            let x_3763 : vec2<f32> = ((vec2<f32>(x_3758.x, x_3758.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3761));
            let x_3764 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3763.x, x_3764.y, x_3763.y, x_3764.w);
            let x_3766 : vec2<f32> = u_xlat64;
            let x_3768 : vec2<f32> = (-(x_3766) + vec2<f32>(1.0f, 1.0f));
            let x_3769 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3768.x, x_3768.y, x_3769.z, x_3769.w);
            let x_3771 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3771, vec2<f32>(0.0f, 0.0f));
            let x_3773 : vec2<f32> = u_xlat66;
            let x_3775 : vec2<f32> = u_xlat66;
            let x_3777 : vec4<f32> = u_xlat14;
            let x_3779 : vec2<f32> = ((-(x_3773) * x_3775) + vec2<f32>(x_3777.x, x_3777.y));
            let x_3780 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3779.x, x_3779.y, x_3780.z, x_3780.w);
            let x_3782 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3782, vec2<f32>(0.0f, 0.0f));
            let x_3785 : vec2<f32> = u_xlat66;
            let x_3787 : vec2<f32> = u_xlat66;
            let x_3789 : vec4<f32> = u_xlat13;
            let x_3791 : vec2<f32> = ((-(x_3785) * x_3787) + vec2<f32>(x_3789.y, x_3789.w));
            let x_3792 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3791.x, x_3792.y, x_3791.y);
            let x_3794 : vec4<f32> = u_xlat14;
            let x_3796 : vec2<f32> = (vec2<f32>(x_3794.x, x_3794.y) + vec2<f32>(2.0f, 2.0f));
            let x_3797 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3796.x, x_3796.y, x_3797.z, x_3797.w);
            let x_3799 : vec3<f32> = u_xlat39;
            let x_3801 : vec2<f32> = (vec2<f32>(x_3799.x, x_3799.z) + vec2<f32>(2.0f, 2.0f));
            let x_3802 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3802.x, x_3801.x, x_3802.z, x_3801.y);
            let x_3805 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3805 * 0.08163200318813323975f);
            let x_3808 : vec4<f32> = u_xlat13;
            let x_3810 : vec3<f32> = (vec3<f32>(x_3808.z, x_3808.x, x_3808.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3811 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3810.x, x_3810.y, x_3810.z, x_3811.w);
            let x_3813 : vec4<f32> = u_xlat14;
            let x_3815 : vec2<f32> = (vec2<f32>(x_3813.x, x_3813.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3816 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3815.x, x_3815.y, x_3816.z, x_3816.w);
            let x_3819 : f32 = u_xlat17.y;
            u_xlat16.x = x_3819;
            let x_3821 : vec2<f32> = u_xlat64;
            let x_3824 : vec2<f32> = ((vec2<f32>(x_3821.x, x_3821.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3825 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3825.x, x_3824.x, x_3825.z, x_3824.y);
            let x_3827 : vec2<f32> = u_xlat64;
            let x_3830 : vec2<f32> = ((vec2<f32>(x_3827.x, x_3827.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3831 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3830.x, x_3831.y, x_3830.y, x_3831.w);
            let x_3834 : f32 = u_xlat13.x;
            u_xlat14.y = x_3834;
            let x_3837 : f32 = u_xlat15.y;
            u_xlat14.w = x_3837;
            let x_3839 : vec4<f32> = u_xlat14;
            let x_3840 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3839 + x_3840);
            let x_3842 : vec2<f32> = u_xlat64;
            let x_3845 : vec2<f32> = ((vec2<f32>(x_3842.y, x_3842.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3846 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3846.x, x_3845.x, x_3846.z, x_3845.y);
            let x_3848 : vec2<f32> = u_xlat64;
            let x_3851 : vec2<f32> = ((vec2<f32>(x_3848.y, x_3848.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3852 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3851.x, x_3852.y, x_3851.y, x_3852.w);
            let x_3855 : f32 = u_xlat13.y;
            u_xlat15.y = x_3855;
            let x_3857 : vec4<f32> = u_xlat15;
            let x_3858 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3857 + x_3858);
            let x_3860 : vec4<f32> = u_xlat14;
            let x_3861 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3860 / x_3861);
            let x_3863 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3863 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3865 : vec4<f32> = u_xlat15;
            let x_3866 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3865 / x_3866);
            let x_3868 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3868 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3870 : vec4<f32> = u_xlat14;
            let x_3873 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3870.w, x_3870.x, x_3870.y, x_3870.z) * vec4<f32>(x_3873.x, x_3873.x, x_3873.x, x_3873.x));
            let x_3876 : vec4<f32> = u_xlat15;
            let x_3879 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3876.x, x_3876.w, x_3876.y, x_3876.z) * vec4<f32>(x_3879.y, x_3879.y, x_3879.y, x_3879.y));
            let x_3882 : vec4<f32> = u_xlat14;
            let x_3883 : vec3<f32> = vec3<f32>(x_3882.y, x_3882.z, x_3882.w);
            let x_3884 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3883.x, x_3884.y, x_3883.y, x_3883.z);
            let x_3887 : f32 = u_xlat15.x;
            u_xlat17.y = x_3887;
            let x_3889 : vec4<f32> = u_xlat12;
            let x_3892 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3895 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3889.x, x_3889.y, x_3889.x, x_3889.y) * vec4<f32>(x_3892.x, x_3892.y, x_3892.x, x_3892.y)) + vec4<f32>(x_3895.x, x_3895.y, x_3895.z, x_3895.y));
            let x_3898 : vec4<f32> = u_xlat12;
            let x_3901 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3904 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3898.x, x_3898.y) * vec2<f32>(x_3901.x, x_3901.y)) + vec2<f32>(x_3904.w, x_3904.y));
            let x_3908 : f32 = u_xlat17.y;
            u_xlat14.y = x_3908;
            let x_3911 : f32 = u_xlat15.z;
            u_xlat17.y = x_3911;
            let x_3913 : vec4<f32> = u_xlat12;
            let x_3916 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3919 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3913.x, x_3913.y, x_3913.x, x_3913.y) * vec4<f32>(x_3916.x, x_3916.y, x_3916.x, x_3916.y)) + vec4<f32>(x_3919.x, x_3919.y, x_3919.z, x_3919.y));
            let x_3922 : vec4<f32> = u_xlat12;
            let x_3925 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3928 : vec4<f32> = u_xlat17;
            let x_3930 : vec2<f32> = ((vec2<f32>(x_3922.x, x_3922.y) * vec2<f32>(x_3925.x, x_3925.y)) + vec2<f32>(x_3928.w, x_3928.y));
            let x_3931 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3930.x, x_3930.y, x_3931.z, x_3931.w);
            let x_3934 : f32 = u_xlat17.y;
            u_xlat14.z = x_3934;
            let x_3937 : vec4<f32> = u_xlat12;
            let x_3940 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3943 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3937.x, x_3937.y, x_3937.x, x_3937.y) * vec4<f32>(x_3940.x, x_3940.y, x_3940.x, x_3940.y)) + vec4<f32>(x_3943.x, x_3943.y, x_3943.x, x_3943.z));
            let x_3947 : f32 = u_xlat15.w;
            u_xlat17.y = x_3947;
            let x_3950 : vec4<f32> = u_xlat12;
            let x_3953 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3956 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3950.x, x_3950.y, x_3950.x, x_3950.y) * vec4<f32>(x_3953.x, x_3953.y, x_3953.x, x_3953.y)) + vec4<f32>(x_3956.x, x_3956.y, x_3956.z, x_3956.y));
            let x_3960 : vec4<f32> = u_xlat12;
            let x_3963 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3966 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3960.x, x_3960.y) * vec2<f32>(x_3963.x, x_3963.y)) + vec2<f32>(x_3966.w, x_3966.y));
            let x_3970 : f32 = u_xlat17.y;
            u_xlat14.w = x_3970;
            let x_3973 : vec4<f32> = u_xlat12;
            let x_3976 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3979 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3973.x, x_3973.y) * vec2<f32>(x_3976.x, x_3976.y)) + vec2<f32>(x_3979.x, x_3979.w));
            let x_3982 : vec4<f32> = u_xlat17;
            let x_3983 : vec3<f32> = vec3<f32>(x_3982.x, x_3982.z, x_3982.w);
            let x_3984 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3983.x, x_3984.y, x_3983.y, x_3983.z);
            let x_3986 : vec4<f32> = u_xlat12;
            let x_3989 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3992 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3986.x, x_3986.y, x_3986.x, x_3986.y) * vec4<f32>(x_3989.x, x_3989.y, x_3989.x, x_3989.y)) + vec4<f32>(x_3992.x, x_3992.y, x_3992.z, x_3992.y));
            let x_3996 : vec4<f32> = u_xlat12;
            let x_3999 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4002 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3996.x, x_3996.y) * vec2<f32>(x_3999.x, x_3999.y)) + vec2<f32>(x_4002.w, x_4002.y));
            let x_4006 : f32 = u_xlat14.x;
            u_xlat15.x = x_4006;
            let x_4008 : vec4<f32> = u_xlat12;
            let x_4011 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_4014 : vec4<f32> = u_xlat15;
            let x_4016 : vec2<f32> = ((vec2<f32>(x_4008.x, x_4008.y) * vec2<f32>(x_4011.x, x_4011.y)) + vec2<f32>(x_4014.x, x_4014.y));
            let x_4017 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4016.x, x_4016.y, x_4017.z, x_4017.w);
            let x_4020 : vec4<f32> = u_xlat13;
            let x_4022 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4020.x, x_4020.x, x_4020.x, x_4020.x) * x_4022);
            let x_4025 : vec4<f32> = u_xlat13;
            let x_4027 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4025.y, x_4025.y, x_4025.y, x_4025.y) * x_4027);
            let x_4030 : vec4<f32> = u_xlat13;
            let x_4032 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4030.z, x_4030.z, x_4030.z, x_4030.z) * x_4032);
            let x_4034 : vec4<f32> = u_xlat13;
            let x_4036 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4034.w, x_4034.w, x_4034.w, x_4034.w) * x_4036);
            let x_4039 : vec4<f32> = u_xlat18;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.x, x_4039.y);
            let x_4042 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec43;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat85 = x_4051;
            let x_4053 : vec4<f32> = u_xlat18;
            let x_4054 : vec2<f32> = vec2<f32>(x_4053.z, x_4053.w);
            let x_4056 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4054.x, x_4054.y, x_4056);
            let x_4063 : vec3<f32> = txVec44;
            let x_4065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4063.xy, x_4063.z);
            u_xlat86 = x_4065;
            let x_4066 : f32 = u_xlat86;
            let x_4068 : f32 = u_xlat23.y;
            u_xlat86 = (x_4066 * x_4068);
            let x_4071 : f32 = u_xlat23.x;
            let x_4072 : f32 = u_xlat85;
            let x_4074 : f32 = u_xlat86;
            u_xlat85 = ((x_4071 * x_4072) + x_4074);
            let x_4077 : vec2<f32> = u_xlat64;
            let x_4079 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4077.x, x_4077.y, x_4079);
            let x_4086 : vec3<f32> = txVec45;
            let x_4088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4086.xy, x_4086.z);
            u_xlat86 = x_4088;
            let x_4090 : f32 = u_xlat23.z;
            let x_4091 : f32 = u_xlat86;
            let x_4093 : f32 = u_xlat85;
            u_xlat85 = ((x_4090 * x_4091) + x_4093);
            let x_4096 : vec4<f32> = u_xlat21;
            let x_4097 : vec2<f32> = vec2<f32>(x_4096.x, x_4096.y);
            let x_4099 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4097.x, x_4097.y, x_4099);
            let x_4106 : vec3<f32> = txVec46;
            let x_4108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4106.xy, x_4106.z);
            u_xlat86 = x_4108;
            let x_4110 : f32 = u_xlat23.w;
            let x_4111 : f32 = u_xlat86;
            let x_4113 : f32 = u_xlat85;
            u_xlat85 = ((x_4110 * x_4111) + x_4113);
            let x_4116 : vec4<f32> = u_xlat19;
            let x_4117 : vec2<f32> = vec2<f32>(x_4116.x, x_4116.y);
            let x_4119 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4117.x, x_4117.y, x_4119);
            let x_4126 : vec3<f32> = txVec47;
            let x_4128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4126.xy, x_4126.z);
            u_xlat86 = x_4128;
            let x_4130 : f32 = u_xlat24.x;
            let x_4131 : f32 = u_xlat86;
            let x_4133 : f32 = u_xlat85;
            u_xlat85 = ((x_4130 * x_4131) + x_4133);
            let x_4136 : vec4<f32> = u_xlat19;
            let x_4137 : vec2<f32> = vec2<f32>(x_4136.z, x_4136.w);
            let x_4139 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4137.x, x_4137.y, x_4139);
            let x_4146 : vec3<f32> = txVec48;
            let x_4148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4146.xy, x_4146.z);
            u_xlat86 = x_4148;
            let x_4150 : f32 = u_xlat24.y;
            let x_4151 : f32 = u_xlat86;
            let x_4153 : f32 = u_xlat85;
            u_xlat85 = ((x_4150 * x_4151) + x_4153);
            let x_4156 : vec4<f32> = u_xlat20;
            let x_4157 : vec2<f32> = vec2<f32>(x_4156.x, x_4156.y);
            let x_4159 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4157.x, x_4157.y, x_4159);
            let x_4166 : vec3<f32> = txVec49;
            let x_4168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4166.xy, x_4166.z);
            u_xlat86 = x_4168;
            let x_4170 : f32 = u_xlat24.z;
            let x_4171 : f32 = u_xlat86;
            let x_4173 : f32 = u_xlat85;
            u_xlat85 = ((x_4170 * x_4171) + x_4173);
            let x_4176 : vec4<f32> = u_xlat21;
            let x_4177 : vec2<f32> = vec2<f32>(x_4176.z, x_4176.w);
            let x_4179 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4177.x, x_4177.y, x_4179);
            let x_4186 : vec3<f32> = txVec50;
            let x_4188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4186.xy, x_4186.z);
            u_xlat86 = x_4188;
            let x_4190 : f32 = u_xlat24.w;
            let x_4191 : f32 = u_xlat86;
            let x_4193 : f32 = u_xlat85;
            u_xlat85 = ((x_4190 * x_4191) + x_4193);
            let x_4196 : vec4<f32> = u_xlat22;
            let x_4197 : vec2<f32> = vec2<f32>(x_4196.x, x_4196.y);
            let x_4199 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4197.x, x_4197.y, x_4199);
            let x_4206 : vec3<f32> = txVec51;
            let x_4208 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4206.xy, x_4206.z);
            u_xlat86 = x_4208;
            let x_4210 : f32 = u_xlat25.x;
            let x_4211 : f32 = u_xlat86;
            let x_4213 : f32 = u_xlat85;
            u_xlat85 = ((x_4210 * x_4211) + x_4213);
            let x_4216 : vec4<f32> = u_xlat22;
            let x_4217 : vec2<f32> = vec2<f32>(x_4216.z, x_4216.w);
            let x_4219 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4217.x, x_4217.y, x_4219);
            let x_4226 : vec3<f32> = txVec52;
            let x_4228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4226.xy, x_4226.z);
            u_xlat86 = x_4228;
            let x_4230 : f32 = u_xlat25.y;
            let x_4231 : f32 = u_xlat86;
            let x_4233 : f32 = u_xlat85;
            u_xlat85 = ((x_4230 * x_4231) + x_4233);
            let x_4236 : vec2<f32> = u_xlat40;
            let x_4238 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4236.x, x_4236.y, x_4238);
            let x_4245 : vec3<f32> = txVec53;
            let x_4247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4245.xy, x_4245.z);
            u_xlat86 = x_4247;
            let x_4249 : f32 = u_xlat25.z;
            let x_4250 : f32 = u_xlat86;
            let x_4252 : f32 = u_xlat85;
            u_xlat85 = ((x_4249 * x_4250) + x_4252);
            let x_4255 : vec2<f32> = u_xlat72;
            let x_4257 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4255.x, x_4255.y, x_4257);
            let x_4264 : vec3<f32> = txVec54;
            let x_4266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4264.xy, x_4264.z);
            u_xlat86 = x_4266;
            let x_4268 : f32 = u_xlat25.w;
            let x_4269 : f32 = u_xlat86;
            let x_4271 : f32 = u_xlat85;
            u_xlat85 = ((x_4268 * x_4269) + x_4271);
            let x_4274 : vec4<f32> = u_xlat17;
            let x_4275 : vec2<f32> = vec2<f32>(x_4274.x, x_4274.y);
            let x_4277 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4275.x, x_4275.y, x_4277);
            let x_4284 : vec3<f32> = txVec55;
            let x_4286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4284.xy, x_4284.z);
            u_xlat86 = x_4286;
            let x_4288 : f32 = u_xlat13.x;
            let x_4289 : f32 = u_xlat86;
            let x_4291 : f32 = u_xlat85;
            u_xlat85 = ((x_4288 * x_4289) + x_4291);
            let x_4294 : vec4<f32> = u_xlat17;
            let x_4295 : vec2<f32> = vec2<f32>(x_4294.z, x_4294.w);
            let x_4297 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4295.x, x_4295.y, x_4297);
            let x_4304 : vec3<f32> = txVec56;
            let x_4306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4304.xy, x_4304.z);
            u_xlat86 = x_4306;
            let x_4308 : f32 = u_xlat13.y;
            let x_4309 : f32 = u_xlat86;
            let x_4311 : f32 = u_xlat85;
            u_xlat85 = ((x_4308 * x_4309) + x_4311);
            let x_4314 : vec2<f32> = u_xlat67;
            let x_4316 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4314.x, x_4314.y, x_4316);
            let x_4323 : vec3<f32> = txVec57;
            let x_4325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4323.xy, x_4323.z);
            u_xlat86 = x_4325;
            let x_4327 : f32 = u_xlat13.z;
            let x_4328 : f32 = u_xlat86;
            let x_4330 : f32 = u_xlat85;
            u_xlat85 = ((x_4327 * x_4328) + x_4330);
            let x_4333 : vec4<f32> = u_xlat12;
            let x_4334 : vec2<f32> = vec2<f32>(x_4333.x, x_4333.y);
            let x_4336 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4334.x, x_4334.y, x_4336);
            let x_4343 : vec3<f32> = txVec58;
            let x_4345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4343.xy, x_4343.z);
            u_xlat86 = x_4345;
            let x_4347 : f32 = u_xlat13.w;
            let x_4348 : f32 = u_xlat86;
            let x_4350 : f32 = u_xlat85;
            u_xlat84 = ((x_4347 * x_4348) + x_4350);
          }
        }
      } else {
        let x_4354 : vec4<f32> = u_xlat11;
        let x_4355 : vec2<f32> = vec2<f32>(x_4354.x, x_4354.y);
        let x_4357 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4355.x, x_4355.y, x_4357);
        let x_4364 : vec3<f32> = txVec59;
        let x_4366 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4364.xy, x_4364.z);
        u_xlat84 = x_4366;
      }
      let x_4367 : i32 = u_xlati54;
      let x_4369 : f32 = x_845.x_AdditionalShadowParams[x_4367].x;
      u_xlat85 = (1.0f + -(x_4369));
      let x_4372 : f32 = u_xlat84;
      let x_4373 : i32 = u_xlati54;
      let x_4375 : f32 = x_845.x_AdditionalShadowParams[x_4373].x;
      let x_4377 : f32 = u_xlat85;
      u_xlat84 = ((x_4372 * x_4375) + x_4377);
      let x_4380 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4380);
      let x_4384 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4384 >= 1.0f);
      let x_4386 : bool = u_xlatb85;
      let x_4387 : bool = u_xlatb86;
      u_xlatb85 = (x_4386 | x_4387);
      let x_4389 : bool = u_xlatb85;
      let x_4390 : f32 = u_xlat84;
      u_xlat84 = select(x_4390, 1.0f, x_4389);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4393 : f32 = u_xlat84;
    u_xlat85 = (-(x_4393) + 1.0f);
    let x_4396 : f32 = u_xlat52;
    let x_4397 : f32 = u_xlat85;
    let x_4399 : f32 = u_xlat84;
    u_xlat84 = ((x_4396 * x_4397) + x_4399);
    let x_4402 : i32 = u_xlati54;
    u_xlati85 = (1i << bitcast<u32>((x_4402 & 31i)));
    let x_4405 : i32 = u_xlati85;
    let x_4408 : f32 = x_2481.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4405) & bitcast<u32>(x_4408)));
    let x_4412 : i32 = u_xlati85;
    if ((x_4412 != 0i)) {
      let x_4416 : i32 = u_xlati54;
      let x_4418 : f32 = x_2481.x_AdditionalLightsLightTypes[x_4416].el;
      u_xlati85 = i32(x_4418);
      let x_4421 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4421 != 0i));
      let x_4425 : i32 = u_xlati54;
      u_xlati88 = (x_4425 << bitcast<u32>(2i));
      let x_4427 : i32 = u_xlati86;
      if ((x_4427 != 0i)) {
        let x_4431 : vec3<f32> = vs_TEXCOORD7;
        let x_4433 : i32 = u_xlati88;
        let x_4436 : i32 = u_xlati88;
        let x_4440 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4433 + 1i) / 4i)][((x_4436 + 1i) % 4i)];
        let x_4442 : vec3<f32> = (vec3<f32>(x_4431.y, x_4431.y, x_4431.y) * vec3<f32>(x_4440.x, x_4440.y, x_4440.w));
        let x_4443 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4442.x, x_4442.y, x_4442.z, x_4443.w);
        let x_4445 : i32 = u_xlati88;
        let x_4447 : i32 = u_xlati88;
        let x_4450 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[(x_4445 / 4i)][(x_4447 % 4i)];
        let x_4452 : vec3<f32> = vs_TEXCOORD7;
        let x_4455 : vec4<f32> = u_xlat11;
        let x_4457 : vec3<f32> = ((vec3<f32>(x_4450.x, x_4450.y, x_4450.w) * vec3<f32>(x_4452.x, x_4452.x, x_4452.x)) + vec3<f32>(x_4455.x, x_4455.y, x_4455.z));
        let x_4458 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4457.x, x_4457.y, x_4457.z, x_4458.w);
        let x_4460 : i32 = u_xlati88;
        let x_4463 : i32 = u_xlati88;
        let x_4467 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4460 + 2i) / 4i)][((x_4463 + 2i) % 4i)];
        let x_4469 : vec3<f32> = vs_TEXCOORD7;
        let x_4472 : vec4<f32> = u_xlat11;
        let x_4474 : vec3<f32> = ((vec3<f32>(x_4467.x, x_4467.y, x_4467.w) * vec3<f32>(x_4469.z, x_4469.z, x_4469.z)) + vec3<f32>(x_4472.x, x_4472.y, x_4472.z));
        let x_4475 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4474.x, x_4474.y, x_4474.z, x_4475.w);
        let x_4477 : vec4<f32> = u_xlat11;
        let x_4479 : i32 = u_xlati88;
        let x_4482 : i32 = u_xlati88;
        let x_4486 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4479 + 3i) / 4i)][((x_4482 + 3i) % 4i)];
        let x_4488 : vec3<f32> = (vec3<f32>(x_4477.x, x_4477.y, x_4477.z) + vec3<f32>(x_4486.x, x_4486.y, x_4486.w));
        let x_4489 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4488.x, x_4488.y, x_4488.z, x_4489.w);
        let x_4491 : vec4<f32> = u_xlat11;
        let x_4493 : vec4<f32> = u_xlat11;
        let x_4495 : vec2<f32> = (vec2<f32>(x_4491.x, x_4491.y) / vec2<f32>(x_4493.z, x_4493.z));
        let x_4496 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4495.x, x_4495.y, x_4496.z, x_4496.w);
        let x_4498 : vec4<f32> = u_xlat11;
        let x_4501 : vec2<f32> = ((vec2<f32>(x_4498.x, x_4498.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4502 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4501.x, x_4501.y, x_4502.z, x_4502.w);
        let x_4504 : vec4<f32> = u_xlat11;
        let x_4508 : vec2<f32> = clamp(vec2<f32>(x_4504.x, x_4504.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4509 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4508.x, x_4508.y, x_4509.z, x_4509.w);
        let x_4511 : i32 = u_xlati54;
        let x_4513 : vec4<f32> = x_2481.x_AdditionalLightsCookieAtlasUVRects[x_4511];
        let x_4515 : vec4<f32> = u_xlat11;
        let x_4518 : i32 = u_xlati54;
        let x_4520 : vec4<f32> = x_2481.x_AdditionalLightsCookieAtlasUVRects[x_4518];
        let x_4522 : vec2<f32> = ((vec2<f32>(x_4513.x, x_4513.y) * vec2<f32>(x_4515.x, x_4515.y)) + vec2<f32>(x_4520.z, x_4520.w));
        let x_4523 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4522.x, x_4522.y, x_4523.z, x_4523.w);
      } else {
        let x_4526 : i32 = u_xlati85;
        u_xlatb85 = (x_4526 == 1i);
        let x_4528 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4528);
        let x_4530 : i32 = u_xlati85;
        if ((x_4530 != 0i)) {
          let x_4535 : vec3<f32> = vs_TEXCOORD7;
          let x_4537 : i32 = u_xlati88;
          let x_4540 : i32 = u_xlati88;
          let x_4544 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4537 + 1i) / 4i)][((x_4540 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4535.y, x_4535.y) * vec2<f32>(x_4544.x, x_4544.y));
          let x_4547 : i32 = u_xlati88;
          let x_4549 : i32 = u_xlati88;
          let x_4552 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[(x_4547 / 4i)][(x_4549 % 4i)];
          let x_4554 : vec3<f32> = vs_TEXCOORD7;
          let x_4557 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4552.x, x_4552.y) * vec2<f32>(x_4554.x, x_4554.x)) + x_4557);
          let x_4559 : i32 = u_xlati88;
          let x_4562 : i32 = u_xlati88;
          let x_4566 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4559 + 2i) / 4i)][((x_4562 + 2i) % 4i)];
          let x_4568 : vec3<f32> = vs_TEXCOORD7;
          let x_4571 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4566.x, x_4566.y) * vec2<f32>(x_4568.z, x_4568.z)) + x_4571);
          let x_4573 : vec2<f32> = u_xlat63;
          let x_4574 : i32 = u_xlati88;
          let x_4577 : i32 = u_xlati88;
          let x_4581 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4574 + 3i) / 4i)][((x_4577 + 3i) % 4i)];
          u_xlat63 = (x_4573 + vec2<f32>(x_4581.x, x_4581.y));
          let x_4584 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4584 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4587 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4587);
          let x_4589 : i32 = u_xlati54;
          let x_4591 : vec4<f32> = x_2481.x_AdditionalLightsCookieAtlasUVRects[x_4589];
          let x_4593 : vec2<f32> = u_xlat63;
          let x_4595 : i32 = u_xlati54;
          let x_4597 : vec4<f32> = x_2481.x_AdditionalLightsCookieAtlasUVRects[x_4595];
          let x_4599 : vec2<f32> = ((vec2<f32>(x_4591.x, x_4591.y) * x_4593) + vec2<f32>(x_4597.z, x_4597.w));
          let x_4600 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4599.x, x_4599.y, x_4600.z, x_4600.w);
        } else {
          let x_4603 : vec3<f32> = vs_TEXCOORD7;
          let x_4605 : i32 = u_xlati88;
          let x_4608 : i32 = u_xlati88;
          let x_4612 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4605 + 1i) / 4i)][((x_4608 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4603.y, x_4603.y, x_4603.y, x_4603.y) * x_4612);
          let x_4614 : i32 = u_xlati88;
          let x_4616 : i32 = u_xlati88;
          let x_4619 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[(x_4614 / 4i)][(x_4616 % 4i)];
          let x_4620 : vec3<f32> = vs_TEXCOORD7;
          let x_4623 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4619 * vec4<f32>(x_4620.x, x_4620.x, x_4620.x, x_4620.x)) + x_4623);
          let x_4625 : i32 = u_xlati88;
          let x_4628 : i32 = u_xlati88;
          let x_4632 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4625 + 2i) / 4i)][((x_4628 + 2i) % 4i)];
          let x_4633 : vec3<f32> = vs_TEXCOORD7;
          let x_4636 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4632 * vec4<f32>(x_4633.z, x_4633.z, x_4633.z, x_4633.z)) + x_4636);
          let x_4638 : vec4<f32> = u_xlat12;
          let x_4639 : i32 = u_xlati88;
          let x_4642 : i32 = u_xlati88;
          let x_4646 : vec4<f32> = x_2481.x_AdditionalLightsWorldToLights[((x_4639 + 3i) / 4i)][((x_4642 + 3i) % 4i)];
          u_xlat12 = (x_4638 + x_4646);
          let x_4648 : vec4<f32> = u_xlat12;
          let x_4650 : vec4<f32> = u_xlat12;
          let x_4652 : vec3<f32> = (vec3<f32>(x_4648.x, x_4648.y, x_4648.z) / vec3<f32>(x_4650.w, x_4650.w, x_4650.w));
          let x_4653 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4652.x, x_4652.y, x_4652.z, x_4653.w);
          let x_4655 : vec4<f32> = u_xlat12;
          let x_4657 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4655.x, x_4655.y, x_4655.z), vec3<f32>(x_4657.x, x_4657.y, x_4657.z));
          let x_4660 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4660);
          let x_4662 : f32 = u_xlat85;
          let x_4664 : vec4<f32> = u_xlat12;
          let x_4666 : vec3<f32> = (vec3<f32>(x_4662, x_4662, x_4662) * vec3<f32>(x_4664.x, x_4664.y, x_4664.z));
          let x_4667 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4666.x, x_4666.y, x_4666.z, x_4667.w);
          let x_4669 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4669.x, x_4669.y, x_4669.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4674 : f32 = u_xlat85;
          u_xlat85 = max(x_4674, 0.00000099999999747524f);
          let x_4677 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4677);
          let x_4679 : f32 = u_xlat85;
          let x_4681 : vec4<f32> = u_xlat12;
          let x_4683 : vec3<f32> = (vec3<f32>(x_4679, x_4679, x_4679) * vec3<f32>(x_4681.z, x_4681.x, x_4681.y));
          let x_4684 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4683.x, x_4683.y, x_4683.z, x_4684.w);
          let x_4687 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4687);
          let x_4691 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4691, 0.0f, 1.0f);
          let x_4695 : vec4<f32> = u_xlat13;
          let x_4697 : vec4<bool> = (vec4<f32>(x_4695.y, x_4695.z, x_4695.y, x_4695.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4697.x, x_4697.y);
          let x_4700 : bool = u_xlatb63.x;
          if (x_4700) {
            let x_4705 : f32 = u_xlat13.x;
            x_4701 = x_4705;
          } else {
            let x_4708 : f32 = u_xlat13.x;
            x_4701 = -(x_4708);
          }
          let x_4710 : f32 = x_4701;
          u_xlat63.x = x_4710;
          let x_4713 : bool = u_xlatb63.y;
          if (x_4713) {
            let x_4718 : f32 = u_xlat13.x;
            x_4714 = x_4718;
          } else {
            let x_4721 : f32 = u_xlat13.x;
            x_4714 = -(x_4721);
          }
          let x_4723 : f32 = x_4714;
          u_xlat63.y = x_4723;
          let x_4725 : vec4<f32> = u_xlat12;
          let x_4727 : f32 = u_xlat85;
          let x_4730 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4725.x, x_4725.y) * vec2<f32>(x_4727, x_4727)) + x_4730);
          let x_4732 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4732 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4735 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4735, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4739 : i32 = u_xlati54;
          let x_4741 : vec4<f32> = x_2481.x_AdditionalLightsCookieAtlasUVRects[x_4739];
          let x_4743 : vec2<f32> = u_xlat63;
          let x_4745 : i32 = u_xlati54;
          let x_4747 : vec4<f32> = x_2481.x_AdditionalLightsCookieAtlasUVRects[x_4745];
          let x_4749 : vec2<f32> = ((vec2<f32>(x_4741.x, x_4741.y) * x_4743) + vec2<f32>(x_4747.z, x_4747.w));
          let x_4750 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4749.x, x_4749.y, x_4750.z, x_4750.w);
        }
      }
      let x_4757 : vec4<f32> = u_xlat11;
      let x_4759 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4757.x, x_4757.y), 0.0f);
      u_xlat11 = x_4759;
      let x_4761 : bool = u_xlatb2.y;
      if (x_4761) {
        let x_4766 : f32 = u_xlat11.w;
        x_4762 = x_4766;
      } else {
        let x_4769 : f32 = u_xlat11.x;
        x_4762 = x_4769;
      }
      let x_4770 : f32 = x_4762;
      u_xlat85 = x_4770;
      let x_4772 : bool = u_xlatb2.x;
      if (x_4772) {
        let x_4776 : vec4<f32> = u_xlat11;
        x_4773 = vec3<f32>(x_4776.x, x_4776.y, x_4776.z);
      } else {
        let x_4779 : f32 = u_xlat85;
        x_4773 = vec3<f32>(x_4779, x_4779, x_4779);
      }
      let x_4781 : vec3<f32> = x_4773;
      let x_4782 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4781.x, x_4781.y, x_4781.z, x_4782.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4788 : vec4<f32> = u_xlat11;
    let x_4790 : i32 = u_xlati54;
    let x_4792 : vec4<f32> = x_2991.x_AdditionalLightsColor[x_4790];
    let x_4794 : vec3<f32> = (vec3<f32>(x_4788.x, x_4788.y, x_4788.z) * vec3<f32>(x_4792.x, x_4792.y, x_4792.z));
    let x_4795 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4794.x, x_4794.y, x_4794.z, x_4795.w);
    let x_4797 : f32 = u_xlat82;
    let x_4798 : f32 = u_xlat84;
    u_xlat54 = (x_4797 * x_4798);
    let x_4800 : vec4<f32> = u_xlat1;
    let x_4802 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4800.x, x_4800.y, x_4800.z), vec3<f32>(x_4802.x, x_4802.y, x_4802.z));
    let x_4805 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4805, 0.0f, 1.0f);
    let x_4807 : f32 = u_xlat54;
    let x_4808 : f32 = u_xlat82;
    u_xlat54 = (x_4807 * x_4808);
    let x_4810 : f32 = u_xlat54;
    let x_4812 : vec4<f32> = u_xlat11;
    let x_4814 : vec3<f32> = (vec3<f32>(x_4810, x_4810, x_4810) * vec3<f32>(x_4812.x, x_4812.y, x_4812.z));
    let x_4815 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4814.x, x_4814.y, x_4814.z, x_4815.w);
    let x_4817 : vec3<f32> = u_xlat35;
    let x_4818 : f32 = u_xlat83;
    let x_4821 : vec4<f32> = u_xlat7;
    u_xlat35 = ((x_4817 * vec3<f32>(x_4818, x_4818, x_4818)) + vec3<f32>(x_4821.x, x_4821.y, x_4821.z));
    let x_4824 : vec3<f32> = u_xlat35;
    let x_4825 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(x_4824, x_4825);
    let x_4827 : f32 = u_xlat54;
    u_xlat54 = max(x_4827, 1.17549435e-38f);
    let x_4829 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4829);
    let x_4831 : f32 = u_xlat54;
    let x_4833 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4831, x_4831, x_4831) * x_4833);
    let x_4835 : vec4<f32> = u_xlat1;
    let x_4837 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(vec3<f32>(x_4835.x, x_4835.y, x_4835.z), x_4837);
    let x_4839 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4839, 0.0f, 1.0f);
    let x_4841 : vec4<f32> = u_xlat10;
    let x_4843 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4841.x, x_4841.y, x_4841.z), x_4843);
    let x_4845 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4845, 0.0f, 1.0f);
    let x_4847 : f32 = u_xlat54;
    let x_4848 : f32 = u_xlat54;
    u_xlat54 = (x_4847 * x_4848);
    let x_4850 : f32 = u_xlat54;
    let x_4852 : f32 = u_xlat9.x;
    u_xlat54 = ((x_4850 * x_4852) + 1.00001001358032226562f);
    let x_4855 : f32 = u_xlat82;
    let x_4856 : f32 = u_xlat82;
    u_xlat82 = (x_4855 * x_4856);
    let x_4858 : f32 = u_xlat54;
    let x_4859 : f32 = u_xlat54;
    u_xlat54 = (x_4858 * x_4859);
    let x_4861 : f32 = u_xlat82;
    u_xlat82 = max(x_4861, 0.10000000149011611938f);
    let x_4863 : f32 = u_xlat54;
    let x_4864 : f32 = u_xlat82;
    u_xlat54 = (x_4863 * x_4864);
    let x_4866 : f32 = u_xlat80;
    let x_4867 : f32 = u_xlat54;
    u_xlat54 = (x_4866 * x_4867);
    let x_4869 : f32 = u_xlat81;
    let x_4870 : f32 = u_xlat54;
    u_xlat54 = (x_4869 / x_4870);
    let x_4872 : vec4<f32> = u_xlat5;
    let x_4874 : f32 = u_xlat54;
    let x_4877 : vec4<f32> = u_xlat4;
    u_xlat35 = ((vec3<f32>(x_4872.x, x_4872.y, x_4872.z) * vec3<f32>(x_4874, x_4874, x_4874)) + vec3<f32>(x_4877.x, x_4877.y, x_4877.z));
    let x_4880 : vec3<f32> = u_xlat35;
    let x_4881 : vec4<f32> = u_xlat11;
    let x_4884 : vec4<f32> = u_xlat8;
    let x_4886 : vec3<f32> = ((x_4880 * vec3<f32>(x_4881.x, x_4881.y, x_4881.z)) + vec3<f32>(x_4884.x, x_4884.y, x_4884.z));
    let x_4887 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4886.x, x_4886.y, x_4886.z, x_4887.w);

    continuing {
      let x_4889 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4889 + bitcast<u32>(1i));
    }
  }
  let x_4891 : vec4<f32> = u_xlat3;
  let x_4893 : f32 = u_xlat26;
  let x_4896 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4891.x, x_4891.y, x_4891.z) * vec3<f32>(x_4893, x_4893, x_4893)) + vec3<f32>(x_4896.x, x_4896.y, x_4896.z));
  let x_4899 : vec4<f32> = u_xlat8;
  let x_4901 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4899.x, x_4899.y, x_4899.z) + x_4901);
  let x_4905 : f32 = u_xlat78;
  let x_4907 : vec3<f32> = u_xlat0;
  let x_4908 : vec3<f32> = (vec3<f32>(x_4905, x_4905, x_4905) * x_4907);
  let x_4909 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4908.x, x_4908.y, x_4908.z, x_4909.w);
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


