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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1002 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2355 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2554 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_2863 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

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

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

var<private> u_xlatb58 : bool;

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
  var x_2307 : f32;
  var x_2422 : f32;
  var x_2433 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3001 : f32;
  var x_3011 : f32;
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
  var x_4592 : f32;
  var x_4605 : f32;
  var x_4663 : f32;
  var x_4674 : vec3<f32>;
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
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat79;
  u_xlat79 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat79;
  u_xlat79 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_405);
  let x_407 : f32 = u_xlat79;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat79;
  u_xlat79 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat79;
  u_xlat79 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_453);
  let x_455 : f32 = u_xlat79;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat79;
  u_xlat79 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat79;
  u_xlat79 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_522);
  let x_524 : f32 = u_xlat79;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat79;
  u_xlat79 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat79;
  u_xlat79 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_585);
  let x_587 : f32 = u_xlat79;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat79;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat79;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_839 : f32 = vs_TEXCOORD7.y;
  let x_841 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_839 * x_841);
  let x_844 : f32 = x_113.unity_MatrixV[0i].z;
  let x_846 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat79;
  u_xlat79 = ((x_844 * x_846) + x_848);
  let x_851 : f32 = x_113.unity_MatrixV[2i].z;
  let x_853 : f32 = vs_TEXCOORD7.z;
  let x_855 : f32 = u_xlat79;
  u_xlat79 = ((x_851 * x_853) + x_855);
  let x_857 : f32 = u_xlat79;
  let x_859 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_857 + x_859);
  let x_861 : f32 = u_xlat79;
  let x_864 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_861) + -(x_864));
  let x_867 : f32 = u_xlat79;
  u_xlat79 = max(x_867, 0.0f);
  let x_869 : f32 = u_xlat79;
  let x_871 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_869 * x_871);
  let x_878 : vec4<f32> = vs_TEXCOORD0;
  let x_881 : f32 = x_113.x_GlobalMipBias.x;
  let x_882 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_878.z, x_878.w), x_881);
  u_xlat2 = x_882;
  let x_887 : vec4<f32> = vs_TEXCOORD0;
  let x_890 : f32 = x_113.x_GlobalMipBias.x;
  let x_891 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_887.z, x_887.w), x_890);
  let x_892 : vec3<f32> = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat2;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_909 : f32 = u_xlat2.x;
  u_xlat2.x = (x_909 + 0.5f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = u_xlat3;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_921 : f32 = u_xlat2.w;
  u_xlat80 = max(x_921, 0.00009999999747378752f);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : f32 = u_xlat80;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) / vec3<f32>(x_926, x_926, x_926));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_932 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_932) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_937 : f32 = u_xlat52;
  let x_938 : f32 = u_xlat80;
  u_xlat3.x = (x_937 + -(x_938));
  let x_943 : f32 = u_xlat80;
  let x_945 : vec4<f32> = u_xlat5;
  u_xlat29 = (vec3<f32>(x_943, x_943, x_943) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat5;
  let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_953 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec3<f32> = u_xlat0;
  let x_957 : vec4<f32> = u_xlat4;
  let x_962 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.x, x_955.x) * vec3<f32>(x_957.x, x_957.y, x_957.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_963 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : f32 = u_xlat52;
  u_xlat0.x = (-(x_965) + 1.0f);
  let x_970 : f32 = u_xlat0.x;
  let x_972 : f32 = u_xlat0.x;
  u_xlat52 = (x_970 * x_972);
  let x_974 : f32 = u_xlat52;
  u_xlat52 = max(x_974, 0.0078125f);
  let x_977 : f32 = u_xlat52;
  let x_978 : f32 = u_xlat52;
  u_xlat80 = (x_977 * x_978);
  let x_981 : f32 = u_xlat3.x;
  u_xlat3.x = (x_981 + 1.0f);
  let x_985 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_985, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat52;
  u_xlat82 = ((x_989 * 4.0f) + 2.0f);
  let x_992 : f32 = u_xlat26;
  u_xlat26 = min(x_992, 1.0f);
  let x_1004 : f32 = x_1002.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1004);
  let x_1006 : bool = u_xlatb5;
  if (x_1006) {
    let x_1010 : f32 = x_1002.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1010 == 1.0f);
    let x_1012 : bool = u_xlatb5;
    if (x_1012) {
      let x_1016 : vec4<f32> = vs_TEXCOORD8;
      let x_1019 : vec4<f32> = x_1002.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) + x_1019);
      let x_1023 : vec4<f32> = u_xlat5;
      let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
      let x_1026 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
      let x_1038 : vec3<f32> = txVec0;
      let x_1040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1038.xy, x_1038.z);
      u_xlat6.x = x_1040;
      let x_1043 : vec4<f32> = u_xlat5;
      let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
      let x_1046 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
      let x_1053 : vec3<f32> = txVec1;
      let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
      u_xlat6.y = x_1055;
      let x_1057 : vec4<f32> = vs_TEXCOORD8;
      let x_1060 : vec4<f32> = x_1002.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y) + x_1060);
      let x_1063 : vec4<f32> = u_xlat5;
      let x_1064 : vec2<f32> = vec2<f32>(x_1063.x, x_1063.y);
      let x_1066 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1064.x, x_1064.y, x_1066);
      let x_1073 : vec3<f32> = txVec2;
      let x_1075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1073.xy, x_1073.z);
      u_xlat6.z = x_1075;
      let x_1078 : vec4<f32> = u_xlat5;
      let x_1079 : vec2<f32> = vec2<f32>(x_1078.z, x_1078.w);
      let x_1081 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
      let x_1088 : vec3<f32> = txVec3;
      let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
      u_xlat6.w = x_1090;
      let x_1092 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1092, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1100 : f32 = x_1002.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1100 == 2.0f);
      let x_1102 : bool = u_xlatb31;
      if (x_1102) {
        let x_1106 : vec4<f32> = vs_TEXCOORD8;
        let x_1109 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.z, x_1109.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1113 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1112.x, x_1112.y, x_1113.z);
        let x_1115 : vec3<f32> = u_xlat31;
        let x_1117 : vec2<f32> = floor(vec2<f32>(x_1115.x, x_1115.y));
        let x_1118 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1117.x, x_1117.y, x_1118.z);
        let x_1120 : vec4<f32> = vs_TEXCOORD8;
        let x_1123 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1126 : vec3<f32> = u_xlat31;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1123.z, x_1123.w)) + -(vec2<f32>(x_1126.x, x_1126.y)));
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1132.x, x_1132.x, x_1132.y, x_1132.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.z, x_1136.z) * vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1151 : vec4<f32> = u_xlat6;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1151.x, x_1151.y)));
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1154.x, x_1155.y, x_1154.y, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat6;
        let x_1161 : vec2<f32> = (-(vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1165 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_1165.x, x_1165.y), vec2<f32>(0.0f, 0.0f));
        let x_1169 : vec2<f32> = u_xlat60;
        let x_1171 : vec2<f32> = u_xlat60;
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_1169) * x_1171) + vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat6;
        let x_1178 : vec2<f32> = max(vec2<f32>(x_1176.x, x_1176.y), vec2<f32>(0.0f, 0.0f));
        let x_1179 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = u_xlat6;
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1189 : vec2<f32> = ((-(vec2<f32>(x_1181.x, x_1181.y)) * vec2<f32>(x_1184.x, x_1184.y)) + vec2<f32>(x_1187.y, x_1187.w));
        let x_1190 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_1192 + vec2<f32>(1.0f, 1.0f));
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) + vec2<f32>(1.0f, 1.0f));
        let x_1197 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1203 : vec2<f32> = (vec2<f32>(x_1199.x, x_1199.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1204 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat8;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec2<f32> = u_xlat60;
        let x_1212 : vec2<f32> = (x_1211 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1217 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1222 : vec2<f32> = (vec2<f32>(x_1220.y, x_1220.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1223 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1226 : f32 = u_xlat8.x;
        u_xlat9.z = x_1226;
        let x_1229 : f32 = u_xlat6.x;
        u_xlat9.w = x_1229;
        let x_1232 : f32 = u_xlat11.x;
        u_xlat10.z = x_1232;
        let x_1235 : f32 = u_xlat58.x;
        u_xlat10.w = x_1235;
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1237.z, x_1237.w, x_1237.x, x_1237.z) + vec4<f32>(x_1239.z, x_1239.w, x_1239.x, x_1239.z));
        let x_1243 : f32 = u_xlat9.y;
        u_xlat8.z = x_1243;
        let x_1246 : f32 = u_xlat6.y;
        u_xlat8.w = x_1246;
        let x_1249 : f32 = u_xlat10.y;
        u_xlat11.z = x_1249;
        let x_1252 : f32 = u_xlat58.y;
        u_xlat11.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1256 : vec4<f32> = u_xlat11;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1254.z, x_1254.y, x_1254.w) + vec3<f32>(x_1256.z, x_1256.y, x_1256.w));
        let x_1259 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1265 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.z, x_1261.w) / vec3<f32>(x_1263.z, x_1263.w, x_1263.y));
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
        let x_1268 : vec4<f32> = u_xlat8;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat11;
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec3<f32> = (vec3<f32>(x_1276.z, x_1276.y, x_1276.w) / vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat9;
        let x_1285 : vec3<f32> = (vec3<f32>(x_1283.x, x_1283.y, x_1283.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1291 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1293 : vec3<f32> = (vec3<f32>(x_1288.y, x_1288.x, x_1288.z) * vec3<f32>(x_1291.x, x_1291.x, x_1291.x));
        let x_1294 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1299 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1301 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) * vec3<f32>(x_1299.y, x_1299.y, x_1299.y));
        let x_1302 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
        let x_1305 : f32 = u_xlat9.x;
        u_xlat8.w = x_1305;
        let x_1307 : vec3<f32> = u_xlat31;
        let x_1310 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.y, x_1313.w, x_1313.x, x_1313.w));
        let x_1316 : vec3<f32> = u_xlat31;
        let x_1319 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.x, x_1319.y)) + vec2<f32>(x_1322.z, x_1322.w));
        let x_1325 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1325.w);
        let x_1328 : f32 = u_xlat8.y;
        u_xlat9.w = x_1328;
        let x_1330 : vec4<f32> = u_xlat9;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.y, x_1330.z);
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1332.x, x_1331.x, x_1332.z, x_1331.y);
        let x_1334 : vec3<f32> = u_xlat31;
        let x_1337 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.y));
        let x_1343 : vec3<f32> = u_xlat31;
        let x_1346 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y) * vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y)) + vec4<f32>(x_1349.w, x_1349.y, x_1349.w, x_1349.z));
        let x_1352 : vec3<f32> = u_xlat31;
        let x_1355 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.w, x_1358.z, x_1358.w));
        let x_1361 : vec4<f32> = u_xlat6;
        let x_1363 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1361.x, x_1361.x, x_1361.x, x_1361.y) * vec4<f32>(x_1363.z, x_1363.w, x_1363.y, x_1363.z));
        let x_1367 : vec4<f32> = u_xlat6;
        let x_1369 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1367.y, x_1367.y, x_1367.z, x_1367.z) * x_1369);
        let x_1372 : f32 = u_xlat6.z;
        let x_1374 : f32 = u_xlat7.y;
        u_xlat31.x = (x_1372 * x_1374);
        let x_1378 : vec4<f32> = u_xlat10;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1389 : vec3<f32> = txVec4;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat57.x = x_1391;
        let x_1394 : vec4<f32> = u_xlat10;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1405 : vec3<f32> = txVec5;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat83 = x_1407;
        let x_1408 : f32 = u_xlat83;
        let x_1410 : f32 = u_xlat13.y;
        u_xlat83 = (x_1408 * x_1410);
        let x_1413 : f32 = u_xlat13.x;
        let x_1415 : f32 = u_xlat57.x;
        let x_1417 : f32 = u_xlat83;
        u_xlat57.x = ((x_1413 * x_1415) + x_1417);
        let x_1421 : vec4<f32> = u_xlat11;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
        let x_1424 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec6;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1431.xy, x_1431.z);
        u_xlat83 = x_1433;
        let x_1435 : f32 = u_xlat13.z;
        let x_1436 : f32 = u_xlat83;
        let x_1439 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1435 * x_1436) + x_1439);
        let x_1443 : vec4<f32> = u_xlat9;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec7;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat83 = x_1455;
        let x_1457 : f32 = u_xlat13.w;
        let x_1458 : f32 = u_xlat83;
        let x_1461 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1457 * x_1458) + x_1461);
        let x_1465 : vec4<f32> = u_xlat12;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec8;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat83 = x_1477;
        let x_1479 : f32 = u_xlat14.x;
        let x_1480 : f32 = u_xlat83;
        let x_1483 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1479 * x_1480) + x_1483);
        let x_1487 : vec4<f32> = u_xlat12;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.z, x_1487.w);
        let x_1490 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec9;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat83 = x_1499;
        let x_1501 : f32 = u_xlat14.y;
        let x_1502 : f32 = u_xlat83;
        let x_1505 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1501 * x_1502) + x_1505);
        let x_1509 : vec4<f32> = u_xlat9;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec10;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat83 = x_1521;
        let x_1523 : f32 = u_xlat14.z;
        let x_1524 : f32 = u_xlat83;
        let x_1527 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1523 * x_1524) + x_1527);
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec11;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat83 = x_1543;
        let x_1545 : f32 = u_xlat14.w;
        let x_1546 : f32 = u_xlat83;
        let x_1549 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1545 * x_1546) + x_1549);
        let x_1553 : vec4<f32> = u_xlat8;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec12;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1563.xy, x_1563.z);
        u_xlat83 = x_1565;
        let x_1567 : f32 = u_xlat31.x;
        let x_1568 : f32 = u_xlat83;
        let x_1571 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_1567 * x_1568) + x_1571);
      } else {
        let x_1575 : vec4<f32> = vs_TEXCOORD8;
        let x_1578 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1581 : vec2<f32> = ((vec2<f32>(x_1575.x, x_1575.y) * vec2<f32>(x_1578.z, x_1578.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1582 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1581.x, x_1581.y, x_1582.z);
        let x_1584 : vec3<f32> = u_xlat31;
        let x_1586 : vec2<f32> = floor(vec2<f32>(x_1584.x, x_1584.y));
        let x_1587 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1586.x, x_1586.y, x_1587.z);
        let x_1589 : vec4<f32> = vs_TEXCOORD8;
        let x_1592 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1595 : vec3<f32> = u_xlat31;
        let x_1598 : vec2<f32> = ((vec2<f32>(x_1589.x, x_1589.y) * vec2<f32>(x_1592.z, x_1592.w)) + -(vec2<f32>(x_1595.x, x_1595.y)));
        let x_1599 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1598.x, x_1598.y, x_1599.z, x_1599.w);
        let x_1601 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1601.x, x_1601.x, x_1601.y, x_1601.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1604 : vec4<f32> = u_xlat7;
        let x_1606 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1604.x, x_1604.x, x_1604.z, x_1604.z) * vec4<f32>(x_1606.x, x_1606.x, x_1606.z, x_1606.z));
        let x_1609 : vec4<f32> = u_xlat8;
        let x_1613 : vec2<f32> = (vec2<f32>(x_1609.y, x_1609.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1614.x, x_1613.x, x_1614.z, x_1613.y);
        let x_1616 : vec4<f32> = u_xlat8;
        let x_1619 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1616.x, x_1616.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1619.x, x_1619.y)));
        let x_1623 : vec4<f32> = u_xlat6;
        let x_1626 : vec2<f32> = (-(vec2<f32>(x_1623.x, x_1623.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1627 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1626.x, x_1627.y, x_1626.y, x_1627.w);
        let x_1629 : vec4<f32> = u_xlat6;
        let x_1631 : vec2<f32> = min(vec2<f32>(x_1629.x, x_1629.y), vec2<f32>(0.0f, 0.0f));
        let x_1632 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
        let x_1634 : vec4<f32> = u_xlat8;
        let x_1637 : vec4<f32> = u_xlat8;
        let x_1640 : vec4<f32> = u_xlat7;
        let x_1642 : vec2<f32> = ((-(vec2<f32>(x_1634.x, x_1634.y)) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.x, x_1640.z));
        let x_1643 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1642.x, x_1643.y, x_1642.y, x_1643.w);
        let x_1645 : vec4<f32> = u_xlat6;
        let x_1647 : vec2<f32> = max(vec2<f32>(x_1645.x, x_1645.y), vec2<f32>(0.0f, 0.0f));
        let x_1648 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
        let x_1650 : vec4<f32> = u_xlat8;
        let x_1653 : vec4<f32> = u_xlat8;
        let x_1656 : vec4<f32> = u_xlat7;
        let x_1658 : vec2<f32> = ((-(vec2<f32>(x_1650.x, x_1650.y)) * vec2<f32>(x_1653.x, x_1653.y)) + vec2<f32>(x_1656.y, x_1656.w));
        let x_1659 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1659.x, x_1658.x, x_1659.z, x_1658.y);
        let x_1661 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1661 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1665 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1665 * 0.08163200318813323975f);
        let x_1669 : vec2<f32> = u_xlat58;
        let x_1672 : vec2<f32> = (vec2<f32>(x_1669.y, x_1669.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1673 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1672.x, x_1672.y, x_1673.z, x_1673.w);
        let x_1675 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1675.x, x_1675.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1679 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1679 * 0.08163200318813323975f);
        let x_1683 : f32 = u_xlat10.y;
        u_xlat8.x = x_1683;
        let x_1685 : vec4<f32> = u_xlat6;
        let x_1692 : vec2<f32> = ((vec2<f32>(x_1685.x, x_1685.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1693.x, x_1692.x, x_1693.z, x_1692.y);
        let x_1695 : vec4<f32> = u_xlat6;
        let x_1699 : vec2<f32> = ((vec2<f32>(x_1695.x, x_1695.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1700 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1699.x, x_1700.y, x_1699.y, x_1700.w);
        let x_1703 : f32 = u_xlat58.x;
        u_xlat7.y = x_1703;
        let x_1706 : f32 = u_xlat9.y;
        u_xlat7.w = x_1706;
        let x_1708 : vec4<f32> = u_xlat7;
        let x_1709 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1708 + x_1709);
        let x_1711 : vec4<f32> = u_xlat6;
        let x_1714 : vec2<f32> = ((vec2<f32>(x_1711.y, x_1711.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1715 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1715.x, x_1714.x, x_1715.z, x_1714.y);
        let x_1717 : vec4<f32> = u_xlat6;
        let x_1720 : vec2<f32> = ((vec2<f32>(x_1717.y, x_1717.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1721 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1720.x, x_1721.y, x_1720.y, x_1721.w);
        let x_1724 : f32 = u_xlat58.y;
        u_xlat9.y = x_1724;
        let x_1726 : vec4<f32> = u_xlat9;
        let x_1727 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1726 + x_1727);
        let x_1729 : vec4<f32> = u_xlat7;
        let x_1730 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1729 / x_1730);
        let x_1732 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1732 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1738 : vec4<f32> = u_xlat9;
        let x_1739 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1738 / x_1739);
        let x_1741 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1741 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1743 : vec4<f32> = u_xlat7;
        let x_1746 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1743.w, x_1743.x, x_1743.y, x_1743.z) * vec4<f32>(x_1746.x, x_1746.x, x_1746.x, x_1746.x));
        let x_1749 : vec4<f32> = u_xlat9;
        let x_1752 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1749.x, x_1749.w, x_1749.y, x_1749.z) * vec4<f32>(x_1752.y, x_1752.y, x_1752.y, x_1752.y));
        let x_1755 : vec4<f32> = u_xlat7;
        let x_1756 : vec3<f32> = vec3<f32>(x_1755.y, x_1755.z, x_1755.w);
        let x_1757 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1756.x, x_1757.y, x_1756.y, x_1756.z);
        let x_1760 : f32 = u_xlat9.x;
        u_xlat10.y = x_1760;
        let x_1762 : vec3<f32> = u_xlat31;
        let x_1765 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.y) * vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y)) + vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1768.y));
        let x_1771 : vec3<f32> = u_xlat31;
        let x_1774 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat10;
        let x_1779 : vec2<f32> = ((vec2<f32>(x_1771.x, x_1771.y) * vec2<f32>(x_1774.x, x_1774.y)) + vec2<f32>(x_1777.w, x_1777.y));
        let x_1780 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
        let x_1783 : f32 = u_xlat10.y;
        u_xlat7.y = x_1783;
        let x_1786 : f32 = u_xlat9.z;
        u_xlat10.y = x_1786;
        let x_1788 : vec3<f32> = u_xlat31;
        let x_1791 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1794 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1788.x, x_1788.y, x_1788.x, x_1788.y) * vec4<f32>(x_1791.x, x_1791.y, x_1791.x, x_1791.y)) + vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1794.y));
        let x_1798 : vec3<f32> = u_xlat31;
        let x_1801 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1801.x, x_1801.y)) + vec2<f32>(x_1804.w, x_1804.y));
        let x_1808 : f32 = u_xlat10.y;
        u_xlat7.z = x_1808;
        let x_1810 : vec3<f32> = u_xlat31;
        let x_1813 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1816 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1810.x, x_1810.y, x_1810.x, x_1810.y) * vec4<f32>(x_1813.x, x_1813.y, x_1813.x, x_1813.y)) + vec4<f32>(x_1816.x, x_1816.y, x_1816.x, x_1816.z));
        let x_1820 : f32 = u_xlat9.w;
        u_xlat10.y = x_1820;
        let x_1823 : vec3<f32> = u_xlat31;
        let x_1826 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1829 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.y) * vec4<f32>(x_1826.x, x_1826.y, x_1826.x, x_1826.y)) + vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1829.y));
        let x_1833 : vec3<f32> = u_xlat31;
        let x_1836 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1839 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1836.x, x_1836.y)) + vec2<f32>(x_1839.w, x_1839.y));
        let x_1843 : f32 = u_xlat10.y;
        u_xlat7.w = x_1843;
        let x_1846 : vec3<f32> = u_xlat31;
        let x_1849 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1852 : vec4<f32> = u_xlat7;
        let x_1854 : vec2<f32> = ((vec2<f32>(x_1846.x, x_1846.y) * vec2<f32>(x_1849.x, x_1849.y)) + vec2<f32>(x_1852.x, x_1852.w));
        let x_1855 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
        let x_1857 : vec4<f32> = u_xlat10;
        let x_1858 : vec3<f32> = vec3<f32>(x_1857.x, x_1857.z, x_1857.w);
        let x_1859 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1858.x, x_1859.y, x_1858.y, x_1858.z);
        let x_1861 : vec3<f32> = u_xlat31;
        let x_1864 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1867 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1861.x, x_1861.y, x_1861.x, x_1861.y) * vec4<f32>(x_1864.x, x_1864.y, x_1864.x, x_1864.y)) + vec4<f32>(x_1867.x, x_1867.y, x_1867.z, x_1867.y));
        let x_1871 : vec3<f32> = u_xlat31;
        let x_1874 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1877 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1871.x, x_1871.y) * vec2<f32>(x_1874.x, x_1874.y)) + vec2<f32>(x_1877.w, x_1877.y));
        let x_1881 : f32 = u_xlat7.x;
        u_xlat9.x = x_1881;
        let x_1883 : vec3<f32> = u_xlat31;
        let x_1886 : vec4<f32> = x_1002.x_MainLightShadowmapSize;
        let x_1889 : vec4<f32> = u_xlat9;
        let x_1891 : vec2<f32> = ((vec2<f32>(x_1883.x, x_1883.y) * vec2<f32>(x_1886.x, x_1886.y)) + vec2<f32>(x_1889.x, x_1889.y));
        let x_1892 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1891.x, x_1891.y, x_1892.z);
        let x_1895 : vec4<f32> = u_xlat6;
        let x_1897 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1895.x, x_1895.x, x_1895.x, x_1895.x) * x_1897);
        let x_1900 : vec4<f32> = u_xlat6;
        let x_1902 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1900.y, x_1900.y, x_1900.y, x_1900.y) * x_1902);
        let x_1905 : vec4<f32> = u_xlat6;
        let x_1907 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1905.z, x_1905.z, x_1905.z, x_1905.z) * x_1907);
        let x_1909 : vec4<f32> = u_xlat6;
        let x_1911 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1909.w, x_1909.w, x_1909.w, x_1909.w) * x_1911);
        let x_1914 : vec4<f32> = u_xlat11;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.x, x_1914.y);
        let x_1917 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec13;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1924.xy, x_1924.z);
        u_xlat83 = x_1926;
        let x_1928 : vec4<f32> = u_xlat11;
        let x_1929 : vec2<f32> = vec2<f32>(x_1928.z, x_1928.w);
        let x_1931 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1929.x, x_1929.y, x_1931);
        let x_1938 : vec3<f32> = txVec14;
        let x_1940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1938.xy, x_1938.z);
        u_xlat7.x = x_1940;
        let x_1943 : f32 = u_xlat7.x;
        let x_1945 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1943 * x_1945);
        let x_1949 : f32 = u_xlat17.x;
        let x_1950 : f32 = u_xlat83;
        let x_1953 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1949 * x_1950) + x_1953);
        let x_1956 : vec4<f32> = u_xlat12;
        let x_1957 : vec2<f32> = vec2<f32>(x_1956.x, x_1956.y);
        let x_1959 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec15;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1966.xy, x_1966.z);
        u_xlat7.x = x_1968;
        let x_1971 : f32 = u_xlat17.z;
        let x_1973 : f32 = u_xlat7.x;
        let x_1975 : f32 = u_xlat83;
        u_xlat83 = ((x_1971 * x_1973) + x_1975);
        let x_1978 : vec4<f32> = u_xlat14;
        let x_1979 : vec2<f32> = vec2<f32>(x_1978.x, x_1978.y);
        let x_1981 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1979.x, x_1979.y, x_1981);
        let x_1988 : vec3<f32> = txVec16;
        let x_1990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1988.xy, x_1988.z);
        u_xlat7.x = x_1990;
        let x_1993 : f32 = u_xlat17.w;
        let x_1995 : f32 = u_xlat7.x;
        let x_1997 : f32 = u_xlat83;
        u_xlat83 = ((x_1993 * x_1995) + x_1997);
        let x_2000 : vec4<f32> = u_xlat13;
        let x_2001 : vec2<f32> = vec2<f32>(x_2000.x, x_2000.y);
        let x_2003 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2001.x, x_2001.y, x_2003);
        let x_2010 : vec3<f32> = txVec17;
        let x_2012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2010.xy, x_2010.z);
        u_xlat7.x = x_2012;
        let x_2015 : f32 = u_xlat18.x;
        let x_2017 : f32 = u_xlat7.x;
        let x_2019 : f32 = u_xlat83;
        u_xlat83 = ((x_2015 * x_2017) + x_2019);
        let x_2022 : vec4<f32> = u_xlat13;
        let x_2023 : vec2<f32> = vec2<f32>(x_2022.z, x_2022.w);
        let x_2025 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2023.x, x_2023.y, x_2025);
        let x_2032 : vec3<f32> = txVec18;
        let x_2034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2032.xy, x_2032.z);
        u_xlat7.x = x_2034;
        let x_2037 : f32 = u_xlat18.y;
        let x_2039 : f32 = u_xlat7.x;
        let x_2041 : f32 = u_xlat83;
        u_xlat83 = ((x_2037 * x_2039) + x_2041);
        let x_2044 : vec2<f32> = u_xlat64;
        let x_2046 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2044.x, x_2044.y, x_2046);
        let x_2053 : vec3<f32> = txVec19;
        let x_2055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2053.xy, x_2053.z);
        u_xlat7.x = x_2055;
        let x_2058 : f32 = u_xlat18.z;
        let x_2060 : f32 = u_xlat7.x;
        let x_2062 : f32 = u_xlat83;
        u_xlat83 = ((x_2058 * x_2060) + x_2062);
        let x_2065 : vec4<f32> = u_xlat14;
        let x_2066 : vec2<f32> = vec2<f32>(x_2065.z, x_2065.w);
        let x_2068 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2066.x, x_2066.y, x_2068);
        let x_2075 : vec3<f32> = txVec20;
        let x_2077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2075.xy, x_2075.z);
        u_xlat7.x = x_2077;
        let x_2080 : f32 = u_xlat18.w;
        let x_2082 : f32 = u_xlat7.x;
        let x_2084 : f32 = u_xlat83;
        u_xlat83 = ((x_2080 * x_2082) + x_2084);
        let x_2087 : vec4<f32> = u_xlat15;
        let x_2088 : vec2<f32> = vec2<f32>(x_2087.x, x_2087.y);
        let x_2090 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
        let x_2097 : vec3<f32> = txVec21;
        let x_2099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2097.xy, x_2097.z);
        u_xlat7.x = x_2099;
        let x_2102 : f32 = u_xlat19.x;
        let x_2104 : f32 = u_xlat7.x;
        let x_2106 : f32 = u_xlat83;
        u_xlat83 = ((x_2102 * x_2104) + x_2106);
        let x_2109 : vec4<f32> = u_xlat15;
        let x_2110 : vec2<f32> = vec2<f32>(x_2109.z, x_2109.w);
        let x_2112 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec22;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2119.xy, x_2119.z);
        u_xlat7.x = x_2121;
        let x_2124 : f32 = u_xlat19.y;
        let x_2126 : f32 = u_xlat7.x;
        let x_2128 : f32 = u_xlat83;
        u_xlat83 = ((x_2124 * x_2126) + x_2128);
        let x_2131 : vec2<f32> = u_xlat33;
        let x_2133 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2131.x, x_2131.y, x_2133);
        let x_2140 : vec3<f32> = txVec23;
        let x_2142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2140.xy, x_2140.z);
        u_xlat7.x = x_2142;
        let x_2145 : f32 = u_xlat19.z;
        let x_2147 : f32 = u_xlat7.x;
        let x_2149 : f32 = u_xlat83;
        u_xlat83 = ((x_2145 * x_2147) + x_2149);
        let x_2152 : vec4<f32> = u_xlat16;
        let x_2153 : vec2<f32> = vec2<f32>(x_2152.x, x_2152.y);
        let x_2155 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2153.x, x_2153.y, x_2155);
        let x_2162 : vec3<f32> = txVec24;
        let x_2164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2162.xy, x_2162.z);
        u_xlat7.x = x_2164;
        let x_2167 : f32 = u_xlat19.w;
        let x_2169 : f32 = u_xlat7.x;
        let x_2171 : f32 = u_xlat83;
        u_xlat83 = ((x_2167 * x_2169) + x_2171);
        let x_2174 : vec4<f32> = u_xlat10;
        let x_2175 : vec2<f32> = vec2<f32>(x_2174.x, x_2174.y);
        let x_2177 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2175.x, x_2175.y, x_2177);
        let x_2184 : vec3<f32> = txVec25;
        let x_2186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2184.xy, x_2184.z);
        u_xlat7.x = x_2186;
        let x_2189 : f32 = u_xlat6.x;
        let x_2191 : f32 = u_xlat7.x;
        let x_2193 : f32 = u_xlat83;
        u_xlat83 = ((x_2189 * x_2191) + x_2193);
        let x_2196 : vec4<f32> = u_xlat10;
        let x_2197 : vec2<f32> = vec2<f32>(x_2196.z, x_2196.w);
        let x_2199 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2197.x, x_2197.y, x_2199);
        let x_2206 : vec3<f32> = txVec26;
        let x_2208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2206.xy, x_2206.z);
        u_xlat6.x = x_2208;
        let x_2211 : f32 = u_xlat6.y;
        let x_2213 : f32 = u_xlat6.x;
        let x_2215 : f32 = u_xlat83;
        u_xlat83 = ((x_2211 * x_2213) + x_2215);
        let x_2218 : vec2<f32> = u_xlat61;
        let x_2220 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2218.x, x_2218.y, x_2220);
        let x_2227 : vec3<f32> = txVec27;
        let x_2229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2227.xy, x_2227.z);
        u_xlat6.x = x_2229;
        let x_2232 : f32 = u_xlat6.z;
        let x_2234 : f32 = u_xlat6.x;
        let x_2236 : f32 = u_xlat83;
        u_xlat83 = ((x_2232 * x_2234) + x_2236);
        let x_2239 : vec3<f32> = u_xlat31;
        let x_2240 : vec2<f32> = vec2<f32>(x_2239.x, x_2239.y);
        let x_2242 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2240.x, x_2240.y, x_2242);
        let x_2249 : vec3<f32> = txVec28;
        let x_2251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2249.xy, x_2249.z);
        u_xlat31.x = x_2251;
        let x_2254 : f32 = u_xlat6.w;
        let x_2256 : f32 = u_xlat31.x;
        let x_2258 : f32 = u_xlat83;
        u_xlat5.x = ((x_2254 * x_2256) + x_2258);
      }
    }
  } else {
    let x_2263 : vec4<f32> = vs_TEXCOORD8;
    let x_2264 : vec2<f32> = vec2<f32>(x_2263.x, x_2263.y);
    let x_2266 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2264.x, x_2264.y, x_2266);
    let x_2273 : vec3<f32> = txVec29;
    let x_2275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2273.xy, x_2273.z);
    u_xlat5.x = x_2275;
  }
  let x_2278 : f32 = x_1002.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_2278) + 1.0f);
  let x_2283 : f32 = u_xlat5.x;
  let x_2285 : f32 = x_1002.x_MainLightShadowParams.x;
  let x_2288 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_2283 * x_2285) + x_2288);
  let x_2292 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_2292);
  let x_2298 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_2298 >= 1.0f);
  let x_2302 : bool = u_xlatb57.x;
  let x_2303 : bool = u_xlatb31;
  u_xlatb31 = (x_2302 | x_2303);
  let x_2305 : bool = u_xlatb31;
  if (x_2305) {
    x_2307 = 1.0f;
  } else {
    let x_2312 : f32 = u_xlat5.x;
    x_2307 = x_2312;
  }
  let x_2313 : f32 = x_2307;
  u_xlat5.x = x_2313;
  let x_2315 : vec3<f32> = vs_TEXCOORD7;
  let x_2318 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2315 + -(x_2318));
  let x_2321 : vec3<f32> = u_xlat31;
  let x_2322 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_2321, x_2322);
  let x_2326 : f32 = u_xlat31.x;
  let x_2328 : f32 = x_1002.x_MainLightShadowParams.z;
  let x_2331 : f32 = x_1002.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_2326 * x_2328) + x_2331);
  let x_2335 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2335, 0.0f, 1.0f);
  let x_2339 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_2339) + 1.0f);
  let x_2343 : f32 = u_xlat57.x;
  let x_2344 : f32 = u_xlat83;
  let x_2347 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2343 * x_2344) + x_2347);
  let x_2357 : f32 = x_2355.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_2357 == -1.0f));
  let x_2361 : bool = u_xlatb57.x;
  if (x_2361) {
    let x_2364 : vec3<f32> = vs_TEXCOORD7;
    let x_2367 : vec4<f32> = x_2355.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_2364.y, x_2364.y) * vec2<f32>(x_2367.x, x_2367.y));
    let x_2371 : vec4<f32> = x_2355.x_MainLightWorldToLight[0i];
    let x_2373 : vec3<f32> = vs_TEXCOORD7;
    let x_2376 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2371.x, x_2371.y) * vec2<f32>(x_2373.x, x_2373.x)) + x_2376);
    let x_2379 : vec4<f32> = x_2355.x_MainLightWorldToLight[2i];
    let x_2381 : vec3<f32> = vs_TEXCOORD7;
    let x_2384 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2379.x, x_2379.y) * vec2<f32>(x_2381.z, x_2381.z)) + x_2384);
    let x_2386 : vec2<f32> = u_xlat57;
    let x_2388 : vec4<f32> = x_2355.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_2386 + vec2<f32>(x_2388.x, x_2388.y));
    let x_2391 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_2391 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2399 : vec2<f32> = u_xlat57;
    let x_2401 : f32 = x_113.x_GlobalMipBias.x;
    let x_2402 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2399, x_2401);
    u_xlat6 = x_2402;
    let x_2404 : f32 = x_2355.x_MainLightCookieTextureFormat;
    let x_2406 : f32 = x_2355.x_MainLightCookieTextureFormat;
    let x_2408 : f32 = x_2355.x_MainLightCookieTextureFormat;
    let x_2410 : f32 = x_2355.x_MainLightCookieTextureFormat;
    let x_2411 : vec4<f32> = vec4<f32>(x_2404, x_2406, x_2408, x_2410);
    let x_2418 : vec4<bool> = (vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2411.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_2418.x, x_2418.y);
    let x_2421 : bool = u_xlatb57.y;
    if (x_2421) {
      let x_2426 : f32 = u_xlat6.w;
      x_2422 = x_2426;
    } else {
      let x_2429 : f32 = u_xlat6.x;
      x_2422 = x_2429;
    }
    let x_2430 : f32 = x_2422;
    u_xlat83 = x_2430;
    let x_2432 : bool = u_xlatb57.x;
    if (x_2432) {
      let x_2436 : vec4<f32> = u_xlat6;
      x_2433 = vec3<f32>(x_2436.x, x_2436.y, x_2436.z);
    } else {
      let x_2439 : f32 = u_xlat83;
      x_2433 = vec3<f32>(x_2439, x_2439, x_2439);
    }
    let x_2441 : vec3<f32> = x_2433;
    let x_2442 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2448 : vec4<f32> = u_xlat6;
  let x_2451 : vec4<f32> = x_113.x_MainLightColor;
  let x_2453 : vec3<f32> = (vec3<f32>(x_2448.x, x_2448.y, x_2448.z) * vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
  let x_2457 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2457;
  let x_2460 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2460;
  let x_2463 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2463;
  let x_2465 : vec4<f32> = u_xlat7;
  let x_2468 : vec4<f32> = u_xlat1;
  u_xlat57.x = dot(-(vec3<f32>(x_2465.x, x_2465.y, x_2465.z)), vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
  let x_2473 : f32 = u_xlat57.x;
  let x_2475 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2473 + x_2475);
  let x_2478 : vec4<f32> = u_xlat1;
  let x_2480 : vec2<f32> = u_xlat57;
  let x_2484 : vec4<f32> = u_xlat7;
  let x_2487 : vec3<f32> = ((vec3<f32>(x_2478.x, x_2478.y, x_2478.z) * -(vec3<f32>(x_2480.x, x_2480.x, x_2480.x))) + -(vec3<f32>(x_2484.x, x_2484.y, x_2484.z)));
  let x_2488 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
  let x_2490 : vec4<f32> = u_xlat1;
  let x_2492 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_2490.x, x_2490.y, x_2490.z), vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2497 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2497, 0.0f, 1.0f);
  let x_2501 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_2501) + 1.0f);
  let x_2506 : f32 = u_xlat57.x;
  let x_2508 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2506 * x_2508);
  let x_2512 : f32 = u_xlat57.x;
  let x_2514 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2512 * x_2514);
  let x_2518 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2518) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2525 : f32 = u_xlat0.x;
  let x_2526 : f32 = u_xlat83;
  u_xlat0.x = (x_2525 * x_2526);
  let x_2530 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2530 * 6.0f);
  let x_2542 : vec4<f32> = u_xlat8;
  let x_2545 : f32 = u_xlat0.x;
  let x_2546 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2542.x, x_2542.y, x_2542.z), x_2545);
  u_xlat8 = x_2546;
  let x_2548 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2548 + -1.0f);
  let x_2556 : f32 = x_2554.unity_SpecCube0_HDR.w;
  let x_2558 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2556 * x_2558) + 1.0f);
  let x_2563 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2563, 0.0f);
  let x_2567 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2567);
  let x_2571 : f32 = u_xlat0.x;
  let x_2573 : f32 = x_2554.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2571 * x_2573);
  let x_2577 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2577);
  let x_2581 : f32 = u_xlat0.x;
  let x_2583 : f32 = x_2554.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2581 * x_2583);
  let x_2586 : vec4<f32> = u_xlat8;
  let x_2588 : vec3<f32> = u_xlat0;
  let x_2590 : vec3<f32> = (vec3<f32>(x_2586.x, x_2586.y, x_2586.z) * vec3<f32>(x_2588.x, x_2588.x, x_2588.x));
  let x_2591 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2591.w);
  let x_2593 : f32 = u_xlat52;
  let x_2595 : f32 = u_xlat52;
  let x_2599 : vec2<f32> = ((vec2<f32>(x_2593, x_2593) * vec2<f32>(x_2595, x_2595)) + vec2<f32>(-1.0f, 1.0f));
  let x_2600 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2599.x, x_2600.y, x_2599.y);
  let x_2603 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2603);
  let x_2605 : vec4<f32> = u_xlat4;
  let x_2608 : vec4<f32> = u_xlat3;
  let x_2610 : vec3<f32> = (-(vec3<f32>(x_2605.x, x_2605.y, x_2605.z)) + vec3<f32>(x_2608.x, x_2608.x, x_2608.x));
  let x_2611 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
  let x_2613 : vec2<f32> = u_xlat57;
  let x_2615 : vec4<f32> = u_xlat9;
  let x_2618 : vec4<f32> = u_xlat4;
  let x_2620 : vec3<f32> = ((vec3<f32>(x_2613.x, x_2613.x, x_2613.x) * vec3<f32>(x_2615.x, x_2615.y, x_2615.z)) + vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
  let x_2621 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
  let x_2623 : f32 = u_xlat52;
  let x_2625 : vec4<f32> = u_xlat9;
  let x_2627 : vec3<f32> = (vec3<f32>(x_2623, x_2623, x_2623) * vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
  let x_2628 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
  let x_2630 : vec4<f32> = u_xlat8;
  let x_2632 : vec4<f32> = u_xlat9;
  let x_2634 : vec3<f32> = (vec3<f32>(x_2630.x, x_2630.y, x_2630.z) * vec3<f32>(x_2632.x, x_2632.y, x_2632.z));
  let x_2635 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
  let x_2637 : vec4<f32> = u_xlat2;
  let x_2639 : vec3<f32> = u_xlat29;
  let x_2641 : vec4<f32> = u_xlat8;
  let x_2643 : vec3<f32> = ((vec3<f32>(x_2637.x, x_2637.y, x_2637.z) * x_2639) + vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
  let x_2647 : f32 = u_xlat5.x;
  let x_2649 : f32 = x_2554.unity_LightData.z;
  u_xlat52 = (x_2647 * x_2649);
  let x_2651 : vec4<f32> = u_xlat1;
  let x_2654 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2651.x, x_2651.y, x_2651.z), vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
  let x_2659 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2659, 0.0f, 1.0f);
  let x_2662 : f32 = u_xlat52;
  let x_2664 : f32 = u_xlat3.x;
  u_xlat52 = (x_2662 * x_2664);
  let x_2666 : f32 = u_xlat52;
  let x_2668 : vec4<f32> = u_xlat6;
  let x_2670 : vec3<f32> = (vec3<f32>(x_2666, x_2666, x_2666) * vec3<f32>(x_2668.x, x_2668.y, x_2668.z));
  let x_2671 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2670.x, x_2671.y, x_2670.y, x_2670.z);
  let x_2673 : vec4<f32> = u_xlat7;
  let x_2676 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2678 : vec3<f32> = (vec3<f32>(x_2673.x, x_2673.y, x_2673.z) + vec3<f32>(x_2676.x, x_2676.y, x_2676.z));
  let x_2679 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
  let x_2681 : vec4<f32> = u_xlat6;
  let x_2683 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2681.x, x_2681.y, x_2681.z), vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
  let x_2686 : f32 = u_xlat52;
  u_xlat52 = max(x_2686, 1.17549435e-38f);
  let x_2689 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2689);
  let x_2691 : f32 = u_xlat52;
  let x_2693 : vec4<f32> = u_xlat6;
  let x_2695 : vec3<f32> = (vec3<f32>(x_2691, x_2691, x_2691) * vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
  let x_2696 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
  let x_2698 : vec4<f32> = u_xlat1;
  let x_2700 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2698.x, x_2698.y, x_2698.z), vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
  let x_2703 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2703, 0.0f, 1.0f);
  let x_2706 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2708 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_2706.x, x_2706.y, x_2706.z), vec3<f32>(x_2708.x, x_2708.y, x_2708.z));
  let x_2713 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2713, 0.0f, 1.0f);
  let x_2716 : f32 = u_xlat52;
  let x_2717 : f32 = u_xlat52;
  u_xlat52 = (x_2716 * x_2717);
  let x_2719 : f32 = u_xlat52;
  let x_2721 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2719 * x_2721) + 1.00001001358032226562f);
  let x_2726 : f32 = u_xlat3.x;
  let x_2728 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2726 * x_2728);
  let x_2731 : f32 = u_xlat52;
  let x_2732 : f32 = u_xlat52;
  u_xlat52 = (x_2731 * x_2732);
  let x_2735 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2735, 0.10000000149011611938f);
  let x_2739 : f32 = u_xlat52;
  let x_2741 : f32 = u_xlat3.x;
  u_xlat52 = (x_2739 * x_2741);
  let x_2743 : f32 = u_xlat82;
  let x_2744 : f32 = u_xlat52;
  u_xlat52 = (x_2743 * x_2744);
  let x_2746 : f32 = u_xlat80;
  let x_2747 : f32 = u_xlat52;
  u_xlat52 = (x_2746 / x_2747);
  let x_2749 : vec4<f32> = u_xlat4;
  let x_2751 : f32 = u_xlat52;
  let x_2754 : vec3<f32> = u_xlat29;
  let x_2755 : vec3<f32> = ((vec3<f32>(x_2749.x, x_2749.y, x_2749.z) * vec3<f32>(x_2751, x_2751, x_2751)) + x_2754);
  let x_2756 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
  let x_2758 : vec4<f32> = u_xlat5;
  let x_2760 : vec4<f32> = u_xlat6;
  let x_2762 : vec3<f32> = (vec3<f32>(x_2758.x, x_2758.z, x_2758.w) * vec3<f32>(x_2760.x, x_2760.y, x_2760.z));
  let x_2763 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2762.x, x_2763.y, x_2762.y, x_2762.z);
  let x_2766 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2768 : f32 = x_2554.unity_LightData.y;
  u_xlat52 = min(x_2766, x_2768);
  let x_2772 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2772));
  let x_2776 : f32 = u_xlat31.x;
  let x_2778 : f32 = x_1002.x_AdditionalShadowFadeParams.x;
  let x_2781 : f32 = x_1002.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2776 * x_2778) + x_2781);
  let x_2785 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2785, 0.0f, 1.0f);
  let x_2790 : f32 = x_2355.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2792 : f32 = x_2355.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2794 : f32 = x_2355.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2796 : f32 = x_2355.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2797 : vec4<f32> = vec4<f32>(x_2790, x_2792, x_2794, x_2796);
  let x_2804 : vec4<bool> = (vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2797.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2804.x, x_2804.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2816 : u32 = u_xlatu_loop_1;
    let x_2817 : u32 = u_xlatu52;
    if ((x_2816 < x_2817)) {
    } else {
      break;
    }
    let x_2820 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_2820 >> 2u);
    let x_2824 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2824 & 3u));
    let x_2827 : u32 = u_xlatu58;
    let x_2830 : vec4<f32> = x_2554.unity_LightIndices[bitcast<i32>(x_2827)];
    let x_2840 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2845 : vec4<u32> = indexable[x_2840];
    u_xlat58.x = dot(x_2830, bitcast<vec4<f32>>(x_2845));
    let x_2851 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_2851);
    let x_2853 : vec3<f32> = vs_TEXCOORD7;
    let x_2864 : i32 = u_xlati58;
    let x_2866 : vec4<f32> = x_2863.x_AdditionalLightsPosition[x_2864];
    let x_2869 : i32 = u_xlati58;
    let x_2871 : vec4<f32> = x_2863.x_AdditionalLightsPosition[x_2869];
    let x_2873 : vec3<f32> = ((-(x_2853) * vec3<f32>(x_2866.w, x_2866.w, x_2866.w)) + vec3<f32>(x_2871.x, x_2871.y, x_2871.z));
    let x_2874 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2873.x, x_2873.y, x_2873.z, x_2874.w);
    let x_2877 : vec4<f32> = u_xlat9;
    let x_2879 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2877.x, x_2877.y, x_2877.z), vec3<f32>(x_2879.x, x_2879.y, x_2879.z));
    let x_2882 : f32 = u_xlat84;
    u_xlat84 = max(x_2882, 0.00006103515625f);
    let x_2885 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2885);
    let x_2887 : f32 = u_xlat85;
    let x_2889 : vec4<f32> = u_xlat9;
    let x_2891 : vec3<f32> = (vec3<f32>(x_2887, x_2887, x_2887) * vec3<f32>(x_2889.x, x_2889.y, x_2889.z));
    let x_2892 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2891.x, x_2891.y, x_2891.z, x_2892.w);
    let x_2895 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2895);
    let x_2897 : f32 = u_xlat84;
    let x_2898 : i32 = u_xlati58;
    let x_2900 : f32 = x_2863.x_AdditionalLightsAttenuation[x_2898].x;
    u_xlat84 = (x_2897 * x_2900);
    let x_2902 : f32 = u_xlat84;
    let x_2904 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2902) * x_2904) + 1.0f);
    let x_2907 : f32 = u_xlat84;
    u_xlat84 = max(x_2907, 0.0f);
    let x_2909 : f32 = u_xlat84;
    let x_2910 : f32 = u_xlat84;
    u_xlat84 = (x_2909 * x_2910);
    let x_2912 : f32 = u_xlat84;
    let x_2913 : f32 = u_xlat86;
    u_xlat84 = (x_2912 * x_2913);
    let x_2915 : i32 = u_xlati58;
    let x_2917 : vec4<f32> = x_2863.x_AdditionalLightsSpotDir[x_2915];
    let x_2919 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2917.x, x_2917.y, x_2917.z), vec3<f32>(x_2919.x, x_2919.y, x_2919.z));
    let x_2922 : f32 = u_xlat86;
    let x_2923 : i32 = u_xlati58;
    let x_2925 : f32 = x_2863.x_AdditionalLightsAttenuation[x_2923].z;
    let x_2927 : i32 = u_xlati58;
    let x_2929 : f32 = x_2863.x_AdditionalLightsAttenuation[x_2927].w;
    u_xlat86 = ((x_2922 * x_2925) + x_2929);
    let x_2931 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2931, 0.0f, 1.0f);
    let x_2933 : f32 = u_xlat86;
    let x_2934 : f32 = u_xlat86;
    u_xlat86 = (x_2933 * x_2934);
    let x_2936 : f32 = u_xlat84;
    let x_2937 : f32 = u_xlat86;
    u_xlat84 = (x_2936 * x_2937);
    let x_2940 : i32 = u_xlati58;
    let x_2942 : f32 = x_1002.x_AdditionalShadowParams[x_2940].w;
    u_xlati86 = i32(x_2942);
    let x_2945 : i32 = u_xlati86;
    u_xlatb87 = (x_2945 >= 0i);
    let x_2947 : bool = u_xlatb87;
    if (x_2947) {
      let x_2951 : i32 = u_xlati58;
      let x_2953 : f32 = x_1002.x_AdditionalShadowParams[x_2951].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2953, x_2953, x_2953, x_2953))));
      let x_2957 : bool = u_xlatb87;
      if (x_2957) {
        let x_2962 : vec4<f32> = u_xlat10;
        let x_2965 : vec4<f32> = u_xlat10;
        let x_2968 : vec4<bool> = (abs(vec4<f32>(x_2962.z, x_2962.z, x_2962.y, x_2962.z)) >= abs(vec4<f32>(x_2965.x, x_2965.y, x_2965.x, x_2965.x)));
        let x_2970 : vec3<bool> = vec3<bool>(x_2968.x, x_2968.y, x_2968.z);
        let x_2971 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2970.x, x_2970.y, x_2970.z, x_2971.w);
        let x_2974 : bool = u_xlatb11.y;
        let x_2976 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2974 & x_2976);
        let x_2978 : vec4<f32> = u_xlat10;
        let x_2981 : vec4<bool> = (-(vec4<f32>(x_2978.z, x_2978.y, x_2978.z, x_2978.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2982 : vec3<bool> = vec3<bool>(x_2981.x, x_2981.y, x_2981.w);
        let x_2983 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2982.x, x_2982.y, x_2983.z, x_2982.z);
        let x_2986 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2986);
        let x_2991 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2991);
        let x_2997 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2997);
        let x_3000 : bool = u_xlatb11.z;
        if (x_3000) {
          let x_3005 : f32 = u_xlat11.y;
          x_3001 = x_3005;
        } else {
          let x_3007 : f32 = u_xlat88;
          x_3001 = x_3007;
        }
        let x_3008 : f32 = x_3001;
        u_xlat88 = x_3008;
        let x_3010 : bool = u_xlatb87;
        if (x_3010) {
          let x_3015 : f32 = u_xlat11.x;
          x_3011 = x_3015;
        } else {
          let x_3017 : f32 = u_xlat88;
          x_3011 = x_3017;
        }
        let x_3018 : f32 = x_3011;
        u_xlat87 = x_3018;
        let x_3019 : i32 = u_xlati58;
        let x_3021 : f32 = x_1002.x_AdditionalShadowParams[x_3019].w;
        u_xlat88 = trunc(x_3021);
        let x_3023 : f32 = u_xlat87;
        let x_3024 : f32 = u_xlat88;
        u_xlat87 = (x_3023 + x_3024);
        let x_3026 : f32 = u_xlat87;
        u_xlati86 = i32(x_3026);
      }
      let x_3028 : i32 = u_xlati86;
      u_xlati86 = (x_3028 << bitcast<u32>(2i));
      let x_3030 : vec3<f32> = vs_TEXCOORD7;
      let x_3032 : i32 = u_xlati86;
      let x_3035 : i32 = u_xlati86;
      let x_3039 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_3032 + 1i) / 4i)][((x_3035 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3030.y, x_3030.y, x_3030.y, x_3030.y) * x_3039);
      let x_3041 : i32 = u_xlati86;
      let x_3043 : i32 = u_xlati86;
      let x_3046 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[(x_3041 / 4i)][(x_3043 % 4i)];
      let x_3047 : vec3<f32> = vs_TEXCOORD7;
      let x_3050 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3046 * vec4<f32>(x_3047.x, x_3047.x, x_3047.x, x_3047.x)) + x_3050);
      let x_3052 : i32 = u_xlati86;
      let x_3055 : i32 = u_xlati86;
      let x_3059 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_3052 + 2i) / 4i)][((x_3055 + 2i) % 4i)];
      let x_3060 : vec3<f32> = vs_TEXCOORD7;
      let x_3063 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3059 * vec4<f32>(x_3060.z, x_3060.z, x_3060.z, x_3060.z)) + x_3063);
      let x_3065 : vec4<f32> = u_xlat11;
      let x_3066 : i32 = u_xlati86;
      let x_3069 : i32 = u_xlati86;
      let x_3073 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_3066 + 3i) / 4i)][((x_3069 + 3i) % 4i)];
      u_xlat11 = (x_3065 + x_3073);
      let x_3075 : vec4<f32> = u_xlat11;
      let x_3077 : vec4<f32> = u_xlat11;
      let x_3079 : vec3<f32> = (vec3<f32>(x_3075.x, x_3075.y, x_3075.z) / vec3<f32>(x_3077.w, x_3077.w, x_3077.w));
      let x_3080 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3079.x, x_3079.y, x_3079.z, x_3080.w);
      let x_3083 : i32 = u_xlati58;
      let x_3085 : f32 = x_1002.x_AdditionalShadowParams[x_3083].y;
      u_xlatb86 = (0.0f < x_3085);
      let x_3087 : bool = u_xlatb86;
      if (x_3087) {
        let x_3090 : i32 = u_xlati58;
        let x_3092 : f32 = x_1002.x_AdditionalShadowParams[x_3090].y;
        u_xlatb86 = (1.0f == x_3092);
        let x_3094 : bool = u_xlatb86;
        if (x_3094) {
          let x_3097 : vec4<f32> = u_xlat11;
          let x_3100 : vec4<f32> = x_1002.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y) + x_3100);
          let x_3103 : vec4<f32> = u_xlat12;
          let x_3104 : vec2<f32> = vec2<f32>(x_3103.x, x_3103.y);
          let x_3106 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
          let x_3114 : vec3<f32> = txVec30;
          let x_3116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
          u_xlat13.x = x_3116;
          let x_3119 : vec4<f32> = u_xlat12;
          let x_3120 : vec2<f32> = vec2<f32>(x_3119.z, x_3119.w);
          let x_3122 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3120.x, x_3120.y, x_3122);
          let x_3129 : vec3<f32> = txVec31;
          let x_3131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3129.xy, x_3129.z);
          u_xlat13.y = x_3131;
          let x_3133 : vec4<f32> = u_xlat11;
          let x_3136 : vec4<f32> = x_1002.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y) + x_3136);
          let x_3139 : vec4<f32> = u_xlat12;
          let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
          let x_3142 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
          let x_3149 : vec3<f32> = txVec32;
          let x_3151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
          u_xlat13.z = x_3151;
          let x_3154 : vec4<f32> = u_xlat12;
          let x_3155 : vec2<f32> = vec2<f32>(x_3154.z, x_3154.w);
          let x_3157 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
          let x_3164 : vec3<f32> = txVec33;
          let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
          u_xlat13.w = x_3166;
          let x_3168 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3168, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3171 : i32 = u_xlati58;
          let x_3173 : f32 = x_1002.x_AdditionalShadowParams[x_3171].y;
          u_xlatb87 = (2.0f == x_3173);
          let x_3175 : bool = u_xlatb87;
          if (x_3175) {
            let x_3178 : vec4<f32> = u_xlat11;
            let x_3181 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3184 : vec2<f32> = ((vec2<f32>(x_3178.x, x_3178.y) * vec2<f32>(x_3181.z, x_3181.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3185 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3184.x, x_3184.y, x_3185.z, x_3185.w);
            let x_3187 : vec4<f32> = u_xlat12;
            let x_3189 : vec2<f32> = floor(vec2<f32>(x_3187.x, x_3187.y));
            let x_3190 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3189.x, x_3189.y, x_3190.z, x_3190.w);
            let x_3192 : vec4<f32> = u_xlat11;
            let x_3195 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3198 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3192.x, x_3192.y) * vec2<f32>(x_3195.z, x_3195.w)) + -(vec2<f32>(x_3198.x, x_3198.y)));
            let x_3202 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3202.x, x_3202.x, x_3202.y, x_3202.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3207 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3205.x, x_3205.x, x_3205.z, x_3205.z) * vec4<f32>(x_3207.x, x_3207.x, x_3207.z, x_3207.z));
            let x_3210 : vec4<f32> = u_xlat14;
            let x_3212 : vec2<f32> = (vec2<f32>(x_3210.y, x_3210.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3213 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3212.x, x_3213.y, x_3212.y, x_3213.w);
            let x_3215 : vec4<f32> = u_xlat14;
            let x_3218 : vec2<f32> = u_xlat64;
            let x_3220 : vec2<f32> = ((vec2<f32>(x_3215.x, x_3215.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3218));
            let x_3221 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3220.x, x_3220.y, x_3221.z, x_3221.w);
            let x_3224 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3224) + vec2<f32>(1.0f, 1.0f));
            let x_3227 : vec2<f32> = u_xlat64;
            let x_3228 : vec2<f32> = min(x_3227, vec2<f32>(0.0f, 0.0f));
            let x_3229 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3228.x, x_3228.y, x_3229.z, x_3229.w);
            let x_3231 : vec4<f32> = u_xlat15;
            let x_3234 : vec4<f32> = u_xlat15;
            let x_3237 : vec2<f32> = u_xlat66;
            let x_3238 : vec2<f32> = ((-(vec2<f32>(x_3231.x, x_3231.y)) * vec2<f32>(x_3234.x, x_3234.y)) + x_3237);
            let x_3239 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3238.x, x_3238.y, x_3239.z, x_3239.w);
            let x_3241 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3241, vec2<f32>(0.0f, 0.0f));
            let x_3243 : vec2<f32> = u_xlat64;
            let x_3245 : vec2<f32> = u_xlat64;
            let x_3247 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3243) * x_3245) + vec2<f32>(x_3247.y, x_3247.w));
            let x_3250 : vec4<f32> = u_xlat15;
            let x_3252 : vec2<f32> = (vec2<f32>(x_3250.x, x_3250.y) + vec2<f32>(1.0f, 1.0f));
            let x_3253 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3252.x, x_3252.y, x_3253.z, x_3253.w);
            let x_3255 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3255 + vec2<f32>(1.0f, 1.0f));
            let x_3257 : vec4<f32> = u_xlat14;
            let x_3259 : vec2<f32> = (vec2<f32>(x_3257.x, x_3257.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3260 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3259.x, x_3259.y, x_3260.z, x_3260.w);
            let x_3262 : vec2<f32> = u_xlat66;
            let x_3263 : vec2<f32> = (x_3262 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3264 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3263.x, x_3263.y, x_3264.z, x_3264.w);
            let x_3266 : vec4<f32> = u_xlat15;
            let x_3268 : vec2<f32> = (vec2<f32>(x_3266.x, x_3266.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3269 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3268.x, x_3268.y, x_3269.z, x_3269.w);
            let x_3271 : vec2<f32> = u_xlat64;
            let x_3272 : vec2<f32> = (x_3271 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3273 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3272.x, x_3272.y, x_3273.z, x_3273.w);
            let x_3275 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3275.y, x_3275.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3279 : f32 = u_xlat15.x;
            u_xlat16.z = x_3279;
            let x_3282 : f32 = u_xlat64.x;
            u_xlat16.w = x_3282;
            let x_3285 : f32 = u_xlat17.x;
            u_xlat14.z = x_3285;
            let x_3288 : f32 = u_xlat13.x;
            u_xlat14.w = x_3288;
            let x_3290 : vec4<f32> = u_xlat14;
            let x_3292 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3290.z, x_3290.w, x_3290.x, x_3290.z) + vec4<f32>(x_3292.z, x_3292.w, x_3292.x, x_3292.z));
            let x_3296 : f32 = u_xlat16.y;
            u_xlat15.z = x_3296;
            let x_3299 : f32 = u_xlat64.y;
            u_xlat15.w = x_3299;
            let x_3302 : f32 = u_xlat14.y;
            u_xlat17.z = x_3302;
            let x_3305 : f32 = u_xlat13.z;
            u_xlat17.w = x_3305;
            let x_3307 : vec4<f32> = u_xlat15;
            let x_3309 : vec4<f32> = u_xlat17;
            let x_3311 : vec3<f32> = (vec3<f32>(x_3307.z, x_3307.y, x_3307.w) + vec3<f32>(x_3309.z, x_3309.y, x_3309.w));
            let x_3312 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
            let x_3314 : vec4<f32> = u_xlat14;
            let x_3316 : vec4<f32> = u_xlat18;
            let x_3318 : vec3<f32> = (vec3<f32>(x_3314.x, x_3314.z, x_3314.w) / vec3<f32>(x_3316.z, x_3316.w, x_3316.y));
            let x_3319 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3318.x, x_3318.y, x_3318.z, x_3319.w);
            let x_3321 : vec4<f32> = u_xlat14;
            let x_3323 : vec3<f32> = (vec3<f32>(x_3321.x, x_3321.y, x_3321.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3324 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
            let x_3326 : vec4<f32> = u_xlat17;
            let x_3328 : vec4<f32> = u_xlat13;
            let x_3330 : vec3<f32> = (vec3<f32>(x_3326.z, x_3326.y, x_3326.w) / vec3<f32>(x_3328.x, x_3328.y, x_3328.z));
            let x_3331 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3330.x, x_3330.y, x_3330.z, x_3331.w);
            let x_3333 : vec4<f32> = u_xlat15;
            let x_3335 : vec3<f32> = (vec3<f32>(x_3333.x, x_3333.y, x_3333.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3336 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3335.x, x_3335.y, x_3335.z, x_3336.w);
            let x_3338 : vec4<f32> = u_xlat14;
            let x_3341 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3343 : vec3<f32> = (vec3<f32>(x_3338.y, x_3338.x, x_3338.z) * vec3<f32>(x_3341.x, x_3341.x, x_3341.x));
            let x_3344 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3343.x, x_3343.y, x_3343.z, x_3344.w);
            let x_3346 : vec4<f32> = u_xlat15;
            let x_3349 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3351 : vec3<f32> = (vec3<f32>(x_3346.x, x_3346.y, x_3346.z) * vec3<f32>(x_3349.y, x_3349.y, x_3349.y));
            let x_3352 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3351.x, x_3351.y, x_3351.z, x_3352.w);
            let x_3355 : f32 = u_xlat15.x;
            u_xlat14.w = x_3355;
            let x_3357 : vec4<f32> = u_xlat12;
            let x_3360 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3363 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3357.x, x_3357.y, x_3357.x, x_3357.y) * vec4<f32>(x_3360.x, x_3360.y, x_3360.x, x_3360.y)) + vec4<f32>(x_3363.y, x_3363.w, x_3363.x, x_3363.w));
            let x_3366 : vec4<f32> = u_xlat12;
            let x_3369 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3372 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3366.x, x_3366.y) * vec2<f32>(x_3369.x, x_3369.y)) + vec2<f32>(x_3372.z, x_3372.w));
            let x_3376 : f32 = u_xlat14.y;
            u_xlat15.w = x_3376;
            let x_3378 : vec4<f32> = u_xlat15;
            let x_3379 : vec2<f32> = vec2<f32>(x_3378.y, x_3378.z);
            let x_3380 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3380.x, x_3379.x, x_3380.z, x_3379.y);
            let x_3382 : vec4<f32> = u_xlat12;
            let x_3385 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3388 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3382.x, x_3382.y, x_3382.x, x_3382.y) * vec4<f32>(x_3385.x, x_3385.y, x_3385.x, x_3385.y)) + vec4<f32>(x_3388.x, x_3388.y, x_3388.z, x_3388.y));
            let x_3391 : vec4<f32> = u_xlat12;
            let x_3394 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3397 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3391.x, x_3391.y, x_3391.x, x_3391.y) * vec4<f32>(x_3394.x, x_3394.y, x_3394.x, x_3394.y)) + vec4<f32>(x_3397.w, x_3397.y, x_3397.w, x_3397.z));
            let x_3400 : vec4<f32> = u_xlat12;
            let x_3403 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3406 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3400.x, x_3400.y, x_3400.x, x_3400.y) * vec4<f32>(x_3403.x, x_3403.y, x_3403.x, x_3403.y)) + vec4<f32>(x_3406.x, x_3406.w, x_3406.z, x_3406.w));
            let x_3409 : vec4<f32> = u_xlat13;
            let x_3411 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3409.x, x_3409.x, x_3409.x, x_3409.y) * vec4<f32>(x_3411.z, x_3411.w, x_3411.y, x_3411.z));
            let x_3415 : vec4<f32> = u_xlat13;
            let x_3417 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3415.y, x_3415.y, x_3415.z, x_3415.z) * x_3417);
            let x_3420 : f32 = u_xlat13.z;
            let x_3422 : f32 = u_xlat18.y;
            u_xlat87 = (x_3420 * x_3422);
            let x_3425 : vec4<f32> = u_xlat16;
            let x_3426 : vec2<f32> = vec2<f32>(x_3425.x, x_3425.y);
            let x_3428 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
            let x_3435 : vec3<f32> = txVec34;
            let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
            u_xlat88 = x_3437;
            let x_3439 : vec4<f32> = u_xlat16;
            let x_3440 : vec2<f32> = vec2<f32>(x_3439.z, x_3439.w);
            let x_3442 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3440.x, x_3440.y, x_3442);
            let x_3450 : vec3<f32> = txVec35;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat89 = x_3452;
            let x_3453 : f32 = u_xlat89;
            let x_3455 : f32 = u_xlat19.y;
            u_xlat89 = (x_3453 * x_3455);
            let x_3458 : f32 = u_xlat19.x;
            let x_3459 : f32 = u_xlat88;
            let x_3461 : f32 = u_xlat89;
            u_xlat88 = ((x_3458 * x_3459) + x_3461);
            let x_3464 : vec2<f32> = u_xlat64;
            let x_3466 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec36;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat89 = x_3475;
            let x_3477 : f32 = u_xlat19.z;
            let x_3478 : f32 = u_xlat89;
            let x_3480 : f32 = u_xlat88;
            u_xlat88 = ((x_3477 * x_3478) + x_3480);
            let x_3483 : vec4<f32> = u_xlat15;
            let x_3484 : vec2<f32> = vec2<f32>(x_3483.x, x_3483.y);
            let x_3486 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3484.x, x_3484.y, x_3486);
            let x_3493 : vec3<f32> = txVec37;
            let x_3495 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3493.xy, x_3493.z);
            u_xlat89 = x_3495;
            let x_3497 : f32 = u_xlat19.w;
            let x_3498 : f32 = u_xlat89;
            let x_3500 : f32 = u_xlat88;
            u_xlat88 = ((x_3497 * x_3498) + x_3500);
            let x_3503 : vec4<f32> = u_xlat17;
            let x_3504 : vec2<f32> = vec2<f32>(x_3503.x, x_3503.y);
            let x_3506 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3504.x, x_3504.y, x_3506);
            let x_3513 : vec3<f32> = txVec38;
            let x_3515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3513.xy, x_3513.z);
            u_xlat89 = x_3515;
            let x_3517 : f32 = u_xlat20.x;
            let x_3518 : f32 = u_xlat89;
            let x_3520 : f32 = u_xlat88;
            u_xlat88 = ((x_3517 * x_3518) + x_3520);
            let x_3523 : vec4<f32> = u_xlat17;
            let x_3524 : vec2<f32> = vec2<f32>(x_3523.z, x_3523.w);
            let x_3526 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3524.x, x_3524.y, x_3526);
            let x_3533 : vec3<f32> = txVec39;
            let x_3535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3533.xy, x_3533.z);
            u_xlat89 = x_3535;
            let x_3537 : f32 = u_xlat20.y;
            let x_3538 : f32 = u_xlat89;
            let x_3540 : f32 = u_xlat88;
            u_xlat88 = ((x_3537 * x_3538) + x_3540);
            let x_3543 : vec4<f32> = u_xlat15;
            let x_3544 : vec2<f32> = vec2<f32>(x_3543.z, x_3543.w);
            let x_3546 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3544.x, x_3544.y, x_3546);
            let x_3553 : vec3<f32> = txVec40;
            let x_3555 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3553.xy, x_3553.z);
            u_xlat89 = x_3555;
            let x_3557 : f32 = u_xlat20.z;
            let x_3558 : f32 = u_xlat89;
            let x_3560 : f32 = u_xlat88;
            u_xlat88 = ((x_3557 * x_3558) + x_3560);
            let x_3563 : vec4<f32> = u_xlat14;
            let x_3564 : vec2<f32> = vec2<f32>(x_3563.x, x_3563.y);
            let x_3566 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3564.x, x_3564.y, x_3566);
            let x_3573 : vec3<f32> = txVec41;
            let x_3575 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3573.xy, x_3573.z);
            u_xlat89 = x_3575;
            let x_3577 : f32 = u_xlat20.w;
            let x_3578 : f32 = u_xlat89;
            let x_3580 : f32 = u_xlat88;
            u_xlat88 = ((x_3577 * x_3578) + x_3580);
            let x_3583 : vec4<f32> = u_xlat14;
            let x_3584 : vec2<f32> = vec2<f32>(x_3583.z, x_3583.w);
            let x_3586 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3584.x, x_3584.y, x_3586);
            let x_3593 : vec3<f32> = txVec42;
            let x_3595 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3593.xy, x_3593.z);
            u_xlat89 = x_3595;
            let x_3596 : f32 = u_xlat87;
            let x_3597 : f32 = u_xlat89;
            let x_3599 : f32 = u_xlat88;
            u_xlat86 = ((x_3596 * x_3597) + x_3599);
          } else {
            let x_3602 : vec4<f32> = u_xlat11;
            let x_3605 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3608 : vec2<f32> = ((vec2<f32>(x_3602.x, x_3602.y) * vec2<f32>(x_3605.z, x_3605.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3609 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3608.x, x_3608.y, x_3609.z, x_3609.w);
            let x_3611 : vec4<f32> = u_xlat12;
            let x_3613 : vec2<f32> = floor(vec2<f32>(x_3611.x, x_3611.y));
            let x_3614 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3613.x, x_3613.y, x_3614.z, x_3614.w);
            let x_3616 : vec4<f32> = u_xlat11;
            let x_3619 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3622 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3616.x, x_3616.y) * vec2<f32>(x_3619.z, x_3619.w)) + -(vec2<f32>(x_3622.x, x_3622.y)));
            let x_3626 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3626.x, x_3626.x, x_3626.y, x_3626.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3629 : vec4<f32> = u_xlat13;
            let x_3631 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3629.x, x_3629.x, x_3629.z, x_3629.z) * vec4<f32>(x_3631.x, x_3631.x, x_3631.z, x_3631.z));
            let x_3634 : vec4<f32> = u_xlat14;
            let x_3636 : vec2<f32> = (vec2<f32>(x_3634.y, x_3634.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3637 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3637.x, x_3636.x, x_3637.z, x_3636.y);
            let x_3639 : vec4<f32> = u_xlat14;
            let x_3642 : vec2<f32> = u_xlat64;
            let x_3644 : vec2<f32> = ((vec2<f32>(x_3639.x, x_3639.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3642));
            let x_3645 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3644.x, x_3645.y, x_3644.y, x_3645.w);
            let x_3647 : vec2<f32> = u_xlat64;
            let x_3649 : vec2<f32> = (-(x_3647) + vec2<f32>(1.0f, 1.0f));
            let x_3650 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3649.x, x_3649.y, x_3650.z, x_3650.w);
            let x_3652 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3652, vec2<f32>(0.0f, 0.0f));
            let x_3654 : vec2<f32> = u_xlat66;
            let x_3656 : vec2<f32> = u_xlat66;
            let x_3658 : vec4<f32> = u_xlat14;
            let x_3660 : vec2<f32> = ((-(x_3654) * x_3656) + vec2<f32>(x_3658.x, x_3658.y));
            let x_3661 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3660.x, x_3660.y, x_3661.z, x_3661.w);
            let x_3663 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3663, vec2<f32>(0.0f, 0.0f));
            let x_3666 : vec2<f32> = u_xlat66;
            let x_3668 : vec2<f32> = u_xlat66;
            let x_3670 : vec4<f32> = u_xlat13;
            let x_3672 : vec2<f32> = ((-(x_3666) * x_3668) + vec2<f32>(x_3670.y, x_3670.w));
            let x_3673 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3672.x, x_3673.y, x_3672.y);
            let x_3675 : vec4<f32> = u_xlat14;
            let x_3677 : vec2<f32> = (vec2<f32>(x_3675.x, x_3675.y) + vec2<f32>(2.0f, 2.0f));
            let x_3678 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3677.x, x_3677.y, x_3678.z, x_3678.w);
            let x_3680 : vec3<f32> = u_xlat39;
            let x_3682 : vec2<f32> = (vec2<f32>(x_3680.x, x_3680.z) + vec2<f32>(2.0f, 2.0f));
            let x_3683 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3683.x, x_3682.x, x_3683.z, x_3682.y);
            let x_3686 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3686 * 0.08163200318813323975f);
            let x_3689 : vec4<f32> = u_xlat13;
            let x_3692 : vec3<f32> = (vec3<f32>(x_3689.z, x_3689.x, x_3689.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3693 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3692.x, x_3692.y, x_3692.z, x_3693.w);
            let x_3695 : vec4<f32> = u_xlat14;
            let x_3697 : vec2<f32> = (vec2<f32>(x_3695.x, x_3695.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3698 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3697.x, x_3697.y, x_3698.z, x_3698.w);
            let x_3701 : f32 = u_xlat17.y;
            u_xlat16.x = x_3701;
            let x_3703 : vec2<f32> = u_xlat64;
            let x_3706 : vec2<f32> = ((vec2<f32>(x_3703.x, x_3703.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3707 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3707.x, x_3706.x, x_3707.z, x_3706.y);
            let x_3709 : vec2<f32> = u_xlat64;
            let x_3712 : vec2<f32> = ((vec2<f32>(x_3709.x, x_3709.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3713 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3712.x, x_3713.y, x_3712.y, x_3713.w);
            let x_3716 : f32 = u_xlat13.x;
            u_xlat14.y = x_3716;
            let x_3719 : f32 = u_xlat15.y;
            u_xlat14.w = x_3719;
            let x_3721 : vec4<f32> = u_xlat14;
            let x_3722 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3721 + x_3722);
            let x_3724 : vec2<f32> = u_xlat64;
            let x_3727 : vec2<f32> = ((vec2<f32>(x_3724.y, x_3724.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3728 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3728.x, x_3727.x, x_3728.z, x_3727.y);
            let x_3730 : vec2<f32> = u_xlat64;
            let x_3733 : vec2<f32> = ((vec2<f32>(x_3730.y, x_3730.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3734 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3733.x, x_3734.y, x_3733.y, x_3734.w);
            let x_3737 : f32 = u_xlat13.y;
            u_xlat15.y = x_3737;
            let x_3739 : vec4<f32> = u_xlat15;
            let x_3740 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3739 + x_3740);
            let x_3742 : vec4<f32> = u_xlat14;
            let x_3743 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3742 / x_3743);
            let x_3745 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3745 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3747 : vec4<f32> = u_xlat15;
            let x_3748 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3747 / x_3748);
            let x_3750 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3750 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3752 : vec4<f32> = u_xlat14;
            let x_3755 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3752.w, x_3752.x, x_3752.y, x_3752.z) * vec4<f32>(x_3755.x, x_3755.x, x_3755.x, x_3755.x));
            let x_3758 : vec4<f32> = u_xlat15;
            let x_3761 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3758.x, x_3758.w, x_3758.y, x_3758.z) * vec4<f32>(x_3761.y, x_3761.y, x_3761.y, x_3761.y));
            let x_3764 : vec4<f32> = u_xlat14;
            let x_3765 : vec3<f32> = vec3<f32>(x_3764.y, x_3764.z, x_3764.w);
            let x_3766 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3765.x, x_3766.y, x_3765.y, x_3765.z);
            let x_3769 : f32 = u_xlat15.x;
            u_xlat17.y = x_3769;
            let x_3771 : vec4<f32> = u_xlat12;
            let x_3774 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3777 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3771.x, x_3771.y, x_3771.x, x_3771.y) * vec4<f32>(x_3774.x, x_3774.y, x_3774.x, x_3774.y)) + vec4<f32>(x_3777.x, x_3777.y, x_3777.z, x_3777.y));
            let x_3780 : vec4<f32> = u_xlat12;
            let x_3783 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3786 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3780.x, x_3780.y) * vec2<f32>(x_3783.x, x_3783.y)) + vec2<f32>(x_3786.w, x_3786.y));
            let x_3790 : f32 = u_xlat17.y;
            u_xlat14.y = x_3790;
            let x_3793 : f32 = u_xlat15.z;
            u_xlat17.y = x_3793;
            let x_3795 : vec4<f32> = u_xlat12;
            let x_3798 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3801 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3795.x, x_3795.y, x_3795.x, x_3795.y) * vec4<f32>(x_3798.x, x_3798.y, x_3798.x, x_3798.y)) + vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3801.y));
            let x_3804 : vec4<f32> = u_xlat12;
            let x_3807 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3810 : vec4<f32> = u_xlat17;
            let x_3812 : vec2<f32> = ((vec2<f32>(x_3804.x, x_3804.y) * vec2<f32>(x_3807.x, x_3807.y)) + vec2<f32>(x_3810.w, x_3810.y));
            let x_3813 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3812.x, x_3812.y, x_3813.z, x_3813.w);
            let x_3816 : f32 = u_xlat17.y;
            u_xlat14.z = x_3816;
            let x_3819 : vec4<f32> = u_xlat12;
            let x_3822 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3825 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3819.x, x_3819.y, x_3819.x, x_3819.y) * vec4<f32>(x_3822.x, x_3822.y, x_3822.x, x_3822.y)) + vec4<f32>(x_3825.x, x_3825.y, x_3825.x, x_3825.z));
            let x_3829 : f32 = u_xlat15.w;
            u_xlat17.y = x_3829;
            let x_3832 : vec4<f32> = u_xlat12;
            let x_3835 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3838 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3832.x, x_3832.y, x_3832.x, x_3832.y) * vec4<f32>(x_3835.x, x_3835.y, x_3835.x, x_3835.y)) + vec4<f32>(x_3838.x, x_3838.y, x_3838.z, x_3838.y));
            let x_3842 : vec4<f32> = u_xlat12;
            let x_3845 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3848 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3842.x, x_3842.y) * vec2<f32>(x_3845.x, x_3845.y)) + vec2<f32>(x_3848.w, x_3848.y));
            let x_3852 : f32 = u_xlat17.y;
            u_xlat14.w = x_3852;
            let x_3855 : vec4<f32> = u_xlat12;
            let x_3858 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3861 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3855.x, x_3855.y) * vec2<f32>(x_3858.x, x_3858.y)) + vec2<f32>(x_3861.x, x_3861.w));
            let x_3864 : vec4<f32> = u_xlat17;
            let x_3865 : vec3<f32> = vec3<f32>(x_3864.x, x_3864.z, x_3864.w);
            let x_3866 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3865.x, x_3866.y, x_3865.y, x_3865.z);
            let x_3868 : vec4<f32> = u_xlat12;
            let x_3871 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3874 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3868.x, x_3868.y, x_3868.x, x_3868.y) * vec4<f32>(x_3871.x, x_3871.y, x_3871.x, x_3871.y)) + vec4<f32>(x_3874.x, x_3874.y, x_3874.z, x_3874.y));
            let x_3878 : vec4<f32> = u_xlat12;
            let x_3881 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3884 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3878.x, x_3878.y) * vec2<f32>(x_3881.x, x_3881.y)) + vec2<f32>(x_3884.w, x_3884.y));
            let x_3888 : f32 = u_xlat14.x;
            u_xlat15.x = x_3888;
            let x_3890 : vec4<f32> = u_xlat12;
            let x_3893 : vec4<f32> = x_1002.x_AdditionalShadowmapSize;
            let x_3896 : vec4<f32> = u_xlat15;
            let x_3898 : vec2<f32> = ((vec2<f32>(x_3890.x, x_3890.y) * vec2<f32>(x_3893.x, x_3893.y)) + vec2<f32>(x_3896.x, x_3896.y));
            let x_3899 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3898.x, x_3898.y, x_3899.z, x_3899.w);
            let x_3902 : vec4<f32> = u_xlat13;
            let x_3904 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3902.x, x_3902.x, x_3902.x, x_3902.x) * x_3904);
            let x_3907 : vec4<f32> = u_xlat13;
            let x_3909 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3907.y, x_3907.y, x_3907.y, x_3907.y) * x_3909);
            let x_3912 : vec4<f32> = u_xlat13;
            let x_3914 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3912.z, x_3912.z, x_3912.z, x_3912.z) * x_3914);
            let x_3916 : vec4<f32> = u_xlat13;
            let x_3918 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3916.w, x_3916.w, x_3916.w, x_3916.w) * x_3918);
            let x_3921 : vec4<f32> = u_xlat18;
            let x_3922 : vec2<f32> = vec2<f32>(x_3921.x, x_3921.y);
            let x_3924 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3922.x, x_3922.y, x_3924);
            let x_3931 : vec3<f32> = txVec43;
            let x_3933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3931.xy, x_3931.z);
            u_xlat87 = x_3933;
            let x_3935 : vec4<f32> = u_xlat18;
            let x_3936 : vec2<f32> = vec2<f32>(x_3935.z, x_3935.w);
            let x_3938 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3936.x, x_3936.y, x_3938);
            let x_3945 : vec3<f32> = txVec44;
            let x_3947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3945.xy, x_3945.z);
            u_xlat88 = x_3947;
            let x_3948 : f32 = u_xlat88;
            let x_3950 : f32 = u_xlat23.y;
            u_xlat88 = (x_3948 * x_3950);
            let x_3953 : f32 = u_xlat23.x;
            let x_3954 : f32 = u_xlat87;
            let x_3956 : f32 = u_xlat88;
            u_xlat87 = ((x_3953 * x_3954) + x_3956);
            let x_3959 : vec2<f32> = u_xlat64;
            let x_3961 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3959.x, x_3959.y, x_3961);
            let x_3968 : vec3<f32> = txVec45;
            let x_3970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3968.xy, x_3968.z);
            u_xlat88 = x_3970;
            let x_3972 : f32 = u_xlat23.z;
            let x_3973 : f32 = u_xlat88;
            let x_3975 : f32 = u_xlat87;
            u_xlat87 = ((x_3972 * x_3973) + x_3975);
            let x_3978 : vec4<f32> = u_xlat21;
            let x_3979 : vec2<f32> = vec2<f32>(x_3978.x, x_3978.y);
            let x_3981 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3979.x, x_3979.y, x_3981);
            let x_3988 : vec3<f32> = txVec46;
            let x_3990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3988.xy, x_3988.z);
            u_xlat88 = x_3990;
            let x_3992 : f32 = u_xlat23.w;
            let x_3993 : f32 = u_xlat88;
            let x_3995 : f32 = u_xlat87;
            u_xlat87 = ((x_3992 * x_3993) + x_3995);
            let x_3998 : vec4<f32> = u_xlat19;
            let x_3999 : vec2<f32> = vec2<f32>(x_3998.x, x_3998.y);
            let x_4001 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3999.x, x_3999.y, x_4001);
            let x_4008 : vec3<f32> = txVec47;
            let x_4010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4008.xy, x_4008.z);
            u_xlat88 = x_4010;
            let x_4012 : f32 = u_xlat24.x;
            let x_4013 : f32 = u_xlat88;
            let x_4015 : f32 = u_xlat87;
            u_xlat87 = ((x_4012 * x_4013) + x_4015);
            let x_4018 : vec4<f32> = u_xlat19;
            let x_4019 : vec2<f32> = vec2<f32>(x_4018.z, x_4018.w);
            let x_4021 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4019.x, x_4019.y, x_4021);
            let x_4028 : vec3<f32> = txVec48;
            let x_4030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4028.xy, x_4028.z);
            u_xlat88 = x_4030;
            let x_4032 : f32 = u_xlat24.y;
            let x_4033 : f32 = u_xlat88;
            let x_4035 : f32 = u_xlat87;
            u_xlat87 = ((x_4032 * x_4033) + x_4035);
            let x_4038 : vec4<f32> = u_xlat20;
            let x_4039 : vec2<f32> = vec2<f32>(x_4038.x, x_4038.y);
            let x_4041 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4039.x, x_4039.y, x_4041);
            let x_4048 : vec3<f32> = txVec49;
            let x_4050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4048.xy, x_4048.z);
            u_xlat88 = x_4050;
            let x_4052 : f32 = u_xlat24.z;
            let x_4053 : f32 = u_xlat88;
            let x_4055 : f32 = u_xlat87;
            u_xlat87 = ((x_4052 * x_4053) + x_4055);
            let x_4058 : vec4<f32> = u_xlat21;
            let x_4059 : vec2<f32> = vec2<f32>(x_4058.z, x_4058.w);
            let x_4061 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4059.x, x_4059.y, x_4061);
            let x_4068 : vec3<f32> = txVec50;
            let x_4070 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4068.xy, x_4068.z);
            u_xlat88 = x_4070;
            let x_4072 : f32 = u_xlat24.w;
            let x_4073 : f32 = u_xlat88;
            let x_4075 : f32 = u_xlat87;
            u_xlat87 = ((x_4072 * x_4073) + x_4075);
            let x_4078 : vec4<f32> = u_xlat22;
            let x_4079 : vec2<f32> = vec2<f32>(x_4078.x, x_4078.y);
            let x_4081 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4079.x, x_4079.y, x_4081);
            let x_4088 : vec3<f32> = txVec51;
            let x_4090 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4088.xy, x_4088.z);
            u_xlat88 = x_4090;
            let x_4092 : f32 = u_xlat25.x;
            let x_4093 : f32 = u_xlat88;
            let x_4095 : f32 = u_xlat87;
            u_xlat87 = ((x_4092 * x_4093) + x_4095);
            let x_4098 : vec4<f32> = u_xlat22;
            let x_4099 : vec2<f32> = vec2<f32>(x_4098.z, x_4098.w);
            let x_4101 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4099.x, x_4099.y, x_4101);
            let x_4108 : vec3<f32> = txVec52;
            let x_4110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4108.xy, x_4108.z);
            u_xlat88 = x_4110;
            let x_4112 : f32 = u_xlat25.y;
            let x_4113 : f32 = u_xlat88;
            let x_4115 : f32 = u_xlat87;
            u_xlat87 = ((x_4112 * x_4113) + x_4115);
            let x_4118 : vec2<f32> = u_xlat40;
            let x_4120 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4118.x, x_4118.y, x_4120);
            let x_4127 : vec3<f32> = txVec53;
            let x_4129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4127.xy, x_4127.z);
            u_xlat88 = x_4129;
            let x_4131 : f32 = u_xlat25.z;
            let x_4132 : f32 = u_xlat88;
            let x_4134 : f32 = u_xlat87;
            u_xlat87 = ((x_4131 * x_4132) + x_4134);
            let x_4137 : vec2<f32> = u_xlat72;
            let x_4139 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4137.x, x_4137.y, x_4139);
            let x_4146 : vec3<f32> = txVec54;
            let x_4148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4146.xy, x_4146.z);
            u_xlat88 = x_4148;
            let x_4150 : f32 = u_xlat25.w;
            let x_4151 : f32 = u_xlat88;
            let x_4153 : f32 = u_xlat87;
            u_xlat87 = ((x_4150 * x_4151) + x_4153);
            let x_4156 : vec4<f32> = u_xlat17;
            let x_4157 : vec2<f32> = vec2<f32>(x_4156.x, x_4156.y);
            let x_4159 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4157.x, x_4157.y, x_4159);
            let x_4166 : vec3<f32> = txVec55;
            let x_4168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4166.xy, x_4166.z);
            u_xlat88 = x_4168;
            let x_4170 : f32 = u_xlat13.x;
            let x_4171 : f32 = u_xlat88;
            let x_4173 : f32 = u_xlat87;
            u_xlat87 = ((x_4170 * x_4171) + x_4173);
            let x_4176 : vec4<f32> = u_xlat17;
            let x_4177 : vec2<f32> = vec2<f32>(x_4176.z, x_4176.w);
            let x_4179 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4177.x, x_4177.y, x_4179);
            let x_4186 : vec3<f32> = txVec56;
            let x_4188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4186.xy, x_4186.z);
            u_xlat88 = x_4188;
            let x_4190 : f32 = u_xlat13.y;
            let x_4191 : f32 = u_xlat88;
            let x_4193 : f32 = u_xlat87;
            u_xlat87 = ((x_4190 * x_4191) + x_4193);
            let x_4196 : vec2<f32> = u_xlat67;
            let x_4198 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4196.x, x_4196.y, x_4198);
            let x_4205 : vec3<f32> = txVec57;
            let x_4207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4205.xy, x_4205.z);
            u_xlat88 = x_4207;
            let x_4209 : f32 = u_xlat13.z;
            let x_4210 : f32 = u_xlat88;
            let x_4212 : f32 = u_xlat87;
            u_xlat87 = ((x_4209 * x_4210) + x_4212);
            let x_4215 : vec4<f32> = u_xlat12;
            let x_4216 : vec2<f32> = vec2<f32>(x_4215.x, x_4215.y);
            let x_4218 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4216.x, x_4216.y, x_4218);
            let x_4225 : vec3<f32> = txVec58;
            let x_4227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4225.xy, x_4225.z);
            u_xlat88 = x_4227;
            let x_4229 : f32 = u_xlat13.w;
            let x_4230 : f32 = u_xlat88;
            let x_4232 : f32 = u_xlat87;
            u_xlat86 = ((x_4229 * x_4230) + x_4232);
          }
        }
      } else {
        let x_4236 : vec4<f32> = u_xlat11;
        let x_4237 : vec2<f32> = vec2<f32>(x_4236.x, x_4236.y);
        let x_4239 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4237.x, x_4237.y, x_4239);
        let x_4246 : vec3<f32> = txVec59;
        let x_4248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4246.xy, x_4246.z);
        u_xlat86 = x_4248;
      }
      let x_4249 : i32 = u_xlati58;
      let x_4251 : f32 = x_1002.x_AdditionalShadowParams[x_4249].x;
      u_xlat87 = (1.0f + -(x_4251));
      let x_4254 : f32 = u_xlat86;
      let x_4255 : i32 = u_xlati58;
      let x_4257 : f32 = x_1002.x_AdditionalShadowParams[x_4255].x;
      let x_4259 : f32 = u_xlat87;
      u_xlat86 = ((x_4254 * x_4257) + x_4259);
      let x_4262 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4262);
      let x_4266 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4266 >= 1.0f);
      let x_4268 : bool = u_xlatb87;
      let x_4269 : bool = u_xlatb88;
      u_xlatb87 = (x_4268 | x_4269);
      let x_4271 : bool = u_xlatb87;
      let x_4272 : f32 = u_xlat86;
      u_xlat86 = select(x_4272, 1.0f, x_4271);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4275 : f32 = u_xlat86;
    u_xlat87 = (-(x_4275) + 1.0f);
    let x_4279 : f32 = u_xlat3.x;
    let x_4280 : f32 = u_xlat87;
    let x_4282 : f32 = u_xlat86;
    u_xlat86 = ((x_4279 * x_4280) + x_4282);
    let x_4285 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_4285 & 31i)));
    let x_4288 : i32 = u_xlati87;
    let x_4291 : f32 = x_2355.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4288) & bitcast<u32>(x_4291)));
    let x_4295 : i32 = u_xlati87;
    if ((x_4295 != 0i)) {
      let x_4299 : i32 = u_xlati58;
      let x_4301 : f32 = x_2355.x_AdditionalLightsLightTypes[x_4299].el;
      u_xlati87 = i32(x_4301);
      let x_4304 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4304 != 0i));
      let x_4308 : i32 = u_xlati58;
      u_xlati11 = (x_4308 << bitcast<u32>(2i));
      let x_4310 : i32 = u_xlati88;
      if ((x_4310 != 0i)) {
        let x_4315 : vec3<f32> = vs_TEXCOORD7;
        let x_4317 : i32 = u_xlati11;
        let x_4320 : i32 = u_xlati11;
        let x_4324 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4317 + 1i) / 4i)][((x_4320 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4315.y, x_4315.y, x_4315.y) * vec3<f32>(x_4324.x, x_4324.y, x_4324.w));
        let x_4327 : i32 = u_xlati11;
        let x_4329 : i32 = u_xlati11;
        let x_4332 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[(x_4327 / 4i)][(x_4329 % 4i)];
        let x_4334 : vec3<f32> = vs_TEXCOORD7;
        let x_4337 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4332.x, x_4332.y, x_4332.w) * vec3<f32>(x_4334.x, x_4334.x, x_4334.x)) + x_4337);
        let x_4339 : i32 = u_xlati11;
        let x_4342 : i32 = u_xlati11;
        let x_4346 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4339 + 2i) / 4i)][((x_4342 + 2i) % 4i)];
        let x_4348 : vec3<f32> = vs_TEXCOORD7;
        let x_4351 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4346.x, x_4346.y, x_4346.w) * vec3<f32>(x_4348.z, x_4348.z, x_4348.z)) + x_4351);
        let x_4353 : vec3<f32> = u_xlat37;
        let x_4354 : i32 = u_xlati11;
        let x_4357 : i32 = u_xlati11;
        let x_4361 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4354 + 3i) / 4i)][((x_4357 + 3i) % 4i)];
        u_xlat37 = (x_4353 + vec3<f32>(x_4361.x, x_4361.y, x_4361.w));
        let x_4364 : vec3<f32> = u_xlat37;
        let x_4366 : vec3<f32> = u_xlat37;
        let x_4368 : vec2<f32> = (vec2<f32>(x_4364.x, x_4364.y) / vec2<f32>(x_4366.z, x_4366.z));
        let x_4369 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4368.x, x_4368.y, x_4369.z);
        let x_4371 : vec3<f32> = u_xlat37;
        let x_4374 : vec2<f32> = ((vec2<f32>(x_4371.x, x_4371.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4375 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4374.x, x_4374.y, x_4375.z);
        let x_4377 : vec3<f32> = u_xlat37;
        let x_4381 : vec2<f32> = clamp(vec2<f32>(x_4377.x, x_4377.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4382 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4381.x, x_4381.y, x_4382.z);
        let x_4384 : i32 = u_xlati58;
        let x_4386 : vec4<f32> = x_2355.x_AdditionalLightsCookieAtlasUVRects[x_4384];
        let x_4388 : vec3<f32> = u_xlat37;
        let x_4391 : i32 = u_xlati58;
        let x_4393 : vec4<f32> = x_2355.x_AdditionalLightsCookieAtlasUVRects[x_4391];
        let x_4395 : vec2<f32> = ((vec2<f32>(x_4386.x, x_4386.y) * vec2<f32>(x_4388.x, x_4388.y)) + vec2<f32>(x_4393.z, x_4393.w));
        let x_4396 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4395.x, x_4395.y, x_4396.z);
      } else {
        let x_4399 : i32 = u_xlati87;
        u_xlatb87 = (x_4399 == 1i);
        let x_4401 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4401);
        let x_4403 : i32 = u_xlati87;
        if ((x_4403 != 0i)) {
          let x_4407 : vec3<f32> = vs_TEXCOORD7;
          let x_4409 : i32 = u_xlati11;
          let x_4412 : i32 = u_xlati11;
          let x_4416 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4409 + 1i) / 4i)][((x_4412 + 1i) % 4i)];
          let x_4418 : vec2<f32> = (vec2<f32>(x_4407.y, x_4407.y) * vec2<f32>(x_4416.x, x_4416.y));
          let x_4419 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4418.x, x_4418.y, x_4419.z, x_4419.w);
          let x_4421 : i32 = u_xlati11;
          let x_4423 : i32 = u_xlati11;
          let x_4426 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[(x_4421 / 4i)][(x_4423 % 4i)];
          let x_4428 : vec3<f32> = vs_TEXCOORD7;
          let x_4431 : vec4<f32> = u_xlat12;
          let x_4433 : vec2<f32> = ((vec2<f32>(x_4426.x, x_4426.y) * vec2<f32>(x_4428.x, x_4428.x)) + vec2<f32>(x_4431.x, x_4431.y));
          let x_4434 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4433.x, x_4433.y, x_4434.z, x_4434.w);
          let x_4436 : i32 = u_xlati11;
          let x_4439 : i32 = u_xlati11;
          let x_4443 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4436 + 2i) / 4i)][((x_4439 + 2i) % 4i)];
          let x_4445 : vec3<f32> = vs_TEXCOORD7;
          let x_4448 : vec4<f32> = u_xlat12;
          let x_4450 : vec2<f32> = ((vec2<f32>(x_4443.x, x_4443.y) * vec2<f32>(x_4445.z, x_4445.z)) + vec2<f32>(x_4448.x, x_4448.y));
          let x_4451 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4450.x, x_4450.y, x_4451.z, x_4451.w);
          let x_4453 : vec4<f32> = u_xlat12;
          let x_4455 : i32 = u_xlati11;
          let x_4458 : i32 = u_xlati11;
          let x_4462 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4455 + 3i) / 4i)][((x_4458 + 3i) % 4i)];
          let x_4464 : vec2<f32> = (vec2<f32>(x_4453.x, x_4453.y) + vec2<f32>(x_4462.x, x_4462.y));
          let x_4465 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4464.x, x_4464.y, x_4465.z, x_4465.w);
          let x_4467 : vec4<f32> = u_xlat12;
          let x_4470 : vec2<f32> = ((vec2<f32>(x_4467.x, x_4467.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4470.x, x_4470.y, x_4471.z, x_4471.w);
          let x_4473 : vec4<f32> = u_xlat12;
          let x_4475 : vec2<f32> = fract(vec2<f32>(x_4473.x, x_4473.y));
          let x_4476 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4475.x, x_4475.y, x_4476.z, x_4476.w);
          let x_4478 : i32 = u_xlati58;
          let x_4480 : vec4<f32> = x_2355.x_AdditionalLightsCookieAtlasUVRects[x_4478];
          let x_4482 : vec4<f32> = u_xlat12;
          let x_4485 : i32 = u_xlati58;
          let x_4487 : vec4<f32> = x_2355.x_AdditionalLightsCookieAtlasUVRects[x_4485];
          let x_4489 : vec2<f32> = ((vec2<f32>(x_4480.x, x_4480.y) * vec2<f32>(x_4482.x, x_4482.y)) + vec2<f32>(x_4487.z, x_4487.w));
          let x_4490 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4489.x, x_4489.y, x_4490.z);
        } else {
          let x_4493 : vec3<f32> = vs_TEXCOORD7;
          let x_4495 : i32 = u_xlati11;
          let x_4498 : i32 = u_xlati11;
          let x_4502 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4495 + 1i) / 4i)][((x_4498 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4493.y, x_4493.y, x_4493.y, x_4493.y) * x_4502);
          let x_4504 : i32 = u_xlati11;
          let x_4506 : i32 = u_xlati11;
          let x_4509 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[(x_4504 / 4i)][(x_4506 % 4i)];
          let x_4510 : vec3<f32> = vs_TEXCOORD7;
          let x_4513 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4509 * vec4<f32>(x_4510.x, x_4510.x, x_4510.x, x_4510.x)) + x_4513);
          let x_4515 : i32 = u_xlati11;
          let x_4518 : i32 = u_xlati11;
          let x_4522 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4515 + 2i) / 4i)][((x_4518 + 2i) % 4i)];
          let x_4523 : vec3<f32> = vs_TEXCOORD7;
          let x_4526 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4522 * vec4<f32>(x_4523.z, x_4523.z, x_4523.z, x_4523.z)) + x_4526);
          let x_4528 : vec4<f32> = u_xlat12;
          let x_4529 : i32 = u_xlati11;
          let x_4532 : i32 = u_xlati11;
          let x_4536 : vec4<f32> = x_2355.x_AdditionalLightsWorldToLights[((x_4529 + 3i) / 4i)][((x_4532 + 3i) % 4i)];
          u_xlat12 = (x_4528 + x_4536);
          let x_4538 : vec4<f32> = u_xlat12;
          let x_4540 : vec4<f32> = u_xlat12;
          let x_4542 : vec3<f32> = (vec3<f32>(x_4538.x, x_4538.y, x_4538.z) / vec3<f32>(x_4540.w, x_4540.w, x_4540.w));
          let x_4543 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4542.x, x_4542.y, x_4542.z, x_4543.w);
          let x_4545 : vec4<f32> = u_xlat12;
          let x_4547 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4545.x, x_4545.y, x_4545.z), vec3<f32>(x_4547.x, x_4547.y, x_4547.z));
          let x_4550 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4550);
          let x_4552 : f32 = u_xlat87;
          let x_4554 : vec4<f32> = u_xlat12;
          let x_4556 : vec3<f32> = (vec3<f32>(x_4552, x_4552, x_4552) * vec3<f32>(x_4554.x, x_4554.y, x_4554.z));
          let x_4557 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4556.x, x_4556.y, x_4556.z, x_4557.w);
          let x_4559 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4559.x, x_4559.y, x_4559.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4564 : f32 = u_xlat87;
          u_xlat87 = max(x_4564, 0.00000099999999747524f);
          let x_4567 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4567);
          let x_4569 : f32 = u_xlat87;
          let x_4571 : vec4<f32> = u_xlat12;
          let x_4573 : vec3<f32> = (vec3<f32>(x_4569, x_4569, x_4569) * vec3<f32>(x_4571.z, x_4571.x, x_4571.y));
          let x_4574 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4573.x, x_4573.y, x_4573.z, x_4574.w);
          let x_4577 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4577);
          let x_4581 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4581, 0.0f, 1.0f);
          let x_4584 : vec4<f32> = u_xlat13;
          let x_4586 : vec4<bool> = (vec4<f32>(x_4584.y, x_4584.y, x_4584.y, x_4584.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4587 : vec2<bool> = vec2<bool>(x_4586.x, x_4586.w);
          let x_4588 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4587.x, x_4588.y, x_4588.z, x_4587.y);
          let x_4591 : bool = u_xlatb11.x;
          if (x_4591) {
            let x_4596 : f32 = u_xlat13.x;
            x_4592 = x_4596;
          } else {
            let x_4599 : f32 = u_xlat13.x;
            x_4592 = -(x_4599);
          }
          let x_4601 : f32 = x_4592;
          u_xlat11.x = x_4601;
          let x_4604 : bool = u_xlatb11.w;
          if (x_4604) {
            let x_4609 : f32 = u_xlat13.x;
            x_4605 = x_4609;
          } else {
            let x_4612 : f32 = u_xlat13.x;
            x_4605 = -(x_4612);
          }
          let x_4614 : f32 = x_4605;
          u_xlat11.w = x_4614;
          let x_4616 : vec4<f32> = u_xlat12;
          let x_4618 : f32 = u_xlat87;
          let x_4621 : vec4<f32> = u_xlat11;
          let x_4623 : vec2<f32> = ((vec2<f32>(x_4616.x, x_4616.y) * vec2<f32>(x_4618, x_4618)) + vec2<f32>(x_4621.x, x_4621.w));
          let x_4624 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4623.x, x_4624.y, x_4624.z, x_4623.y);
          let x_4626 : vec4<f32> = u_xlat11;
          let x_4629 : vec2<f32> = ((vec2<f32>(x_4626.x, x_4626.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4630 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4629.x, x_4630.y, x_4630.z, x_4629.y);
          let x_4632 : vec4<f32> = u_xlat11;
          let x_4636 : vec2<f32> = clamp(vec2<f32>(x_4632.x, x_4632.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4637 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4636.x, x_4637.y, x_4637.z, x_4636.y);
          let x_4639 : i32 = u_xlati58;
          let x_4641 : vec4<f32> = x_2355.x_AdditionalLightsCookieAtlasUVRects[x_4639];
          let x_4643 : vec4<f32> = u_xlat11;
          let x_4646 : i32 = u_xlati58;
          let x_4648 : vec4<f32> = x_2355.x_AdditionalLightsCookieAtlasUVRects[x_4646];
          let x_4650 : vec2<f32> = ((vec2<f32>(x_4641.x, x_4641.y) * vec2<f32>(x_4643.x, x_4643.w)) + vec2<f32>(x_4648.z, x_4648.w));
          let x_4651 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4650.x, x_4650.y, x_4651.z);
        }
      }
      let x_4658 : vec3<f32> = u_xlat37;
      let x_4660 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4658.x, x_4658.y), 0.0f);
      u_xlat11 = x_4660;
      let x_4662 : bool = u_xlatb6.y;
      if (x_4662) {
        let x_4667 : f32 = u_xlat11.w;
        x_4663 = x_4667;
      } else {
        let x_4670 : f32 = u_xlat11.x;
        x_4663 = x_4670;
      }
      let x_4671 : f32 = x_4663;
      u_xlat87 = x_4671;
      let x_4673 : bool = u_xlatb6.x;
      if (x_4673) {
        let x_4677 : vec4<f32> = u_xlat11;
        x_4674 = vec3<f32>(x_4677.x, x_4677.y, x_4677.z);
      } else {
        let x_4680 : f32 = u_xlat87;
        x_4674 = vec3<f32>(x_4680, x_4680, x_4680);
      }
      let x_4682 : vec3<f32> = x_4674;
      let x_4683 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4682.x, x_4682.y, x_4682.z, x_4683.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4689 : vec4<f32> = u_xlat11;
    let x_4691 : i32 = u_xlati58;
    let x_4693 : vec4<f32> = x_2863.x_AdditionalLightsColor[x_4691];
    let x_4695 : vec3<f32> = (vec3<f32>(x_4689.x, x_4689.y, x_4689.z) * vec3<f32>(x_4693.x, x_4693.y, x_4693.z));
    let x_4696 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4695.x, x_4695.y, x_4695.z, x_4696.w);
    let x_4698 : f32 = u_xlat84;
    let x_4699 : f32 = u_xlat86;
    u_xlat58.x = (x_4698 * x_4699);
    let x_4702 : vec4<f32> = u_xlat1;
    let x_4704 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4702.x, x_4702.y, x_4702.z), vec3<f32>(x_4704.x, x_4704.y, x_4704.z));
    let x_4707 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4707, 0.0f, 1.0f);
    let x_4709 : f32 = u_xlat84;
    let x_4711 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4709 * x_4711);
    let x_4714 : vec2<f32> = u_xlat58;
    let x_4716 : vec4<f32> = u_xlat11;
    let x_4718 : vec3<f32> = (vec3<f32>(x_4714.x, x_4714.x, x_4714.x) * vec3<f32>(x_4716.x, x_4716.y, x_4716.z));
    let x_4719 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4718.x, x_4718.y, x_4718.z, x_4719.w);
    let x_4721 : vec4<f32> = u_xlat9;
    let x_4723 : f32 = u_xlat85;
    let x_4726 : vec4<f32> = u_xlat7;
    let x_4728 : vec3<f32> = ((vec3<f32>(x_4721.x, x_4721.y, x_4721.z) * vec3<f32>(x_4723, x_4723, x_4723)) + vec3<f32>(x_4726.x, x_4726.y, x_4726.z));
    let x_4729 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4728.x, x_4728.y, x_4728.z, x_4729.w);
    let x_4731 : vec4<f32> = u_xlat9;
    let x_4733 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4731.x, x_4731.y, x_4731.z), vec3<f32>(x_4733.x, x_4733.y, x_4733.z));
    let x_4738 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4738, 1.17549435e-38f);
    let x_4742 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_4742);
    let x_4745 : vec2<f32> = u_xlat58;
    let x_4747 : vec4<f32> = u_xlat9;
    let x_4749 : vec3<f32> = (vec3<f32>(x_4745.x, x_4745.x, x_4745.x) * vec3<f32>(x_4747.x, x_4747.y, x_4747.z));
    let x_4750 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4749.x, x_4749.y, x_4749.z, x_4750.w);
    let x_4752 : vec4<f32> = u_xlat1;
    let x_4754 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4752.x, x_4752.y, x_4752.z), vec3<f32>(x_4754.x, x_4754.y, x_4754.z));
    let x_4759 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4759, 0.0f, 1.0f);
    let x_4762 : vec4<f32> = u_xlat10;
    let x_4764 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_4762.x, x_4762.y, x_4762.z), vec3<f32>(x_4764.x, x_4764.y, x_4764.z));
    let x_4769 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_4769, 0.0f, 1.0f);
    let x_4772 : vec2<f32> = u_xlat58;
    let x_4773 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_4772 * x_4773);
    let x_4776 : f32 = u_xlat58.x;
    let x_4778 : f32 = u_xlat0.x;
    u_xlat58.x = ((x_4776 * x_4778) + 1.00001001358032226562f);
    let x_4783 : f32 = u_xlat58.x;
    let x_4785 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4783 * x_4785);
    let x_4789 : f32 = u_xlat58.y;
    u_xlat84 = max(x_4789, 0.10000000149011611938f);
    let x_4791 : f32 = u_xlat84;
    let x_4793 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4791 * x_4793);
    let x_4796 : f32 = u_xlat82;
    let x_4798 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4796 * x_4798);
    let x_4801 : f32 = u_xlat80;
    let x_4803 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4801 / x_4803);
    let x_4806 : vec4<f32> = u_xlat4;
    let x_4808 : vec2<f32> = u_xlat58;
    let x_4811 : vec3<f32> = u_xlat29;
    let x_4812 : vec3<f32> = ((vec3<f32>(x_4806.x, x_4806.y, x_4806.z) * vec3<f32>(x_4808.x, x_4808.x, x_4808.x)) + x_4811);
    let x_4813 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4812.x, x_4812.y, x_4812.z, x_4813.w);
    let x_4815 : vec4<f32> = u_xlat9;
    let x_4817 : vec4<f32> = u_xlat11;
    let x_4820 : vec4<f32> = u_xlat8;
    let x_4822 : vec3<f32> = ((vec3<f32>(x_4815.x, x_4815.y, x_4815.z) * vec3<f32>(x_4817.x, x_4817.y, x_4817.z)) + vec3<f32>(x_4820.x, x_4820.y, x_4820.z));
    let x_4823 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4822.x, x_4822.y, x_4822.z, x_4823.w);

    continuing {
      let x_4825 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4825 + bitcast<u32>(1i));
    }
  }
  let x_4827 : vec4<f32> = u_xlat2;
  let x_4829 : f32 = u_xlat26;
  let x_4832 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_4827.x, x_4827.y, x_4827.z) * vec3<f32>(x_4829, x_4829, x_4829)) + vec3<f32>(x_4832.x, x_4832.z, x_4832.w));
  let x_4835 : vec4<f32> = u_xlat8;
  let x_4837 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4835.x, x_4835.y, x_4835.z) + x_4837);
  let x_4839 : f32 = u_xlat78;
  let x_4841 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4839, x_4839, x_4839) * x_4841);
  let x_4843 : f32 = u_xlat79;
  let x_4844 : f32 = u_xlat79;
  u_xlat78 = (x_4843 * -(x_4844));
  let x_4847 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4847);
  let x_4851 : vec3<f32> = u_xlat0;
  let x_4852 : f32 = u_xlat78;
  let x_4854 : vec3<f32> = (x_4851 * vec3<f32>(x_4852, x_4852, x_4852));
  let x_4855 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4854.x, x_4854.y, x_4854.z, x_4855.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


