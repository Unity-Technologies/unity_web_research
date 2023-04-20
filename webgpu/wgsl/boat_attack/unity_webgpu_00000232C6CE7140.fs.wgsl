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
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_876 : UnityPerDraw;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1014 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2368 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_2869 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

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
  var x_2320 : f32;
  var x_2435 : f32;
  var x_2446 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3007 : f32;
  var x_3017 : f32;
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
  var x_4598 : f32;
  var x_4611 : f32;
  var x_4669 : f32;
  var x_4680 : vec3<f32>;
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
  let x_358 : vec4<f32> = vs_TEXCOORD1;
  let x_361 : f32 = x_111.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_358.x, x_358.y), x_361);
  let x_363 : vec3<f32> = vec3<f32>(x_362.x, x_362.y, x_362.w);
  let x_364 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = u_xlat6.x;
  let x_369 : f32 = u_xlat6.z;
  u_xlat6.x = (x_367 * x_369);
  let x_372 : vec4<f32> = u_xlat6;
  let x_377 : vec2<f32> = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat6;
  let x_382 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_380.x, x_380.y), vec2<f32>(x_382.x, x_382.y));
  let x_385 : f32 = u_xlat79;
  u_xlat79 = min(x_385, 1.0f);
  let x_387 : f32 = u_xlat79;
  u_xlat79 = (-(x_387) + 1.0f);
  let x_390 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_390);
  let x_392 : f32 = u_xlat79;
  u_xlat7.z = max(x_392, 0.0000000000000001f);
  let x_396 : vec4<f32> = u_xlat6;
  let x_399 : f32 = x_13.x_NormalScale0;
  let x_401 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_399, x_399));
  let x_402 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_408 : vec4<f32> = vs_TEXCOORD1;
  let x_411 : f32 = x_111.x_GlobalMipBias.x;
  let x_412 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_408.z, x_408.w), x_411);
  let x_413 : vec3<f32> = vec3<f32>(x_412.x, x_412.y, x_412.w);
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat6.x;
  let x_419 : f32 = u_xlat6.z;
  u_xlat6.x = (x_417 * x_419);
  let x_422 : vec4<f32> = u_xlat6;
  let x_425 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  let x_430 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_428.x, x_428.y), vec2<f32>(x_430.x, x_430.y));
  let x_433 : f32 = u_xlat79;
  u_xlat79 = min(x_433, 1.0f);
  let x_435 : f32 = u_xlat79;
  u_xlat79 = (-(x_435) + 1.0f);
  let x_438 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_438);
  let x_440 : f32 = u_xlat79;
  u_xlat8.z = max(x_440, 0.0000000000000001f);
  let x_443 : vec4<f32> = u_xlat6;
  let x_447 : f32 = x_13.x_NormalScale1;
  let x_449 : f32 = x_13.x_NormalScale1;
  let x_450 : vec2<f32> = vec2<f32>(x_447, x_449);
  let x_454 : vec2<f32> = (vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_450.x, x_450.y));
  let x_455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat8;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.y, x_457.y, x_457.y) * vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : vec4<f32> = u_xlat6;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.x, x_464.x) * vec3<f32>(x_466.x, x_466.y, x_466.z)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_478 : vec4<f32> = vs_TEXCOORD2;
  let x_481 : f32 = x_111.x_GlobalMipBias.x;
  let x_482 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_478.x, x_478.y), x_481);
  let x_483 : vec3<f32> = vec3<f32>(x_482.x, x_482.y, x_482.w);
  let x_484 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : f32 = u_xlat7.x;
  let x_489 : f32 = u_xlat7.z;
  u_xlat7.x = (x_487 * x_489);
  let x_492 : vec4<f32> = u_xlat7;
  let x_495 : vec2<f32> = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  let x_500 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_498.x, x_498.y), vec2<f32>(x_500.x, x_500.y));
  let x_503 : f32 = u_xlat79;
  u_xlat79 = min(x_503, 1.0f);
  let x_505 : f32 = u_xlat79;
  u_xlat79 = (-(x_505) + 1.0f);
  let x_508 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_508);
  let x_510 : f32 = u_xlat79;
  u_xlat8.z = max(x_510, 0.0000000000000001f);
  let x_513 : vec4<f32> = u_xlat7;
  let x_517 : f32 = x_13.x_NormalScale2;
  let x_519 : f32 = x_13.x_NormalScale2;
  let x_520 : vec2<f32> = vec2<f32>(x_517, x_519);
  let x_524 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_520.x, x_520.y));
  let x_525 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat8;
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527.z, x_527.z, x_527.z) * vec3<f32>(x_529.x, x_529.y, x_529.z)) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_541 : vec4<f32> = vs_TEXCOORD2;
  let x_544 : f32 = x_111.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_541.z, x_541.w), x_544);
  let x_546 : vec3<f32> = vec3<f32>(x_545.x, x_545.y, x_545.w);
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : f32 = u_xlat7.x;
  let x_552 : f32 = u_xlat7.z;
  u_xlat7.x = (x_550 * x_552);
  let x_555 : vec4<f32> = u_xlat7;
  let x_558 : vec2<f32> = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_561.x, x_561.y), vec2<f32>(x_563.x, x_563.y));
  let x_566 : f32 = u_xlat79;
  u_xlat79 = min(x_566, 1.0f);
  let x_568 : f32 = u_xlat79;
  u_xlat79 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_571);
  let x_573 : f32 = u_xlat79;
  u_xlat8.z = max(x_573, 0.0000000000000001f);
  let x_576 : vec4<f32> = u_xlat7;
  let x_580 : f32 = x_13.x_NormalScale3;
  let x_582 : f32 = x_13.x_NormalScale3;
  let x_583 : vec2<f32> = vec2<f32>(x_580, x_582);
  let x_587 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_583.x, x_583.y));
  let x_588 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat8;
  let x_595 : vec4<f32> = u_xlat6;
  let x_597 : vec3<f32> = ((vec3<f32>(x_590.w, x_590.w, x_590.w) * vec3<f32>(x_592.x, x_592.y, x_592.z)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_601 : f32 = u_xlat6.z;
  u_xlat6.w = (x_601 + 0.00000999999974737875f);
  let x_605 : vec4<f32> = u_xlat6;
  let x_607 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_605.x, x_605.y, x_605.w), vec3<f32>(x_607.x, x_607.y, x_607.w));
  let x_610 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_610);
  let x_612 : f32 = u_xlat79;
  let x_614 : vec4<f32> = u_xlat6;
  let x_616 : vec3<f32> = (vec3<f32>(x_612, x_612, x_612) * vec3<f32>(x_614.x, x_614.y, x_614.w));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_620 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_620;
  let x_623 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_623;
  let x_626 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_626;
  let x_629 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_629;
  let x_632 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_632;
  let x_635 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_635;
  let x_638 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_638;
  let x_641 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_641;
  let x_643 : vec4<f32> = u_xlat7;
  let x_644 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_643 + x_644);
  let x_647 : f32 = u_xlat0.z;
  u_xlat8.x = x_647;
  let x_650 : f32 = u_xlat1.z;
  u_xlat8.y = x_650;
  let x_653 : f32 = u_xlat2.z;
  u_xlat8.z = x_653;
  let x_656 : f32 = u_xlat3.y;
  u_xlat8.w = x_656;
  let x_658 : vec4<f32> = u_xlat9;
  let x_661 : f32 = x_13.x_Smoothness0;
  let x_663 : f32 = x_13.x_Smoothness1;
  let x_665 : f32 = x_13.x_Smoothness2;
  let x_667 : f32 = x_13.x_Smoothness3;
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_658) * vec4<f32>(x_661, x_663, x_665, x_667)) + x_670);
  let x_674 : f32 = x_13.x_LayerHasMask0;
  let x_677 : f32 = x_13.x_LayerHasMask1;
  let x_680 : f32 = x_13.x_LayerHasMask2;
  let x_683 : f32 = x_13.x_LayerHasMask3;
  let x_685 : vec4<f32> = u_xlat8;
  let x_687 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_674, x_677, x_680, x_683) * x_685) + x_687);
  let x_690 : vec4<f32> = u_xlat4;
  let x_691 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_690, x_691);
  let x_694 : f32 = u_xlat0.x;
  u_xlat8.x = x_694;
  let x_697 : f32 = u_xlat1.x;
  u_xlat8.y = x_697;
  let x_700 : f32 = u_xlat2.x;
  u_xlat8.z = x_700;
  let x_703 : f32 = u_xlat3.x;
  u_xlat8.w = x_703;
  let x_705 : vec4<f32> = u_xlat8;
  let x_708 : f32 = x_13.x_Metallic0;
  let x_711 : f32 = x_13.x_Metallic1;
  let x_714 : f32 = x_13.x_Metallic2;
  let x_717 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_705 + -(vec4<f32>(x_708, x_711, x_714, x_717)));
  let x_722 : f32 = x_13.x_LayerHasMask0;
  let x_724 : f32 = x_13.x_LayerHasMask1;
  let x_726 : f32 = x_13.x_LayerHasMask2;
  let x_728 : f32 = x_13.x_LayerHasMask3;
  let x_730 : vec4<f32> = u_xlat8;
  let x_733 : f32 = x_13.x_Metallic0;
  let x_735 : f32 = x_13.x_Metallic1;
  let x_737 : f32 = x_13.x_Metallic2;
  let x_739 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_722, x_724, x_726, x_728) * x_730) + vec4<f32>(x_733, x_735, x_737, x_739));
  let x_742 : vec4<f32> = u_xlat4;
  let x_743 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_742, x_743);
  let x_747 : f32 = u_xlat0.y;
  u_xlat3.x = x_747;
  let x_750 : f32 = u_xlat1.y;
  u_xlat3.y = x_750;
  let x_753 : f32 = u_xlat2.y;
  u_xlat3.z = x_753;
  let x_755 : vec4<f32> = u_xlat7;
  let x_757 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_755) + x_757);
  let x_760 : f32 = x_13.x_LayerHasMask0;
  let x_762 : f32 = x_13.x_LayerHasMask1;
  let x_764 : f32 = x_13.x_LayerHasMask2;
  let x_766 : f32 = x_13.x_LayerHasMask3;
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_760, x_762, x_764, x_766) * x_768) + x_770);
  let x_773 : vec4<f32> = u_xlat4;
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_773, x_774);
  let x_776 : vec4<f32> = u_xlat6;
  let x_779 : vec4<f32> = vs_TEXCOORD5;
  let x_781 : vec3<f32> = (vec3<f32>(x_776.y, x_776.y, x_776.y) * vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat6;
  let x_787 : vec4<f32> = vs_TEXCOORD4;
  let x_791 : vec4<f32> = u_xlat1;
  let x_793 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.x, x_784.x) * -(vec3<f32>(x_787.x, x_787.y, x_787.z))) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD3;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_796.z, x_796.z, x_796.z) * vec3<f32>(x_799.x, x_799.y, x_799.z)) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat1;
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_812);
  let x_814 : f32 = u_xlat79;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = (vec3<f32>(x_814, x_814, x_814) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_825 : f32 = vs_TEXCOORD7.y;
  let x_827 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.x = (x_825 * x_827);
  let x_831 : f32 = x_111.unity_MatrixV[0i].z;
  let x_833 : f32 = vs_TEXCOORD7.x;
  let x_836 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_831 * x_833) + x_836);
  let x_840 : f32 = x_111.unity_MatrixV[2i].z;
  let x_842 : f32 = vs_TEXCOORD7.z;
  let x_845 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_840 * x_842) + x_845);
  let x_849 : f32 = u_xlat2.x;
  let x_851 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat2.x = (x_849 + x_851);
  let x_855 : f32 = u_xlat2.x;
  let x_858 : f32 = x_111.x_ProjectionParams.y;
  u_xlat2.x = (-(x_855) + -(x_858));
  let x_863 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_863, 0.0f);
  let x_867 : f32 = u_xlat2.x;
  let x_869 : f32 = x_111.unity_FogParams.x;
  u_xlat2.x = (x_867 * x_869);
  u_xlat1.w = 1.0f;
  let x_878 : vec4<f32> = x_876.unity_SHAr;
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_878, x_879);
  let x_883 : vec4<f32> = x_876.unity_SHAg;
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_883, x_884);
  let x_888 : vec4<f32> = x_876.unity_SHAb;
  let x_889 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_888, x_889);
  let x_892 : vec4<f32> = u_xlat1;
  let x_894 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_892.y, x_892.z, x_892.z, x_892.x) * vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.z));
  let x_898 : vec4<f32> = x_876.unity_SHBr;
  let x_899 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_898, x_899);
  let x_903 : vec4<f32> = x_876.unity_SHBg;
  let x_904 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_903, x_904);
  let x_908 : vec4<f32> = x_876.unity_SHBb;
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_908, x_909);
  let x_913 : f32 = u_xlat1.y;
  let x_915 : f32 = u_xlat1.y;
  u_xlat79 = (x_913 * x_915);
  let x_918 : f32 = u_xlat1.x;
  let x_920 : f32 = u_xlat1.x;
  let x_922 : f32 = u_xlat79;
  u_xlat79 = ((x_918 * x_920) + -(x_922));
  let x_928 : vec4<f32> = x_876.unity_SHC;
  let x_930 : f32 = u_xlat79;
  let x_933 : vec4<f32> = u_xlat6;
  u_xlat28 = ((vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_930, x_930, x_930)) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec3<f32> = u_xlat28;
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat28 = (x_936 + vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec3<f32> = u_xlat28;
  u_xlat28 = max(x_940, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_944 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_944) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_949 : f32 = u_xlat52;
  let x_950 : f32 = u_xlat79;
  u_xlat3.x = (x_949 + -(x_950));
  let x_955 : f32 = u_xlat79;
  let x_957 : vec4<f32> = u_xlat5;
  u_xlat29 = (vec3<f32>(x_955, x_955, x_955) * vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat5;
  let x_964 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_965 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec3<f32> = u_xlat0;
  let x_969 : vec4<f32> = u_xlat4;
  let x_974 : vec3<f32> = ((vec3<f32>(x_967.x, x_967.x, x_967.x) * vec3<f32>(x_969.x, x_969.y, x_969.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_975 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : f32 = u_xlat52;
  u_xlat0.x = (-(x_977) + 1.0f);
  let x_982 : f32 = u_xlat0.x;
  let x_984 : f32 = u_xlat0.x;
  u_xlat52 = (x_982 * x_984);
  let x_986 : f32 = u_xlat52;
  u_xlat52 = max(x_986, 0.0078125f);
  let x_989 : f32 = u_xlat52;
  let x_990 : f32 = u_xlat52;
  u_xlat79 = (x_989 * x_990);
  let x_993 : f32 = u_xlat3.x;
  u_xlat3.x = (x_993 + 1.0f);
  let x_997 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_997, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat52;
  u_xlat82 = ((x_1001 * 4.0f) + 2.0f);
  let x_1004 : f32 = u_xlat26;
  u_xlat26 = min(x_1004, 1.0f);
  let x_1016 : f32 = x_1014.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1016);
  let x_1018 : bool = u_xlatb5;
  if (x_1018) {
    let x_1022 : f32 = x_1014.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1022 == 1.0f);
    let x_1024 : bool = u_xlatb5;
    if (x_1024) {
      let x_1028 : vec4<f32> = vs_TEXCOORD8;
      let x_1031 : vec4<f32> = x_1014.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y) + x_1031);
      let x_1035 : vec4<f32> = u_xlat5;
      let x_1036 : vec2<f32> = vec2<f32>(x_1035.x, x_1035.y);
      let x_1038 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
      let x_1050 : vec3<f32> = txVec0;
      let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1050.xy, x_1050.z);
      u_xlat6.x = x_1052;
      let x_1055 : vec4<f32> = u_xlat5;
      let x_1056 : vec2<f32> = vec2<f32>(x_1055.z, x_1055.w);
      let x_1058 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1056.x, x_1056.y, x_1058);
      let x_1065 : vec3<f32> = txVec1;
      let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1065.xy, x_1065.z);
      u_xlat6.y = x_1067;
      let x_1069 : vec4<f32> = vs_TEXCOORD8;
      let x_1072 : vec4<f32> = x_1014.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y) + x_1072);
      let x_1075 : vec4<f32> = u_xlat5;
      let x_1076 : vec2<f32> = vec2<f32>(x_1075.x, x_1075.y);
      let x_1078 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1076.x, x_1076.y, x_1078);
      let x_1085 : vec3<f32> = txVec2;
      let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1085.xy, x_1085.z);
      u_xlat6.z = x_1087;
      let x_1090 : vec4<f32> = u_xlat5;
      let x_1091 : vec2<f32> = vec2<f32>(x_1090.z, x_1090.w);
      let x_1093 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1091.x, x_1091.y, x_1093);
      let x_1100 : vec3<f32> = txVec3;
      let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
      u_xlat6.w = x_1102;
      let x_1104 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1104, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1112 : f32 = x_1014.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1112 == 2.0f);
      let x_1114 : bool = u_xlatb31;
      if (x_1114) {
        let x_1118 : vec4<f32> = vs_TEXCOORD8;
        let x_1121 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.z, x_1121.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1125 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1124.x, x_1124.y, x_1125.z);
        let x_1127 : vec3<f32> = u_xlat31;
        let x_1129 : vec2<f32> = floor(vec2<f32>(x_1127.x, x_1127.y));
        let x_1130 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1129.x, x_1129.y, x_1130.z);
        let x_1132 : vec4<f32> = vs_TEXCOORD8;
        let x_1135 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1138 : vec3<f32> = u_xlat31;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.z, x_1135.w)) + -(vec2<f32>(x_1138.x, x_1138.y)));
        let x_1142 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1144.x, x_1144.x, x_1144.y, x_1144.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1148.x, x_1148.x, x_1148.z, x_1148.z) * vec4<f32>(x_1150.x, x_1150.x, x_1150.z, x_1150.z));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_1155.y, x_1155.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1163.x, x_1163.y)));
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat6;
        let x_1173 : vec2<f32> = (-(vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1174 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1177 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_1177.x, x_1177.y), vec2<f32>(0.0f, 0.0f));
        let x_1181 : vec2<f32> = u_xlat60;
        let x_1183 : vec2<f32> = u_xlat60;
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_1181) * x_1183) + vec2<f32>(x_1185.x, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1190 : vec2<f32> = max(vec2<f32>(x_1188.x, x_1188.y), vec2<f32>(0.0f, 0.0f));
        let x_1191 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat6;
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1201 : vec2<f32> = ((-(vec2<f32>(x_1193.x, x_1193.y)) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.y, x_1199.w));
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_1204 + vec2<f32>(1.0f, 1.0f));
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.y) + vec2<f32>(1.0f, 1.0f));
        let x_1209 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1215 : vec2<f32> = (vec2<f32>(x_1211.x, x_1211.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1216 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1220 : vec2<f32> = (vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : vec2<f32> = u_xlat60;
        let x_1224 : vec2<f32> = (x_1223 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1225 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat6;
        let x_1229 : vec2<f32> = (vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1229.x, x_1229.y, x_1230.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1234 : vec2<f32> = (vec2<f32>(x_1232.y, x_1232.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1235 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1238 : f32 = u_xlat8.x;
        u_xlat9.z = x_1238;
        let x_1241 : f32 = u_xlat6.x;
        u_xlat9.w = x_1241;
        let x_1244 : f32 = u_xlat11.x;
        u_xlat10.z = x_1244;
        let x_1247 : f32 = u_xlat58.x;
        u_xlat10.w = x_1247;
        let x_1249 : vec4<f32> = u_xlat9;
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1249.z, x_1249.w, x_1249.x, x_1249.z) + vec4<f32>(x_1251.z, x_1251.w, x_1251.x, x_1251.z));
        let x_1255 : f32 = u_xlat9.y;
        u_xlat8.z = x_1255;
        let x_1258 : f32 = u_xlat6.y;
        u_xlat8.w = x_1258;
        let x_1261 : f32 = u_xlat10.y;
        u_xlat11.z = x_1261;
        let x_1264 : f32 = u_xlat58.y;
        u_xlat11.w = x_1264;
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1270 : vec3<f32> = (vec3<f32>(x_1266.z, x_1266.y, x_1266.w) + vec3<f32>(x_1268.z, x_1268.y, x_1268.w));
        let x_1271 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1275 : vec4<f32> = u_xlat7;
        let x_1277 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.z, x_1273.w) / vec3<f32>(x_1275.z, x_1275.w, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1286 : vec3<f32> = (vec3<f32>(x_1280.x, x_1280.y, x_1280.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1293 : vec3<f32> = (vec3<f32>(x_1289.z, x_1289.y, x_1289.w) / vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1298 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1304 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1306 : vec3<f32> = (vec3<f32>(x_1301.y, x_1301.x, x_1301.z) * vec3<f32>(x_1304.x, x_1304.x, x_1304.x));
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1312 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1314 : vec3<f32> = (vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(x_1312.y, x_1312.y, x_1312.y));
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
        let x_1318 : f32 = u_xlat9.x;
        u_xlat8.w = x_1318;
        let x_1320 : vec3<f32> = u_xlat31;
        let x_1323 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.y, x_1326.w, x_1326.x, x_1326.w));
        let x_1329 : vec3<f32> = u_xlat31;
        let x_1332 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat8;
        let x_1337 : vec2<f32> = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.z, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1341 : f32 = u_xlat8.y;
        u_xlat9.w = x_1341;
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.y, x_1343.z);
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1345.x, x_1344.x, x_1345.z, x_1344.y);
        let x_1347 : vec3<f32> = u_xlat31;
        let x_1350 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y) * vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y)) + vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1353.y));
        let x_1356 : vec3<f32> = u_xlat31;
        let x_1359 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y) * vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y)) + vec4<f32>(x_1362.w, x_1362.y, x_1362.w, x_1362.z));
        let x_1365 : vec3<f32> = u_xlat31;
        let x_1368 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y) * vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y)) + vec4<f32>(x_1371.x, x_1371.w, x_1371.z, x_1371.w));
        let x_1374 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1374.x, x_1374.x, x_1374.x, x_1374.y) * vec4<f32>(x_1376.z, x_1376.w, x_1376.y, x_1376.z));
        let x_1380 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1380.y, x_1380.y, x_1380.z, x_1380.z) * x_1382);
        let x_1385 : f32 = u_xlat6.z;
        let x_1387 : f32 = u_xlat7.y;
        u_xlat31.x = (x_1385 * x_1387);
        let x_1391 : vec4<f32> = u_xlat10;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1402 : vec3<f32> = txVec4;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
        u_xlat57.x = x_1404;
        let x_1407 : vec4<f32> = u_xlat10;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1418 : vec3<f32> = txVec5;
        let x_1420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1418.xy, x_1418.z);
        u_xlat83 = x_1420;
        let x_1421 : f32 = u_xlat83;
        let x_1423 : f32 = u_xlat13.y;
        u_xlat83 = (x_1421 * x_1423);
        let x_1426 : f32 = u_xlat13.x;
        let x_1428 : f32 = u_xlat57.x;
        let x_1430 : f32 = u_xlat83;
        u_xlat57.x = ((x_1426 * x_1428) + x_1430);
        let x_1434 : vec4<f32> = u_xlat11;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec6;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat83 = x_1446;
        let x_1448 : f32 = u_xlat13.z;
        let x_1449 : f32 = u_xlat83;
        let x_1452 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1448 * x_1449) + x_1452);
        let x_1456 : vec4<f32> = u_xlat9;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec7;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat83 = x_1468;
        let x_1470 : f32 = u_xlat13.w;
        let x_1471 : f32 = u_xlat83;
        let x_1474 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1470 * x_1471) + x_1474);
        let x_1478 : vec4<f32> = u_xlat12;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec8;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat83 = x_1490;
        let x_1492 : f32 = u_xlat14.x;
        let x_1493 : f32 = u_xlat83;
        let x_1496 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1492 * x_1493) + x_1496);
        let x_1500 : vec4<f32> = u_xlat12;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.z, x_1500.w);
        let x_1503 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec9;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
        u_xlat83 = x_1512;
        let x_1514 : f32 = u_xlat14.y;
        let x_1515 : f32 = u_xlat83;
        let x_1518 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1514 * x_1515) + x_1518);
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.z, x_1522.w);
        let x_1525 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec10;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1532.xy, x_1532.z);
        u_xlat83 = x_1534;
        let x_1536 : f32 = u_xlat14.z;
        let x_1537 : f32 = u_xlat83;
        let x_1540 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1536 * x_1537) + x_1540);
        let x_1544 : vec4<f32> = u_xlat8;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
        let x_1547 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec11;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1554.xy, x_1554.z);
        u_xlat83 = x_1556;
        let x_1558 : f32 = u_xlat14.w;
        let x_1559 : f32 = u_xlat83;
        let x_1562 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1558 * x_1559) + x_1562);
        let x_1566 : vec4<f32> = u_xlat8;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.z, x_1566.w);
        let x_1569 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec12;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1576.xy, x_1576.z);
        u_xlat83 = x_1578;
        let x_1580 : f32 = u_xlat31.x;
        let x_1581 : f32 = u_xlat83;
        let x_1584 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_1580 * x_1581) + x_1584);
      } else {
        let x_1588 : vec4<f32> = vs_TEXCOORD8;
        let x_1591 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1594 : vec2<f32> = ((vec2<f32>(x_1588.x, x_1588.y) * vec2<f32>(x_1591.z, x_1591.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1595 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1594.x, x_1594.y, x_1595.z);
        let x_1597 : vec3<f32> = u_xlat31;
        let x_1599 : vec2<f32> = floor(vec2<f32>(x_1597.x, x_1597.y));
        let x_1600 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1599.x, x_1599.y, x_1600.z);
        let x_1602 : vec4<f32> = vs_TEXCOORD8;
        let x_1605 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1608 : vec3<f32> = u_xlat31;
        let x_1611 : vec2<f32> = ((vec2<f32>(x_1602.x, x_1602.y) * vec2<f32>(x_1605.z, x_1605.w)) + -(vec2<f32>(x_1608.x, x_1608.y)));
        let x_1612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1614 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1614.x, x_1614.x, x_1614.y, x_1614.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1617 : vec4<f32> = u_xlat7;
        let x_1619 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1617.x, x_1617.x, x_1617.z, x_1617.z) * vec4<f32>(x_1619.x, x_1619.x, x_1619.z, x_1619.z));
        let x_1622 : vec4<f32> = u_xlat8;
        let x_1626 : vec2<f32> = (vec2<f32>(x_1622.y, x_1622.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1627 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1627.x, x_1626.x, x_1627.z, x_1626.y);
        let x_1629 : vec4<f32> = u_xlat8;
        let x_1632 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1629.x, x_1629.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1632.x, x_1632.y)));
        let x_1636 : vec4<f32> = u_xlat6;
        let x_1639 : vec2<f32> = (-(vec2<f32>(x_1636.x, x_1636.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1640 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1639.x, x_1640.y, x_1639.y, x_1640.w);
        let x_1642 : vec4<f32> = u_xlat6;
        let x_1644 : vec2<f32> = min(vec2<f32>(x_1642.x, x_1642.y), vec2<f32>(0.0f, 0.0f));
        let x_1645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1644.x, x_1644.y, x_1645.z, x_1645.w);
        let x_1647 : vec4<f32> = u_xlat8;
        let x_1650 : vec4<f32> = u_xlat8;
        let x_1653 : vec4<f32> = u_xlat7;
        let x_1655 : vec2<f32> = ((-(vec2<f32>(x_1647.x, x_1647.y)) * vec2<f32>(x_1650.x, x_1650.y)) + vec2<f32>(x_1653.x, x_1653.z));
        let x_1656 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1655.x, x_1656.y, x_1655.y, x_1656.w);
        let x_1658 : vec4<f32> = u_xlat6;
        let x_1660 : vec2<f32> = max(vec2<f32>(x_1658.x, x_1658.y), vec2<f32>(0.0f, 0.0f));
        let x_1661 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
        let x_1663 : vec4<f32> = u_xlat8;
        let x_1666 : vec4<f32> = u_xlat8;
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1671 : vec2<f32> = ((-(vec2<f32>(x_1663.x, x_1663.y)) * vec2<f32>(x_1666.x, x_1666.y)) + vec2<f32>(x_1669.y, x_1669.w));
        let x_1672 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1672.x, x_1671.x, x_1672.z, x_1671.y);
        let x_1674 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1674 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1678 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1678 * 0.08163200318813323975f);
        let x_1682 : vec2<f32> = u_xlat58;
        let x_1685 : vec2<f32> = (vec2<f32>(x_1682.y, x_1682.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1686 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1685.x, x_1685.y, x_1686.z, x_1686.w);
        let x_1688 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1688.x, x_1688.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1692 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1692 * 0.08163200318813323975f);
        let x_1696 : f32 = u_xlat10.y;
        u_xlat8.x = x_1696;
        let x_1698 : vec4<f32> = u_xlat6;
        let x_1705 : vec2<f32> = ((vec2<f32>(x_1698.x, x_1698.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1706 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1706.x, x_1705.x, x_1706.z, x_1705.y);
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1712 : vec2<f32> = ((vec2<f32>(x_1708.x, x_1708.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1713 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1712.x, x_1713.y, x_1712.y, x_1713.w);
        let x_1716 : f32 = u_xlat58.x;
        u_xlat7.y = x_1716;
        let x_1719 : f32 = u_xlat9.y;
        u_xlat7.w = x_1719;
        let x_1721 : vec4<f32> = u_xlat7;
        let x_1722 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1721 + x_1722);
        let x_1724 : vec4<f32> = u_xlat6;
        let x_1727 : vec2<f32> = ((vec2<f32>(x_1724.y, x_1724.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1728 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1728.x, x_1727.x, x_1728.z, x_1727.y);
        let x_1730 : vec4<f32> = u_xlat6;
        let x_1733 : vec2<f32> = ((vec2<f32>(x_1730.y, x_1730.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1734 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1733.x, x_1734.y, x_1733.y, x_1734.w);
        let x_1737 : f32 = u_xlat58.y;
        u_xlat9.y = x_1737;
        let x_1739 : vec4<f32> = u_xlat9;
        let x_1740 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1739 + x_1740);
        let x_1742 : vec4<f32> = u_xlat7;
        let x_1743 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1742 / x_1743);
        let x_1745 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1745 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1751 : vec4<f32> = u_xlat9;
        let x_1752 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1751 / x_1752);
        let x_1754 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1754 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1756 : vec4<f32> = u_xlat7;
        let x_1759 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1756.w, x_1756.x, x_1756.y, x_1756.z) * vec4<f32>(x_1759.x, x_1759.x, x_1759.x, x_1759.x));
        let x_1762 : vec4<f32> = u_xlat9;
        let x_1765 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1762.x, x_1762.w, x_1762.y, x_1762.z) * vec4<f32>(x_1765.y, x_1765.y, x_1765.y, x_1765.y));
        let x_1768 : vec4<f32> = u_xlat7;
        let x_1769 : vec3<f32> = vec3<f32>(x_1768.y, x_1768.z, x_1768.w);
        let x_1770 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1769.x, x_1770.y, x_1769.y, x_1769.z);
        let x_1773 : f32 = u_xlat9.x;
        u_xlat10.y = x_1773;
        let x_1775 : vec3<f32> = u_xlat31;
        let x_1778 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y) * vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y)) + vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1781.y));
        let x_1784 : vec3<f32> = u_xlat31;
        let x_1787 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1790 : vec4<f32> = u_xlat10;
        let x_1792 : vec2<f32> = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(x_1787.x, x_1787.y)) + vec2<f32>(x_1790.w, x_1790.y));
        let x_1793 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
        let x_1796 : f32 = u_xlat10.y;
        u_xlat7.y = x_1796;
        let x_1799 : f32 = u_xlat9.z;
        u_xlat10.y = x_1799;
        let x_1801 : vec3<f32> = u_xlat31;
        let x_1804 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1807 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1801.x, x_1801.y, x_1801.x, x_1801.y) * vec4<f32>(x_1804.x, x_1804.y, x_1804.x, x_1804.y)) + vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1807.y));
        let x_1811 : vec3<f32> = u_xlat31;
        let x_1814 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(x_1814.x, x_1814.y)) + vec2<f32>(x_1817.w, x_1817.y));
        let x_1821 : f32 = u_xlat10.y;
        u_xlat7.z = x_1821;
        let x_1823 : vec3<f32> = u_xlat31;
        let x_1826 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1829 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.y) * vec4<f32>(x_1826.x, x_1826.y, x_1826.x, x_1826.y)) + vec4<f32>(x_1829.x, x_1829.y, x_1829.x, x_1829.z));
        let x_1833 : f32 = u_xlat9.w;
        u_xlat10.y = x_1833;
        let x_1836 : vec3<f32> = u_xlat31;
        let x_1839 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1842 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1836.x, x_1836.y, x_1836.x, x_1836.y) * vec4<f32>(x_1839.x, x_1839.y, x_1839.x, x_1839.y)) + vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1842.y));
        let x_1846 : vec3<f32> = u_xlat31;
        let x_1849 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1852 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1846.x, x_1846.y) * vec2<f32>(x_1849.x, x_1849.y)) + vec2<f32>(x_1852.w, x_1852.y));
        let x_1856 : f32 = u_xlat10.y;
        u_xlat7.w = x_1856;
        let x_1859 : vec3<f32> = u_xlat31;
        let x_1862 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1865 : vec4<f32> = u_xlat7;
        let x_1867 : vec2<f32> = ((vec2<f32>(x_1859.x, x_1859.y) * vec2<f32>(x_1862.x, x_1862.y)) + vec2<f32>(x_1865.x, x_1865.w));
        let x_1868 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
        let x_1870 : vec4<f32> = u_xlat10;
        let x_1871 : vec3<f32> = vec3<f32>(x_1870.x, x_1870.z, x_1870.w);
        let x_1872 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1871.x, x_1872.y, x_1871.y, x_1871.z);
        let x_1874 : vec3<f32> = u_xlat31;
        let x_1877 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1880 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1874.x, x_1874.y, x_1874.x, x_1874.y) * vec4<f32>(x_1877.x, x_1877.y, x_1877.x, x_1877.y)) + vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1880.y));
        let x_1884 : vec3<f32> = u_xlat31;
        let x_1887 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1890 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1884.x, x_1884.y) * vec2<f32>(x_1887.x, x_1887.y)) + vec2<f32>(x_1890.w, x_1890.y));
        let x_1894 : f32 = u_xlat7.x;
        u_xlat9.x = x_1894;
        let x_1896 : vec3<f32> = u_xlat31;
        let x_1899 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1902 : vec4<f32> = u_xlat9;
        let x_1904 : vec2<f32> = ((vec2<f32>(x_1896.x, x_1896.y) * vec2<f32>(x_1899.x, x_1899.y)) + vec2<f32>(x_1902.x, x_1902.y));
        let x_1905 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1904.x, x_1904.y, x_1905.z);
        let x_1908 : vec4<f32> = u_xlat6;
        let x_1910 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1908.x, x_1908.x, x_1908.x, x_1908.x) * x_1910);
        let x_1913 : vec4<f32> = u_xlat6;
        let x_1915 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1913.y, x_1913.y, x_1913.y, x_1913.y) * x_1915);
        let x_1918 : vec4<f32> = u_xlat6;
        let x_1920 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1918.z, x_1918.z, x_1918.z, x_1918.z) * x_1920);
        let x_1922 : vec4<f32> = u_xlat6;
        let x_1924 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1922.w, x_1922.w, x_1922.w, x_1922.w) * x_1924);
        let x_1927 : vec4<f32> = u_xlat11;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
        let x_1930 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec13;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1937.xy, x_1937.z);
        u_xlat83 = x_1939;
        let x_1941 : vec4<f32> = u_xlat11;
        let x_1942 : vec2<f32> = vec2<f32>(x_1941.z, x_1941.w);
        let x_1944 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1942.x, x_1942.y, x_1944);
        let x_1951 : vec3<f32> = txVec14;
        let x_1953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1951.xy, x_1951.z);
        u_xlat7.x = x_1953;
        let x_1956 : f32 = u_xlat7.x;
        let x_1958 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1956 * x_1958);
        let x_1962 : f32 = u_xlat17.x;
        let x_1963 : f32 = u_xlat83;
        let x_1966 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1962 * x_1963) + x_1966);
        let x_1969 : vec4<f32> = u_xlat12;
        let x_1970 : vec2<f32> = vec2<f32>(x_1969.x, x_1969.y);
        let x_1972 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
        let x_1979 : vec3<f32> = txVec15;
        let x_1981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1979.xy, x_1979.z);
        u_xlat7.x = x_1981;
        let x_1984 : f32 = u_xlat17.z;
        let x_1986 : f32 = u_xlat7.x;
        let x_1988 : f32 = u_xlat83;
        u_xlat83 = ((x_1984 * x_1986) + x_1988);
        let x_1991 : vec4<f32> = u_xlat14;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.x, x_1991.y);
        let x_1994 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec16;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2001.xy, x_2001.z);
        u_xlat7.x = x_2003;
        let x_2006 : f32 = u_xlat17.w;
        let x_2008 : f32 = u_xlat7.x;
        let x_2010 : f32 = u_xlat83;
        u_xlat83 = ((x_2006 * x_2008) + x_2010);
        let x_2013 : vec4<f32> = u_xlat13;
        let x_2014 : vec2<f32> = vec2<f32>(x_2013.x, x_2013.y);
        let x_2016 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2014.x, x_2014.y, x_2016);
        let x_2023 : vec3<f32> = txVec17;
        let x_2025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2023.xy, x_2023.z);
        u_xlat7.x = x_2025;
        let x_2028 : f32 = u_xlat18.x;
        let x_2030 : f32 = u_xlat7.x;
        let x_2032 : f32 = u_xlat83;
        u_xlat83 = ((x_2028 * x_2030) + x_2032);
        let x_2035 : vec4<f32> = u_xlat13;
        let x_2036 : vec2<f32> = vec2<f32>(x_2035.z, x_2035.w);
        let x_2038 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec18;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
        u_xlat7.x = x_2047;
        let x_2050 : f32 = u_xlat18.y;
        let x_2052 : f32 = u_xlat7.x;
        let x_2054 : f32 = u_xlat83;
        u_xlat83 = ((x_2050 * x_2052) + x_2054);
        let x_2057 : vec2<f32> = u_xlat64;
        let x_2059 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
        let x_2066 : vec3<f32> = txVec19;
        let x_2068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
        u_xlat7.x = x_2068;
        let x_2071 : f32 = u_xlat18.z;
        let x_2073 : f32 = u_xlat7.x;
        let x_2075 : f32 = u_xlat83;
        u_xlat83 = ((x_2071 * x_2073) + x_2075);
        let x_2078 : vec4<f32> = u_xlat14;
        let x_2079 : vec2<f32> = vec2<f32>(x_2078.z, x_2078.w);
        let x_2081 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2079.x, x_2079.y, x_2081);
        let x_2088 : vec3<f32> = txVec20;
        let x_2090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2088.xy, x_2088.z);
        u_xlat7.x = x_2090;
        let x_2093 : f32 = u_xlat18.w;
        let x_2095 : f32 = u_xlat7.x;
        let x_2097 : f32 = u_xlat83;
        u_xlat83 = ((x_2093 * x_2095) + x_2097);
        let x_2100 : vec4<f32> = u_xlat15;
        let x_2101 : vec2<f32> = vec2<f32>(x_2100.x, x_2100.y);
        let x_2103 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2101.x, x_2101.y, x_2103);
        let x_2110 : vec3<f32> = txVec21;
        let x_2112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2110.xy, x_2110.z);
        u_xlat7.x = x_2112;
        let x_2115 : f32 = u_xlat19.x;
        let x_2117 : f32 = u_xlat7.x;
        let x_2119 : f32 = u_xlat83;
        u_xlat83 = ((x_2115 * x_2117) + x_2119);
        let x_2122 : vec4<f32> = u_xlat15;
        let x_2123 : vec2<f32> = vec2<f32>(x_2122.z, x_2122.w);
        let x_2125 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2123.x, x_2123.y, x_2125);
        let x_2132 : vec3<f32> = txVec22;
        let x_2134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2132.xy, x_2132.z);
        u_xlat7.x = x_2134;
        let x_2137 : f32 = u_xlat19.y;
        let x_2139 : f32 = u_xlat7.x;
        let x_2141 : f32 = u_xlat83;
        u_xlat83 = ((x_2137 * x_2139) + x_2141);
        let x_2144 : vec2<f32> = u_xlat33;
        let x_2146 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2144.x, x_2144.y, x_2146);
        let x_2153 : vec3<f32> = txVec23;
        let x_2155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2153.xy, x_2153.z);
        u_xlat7.x = x_2155;
        let x_2158 : f32 = u_xlat19.z;
        let x_2160 : f32 = u_xlat7.x;
        let x_2162 : f32 = u_xlat83;
        u_xlat83 = ((x_2158 * x_2160) + x_2162);
        let x_2165 : vec4<f32> = u_xlat16;
        let x_2166 : vec2<f32> = vec2<f32>(x_2165.x, x_2165.y);
        let x_2168 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2166.x, x_2166.y, x_2168);
        let x_2175 : vec3<f32> = txVec24;
        let x_2177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2175.xy, x_2175.z);
        u_xlat7.x = x_2177;
        let x_2180 : f32 = u_xlat19.w;
        let x_2182 : f32 = u_xlat7.x;
        let x_2184 : f32 = u_xlat83;
        u_xlat83 = ((x_2180 * x_2182) + x_2184);
        let x_2187 : vec4<f32> = u_xlat10;
        let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
        let x_2190 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
        let x_2197 : vec3<f32> = txVec25;
        let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2197.xy, x_2197.z);
        u_xlat7.x = x_2199;
        let x_2202 : f32 = u_xlat6.x;
        let x_2204 : f32 = u_xlat7.x;
        let x_2206 : f32 = u_xlat83;
        u_xlat83 = ((x_2202 * x_2204) + x_2206);
        let x_2209 : vec4<f32> = u_xlat10;
        let x_2210 : vec2<f32> = vec2<f32>(x_2209.z, x_2209.w);
        let x_2212 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
        let x_2219 : vec3<f32> = txVec26;
        let x_2221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2219.xy, x_2219.z);
        u_xlat6.x = x_2221;
        let x_2224 : f32 = u_xlat6.y;
        let x_2226 : f32 = u_xlat6.x;
        let x_2228 : f32 = u_xlat83;
        u_xlat83 = ((x_2224 * x_2226) + x_2228);
        let x_2231 : vec2<f32> = u_xlat61;
        let x_2233 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
        let x_2240 : vec3<f32> = txVec27;
        let x_2242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
        u_xlat6.x = x_2242;
        let x_2245 : f32 = u_xlat6.z;
        let x_2247 : f32 = u_xlat6.x;
        let x_2249 : f32 = u_xlat83;
        u_xlat83 = ((x_2245 * x_2247) + x_2249);
        let x_2252 : vec3<f32> = u_xlat31;
        let x_2253 : vec2<f32> = vec2<f32>(x_2252.x, x_2252.y);
        let x_2255 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2253.x, x_2253.y, x_2255);
        let x_2262 : vec3<f32> = txVec28;
        let x_2264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2262.xy, x_2262.z);
        u_xlat31.x = x_2264;
        let x_2267 : f32 = u_xlat6.w;
        let x_2269 : f32 = u_xlat31.x;
        let x_2271 : f32 = u_xlat83;
        u_xlat5.x = ((x_2267 * x_2269) + x_2271);
      }
    }
  } else {
    let x_2276 : vec4<f32> = vs_TEXCOORD8;
    let x_2277 : vec2<f32> = vec2<f32>(x_2276.x, x_2276.y);
    let x_2279 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2277.x, x_2277.y, x_2279);
    let x_2286 : vec3<f32> = txVec29;
    let x_2288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2286.xy, x_2286.z);
    u_xlat5.x = x_2288;
  }
  let x_2291 : f32 = x_1014.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_2291) + 1.0f);
  let x_2296 : f32 = u_xlat5.x;
  let x_2298 : f32 = x_1014.x_MainLightShadowParams.x;
  let x_2301 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_2296 * x_2298) + x_2301);
  let x_2305 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_2305);
  let x_2311 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_2311 >= 1.0f);
  let x_2315 : bool = u_xlatb57.x;
  let x_2316 : bool = u_xlatb31;
  u_xlatb31 = (x_2315 | x_2316);
  let x_2318 : bool = u_xlatb31;
  if (x_2318) {
    x_2320 = 1.0f;
  } else {
    let x_2325 : f32 = u_xlat5.x;
    x_2320 = x_2325;
  }
  let x_2326 : f32 = x_2320;
  u_xlat5.x = x_2326;
  let x_2328 : vec3<f32> = vs_TEXCOORD7;
  let x_2331 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2328 + -(x_2331));
  let x_2334 : vec3<f32> = u_xlat31;
  let x_2335 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_2334, x_2335);
  let x_2339 : f32 = u_xlat31.x;
  let x_2341 : f32 = x_1014.x_MainLightShadowParams.z;
  let x_2344 : f32 = x_1014.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_2339 * x_2341) + x_2344);
  let x_2348 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2348, 0.0f, 1.0f);
  let x_2352 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_2352) + 1.0f);
  let x_2356 : f32 = u_xlat57.x;
  let x_2357 : f32 = u_xlat83;
  let x_2360 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2356 * x_2357) + x_2360);
  let x_2370 : f32 = x_2368.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_2370 == -1.0f));
  let x_2374 : bool = u_xlatb57.x;
  if (x_2374) {
    let x_2377 : vec3<f32> = vs_TEXCOORD7;
    let x_2380 : vec4<f32> = x_2368.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_2377.y, x_2377.y) * vec2<f32>(x_2380.x, x_2380.y));
    let x_2384 : vec4<f32> = x_2368.x_MainLightWorldToLight[0i];
    let x_2386 : vec3<f32> = vs_TEXCOORD7;
    let x_2389 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2384.x, x_2384.y) * vec2<f32>(x_2386.x, x_2386.x)) + x_2389);
    let x_2392 : vec4<f32> = x_2368.x_MainLightWorldToLight[2i];
    let x_2394 : vec3<f32> = vs_TEXCOORD7;
    let x_2397 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2392.x, x_2392.y) * vec2<f32>(x_2394.z, x_2394.z)) + x_2397);
    let x_2399 : vec2<f32> = u_xlat57;
    let x_2401 : vec4<f32> = x_2368.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_2399 + vec2<f32>(x_2401.x, x_2401.y));
    let x_2404 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_2404 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2412 : vec2<f32> = u_xlat57;
    let x_2414 : f32 = x_111.x_GlobalMipBias.x;
    let x_2415 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2412, x_2414);
    u_xlat6 = x_2415;
    let x_2417 : f32 = x_2368.x_MainLightCookieTextureFormat;
    let x_2419 : f32 = x_2368.x_MainLightCookieTextureFormat;
    let x_2421 : f32 = x_2368.x_MainLightCookieTextureFormat;
    let x_2423 : f32 = x_2368.x_MainLightCookieTextureFormat;
    let x_2424 : vec4<f32> = vec4<f32>(x_2417, x_2419, x_2421, x_2423);
    let x_2431 : vec4<bool> = (vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2424.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_2431.x, x_2431.y);
    let x_2434 : bool = u_xlatb57.y;
    if (x_2434) {
      let x_2439 : f32 = u_xlat6.w;
      x_2435 = x_2439;
    } else {
      let x_2442 : f32 = u_xlat6.x;
      x_2435 = x_2442;
    }
    let x_2443 : f32 = x_2435;
    u_xlat83 = x_2443;
    let x_2445 : bool = u_xlatb57.x;
    if (x_2445) {
      let x_2449 : vec4<f32> = u_xlat6;
      x_2446 = vec3<f32>(x_2449.x, x_2449.y, x_2449.z);
    } else {
      let x_2452 : f32 = u_xlat83;
      x_2446 = vec3<f32>(x_2452, x_2452, x_2452);
    }
    let x_2454 : vec3<f32> = x_2446;
    let x_2455 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2461 : vec4<f32> = u_xlat6;
  let x_2464 : vec4<f32> = x_111.x_MainLightColor;
  let x_2466 : vec3<f32> = (vec3<f32>(x_2461.x, x_2461.y, x_2461.z) * vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
  let x_2467 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
  let x_2470 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2470;
  let x_2473 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2473;
  let x_2476 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2476;
  let x_2478 : vec4<f32> = u_xlat7;
  let x_2481 : vec4<f32> = u_xlat1;
  u_xlat57.x = dot(-(vec3<f32>(x_2478.x, x_2478.y, x_2478.z)), vec3<f32>(x_2481.x, x_2481.y, x_2481.z));
  let x_2486 : f32 = u_xlat57.x;
  let x_2488 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2486 + x_2488);
  let x_2491 : vec4<f32> = u_xlat1;
  let x_2493 : vec2<f32> = u_xlat57;
  let x_2497 : vec4<f32> = u_xlat7;
  let x_2500 : vec3<f32> = ((vec3<f32>(x_2491.x, x_2491.y, x_2491.z) * -(vec3<f32>(x_2493.x, x_2493.x, x_2493.x))) + -(vec3<f32>(x_2497.x, x_2497.y, x_2497.z)));
  let x_2501 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
  let x_2503 : vec4<f32> = u_xlat1;
  let x_2505 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_2503.x, x_2503.y, x_2503.z), vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
  let x_2510 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2510, 0.0f, 1.0f);
  let x_2514 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_2514) + 1.0f);
  let x_2519 : f32 = u_xlat57.x;
  let x_2521 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2519 * x_2521);
  let x_2525 : f32 = u_xlat57.x;
  let x_2527 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2525 * x_2527);
  let x_2531 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2531) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2538 : f32 = u_xlat0.x;
  let x_2539 : f32 = u_xlat83;
  u_xlat0.x = (x_2538 * x_2539);
  let x_2543 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2543 * 6.0f);
  let x_2555 : vec4<f32> = u_xlat8;
  let x_2558 : f32 = u_xlat0.x;
  let x_2559 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2555.x, x_2555.y, x_2555.z), x_2558);
  u_xlat8 = x_2559;
  let x_2561 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2561 + -1.0f);
  let x_2565 : f32 = x_876.unity_SpecCube0_HDR.w;
  let x_2567 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2565 * x_2567) + 1.0f);
  let x_2572 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2572, 0.0f);
  let x_2576 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2576);
  let x_2580 : f32 = u_xlat0.x;
  let x_2582 : f32 = x_876.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2580 * x_2582);
  let x_2586 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2586);
  let x_2590 : f32 = u_xlat0.x;
  let x_2592 : f32 = x_876.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2590 * x_2592);
  let x_2595 : vec4<f32> = u_xlat8;
  let x_2597 : vec3<f32> = u_xlat0;
  let x_2599 : vec3<f32> = (vec3<f32>(x_2595.x, x_2595.y, x_2595.z) * vec3<f32>(x_2597.x, x_2597.x, x_2597.x));
  let x_2600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
  let x_2602 : f32 = u_xlat52;
  let x_2604 : f32 = u_xlat52;
  let x_2608 : vec2<f32> = ((vec2<f32>(x_2602, x_2602) * vec2<f32>(x_2604, x_2604)) + vec2<f32>(-1.0f, 1.0f));
  let x_2609 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2608.x, x_2609.y, x_2608.y);
  let x_2612 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2612);
  let x_2614 : vec4<f32> = u_xlat4;
  let x_2617 : vec4<f32> = u_xlat3;
  let x_2619 : vec3<f32> = (-(vec3<f32>(x_2614.x, x_2614.y, x_2614.z)) + vec3<f32>(x_2617.x, x_2617.x, x_2617.x));
  let x_2620 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
  let x_2622 : vec2<f32> = u_xlat57;
  let x_2624 : vec4<f32> = u_xlat9;
  let x_2627 : vec4<f32> = u_xlat4;
  let x_2629 : vec3<f32> = ((vec3<f32>(x_2622.x, x_2622.x, x_2622.x) * vec3<f32>(x_2624.x, x_2624.y, x_2624.z)) + vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
  let x_2630 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
  let x_2632 : f32 = u_xlat52;
  let x_2634 : vec4<f32> = u_xlat9;
  let x_2636 : vec3<f32> = (vec3<f32>(x_2632, x_2632, x_2632) * vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
  let x_2637 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
  let x_2639 : vec4<f32> = u_xlat8;
  let x_2641 : vec4<f32> = u_xlat9;
  let x_2643 : vec3<f32> = (vec3<f32>(x_2639.x, x_2639.y, x_2639.z) * vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
  let x_2646 : vec3<f32> = u_xlat28;
  let x_2647 : vec3<f32> = u_xlat29;
  let x_2649 : vec4<f32> = u_xlat8;
  u_xlat28 = ((x_2646 * x_2647) + vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
  let x_2653 : f32 = u_xlat5.x;
  let x_2655 : f32 = x_876.unity_LightData.z;
  u_xlat52 = (x_2653 * x_2655);
  let x_2657 : vec4<f32> = u_xlat1;
  let x_2660 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2657.x, x_2657.y, x_2657.z), vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
  let x_2665 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2665, 0.0f, 1.0f);
  let x_2668 : f32 = u_xlat52;
  let x_2670 : f32 = u_xlat3.x;
  u_xlat52 = (x_2668 * x_2670);
  let x_2672 : f32 = u_xlat52;
  let x_2674 : vec4<f32> = u_xlat6;
  let x_2676 : vec3<f32> = (vec3<f32>(x_2672, x_2672, x_2672) * vec3<f32>(x_2674.x, x_2674.y, x_2674.z));
  let x_2677 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2676.x, x_2677.y, x_2676.y, x_2676.z);
  let x_2679 : vec4<f32> = u_xlat7;
  let x_2682 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2684 : vec3<f32> = (vec3<f32>(x_2679.x, x_2679.y, x_2679.z) + vec3<f32>(x_2682.x, x_2682.y, x_2682.z));
  let x_2685 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2684.x, x_2684.y, x_2684.z, x_2685.w);
  let x_2687 : vec4<f32> = u_xlat6;
  let x_2689 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2687.x, x_2687.y, x_2687.z), vec3<f32>(x_2689.x, x_2689.y, x_2689.z));
  let x_2692 : f32 = u_xlat52;
  u_xlat52 = max(x_2692, 1.17549435e-38f);
  let x_2695 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2695);
  let x_2697 : f32 = u_xlat52;
  let x_2699 : vec4<f32> = u_xlat6;
  let x_2701 : vec3<f32> = (vec3<f32>(x_2697, x_2697, x_2697) * vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
  let x_2702 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
  let x_2704 : vec4<f32> = u_xlat1;
  let x_2706 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2704.x, x_2704.y, x_2704.z), vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
  let x_2709 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2709, 0.0f, 1.0f);
  let x_2712 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2714 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_2712.x, x_2712.y, x_2712.z), vec3<f32>(x_2714.x, x_2714.y, x_2714.z));
  let x_2719 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2719, 0.0f, 1.0f);
  let x_2722 : f32 = u_xlat52;
  let x_2723 : f32 = u_xlat52;
  u_xlat52 = (x_2722 * x_2723);
  let x_2725 : f32 = u_xlat52;
  let x_2727 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2725 * x_2727) + 1.00001001358032226562f);
  let x_2732 : f32 = u_xlat3.x;
  let x_2734 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2732 * x_2734);
  let x_2737 : f32 = u_xlat52;
  let x_2738 : f32 = u_xlat52;
  u_xlat52 = (x_2737 * x_2738);
  let x_2741 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2741, 0.10000000149011611938f);
  let x_2745 : f32 = u_xlat52;
  let x_2747 : f32 = u_xlat3.x;
  u_xlat52 = (x_2745 * x_2747);
  let x_2749 : f32 = u_xlat82;
  let x_2750 : f32 = u_xlat52;
  u_xlat52 = (x_2749 * x_2750);
  let x_2752 : f32 = u_xlat79;
  let x_2753 : f32 = u_xlat52;
  u_xlat52 = (x_2752 / x_2753);
  let x_2755 : vec4<f32> = u_xlat4;
  let x_2757 : f32 = u_xlat52;
  let x_2760 : vec3<f32> = u_xlat29;
  let x_2761 : vec3<f32> = ((vec3<f32>(x_2755.x, x_2755.y, x_2755.z) * vec3<f32>(x_2757, x_2757, x_2757)) + x_2760);
  let x_2762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
  let x_2764 : vec4<f32> = u_xlat5;
  let x_2766 : vec4<f32> = u_xlat6;
  let x_2768 : vec3<f32> = (vec3<f32>(x_2764.x, x_2764.z, x_2764.w) * vec3<f32>(x_2766.x, x_2766.y, x_2766.z));
  let x_2769 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2768.x, x_2769.y, x_2768.y, x_2768.z);
  let x_2772 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2774 : f32 = x_876.unity_LightData.y;
  u_xlat52 = min(x_2772, x_2774);
  let x_2778 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2778));
  let x_2782 : f32 = u_xlat31.x;
  let x_2784 : f32 = x_1014.x_AdditionalShadowFadeParams.x;
  let x_2787 : f32 = x_1014.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2782 * x_2784) + x_2787);
  let x_2791 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2791, 0.0f, 1.0f);
  let x_2796 : f32 = x_2368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2798 : f32 = x_2368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2800 : f32 = x_2368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2802 : f32 = x_2368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2803 : vec4<f32> = vec4<f32>(x_2796, x_2798, x_2800, x_2802);
  let x_2810 : vec4<bool> = (vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2803.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2810.x, x_2810.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2822 : u32 = u_xlatu_loop_1;
    let x_2823 : u32 = u_xlatu52;
    if ((x_2822 < x_2823)) {
    } else {
      break;
    }
    let x_2826 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_2826 >> 2u);
    let x_2830 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2830 & 3u));
    let x_2833 : u32 = u_xlatu58;
    let x_2836 : vec4<f32> = x_876.unity_LightIndices[bitcast<i32>(x_2833)];
    let x_2846 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2851 : vec4<u32> = indexable[x_2846];
    u_xlat58.x = dot(x_2836, bitcast<vec4<f32>>(x_2851));
    let x_2857 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_2857);
    let x_2859 : vec3<f32> = vs_TEXCOORD7;
    let x_2870 : i32 = u_xlati58;
    let x_2872 : vec4<f32> = x_2869.x_AdditionalLightsPosition[x_2870];
    let x_2875 : i32 = u_xlati58;
    let x_2877 : vec4<f32> = x_2869.x_AdditionalLightsPosition[x_2875];
    let x_2879 : vec3<f32> = ((-(x_2859) * vec3<f32>(x_2872.w, x_2872.w, x_2872.w)) + vec3<f32>(x_2877.x, x_2877.y, x_2877.z));
    let x_2880 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
    let x_2883 : vec4<f32> = u_xlat9;
    let x_2885 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2883.x, x_2883.y, x_2883.z), vec3<f32>(x_2885.x, x_2885.y, x_2885.z));
    let x_2888 : f32 = u_xlat84;
    u_xlat84 = max(x_2888, 0.00006103515625f);
    let x_2891 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2891);
    let x_2893 : f32 = u_xlat85;
    let x_2895 : vec4<f32> = u_xlat9;
    let x_2897 : vec3<f32> = (vec3<f32>(x_2893, x_2893, x_2893) * vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
    let x_2898 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2897.x, x_2897.y, x_2897.z, x_2898.w);
    let x_2901 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2901);
    let x_2903 : f32 = u_xlat84;
    let x_2904 : i32 = u_xlati58;
    let x_2906 : f32 = x_2869.x_AdditionalLightsAttenuation[x_2904].x;
    u_xlat84 = (x_2903 * x_2906);
    let x_2908 : f32 = u_xlat84;
    let x_2910 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2908) * x_2910) + 1.0f);
    let x_2913 : f32 = u_xlat84;
    u_xlat84 = max(x_2913, 0.0f);
    let x_2915 : f32 = u_xlat84;
    let x_2916 : f32 = u_xlat84;
    u_xlat84 = (x_2915 * x_2916);
    let x_2918 : f32 = u_xlat84;
    let x_2919 : f32 = u_xlat86;
    u_xlat84 = (x_2918 * x_2919);
    let x_2921 : i32 = u_xlati58;
    let x_2923 : vec4<f32> = x_2869.x_AdditionalLightsSpotDir[x_2921];
    let x_2925 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2923.x, x_2923.y, x_2923.z), vec3<f32>(x_2925.x, x_2925.y, x_2925.z));
    let x_2928 : f32 = u_xlat86;
    let x_2929 : i32 = u_xlati58;
    let x_2931 : f32 = x_2869.x_AdditionalLightsAttenuation[x_2929].z;
    let x_2933 : i32 = u_xlati58;
    let x_2935 : f32 = x_2869.x_AdditionalLightsAttenuation[x_2933].w;
    u_xlat86 = ((x_2928 * x_2931) + x_2935);
    let x_2937 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2937, 0.0f, 1.0f);
    let x_2939 : f32 = u_xlat86;
    let x_2940 : f32 = u_xlat86;
    u_xlat86 = (x_2939 * x_2940);
    let x_2942 : f32 = u_xlat84;
    let x_2943 : f32 = u_xlat86;
    u_xlat84 = (x_2942 * x_2943);
    let x_2946 : i32 = u_xlati58;
    let x_2948 : f32 = x_1014.x_AdditionalShadowParams[x_2946].w;
    u_xlati86 = i32(x_2948);
    let x_2951 : i32 = u_xlati86;
    u_xlatb87 = (x_2951 >= 0i);
    let x_2953 : bool = u_xlatb87;
    if (x_2953) {
      let x_2957 : i32 = u_xlati58;
      let x_2959 : f32 = x_1014.x_AdditionalShadowParams[x_2957].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2959, x_2959, x_2959, x_2959))));
      let x_2963 : bool = u_xlatb87;
      if (x_2963) {
        let x_2968 : vec4<f32> = u_xlat10;
        let x_2971 : vec4<f32> = u_xlat10;
        let x_2974 : vec4<bool> = (abs(vec4<f32>(x_2968.z, x_2968.z, x_2968.y, x_2968.z)) >= abs(vec4<f32>(x_2971.x, x_2971.y, x_2971.x, x_2971.x)));
        let x_2976 : vec3<bool> = vec3<bool>(x_2974.x, x_2974.y, x_2974.z);
        let x_2977 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
        let x_2980 : bool = u_xlatb11.y;
        let x_2982 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2980 & x_2982);
        let x_2984 : vec4<f32> = u_xlat10;
        let x_2987 : vec4<bool> = (-(vec4<f32>(x_2984.z, x_2984.y, x_2984.z, x_2984.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2988 : vec3<bool> = vec3<bool>(x_2987.x, x_2987.y, x_2987.w);
        let x_2989 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2988.x, x_2988.y, x_2989.z, x_2988.z);
        let x_2992 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2992);
        let x_2997 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2997);
        let x_3003 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3003);
        let x_3006 : bool = u_xlatb11.z;
        if (x_3006) {
          let x_3011 : f32 = u_xlat11.y;
          x_3007 = x_3011;
        } else {
          let x_3013 : f32 = u_xlat88;
          x_3007 = x_3013;
        }
        let x_3014 : f32 = x_3007;
        u_xlat88 = x_3014;
        let x_3016 : bool = u_xlatb87;
        if (x_3016) {
          let x_3021 : f32 = u_xlat11.x;
          x_3017 = x_3021;
        } else {
          let x_3023 : f32 = u_xlat88;
          x_3017 = x_3023;
        }
        let x_3024 : f32 = x_3017;
        u_xlat87 = x_3024;
        let x_3025 : i32 = u_xlati58;
        let x_3027 : f32 = x_1014.x_AdditionalShadowParams[x_3025].w;
        u_xlat88 = trunc(x_3027);
        let x_3029 : f32 = u_xlat87;
        let x_3030 : f32 = u_xlat88;
        u_xlat87 = (x_3029 + x_3030);
        let x_3032 : f32 = u_xlat87;
        u_xlati86 = i32(x_3032);
      }
      let x_3034 : i32 = u_xlati86;
      u_xlati86 = (x_3034 << bitcast<u32>(2i));
      let x_3036 : vec3<f32> = vs_TEXCOORD7;
      let x_3038 : i32 = u_xlati86;
      let x_3041 : i32 = u_xlati86;
      let x_3045 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[((x_3038 + 1i) / 4i)][((x_3041 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3036.y, x_3036.y, x_3036.y, x_3036.y) * x_3045);
      let x_3047 : i32 = u_xlati86;
      let x_3049 : i32 = u_xlati86;
      let x_3052 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[(x_3047 / 4i)][(x_3049 % 4i)];
      let x_3053 : vec3<f32> = vs_TEXCOORD7;
      let x_3056 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3052 * vec4<f32>(x_3053.x, x_3053.x, x_3053.x, x_3053.x)) + x_3056);
      let x_3058 : i32 = u_xlati86;
      let x_3061 : i32 = u_xlati86;
      let x_3065 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[((x_3058 + 2i) / 4i)][((x_3061 + 2i) % 4i)];
      let x_3066 : vec3<f32> = vs_TEXCOORD7;
      let x_3069 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3065 * vec4<f32>(x_3066.z, x_3066.z, x_3066.z, x_3066.z)) + x_3069);
      let x_3071 : vec4<f32> = u_xlat11;
      let x_3072 : i32 = u_xlati86;
      let x_3075 : i32 = u_xlati86;
      let x_3079 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[((x_3072 + 3i) / 4i)][((x_3075 + 3i) % 4i)];
      u_xlat11 = (x_3071 + x_3079);
      let x_3081 : vec4<f32> = u_xlat11;
      let x_3083 : vec4<f32> = u_xlat11;
      let x_3085 : vec3<f32> = (vec3<f32>(x_3081.x, x_3081.y, x_3081.z) / vec3<f32>(x_3083.w, x_3083.w, x_3083.w));
      let x_3086 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3085.x, x_3085.y, x_3085.z, x_3086.w);
      let x_3089 : i32 = u_xlati58;
      let x_3091 : f32 = x_1014.x_AdditionalShadowParams[x_3089].y;
      u_xlatb86 = (0.0f < x_3091);
      let x_3093 : bool = u_xlatb86;
      if (x_3093) {
        let x_3096 : i32 = u_xlati58;
        let x_3098 : f32 = x_1014.x_AdditionalShadowParams[x_3096].y;
        u_xlatb86 = (1.0f == x_3098);
        let x_3100 : bool = u_xlatb86;
        if (x_3100) {
          let x_3103 : vec4<f32> = u_xlat11;
          let x_3106 : vec4<f32> = x_1014.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3103.x, x_3103.y, x_3103.x, x_3103.y) + x_3106);
          let x_3109 : vec4<f32> = u_xlat12;
          let x_3110 : vec2<f32> = vec2<f32>(x_3109.x, x_3109.y);
          let x_3112 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
          let x_3120 : vec3<f32> = txVec30;
          let x_3122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
          u_xlat13.x = x_3122;
          let x_3125 : vec4<f32> = u_xlat12;
          let x_3126 : vec2<f32> = vec2<f32>(x_3125.z, x_3125.w);
          let x_3128 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3126.x, x_3126.y, x_3128);
          let x_3135 : vec3<f32> = txVec31;
          let x_3137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3135.xy, x_3135.z);
          u_xlat13.y = x_3137;
          let x_3139 : vec4<f32> = u_xlat11;
          let x_3142 : vec4<f32> = x_1014.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3139.x, x_3139.y, x_3139.x, x_3139.y) + x_3142);
          let x_3145 : vec4<f32> = u_xlat12;
          let x_3146 : vec2<f32> = vec2<f32>(x_3145.x, x_3145.y);
          let x_3148 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3146.x, x_3146.y, x_3148);
          let x_3155 : vec3<f32> = txVec32;
          let x_3157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3155.xy, x_3155.z);
          u_xlat13.z = x_3157;
          let x_3160 : vec4<f32> = u_xlat12;
          let x_3161 : vec2<f32> = vec2<f32>(x_3160.z, x_3160.w);
          let x_3163 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
          let x_3170 : vec3<f32> = txVec33;
          let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
          u_xlat13.w = x_3172;
          let x_3174 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3174, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3177 : i32 = u_xlati58;
          let x_3179 : f32 = x_1014.x_AdditionalShadowParams[x_3177].y;
          u_xlatb87 = (2.0f == x_3179);
          let x_3181 : bool = u_xlatb87;
          if (x_3181) {
            let x_3184 : vec4<f32> = u_xlat11;
            let x_3187 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3190 : vec2<f32> = ((vec2<f32>(x_3184.x, x_3184.y) * vec2<f32>(x_3187.z, x_3187.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3191 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3190.x, x_3190.y, x_3191.z, x_3191.w);
            let x_3193 : vec4<f32> = u_xlat12;
            let x_3195 : vec2<f32> = floor(vec2<f32>(x_3193.x, x_3193.y));
            let x_3196 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3195.x, x_3195.y, x_3196.z, x_3196.w);
            let x_3198 : vec4<f32> = u_xlat11;
            let x_3201 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3204 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3198.x, x_3198.y) * vec2<f32>(x_3201.z, x_3201.w)) + -(vec2<f32>(x_3204.x, x_3204.y)));
            let x_3208 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3208.x, x_3208.x, x_3208.y, x_3208.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3211 : vec4<f32> = u_xlat13;
            let x_3213 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3211.x, x_3211.x, x_3211.z, x_3211.z) * vec4<f32>(x_3213.x, x_3213.x, x_3213.z, x_3213.z));
            let x_3216 : vec4<f32> = u_xlat14;
            let x_3218 : vec2<f32> = (vec2<f32>(x_3216.y, x_3216.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3219 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3218.x, x_3219.y, x_3218.y, x_3219.w);
            let x_3221 : vec4<f32> = u_xlat14;
            let x_3224 : vec2<f32> = u_xlat64;
            let x_3226 : vec2<f32> = ((vec2<f32>(x_3221.x, x_3221.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3224));
            let x_3227 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3226.x, x_3226.y, x_3227.z, x_3227.w);
            let x_3230 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3230) + vec2<f32>(1.0f, 1.0f));
            let x_3233 : vec2<f32> = u_xlat64;
            let x_3234 : vec2<f32> = min(x_3233, vec2<f32>(0.0f, 0.0f));
            let x_3235 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3234.x, x_3234.y, x_3235.z, x_3235.w);
            let x_3237 : vec4<f32> = u_xlat15;
            let x_3240 : vec4<f32> = u_xlat15;
            let x_3243 : vec2<f32> = u_xlat66;
            let x_3244 : vec2<f32> = ((-(vec2<f32>(x_3237.x, x_3237.y)) * vec2<f32>(x_3240.x, x_3240.y)) + x_3243);
            let x_3245 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3244.x, x_3244.y, x_3245.z, x_3245.w);
            let x_3247 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3247, vec2<f32>(0.0f, 0.0f));
            let x_3249 : vec2<f32> = u_xlat64;
            let x_3251 : vec2<f32> = u_xlat64;
            let x_3253 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3249) * x_3251) + vec2<f32>(x_3253.y, x_3253.w));
            let x_3256 : vec4<f32> = u_xlat15;
            let x_3258 : vec2<f32> = (vec2<f32>(x_3256.x, x_3256.y) + vec2<f32>(1.0f, 1.0f));
            let x_3259 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3258.x, x_3258.y, x_3259.z, x_3259.w);
            let x_3261 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3261 + vec2<f32>(1.0f, 1.0f));
            let x_3263 : vec4<f32> = u_xlat14;
            let x_3265 : vec2<f32> = (vec2<f32>(x_3263.x, x_3263.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3266 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3265.x, x_3265.y, x_3266.z, x_3266.w);
            let x_3268 : vec2<f32> = u_xlat66;
            let x_3269 : vec2<f32> = (x_3268 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3270 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3269.x, x_3269.y, x_3270.z, x_3270.w);
            let x_3272 : vec4<f32> = u_xlat15;
            let x_3274 : vec2<f32> = (vec2<f32>(x_3272.x, x_3272.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3275 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3274.x, x_3274.y, x_3275.z, x_3275.w);
            let x_3277 : vec2<f32> = u_xlat64;
            let x_3278 : vec2<f32> = (x_3277 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3279 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3278.x, x_3278.y, x_3279.z, x_3279.w);
            let x_3281 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3281.y, x_3281.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3285 : f32 = u_xlat15.x;
            u_xlat16.z = x_3285;
            let x_3288 : f32 = u_xlat64.x;
            u_xlat16.w = x_3288;
            let x_3291 : f32 = u_xlat17.x;
            u_xlat14.z = x_3291;
            let x_3294 : f32 = u_xlat13.x;
            u_xlat14.w = x_3294;
            let x_3296 : vec4<f32> = u_xlat14;
            let x_3298 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3296.z, x_3296.w, x_3296.x, x_3296.z) + vec4<f32>(x_3298.z, x_3298.w, x_3298.x, x_3298.z));
            let x_3302 : f32 = u_xlat16.y;
            u_xlat15.z = x_3302;
            let x_3305 : f32 = u_xlat64.y;
            u_xlat15.w = x_3305;
            let x_3308 : f32 = u_xlat14.y;
            u_xlat17.z = x_3308;
            let x_3311 : f32 = u_xlat13.z;
            u_xlat17.w = x_3311;
            let x_3313 : vec4<f32> = u_xlat15;
            let x_3315 : vec4<f32> = u_xlat17;
            let x_3317 : vec3<f32> = (vec3<f32>(x_3313.z, x_3313.y, x_3313.w) + vec3<f32>(x_3315.z, x_3315.y, x_3315.w));
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3317.x, x_3317.y, x_3317.z, x_3318.w);
            let x_3320 : vec4<f32> = u_xlat14;
            let x_3322 : vec4<f32> = u_xlat18;
            let x_3324 : vec3<f32> = (vec3<f32>(x_3320.x, x_3320.z, x_3320.w) / vec3<f32>(x_3322.z, x_3322.w, x_3322.y));
            let x_3325 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3324.x, x_3324.y, x_3324.z, x_3325.w);
            let x_3327 : vec4<f32> = u_xlat14;
            let x_3329 : vec3<f32> = (vec3<f32>(x_3327.x, x_3327.y, x_3327.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3330 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3329.x, x_3329.y, x_3329.z, x_3330.w);
            let x_3332 : vec4<f32> = u_xlat17;
            let x_3334 : vec4<f32> = u_xlat13;
            let x_3336 : vec3<f32> = (vec3<f32>(x_3332.z, x_3332.y, x_3332.w) / vec3<f32>(x_3334.x, x_3334.y, x_3334.z));
            let x_3337 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3336.x, x_3336.y, x_3336.z, x_3337.w);
            let x_3339 : vec4<f32> = u_xlat15;
            let x_3341 : vec3<f32> = (vec3<f32>(x_3339.x, x_3339.y, x_3339.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3342 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
            let x_3344 : vec4<f32> = u_xlat14;
            let x_3347 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3349 : vec3<f32> = (vec3<f32>(x_3344.y, x_3344.x, x_3344.z) * vec3<f32>(x_3347.x, x_3347.x, x_3347.x));
            let x_3350 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3349.x, x_3349.y, x_3349.z, x_3350.w);
            let x_3352 : vec4<f32> = u_xlat15;
            let x_3355 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3357 : vec3<f32> = (vec3<f32>(x_3352.x, x_3352.y, x_3352.z) * vec3<f32>(x_3355.y, x_3355.y, x_3355.y));
            let x_3358 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3357.x, x_3357.y, x_3357.z, x_3358.w);
            let x_3361 : f32 = u_xlat15.x;
            u_xlat14.w = x_3361;
            let x_3363 : vec4<f32> = u_xlat12;
            let x_3366 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3369 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3363.x, x_3363.y, x_3363.x, x_3363.y) * vec4<f32>(x_3366.x, x_3366.y, x_3366.x, x_3366.y)) + vec4<f32>(x_3369.y, x_3369.w, x_3369.x, x_3369.w));
            let x_3372 : vec4<f32> = u_xlat12;
            let x_3375 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3378 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3372.x, x_3372.y) * vec2<f32>(x_3375.x, x_3375.y)) + vec2<f32>(x_3378.z, x_3378.w));
            let x_3382 : f32 = u_xlat14.y;
            u_xlat15.w = x_3382;
            let x_3384 : vec4<f32> = u_xlat15;
            let x_3385 : vec2<f32> = vec2<f32>(x_3384.y, x_3384.z);
            let x_3386 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3386.x, x_3385.x, x_3386.z, x_3385.y);
            let x_3388 : vec4<f32> = u_xlat12;
            let x_3391 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3394 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3388.x, x_3388.y, x_3388.x, x_3388.y) * vec4<f32>(x_3391.x, x_3391.y, x_3391.x, x_3391.y)) + vec4<f32>(x_3394.x, x_3394.y, x_3394.z, x_3394.y));
            let x_3397 : vec4<f32> = u_xlat12;
            let x_3400 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3403 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3397.x, x_3397.y, x_3397.x, x_3397.y) * vec4<f32>(x_3400.x, x_3400.y, x_3400.x, x_3400.y)) + vec4<f32>(x_3403.w, x_3403.y, x_3403.w, x_3403.z));
            let x_3406 : vec4<f32> = u_xlat12;
            let x_3409 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3412 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3406.x, x_3406.y, x_3406.x, x_3406.y) * vec4<f32>(x_3409.x, x_3409.y, x_3409.x, x_3409.y)) + vec4<f32>(x_3412.x, x_3412.w, x_3412.z, x_3412.w));
            let x_3415 : vec4<f32> = u_xlat13;
            let x_3417 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3415.x, x_3415.x, x_3415.x, x_3415.y) * vec4<f32>(x_3417.z, x_3417.w, x_3417.y, x_3417.z));
            let x_3421 : vec4<f32> = u_xlat13;
            let x_3423 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3421.y, x_3421.y, x_3421.z, x_3421.z) * x_3423);
            let x_3426 : f32 = u_xlat13.z;
            let x_3428 : f32 = u_xlat18.y;
            u_xlat87 = (x_3426 * x_3428);
            let x_3431 : vec4<f32> = u_xlat16;
            let x_3432 : vec2<f32> = vec2<f32>(x_3431.x, x_3431.y);
            let x_3434 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3432.x, x_3432.y, x_3434);
            let x_3441 : vec3<f32> = txVec34;
            let x_3443 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3441.xy, x_3441.z);
            u_xlat88 = x_3443;
            let x_3445 : vec4<f32> = u_xlat16;
            let x_3446 : vec2<f32> = vec2<f32>(x_3445.z, x_3445.w);
            let x_3448 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3446.x, x_3446.y, x_3448);
            let x_3456 : vec3<f32> = txVec35;
            let x_3458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3456.xy, x_3456.z);
            u_xlat89 = x_3458;
            let x_3459 : f32 = u_xlat89;
            let x_3461 : f32 = u_xlat19.y;
            u_xlat89 = (x_3459 * x_3461);
            let x_3464 : f32 = u_xlat19.x;
            let x_3465 : f32 = u_xlat88;
            let x_3467 : f32 = u_xlat89;
            u_xlat88 = ((x_3464 * x_3465) + x_3467);
            let x_3470 : vec2<f32> = u_xlat64;
            let x_3472 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec36;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat89 = x_3481;
            let x_3483 : f32 = u_xlat19.z;
            let x_3484 : f32 = u_xlat89;
            let x_3486 : f32 = u_xlat88;
            u_xlat88 = ((x_3483 * x_3484) + x_3486);
            let x_3489 : vec4<f32> = u_xlat15;
            let x_3490 : vec2<f32> = vec2<f32>(x_3489.x, x_3489.y);
            let x_3492 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec37;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat89 = x_3501;
            let x_3503 : f32 = u_xlat19.w;
            let x_3504 : f32 = u_xlat89;
            let x_3506 : f32 = u_xlat88;
            u_xlat88 = ((x_3503 * x_3504) + x_3506);
            let x_3509 : vec4<f32> = u_xlat17;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.x, x_3509.y);
            let x_3512 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec38;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat89 = x_3521;
            let x_3523 : f32 = u_xlat20.x;
            let x_3524 : f32 = u_xlat89;
            let x_3526 : f32 = u_xlat88;
            u_xlat88 = ((x_3523 * x_3524) + x_3526);
            let x_3529 : vec4<f32> = u_xlat17;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.z, x_3529.w);
            let x_3532 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec39;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat89 = x_3541;
            let x_3543 : f32 = u_xlat20.y;
            let x_3544 : f32 = u_xlat89;
            let x_3546 : f32 = u_xlat88;
            u_xlat88 = ((x_3543 * x_3544) + x_3546);
            let x_3549 : vec4<f32> = u_xlat15;
            let x_3550 : vec2<f32> = vec2<f32>(x_3549.z, x_3549.w);
            let x_3552 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3550.x, x_3550.y, x_3552);
            let x_3559 : vec3<f32> = txVec40;
            let x_3561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3559.xy, x_3559.z);
            u_xlat89 = x_3561;
            let x_3563 : f32 = u_xlat20.z;
            let x_3564 : f32 = u_xlat89;
            let x_3566 : f32 = u_xlat88;
            u_xlat88 = ((x_3563 * x_3564) + x_3566);
            let x_3569 : vec4<f32> = u_xlat14;
            let x_3570 : vec2<f32> = vec2<f32>(x_3569.x, x_3569.y);
            let x_3572 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3570.x, x_3570.y, x_3572);
            let x_3579 : vec3<f32> = txVec41;
            let x_3581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3579.xy, x_3579.z);
            u_xlat89 = x_3581;
            let x_3583 : f32 = u_xlat20.w;
            let x_3584 : f32 = u_xlat89;
            let x_3586 : f32 = u_xlat88;
            u_xlat88 = ((x_3583 * x_3584) + x_3586);
            let x_3589 : vec4<f32> = u_xlat14;
            let x_3590 : vec2<f32> = vec2<f32>(x_3589.z, x_3589.w);
            let x_3592 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3590.x, x_3590.y, x_3592);
            let x_3599 : vec3<f32> = txVec42;
            let x_3601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3599.xy, x_3599.z);
            u_xlat89 = x_3601;
            let x_3602 : f32 = u_xlat87;
            let x_3603 : f32 = u_xlat89;
            let x_3605 : f32 = u_xlat88;
            u_xlat86 = ((x_3602 * x_3603) + x_3605);
          } else {
            let x_3608 : vec4<f32> = u_xlat11;
            let x_3611 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3614 : vec2<f32> = ((vec2<f32>(x_3608.x, x_3608.y) * vec2<f32>(x_3611.z, x_3611.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3615 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3614.x, x_3614.y, x_3615.z, x_3615.w);
            let x_3617 : vec4<f32> = u_xlat12;
            let x_3619 : vec2<f32> = floor(vec2<f32>(x_3617.x, x_3617.y));
            let x_3620 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3619.x, x_3619.y, x_3620.z, x_3620.w);
            let x_3622 : vec4<f32> = u_xlat11;
            let x_3625 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3628 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3622.x, x_3622.y) * vec2<f32>(x_3625.z, x_3625.w)) + -(vec2<f32>(x_3628.x, x_3628.y)));
            let x_3632 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3632.x, x_3632.x, x_3632.y, x_3632.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3635 : vec4<f32> = u_xlat13;
            let x_3637 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3635.x, x_3635.x, x_3635.z, x_3635.z) * vec4<f32>(x_3637.x, x_3637.x, x_3637.z, x_3637.z));
            let x_3640 : vec4<f32> = u_xlat14;
            let x_3642 : vec2<f32> = (vec2<f32>(x_3640.y, x_3640.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3643 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3643.x, x_3642.x, x_3643.z, x_3642.y);
            let x_3645 : vec4<f32> = u_xlat14;
            let x_3648 : vec2<f32> = u_xlat64;
            let x_3650 : vec2<f32> = ((vec2<f32>(x_3645.x, x_3645.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3648));
            let x_3651 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3650.x, x_3651.y, x_3650.y, x_3651.w);
            let x_3653 : vec2<f32> = u_xlat64;
            let x_3655 : vec2<f32> = (-(x_3653) + vec2<f32>(1.0f, 1.0f));
            let x_3656 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3655.x, x_3655.y, x_3656.z, x_3656.w);
            let x_3658 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3658, vec2<f32>(0.0f, 0.0f));
            let x_3660 : vec2<f32> = u_xlat66;
            let x_3662 : vec2<f32> = u_xlat66;
            let x_3664 : vec4<f32> = u_xlat14;
            let x_3666 : vec2<f32> = ((-(x_3660) * x_3662) + vec2<f32>(x_3664.x, x_3664.y));
            let x_3667 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3666.x, x_3666.y, x_3667.z, x_3667.w);
            let x_3669 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3669, vec2<f32>(0.0f, 0.0f));
            let x_3672 : vec2<f32> = u_xlat66;
            let x_3674 : vec2<f32> = u_xlat66;
            let x_3676 : vec4<f32> = u_xlat13;
            let x_3678 : vec2<f32> = ((-(x_3672) * x_3674) + vec2<f32>(x_3676.y, x_3676.w));
            let x_3679 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3678.x, x_3679.y, x_3678.y);
            let x_3681 : vec4<f32> = u_xlat14;
            let x_3683 : vec2<f32> = (vec2<f32>(x_3681.x, x_3681.y) + vec2<f32>(2.0f, 2.0f));
            let x_3684 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3683.x, x_3683.y, x_3684.z, x_3684.w);
            let x_3686 : vec3<f32> = u_xlat39;
            let x_3688 : vec2<f32> = (vec2<f32>(x_3686.x, x_3686.z) + vec2<f32>(2.0f, 2.0f));
            let x_3689 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3689.x, x_3688.x, x_3689.z, x_3688.y);
            let x_3692 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3692 * 0.08163200318813323975f);
            let x_3695 : vec4<f32> = u_xlat13;
            let x_3698 : vec3<f32> = (vec3<f32>(x_3695.z, x_3695.x, x_3695.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3699 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3698.x, x_3698.y, x_3698.z, x_3699.w);
            let x_3701 : vec4<f32> = u_xlat14;
            let x_3703 : vec2<f32> = (vec2<f32>(x_3701.x, x_3701.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3704 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3703.x, x_3703.y, x_3704.z, x_3704.w);
            let x_3707 : f32 = u_xlat17.y;
            u_xlat16.x = x_3707;
            let x_3709 : vec2<f32> = u_xlat64;
            let x_3712 : vec2<f32> = ((vec2<f32>(x_3709.x, x_3709.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3713 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3713.x, x_3712.x, x_3713.z, x_3712.y);
            let x_3715 : vec2<f32> = u_xlat64;
            let x_3718 : vec2<f32> = ((vec2<f32>(x_3715.x, x_3715.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3719 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3718.x, x_3719.y, x_3718.y, x_3719.w);
            let x_3722 : f32 = u_xlat13.x;
            u_xlat14.y = x_3722;
            let x_3725 : f32 = u_xlat15.y;
            u_xlat14.w = x_3725;
            let x_3727 : vec4<f32> = u_xlat14;
            let x_3728 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3727 + x_3728);
            let x_3730 : vec2<f32> = u_xlat64;
            let x_3733 : vec2<f32> = ((vec2<f32>(x_3730.y, x_3730.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3734 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3734.x, x_3733.x, x_3734.z, x_3733.y);
            let x_3736 : vec2<f32> = u_xlat64;
            let x_3739 : vec2<f32> = ((vec2<f32>(x_3736.y, x_3736.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3740 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3739.x, x_3740.y, x_3739.y, x_3740.w);
            let x_3743 : f32 = u_xlat13.y;
            u_xlat15.y = x_3743;
            let x_3745 : vec4<f32> = u_xlat15;
            let x_3746 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3745 + x_3746);
            let x_3748 : vec4<f32> = u_xlat14;
            let x_3749 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3748 / x_3749);
            let x_3751 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3751 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3753 : vec4<f32> = u_xlat15;
            let x_3754 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3753 / x_3754);
            let x_3756 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3756 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3758 : vec4<f32> = u_xlat14;
            let x_3761 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3758.w, x_3758.x, x_3758.y, x_3758.z) * vec4<f32>(x_3761.x, x_3761.x, x_3761.x, x_3761.x));
            let x_3764 : vec4<f32> = u_xlat15;
            let x_3767 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3764.x, x_3764.w, x_3764.y, x_3764.z) * vec4<f32>(x_3767.y, x_3767.y, x_3767.y, x_3767.y));
            let x_3770 : vec4<f32> = u_xlat14;
            let x_3771 : vec3<f32> = vec3<f32>(x_3770.y, x_3770.z, x_3770.w);
            let x_3772 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3771.x, x_3772.y, x_3771.y, x_3771.z);
            let x_3775 : f32 = u_xlat15.x;
            u_xlat17.y = x_3775;
            let x_3777 : vec4<f32> = u_xlat12;
            let x_3780 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3783 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3777.x, x_3777.y, x_3777.x, x_3777.y) * vec4<f32>(x_3780.x, x_3780.y, x_3780.x, x_3780.y)) + vec4<f32>(x_3783.x, x_3783.y, x_3783.z, x_3783.y));
            let x_3786 : vec4<f32> = u_xlat12;
            let x_3789 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3792 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3786.x, x_3786.y) * vec2<f32>(x_3789.x, x_3789.y)) + vec2<f32>(x_3792.w, x_3792.y));
            let x_3796 : f32 = u_xlat17.y;
            u_xlat14.y = x_3796;
            let x_3799 : f32 = u_xlat15.z;
            u_xlat17.y = x_3799;
            let x_3801 : vec4<f32> = u_xlat12;
            let x_3804 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3807 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3801.x, x_3801.y, x_3801.x, x_3801.y) * vec4<f32>(x_3804.x, x_3804.y, x_3804.x, x_3804.y)) + vec4<f32>(x_3807.x, x_3807.y, x_3807.z, x_3807.y));
            let x_3810 : vec4<f32> = u_xlat12;
            let x_3813 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3816 : vec4<f32> = u_xlat17;
            let x_3818 : vec2<f32> = ((vec2<f32>(x_3810.x, x_3810.y) * vec2<f32>(x_3813.x, x_3813.y)) + vec2<f32>(x_3816.w, x_3816.y));
            let x_3819 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3818.x, x_3818.y, x_3819.z, x_3819.w);
            let x_3822 : f32 = u_xlat17.y;
            u_xlat14.z = x_3822;
            let x_3825 : vec4<f32> = u_xlat12;
            let x_3828 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3831 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3825.x, x_3825.y, x_3825.x, x_3825.y) * vec4<f32>(x_3828.x, x_3828.y, x_3828.x, x_3828.y)) + vec4<f32>(x_3831.x, x_3831.y, x_3831.x, x_3831.z));
            let x_3835 : f32 = u_xlat15.w;
            u_xlat17.y = x_3835;
            let x_3838 : vec4<f32> = u_xlat12;
            let x_3841 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3844 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3838.x, x_3838.y, x_3838.x, x_3838.y) * vec4<f32>(x_3841.x, x_3841.y, x_3841.x, x_3841.y)) + vec4<f32>(x_3844.x, x_3844.y, x_3844.z, x_3844.y));
            let x_3848 : vec4<f32> = u_xlat12;
            let x_3851 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3854 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3848.x, x_3848.y) * vec2<f32>(x_3851.x, x_3851.y)) + vec2<f32>(x_3854.w, x_3854.y));
            let x_3858 : f32 = u_xlat17.y;
            u_xlat14.w = x_3858;
            let x_3861 : vec4<f32> = u_xlat12;
            let x_3864 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3867 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3861.x, x_3861.y) * vec2<f32>(x_3864.x, x_3864.y)) + vec2<f32>(x_3867.x, x_3867.w));
            let x_3870 : vec4<f32> = u_xlat17;
            let x_3871 : vec3<f32> = vec3<f32>(x_3870.x, x_3870.z, x_3870.w);
            let x_3872 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3871.x, x_3872.y, x_3871.y, x_3871.z);
            let x_3874 : vec4<f32> = u_xlat12;
            let x_3877 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3880 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3874.x, x_3874.y, x_3874.x, x_3874.y) * vec4<f32>(x_3877.x, x_3877.y, x_3877.x, x_3877.y)) + vec4<f32>(x_3880.x, x_3880.y, x_3880.z, x_3880.y));
            let x_3884 : vec4<f32> = u_xlat12;
            let x_3887 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3890 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3884.x, x_3884.y) * vec2<f32>(x_3887.x, x_3887.y)) + vec2<f32>(x_3890.w, x_3890.y));
            let x_3894 : f32 = u_xlat14.x;
            u_xlat15.x = x_3894;
            let x_3896 : vec4<f32> = u_xlat12;
            let x_3899 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3902 : vec4<f32> = u_xlat15;
            let x_3904 : vec2<f32> = ((vec2<f32>(x_3896.x, x_3896.y) * vec2<f32>(x_3899.x, x_3899.y)) + vec2<f32>(x_3902.x, x_3902.y));
            let x_3905 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3904.x, x_3904.y, x_3905.z, x_3905.w);
            let x_3908 : vec4<f32> = u_xlat13;
            let x_3910 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3908.x, x_3908.x, x_3908.x, x_3908.x) * x_3910);
            let x_3913 : vec4<f32> = u_xlat13;
            let x_3915 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3913.y, x_3913.y, x_3913.y, x_3913.y) * x_3915);
            let x_3918 : vec4<f32> = u_xlat13;
            let x_3920 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3918.z, x_3918.z, x_3918.z, x_3918.z) * x_3920);
            let x_3922 : vec4<f32> = u_xlat13;
            let x_3924 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3922.w, x_3922.w, x_3922.w, x_3922.w) * x_3924);
            let x_3927 : vec4<f32> = u_xlat18;
            let x_3928 : vec2<f32> = vec2<f32>(x_3927.x, x_3927.y);
            let x_3930 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3928.x, x_3928.y, x_3930);
            let x_3937 : vec3<f32> = txVec43;
            let x_3939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3937.xy, x_3937.z);
            u_xlat87 = x_3939;
            let x_3941 : vec4<f32> = u_xlat18;
            let x_3942 : vec2<f32> = vec2<f32>(x_3941.z, x_3941.w);
            let x_3944 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3942.x, x_3942.y, x_3944);
            let x_3951 : vec3<f32> = txVec44;
            let x_3953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3951.xy, x_3951.z);
            u_xlat88 = x_3953;
            let x_3954 : f32 = u_xlat88;
            let x_3956 : f32 = u_xlat23.y;
            u_xlat88 = (x_3954 * x_3956);
            let x_3959 : f32 = u_xlat23.x;
            let x_3960 : f32 = u_xlat87;
            let x_3962 : f32 = u_xlat88;
            u_xlat87 = ((x_3959 * x_3960) + x_3962);
            let x_3965 : vec2<f32> = u_xlat64;
            let x_3967 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3965.x, x_3965.y, x_3967);
            let x_3974 : vec3<f32> = txVec45;
            let x_3976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3974.xy, x_3974.z);
            u_xlat88 = x_3976;
            let x_3978 : f32 = u_xlat23.z;
            let x_3979 : f32 = u_xlat88;
            let x_3981 : f32 = u_xlat87;
            u_xlat87 = ((x_3978 * x_3979) + x_3981);
            let x_3984 : vec4<f32> = u_xlat21;
            let x_3985 : vec2<f32> = vec2<f32>(x_3984.x, x_3984.y);
            let x_3987 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3985.x, x_3985.y, x_3987);
            let x_3994 : vec3<f32> = txVec46;
            let x_3996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3994.xy, x_3994.z);
            u_xlat88 = x_3996;
            let x_3998 : f32 = u_xlat23.w;
            let x_3999 : f32 = u_xlat88;
            let x_4001 : f32 = u_xlat87;
            u_xlat87 = ((x_3998 * x_3999) + x_4001);
            let x_4004 : vec4<f32> = u_xlat19;
            let x_4005 : vec2<f32> = vec2<f32>(x_4004.x, x_4004.y);
            let x_4007 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4005.x, x_4005.y, x_4007);
            let x_4014 : vec3<f32> = txVec47;
            let x_4016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4014.xy, x_4014.z);
            u_xlat88 = x_4016;
            let x_4018 : f32 = u_xlat24.x;
            let x_4019 : f32 = u_xlat88;
            let x_4021 : f32 = u_xlat87;
            u_xlat87 = ((x_4018 * x_4019) + x_4021);
            let x_4024 : vec4<f32> = u_xlat19;
            let x_4025 : vec2<f32> = vec2<f32>(x_4024.z, x_4024.w);
            let x_4027 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4025.x, x_4025.y, x_4027);
            let x_4034 : vec3<f32> = txVec48;
            let x_4036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4034.xy, x_4034.z);
            u_xlat88 = x_4036;
            let x_4038 : f32 = u_xlat24.y;
            let x_4039 : f32 = u_xlat88;
            let x_4041 : f32 = u_xlat87;
            u_xlat87 = ((x_4038 * x_4039) + x_4041);
            let x_4044 : vec4<f32> = u_xlat20;
            let x_4045 : vec2<f32> = vec2<f32>(x_4044.x, x_4044.y);
            let x_4047 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4045.x, x_4045.y, x_4047);
            let x_4054 : vec3<f32> = txVec49;
            let x_4056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4054.xy, x_4054.z);
            u_xlat88 = x_4056;
            let x_4058 : f32 = u_xlat24.z;
            let x_4059 : f32 = u_xlat88;
            let x_4061 : f32 = u_xlat87;
            u_xlat87 = ((x_4058 * x_4059) + x_4061);
            let x_4064 : vec4<f32> = u_xlat21;
            let x_4065 : vec2<f32> = vec2<f32>(x_4064.z, x_4064.w);
            let x_4067 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
            let x_4074 : vec3<f32> = txVec50;
            let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
            u_xlat88 = x_4076;
            let x_4078 : f32 = u_xlat24.w;
            let x_4079 : f32 = u_xlat88;
            let x_4081 : f32 = u_xlat87;
            u_xlat87 = ((x_4078 * x_4079) + x_4081);
            let x_4084 : vec4<f32> = u_xlat22;
            let x_4085 : vec2<f32> = vec2<f32>(x_4084.x, x_4084.y);
            let x_4087 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4085.x, x_4085.y, x_4087);
            let x_4094 : vec3<f32> = txVec51;
            let x_4096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4094.xy, x_4094.z);
            u_xlat88 = x_4096;
            let x_4098 : f32 = u_xlat25.x;
            let x_4099 : f32 = u_xlat88;
            let x_4101 : f32 = u_xlat87;
            u_xlat87 = ((x_4098 * x_4099) + x_4101);
            let x_4104 : vec4<f32> = u_xlat22;
            let x_4105 : vec2<f32> = vec2<f32>(x_4104.z, x_4104.w);
            let x_4107 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4105.x, x_4105.y, x_4107);
            let x_4114 : vec3<f32> = txVec52;
            let x_4116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4114.xy, x_4114.z);
            u_xlat88 = x_4116;
            let x_4118 : f32 = u_xlat25.y;
            let x_4119 : f32 = u_xlat88;
            let x_4121 : f32 = u_xlat87;
            u_xlat87 = ((x_4118 * x_4119) + x_4121);
            let x_4124 : vec2<f32> = u_xlat40;
            let x_4126 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4124.x, x_4124.y, x_4126);
            let x_4133 : vec3<f32> = txVec53;
            let x_4135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4133.xy, x_4133.z);
            u_xlat88 = x_4135;
            let x_4137 : f32 = u_xlat25.z;
            let x_4138 : f32 = u_xlat88;
            let x_4140 : f32 = u_xlat87;
            u_xlat87 = ((x_4137 * x_4138) + x_4140);
            let x_4143 : vec2<f32> = u_xlat72;
            let x_4145 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4143.x, x_4143.y, x_4145);
            let x_4152 : vec3<f32> = txVec54;
            let x_4154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4152.xy, x_4152.z);
            u_xlat88 = x_4154;
            let x_4156 : f32 = u_xlat25.w;
            let x_4157 : f32 = u_xlat88;
            let x_4159 : f32 = u_xlat87;
            u_xlat87 = ((x_4156 * x_4157) + x_4159);
            let x_4162 : vec4<f32> = u_xlat17;
            let x_4163 : vec2<f32> = vec2<f32>(x_4162.x, x_4162.y);
            let x_4165 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4163.x, x_4163.y, x_4165);
            let x_4172 : vec3<f32> = txVec55;
            let x_4174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4172.xy, x_4172.z);
            u_xlat88 = x_4174;
            let x_4176 : f32 = u_xlat13.x;
            let x_4177 : f32 = u_xlat88;
            let x_4179 : f32 = u_xlat87;
            u_xlat87 = ((x_4176 * x_4177) + x_4179);
            let x_4182 : vec4<f32> = u_xlat17;
            let x_4183 : vec2<f32> = vec2<f32>(x_4182.z, x_4182.w);
            let x_4185 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4183.x, x_4183.y, x_4185);
            let x_4192 : vec3<f32> = txVec56;
            let x_4194 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4192.xy, x_4192.z);
            u_xlat88 = x_4194;
            let x_4196 : f32 = u_xlat13.y;
            let x_4197 : f32 = u_xlat88;
            let x_4199 : f32 = u_xlat87;
            u_xlat87 = ((x_4196 * x_4197) + x_4199);
            let x_4202 : vec2<f32> = u_xlat67;
            let x_4204 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4202.x, x_4202.y, x_4204);
            let x_4211 : vec3<f32> = txVec57;
            let x_4213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4211.xy, x_4211.z);
            u_xlat88 = x_4213;
            let x_4215 : f32 = u_xlat13.z;
            let x_4216 : f32 = u_xlat88;
            let x_4218 : f32 = u_xlat87;
            u_xlat87 = ((x_4215 * x_4216) + x_4218);
            let x_4221 : vec4<f32> = u_xlat12;
            let x_4222 : vec2<f32> = vec2<f32>(x_4221.x, x_4221.y);
            let x_4224 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4222.x, x_4222.y, x_4224);
            let x_4231 : vec3<f32> = txVec58;
            let x_4233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4231.xy, x_4231.z);
            u_xlat88 = x_4233;
            let x_4235 : f32 = u_xlat13.w;
            let x_4236 : f32 = u_xlat88;
            let x_4238 : f32 = u_xlat87;
            u_xlat86 = ((x_4235 * x_4236) + x_4238);
          }
        }
      } else {
        let x_4242 : vec4<f32> = u_xlat11;
        let x_4243 : vec2<f32> = vec2<f32>(x_4242.x, x_4242.y);
        let x_4245 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4243.x, x_4243.y, x_4245);
        let x_4252 : vec3<f32> = txVec59;
        let x_4254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4252.xy, x_4252.z);
        u_xlat86 = x_4254;
      }
      let x_4255 : i32 = u_xlati58;
      let x_4257 : f32 = x_1014.x_AdditionalShadowParams[x_4255].x;
      u_xlat87 = (1.0f + -(x_4257));
      let x_4260 : f32 = u_xlat86;
      let x_4261 : i32 = u_xlati58;
      let x_4263 : f32 = x_1014.x_AdditionalShadowParams[x_4261].x;
      let x_4265 : f32 = u_xlat87;
      u_xlat86 = ((x_4260 * x_4263) + x_4265);
      let x_4268 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4268);
      let x_4272 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4272 >= 1.0f);
      let x_4274 : bool = u_xlatb87;
      let x_4275 : bool = u_xlatb88;
      u_xlatb87 = (x_4274 | x_4275);
      let x_4277 : bool = u_xlatb87;
      let x_4278 : f32 = u_xlat86;
      u_xlat86 = select(x_4278, 1.0f, x_4277);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4281 : f32 = u_xlat86;
    u_xlat87 = (-(x_4281) + 1.0f);
    let x_4285 : f32 = u_xlat3.x;
    let x_4286 : f32 = u_xlat87;
    let x_4288 : f32 = u_xlat86;
    u_xlat86 = ((x_4285 * x_4286) + x_4288);
    let x_4291 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_4291 & 31i)));
    let x_4294 : i32 = u_xlati87;
    let x_4297 : f32 = x_2368.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4294) & bitcast<u32>(x_4297)));
    let x_4301 : i32 = u_xlati87;
    if ((x_4301 != 0i)) {
      let x_4305 : i32 = u_xlati58;
      let x_4307 : f32 = x_2368.x_AdditionalLightsLightTypes[x_4305].el;
      u_xlati87 = i32(x_4307);
      let x_4310 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4310 != 0i));
      let x_4314 : i32 = u_xlati58;
      u_xlati11 = (x_4314 << bitcast<u32>(2i));
      let x_4316 : i32 = u_xlati88;
      if ((x_4316 != 0i)) {
        let x_4321 : vec3<f32> = vs_TEXCOORD7;
        let x_4323 : i32 = u_xlati11;
        let x_4326 : i32 = u_xlati11;
        let x_4330 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4323 + 1i) / 4i)][((x_4326 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4321.y, x_4321.y, x_4321.y) * vec3<f32>(x_4330.x, x_4330.y, x_4330.w));
        let x_4333 : i32 = u_xlati11;
        let x_4335 : i32 = u_xlati11;
        let x_4338 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[(x_4333 / 4i)][(x_4335 % 4i)];
        let x_4340 : vec3<f32> = vs_TEXCOORD7;
        let x_4343 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4338.x, x_4338.y, x_4338.w) * vec3<f32>(x_4340.x, x_4340.x, x_4340.x)) + x_4343);
        let x_4345 : i32 = u_xlati11;
        let x_4348 : i32 = u_xlati11;
        let x_4352 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4345 + 2i) / 4i)][((x_4348 + 2i) % 4i)];
        let x_4354 : vec3<f32> = vs_TEXCOORD7;
        let x_4357 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4352.x, x_4352.y, x_4352.w) * vec3<f32>(x_4354.z, x_4354.z, x_4354.z)) + x_4357);
        let x_4359 : vec3<f32> = u_xlat37;
        let x_4360 : i32 = u_xlati11;
        let x_4363 : i32 = u_xlati11;
        let x_4367 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4360 + 3i) / 4i)][((x_4363 + 3i) % 4i)];
        u_xlat37 = (x_4359 + vec3<f32>(x_4367.x, x_4367.y, x_4367.w));
        let x_4370 : vec3<f32> = u_xlat37;
        let x_4372 : vec3<f32> = u_xlat37;
        let x_4374 : vec2<f32> = (vec2<f32>(x_4370.x, x_4370.y) / vec2<f32>(x_4372.z, x_4372.z));
        let x_4375 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4374.x, x_4374.y, x_4375.z);
        let x_4377 : vec3<f32> = u_xlat37;
        let x_4380 : vec2<f32> = ((vec2<f32>(x_4377.x, x_4377.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4381 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4380.x, x_4380.y, x_4381.z);
        let x_4383 : vec3<f32> = u_xlat37;
        let x_4387 : vec2<f32> = clamp(vec2<f32>(x_4383.x, x_4383.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4388 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4387.x, x_4387.y, x_4388.z);
        let x_4390 : i32 = u_xlati58;
        let x_4392 : vec4<f32> = x_2368.x_AdditionalLightsCookieAtlasUVRects[x_4390];
        let x_4394 : vec3<f32> = u_xlat37;
        let x_4397 : i32 = u_xlati58;
        let x_4399 : vec4<f32> = x_2368.x_AdditionalLightsCookieAtlasUVRects[x_4397];
        let x_4401 : vec2<f32> = ((vec2<f32>(x_4392.x, x_4392.y) * vec2<f32>(x_4394.x, x_4394.y)) + vec2<f32>(x_4399.z, x_4399.w));
        let x_4402 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4401.x, x_4401.y, x_4402.z);
      } else {
        let x_4405 : i32 = u_xlati87;
        u_xlatb87 = (x_4405 == 1i);
        let x_4407 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4407);
        let x_4409 : i32 = u_xlati87;
        if ((x_4409 != 0i)) {
          let x_4413 : vec3<f32> = vs_TEXCOORD7;
          let x_4415 : i32 = u_xlati11;
          let x_4418 : i32 = u_xlati11;
          let x_4422 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4415 + 1i) / 4i)][((x_4418 + 1i) % 4i)];
          let x_4424 : vec2<f32> = (vec2<f32>(x_4413.y, x_4413.y) * vec2<f32>(x_4422.x, x_4422.y));
          let x_4425 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4424.x, x_4424.y, x_4425.z, x_4425.w);
          let x_4427 : i32 = u_xlati11;
          let x_4429 : i32 = u_xlati11;
          let x_4432 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[(x_4427 / 4i)][(x_4429 % 4i)];
          let x_4434 : vec3<f32> = vs_TEXCOORD7;
          let x_4437 : vec4<f32> = u_xlat12;
          let x_4439 : vec2<f32> = ((vec2<f32>(x_4432.x, x_4432.y) * vec2<f32>(x_4434.x, x_4434.x)) + vec2<f32>(x_4437.x, x_4437.y));
          let x_4440 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4439.x, x_4439.y, x_4440.z, x_4440.w);
          let x_4442 : i32 = u_xlati11;
          let x_4445 : i32 = u_xlati11;
          let x_4449 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4442 + 2i) / 4i)][((x_4445 + 2i) % 4i)];
          let x_4451 : vec3<f32> = vs_TEXCOORD7;
          let x_4454 : vec4<f32> = u_xlat12;
          let x_4456 : vec2<f32> = ((vec2<f32>(x_4449.x, x_4449.y) * vec2<f32>(x_4451.z, x_4451.z)) + vec2<f32>(x_4454.x, x_4454.y));
          let x_4457 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4456.x, x_4456.y, x_4457.z, x_4457.w);
          let x_4459 : vec4<f32> = u_xlat12;
          let x_4461 : i32 = u_xlati11;
          let x_4464 : i32 = u_xlati11;
          let x_4468 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4461 + 3i) / 4i)][((x_4464 + 3i) % 4i)];
          let x_4470 : vec2<f32> = (vec2<f32>(x_4459.x, x_4459.y) + vec2<f32>(x_4468.x, x_4468.y));
          let x_4471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4470.x, x_4470.y, x_4471.z, x_4471.w);
          let x_4473 : vec4<f32> = u_xlat12;
          let x_4476 : vec2<f32> = ((vec2<f32>(x_4473.x, x_4473.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4477 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4476.x, x_4476.y, x_4477.z, x_4477.w);
          let x_4479 : vec4<f32> = u_xlat12;
          let x_4481 : vec2<f32> = fract(vec2<f32>(x_4479.x, x_4479.y));
          let x_4482 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4481.x, x_4481.y, x_4482.z, x_4482.w);
          let x_4484 : i32 = u_xlati58;
          let x_4486 : vec4<f32> = x_2368.x_AdditionalLightsCookieAtlasUVRects[x_4484];
          let x_4488 : vec4<f32> = u_xlat12;
          let x_4491 : i32 = u_xlati58;
          let x_4493 : vec4<f32> = x_2368.x_AdditionalLightsCookieAtlasUVRects[x_4491];
          let x_4495 : vec2<f32> = ((vec2<f32>(x_4486.x, x_4486.y) * vec2<f32>(x_4488.x, x_4488.y)) + vec2<f32>(x_4493.z, x_4493.w));
          let x_4496 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4495.x, x_4495.y, x_4496.z);
        } else {
          let x_4499 : vec3<f32> = vs_TEXCOORD7;
          let x_4501 : i32 = u_xlati11;
          let x_4504 : i32 = u_xlati11;
          let x_4508 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4501 + 1i) / 4i)][((x_4504 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4499.y, x_4499.y, x_4499.y, x_4499.y) * x_4508);
          let x_4510 : i32 = u_xlati11;
          let x_4512 : i32 = u_xlati11;
          let x_4515 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[(x_4510 / 4i)][(x_4512 % 4i)];
          let x_4516 : vec3<f32> = vs_TEXCOORD7;
          let x_4519 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4515 * vec4<f32>(x_4516.x, x_4516.x, x_4516.x, x_4516.x)) + x_4519);
          let x_4521 : i32 = u_xlati11;
          let x_4524 : i32 = u_xlati11;
          let x_4528 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4521 + 2i) / 4i)][((x_4524 + 2i) % 4i)];
          let x_4529 : vec3<f32> = vs_TEXCOORD7;
          let x_4532 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4528 * vec4<f32>(x_4529.z, x_4529.z, x_4529.z, x_4529.z)) + x_4532);
          let x_4534 : vec4<f32> = u_xlat12;
          let x_4535 : i32 = u_xlati11;
          let x_4538 : i32 = u_xlati11;
          let x_4542 : vec4<f32> = x_2368.x_AdditionalLightsWorldToLights[((x_4535 + 3i) / 4i)][((x_4538 + 3i) % 4i)];
          u_xlat12 = (x_4534 + x_4542);
          let x_4544 : vec4<f32> = u_xlat12;
          let x_4546 : vec4<f32> = u_xlat12;
          let x_4548 : vec3<f32> = (vec3<f32>(x_4544.x, x_4544.y, x_4544.z) / vec3<f32>(x_4546.w, x_4546.w, x_4546.w));
          let x_4549 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4548.x, x_4548.y, x_4548.z, x_4549.w);
          let x_4551 : vec4<f32> = u_xlat12;
          let x_4553 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4551.x, x_4551.y, x_4551.z), vec3<f32>(x_4553.x, x_4553.y, x_4553.z));
          let x_4556 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4556);
          let x_4558 : f32 = u_xlat87;
          let x_4560 : vec4<f32> = u_xlat12;
          let x_4562 : vec3<f32> = (vec3<f32>(x_4558, x_4558, x_4558) * vec3<f32>(x_4560.x, x_4560.y, x_4560.z));
          let x_4563 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4562.x, x_4562.y, x_4562.z, x_4563.w);
          let x_4565 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4565.x, x_4565.y, x_4565.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4570 : f32 = u_xlat87;
          u_xlat87 = max(x_4570, 0.00000099999999747524f);
          let x_4573 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4573);
          let x_4575 : f32 = u_xlat87;
          let x_4577 : vec4<f32> = u_xlat12;
          let x_4579 : vec3<f32> = (vec3<f32>(x_4575, x_4575, x_4575) * vec3<f32>(x_4577.z, x_4577.x, x_4577.y));
          let x_4580 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4579.x, x_4579.y, x_4579.z, x_4580.w);
          let x_4583 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4583);
          let x_4587 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4587, 0.0f, 1.0f);
          let x_4590 : vec4<f32> = u_xlat13;
          let x_4592 : vec4<bool> = (vec4<f32>(x_4590.y, x_4590.y, x_4590.y, x_4590.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4593 : vec2<bool> = vec2<bool>(x_4592.x, x_4592.w);
          let x_4594 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4593.x, x_4594.y, x_4594.z, x_4593.y);
          let x_4597 : bool = u_xlatb11.x;
          if (x_4597) {
            let x_4602 : f32 = u_xlat13.x;
            x_4598 = x_4602;
          } else {
            let x_4605 : f32 = u_xlat13.x;
            x_4598 = -(x_4605);
          }
          let x_4607 : f32 = x_4598;
          u_xlat11.x = x_4607;
          let x_4610 : bool = u_xlatb11.w;
          if (x_4610) {
            let x_4615 : f32 = u_xlat13.x;
            x_4611 = x_4615;
          } else {
            let x_4618 : f32 = u_xlat13.x;
            x_4611 = -(x_4618);
          }
          let x_4620 : f32 = x_4611;
          u_xlat11.w = x_4620;
          let x_4622 : vec4<f32> = u_xlat12;
          let x_4624 : f32 = u_xlat87;
          let x_4627 : vec4<f32> = u_xlat11;
          let x_4629 : vec2<f32> = ((vec2<f32>(x_4622.x, x_4622.y) * vec2<f32>(x_4624, x_4624)) + vec2<f32>(x_4627.x, x_4627.w));
          let x_4630 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4629.x, x_4630.y, x_4630.z, x_4629.y);
          let x_4632 : vec4<f32> = u_xlat11;
          let x_4635 : vec2<f32> = ((vec2<f32>(x_4632.x, x_4632.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4636 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4635.x, x_4636.y, x_4636.z, x_4635.y);
          let x_4638 : vec4<f32> = u_xlat11;
          let x_4642 : vec2<f32> = clamp(vec2<f32>(x_4638.x, x_4638.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4643 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4642.x, x_4643.y, x_4643.z, x_4642.y);
          let x_4645 : i32 = u_xlati58;
          let x_4647 : vec4<f32> = x_2368.x_AdditionalLightsCookieAtlasUVRects[x_4645];
          let x_4649 : vec4<f32> = u_xlat11;
          let x_4652 : i32 = u_xlati58;
          let x_4654 : vec4<f32> = x_2368.x_AdditionalLightsCookieAtlasUVRects[x_4652];
          let x_4656 : vec2<f32> = ((vec2<f32>(x_4647.x, x_4647.y) * vec2<f32>(x_4649.x, x_4649.w)) + vec2<f32>(x_4654.z, x_4654.w));
          let x_4657 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4656.x, x_4656.y, x_4657.z);
        }
      }
      let x_4664 : vec3<f32> = u_xlat37;
      let x_4666 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4664.x, x_4664.y), 0.0f);
      u_xlat11 = x_4666;
      let x_4668 : bool = u_xlatb6.y;
      if (x_4668) {
        let x_4673 : f32 = u_xlat11.w;
        x_4669 = x_4673;
      } else {
        let x_4676 : f32 = u_xlat11.x;
        x_4669 = x_4676;
      }
      let x_4677 : f32 = x_4669;
      u_xlat87 = x_4677;
      let x_4679 : bool = u_xlatb6.x;
      if (x_4679) {
        let x_4683 : vec4<f32> = u_xlat11;
        x_4680 = vec3<f32>(x_4683.x, x_4683.y, x_4683.z);
      } else {
        let x_4686 : f32 = u_xlat87;
        x_4680 = vec3<f32>(x_4686, x_4686, x_4686);
      }
      let x_4688 : vec3<f32> = x_4680;
      let x_4689 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4688.x, x_4688.y, x_4688.z, x_4689.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4695 : vec4<f32> = u_xlat11;
    let x_4697 : i32 = u_xlati58;
    let x_4699 : vec4<f32> = x_2869.x_AdditionalLightsColor[x_4697];
    let x_4701 : vec3<f32> = (vec3<f32>(x_4695.x, x_4695.y, x_4695.z) * vec3<f32>(x_4699.x, x_4699.y, x_4699.z));
    let x_4702 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4701.x, x_4701.y, x_4701.z, x_4702.w);
    let x_4704 : f32 = u_xlat84;
    let x_4705 : f32 = u_xlat86;
    u_xlat58.x = (x_4704 * x_4705);
    let x_4708 : vec4<f32> = u_xlat1;
    let x_4710 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4708.x, x_4708.y, x_4708.z), vec3<f32>(x_4710.x, x_4710.y, x_4710.z));
    let x_4713 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4713, 0.0f, 1.0f);
    let x_4715 : f32 = u_xlat84;
    let x_4717 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4715 * x_4717);
    let x_4720 : vec2<f32> = u_xlat58;
    let x_4722 : vec4<f32> = u_xlat11;
    let x_4724 : vec3<f32> = (vec3<f32>(x_4720.x, x_4720.x, x_4720.x) * vec3<f32>(x_4722.x, x_4722.y, x_4722.z));
    let x_4725 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4724.x, x_4724.y, x_4724.z, x_4725.w);
    let x_4727 : vec4<f32> = u_xlat9;
    let x_4729 : f32 = u_xlat85;
    let x_4732 : vec4<f32> = u_xlat7;
    let x_4734 : vec3<f32> = ((vec3<f32>(x_4727.x, x_4727.y, x_4727.z) * vec3<f32>(x_4729, x_4729, x_4729)) + vec3<f32>(x_4732.x, x_4732.y, x_4732.z));
    let x_4735 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4734.x, x_4734.y, x_4734.z, x_4735.w);
    let x_4737 : vec4<f32> = u_xlat9;
    let x_4739 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4737.x, x_4737.y, x_4737.z), vec3<f32>(x_4739.x, x_4739.y, x_4739.z));
    let x_4744 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4744, 1.17549435e-38f);
    let x_4748 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_4748);
    let x_4751 : vec2<f32> = u_xlat58;
    let x_4753 : vec4<f32> = u_xlat9;
    let x_4755 : vec3<f32> = (vec3<f32>(x_4751.x, x_4751.x, x_4751.x) * vec3<f32>(x_4753.x, x_4753.y, x_4753.z));
    let x_4756 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4755.x, x_4755.y, x_4755.z, x_4756.w);
    let x_4758 : vec4<f32> = u_xlat1;
    let x_4760 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4758.x, x_4758.y, x_4758.z), vec3<f32>(x_4760.x, x_4760.y, x_4760.z));
    let x_4765 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4765, 0.0f, 1.0f);
    let x_4768 : vec4<f32> = u_xlat10;
    let x_4770 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_4768.x, x_4768.y, x_4768.z), vec3<f32>(x_4770.x, x_4770.y, x_4770.z));
    let x_4775 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_4775, 0.0f, 1.0f);
    let x_4778 : vec2<f32> = u_xlat58;
    let x_4779 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_4778 * x_4779);
    let x_4782 : f32 = u_xlat58.x;
    let x_4784 : f32 = u_xlat0.x;
    u_xlat58.x = ((x_4782 * x_4784) + 1.00001001358032226562f);
    let x_4789 : f32 = u_xlat58.x;
    let x_4791 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4789 * x_4791);
    let x_4795 : f32 = u_xlat58.y;
    u_xlat84 = max(x_4795, 0.10000000149011611938f);
    let x_4797 : f32 = u_xlat84;
    let x_4799 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4797 * x_4799);
    let x_4802 : f32 = u_xlat82;
    let x_4804 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4802 * x_4804);
    let x_4807 : f32 = u_xlat79;
    let x_4809 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4807 / x_4809);
    let x_4812 : vec4<f32> = u_xlat4;
    let x_4814 : vec2<f32> = u_xlat58;
    let x_4817 : vec3<f32> = u_xlat29;
    let x_4818 : vec3<f32> = ((vec3<f32>(x_4812.x, x_4812.y, x_4812.z) * vec3<f32>(x_4814.x, x_4814.x, x_4814.x)) + x_4817);
    let x_4819 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4818.x, x_4818.y, x_4818.z, x_4819.w);
    let x_4821 : vec4<f32> = u_xlat9;
    let x_4823 : vec4<f32> = u_xlat11;
    let x_4826 : vec4<f32> = u_xlat8;
    let x_4828 : vec3<f32> = ((vec3<f32>(x_4821.x, x_4821.y, x_4821.z) * vec3<f32>(x_4823.x, x_4823.y, x_4823.z)) + vec3<f32>(x_4826.x, x_4826.y, x_4826.z));
    let x_4829 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4828.x, x_4828.y, x_4828.z, x_4829.w);

    continuing {
      let x_4831 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4831 + bitcast<u32>(1i));
    }
  }
  let x_4833 : vec3<f32> = u_xlat28;
  let x_4834 : f32 = u_xlat26;
  let x_4837 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_4833 * vec3<f32>(x_4834, x_4834, x_4834)) + vec3<f32>(x_4837.x, x_4837.z, x_4837.w));
  let x_4840 : vec4<f32> = u_xlat8;
  let x_4842 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4840.x, x_4840.y, x_4840.z) + x_4842);
  let x_4845 : f32 = u_xlat2.x;
  let x_4847 : f32 = u_xlat2.x;
  u_xlat1.x = (x_4845 * -(x_4847));
  let x_4852 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4852);
  let x_4855 : vec3<f32> = u_xlat0;
  let x_4856 : f32 = u_xlat78;
  let x_4860 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_4855 * vec3<f32>(x_4856, x_4856, x_4856)) + -(vec3<f32>(x_4860.x, x_4860.y, x_4860.z)));
  let x_4866 : vec4<f32> = u_xlat1;
  let x_4868 : vec3<f32> = u_xlat0;
  let x_4871 : vec4<f32> = x_111.unity_FogColor;
  let x_4873 : vec3<f32> = ((vec3<f32>(x_4866.x, x_4866.x, x_4866.x) * x_4868) + vec3<f32>(x_4871.x, x_4871.y, x_4871.z));
  let x_4874 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4873.x, x_4873.y, x_4873.z, x_4874.w);
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


