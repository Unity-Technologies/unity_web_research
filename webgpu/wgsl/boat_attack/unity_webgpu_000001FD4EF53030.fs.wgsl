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

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1013 : UnityPerDraw;

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

@group(1) @binding(5) var<uniform> x_2469 : LightCookies;

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

@group(1) @binding(1) var<uniform> x_2979 : AdditionalLights;

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
  var x_2420 : f32;
  var x_2552 : f32;
  var x_2563 : vec3<f32>;
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
  let x_278 : f32 = u_xlat79;
  u_xlat79 = (x_278 + 0.00006103515625f);
  let x_281 : vec4<f32> = u_xlat4;
  let x_282 : f32 = u_xlat79;
  u_xlat4 = (x_281 / vec4<f32>(x_282, x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.x, x_285.x) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_298 : vec3<f32> = (vec3<f32>(x_293.y, x_293.y, x_293.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat12;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat11;
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.z, x_318.z, x_318.z) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat7;
  let x_328 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_341 : vec3<f32> = (vec3<f32>(x_336.w, x_336.w, x_336.w) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat8;
  let x_346 : vec4<f32> = u_xlat6;
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_359 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : f32 = x_112.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_359.x, x_359.y), x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.w);
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = u_xlat6.x;
  let x_370 : f32 = u_xlat6.z;
  u_xlat6.x = (x_368 * x_370);
  let x_373 : vec4<f32> = u_xlat6;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_386 : f32 = u_xlat79;
  u_xlat79 = min(x_386, 1.0f);
  let x_388 : f32 = u_xlat79;
  u_xlat79 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_391);
  let x_393 : f32 = u_xlat79;
  u_xlat7.z = max(x_393, 0.0000000000000001f);
  let x_397 : vec4<f32> = u_xlat6;
  let x_400 : f32 = x_13.x_NormalScale0;
  let x_402 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_400, x_400));
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_409 : vec4<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_112.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_409.z, x_409.w), x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat6.z;
  u_xlat6.x = (x_418 * x_420);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_429.x, x_429.y), vec2<f32>(x_431.x, x_431.y));
  let x_434 : f32 = u_xlat79;
  u_xlat79 = min(x_434, 1.0f);
  let x_436 : f32 = u_xlat79;
  u_xlat79 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_439);
  let x_441 : f32 = u_xlat79;
  u_xlat8.z = max(x_441, 0.0000000000000001f);
  let x_444 : vec4<f32> = u_xlat6;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_450 : f32 = x_13.x_NormalScale1;
  let x_451 : vec2<f32> = vec2<f32>(x_448, x_450);
  let x_455 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_451.x, x_451.y));
  let x_456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : vec4<f32> = u_xlat8;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat4;
  let x_467 : vec4<f32> = u_xlat7;
  let x_470 : vec4<f32> = u_xlat6;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_479 : vec4<f32> = vs_TEXCOORD2;
  let x_482 : f32 = x_112.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_479.x, x_479.y), x_482);
  let x_484 : vec3<f32> = vec3<f32>(x_483.x, x_483.y, x_483.w);
  let x_485 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat7.z;
  u_xlat7.x = (x_488 * x_490);
  let x_493 : vec4<f32> = u_xlat7;
  let x_496 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat7;
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_499.x, x_499.y), vec2<f32>(x_501.x, x_501.y));
  let x_504 : f32 = u_xlat79;
  u_xlat79 = min(x_504, 1.0f);
  let x_506 : f32 = u_xlat79;
  u_xlat79 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_509);
  let x_511 : f32 = u_xlat79;
  u_xlat8.z = max(x_511, 0.0000000000000001f);
  let x_514 : vec4<f32> = u_xlat7;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_520 : f32 = x_13.x_NormalScale2;
  let x_521 : vec2<f32> = vec2<f32>(x_518, x_520);
  let x_525 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_521.x, x_521.y));
  let x_526 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat8;
  let x_533 : vec4<f32> = u_xlat6;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.z, x_528.z, x_528.z) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_542 : vec4<f32> = vs_TEXCOORD2;
  let x_545 : f32 = x_112.x_GlobalMipBias.x;
  let x_546 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_542.z, x_542.w), x_545);
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.w);
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = u_xlat7.x;
  let x_553 : f32 = u_xlat7.z;
  u_xlat7.x = (x_551 * x_553);
  let x_556 : vec4<f32> = u_xlat7;
  let x_559 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_562.x, x_562.y), vec2<f32>(x_564.x, x_564.y));
  let x_567 : f32 = u_xlat79;
  u_xlat79 = min(x_567, 1.0f);
  let x_569 : f32 = u_xlat79;
  u_xlat79 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_572);
  let x_574 : f32 = u_xlat79;
  u_xlat8.z = max(x_574, 0.0000000000000001f);
  let x_577 : vec4<f32> = u_xlat7;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_583 : f32 = x_13.x_NormalScale3;
  let x_584 : vec2<f32> = vec2<f32>(x_581, x_583);
  let x_588 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_584.x, x_584.y));
  let x_589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = u_xlat8;
  let x_596 : vec4<f32> = u_xlat6;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.w, x_591.w, x_591.w) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat6.z;
  u_xlat6.w = (x_602 + 0.00000999999974737875f);
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_606.x, x_606.y, x_606.w), vec3<f32>(x_608.x, x_608.y, x_608.w));
  let x_611 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_611);
  let x_613 : f32 = u_xlat79;
  let x_615 : vec4<f32> = u_xlat6;
  let x_617 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.w));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_621;
  let x_624 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_624;
  let x_627 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_627;
  let x_630 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_630;
  let x_633 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_642;
  let x_644 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_644 + x_645);
  let x_648 : f32 = u_xlat0.z;
  u_xlat8.x = x_648;
  let x_651 : f32 = u_xlat1.z;
  u_xlat8.y = x_651;
  let x_654 : f32 = u_xlat2.z;
  u_xlat8.z = x_654;
  let x_657 : f32 = u_xlat3.y;
  u_xlat8.w = x_657;
  let x_659 : vec4<f32> = u_xlat9;
  let x_662 : f32 = x_13.x_Smoothness0;
  let x_664 : f32 = x_13.x_Smoothness1;
  let x_666 : f32 = x_13.x_Smoothness2;
  let x_668 : f32 = x_13.x_Smoothness3;
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_659) * vec4<f32>(x_662, x_664, x_666, x_668)) + x_671);
  let x_675 : f32 = x_13.x_LayerHasMask0;
  let x_678 : f32 = x_13.x_LayerHasMask1;
  let x_681 : f32 = x_13.x_LayerHasMask2;
  let x_684 : f32 = x_13.x_LayerHasMask3;
  let x_686 : vec4<f32> = u_xlat8;
  let x_688 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_675, x_678, x_681, x_684) * x_686) + x_688);
  let x_691 : vec4<f32> = u_xlat4;
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_691, x_692);
  let x_695 : f32 = u_xlat0.x;
  u_xlat8.x = x_695;
  let x_698 : f32 = u_xlat1.x;
  u_xlat8.y = x_698;
  let x_701 : f32 = u_xlat2.x;
  u_xlat8.z = x_701;
  let x_704 : f32 = u_xlat3.x;
  u_xlat8.w = x_704;
  let x_706 : vec4<f32> = u_xlat8;
  let x_709 : f32 = x_13.x_Metallic0;
  let x_712 : f32 = x_13.x_Metallic1;
  let x_715 : f32 = x_13.x_Metallic2;
  let x_718 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_706 + -(vec4<f32>(x_709, x_712, x_715, x_718)));
  let x_723 : f32 = x_13.x_LayerHasMask0;
  let x_725 : f32 = x_13.x_LayerHasMask1;
  let x_727 : f32 = x_13.x_LayerHasMask2;
  let x_729 : f32 = x_13.x_LayerHasMask3;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_13.x_Metallic0;
  let x_736 : f32 = x_13.x_Metallic1;
  let x_738 : f32 = x_13.x_Metallic2;
  let x_740 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_723, x_725, x_727, x_729) * x_731) + vec4<f32>(x_734, x_736, x_738, x_740));
  let x_743 : vec4<f32> = u_xlat4;
  let x_744 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat0.y;
  u_xlat3.x = x_748;
  let x_751 : f32 = u_xlat1.y;
  u_xlat3.y = x_751;
  let x_754 : f32 = u_xlat2.y;
  u_xlat3.z = x_754;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_756) + x_758);
  let x_761 : f32 = x_13.x_LayerHasMask0;
  let x_763 : f32 = x_13.x_LayerHasMask1;
  let x_765 : f32 = x_13.x_LayerHasMask2;
  let x_767 : f32 = x_13.x_LayerHasMask3;
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_761, x_763, x_765, x_767) * x_769) + x_771);
  let x_774 : vec4<f32> = u_xlat4;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_774, x_775);
  let x_777 : vec4<f32> = u_xlat6;
  let x_780 : vec4<f32> = vs_TEXCOORD5;
  let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.y, x_777.y) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_788 : vec4<f32> = vs_TEXCOORD4;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.x, x_785.x) * -(vec3<f32>(x_788.x, x_788.y, x_788.z))) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_797.z, x_797.z, x_797.z) * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_808.x, x_808.y, x_808.z), vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_813);
  let x_815 : f32 = u_xlat79;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_824 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_824 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec3<f32> = vs_TEXCOORD7;
  let x_843 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres1;
  let x_846 : vec3<f32> = (x_841 + -(vec3<f32>(x_843.x, x_843.y, x_843.z)));
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_851 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres2;
  let x_854 : vec3<f32> = (x_849 + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec3<f32> = vs_TEXCOORD7;
  let x_859 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres3;
  let x_862 : vec3<f32> = (x_857 + -(vec3<f32>(x_859.x, x_859.y, x_859.z)));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_871 : vec4<f32> = u_xlat3;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat6;
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec4<f32> = x_833.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_891 < x_893);
  let x_896 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_896);
  let x_900 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_900);
  let x_904 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_904);
  let x_908 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_912);
  let x_917 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_917);
  let x_921 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_921);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : vec4<f32> = u_xlat3;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) + vec3<f32>(x_926.y, x_926.z, x_926.w));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = max(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_935 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_934.x, x_934.y, x_934.z);
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_943 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_943) + 4.0f);
  let x_950 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_950);
  let x_954 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_954) << bitcast<u32>(2i));
  let x_958 : vec3<f32> = vs_TEXCOORD7;
  let x_960 : i32 = u_xlati2;
  let x_963 : i32 = u_xlati2;
  let x_967 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_960 + 1i) / 4i)][((x_963 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_958.y, x_958.y, x_958.y) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_975 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_970 / 4i)][(x_972 % 4i)];
  let x_977 : vec3<f32> = vs_TEXCOORD7;
  let x_980 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
  let x_982 : i32 = u_xlati2;
  let x_985 : i32 = u_xlati2;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + x_994);
  let x_996 : vec3<f32> = u_xlat28;
  let x_997 : i32 = u_xlati2;
  let x_1000 : i32 = u_xlati2;
  let x_1004 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
  let x_1006 : vec3<f32> = (x_996 + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  u_xlat1.w = 1.0f;
  let x_1015 : vec4<f32> = x_1013.unity_SHAr;
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1015, x_1016);
  let x_1020 : vec4<f32> = x_1013.unity_SHAg;
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1020, x_1021);
  let x_1025 : vec4<f32> = x_1013.unity_SHAb;
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1025, x_1026);
  let x_1029 : vec4<f32> = u_xlat1;
  let x_1031 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1029.y, x_1029.z, x_1029.z, x_1029.x) * vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1031.z));
  let x_1035 : vec4<f32> = x_1013.unity_SHBr;
  let x_1036 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1035, x_1036);
  let x_1040 : vec4<f32> = x_1013.unity_SHBg;
  let x_1041 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1040, x_1041);
  let x_1045 : vec4<f32> = x_1013.unity_SHBb;
  let x_1046 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1045, x_1046);
  let x_1050 : f32 = u_xlat1.y;
  let x_1052 : f32 = u_xlat1.y;
  u_xlat79 = (x_1050 * x_1052);
  let x_1055 : f32 = u_xlat1.x;
  let x_1057 : f32 = u_xlat1.x;
  let x_1059 : f32 = u_xlat79;
  u_xlat79 = ((x_1055 * x_1057) + -(x_1059));
  let x_1064 : vec4<f32> = x_1013.unity_SHC;
  let x_1066 : f32 = u_xlat79;
  let x_1069 : vec4<f32> = u_xlat6;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066, x_1066, x_1066)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat3;
  let x_1076 : vec4<f32> = u_xlat4;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : vec3<f32> = max(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1084 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1087 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_1087) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1093 : f32 = u_xlat79;
  u_xlat80 = (-(x_1093) + 1.0f);
  let x_1096 : f32 = u_xlat79;
  let x_1098 : vec4<f32> = u_xlat5;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1096, x_1096, x_1096) * vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat5;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1108 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec3<f32> = u_xlat0;
  let x_1112 : vec4<f32> = u_xlat5;
  let x_1117 : vec3<f32> = ((vec3<f32>(x_1110.x, x_1110.x, x_1110.x) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1118 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1120) + 1.0f);
  let x_1125 : f32 = u_xlat0.x;
  let x_1127 : f32 = u_xlat0.x;
  u_xlat79 = (x_1125 * x_1127);
  let x_1129 : f32 = u_xlat79;
  u_xlat79 = max(x_1129, 0.0078125f);
  let x_1133 : f32 = u_xlat79;
  let x_1134 : f32 = u_xlat79;
  u_xlat81 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat52;
  let x_1137 : f32 = u_xlat80;
  u_xlat52 = (x_1136 + x_1137);
  let x_1139 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1139, 0.0f, 1.0f);
  let x_1141 : f32 = u_xlat79;
  u_xlat80 = ((x_1141 * 4.0f) + 2.0f);
  let x_1144 : f32 = u_xlat26;
  u_xlat26 = min(x_1144, 1.0f);
  let x_1148 : f32 = x_833.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_1148);
  let x_1150 : bool = u_xlatb82;
  if (x_1150) {
    let x_1154 : f32 = x_833.x_MainLightShadowParams.y;
    u_xlatb82 = (x_1154 == 1.0f);
    let x_1156 : bool = u_xlatb82;
    if (x_1156) {
      let x_1159 : vec4<f32> = u_xlat2;
      let x_1162 : vec4<f32> = x_833.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y) + x_1162);
      let x_1166 : vec4<f32> = u_xlat6;
      let x_1167 : vec2<f32> = vec2<f32>(x_1166.x, x_1166.y);
      let x_1169 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
      let x_1181 : vec3<f32> = txVec0;
      let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
      u_xlat7.x = x_1183;
      let x_1186 : vec4<f32> = u_xlat6;
      let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
      let x_1189 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
      let x_1196 : vec3<f32> = txVec1;
      let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
      u_xlat7.y = x_1198;
      let x_1200 : vec4<f32> = u_xlat2;
      let x_1203 : vec4<f32> = x_833.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.y) + x_1203);
      let x_1206 : vec4<f32> = u_xlat6;
      let x_1207 : vec2<f32> = vec2<f32>(x_1206.x, x_1206.y);
      let x_1209 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1207.x, x_1207.y, x_1209);
      let x_1216 : vec3<f32> = txVec2;
      let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
      u_xlat7.z = x_1218;
      let x_1221 : vec4<f32> = u_xlat6;
      let x_1222 : vec2<f32> = vec2<f32>(x_1221.z, x_1221.w);
      let x_1224 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
      let x_1231 : vec3<f32> = txVec3;
      let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1231.xy, x_1231.z);
      u_xlat7.w = x_1233;
      let x_1236 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_1236, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1243 : f32 = x_833.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1243 == 2.0f);
      let x_1245 : bool = u_xlatb83;
      if (x_1245) {
        let x_1248 : vec4<f32> = u_xlat2;
        let x_1251 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.z, x_1251.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1255 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
        let x_1257 : vec4<f32> = u_xlat6;
        let x_1259 : vec2<f32> = floor(vec2<f32>(x_1257.x, x_1257.y));
        let x_1260 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
        let x_1264 : vec4<f32> = u_xlat2;
        let x_1267 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.z, x_1267.w)) + -(vec2<f32>(x_1270.x, x_1270.y)));
        let x_1274 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1274.x, x_1274.x, x_1274.y, x_1274.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1278 : vec4<f32> = u_xlat7;
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1278.x, x_1278.x, x_1278.z, x_1278.z) * vec4<f32>(x_1280.x, x_1280.x, x_1280.z, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1287 : vec2<f32> = (vec2<f32>(x_1283.y, x_1283.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1288 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1287.x, x_1288.y, x_1287.y, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat8;
        let x_1293 : vec2<f32> = u_xlat58;
        let x_1295 : vec2<f32> = ((vec2<f32>(x_1290.x, x_1290.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1293));
        let x_1296 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
        let x_1299 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1299) + vec2<f32>(1.0f, 1.0f));
        let x_1303 : vec2<f32> = u_xlat58;
        let x_1305 : vec2<f32> = min(x_1303, vec2<f32>(0.0f, 0.0f));
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1311 : vec4<f32> = u_xlat9;
        let x_1314 : vec2<f32> = u_xlat60;
        let x_1315 : vec2<f32> = ((-(vec2<f32>(x_1308.x, x_1308.y)) * vec2<f32>(x_1311.x, x_1311.y)) + x_1314);
        let x_1316 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1318, vec2<f32>(0.0f, 0.0f));
        let x_1320 : vec2<f32> = u_xlat58;
        let x_1322 : vec2<f32> = u_xlat58;
        let x_1324 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1320) * x_1322) + vec2<f32>(x_1324.y, x_1324.w));
        let x_1327 : vec4<f32> = u_xlat9;
        let x_1329 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.y) + vec2<f32>(1.0f, 1.0f));
        let x_1330 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        let x_1332 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1332 + vec2<f32>(1.0f, 1.0f));
        let x_1334 : vec4<f32> = u_xlat8;
        let x_1338 : vec2<f32> = (vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1339 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec2<f32> = u_xlat60;
        let x_1342 : vec2<f32> = (x_1341 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat9;
        let x_1347 : vec2<f32> = (vec2<f32>(x_1345.x, x_1345.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec2<f32> = u_xlat58;
        let x_1351 : vec2<f32> = (x_1350 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1352 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1354 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1354.y, x_1354.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1358 : f32 = u_xlat9.x;
        u_xlat10.z = x_1358;
        let x_1361 : f32 = u_xlat58.x;
        u_xlat10.w = x_1361;
        let x_1364 : f32 = u_xlat11.x;
        u_xlat8.z = x_1364;
        let x_1367 : f32 = u_xlat7.x;
        u_xlat8.w = x_1367;
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1371 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1369.z, x_1369.w, x_1369.x, x_1369.z) + vec4<f32>(x_1371.z, x_1371.w, x_1371.x, x_1371.z));
        let x_1375 : f32 = u_xlat10.y;
        u_xlat9.z = x_1375;
        let x_1378 : f32 = u_xlat58.y;
        u_xlat9.w = x_1378;
        let x_1381 : f32 = u_xlat8.y;
        u_xlat11.z = x_1381;
        let x_1384 : f32 = u_xlat7.z;
        u_xlat11.w = x_1384;
        let x_1386 : vec4<f32> = u_xlat9;
        let x_1388 : vec4<f32> = u_xlat11;
        let x_1390 : vec3<f32> = (vec3<f32>(x_1386.z, x_1386.y, x_1386.w) + vec3<f32>(x_1388.z, x_1388.y, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1395 : vec4<f32> = u_xlat12;
        let x_1397 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.z, x_1393.w) / vec3<f32>(x_1395.z, x_1395.w, x_1395.y));
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
        let x_1400 : vec4<f32> = u_xlat8;
        let x_1406 : vec3<f32> = (vec3<f32>(x_1400.x, x_1400.y, x_1400.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1413 : vec3<f32> = (vec3<f32>(x_1409.z, x_1409.y, x_1409.w) / vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
        let x_1414 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat9;
        let x_1418 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1419 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
        let x_1421 : vec4<f32> = u_xlat8;
        let x_1424 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1426 : vec3<f32> = (vec3<f32>(x_1421.y, x_1421.x, x_1421.z) * vec3<f32>(x_1424.x, x_1424.x, x_1424.x));
        let x_1427 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1432 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1434 : vec3<f32> = (vec3<f32>(x_1429.x, x_1429.y, x_1429.z) * vec3<f32>(x_1432.y, x_1432.y, x_1432.y));
        let x_1435 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
        let x_1438 : f32 = u_xlat9.x;
        u_xlat8.w = x_1438;
        let x_1440 : vec4<f32> = u_xlat6;
        let x_1443 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1446 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1440.x, x_1440.y, x_1440.x, x_1440.y) * vec4<f32>(x_1443.x, x_1443.y, x_1443.x, x_1443.y)) + vec4<f32>(x_1446.y, x_1446.w, x_1446.x, x_1446.w));
        let x_1449 : vec4<f32> = u_xlat6;
        let x_1452 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1455 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(x_1452.x, x_1452.y)) + vec2<f32>(x_1455.z, x_1455.w));
        let x_1459 : f32 = u_xlat8.y;
        u_xlat9.w = x_1459;
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.y, x_1461.z);
        let x_1463 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1463.x, x_1462.x, x_1463.z, x_1462.y);
        let x_1465 : vec4<f32> = u_xlat6;
        let x_1468 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1471 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1465.x, x_1465.y, x_1465.x, x_1465.y) * vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y)) + vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1471.y));
        let x_1474 : vec4<f32> = u_xlat6;
        let x_1477 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y) * vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y)) + vec4<f32>(x_1480.w, x_1480.y, x_1480.w, x_1480.z));
        let x_1483 : vec4<f32> = u_xlat6;
        let x_1486 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y) * vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y)) + vec4<f32>(x_1489.x, x_1489.w, x_1489.z, x_1489.w));
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1494 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1492.x, x_1492.x, x_1492.x, x_1492.y) * vec4<f32>(x_1494.z, x_1494.w, x_1494.y, x_1494.z));
        let x_1498 : vec4<f32> = u_xlat7;
        let x_1500 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1498.y, x_1498.y, x_1498.z, x_1498.z) * x_1500);
        let x_1504 : f32 = u_xlat7.z;
        let x_1506 : f32 = u_xlat12.y;
        u_xlat83 = (x_1504 * x_1506);
        let x_1509 : vec4<f32> = u_xlat10;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec4;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat6.x = x_1521;
        let x_1524 : vec4<f32> = u_xlat10;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.z, x_1524.w);
        let x_1527 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1535 : vec3<f32> = txVec5;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat32 = x_1537;
        let x_1538 : f32 = u_xlat32;
        let x_1540 : f32 = u_xlat13.y;
        u_xlat32 = (x_1538 * x_1540);
        let x_1543 : f32 = u_xlat13.x;
        let x_1545 : f32 = u_xlat6.x;
        let x_1547 : f32 = u_xlat32;
        u_xlat6.x = ((x_1543 * x_1545) + x_1547);
        let x_1551 : vec2<f32> = u_xlat58;
        let x_1553 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec6;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat32 = x_1562;
        let x_1564 : f32 = u_xlat13.z;
        let x_1565 : f32 = u_xlat32;
        let x_1568 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1564 * x_1565) + x_1568);
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1573 : vec2<f32> = vec2<f32>(x_1572.x, x_1572.y);
        let x_1575 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec7;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat32 = x_1584;
        let x_1586 : f32 = u_xlat13.w;
        let x_1587 : f32 = u_xlat32;
        let x_1590 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1586 * x_1587) + x_1590);
        let x_1594 : vec4<f32> = u_xlat11;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.x, x_1594.y);
        let x_1597 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec8;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat32 = x_1606;
        let x_1608 : f32 = u_xlat14.x;
        let x_1609 : f32 = u_xlat32;
        let x_1612 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1608 * x_1609) + x_1612);
        let x_1616 : vec4<f32> = u_xlat11;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.z, x_1616.w);
        let x_1619 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec9;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
        u_xlat32 = x_1628;
        let x_1630 : f32 = u_xlat14.y;
        let x_1631 : f32 = u_xlat32;
        let x_1634 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1630 * x_1631) + x_1634);
        let x_1638 : vec4<f32> = u_xlat9;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.z, x_1638.w);
        let x_1641 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec10;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat32 = x_1650;
        let x_1652 : f32 = u_xlat14.z;
        let x_1653 : f32 = u_xlat32;
        let x_1656 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1652 * x_1653) + x_1656);
        let x_1660 : vec4<f32> = u_xlat8;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec11;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1670.xy, x_1670.z);
        u_xlat32 = x_1672;
        let x_1674 : f32 = u_xlat14.w;
        let x_1675 : f32 = u_xlat32;
        let x_1678 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1674 * x_1675) + x_1678);
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1683 : vec2<f32> = vec2<f32>(x_1682.z, x_1682.w);
        let x_1685 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec12;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
        u_xlat32 = x_1694;
        let x_1695 : f32 = u_xlat83;
        let x_1696 : f32 = u_xlat32;
        let x_1699 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1695 * x_1696) + x_1699);
      } else {
        let x_1702 : vec4<f32> = u_xlat2;
        let x_1705 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1708 : vec2<f32> = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(x_1705.z, x_1705.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1709 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
        let x_1711 : vec4<f32> = u_xlat6;
        let x_1713 : vec2<f32> = floor(vec2<f32>(x_1711.x, x_1711.y));
        let x_1714 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1713.x, x_1713.y, x_1714.z, x_1714.w);
        let x_1716 : vec4<f32> = u_xlat2;
        let x_1719 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1719.z, x_1719.w)) + -(vec2<f32>(x_1722.x, x_1722.y)));
        let x_1726 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1726.x, x_1726.x, x_1726.y, x_1726.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1729 : vec4<f32> = u_xlat7;
        let x_1731 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1729.x, x_1729.x, x_1729.z, x_1729.z) * vec4<f32>(x_1731.x, x_1731.x, x_1731.z, x_1731.z));
        let x_1734 : vec4<f32> = u_xlat8;
        let x_1738 : vec2<f32> = (vec2<f32>(x_1734.y, x_1734.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1739.x, x_1738.x, x_1739.z, x_1738.y);
        let x_1741 : vec4<f32> = u_xlat8;
        let x_1744 : vec2<f32> = u_xlat58;
        let x_1746 : vec2<f32> = ((vec2<f32>(x_1741.x, x_1741.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1744));
        let x_1747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1746.x, x_1747.y, x_1746.y, x_1747.w);
        let x_1749 : vec2<f32> = u_xlat58;
        let x_1751 : vec2<f32> = (-(x_1749) + vec2<f32>(1.0f, 1.0f));
        let x_1752 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
        let x_1754 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1754, vec2<f32>(0.0f, 0.0f));
        let x_1756 : vec2<f32> = u_xlat60;
        let x_1758 : vec2<f32> = u_xlat60;
        let x_1760 : vec4<f32> = u_xlat8;
        let x_1762 : vec2<f32> = ((-(x_1756) * x_1758) + vec2<f32>(x_1760.x, x_1760.y));
        let x_1763 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1762.x, x_1762.y, x_1763.z, x_1763.w);
        let x_1765 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1765, vec2<f32>(0.0f, 0.0f));
        let x_1768 : vec2<f32> = u_xlat60;
        let x_1770 : vec2<f32> = u_xlat60;
        let x_1772 : vec4<f32> = u_xlat7;
        let x_1774 : vec2<f32> = ((-(x_1768) * x_1770) + vec2<f32>(x_1772.y, x_1772.w));
        let x_1775 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1774.x, x_1775.y, x_1774.y);
        let x_1777 : vec4<f32> = u_xlat8;
        let x_1779 : vec2<f32> = (vec2<f32>(x_1777.x, x_1777.y) + vec2<f32>(2.0f, 2.0f));
        let x_1780 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
        let x_1782 : vec3<f32> = u_xlat33;
        let x_1784 : vec2<f32> = (vec2<f32>(x_1782.x, x_1782.z) + vec2<f32>(2.0f, 2.0f));
        let x_1785 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1785.x, x_1784.x, x_1785.z, x_1784.y);
        let x_1788 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1788 * 0.08163200318813323975f);
        let x_1792 : vec4<f32> = u_xlat7;
        let x_1795 : vec3<f32> = (vec3<f32>(x_1792.z, x_1792.x, x_1792.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1796 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
        let x_1798 : vec4<f32> = u_xlat8;
        let x_1801 : vec2<f32> = (vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1802 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1801.x, x_1801.y, x_1802.z, x_1802.w);
        let x_1805 : f32 = u_xlat11.y;
        u_xlat10.x = x_1805;
        let x_1807 : vec2<f32> = u_xlat58;
        let x_1814 : vec2<f32> = ((vec2<f32>(x_1807.x, x_1807.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1815 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1815.x, x_1814.x, x_1815.z, x_1814.y);
        let x_1817 : vec2<f32> = u_xlat58;
        let x_1821 : vec2<f32> = ((vec2<f32>(x_1817.x, x_1817.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1822 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1821.x, x_1822.y, x_1821.y, x_1822.w);
        let x_1825 : f32 = u_xlat7.x;
        u_xlat8.y = x_1825;
        let x_1828 : f32 = u_xlat9.y;
        u_xlat8.w = x_1828;
        let x_1830 : vec4<f32> = u_xlat8;
        let x_1831 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1830 + x_1831);
        let x_1833 : vec2<f32> = u_xlat58;
        let x_1836 : vec2<f32> = ((vec2<f32>(x_1833.y, x_1833.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1837 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1837.x, x_1836.x, x_1837.z, x_1836.y);
        let x_1839 : vec2<f32> = u_xlat58;
        let x_1842 : vec2<f32> = ((vec2<f32>(x_1839.y, x_1839.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1843 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1842.x, x_1843.y, x_1842.y, x_1843.w);
        let x_1846 : f32 = u_xlat7.y;
        u_xlat9.y = x_1846;
        let x_1848 : vec4<f32> = u_xlat9;
        let x_1849 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1848 + x_1849);
        let x_1851 : vec4<f32> = u_xlat8;
        let x_1852 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1851 / x_1852);
        let x_1854 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1854 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1860 : vec4<f32> = u_xlat9;
        let x_1861 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1860 / x_1861);
        let x_1863 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1863 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1865 : vec4<f32> = u_xlat8;
        let x_1868 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1865.w, x_1865.x, x_1865.y, x_1865.z) * vec4<f32>(x_1868.x, x_1868.x, x_1868.x, x_1868.x));
        let x_1871 : vec4<f32> = u_xlat9;
        let x_1874 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1871.x, x_1871.w, x_1871.y, x_1871.z) * vec4<f32>(x_1874.y, x_1874.y, x_1874.y, x_1874.y));
        let x_1877 : vec4<f32> = u_xlat8;
        let x_1878 : vec3<f32> = vec3<f32>(x_1877.y, x_1877.z, x_1877.w);
        let x_1879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1878.x, x_1879.y, x_1878.y, x_1878.z);
        let x_1882 : f32 = u_xlat9.x;
        u_xlat11.y = x_1882;
        let x_1884 : vec4<f32> = u_xlat6;
        let x_1887 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1890 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1884.x, x_1884.y, x_1884.x, x_1884.y) * vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.y)) + vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1890.y));
        let x_1893 : vec4<f32> = u_xlat6;
        let x_1896 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1899 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1893.x, x_1893.y) * vec2<f32>(x_1896.x, x_1896.y)) + vec2<f32>(x_1899.w, x_1899.y));
        let x_1903 : f32 = u_xlat11.y;
        u_xlat8.y = x_1903;
        let x_1906 : f32 = u_xlat9.z;
        u_xlat11.y = x_1906;
        let x_1908 : vec4<f32> = u_xlat6;
        let x_1911 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1908.x, x_1908.y, x_1908.x, x_1908.y) * vec4<f32>(x_1911.x, x_1911.y, x_1911.x, x_1911.y)) + vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1914.y));
        let x_1917 : vec4<f32> = u_xlat6;
        let x_1920 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1923 : vec4<f32> = u_xlat11;
        let x_1925 : vec2<f32> = ((vec2<f32>(x_1917.x, x_1917.y) * vec2<f32>(x_1920.x, x_1920.y)) + vec2<f32>(x_1923.w, x_1923.y));
        let x_1926 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1925.x, x_1925.y, x_1926.z, x_1926.w);
        let x_1929 : f32 = u_xlat11.y;
        u_xlat8.z = x_1929;
        let x_1932 : vec4<f32> = u_xlat6;
        let x_1935 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1938 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1932.x, x_1932.y, x_1932.x, x_1932.y) * vec4<f32>(x_1935.x, x_1935.y, x_1935.x, x_1935.y)) + vec4<f32>(x_1938.x, x_1938.y, x_1938.x, x_1938.z));
        let x_1942 : f32 = u_xlat9.w;
        u_xlat11.y = x_1942;
        let x_1945 : vec4<f32> = u_xlat6;
        let x_1948 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1951 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1945.x, x_1945.y, x_1945.x, x_1945.y) * vec4<f32>(x_1948.x, x_1948.y, x_1948.x, x_1948.y)) + vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1951.y));
        let x_1955 : vec4<f32> = u_xlat6;
        let x_1958 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1961 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1955.x, x_1955.y) * vec2<f32>(x_1958.x, x_1958.y)) + vec2<f32>(x_1961.w, x_1961.y));
        let x_1965 : f32 = u_xlat11.y;
        u_xlat8.w = x_1965;
        let x_1968 : vec4<f32> = u_xlat6;
        let x_1971 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1974 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1968.x, x_1968.y) * vec2<f32>(x_1971.x, x_1971.y)) + vec2<f32>(x_1974.x, x_1974.w));
        let x_1977 : vec4<f32> = u_xlat11;
        let x_1978 : vec3<f32> = vec3<f32>(x_1977.x, x_1977.z, x_1977.w);
        let x_1979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1978.x, x_1979.y, x_1978.y, x_1978.z);
        let x_1981 : vec4<f32> = u_xlat6;
        let x_1984 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1987 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1981.x, x_1981.y, x_1981.x, x_1981.y) * vec4<f32>(x_1984.x, x_1984.y, x_1984.x, x_1984.y)) + vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1987.y));
        let x_1991 : vec4<f32> = u_xlat6;
        let x_1994 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1997 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1991.x, x_1991.y) * vec2<f32>(x_1994.x, x_1994.y)) + vec2<f32>(x_1997.w, x_1997.y));
        let x_2001 : f32 = u_xlat8.x;
        u_xlat9.x = x_2001;
        let x_2003 : vec4<f32> = u_xlat6;
        let x_2006 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2009 : vec4<f32> = u_xlat9;
        let x_2011 : vec2<f32> = ((vec2<f32>(x_2003.x, x_2003.y) * vec2<f32>(x_2006.x, x_2006.y)) + vec2<f32>(x_2009.x, x_2009.y));
        let x_2012 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2011.x, x_2011.y, x_2012.z, x_2012.w);
        let x_2015 : vec4<f32> = u_xlat7;
        let x_2017 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2015.x, x_2015.x, x_2015.x, x_2015.x) * x_2017);
        let x_2020 : vec4<f32> = u_xlat7;
        let x_2022 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2020.y, x_2020.y, x_2020.y, x_2020.y) * x_2022);
        let x_2025 : vec4<f32> = u_xlat7;
        let x_2027 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2025.z, x_2025.z, x_2025.z, x_2025.z) * x_2027);
        let x_2029 : vec4<f32> = u_xlat7;
        let x_2031 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2029.w, x_2029.w, x_2029.w, x_2029.w) * x_2031);
        let x_2034 : vec4<f32> = u_xlat12;
        let x_2035 : vec2<f32> = vec2<f32>(x_2034.x, x_2034.y);
        let x_2037 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2035.x, x_2035.y, x_2037);
        let x_2044 : vec3<f32> = txVec13;
        let x_2046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2044.xy, x_2044.z);
        u_xlat83 = x_2046;
        let x_2048 : vec4<f32> = u_xlat12;
        let x_2049 : vec2<f32> = vec2<f32>(x_2048.z, x_2048.w);
        let x_2051 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2049.x, x_2049.y, x_2051);
        let x_2058 : vec3<f32> = txVec14;
        let x_2060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2058.xy, x_2058.z);
        u_xlat8.x = x_2060;
        let x_2063 : f32 = u_xlat8.x;
        let x_2065 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2063 * x_2065);
        let x_2069 : f32 = u_xlat17.x;
        let x_2070 : f32 = u_xlat83;
        let x_2073 : f32 = u_xlat8.x;
        u_xlat83 = ((x_2069 * x_2070) + x_2073);
        let x_2076 : vec2<f32> = u_xlat58;
        let x_2078 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
        let x_2085 : vec3<f32> = txVec15;
        let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
        u_xlat58.x = x_2087;
        let x_2090 : f32 = u_xlat17.z;
        let x_2092 : f32 = u_xlat58.x;
        let x_2094 : f32 = u_xlat83;
        u_xlat83 = ((x_2090 * x_2092) + x_2094);
        let x_2097 : vec4<f32> = u_xlat15;
        let x_2098 : vec2<f32> = vec2<f32>(x_2097.x, x_2097.y);
        let x_2100 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec16;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
        u_xlat58.x = x_2109;
        let x_2112 : f32 = u_xlat17.w;
        let x_2114 : f32 = u_xlat58.x;
        let x_2116 : f32 = u_xlat83;
        u_xlat83 = ((x_2112 * x_2114) + x_2116);
        let x_2119 : vec4<f32> = u_xlat13;
        let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
        let x_2122 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2129 : vec3<f32> = txVec17;
        let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
        u_xlat58.x = x_2131;
        let x_2134 : f32 = u_xlat18.x;
        let x_2136 : f32 = u_xlat58.x;
        let x_2138 : f32 = u_xlat83;
        u_xlat83 = ((x_2134 * x_2136) + x_2138);
        let x_2141 : vec4<f32> = u_xlat13;
        let x_2142 : vec2<f32> = vec2<f32>(x_2141.z, x_2141.w);
        let x_2144 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2142.x, x_2142.y, x_2144);
        let x_2151 : vec3<f32> = txVec18;
        let x_2153 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2151.xy, x_2151.z);
        u_xlat58.x = x_2153;
        let x_2156 : f32 = u_xlat18.y;
        let x_2158 : f32 = u_xlat58.x;
        let x_2160 : f32 = u_xlat83;
        u_xlat83 = ((x_2156 * x_2158) + x_2160);
        let x_2163 : vec4<f32> = u_xlat14;
        let x_2164 : vec2<f32> = vec2<f32>(x_2163.x, x_2163.y);
        let x_2166 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2164.x, x_2164.y, x_2166);
        let x_2173 : vec3<f32> = txVec19;
        let x_2175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2173.xy, x_2173.z);
        u_xlat58.x = x_2175;
        let x_2178 : f32 = u_xlat18.z;
        let x_2180 : f32 = u_xlat58.x;
        let x_2182 : f32 = u_xlat83;
        u_xlat83 = ((x_2178 * x_2180) + x_2182);
        let x_2185 : vec4<f32> = u_xlat15;
        let x_2186 : vec2<f32> = vec2<f32>(x_2185.z, x_2185.w);
        let x_2188 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2186.x, x_2186.y, x_2188);
        let x_2195 : vec3<f32> = txVec20;
        let x_2197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2195.xy, x_2195.z);
        u_xlat58.x = x_2197;
        let x_2200 : f32 = u_xlat18.w;
        let x_2202 : f32 = u_xlat58.x;
        let x_2204 : f32 = u_xlat83;
        u_xlat83 = ((x_2200 * x_2202) + x_2204);
        let x_2207 : vec4<f32> = u_xlat16;
        let x_2208 : vec2<f32> = vec2<f32>(x_2207.x, x_2207.y);
        let x_2210 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2208.x, x_2208.y, x_2210);
        let x_2217 : vec3<f32> = txVec21;
        let x_2219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2217.xy, x_2217.z);
        u_xlat58.x = x_2219;
        let x_2222 : f32 = u_xlat19.x;
        let x_2224 : f32 = u_xlat58.x;
        let x_2226 : f32 = u_xlat83;
        u_xlat83 = ((x_2222 * x_2224) + x_2226);
        let x_2229 : vec4<f32> = u_xlat16;
        let x_2230 : vec2<f32> = vec2<f32>(x_2229.z, x_2229.w);
        let x_2232 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2230.x, x_2230.y, x_2232);
        let x_2239 : vec3<f32> = txVec22;
        let x_2241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2239.xy, x_2239.z);
        u_xlat58.x = x_2241;
        let x_2244 : f32 = u_xlat19.y;
        let x_2246 : f32 = u_xlat58.x;
        let x_2248 : f32 = u_xlat83;
        u_xlat83 = ((x_2244 * x_2246) + x_2248);
        let x_2251 : vec2<f32> = u_xlat34;
        let x_2253 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2251.x, x_2251.y, x_2253);
        let x_2260 : vec3<f32> = txVec23;
        let x_2262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2260.xy, x_2260.z);
        u_xlat58.x = x_2262;
        let x_2265 : f32 = u_xlat19.z;
        let x_2267 : f32 = u_xlat58.x;
        let x_2269 : f32 = u_xlat83;
        u_xlat83 = ((x_2265 * x_2267) + x_2269);
        let x_2272 : vec2<f32> = u_xlat66;
        let x_2274 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2272.x, x_2272.y, x_2274);
        let x_2281 : vec3<f32> = txVec24;
        let x_2283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2281.xy, x_2281.z);
        u_xlat58.x = x_2283;
        let x_2286 : f32 = u_xlat19.w;
        let x_2288 : f32 = u_xlat58.x;
        let x_2290 : f32 = u_xlat83;
        u_xlat83 = ((x_2286 * x_2288) + x_2290);
        let x_2293 : vec4<f32> = u_xlat11;
        let x_2294 : vec2<f32> = vec2<f32>(x_2293.x, x_2293.y);
        let x_2296 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2294.x, x_2294.y, x_2296);
        let x_2303 : vec3<f32> = txVec25;
        let x_2305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2303.xy, x_2303.z);
        u_xlat58.x = x_2305;
        let x_2308 : f32 = u_xlat7.x;
        let x_2310 : f32 = u_xlat58.x;
        let x_2312 : f32 = u_xlat83;
        u_xlat83 = ((x_2308 * x_2310) + x_2312);
        let x_2315 : vec4<f32> = u_xlat11;
        let x_2316 : vec2<f32> = vec2<f32>(x_2315.z, x_2315.w);
        let x_2318 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2316.x, x_2316.y, x_2318);
        let x_2325 : vec3<f32> = txVec26;
        let x_2327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2325.xy, x_2325.z);
        u_xlat58.x = x_2327;
        let x_2330 : f32 = u_xlat7.y;
        let x_2332 : f32 = u_xlat58.x;
        let x_2334 : f32 = u_xlat83;
        u_xlat83 = ((x_2330 * x_2332) + x_2334);
        let x_2337 : vec2<f32> = u_xlat61;
        let x_2339 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2337.x, x_2337.y, x_2339);
        let x_2346 : vec3<f32> = txVec27;
        let x_2348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2346.xy, x_2346.z);
        u_xlat58.x = x_2348;
        let x_2351 : f32 = u_xlat7.z;
        let x_2353 : f32 = u_xlat58.x;
        let x_2355 : f32 = u_xlat83;
        u_xlat83 = ((x_2351 * x_2353) + x_2355);
        let x_2358 : vec4<f32> = u_xlat6;
        let x_2359 : vec2<f32> = vec2<f32>(x_2358.x, x_2358.y);
        let x_2361 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2359.x, x_2359.y, x_2361);
        let x_2368 : vec3<f32> = txVec28;
        let x_2370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2368.xy, x_2368.z);
        u_xlat6.x = x_2370;
        let x_2373 : f32 = u_xlat7.w;
        let x_2375 : f32 = u_xlat6.x;
        let x_2377 : f32 = u_xlat83;
        u_xlat82 = ((x_2373 * x_2375) + x_2377);
      }
    }
  } else {
    let x_2381 : vec4<f32> = u_xlat2;
    let x_2382 : vec2<f32> = vec2<f32>(x_2381.x, x_2381.y);
    let x_2384 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
    let x_2391 : vec3<f32> = txVec29;
    let x_2393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2391.xy, x_2391.z);
    u_xlat82 = x_2393;
  }
  let x_2395 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2395) + 1.0f);
  let x_2399 : f32 = u_xlat82;
  let x_2401 : f32 = x_833.x_MainLightShadowParams.x;
  let x_2404 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2399 * x_2401) + x_2404);
  let x_2409 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2409);
  let x_2413 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2413 >= 1.0f);
  let x_2415 : bool = u_xlatb54;
  let x_2416 : bool = u_xlatb28;
  u_xlatb28 = (x_2415 | x_2416);
  let x_2418 : bool = u_xlatb28;
  if (x_2418) {
    x_2420 = 1.0f;
  } else {
    let x_2425 : f32 = u_xlat2.x;
    x_2420 = x_2425;
  }
  let x_2426 : f32 = x_2420;
  u_xlat2.x = x_2426;
  let x_2428 : vec3<f32> = vs_TEXCOORD7;
  let x_2431 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2433 : vec3<f32> = (x_2428 + -(x_2431));
  let x_2434 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
  let x_2436 : vec4<f32> = u_xlat6;
  let x_2438 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_2436.x, x_2436.y, x_2436.z), vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2444 : f32 = u_xlat28.x;
  let x_2446 : f32 = x_833.x_MainLightShadowParams.z;
  let x_2449 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2444 * x_2446) + x_2449);
  let x_2451 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2451, 0.0f, 1.0f);
  let x_2454 : f32 = u_xlat2.x;
  u_xlat82 = (-(x_2454) + 1.0f);
  let x_2457 : f32 = u_xlat54;
  let x_2458 : f32 = u_xlat82;
  let x_2461 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2457 * x_2458) + x_2461);
  let x_2471 : f32 = x_2469.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_2471 == -1.0f));
  let x_2473 : bool = u_xlatb54;
  if (x_2473) {
    let x_2476 : vec3<f32> = vs_TEXCOORD7;
    let x_2479 : vec4<f32> = x_2469.x_MainLightWorldToLight[1i];
    let x_2481 : vec2<f32> = (vec2<f32>(x_2476.y, x_2476.y) * vec2<f32>(x_2479.x, x_2479.y));
    let x_2482 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2481.x, x_2481.y, x_2482.z, x_2482.w);
    let x_2485 : vec4<f32> = x_2469.x_MainLightWorldToLight[0i];
    let x_2487 : vec3<f32> = vs_TEXCOORD7;
    let x_2490 : vec4<f32> = u_xlat6;
    let x_2492 : vec2<f32> = ((vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(x_2487.x, x_2487.x)) + vec2<f32>(x_2490.x, x_2490.y));
    let x_2493 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
    let x_2496 : vec4<f32> = x_2469.x_MainLightWorldToLight[2i];
    let x_2498 : vec3<f32> = vs_TEXCOORD7;
    let x_2501 : vec4<f32> = u_xlat6;
    let x_2503 : vec2<f32> = ((vec2<f32>(x_2496.x, x_2496.y) * vec2<f32>(x_2498.z, x_2498.z)) + vec2<f32>(x_2501.x, x_2501.y));
    let x_2504 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2503.x, x_2503.y, x_2504.z, x_2504.w);
    let x_2506 : vec4<f32> = u_xlat6;
    let x_2509 : vec4<f32> = x_2469.x_MainLightWorldToLight[3i];
    let x_2511 : vec2<f32> = (vec2<f32>(x_2506.x, x_2506.y) + vec2<f32>(x_2509.x, x_2509.y));
    let x_2512 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
    let x_2514 : vec4<f32> = u_xlat6;
    let x_2517 : vec2<f32> = ((vec2<f32>(x_2514.x, x_2514.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2518 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2517.x, x_2517.y, x_2518.z, x_2518.w);
    let x_2525 : vec4<f32> = u_xlat6;
    let x_2528 : f32 = x_112.x_GlobalMipBias.x;
    let x_2529 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2525.x, x_2525.y), x_2528);
    u_xlat6 = x_2529;
    let x_2534 : f32 = x_2469.x_MainLightCookieTextureFormat;
    let x_2536 : f32 = x_2469.x_MainLightCookieTextureFormat;
    let x_2538 : f32 = x_2469.x_MainLightCookieTextureFormat;
    let x_2540 : f32 = x_2469.x_MainLightCookieTextureFormat;
    let x_2541 : vec4<f32> = vec4<f32>(x_2534, x_2536, x_2538, x_2540);
    let x_2548 : vec4<bool> = (vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2541.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2548.x, x_2548.y);
    let x_2551 : bool = u_xlatb7.y;
    if (x_2551) {
      let x_2556 : f32 = u_xlat6.w;
      x_2552 = x_2556;
    } else {
      let x_2559 : f32 = u_xlat6.x;
      x_2552 = x_2559;
    }
    let x_2560 : f32 = x_2552;
    u_xlat54 = x_2560;
    let x_2562 : bool = u_xlatb7.x;
    if (x_2562) {
      let x_2566 : vec4<f32> = u_xlat6;
      x_2563 = vec3<f32>(x_2566.x, x_2566.y, x_2566.z);
    } else {
      let x_2569 : f32 = u_xlat54;
      x_2563 = vec3<f32>(x_2569, x_2569, x_2569);
    }
    let x_2571 : vec3<f32> = x_2563;
    let x_2572 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2578 : vec4<f32> = u_xlat6;
  let x_2581 : vec4<f32> = x_112.x_MainLightColor;
  let x_2583 : vec3<f32> = (vec3<f32>(x_2578.x, x_2578.y, x_2578.z) * vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
  let x_2588 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2588;
  let x_2591 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2591;
  let x_2594 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2594;
  let x_2596 : vec4<f32> = u_xlat7;
  let x_2599 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2596.x, x_2596.y, x_2596.z)), vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
  let x_2602 : f32 = u_xlat54;
  let x_2603 : f32 = u_xlat54;
  u_xlat54 = (x_2602 + x_2603);
  let x_2605 : vec4<f32> = u_xlat1;
  let x_2607 : f32 = u_xlat54;
  let x_2611 : vec4<f32> = u_xlat7;
  let x_2614 : vec3<f32> = ((vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * -(vec3<f32>(x_2607, x_2607, x_2607))) + -(vec3<f32>(x_2611.x, x_2611.y, x_2611.z)));
  let x_2615 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
  let x_2617 : vec4<f32> = u_xlat1;
  let x_2619 : vec4<f32> = u_xlat7;
  u_xlat54 = dot(vec3<f32>(x_2617.x, x_2617.y, x_2617.z), vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
  let x_2622 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2622, 0.0f, 1.0f);
  let x_2624 : f32 = u_xlat54;
  u_xlat54 = (-(x_2624) + 1.0f);
  let x_2627 : f32 = u_xlat54;
  let x_2628 : f32 = u_xlat54;
  u_xlat54 = (x_2627 * x_2628);
  let x_2630 : f32 = u_xlat54;
  let x_2631 : f32 = u_xlat54;
  u_xlat54 = (x_2630 * x_2631);
  let x_2634 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2634) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2641 : f32 = u_xlat0.x;
  let x_2642 : f32 = u_xlat82;
  u_xlat0.x = (x_2641 * x_2642);
  let x_2646 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2646 * 6.0f);
  let x_2658 : vec4<f32> = u_xlat8;
  let x_2661 : f32 = u_xlat0.x;
  let x_2662 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2658.x, x_2658.y, x_2658.z), x_2661);
  u_xlat8 = x_2662;
  let x_2664 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2664 + -1.0f);
  let x_2668 : f32 = x_1013.unity_SpecCube0_HDR.w;
  let x_2670 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2668 * x_2670) + 1.0f);
  let x_2675 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2675, 0.0f);
  let x_2679 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2679);
  let x_2683 : f32 = u_xlat0.x;
  let x_2685 : f32 = x_1013.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2683 * x_2685);
  let x_2689 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2689);
  let x_2693 : f32 = u_xlat0.x;
  let x_2695 : f32 = x_1013.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2693 * x_2695);
  let x_2698 : vec4<f32> = u_xlat8;
  let x_2700 : vec3<f32> = u_xlat0;
  let x_2702 : vec3<f32> = (vec3<f32>(x_2698.x, x_2698.y, x_2698.z) * vec3<f32>(x_2700.x, x_2700.x, x_2700.x));
  let x_2703 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
  let x_2705 : f32 = u_xlat79;
  let x_2707 : f32 = u_xlat79;
  let x_2711 : vec2<f32> = ((vec2<f32>(x_2705, x_2705) * vec2<f32>(x_2707, x_2707)) + vec2<f32>(-1.0f, 1.0f));
  let x_2712 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
  let x_2715 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2715);
  let x_2719 : vec4<f32> = u_xlat5;
  let x_2722 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2719.x, x_2719.y, x_2719.z)) + vec3<f32>(x_2722, x_2722, x_2722));
  let x_2725 : f32 = u_xlat54;
  let x_2727 : vec3<f32> = u_xlat35;
  let x_2729 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2725, x_2725, x_2725) * x_2727) + vec3<f32>(x_2729.x, x_2729.y, x_2729.z));
  let x_2732 : vec3<f32> = u_xlat0;
  let x_2734 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2732.x, x_2732.x, x_2732.x) * x_2734);
  let x_2736 : vec4<f32> = u_xlat8;
  let x_2738 : vec3<f32> = u_xlat35;
  let x_2739 : vec3<f32> = (vec3<f32>(x_2736.x, x_2736.y, x_2736.z) * x_2738);
  let x_2740 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
  let x_2742 : vec4<f32> = u_xlat3;
  let x_2744 : vec4<f32> = u_xlat4;
  let x_2747 : vec4<f32> = u_xlat8;
  let x_2749 : vec3<f32> = ((vec3<f32>(x_2742.x, x_2742.y, x_2742.z) * vec3<f32>(x_2744.x, x_2744.y, x_2744.z)) + vec3<f32>(x_2747.x, x_2747.y, x_2747.z));
  let x_2750 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2749.x, x_2749.y, x_2749.z, x_2750.w);
  let x_2753 : f32 = u_xlat2.x;
  let x_2755 : f32 = x_1013.unity_LightData.z;
  u_xlat0.x = (x_2753 * x_2755);
  let x_2758 : vec4<f32> = u_xlat1;
  let x_2761 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2758.x, x_2758.y, x_2758.z), vec3<f32>(x_2761.x, x_2761.y, x_2761.z));
  let x_2764 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2764, 0.0f, 1.0f);
  let x_2766 : f32 = u_xlat52;
  let x_2768 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2766 * x_2768);
  let x_2771 : vec3<f32> = u_xlat0;
  let x_2773 : vec4<f32> = u_xlat6;
  let x_2775 : vec3<f32> = (vec3<f32>(x_2771.x, x_2771.x, x_2771.x) * vec3<f32>(x_2773.x, x_2773.y, x_2773.z));
  let x_2776 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2776.w);
  let x_2778 : vec4<f32> = u_xlat7;
  let x_2781 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2783 : vec3<f32> = (vec3<f32>(x_2778.x, x_2778.y, x_2778.z) + vec3<f32>(x_2781.x, x_2781.y, x_2781.z));
  let x_2784 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2784.w);
  let x_2786 : vec4<f32> = u_xlat8;
  let x_2788 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2786.x, x_2786.y, x_2786.z), vec3<f32>(x_2788.x, x_2788.y, x_2788.z));
  let x_2793 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2793, 1.17549435e-38f);
  let x_2798 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2798);
  let x_2801 : vec3<f32> = u_xlat0;
  let x_2803 : vec4<f32> = u_xlat8;
  let x_2805 : vec3<f32> = (vec3<f32>(x_2801.x, x_2801.x, x_2801.x) * vec3<f32>(x_2803.x, x_2803.y, x_2803.z));
  let x_2806 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2806.w);
  let x_2808 : vec4<f32> = u_xlat1;
  let x_2810 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2808.x, x_2808.y, x_2808.z), vec3<f32>(x_2810.x, x_2810.y, x_2810.z));
  let x_2815 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2815, 0.0f, 1.0f);
  let x_2819 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2821 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2819.x, x_2819.y, x_2819.z), vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
  let x_2826 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2826, 0.0f, 1.0f);
  let x_2829 : vec3<f32> = u_xlat0;
  let x_2831 : vec3<f32> = u_xlat0;
  let x_2833 : vec2<f32> = (vec2<f32>(x_2829.x, x_2829.z) * vec2<f32>(x_2831.x, x_2831.z));
  let x_2834 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2833.x, x_2834.y, x_2833.y);
  let x_2837 : f32 = u_xlat0.x;
  let x_2839 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2837 * x_2839) + 1.00001001358032226562f);
  let x_2845 : f32 = u_xlat0.x;
  let x_2847 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2845 * x_2847);
  let x_2851 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2851, 0.10000000149011611938f);
  let x_2854 : f32 = u_xlat52;
  let x_2856 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2854 * x_2856);
  let x_2859 : f32 = u_xlat80;
  let x_2861 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2859 * x_2861);
  let x_2864 : f32 = u_xlat81;
  let x_2866 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2864 / x_2866);
  let x_2869 : vec4<f32> = u_xlat5;
  let x_2871 : vec3<f32> = u_xlat0;
  let x_2874 : vec4<f32> = u_xlat4;
  let x_2876 : vec3<f32> = ((vec3<f32>(x_2869.x, x_2869.y, x_2869.z) * vec3<f32>(x_2871.x, x_2871.x, x_2871.x)) + vec3<f32>(x_2874.x, x_2874.y, x_2874.z));
  let x_2877 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2876.x, x_2876.y, x_2876.z, x_2877.w);
  let x_2879 : vec4<f32> = u_xlat6;
  let x_2881 : vec4<f32> = u_xlat8;
  let x_2883 : vec3<f32> = (vec3<f32>(x_2879.x, x_2879.y, x_2879.z) * vec3<f32>(x_2881.x, x_2881.y, x_2881.z));
  let x_2884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2883.x, x_2883.y, x_2883.z, x_2884.w);
  let x_2887 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2889 : f32 = x_1013.unity_LightData.y;
  u_xlat0.x = min(x_2887, x_2889);
  let x_2894 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2894));
  let x_2898 : f32 = u_xlat28.x;
  let x_2900 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_2903 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2898 * x_2900) + x_2903);
  let x_2905 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2905, 0.0f, 1.0f);
  let x_2908 : f32 = x_2469.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2910 : f32 = x_2469.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2912 : f32 = x_2469.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2914 : f32 = x_2469.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2915 : vec4<f32> = vec4<f32>(x_2908, x_2910, x_2912, x_2914);
  let x_2921 : vec4<bool> = (vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2915.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2922 : vec2<bool> = vec2<bool>(x_2921.x, x_2921.y);
  let x_2923 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2922.x, x_2922.y, x_2923.z, x_2923.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2935 : u32 = u_xlatu_loop_1;
    let x_2936 : u32 = u_xlatu0;
    if ((x_2935 < x_2936)) {
    } else {
      break;
    }
    let x_2939 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2939 >> 2u);
    let x_2942 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2942 & 3u));
    let x_2945 : u32 = u_xlatu54;
    let x_2948 : vec4<f32> = x_1013.unity_LightIndices[bitcast<i32>(x_2945)];
    let x_2958 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2963 : vec4<u32> = indexable[x_2958];
    u_xlat54 = dot(x_2948, bitcast<vec4<f32>>(x_2963));
    let x_2967 : f32 = u_xlat54;
    u_xlati54 = i32(x_2967);
    let x_2969 : vec3<f32> = vs_TEXCOORD7;
    let x_2980 : i32 = u_xlati54;
    let x_2982 : vec4<f32> = x_2979.x_AdditionalLightsPosition[x_2980];
    let x_2985 : i32 = u_xlati54;
    let x_2987 : vec4<f32> = x_2979.x_AdditionalLightsPosition[x_2985];
    u_xlat35 = ((-(x_2969) * vec3<f32>(x_2982.w, x_2982.w, x_2982.w)) + vec3<f32>(x_2987.x, x_2987.y, x_2987.z));
    let x_2990 : vec3<f32> = u_xlat35;
    let x_2991 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_2990, x_2991);
    let x_2993 : f32 = u_xlat82;
    u_xlat82 = max(x_2993, 0.00006103515625f);
    let x_2995 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2995);
    let x_2997 : f32 = u_xlat83;
    let x_2999 : vec3<f32> = u_xlat35;
    let x_3000 : vec3<f32> = (vec3<f32>(x_2997, x_2997, x_2997) * x_2999);
    let x_3001 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3001.w);
    let x_3004 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3004);
    let x_3006 : f32 = u_xlat82;
    let x_3007 : i32 = u_xlati54;
    let x_3009 : f32 = x_2979.x_AdditionalLightsAttenuation[x_3007].x;
    u_xlat82 = (x_3006 * x_3009);
    let x_3011 : f32 = u_xlat82;
    let x_3013 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3011) * x_3013) + 1.0f);
    let x_3016 : f32 = u_xlat82;
    u_xlat82 = max(x_3016, 0.0f);
    let x_3018 : f32 = u_xlat82;
    let x_3019 : f32 = u_xlat82;
    u_xlat82 = (x_3018 * x_3019);
    let x_3021 : f32 = u_xlat82;
    let x_3022 : f32 = u_xlat84;
    u_xlat82 = (x_3021 * x_3022);
    let x_3024 : i32 = u_xlati54;
    let x_3026 : vec4<f32> = x_2979.x_AdditionalLightsSpotDir[x_3024];
    let x_3028 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3026.x, x_3026.y, x_3026.z), vec3<f32>(x_3028.x, x_3028.y, x_3028.z));
    let x_3031 : f32 = u_xlat84;
    let x_3032 : i32 = u_xlati54;
    let x_3034 : f32 = x_2979.x_AdditionalLightsAttenuation[x_3032].z;
    let x_3036 : i32 = u_xlati54;
    let x_3038 : f32 = x_2979.x_AdditionalLightsAttenuation[x_3036].w;
    u_xlat84 = ((x_3031 * x_3034) + x_3038);
    let x_3040 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3040, 0.0f, 1.0f);
    let x_3042 : f32 = u_xlat84;
    let x_3043 : f32 = u_xlat84;
    u_xlat84 = (x_3042 * x_3043);
    let x_3045 : f32 = u_xlat82;
    let x_3046 : f32 = u_xlat84;
    u_xlat82 = (x_3045 * x_3046);
    let x_3049 : i32 = u_xlati54;
    let x_3051 : f32 = x_833.x_AdditionalShadowParams[x_3049].w;
    u_xlati84 = i32(x_3051);
    let x_3054 : i32 = u_xlati84;
    u_xlatb85 = (x_3054 >= 0i);
    let x_3056 : bool = u_xlatb85;
    if (x_3056) {
      let x_3060 : i32 = u_xlati54;
      let x_3062 : f32 = x_833.x_AdditionalShadowParams[x_3060].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3062, x_3062, x_3062, x_3062))));
      let x_3066 : bool = u_xlatb85;
      if (x_3066) {
        let x_3070 : vec4<f32> = u_xlat10;
        let x_3073 : vec4<f32> = u_xlat10;
        let x_3076 : vec4<bool> = (abs(vec4<f32>(x_3070.z, x_3070.z, x_3070.y, x_3070.z)) >= abs(vec4<f32>(x_3073.x, x_3073.y, x_3073.x, x_3073.x)));
        let x_3078 : vec3<bool> = vec3<bool>(x_3076.x, x_3076.y, x_3076.z);
        let x_3079 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
        let x_3082 : bool = u_xlatb11.y;
        let x_3084 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3082 & x_3084);
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
        u_xlat86 = select(0.0f, 1.0f, x_3104);
        let x_3107 : bool = u_xlatb11.z;
        if (x_3107) {
          let x_3112 : f32 = u_xlat11.y;
          x_3108 = x_3112;
        } else {
          let x_3114 : f32 = u_xlat86;
          x_3108 = x_3114;
        }
        let x_3115 : f32 = x_3108;
        u_xlat86 = x_3115;
        let x_3117 : bool = u_xlatb85;
        if (x_3117) {
          let x_3122 : f32 = u_xlat11.x;
          x_3118 = x_3122;
        } else {
          let x_3124 : f32 = u_xlat86;
          x_3118 = x_3124;
        }
        let x_3125 : f32 = x_3118;
        u_xlat85 = x_3125;
        let x_3126 : i32 = u_xlati54;
        let x_3128 : f32 = x_833.x_AdditionalShadowParams[x_3126].w;
        u_xlat86 = trunc(x_3128);
        let x_3130 : f32 = u_xlat85;
        let x_3131 : f32 = u_xlat86;
        u_xlat85 = (x_3130 + x_3131);
        let x_3133 : f32 = u_xlat85;
        u_xlati84 = i32(x_3133);
      }
      let x_3135 : i32 = u_xlati84;
      u_xlati84 = (x_3135 << bitcast<u32>(2i));
      let x_3137 : vec3<f32> = vs_TEXCOORD7;
      let x_3139 : i32 = u_xlati84;
      let x_3142 : i32 = u_xlati84;
      let x_3146 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3139 + 1i) / 4i)][((x_3142 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3137.y, x_3137.y, x_3137.y, x_3137.y) * x_3146);
      let x_3148 : i32 = u_xlati84;
      let x_3150 : i32 = u_xlati84;
      let x_3153 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_3148 / 4i)][(x_3150 % 4i)];
      let x_3154 : vec3<f32> = vs_TEXCOORD7;
      let x_3157 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3153 * vec4<f32>(x_3154.x, x_3154.x, x_3154.x, x_3154.x)) + x_3157);
      let x_3159 : i32 = u_xlati84;
      let x_3162 : i32 = u_xlati84;
      let x_3166 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3159 + 2i) / 4i)][((x_3162 + 2i) % 4i)];
      let x_3167 : vec3<f32> = vs_TEXCOORD7;
      let x_3170 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3166 * vec4<f32>(x_3167.z, x_3167.z, x_3167.z, x_3167.z)) + x_3170);
      let x_3172 : vec4<f32> = u_xlat11;
      let x_3173 : i32 = u_xlati84;
      let x_3176 : i32 = u_xlati84;
      let x_3180 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3173 + 3i) / 4i)][((x_3176 + 3i) % 4i)];
      u_xlat11 = (x_3172 + x_3180);
      let x_3182 : vec4<f32> = u_xlat11;
      let x_3184 : vec4<f32> = u_xlat11;
      let x_3186 : vec3<f32> = (vec3<f32>(x_3182.x, x_3182.y, x_3182.z) / vec3<f32>(x_3184.w, x_3184.w, x_3184.w));
      let x_3187 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3186.x, x_3186.y, x_3186.z, x_3187.w);
      let x_3190 : i32 = u_xlati54;
      let x_3192 : f32 = x_833.x_AdditionalShadowParams[x_3190].y;
      u_xlatb84 = (0.0f < x_3192);
      let x_3194 : bool = u_xlatb84;
      if (x_3194) {
        let x_3197 : i32 = u_xlati54;
        let x_3199 : f32 = x_833.x_AdditionalShadowParams[x_3197].y;
        u_xlatb84 = (1.0f == x_3199);
        let x_3201 : bool = u_xlatb84;
        if (x_3201) {
          let x_3204 : vec4<f32> = u_xlat11;
          let x_3207 : vec4<f32> = x_833.x_AdditionalShadowOffset0;
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
          let x_3243 : vec4<f32> = x_833.x_AdditionalShadowOffset1;
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
          u_xlat84 = dot(x_3275, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3278 : i32 = u_xlati54;
          let x_3280 : f32 = x_833.x_AdditionalShadowParams[x_3278].y;
          u_xlatb85 = (2.0f == x_3280);
          let x_3282 : bool = u_xlatb85;
          if (x_3282) {
            let x_3285 : vec4<f32> = u_xlat11;
            let x_3288 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3291 : vec2<f32> = ((vec2<f32>(x_3285.x, x_3285.y) * vec2<f32>(x_3288.z, x_3288.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3292 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3291.x, x_3291.y, x_3292.z, x_3292.w);
            let x_3294 : vec4<f32> = u_xlat12;
            let x_3296 : vec2<f32> = floor(vec2<f32>(x_3294.x, x_3294.y));
            let x_3297 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3296.x, x_3296.y, x_3297.z, x_3297.w);
            let x_3300 : vec4<f32> = u_xlat11;
            let x_3303 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
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
            let x_3448 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3450 : vec3<f32> = (vec3<f32>(x_3445.y, x_3445.x, x_3445.z) * vec3<f32>(x_3448.x, x_3448.x, x_3448.x));
            let x_3451 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3451.w);
            let x_3453 : vec4<f32> = u_xlat15;
            let x_3456 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3458 : vec3<f32> = (vec3<f32>(x_3453.x, x_3453.y, x_3453.z) * vec3<f32>(x_3456.y, x_3456.y, x_3456.y));
            let x_3459 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3458.x, x_3458.y, x_3458.z, x_3459.w);
            let x_3462 : f32 = u_xlat15.x;
            u_xlat14.w = x_3462;
            let x_3464 : vec4<f32> = u_xlat12;
            let x_3467 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3470 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3464.x, x_3464.y, x_3464.x, x_3464.y) * vec4<f32>(x_3467.x, x_3467.y, x_3467.x, x_3467.y)) + vec4<f32>(x_3470.y, x_3470.w, x_3470.x, x_3470.w));
            let x_3473 : vec4<f32> = u_xlat12;
            let x_3476 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3479 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3473.x, x_3473.y) * vec2<f32>(x_3476.x, x_3476.y)) + vec2<f32>(x_3479.z, x_3479.w));
            let x_3483 : f32 = u_xlat14.y;
            u_xlat15.w = x_3483;
            let x_3485 : vec4<f32> = u_xlat15;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.y, x_3485.z);
            let x_3487 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3487.x, x_3486.x, x_3487.z, x_3486.y);
            let x_3489 : vec4<f32> = u_xlat12;
            let x_3492 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3495 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3489.x, x_3489.y, x_3489.x, x_3489.y) * vec4<f32>(x_3492.x, x_3492.y, x_3492.x, x_3492.y)) + vec4<f32>(x_3495.x, x_3495.y, x_3495.z, x_3495.y));
            let x_3498 : vec4<f32> = u_xlat12;
            let x_3501 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3504 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3498.x, x_3498.y, x_3498.x, x_3498.y) * vec4<f32>(x_3501.x, x_3501.y, x_3501.x, x_3501.y)) + vec4<f32>(x_3504.w, x_3504.y, x_3504.w, x_3504.z));
            let x_3507 : vec4<f32> = u_xlat12;
            let x_3510 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
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
            u_xlat85 = (x_3527 * x_3529);
            let x_3532 : vec4<f32> = u_xlat16;
            let x_3533 : vec2<f32> = vec2<f32>(x_3532.x, x_3532.y);
            let x_3535 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3533.x, x_3533.y, x_3535);
            let x_3542 : vec3<f32> = txVec34;
            let x_3544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3542.xy, x_3542.z);
            u_xlat86 = x_3544;
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
            let x_3566 : f32 = u_xlat86;
            let x_3568 : f32 = u_xlat88;
            u_xlat86 = ((x_3565 * x_3566) + x_3568);
            let x_3571 : vec2<f32> = u_xlat64;
            let x_3573 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec36;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat88 = x_3582;
            let x_3584 : f32 = u_xlat19.z;
            let x_3585 : f32 = u_xlat88;
            let x_3587 : f32 = u_xlat86;
            u_xlat86 = ((x_3584 * x_3585) + x_3587);
            let x_3590 : vec4<f32> = u_xlat15;
            let x_3591 : vec2<f32> = vec2<f32>(x_3590.x, x_3590.y);
            let x_3593 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
            let x_3600 : vec3<f32> = txVec37;
            let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
            u_xlat88 = x_3602;
            let x_3604 : f32 = u_xlat19.w;
            let x_3605 : f32 = u_xlat88;
            let x_3607 : f32 = u_xlat86;
            u_xlat86 = ((x_3604 * x_3605) + x_3607);
            let x_3610 : vec4<f32> = u_xlat17;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.x, x_3610.y);
            let x_3613 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec38;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat88 = x_3622;
            let x_3624 : f32 = u_xlat20.x;
            let x_3625 : f32 = u_xlat88;
            let x_3627 : f32 = u_xlat86;
            u_xlat86 = ((x_3624 * x_3625) + x_3627);
            let x_3630 : vec4<f32> = u_xlat17;
            let x_3631 : vec2<f32> = vec2<f32>(x_3630.z, x_3630.w);
            let x_3633 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec39;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat88 = x_3642;
            let x_3644 : f32 = u_xlat20.y;
            let x_3645 : f32 = u_xlat88;
            let x_3647 : f32 = u_xlat86;
            u_xlat86 = ((x_3644 * x_3645) + x_3647);
            let x_3650 : vec4<f32> = u_xlat15;
            let x_3651 : vec2<f32> = vec2<f32>(x_3650.z, x_3650.w);
            let x_3653 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec40;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat88 = x_3662;
            let x_3664 : f32 = u_xlat20.z;
            let x_3665 : f32 = u_xlat88;
            let x_3667 : f32 = u_xlat86;
            u_xlat86 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec4<f32> = u_xlat14;
            let x_3671 : vec2<f32> = vec2<f32>(x_3670.x, x_3670.y);
            let x_3673 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3671.x, x_3671.y, x_3673);
            let x_3680 : vec3<f32> = txVec41;
            let x_3682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3680.xy, x_3680.z);
            u_xlat88 = x_3682;
            let x_3684 : f32 = u_xlat20.w;
            let x_3685 : f32 = u_xlat88;
            let x_3687 : f32 = u_xlat86;
            u_xlat86 = ((x_3684 * x_3685) + x_3687);
            let x_3690 : vec4<f32> = u_xlat14;
            let x_3691 : vec2<f32> = vec2<f32>(x_3690.z, x_3690.w);
            let x_3693 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3691.x, x_3691.y, x_3693);
            let x_3700 : vec3<f32> = txVec42;
            let x_3702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3700.xy, x_3700.z);
            u_xlat88 = x_3702;
            let x_3703 : f32 = u_xlat85;
            let x_3704 : f32 = u_xlat88;
            let x_3706 : f32 = u_xlat86;
            u_xlat84 = ((x_3703 * x_3704) + x_3706);
          } else {
            let x_3709 : vec4<f32> = u_xlat11;
            let x_3712 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3715 : vec2<f32> = ((vec2<f32>(x_3709.x, x_3709.y) * vec2<f32>(x_3712.z, x_3712.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3716 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3715.x, x_3715.y, x_3716.z, x_3716.w);
            let x_3718 : vec4<f32> = u_xlat12;
            let x_3720 : vec2<f32> = floor(vec2<f32>(x_3718.x, x_3718.y));
            let x_3721 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3720.x, x_3720.y, x_3721.z, x_3721.w);
            let x_3723 : vec4<f32> = u_xlat11;
            let x_3726 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
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
            let x_3861 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3858.w, x_3858.x, x_3858.y, x_3858.z) * vec4<f32>(x_3861.x, x_3861.x, x_3861.x, x_3861.x));
            let x_3864 : vec4<f32> = u_xlat15;
            let x_3867 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3864.x, x_3864.w, x_3864.y, x_3864.z) * vec4<f32>(x_3867.y, x_3867.y, x_3867.y, x_3867.y));
            let x_3870 : vec4<f32> = u_xlat14;
            let x_3871 : vec3<f32> = vec3<f32>(x_3870.y, x_3870.z, x_3870.w);
            let x_3872 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3871.x, x_3872.y, x_3871.y, x_3871.z);
            let x_3875 : f32 = u_xlat15.x;
            u_xlat17.y = x_3875;
            let x_3877 : vec4<f32> = u_xlat12;
            let x_3880 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3883 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3877.x, x_3877.y, x_3877.x, x_3877.y) * vec4<f32>(x_3880.x, x_3880.y, x_3880.x, x_3880.y)) + vec4<f32>(x_3883.x, x_3883.y, x_3883.z, x_3883.y));
            let x_3886 : vec4<f32> = u_xlat12;
            let x_3889 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3892 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3886.x, x_3886.y) * vec2<f32>(x_3889.x, x_3889.y)) + vec2<f32>(x_3892.w, x_3892.y));
            let x_3896 : f32 = u_xlat17.y;
            u_xlat14.y = x_3896;
            let x_3899 : f32 = u_xlat15.z;
            u_xlat17.y = x_3899;
            let x_3901 : vec4<f32> = u_xlat12;
            let x_3904 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3907 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3901.x, x_3901.y, x_3901.x, x_3901.y) * vec4<f32>(x_3904.x, x_3904.y, x_3904.x, x_3904.y)) + vec4<f32>(x_3907.x, x_3907.y, x_3907.z, x_3907.y));
            let x_3910 : vec4<f32> = u_xlat12;
            let x_3913 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3916 : vec4<f32> = u_xlat17;
            let x_3918 : vec2<f32> = ((vec2<f32>(x_3910.x, x_3910.y) * vec2<f32>(x_3913.x, x_3913.y)) + vec2<f32>(x_3916.w, x_3916.y));
            let x_3919 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3918.x, x_3918.y, x_3919.z, x_3919.w);
            let x_3922 : f32 = u_xlat17.y;
            u_xlat14.z = x_3922;
            let x_3925 : vec4<f32> = u_xlat12;
            let x_3928 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3931 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3925.x, x_3925.y, x_3925.x, x_3925.y) * vec4<f32>(x_3928.x, x_3928.y, x_3928.x, x_3928.y)) + vec4<f32>(x_3931.x, x_3931.y, x_3931.x, x_3931.z));
            let x_3935 : f32 = u_xlat15.w;
            u_xlat17.y = x_3935;
            let x_3938 : vec4<f32> = u_xlat12;
            let x_3941 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3944 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3938.x, x_3938.y, x_3938.x, x_3938.y) * vec4<f32>(x_3941.x, x_3941.y, x_3941.x, x_3941.y)) + vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3944.y));
            let x_3948 : vec4<f32> = u_xlat12;
            let x_3951 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3954 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3948.x, x_3948.y) * vec2<f32>(x_3951.x, x_3951.y)) + vec2<f32>(x_3954.w, x_3954.y));
            let x_3958 : f32 = u_xlat17.y;
            u_xlat14.w = x_3958;
            let x_3961 : vec4<f32> = u_xlat12;
            let x_3964 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3967 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3961.x, x_3961.y) * vec2<f32>(x_3964.x, x_3964.y)) + vec2<f32>(x_3967.x, x_3967.w));
            let x_3970 : vec4<f32> = u_xlat17;
            let x_3971 : vec3<f32> = vec3<f32>(x_3970.x, x_3970.z, x_3970.w);
            let x_3972 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3971.x, x_3972.y, x_3971.y, x_3971.z);
            let x_3974 : vec4<f32> = u_xlat12;
            let x_3977 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3980 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3974.x, x_3974.y, x_3974.x, x_3974.y) * vec4<f32>(x_3977.x, x_3977.y, x_3977.x, x_3977.y)) + vec4<f32>(x_3980.x, x_3980.y, x_3980.z, x_3980.y));
            let x_3984 : vec4<f32> = u_xlat12;
            let x_3987 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3990 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3984.x, x_3984.y) * vec2<f32>(x_3987.x, x_3987.y)) + vec2<f32>(x_3990.w, x_3990.y));
            let x_3994 : f32 = u_xlat14.x;
            u_xlat15.x = x_3994;
            let x_3996 : vec4<f32> = u_xlat12;
            let x_3999 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
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
            u_xlat85 = x_4039;
            let x_4041 : vec4<f32> = u_xlat18;
            let x_4042 : vec2<f32> = vec2<f32>(x_4041.z, x_4041.w);
            let x_4044 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_4042.x, x_4042.y, x_4044);
            let x_4051 : vec3<f32> = txVec44;
            let x_4053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4051.xy, x_4051.z);
            u_xlat86 = x_4053;
            let x_4054 : f32 = u_xlat86;
            let x_4056 : f32 = u_xlat23.y;
            u_xlat86 = (x_4054 * x_4056);
            let x_4059 : f32 = u_xlat23.x;
            let x_4060 : f32 = u_xlat85;
            let x_4062 : f32 = u_xlat86;
            u_xlat85 = ((x_4059 * x_4060) + x_4062);
            let x_4065 : vec2<f32> = u_xlat64;
            let x_4067 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
            let x_4074 : vec3<f32> = txVec45;
            let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
            u_xlat86 = x_4076;
            let x_4078 : f32 = u_xlat23.z;
            let x_4079 : f32 = u_xlat86;
            let x_4081 : f32 = u_xlat85;
            u_xlat85 = ((x_4078 * x_4079) + x_4081);
            let x_4084 : vec4<f32> = u_xlat21;
            let x_4085 : vec2<f32> = vec2<f32>(x_4084.x, x_4084.y);
            let x_4087 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4085.x, x_4085.y, x_4087);
            let x_4094 : vec3<f32> = txVec46;
            let x_4096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4094.xy, x_4094.z);
            u_xlat86 = x_4096;
            let x_4098 : f32 = u_xlat23.w;
            let x_4099 : f32 = u_xlat86;
            let x_4101 : f32 = u_xlat85;
            u_xlat85 = ((x_4098 * x_4099) + x_4101);
            let x_4104 : vec4<f32> = u_xlat19;
            let x_4105 : vec2<f32> = vec2<f32>(x_4104.x, x_4104.y);
            let x_4107 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4105.x, x_4105.y, x_4107);
            let x_4114 : vec3<f32> = txVec47;
            let x_4116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4114.xy, x_4114.z);
            u_xlat86 = x_4116;
            let x_4118 : f32 = u_xlat24.x;
            let x_4119 : f32 = u_xlat86;
            let x_4121 : f32 = u_xlat85;
            u_xlat85 = ((x_4118 * x_4119) + x_4121);
            let x_4124 : vec4<f32> = u_xlat19;
            let x_4125 : vec2<f32> = vec2<f32>(x_4124.z, x_4124.w);
            let x_4127 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4125.x, x_4125.y, x_4127);
            let x_4134 : vec3<f32> = txVec48;
            let x_4136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4134.xy, x_4134.z);
            u_xlat86 = x_4136;
            let x_4138 : f32 = u_xlat24.y;
            let x_4139 : f32 = u_xlat86;
            let x_4141 : f32 = u_xlat85;
            u_xlat85 = ((x_4138 * x_4139) + x_4141);
            let x_4144 : vec4<f32> = u_xlat20;
            let x_4145 : vec2<f32> = vec2<f32>(x_4144.x, x_4144.y);
            let x_4147 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4145.x, x_4145.y, x_4147);
            let x_4154 : vec3<f32> = txVec49;
            let x_4156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4154.xy, x_4154.z);
            u_xlat86 = x_4156;
            let x_4158 : f32 = u_xlat24.z;
            let x_4159 : f32 = u_xlat86;
            let x_4161 : f32 = u_xlat85;
            u_xlat85 = ((x_4158 * x_4159) + x_4161);
            let x_4164 : vec4<f32> = u_xlat21;
            let x_4165 : vec2<f32> = vec2<f32>(x_4164.z, x_4164.w);
            let x_4167 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4165.x, x_4165.y, x_4167);
            let x_4174 : vec3<f32> = txVec50;
            let x_4176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4174.xy, x_4174.z);
            u_xlat86 = x_4176;
            let x_4178 : f32 = u_xlat24.w;
            let x_4179 : f32 = u_xlat86;
            let x_4181 : f32 = u_xlat85;
            u_xlat85 = ((x_4178 * x_4179) + x_4181);
            let x_4184 : vec4<f32> = u_xlat22;
            let x_4185 : vec2<f32> = vec2<f32>(x_4184.x, x_4184.y);
            let x_4187 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec51;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat86 = x_4196;
            let x_4198 : f32 = u_xlat25.x;
            let x_4199 : f32 = u_xlat86;
            let x_4201 : f32 = u_xlat85;
            u_xlat85 = ((x_4198 * x_4199) + x_4201);
            let x_4204 : vec4<f32> = u_xlat22;
            let x_4205 : vec2<f32> = vec2<f32>(x_4204.z, x_4204.w);
            let x_4207 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4205.x, x_4205.y, x_4207);
            let x_4214 : vec3<f32> = txVec52;
            let x_4216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4214.xy, x_4214.z);
            u_xlat86 = x_4216;
            let x_4218 : f32 = u_xlat25.y;
            let x_4219 : f32 = u_xlat86;
            let x_4221 : f32 = u_xlat85;
            u_xlat85 = ((x_4218 * x_4219) + x_4221);
            let x_4224 : vec2<f32> = u_xlat40;
            let x_4226 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4224.x, x_4224.y, x_4226);
            let x_4233 : vec3<f32> = txVec53;
            let x_4235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4233.xy, x_4233.z);
            u_xlat86 = x_4235;
            let x_4237 : f32 = u_xlat25.z;
            let x_4238 : f32 = u_xlat86;
            let x_4240 : f32 = u_xlat85;
            u_xlat85 = ((x_4237 * x_4238) + x_4240);
            let x_4243 : vec2<f32> = u_xlat72;
            let x_4245 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4243.x, x_4243.y, x_4245);
            let x_4252 : vec3<f32> = txVec54;
            let x_4254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4252.xy, x_4252.z);
            u_xlat86 = x_4254;
            let x_4256 : f32 = u_xlat25.w;
            let x_4257 : f32 = u_xlat86;
            let x_4259 : f32 = u_xlat85;
            u_xlat85 = ((x_4256 * x_4257) + x_4259);
            let x_4262 : vec4<f32> = u_xlat17;
            let x_4263 : vec2<f32> = vec2<f32>(x_4262.x, x_4262.y);
            let x_4265 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4263.x, x_4263.y, x_4265);
            let x_4272 : vec3<f32> = txVec55;
            let x_4274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4272.xy, x_4272.z);
            u_xlat86 = x_4274;
            let x_4276 : f32 = u_xlat13.x;
            let x_4277 : f32 = u_xlat86;
            let x_4279 : f32 = u_xlat85;
            u_xlat85 = ((x_4276 * x_4277) + x_4279);
            let x_4282 : vec4<f32> = u_xlat17;
            let x_4283 : vec2<f32> = vec2<f32>(x_4282.z, x_4282.w);
            let x_4285 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4283.x, x_4283.y, x_4285);
            let x_4292 : vec3<f32> = txVec56;
            let x_4294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4292.xy, x_4292.z);
            u_xlat86 = x_4294;
            let x_4296 : f32 = u_xlat13.y;
            let x_4297 : f32 = u_xlat86;
            let x_4299 : f32 = u_xlat85;
            u_xlat85 = ((x_4296 * x_4297) + x_4299);
            let x_4302 : vec2<f32> = u_xlat67;
            let x_4304 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4302.x, x_4302.y, x_4304);
            let x_4311 : vec3<f32> = txVec57;
            let x_4313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4311.xy, x_4311.z);
            u_xlat86 = x_4313;
            let x_4315 : f32 = u_xlat13.z;
            let x_4316 : f32 = u_xlat86;
            let x_4318 : f32 = u_xlat85;
            u_xlat85 = ((x_4315 * x_4316) + x_4318);
            let x_4321 : vec4<f32> = u_xlat12;
            let x_4322 : vec2<f32> = vec2<f32>(x_4321.x, x_4321.y);
            let x_4324 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4322.x, x_4322.y, x_4324);
            let x_4331 : vec3<f32> = txVec58;
            let x_4333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4331.xy, x_4331.z);
            u_xlat86 = x_4333;
            let x_4335 : f32 = u_xlat13.w;
            let x_4336 : f32 = u_xlat86;
            let x_4338 : f32 = u_xlat85;
            u_xlat84 = ((x_4335 * x_4336) + x_4338);
          }
        }
      } else {
        let x_4342 : vec4<f32> = u_xlat11;
        let x_4343 : vec2<f32> = vec2<f32>(x_4342.x, x_4342.y);
        let x_4345 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4343.x, x_4343.y, x_4345);
        let x_4352 : vec3<f32> = txVec59;
        let x_4354 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4352.xy, x_4352.z);
        u_xlat84 = x_4354;
      }
      let x_4355 : i32 = u_xlati54;
      let x_4357 : f32 = x_833.x_AdditionalShadowParams[x_4355].x;
      u_xlat85 = (1.0f + -(x_4357));
      let x_4360 : f32 = u_xlat84;
      let x_4361 : i32 = u_xlati54;
      let x_4363 : f32 = x_833.x_AdditionalShadowParams[x_4361].x;
      let x_4365 : f32 = u_xlat85;
      u_xlat84 = ((x_4360 * x_4363) + x_4365);
      let x_4368 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4368);
      let x_4372 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4372 >= 1.0f);
      let x_4374 : bool = u_xlatb85;
      let x_4375 : bool = u_xlatb86;
      u_xlatb85 = (x_4374 | x_4375);
      let x_4377 : bool = u_xlatb85;
      let x_4378 : f32 = u_xlat84;
      u_xlat84 = select(x_4378, 1.0f, x_4377);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4381 : f32 = u_xlat84;
    u_xlat85 = (-(x_4381) + 1.0f);
    let x_4384 : f32 = u_xlat52;
    let x_4385 : f32 = u_xlat85;
    let x_4387 : f32 = u_xlat84;
    u_xlat84 = ((x_4384 * x_4385) + x_4387);
    let x_4390 : i32 = u_xlati54;
    u_xlati85 = (1i << bitcast<u32>((x_4390 & 31i)));
    let x_4393 : i32 = u_xlati85;
    let x_4396 : f32 = x_2469.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4393) & bitcast<u32>(x_4396)));
    let x_4400 : i32 = u_xlati85;
    if ((x_4400 != 0i)) {
      let x_4404 : i32 = u_xlati54;
      let x_4406 : f32 = x_2469.x_AdditionalLightsLightTypes[x_4404].el;
      u_xlati85 = i32(x_4406);
      let x_4409 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4409 != 0i));
      let x_4413 : i32 = u_xlati54;
      u_xlati88 = (x_4413 << bitcast<u32>(2i));
      let x_4415 : i32 = u_xlati86;
      if ((x_4415 != 0i)) {
        let x_4419 : vec3<f32> = vs_TEXCOORD7;
        let x_4421 : i32 = u_xlati88;
        let x_4424 : i32 = u_xlati88;
        let x_4428 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4421 + 1i) / 4i)][((x_4424 + 1i) % 4i)];
        let x_4430 : vec3<f32> = (vec3<f32>(x_4419.y, x_4419.y, x_4419.y) * vec3<f32>(x_4428.x, x_4428.y, x_4428.w));
        let x_4431 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4430.x, x_4430.y, x_4430.z, x_4431.w);
        let x_4433 : i32 = u_xlati88;
        let x_4435 : i32 = u_xlati88;
        let x_4438 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[(x_4433 / 4i)][(x_4435 % 4i)];
        let x_4440 : vec3<f32> = vs_TEXCOORD7;
        let x_4443 : vec4<f32> = u_xlat11;
        let x_4445 : vec3<f32> = ((vec3<f32>(x_4438.x, x_4438.y, x_4438.w) * vec3<f32>(x_4440.x, x_4440.x, x_4440.x)) + vec3<f32>(x_4443.x, x_4443.y, x_4443.z));
        let x_4446 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4445.x, x_4445.y, x_4445.z, x_4446.w);
        let x_4448 : i32 = u_xlati88;
        let x_4451 : i32 = u_xlati88;
        let x_4455 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4448 + 2i) / 4i)][((x_4451 + 2i) % 4i)];
        let x_4457 : vec3<f32> = vs_TEXCOORD7;
        let x_4460 : vec4<f32> = u_xlat11;
        let x_4462 : vec3<f32> = ((vec3<f32>(x_4455.x, x_4455.y, x_4455.w) * vec3<f32>(x_4457.z, x_4457.z, x_4457.z)) + vec3<f32>(x_4460.x, x_4460.y, x_4460.z));
        let x_4463 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4462.x, x_4462.y, x_4462.z, x_4463.w);
        let x_4465 : vec4<f32> = u_xlat11;
        let x_4467 : i32 = u_xlati88;
        let x_4470 : i32 = u_xlati88;
        let x_4474 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4467 + 3i) / 4i)][((x_4470 + 3i) % 4i)];
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
        let x_4499 : i32 = u_xlati54;
        let x_4501 : vec4<f32> = x_2469.x_AdditionalLightsCookieAtlasUVRects[x_4499];
        let x_4503 : vec4<f32> = u_xlat11;
        let x_4506 : i32 = u_xlati54;
        let x_4508 : vec4<f32> = x_2469.x_AdditionalLightsCookieAtlasUVRects[x_4506];
        let x_4510 : vec2<f32> = ((vec2<f32>(x_4501.x, x_4501.y) * vec2<f32>(x_4503.x, x_4503.y)) + vec2<f32>(x_4508.z, x_4508.w));
        let x_4511 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4510.x, x_4510.y, x_4511.z, x_4511.w);
      } else {
        let x_4514 : i32 = u_xlati85;
        u_xlatb85 = (x_4514 == 1i);
        let x_4516 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4516);
        let x_4518 : i32 = u_xlati85;
        if ((x_4518 != 0i)) {
          let x_4523 : vec3<f32> = vs_TEXCOORD7;
          let x_4525 : i32 = u_xlati88;
          let x_4528 : i32 = u_xlati88;
          let x_4532 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4525 + 1i) / 4i)][((x_4528 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4523.y, x_4523.y) * vec2<f32>(x_4532.x, x_4532.y));
          let x_4535 : i32 = u_xlati88;
          let x_4537 : i32 = u_xlati88;
          let x_4540 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[(x_4535 / 4i)][(x_4537 % 4i)];
          let x_4542 : vec3<f32> = vs_TEXCOORD7;
          let x_4545 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4540.x, x_4540.y) * vec2<f32>(x_4542.x, x_4542.x)) + x_4545);
          let x_4547 : i32 = u_xlati88;
          let x_4550 : i32 = u_xlati88;
          let x_4554 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4547 + 2i) / 4i)][((x_4550 + 2i) % 4i)];
          let x_4556 : vec3<f32> = vs_TEXCOORD7;
          let x_4559 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4554.x, x_4554.y) * vec2<f32>(x_4556.z, x_4556.z)) + x_4559);
          let x_4561 : vec2<f32> = u_xlat63;
          let x_4562 : i32 = u_xlati88;
          let x_4565 : i32 = u_xlati88;
          let x_4569 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4562 + 3i) / 4i)][((x_4565 + 3i) % 4i)];
          u_xlat63 = (x_4561 + vec2<f32>(x_4569.x, x_4569.y));
          let x_4572 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4572 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4575 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4575);
          let x_4577 : i32 = u_xlati54;
          let x_4579 : vec4<f32> = x_2469.x_AdditionalLightsCookieAtlasUVRects[x_4577];
          let x_4581 : vec2<f32> = u_xlat63;
          let x_4583 : i32 = u_xlati54;
          let x_4585 : vec4<f32> = x_2469.x_AdditionalLightsCookieAtlasUVRects[x_4583];
          let x_4587 : vec2<f32> = ((vec2<f32>(x_4579.x, x_4579.y) * x_4581) + vec2<f32>(x_4585.z, x_4585.w));
          let x_4588 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4587.x, x_4587.y, x_4588.z, x_4588.w);
        } else {
          let x_4591 : vec3<f32> = vs_TEXCOORD7;
          let x_4593 : i32 = u_xlati88;
          let x_4596 : i32 = u_xlati88;
          let x_4600 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4593 + 1i) / 4i)][((x_4596 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4591.y, x_4591.y, x_4591.y, x_4591.y) * x_4600);
          let x_4602 : i32 = u_xlati88;
          let x_4604 : i32 = u_xlati88;
          let x_4607 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[(x_4602 / 4i)][(x_4604 % 4i)];
          let x_4608 : vec3<f32> = vs_TEXCOORD7;
          let x_4611 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4607 * vec4<f32>(x_4608.x, x_4608.x, x_4608.x, x_4608.x)) + x_4611);
          let x_4613 : i32 = u_xlati88;
          let x_4616 : i32 = u_xlati88;
          let x_4620 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4613 + 2i) / 4i)][((x_4616 + 2i) % 4i)];
          let x_4621 : vec3<f32> = vs_TEXCOORD7;
          let x_4624 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4620 * vec4<f32>(x_4621.z, x_4621.z, x_4621.z, x_4621.z)) + x_4624);
          let x_4626 : vec4<f32> = u_xlat12;
          let x_4627 : i32 = u_xlati88;
          let x_4630 : i32 = u_xlati88;
          let x_4634 : vec4<f32> = x_2469.x_AdditionalLightsWorldToLights[((x_4627 + 3i) / 4i)][((x_4630 + 3i) % 4i)];
          u_xlat12 = (x_4626 + x_4634);
          let x_4636 : vec4<f32> = u_xlat12;
          let x_4638 : vec4<f32> = u_xlat12;
          let x_4640 : vec3<f32> = (vec3<f32>(x_4636.x, x_4636.y, x_4636.z) / vec3<f32>(x_4638.w, x_4638.w, x_4638.w));
          let x_4641 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4640.x, x_4640.y, x_4640.z, x_4641.w);
          let x_4643 : vec4<f32> = u_xlat12;
          let x_4645 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4643.x, x_4643.y, x_4643.z), vec3<f32>(x_4645.x, x_4645.y, x_4645.z));
          let x_4648 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4648);
          let x_4650 : f32 = u_xlat85;
          let x_4652 : vec4<f32> = u_xlat12;
          let x_4654 : vec3<f32> = (vec3<f32>(x_4650, x_4650, x_4650) * vec3<f32>(x_4652.x, x_4652.y, x_4652.z));
          let x_4655 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4654.x, x_4654.y, x_4654.z, x_4655.w);
          let x_4657 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4657.x, x_4657.y, x_4657.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4662 : f32 = u_xlat85;
          u_xlat85 = max(x_4662, 0.00000099999999747524f);
          let x_4665 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4665);
          let x_4667 : f32 = u_xlat85;
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
          let x_4715 : f32 = u_xlat85;
          let x_4718 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4713.x, x_4713.y) * vec2<f32>(x_4715, x_4715)) + x_4718);
          let x_4720 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4720 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4723 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4723, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4727 : i32 = u_xlati54;
          let x_4729 : vec4<f32> = x_2469.x_AdditionalLightsCookieAtlasUVRects[x_4727];
          let x_4731 : vec2<f32> = u_xlat63;
          let x_4733 : i32 = u_xlati54;
          let x_4735 : vec4<f32> = x_2469.x_AdditionalLightsCookieAtlasUVRects[x_4733];
          let x_4737 : vec2<f32> = ((vec2<f32>(x_4729.x, x_4729.y) * x_4731) + vec2<f32>(x_4735.z, x_4735.w));
          let x_4738 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4737.x, x_4737.y, x_4738.z, x_4738.w);
        }
      }
      let x_4745 : vec4<f32> = u_xlat11;
      let x_4747 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4745.x, x_4745.y), 0.0f);
      u_xlat11 = x_4747;
      let x_4749 : bool = u_xlatb2.y;
      if (x_4749) {
        let x_4754 : f32 = u_xlat11.w;
        x_4750 = x_4754;
      } else {
        let x_4757 : f32 = u_xlat11.x;
        x_4750 = x_4757;
      }
      let x_4758 : f32 = x_4750;
      u_xlat85 = x_4758;
      let x_4760 : bool = u_xlatb2.x;
      if (x_4760) {
        let x_4764 : vec4<f32> = u_xlat11;
        x_4761 = vec3<f32>(x_4764.x, x_4764.y, x_4764.z);
      } else {
        let x_4767 : f32 = u_xlat85;
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
    let x_4778 : i32 = u_xlati54;
    let x_4780 : vec4<f32> = x_2979.x_AdditionalLightsColor[x_4778];
    let x_4782 : vec3<f32> = (vec3<f32>(x_4776.x, x_4776.y, x_4776.z) * vec3<f32>(x_4780.x, x_4780.y, x_4780.z));
    let x_4783 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4782.x, x_4782.y, x_4782.z, x_4783.w);
    let x_4785 : f32 = u_xlat82;
    let x_4786 : f32 = u_xlat84;
    u_xlat54 = (x_4785 * x_4786);
    let x_4788 : vec4<f32> = u_xlat1;
    let x_4790 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4788.x, x_4788.y, x_4788.z), vec3<f32>(x_4790.x, x_4790.y, x_4790.z));
    let x_4793 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4793, 0.0f, 1.0f);
    let x_4795 : f32 = u_xlat54;
    let x_4796 : f32 = u_xlat82;
    u_xlat54 = (x_4795 * x_4796);
    let x_4798 : f32 = u_xlat54;
    let x_4800 : vec4<f32> = u_xlat11;
    let x_4802 : vec3<f32> = (vec3<f32>(x_4798, x_4798, x_4798) * vec3<f32>(x_4800.x, x_4800.y, x_4800.z));
    let x_4803 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4802.x, x_4802.y, x_4802.z, x_4803.w);
    let x_4805 : vec3<f32> = u_xlat35;
    let x_4806 : f32 = u_xlat83;
    let x_4809 : vec4<f32> = u_xlat7;
    u_xlat35 = ((x_4805 * vec3<f32>(x_4806, x_4806, x_4806)) + vec3<f32>(x_4809.x, x_4809.y, x_4809.z));
    let x_4812 : vec3<f32> = u_xlat35;
    let x_4813 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(x_4812, x_4813);
    let x_4815 : f32 = u_xlat54;
    u_xlat54 = max(x_4815, 1.17549435e-38f);
    let x_4817 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4817);
    let x_4819 : f32 = u_xlat54;
    let x_4821 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4819, x_4819, x_4819) * x_4821);
    let x_4823 : vec4<f32> = u_xlat1;
    let x_4825 : vec3<f32> = u_xlat35;
    u_xlat54 = dot(vec3<f32>(x_4823.x, x_4823.y, x_4823.z), x_4825);
    let x_4827 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4827, 0.0f, 1.0f);
    let x_4829 : vec4<f32> = u_xlat10;
    let x_4831 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4829.x, x_4829.y, x_4829.z), x_4831);
    let x_4833 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4833, 0.0f, 1.0f);
    let x_4835 : f32 = u_xlat54;
    let x_4836 : f32 = u_xlat54;
    u_xlat54 = (x_4835 * x_4836);
    let x_4838 : f32 = u_xlat54;
    let x_4840 : f32 = u_xlat9.x;
    u_xlat54 = ((x_4838 * x_4840) + 1.00001001358032226562f);
    let x_4843 : f32 = u_xlat82;
    let x_4844 : f32 = u_xlat82;
    u_xlat82 = (x_4843 * x_4844);
    let x_4846 : f32 = u_xlat54;
    let x_4847 : f32 = u_xlat54;
    u_xlat54 = (x_4846 * x_4847);
    let x_4849 : f32 = u_xlat82;
    u_xlat82 = max(x_4849, 0.10000000149011611938f);
    let x_4851 : f32 = u_xlat54;
    let x_4852 : f32 = u_xlat82;
    u_xlat54 = (x_4851 * x_4852);
    let x_4854 : f32 = u_xlat80;
    let x_4855 : f32 = u_xlat54;
    u_xlat54 = (x_4854 * x_4855);
    let x_4857 : f32 = u_xlat81;
    let x_4858 : f32 = u_xlat54;
    u_xlat54 = (x_4857 / x_4858);
    let x_4860 : vec4<f32> = u_xlat5;
    let x_4862 : f32 = u_xlat54;
    let x_4865 : vec4<f32> = u_xlat4;
    u_xlat35 = ((vec3<f32>(x_4860.x, x_4860.y, x_4860.z) * vec3<f32>(x_4862, x_4862, x_4862)) + vec3<f32>(x_4865.x, x_4865.y, x_4865.z));
    let x_4868 : vec3<f32> = u_xlat35;
    let x_4869 : vec4<f32> = u_xlat11;
    let x_4872 : vec4<f32> = u_xlat8;
    let x_4874 : vec3<f32> = ((x_4868 * vec3<f32>(x_4869.x, x_4869.y, x_4869.z)) + vec3<f32>(x_4872.x, x_4872.y, x_4872.z));
    let x_4875 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4874.x, x_4874.y, x_4874.z, x_4875.w);

    continuing {
      let x_4877 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4877 + bitcast<u32>(1i));
    }
  }
  let x_4879 : vec4<f32> = u_xlat3;
  let x_4881 : f32 = u_xlat26;
  let x_4884 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4879.x, x_4879.y, x_4879.z) * vec3<f32>(x_4881, x_4881, x_4881)) + vec3<f32>(x_4884.x, x_4884.y, x_4884.z));
  let x_4887 : vec4<f32> = u_xlat8;
  let x_4889 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4887.x, x_4887.y, x_4887.z) + x_4889);
  let x_4893 : f32 = u_xlat78;
  let x_4895 : vec3<f32> = u_xlat0;
  let x_4896 : vec3<f32> = (vec3<f32>(x_4893, x_4893, x_4893) * x_4895);
  let x_4897 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4896.x, x_4896.y, x_4896.z, x_4897.w);
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


