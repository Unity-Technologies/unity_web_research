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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_721 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb6 : bool;

@group(1) @binding(5) var<uniform> x_2032 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2223 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2511 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_2117 : f32;
  var x_2128 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2647 : f32;
  var x_2657 : f32;
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
  var x_4228 : f32;
  var x_4241 : f32;
  var x_4289 : f32;
  var x_4300 : vec3<f32>;
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
  let x_603 : vec4<f32> = vs_TEXCOORD0;
  let x_606 : f32 = x_111.x_GlobalMipBias.x;
  let x_607 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_603.z, x_603.w), x_606);
  u_xlat3 = x_607;
  let x_612 : vec4<f32> = vs_TEXCOORD0;
  let x_615 : f32 = x_111.x_GlobalMipBias.x;
  let x_616 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_612.z, x_612.w), x_615);
  let x_617 : vec3<f32> = vec3<f32>(x_616.x, x_616.y, x_616.z);
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : f32 = u_xlat79;
  u_xlat79 = (x_632 + 0.5f);
  let x_634 : f32 = u_xlat79;
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : vec3<f32> = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_642 : f32 = u_xlat3.w;
  u_xlat79 = max(x_642, 0.00009999999747378752f);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : f32 = u_xlat79;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) / vec3<f32>(x_647, x_647, x_647));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_653) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_659 : f32 = u_xlat52;
  let x_660 : f32 = u_xlat79;
  u_xlat80 = (x_659 + -(x_660));
  let x_663 : f32 = u_xlat79;
  let x_665 : vec4<f32> = u_xlat5;
  let x_667 : vec3<f32> = (vec3<f32>(x_663, x_663, x_663) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat5;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = u_xlat0;
  let x_679 : vec4<f32> = u_xlat5;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_685 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : f32 = u_xlat52;
  u_xlat0.x = (-(x_687) + 1.0f);
  let x_692 : f32 = u_xlat0.x;
  let x_694 : f32 = u_xlat0.x;
  u_xlat52 = (x_692 * x_694);
  let x_696 : f32 = u_xlat52;
  u_xlat52 = max(x_696, 0.0078125f);
  let x_699 : f32 = u_xlat52;
  let x_700 : f32 = u_xlat52;
  u_xlat79 = (x_699 * x_700);
  let x_702 : f32 = u_xlat80;
  u_xlat80 = (x_702 + 1.0f);
  let x_704 : f32 = u_xlat80;
  u_xlat80 = clamp(x_704, 0.0f, 1.0f);
  let x_707 : f32 = u_xlat52;
  u_xlat81 = ((x_707 * 4.0f) + 2.0f);
  let x_711 : f32 = u_xlat26;
  u_xlat26 = min(x_711, 1.0f);
  let x_723 : f32 = x_721.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_723);
  let x_725 : bool = u_xlatb82;
  if (x_725) {
    let x_729 : f32 = x_721.x_MainLightShadowParams.y;
    u_xlatb82 = (x_729 == 1.0f);
    let x_731 : bool = u_xlatb82;
    if (x_731) {
      let x_735 : vec4<f32> = vs_TEXCOORD8;
      let x_738 : vec4<f32> = x_721.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.y) + x_738);
      let x_742 : vec4<f32> = u_xlat6;
      let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
      let x_746 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_743.x, x_743.y, x_746);
      let x_758 : vec3<f32> = txVec0;
      let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_758.xy, x_758.z);
      u_xlat7.x = x_760;
      let x_763 : vec4<f32> = u_xlat6;
      let x_764 : vec2<f32> = vec2<f32>(x_763.z, x_763.w);
      let x_766 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_764.x, x_764.y, x_766);
      let x_773 : vec3<f32> = txVec1;
      let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
      u_xlat7.y = x_775;
      let x_777 : vec4<f32> = vs_TEXCOORD8;
      let x_780 : vec4<f32> = x_721.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y) + x_780);
      let x_783 : vec4<f32> = u_xlat6;
      let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
      let x_786 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_784.x, x_784.y, x_786);
      let x_793 : vec3<f32> = txVec2;
      let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_793.xy, x_793.z);
      u_xlat7.z = x_795;
      let x_798 : vec4<f32> = u_xlat6;
      let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
      let x_801 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_799.x, x_799.y, x_801);
      let x_808 : vec3<f32> = txVec3;
      let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_808.xy, x_808.z);
      u_xlat7.w = x_810;
      let x_813 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_813, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_820 : f32 = x_721.x_MainLightShadowParams.y;
      u_xlatb83 = (x_820 == 2.0f);
      let x_822 : bool = u_xlatb83;
      if (x_822) {
        let x_825 : vec4<f32> = vs_TEXCOORD8;
        let x_828 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_831 : vec2<f32> = ((vec2<f32>(x_825.x, x_825.y) * vec2<f32>(x_828.z, x_828.w)) + vec2<f32>(0.5f, 0.5f));
        let x_832 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat6;
        let x_836 : vec2<f32> = floor(vec2<f32>(x_834.x, x_834.y));
        let x_837 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_837.w);
        let x_841 : vec4<f32> = vs_TEXCOORD8;
        let x_844 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_847 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + -(vec2<f32>(x_847.x, x_847.y)));
        let x_851 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_851.x, x_851.x, x_851.y, x_851.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_855 : vec4<f32> = u_xlat7;
        let x_857 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_855.x, x_855.x, x_855.z, x_855.z) * vec4<f32>(x_857.x, x_857.x, x_857.z, x_857.z));
        let x_860 : vec4<f32> = u_xlat8;
        let x_864 : vec2<f32> = (vec2<f32>(x_860.y, x_860.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_865 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_864.x, x_865.y, x_864.y, x_865.w);
        let x_867 : vec4<f32> = u_xlat8;
        let x_870 : vec2<f32> = u_xlat58;
        let x_872 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.z) * vec2<f32>(0.5f, 0.5f)) + -(x_870));
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_876 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_876) + vec2<f32>(1.0f, 1.0f));
        let x_880 : vec2<f32> = u_xlat58;
        let x_882 : vec2<f32> = min(x_880, vec2<f32>(0.0f, 0.0f));
        let x_883 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_885 : vec4<f32> = u_xlat9;
        let x_888 : vec4<f32> = u_xlat9;
        let x_891 : vec2<f32> = u_xlat60;
        let x_892 : vec2<f32> = ((-(vec2<f32>(x_885.x, x_885.y)) * vec2<f32>(x_888.x, x_888.y)) + x_891);
        let x_893 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_895, vec2<f32>(0.0f, 0.0f));
        let x_897 : vec2<f32> = u_xlat58;
        let x_899 : vec2<f32> = u_xlat58;
        let x_901 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_897) * x_899) + vec2<f32>(x_901.y, x_901.w));
        let x_904 : vec4<f32> = u_xlat9;
        let x_906 : vec2<f32> = (vec2<f32>(x_904.x, x_904.y) + vec2<f32>(1.0f, 1.0f));
        let x_907 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_909 + vec2<f32>(1.0f, 1.0f));
        let x_911 : vec4<f32> = u_xlat8;
        let x_915 : vec2<f32> = (vec2<f32>(x_911.x, x_911.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_916 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec2<f32> = u_xlat60;
        let x_919 : vec2<f32> = (x_918 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec4<f32> = u_xlat9;
        let x_924 : vec2<f32> = (vec2<f32>(x_922.x, x_922.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_925 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
        let x_927 : vec2<f32> = u_xlat58;
        let x_928 : vec2<f32> = (x_927 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_929 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_931.y, x_931.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_935 : f32 = u_xlat9.x;
        u_xlat10.z = x_935;
        let x_938 : f32 = u_xlat58.x;
        u_xlat10.w = x_938;
        let x_941 : f32 = u_xlat11.x;
        u_xlat8.z = x_941;
        let x_944 : f32 = u_xlat7.x;
        u_xlat8.w = x_944;
        let x_946 : vec4<f32> = u_xlat8;
        let x_948 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_946.z, x_946.w, x_946.x, x_946.z) + vec4<f32>(x_948.z, x_948.w, x_948.x, x_948.z));
        let x_952 : f32 = u_xlat10.y;
        u_xlat9.z = x_952;
        let x_955 : f32 = u_xlat58.y;
        u_xlat9.w = x_955;
        let x_958 : f32 = u_xlat8.y;
        u_xlat11.z = x_958;
        let x_961 : f32 = u_xlat7.z;
        u_xlat11.w = x_961;
        let x_963 : vec4<f32> = u_xlat9;
        let x_965 : vec4<f32> = u_xlat11;
        let x_967 : vec3<f32> = (vec3<f32>(x_963.z, x_963.y, x_963.w) + vec3<f32>(x_965.z, x_965.y, x_965.w));
        let x_968 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat8;
        let x_972 : vec4<f32> = u_xlat12;
        let x_974 : vec3<f32> = (vec3<f32>(x_970.x, x_970.z, x_970.w) / vec3<f32>(x_972.z, x_972.w, x_972.y));
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat8;
        let x_982 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat11;
        let x_987 : vec4<f32> = u_xlat7;
        let x_989 : vec3<f32> = (vec3<f32>(x_985.z, x_985.y, x_985.w) / vec3<f32>(x_987.x, x_987.y, x_987.z));
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat9;
        let x_994 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat8;
        let x_1000 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1002 : vec3<f32> = (vec3<f32>(x_997.y, x_997.x, x_997.z) * vec3<f32>(x_1000.x, x_1000.x, x_1000.x));
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1008 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1010 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) * vec3<f32>(x_1008.y, x_1008.y, x_1008.y));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
        let x_1014 : f32 = u_xlat9.x;
        u_xlat8.w = x_1014;
        let x_1016 : vec4<f32> = u_xlat6;
        let x_1019 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.y, x_1022.w, x_1022.x, x_1022.w));
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1028 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y)) + vec2<f32>(x_1031.z, x_1031.w));
        let x_1035 : f32 = u_xlat8.y;
        u_xlat9.w = x_1035;
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.y, x_1037.z);
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1039.x, x_1038.x, x_1039.z, x_1038.y);
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1053 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.w, x_1056.y, x_1056.w, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat6;
        let x_1062 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.x, x_1065.w, x_1065.z, x_1065.w));
        let x_1068 : vec4<f32> = u_xlat7;
        let x_1070 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1068.x, x_1068.x, x_1068.x, x_1068.y) * vec4<f32>(x_1070.z, x_1070.w, x_1070.y, x_1070.z));
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1074.y, x_1074.y, x_1074.z, x_1074.z) * x_1076);
        let x_1080 : f32 = u_xlat7.z;
        let x_1082 : f32 = u_xlat12.y;
        u_xlat83 = (x_1080 * x_1082);
        let x_1085 : vec4<f32> = u_xlat10;
        let x_1086 : vec2<f32> = vec2<f32>(x_1085.x, x_1085.y);
        let x_1088 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
        let x_1095 : vec3<f32> = txVec4;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1095.xy, x_1095.z);
        u_xlat6.x = x_1097;
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1111 : vec3<f32> = txVec5;
        let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1111.xy, x_1111.z);
        u_xlat32 = x_1113;
        let x_1114 : f32 = u_xlat32;
        let x_1116 : f32 = u_xlat13.y;
        u_xlat32 = (x_1114 * x_1116);
        let x_1119 : f32 = u_xlat13.x;
        let x_1121 : f32 = u_xlat6.x;
        let x_1123 : f32 = u_xlat32;
        u_xlat6.x = ((x_1119 * x_1121) + x_1123);
        let x_1127 : vec2<f32> = u_xlat58;
        let x_1129 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec6;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat32 = x_1138;
        let x_1140 : f32 = u_xlat13.z;
        let x_1141 : f32 = u_xlat32;
        let x_1144 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1140 * x_1141) + x_1144);
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.x, x_1148.y);
        let x_1151 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec7;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1158.xy, x_1158.z);
        u_xlat32 = x_1160;
        let x_1162 : f32 = u_xlat13.w;
        let x_1163 : f32 = u_xlat32;
        let x_1166 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1162 * x_1163) + x_1166);
        let x_1170 : vec4<f32> = u_xlat11;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.x, x_1170.y);
        let x_1173 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec8;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1180.xy, x_1180.z);
        u_xlat32 = x_1182;
        let x_1184 : f32 = u_xlat14.x;
        let x_1185 : f32 = u_xlat32;
        let x_1188 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1184 * x_1185) + x_1188);
        let x_1192 : vec4<f32> = u_xlat11;
        let x_1193 : vec2<f32> = vec2<f32>(x_1192.z, x_1192.w);
        let x_1195 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1202 : vec3<f32> = txVec9;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1202.xy, x_1202.z);
        u_xlat32 = x_1204;
        let x_1206 : f32 = u_xlat14.y;
        let x_1207 : f32 = u_xlat32;
        let x_1210 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1206 * x_1207) + x_1210);
        let x_1214 : vec4<f32> = u_xlat9;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec10;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat32 = x_1226;
        let x_1228 : f32 = u_xlat14.z;
        let x_1229 : f32 = u_xlat32;
        let x_1232 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1228 * x_1229) + x_1232);
        let x_1236 : vec4<f32> = u_xlat8;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1246 : vec3<f32> = txVec11;
        let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1246.xy, x_1246.z);
        u_xlat32 = x_1248;
        let x_1250 : f32 = u_xlat14.w;
        let x_1251 : f32 = u_xlat32;
        let x_1254 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1250 * x_1251) + x_1254);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.z, x_1258.w);
        let x_1261 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec12;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
        u_xlat32 = x_1270;
        let x_1271 : f32 = u_xlat83;
        let x_1272 : f32 = u_xlat32;
        let x_1275 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1271 * x_1272) + x_1275);
      } else {
        let x_1278 : vec4<f32> = vs_TEXCOORD8;
        let x_1281 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.z, x_1281.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1285 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1289 : vec2<f32> = floor(vec2<f32>(x_1287.x, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec4<f32> = vs_TEXCOORD8;
        let x_1295 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(x_1295.z, x_1295.w)) + -(vec2<f32>(x_1298.x, x_1298.y)));
        let x_1302 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1302.x, x_1302.x, x_1302.y, x_1302.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1305 : vec4<f32> = u_xlat7;
        let x_1307 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1305.x, x_1305.x, x_1305.z, x_1305.z) * vec4<f32>(x_1307.x, x_1307.x, x_1307.z, x_1307.z));
        let x_1310 : vec4<f32> = u_xlat8;
        let x_1314 : vec2<f32> = (vec2<f32>(x_1310.y, x_1310.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1315.x, x_1314.x, x_1315.z, x_1314.y);
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1320 : vec2<f32> = u_xlat58;
        let x_1322 : vec2<f32> = ((vec2<f32>(x_1317.x, x_1317.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1320));
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1323.w);
        let x_1325 : vec2<f32> = u_xlat58;
        let x_1327 : vec2<f32> = (-(x_1325) + vec2<f32>(1.0f, 1.0f));
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
        let x_1330 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1330, vec2<f32>(0.0f, 0.0f));
        let x_1332 : vec2<f32> = u_xlat60;
        let x_1334 : vec2<f32> = u_xlat60;
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1338 : vec2<f32> = ((-(x_1332) * x_1334) + vec2<f32>(x_1336.x, x_1336.y));
        let x_1339 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1341, vec2<f32>(0.0f, 0.0f));
        let x_1344 : vec2<f32> = u_xlat60;
        let x_1346 : vec2<f32> = u_xlat60;
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1350 : vec2<f32> = ((-(x_1344) * x_1346) + vec2<f32>(x_1348.y, x_1348.w));
        let x_1351 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1350.x, x_1351.y, x_1350.y);
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1356 : vec2<f32> = (vec2<f32>(x_1353.x, x_1353.y) + vec2<f32>(2.0f, 2.0f));
        let x_1357 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1359 : vec3<f32> = u_xlat33;
        let x_1361 : vec2<f32> = (vec2<f32>(x_1359.x, x_1359.z) + vec2<f32>(2.0f, 2.0f));
        let x_1362 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1362.x, x_1361.x, x_1362.z, x_1361.y);
        let x_1365 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1365 * 0.08163200318813323975f);
        let x_1369 : vec4<f32> = u_xlat7;
        let x_1372 : vec3<f32> = (vec3<f32>(x_1369.z, x_1369.x, x_1369.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1378 : vec2<f32> = (vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1379 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1382 : f32 = u_xlat11.y;
        u_xlat10.x = x_1382;
        let x_1384 : vec2<f32> = u_xlat58;
        let x_1391 : vec2<f32> = ((vec2<f32>(x_1384.x, x_1384.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1392 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1392.x, x_1391.x, x_1392.z, x_1391.y);
        let x_1394 : vec2<f32> = u_xlat58;
        let x_1398 : vec2<f32> = ((vec2<f32>(x_1394.x, x_1394.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1398.x, x_1399.y, x_1398.y, x_1399.w);
        let x_1402 : f32 = u_xlat7.x;
        u_xlat8.y = x_1402;
        let x_1405 : f32 = u_xlat9.y;
        u_xlat8.w = x_1405;
        let x_1407 : vec4<f32> = u_xlat8;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1407 + x_1408);
        let x_1410 : vec2<f32> = u_xlat58;
        let x_1413 : vec2<f32> = ((vec2<f32>(x_1410.y, x_1410.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1414.x, x_1413.x, x_1414.z, x_1413.y);
        let x_1416 : vec2<f32> = u_xlat58;
        let x_1419 : vec2<f32> = ((vec2<f32>(x_1416.y, x_1416.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1419.x, x_1420.y, x_1419.y, x_1420.w);
        let x_1423 : f32 = u_xlat7.y;
        u_xlat9.y = x_1423;
        let x_1425 : vec4<f32> = u_xlat9;
        let x_1426 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1425 + x_1426);
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1429 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1428 / x_1429);
        let x_1431 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1431 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1437 : vec4<f32> = u_xlat9;
        let x_1438 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1437 / x_1438);
        let x_1440 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1440 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1445 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1442.w, x_1442.x, x_1442.y, x_1442.z) * vec4<f32>(x_1445.x, x_1445.x, x_1445.x, x_1445.x));
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1448.x, x_1448.w, x_1448.y, x_1448.z) * vec4<f32>(x_1451.y, x_1451.y, x_1451.y, x_1451.y));
        let x_1454 : vec4<f32> = u_xlat8;
        let x_1455 : vec3<f32> = vec3<f32>(x_1454.y, x_1454.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1455.x, x_1456.y, x_1455.y, x_1455.z);
        let x_1459 : f32 = u_xlat9.x;
        u_xlat11.y = x_1459;
        let x_1461 : vec4<f32> = u_xlat6;
        let x_1464 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1461.x, x_1461.y, x_1461.x, x_1461.y) * vec4<f32>(x_1464.x, x_1464.y, x_1464.x, x_1464.y)) + vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat6;
        let x_1473 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1476.w, x_1476.y));
        let x_1480 : f32 = u_xlat11.y;
        u_xlat8.y = x_1480;
        let x_1483 : f32 = u_xlat9.z;
        u_xlat11.y = x_1483;
        let x_1485 : vec4<f32> = u_xlat6;
        let x_1488 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1491 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y) * vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.y)) + vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1491.y));
        let x_1494 : vec4<f32> = u_xlat6;
        let x_1497 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat11;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(x_1497.x, x_1497.y)) + vec2<f32>(x_1500.w, x_1500.y));
        let x_1503 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat11.y;
        u_xlat8.z = x_1506;
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y) * vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y)) + vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.z));
        let x_1519 : f32 = u_xlat9.w;
        u_xlat11.y = x_1519;
        let x_1522 : vec4<f32> = u_xlat6;
        let x_1525 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y) * vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y)) + vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1528.y));
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.x, x_1535.y)) + vec2<f32>(x_1538.w, x_1538.y));
        let x_1542 : f32 = u_xlat11.y;
        u_xlat8.w = x_1542;
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1548.x, x_1548.y)) + vec2<f32>(x_1551.x, x_1551.w));
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1555 : vec3<f32> = vec3<f32>(x_1554.x, x_1554.z, x_1554.w);
        let x_1556 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1555.x, x_1556.y, x_1555.y, x_1555.z);
        let x_1558 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1558.x, x_1558.y, x_1558.x, x_1558.y) * vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.y)) + vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1564.y));
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.w, x_1574.y));
        let x_1578 : f32 = u_xlat8.x;
        u_xlat9.x = x_1578;
        let x_1580 : vec4<f32> = u_xlat6;
        let x_1583 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat9;
        let x_1588 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(x_1583.x, x_1583.y)) + vec2<f32>(x_1586.x, x_1586.y));
        let x_1589 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1588.x, x_1588.y, x_1589.z, x_1589.w);
        let x_1592 : vec4<f32> = u_xlat7;
        let x_1594 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1592.x, x_1592.x, x_1592.x, x_1592.x) * x_1594);
        let x_1597 : vec4<f32> = u_xlat7;
        let x_1599 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1597.y, x_1597.y, x_1597.y, x_1597.y) * x_1599);
        let x_1602 : vec4<f32> = u_xlat7;
        let x_1604 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1602.z, x_1602.z, x_1602.z, x_1602.z) * x_1604);
        let x_1606 : vec4<f32> = u_xlat7;
        let x_1608 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1606.w, x_1606.w, x_1606.w, x_1606.w) * x_1608);
        let x_1611 : vec4<f32> = u_xlat12;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec13;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat83 = x_1623;
        let x_1625 : vec4<f32> = u_xlat12;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec14;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat8.x = x_1637;
        let x_1640 : f32 = u_xlat8.x;
        let x_1642 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1640 * x_1642);
        let x_1646 : f32 = u_xlat17.x;
        let x_1647 : f32 = u_xlat83;
        let x_1650 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1646 * x_1647) + x_1650);
        let x_1653 : vec2<f32> = u_xlat58;
        let x_1655 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec15;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat58.x = x_1664;
        let x_1667 : f32 = u_xlat17.z;
        let x_1669 : f32 = u_xlat58.x;
        let x_1671 : f32 = u_xlat83;
        u_xlat83 = ((x_1667 * x_1669) + x_1671);
        let x_1674 : vec4<f32> = u_xlat15;
        let x_1675 : vec2<f32> = vec2<f32>(x_1674.x, x_1674.y);
        let x_1677 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec16;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
        u_xlat58.x = x_1686;
        let x_1689 : f32 = u_xlat17.w;
        let x_1691 : f32 = u_xlat58.x;
        let x_1693 : f32 = u_xlat83;
        u_xlat83 = ((x_1689 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat13;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec17;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1706.xy, x_1706.z);
        u_xlat58.x = x_1708;
        let x_1711 : f32 = u_xlat18.x;
        let x_1713 : f32 = u_xlat58.x;
        let x_1715 : f32 = u_xlat83;
        u_xlat83 = ((x_1711 * x_1713) + x_1715);
        let x_1718 : vec4<f32> = u_xlat13;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.z, x_1718.w);
        let x_1721 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec18;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat58.x = x_1730;
        let x_1733 : f32 = u_xlat18.y;
        let x_1735 : f32 = u_xlat58.x;
        let x_1737 : f32 = u_xlat83;
        u_xlat83 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat14;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
        let x_1743 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec19;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
        u_xlat58.x = x_1752;
        let x_1755 : f32 = u_xlat18.z;
        let x_1757 : f32 = u_xlat58.x;
        let x_1759 : f32 = u_xlat83;
        u_xlat83 = ((x_1755 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat15;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.z, x_1762.w);
        let x_1765 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec20;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat58.x = x_1774;
        let x_1777 : f32 = u_xlat18.w;
        let x_1779 : f32 = u_xlat58.x;
        let x_1781 : f32 = u_xlat83;
        u_xlat83 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec4<f32> = u_xlat16;
        let x_1785 : vec2<f32> = vec2<f32>(x_1784.x, x_1784.y);
        let x_1787 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec21;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1794.xy, x_1794.z);
        u_xlat58.x = x_1796;
        let x_1799 : f32 = u_xlat19.x;
        let x_1801 : f32 = u_xlat58.x;
        let x_1803 : f32 = u_xlat83;
        u_xlat83 = ((x_1799 * x_1801) + x_1803);
        let x_1806 : vec4<f32> = u_xlat16;
        let x_1807 : vec2<f32> = vec2<f32>(x_1806.z, x_1806.w);
        let x_1809 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1807.x, x_1807.y, x_1809);
        let x_1816 : vec3<f32> = txVec22;
        let x_1818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1816.xy, x_1816.z);
        u_xlat58.x = x_1818;
        let x_1821 : f32 = u_xlat19.y;
        let x_1823 : f32 = u_xlat58.x;
        let x_1825 : f32 = u_xlat83;
        u_xlat83 = ((x_1821 * x_1823) + x_1825);
        let x_1828 : vec2<f32> = u_xlat34;
        let x_1830 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec23;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1837.xy, x_1837.z);
        u_xlat58.x = x_1839;
        let x_1842 : f32 = u_xlat19.z;
        let x_1844 : f32 = u_xlat58.x;
        let x_1846 : f32 = u_xlat83;
        u_xlat83 = ((x_1842 * x_1844) + x_1846);
        let x_1849 : vec2<f32> = u_xlat66;
        let x_1851 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec24;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1858.xy, x_1858.z);
        u_xlat58.x = x_1860;
        let x_1863 : f32 = u_xlat19.w;
        let x_1865 : f32 = u_xlat58.x;
        let x_1867 : f32 = u_xlat83;
        u_xlat83 = ((x_1863 * x_1865) + x_1867);
        let x_1870 : vec4<f32> = u_xlat11;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
        let x_1873 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec25;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
        u_xlat58.x = x_1882;
        let x_1885 : f32 = u_xlat7.x;
        let x_1887 : f32 = u_xlat58.x;
        let x_1889 : f32 = u_xlat83;
        u_xlat83 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec4<f32> = u_xlat11;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.z, x_1892.w);
        let x_1895 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec26;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1902.xy, x_1902.z);
        u_xlat58.x = x_1904;
        let x_1907 : f32 = u_xlat7.y;
        let x_1909 : f32 = u_xlat58.x;
        let x_1911 : f32 = u_xlat83;
        u_xlat83 = ((x_1907 * x_1909) + x_1911);
        let x_1914 : vec2<f32> = u_xlat61;
        let x_1916 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
        let x_1923 : vec3<f32> = txVec27;
        let x_1925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1923.xy, x_1923.z);
        u_xlat58.x = x_1925;
        let x_1928 : f32 = u_xlat7.z;
        let x_1930 : f32 = u_xlat58.x;
        let x_1932 : f32 = u_xlat83;
        u_xlat83 = ((x_1928 * x_1930) + x_1932);
        let x_1935 : vec4<f32> = u_xlat6;
        let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
        let x_1938 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec28;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat6.x = x_1947;
        let x_1950 : f32 = u_xlat7.w;
        let x_1952 : f32 = u_xlat6.x;
        let x_1954 : f32 = u_xlat83;
        u_xlat82 = ((x_1950 * x_1952) + x_1954);
      }
    }
  } else {
    let x_1958 : vec4<f32> = vs_TEXCOORD8;
    let x_1959 : vec2<f32> = vec2<f32>(x_1958.x, x_1958.y);
    let x_1961 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
    let x_1968 : vec3<f32> = txVec29;
    let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1968.xy, x_1968.z);
    u_xlat82 = x_1970;
  }
  let x_1972 : f32 = x_721.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1972) + 1.0f);
  let x_1975 : f32 = u_xlat82;
  let x_1977 : f32 = x_721.x_MainLightShadowParams.x;
  let x_1979 : f32 = u_xlat83;
  u_xlat82 = ((x_1975 * x_1977) + x_1979);
  let x_1982 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (0.0f >= x_1982);
  let x_1986 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1986 >= 1.0f);
  let x_1988 : bool = u_xlatb83;
  let x_1989 : bool = u_xlatb6;
  u_xlatb83 = (x_1988 | x_1989);
  let x_1991 : bool = u_xlatb83;
  let x_1992 : f32 = u_xlat82;
  u_xlat82 = select(x_1992, 1.0f, x_1991);
  let x_1994 : vec3<f32> = vs_TEXCOORD7;
  let x_1996 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_1998 : vec3<f32> = (x_1994 + -(x_1996));
  let x_1999 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec4<f32> = u_xlat6;
  let x_2003 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : f32 = u_xlat83;
  let x_2008 : f32 = x_721.x_MainLightShadowParams.z;
  let x_2011 : f32 = x_721.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2006 * x_2008) + x_2011);
  let x_2015 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2015, 0.0f, 1.0f);
  let x_2018 : f32 = u_xlat82;
  u_xlat32 = (-(x_2018) + 1.0f);
  let x_2022 : f32 = u_xlat6.x;
  let x_2023 : f32 = u_xlat32;
  let x_2025 : f32 = u_xlat82;
  u_xlat82 = ((x_2022 * x_2023) + x_2025);
  let x_2034 : f32 = x_2032.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2034 == -1.0f));
  let x_2036 : bool = u_xlatb6;
  if (x_2036) {
    let x_2039 : vec3<f32> = vs_TEXCOORD7;
    let x_2042 : vec4<f32> = x_2032.x_MainLightWorldToLight[1i];
    let x_2044 : vec2<f32> = (vec2<f32>(x_2039.y, x_2039.y) * vec2<f32>(x_2042.x, x_2042.y));
    let x_2045 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2044.x, x_2044.y, x_2045.z, x_2045.w);
    let x_2048 : vec4<f32> = x_2032.x_MainLightWorldToLight[0i];
    let x_2050 : vec3<f32> = vs_TEXCOORD7;
    let x_2053 : vec4<f32> = u_xlat6;
    let x_2055 : vec2<f32> = ((vec2<f32>(x_2048.x, x_2048.y) * vec2<f32>(x_2050.x, x_2050.x)) + vec2<f32>(x_2053.x, x_2053.y));
    let x_2056 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
    let x_2059 : vec4<f32> = x_2032.x_MainLightWorldToLight[2i];
    let x_2061 : vec3<f32> = vs_TEXCOORD7;
    let x_2064 : vec4<f32> = u_xlat6;
    let x_2066 : vec2<f32> = ((vec2<f32>(x_2059.x, x_2059.y) * vec2<f32>(x_2061.z, x_2061.z)) + vec2<f32>(x_2064.x, x_2064.y));
    let x_2067 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2066.x, x_2066.y, x_2067.z, x_2067.w);
    let x_2069 : vec4<f32> = u_xlat6;
    let x_2073 : vec4<f32> = x_2032.x_MainLightWorldToLight[3i];
    let x_2075 : vec2<f32> = (vec2<f32>(x_2069.x, x_2069.y) + vec2<f32>(x_2073.x, x_2073.y));
    let x_2076 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2075.x, x_2075.y, x_2076.z, x_2076.w);
    let x_2078 : vec4<f32> = u_xlat6;
    let x_2081 : vec2<f32> = ((vec2<f32>(x_2078.x, x_2078.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2082 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2081.x, x_2081.y, x_2082.z, x_2082.w);
    let x_2089 : vec4<f32> = u_xlat6;
    let x_2092 : f32 = x_111.x_GlobalMipBias.x;
    let x_2093 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2089.x, x_2089.y), x_2092);
    u_xlat6 = x_2093;
    let x_2098 : f32 = x_2032.x_MainLightCookieTextureFormat;
    let x_2100 : f32 = x_2032.x_MainLightCookieTextureFormat;
    let x_2102 : f32 = x_2032.x_MainLightCookieTextureFormat;
    let x_2104 : f32 = x_2032.x_MainLightCookieTextureFormat;
    let x_2105 : vec4<f32> = vec4<f32>(x_2098, x_2100, x_2102, x_2104);
    let x_2112 : vec4<bool> = (vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2105.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2112.x, x_2112.y);
    let x_2116 : bool = u_xlatb7.y;
    if (x_2116) {
      let x_2121 : f32 = u_xlat6.w;
      x_2117 = x_2121;
    } else {
      let x_2124 : f32 = u_xlat6.x;
      x_2117 = x_2124;
    }
    let x_2125 : f32 = x_2117;
    u_xlat84 = x_2125;
    let x_2127 : bool = u_xlatb7.x;
    if (x_2127) {
      let x_2131 : vec4<f32> = u_xlat6;
      x_2128 = vec3<f32>(x_2131.x, x_2131.y, x_2131.z);
    } else {
      let x_2134 : f32 = u_xlat84;
      x_2128 = vec3<f32>(x_2134, x_2134, x_2134);
    }
    let x_2136 : vec3<f32> = x_2128;
    let x_2137 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2143 : vec4<f32> = u_xlat6;
  let x_2146 : vec4<f32> = x_111.x_MainLightColor;
  let x_2148 : vec3<f32> = (vec3<f32>(x_2143.x, x_2143.y, x_2143.z) * vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
  let x_2151 : vec3<f32> = u_xlat2;
  let x_2153 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(x_2151), vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
  let x_2156 : f32 = u_xlat84;
  let x_2157 : f32 = u_xlat84;
  u_xlat84 = (x_2156 + x_2157);
  let x_2159 : vec4<f32> = u_xlat1;
  let x_2161 : f32 = u_xlat84;
  let x_2165 : vec3<f32> = u_xlat2;
  let x_2167 : vec3<f32> = ((vec3<f32>(x_2159.x, x_2159.y, x_2159.z) * -(vec3<f32>(x_2161, x_2161, x_2161))) + -(x_2165));
  let x_2168 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
  let x_2170 : vec4<f32> = u_xlat1;
  let x_2172 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_2170.x, x_2170.y, x_2170.z), x_2172);
  let x_2174 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2174, 0.0f, 1.0f);
  let x_2176 : f32 = u_xlat84;
  u_xlat84 = (-(x_2176) + 1.0f);
  let x_2179 : f32 = u_xlat84;
  let x_2180 : f32 = u_xlat84;
  u_xlat84 = (x_2179 * x_2180);
  let x_2182 : f32 = u_xlat84;
  let x_2183 : f32 = u_xlat84;
  u_xlat84 = (x_2182 * x_2183);
  let x_2187 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2187) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2194 : f32 = u_xlat0.x;
  let x_2195 : f32 = u_xlat85;
  u_xlat0.x = (x_2194 * x_2195);
  let x_2199 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2199 * 6.0f);
  let x_2211 : vec4<f32> = u_xlat7;
  let x_2214 : f32 = u_xlat0.x;
  let x_2215 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2211.x, x_2211.y, x_2211.z), x_2214);
  u_xlat7 = x_2215;
  let x_2217 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2217 + -1.0f);
  let x_2225 : f32 = x_2223.unity_SpecCube0_HDR.w;
  let x_2227 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2225 * x_2227) + 1.0f);
  let x_2232 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2232, 0.0f);
  let x_2236 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2236);
  let x_2240 : f32 = u_xlat0.x;
  let x_2242 : f32 = x_2223.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2240 * x_2242);
  let x_2246 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2246);
  let x_2250 : f32 = u_xlat0.x;
  let x_2252 : f32 = x_2223.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2250 * x_2252);
  let x_2255 : vec4<f32> = u_xlat7;
  let x_2257 : vec3<f32> = u_xlat0;
  let x_2259 : vec3<f32> = (vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * vec3<f32>(x_2257.x, x_2257.x, x_2257.x));
  let x_2260 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
  let x_2262 : f32 = u_xlat52;
  let x_2264 : f32 = u_xlat52;
  let x_2268 : vec2<f32> = ((vec2<f32>(x_2262, x_2262) * vec2<f32>(x_2264, x_2264)) + vec2<f32>(-1.0f, 1.0f));
  let x_2269 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2268.x, x_2269.y, x_2268.y);
  let x_2272 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2272);
  let x_2274 : vec4<f32> = u_xlat5;
  let x_2277 : f32 = u_xlat80;
  let x_2279 : vec3<f32> = (-(vec3<f32>(x_2274.x, x_2274.y, x_2274.z)) + vec3<f32>(x_2277, x_2277, x_2277));
  let x_2280 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
  let x_2282 : f32 = u_xlat84;
  let x_2284 : vec4<f32> = u_xlat8;
  let x_2287 : vec4<f32> = u_xlat5;
  let x_2289 : vec3<f32> = ((vec3<f32>(x_2282, x_2282, x_2282) * vec3<f32>(x_2284.x, x_2284.y, x_2284.z)) + vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2290 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
  let x_2292 : f32 = u_xlat52;
  let x_2294 : vec4<f32> = u_xlat8;
  let x_2296 : vec3<f32> = (vec3<f32>(x_2292, x_2292, x_2292) * vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
  let x_2297 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
  let x_2299 : vec4<f32> = u_xlat7;
  let x_2301 : vec4<f32> = u_xlat8;
  let x_2303 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.y, x_2299.z) * vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
  let x_2304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
  let x_2306 : vec4<f32> = u_xlat3;
  let x_2308 : vec4<f32> = u_xlat4;
  let x_2311 : vec4<f32> = u_xlat7;
  let x_2313 : vec3<f32> = ((vec3<f32>(x_2306.x, x_2306.y, x_2306.z) * vec3<f32>(x_2308.x, x_2308.y, x_2308.z)) + vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
  let x_2316 : f32 = u_xlat82;
  let x_2318 : f32 = x_2223.unity_LightData.z;
  u_xlat52 = (x_2316 * x_2318);
  let x_2320 : vec4<f32> = u_xlat1;
  let x_2323 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
  let x_2326 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2326, 0.0f, 1.0f);
  let x_2328 : f32 = u_xlat52;
  let x_2329 : f32 = u_xlat80;
  u_xlat52 = (x_2328 * x_2329);
  let x_2331 : f32 = u_xlat52;
  let x_2333 : vec4<f32> = u_xlat6;
  let x_2335 : vec3<f32> = (vec3<f32>(x_2331, x_2331, x_2331) * vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
  let x_2336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
  let x_2338 : vec3<f32> = u_xlat2;
  let x_2340 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2342 : vec3<f32> = (x_2338 + vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
  let x_2343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2345 : vec4<f32> = u_xlat7;
  let x_2347 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2345.x, x_2345.y, x_2345.z), vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : f32 = u_xlat52;
  u_xlat52 = max(x_2350, 1.17549435e-38f);
  let x_2353 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2353);
  let x_2355 : f32 = u_xlat52;
  let x_2357 : vec4<f32> = u_xlat7;
  let x_2359 : vec3<f32> = (vec3<f32>(x_2355, x_2355, x_2355) * vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
  let x_2360 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
  let x_2362 : vec4<f32> = u_xlat1;
  let x_2364 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2362.x, x_2362.y, x_2362.z), vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
  let x_2367 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2367, 0.0f, 1.0f);
  let x_2370 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2372 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2370.x, x_2370.y, x_2370.z), vec3<f32>(x_2372.x, x_2372.y, x_2372.z));
  let x_2375 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2375, 0.0f, 1.0f);
  let x_2377 : f32 = u_xlat52;
  let x_2378 : f32 = u_xlat52;
  u_xlat52 = (x_2377 * x_2378);
  let x_2380 : f32 = u_xlat52;
  let x_2382 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2380 * x_2382) + 1.00001001358032226562f);
  let x_2386 : f32 = u_xlat80;
  let x_2387 : f32 = u_xlat80;
  u_xlat80 = (x_2386 * x_2387);
  let x_2389 : f32 = u_xlat52;
  let x_2390 : f32 = u_xlat52;
  u_xlat52 = (x_2389 * x_2390);
  let x_2392 : f32 = u_xlat80;
  u_xlat80 = max(x_2392, 0.10000000149011611938f);
  let x_2395 : f32 = u_xlat52;
  let x_2396 : f32 = u_xlat80;
  u_xlat52 = (x_2395 * x_2396);
  let x_2398 : f32 = u_xlat81;
  let x_2399 : f32 = u_xlat52;
  u_xlat52 = (x_2398 * x_2399);
  let x_2401 : f32 = u_xlat79;
  let x_2402 : f32 = u_xlat52;
  u_xlat52 = (x_2401 / x_2402);
  let x_2404 : vec4<f32> = u_xlat5;
  let x_2406 : f32 = u_xlat52;
  let x_2409 : vec4<f32> = u_xlat4;
  let x_2411 : vec3<f32> = ((vec3<f32>(x_2404.x, x_2404.y, x_2404.z) * vec3<f32>(x_2406, x_2406, x_2406)) + vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
  let x_2412 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
  let x_2414 : vec4<f32> = u_xlat6;
  let x_2416 : vec4<f32> = u_xlat7;
  let x_2418 : vec3<f32> = (vec3<f32>(x_2414.x, x_2414.y, x_2414.z) * vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
  let x_2422 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2424 : f32 = x_2223.unity_LightData.y;
  u_xlat52 = min(x_2422, x_2424);
  let x_2428 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2428));
  let x_2431 : f32 = u_xlat83;
  let x_2433 : f32 = x_721.x_AdditionalShadowFadeParams.x;
  let x_2436 : f32 = x_721.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2431 * x_2433) + x_2436);
  let x_2438 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2438, 0.0f, 1.0f);
  let x_2441 : f32 = x_2032.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2443 : f32 = x_2032.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2445 : f32 = x_2032.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2447 : f32 = x_2032.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2448 : vec4<f32> = vec4<f32>(x_2441, x_2443, x_2445, x_2447);
  let x_2454 : vec4<bool> = (vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2448.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2454.x, x_2454.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2466 : u32 = u_xlatu_loop_1;
    let x_2467 : u32 = u_xlatu52;
    if ((x_2466 < x_2467)) {
    } else {
      break;
    }
    let x_2470 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2470 >> 2u);
    let x_2474 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2474 & 3u));
    let x_2477 : u32 = u_xlatu83;
    let x_2480 : vec4<f32> = x_2223.unity_LightIndices[bitcast<i32>(x_2477)];
    let x_2490 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2495 : vec4<u32> = indexable[x_2490];
    u_xlat83 = dot(x_2480, bitcast<vec4<f32>>(x_2495));
    let x_2499 : f32 = u_xlat83;
    u_xlati83 = i32(x_2499);
    let x_2501 : vec3<f32> = vs_TEXCOORD7;
    let x_2512 : i32 = u_xlati83;
    let x_2514 : vec4<f32> = x_2511.x_AdditionalLightsPosition[x_2512];
    let x_2517 : i32 = u_xlati83;
    let x_2519 : vec4<f32> = x_2511.x_AdditionalLightsPosition[x_2517];
    let x_2521 : vec3<f32> = ((-(x_2501) * vec3<f32>(x_2514.w, x_2514.w, x_2514.w)) + vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
    let x_2522 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);
    let x_2524 : vec4<f32> = u_xlat9;
    let x_2526 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2524.x, x_2524.y, x_2524.z), vec3<f32>(x_2526.x, x_2526.y, x_2526.z));
    let x_2529 : f32 = u_xlat84;
    u_xlat84 = max(x_2529, 0.00006103515625f);
    let x_2532 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2532);
    let x_2534 : f32 = u_xlat59;
    let x_2536 : vec4<f32> = u_xlat9;
    let x_2538 : vec3<f32> = (vec3<f32>(x_2534, x_2534, x_2534) * vec3<f32>(x_2536.x, x_2536.y, x_2536.z));
    let x_2539 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
    let x_2541 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2541);
    let x_2543 : f32 = u_xlat84;
    let x_2544 : i32 = u_xlati83;
    let x_2546 : f32 = x_2511.x_AdditionalLightsAttenuation[x_2544].x;
    u_xlat84 = (x_2543 * x_2546);
    let x_2548 : f32 = u_xlat84;
    let x_2550 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2548) * x_2550) + 1.0f);
    let x_2553 : f32 = u_xlat84;
    u_xlat84 = max(x_2553, 0.0f);
    let x_2555 : f32 = u_xlat84;
    let x_2556 : f32 = u_xlat84;
    u_xlat84 = (x_2555 * x_2556);
    let x_2558 : f32 = u_xlat84;
    let x_2559 : f32 = u_xlat85;
    u_xlat84 = (x_2558 * x_2559);
    let x_2561 : i32 = u_xlati83;
    let x_2563 : vec4<f32> = x_2511.x_AdditionalLightsSpotDir[x_2561];
    let x_2565 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2563.x, x_2563.y, x_2563.z), vec3<f32>(x_2565.x, x_2565.y, x_2565.z));
    let x_2568 : f32 = u_xlat85;
    let x_2569 : i32 = u_xlati83;
    let x_2571 : f32 = x_2511.x_AdditionalLightsAttenuation[x_2569].z;
    let x_2573 : i32 = u_xlati83;
    let x_2575 : f32 = x_2511.x_AdditionalLightsAttenuation[x_2573].w;
    u_xlat85 = ((x_2568 * x_2571) + x_2575);
    let x_2577 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2577, 0.0f, 1.0f);
    let x_2579 : f32 = u_xlat85;
    let x_2580 : f32 = u_xlat85;
    u_xlat85 = (x_2579 * x_2580);
    let x_2582 : f32 = u_xlat84;
    let x_2583 : f32 = u_xlat85;
    u_xlat84 = (x_2582 * x_2583);
    let x_2586 : i32 = u_xlati83;
    let x_2588 : f32 = x_721.x_AdditionalShadowParams[x_2586].w;
    u_xlati85 = i32(x_2588);
    let x_2591 : i32 = u_xlati85;
    u_xlatb86 = (x_2591 >= 0i);
    let x_2593 : bool = u_xlatb86;
    if (x_2593) {
      let x_2597 : i32 = u_xlati83;
      let x_2599 : f32 = x_721.x_AdditionalShadowParams[x_2597].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2599, x_2599, x_2599, x_2599))));
      let x_2603 : bool = u_xlatb86;
      if (x_2603) {
        let x_2608 : vec4<f32> = u_xlat10;
        let x_2611 : vec4<f32> = u_xlat10;
        let x_2614 : vec4<bool> = (abs(vec4<f32>(x_2608.z, x_2608.z, x_2608.y, x_2608.z)) >= abs(vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.x)));
        let x_2616 : vec3<bool> = vec3<bool>(x_2614.x, x_2614.y, x_2614.z);
        let x_2617 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
        let x_2620 : bool = u_xlatb11.y;
        let x_2622 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2620 & x_2622);
        let x_2624 : vec4<f32> = u_xlat10;
        let x_2627 : vec4<bool> = (-(vec4<f32>(x_2624.z, x_2624.y, x_2624.z, x_2624.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2628 : vec3<bool> = vec3<bool>(x_2627.x, x_2627.y, x_2627.w);
        let x_2629 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2628.x, x_2628.y, x_2629.z, x_2628.z);
        let x_2632 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2632);
        let x_2637 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2637);
        let x_2643 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2643);
        let x_2646 : bool = u_xlatb11.z;
        if (x_2646) {
          let x_2651 : f32 = u_xlat11.y;
          x_2647 = x_2651;
        } else {
          let x_2653 : f32 = u_xlat87;
          x_2647 = x_2653;
        }
        let x_2654 : f32 = x_2647;
        u_xlat87 = x_2654;
        let x_2656 : bool = u_xlatb86;
        if (x_2656) {
          let x_2661 : f32 = u_xlat11.x;
          x_2657 = x_2661;
        } else {
          let x_2663 : f32 = u_xlat87;
          x_2657 = x_2663;
        }
        let x_2664 : f32 = x_2657;
        u_xlat86 = x_2664;
        let x_2665 : i32 = u_xlati83;
        let x_2667 : f32 = x_721.x_AdditionalShadowParams[x_2665].w;
        u_xlat87 = trunc(x_2667);
        let x_2669 : f32 = u_xlat86;
        let x_2670 : f32 = u_xlat87;
        u_xlat86 = (x_2669 + x_2670);
        let x_2672 : f32 = u_xlat86;
        u_xlati85 = i32(x_2672);
      }
      let x_2674 : i32 = u_xlati85;
      u_xlati85 = (x_2674 << bitcast<u32>(2i));
      let x_2676 : vec3<f32> = vs_TEXCOORD7;
      let x_2678 : i32 = u_xlati85;
      let x_2681 : i32 = u_xlati85;
      let x_2685 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[((x_2678 + 1i) / 4i)][((x_2681 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2676.y, x_2676.y, x_2676.y, x_2676.y) * x_2685);
      let x_2687 : i32 = u_xlati85;
      let x_2689 : i32 = u_xlati85;
      let x_2692 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[(x_2687 / 4i)][(x_2689 % 4i)];
      let x_2693 : vec3<f32> = vs_TEXCOORD7;
      let x_2696 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2692 * vec4<f32>(x_2693.x, x_2693.x, x_2693.x, x_2693.x)) + x_2696);
      let x_2698 : i32 = u_xlati85;
      let x_2701 : i32 = u_xlati85;
      let x_2705 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[((x_2698 + 2i) / 4i)][((x_2701 + 2i) % 4i)];
      let x_2706 : vec3<f32> = vs_TEXCOORD7;
      let x_2709 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2705 * vec4<f32>(x_2706.z, x_2706.z, x_2706.z, x_2706.z)) + x_2709);
      let x_2711 : vec4<f32> = u_xlat11;
      let x_2712 : i32 = u_xlati85;
      let x_2715 : i32 = u_xlati85;
      let x_2719 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[((x_2712 + 3i) / 4i)][((x_2715 + 3i) % 4i)];
      u_xlat11 = (x_2711 + x_2719);
      let x_2721 : vec4<f32> = u_xlat11;
      let x_2723 : vec4<f32> = u_xlat11;
      let x_2725 : vec3<f32> = (vec3<f32>(x_2721.x, x_2721.y, x_2721.z) / vec3<f32>(x_2723.w, x_2723.w, x_2723.w));
      let x_2726 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);
      let x_2729 : i32 = u_xlati83;
      let x_2731 : f32 = x_721.x_AdditionalShadowParams[x_2729].y;
      u_xlatb85 = (0.0f < x_2731);
      let x_2733 : bool = u_xlatb85;
      if (x_2733) {
        let x_2736 : i32 = u_xlati83;
        let x_2738 : f32 = x_721.x_AdditionalShadowParams[x_2736].y;
        u_xlatb85 = (1.0f == x_2738);
        let x_2740 : bool = u_xlatb85;
        if (x_2740) {
          let x_2743 : vec4<f32> = u_xlat11;
          let x_2746 : vec4<f32> = x_721.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2743.x, x_2743.y, x_2743.x, x_2743.y) + x_2746);
          let x_2749 : vec4<f32> = u_xlat12;
          let x_2750 : vec2<f32> = vec2<f32>(x_2749.x, x_2749.y);
          let x_2752 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
          let x_2760 : vec3<f32> = txVec30;
          let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
          u_xlat13.x = x_2762;
          let x_2765 : vec4<f32> = u_xlat12;
          let x_2766 : vec2<f32> = vec2<f32>(x_2765.z, x_2765.w);
          let x_2768 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2766.x, x_2766.y, x_2768);
          let x_2775 : vec3<f32> = txVec31;
          let x_2777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2775.xy, x_2775.z);
          u_xlat13.y = x_2777;
          let x_2779 : vec4<f32> = u_xlat11;
          let x_2782 : vec4<f32> = x_721.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y) + x_2782);
          let x_2785 : vec4<f32> = u_xlat12;
          let x_2786 : vec2<f32> = vec2<f32>(x_2785.x, x_2785.y);
          let x_2788 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
          let x_2795 : vec3<f32> = txVec32;
          let x_2797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
          u_xlat13.z = x_2797;
          let x_2800 : vec4<f32> = u_xlat12;
          let x_2801 : vec2<f32> = vec2<f32>(x_2800.z, x_2800.w);
          let x_2803 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2801.x, x_2801.y, x_2803);
          let x_2810 : vec3<f32> = txVec33;
          let x_2812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2810.xy, x_2810.z);
          u_xlat13.w = x_2812;
          let x_2814 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2814, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2817 : i32 = u_xlati83;
          let x_2819 : f32 = x_721.x_AdditionalShadowParams[x_2817].y;
          u_xlatb86 = (2.0f == x_2819);
          let x_2821 : bool = u_xlatb86;
          if (x_2821) {
            let x_2824 : vec4<f32> = u_xlat11;
            let x_2827 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2830 : vec2<f32> = ((vec2<f32>(x_2824.x, x_2824.y) * vec2<f32>(x_2827.z, x_2827.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2831 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat12;
            let x_2835 : vec2<f32> = floor(vec2<f32>(x_2833.x, x_2833.y));
            let x_2836 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2839 : vec4<f32> = u_xlat11;
            let x_2842 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2845 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2839.x, x_2839.y) * vec2<f32>(x_2842.z, x_2842.w)) + -(vec2<f32>(x_2845.x, x_2845.y)));
            let x_2849 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2849.x, x_2849.x, x_2849.y, x_2849.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2852 : vec4<f32> = u_xlat13;
            let x_2854 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2852.x, x_2852.x, x_2852.z, x_2852.z) * vec4<f32>(x_2854.x, x_2854.x, x_2854.z, x_2854.z));
            let x_2857 : vec4<f32> = u_xlat14;
            let x_2859 : vec2<f32> = (vec2<f32>(x_2857.y, x_2857.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2860 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2859.x, x_2860.y, x_2859.y, x_2860.w);
            let x_2862 : vec4<f32> = u_xlat14;
            let x_2865 : vec2<f32> = u_xlat64;
            let x_2867 : vec2<f32> = ((vec2<f32>(x_2862.x, x_2862.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2865));
            let x_2868 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2867.x, x_2867.y, x_2868.z, x_2868.w);
            let x_2870 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2870) + vec2<f32>(1.0f, 1.0f));
            let x_2873 : vec2<f32> = u_xlat64;
            let x_2874 : vec2<f32> = min(x_2873, vec2<f32>(0.0f, 0.0f));
            let x_2875 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2874.x, x_2874.y, x_2875.z, x_2875.w);
            let x_2877 : vec4<f32> = u_xlat15;
            let x_2880 : vec4<f32> = u_xlat15;
            let x_2883 : vec2<f32> = u_xlat66;
            let x_2884 : vec2<f32> = ((-(vec2<f32>(x_2877.x, x_2877.y)) * vec2<f32>(x_2880.x, x_2880.y)) + x_2883);
            let x_2885 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2884.x, x_2884.y, x_2885.z, x_2885.w);
            let x_2887 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2887, vec2<f32>(0.0f, 0.0f));
            let x_2889 : vec2<f32> = u_xlat64;
            let x_2891 : vec2<f32> = u_xlat64;
            let x_2893 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2889) * x_2891) + vec2<f32>(x_2893.y, x_2893.w));
            let x_2896 : vec4<f32> = u_xlat15;
            let x_2898 : vec2<f32> = (vec2<f32>(x_2896.x, x_2896.y) + vec2<f32>(1.0f, 1.0f));
            let x_2899 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2898.x, x_2898.y, x_2899.z, x_2899.w);
            let x_2901 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2901 + vec2<f32>(1.0f, 1.0f));
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2905 : vec2<f32> = (vec2<f32>(x_2903.x, x_2903.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2906 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2905.x, x_2905.y, x_2906.z, x_2906.w);
            let x_2908 : vec2<f32> = u_xlat66;
            let x_2909 : vec2<f32> = (x_2908 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2910 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2909.x, x_2909.y, x_2910.z, x_2910.w);
            let x_2912 : vec4<f32> = u_xlat15;
            let x_2914 : vec2<f32> = (vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2915 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2914.x, x_2914.y, x_2915.z, x_2915.w);
            let x_2917 : vec2<f32> = u_xlat64;
            let x_2918 : vec2<f32> = (x_2917 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2919 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2918.x, x_2918.y, x_2919.z, x_2919.w);
            let x_2921 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2921.y, x_2921.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2925 : f32 = u_xlat15.x;
            u_xlat16.z = x_2925;
            let x_2928 : f32 = u_xlat64.x;
            u_xlat16.w = x_2928;
            let x_2931 : f32 = u_xlat17.x;
            u_xlat14.z = x_2931;
            let x_2934 : f32 = u_xlat13.x;
            u_xlat14.w = x_2934;
            let x_2936 : vec4<f32> = u_xlat14;
            let x_2938 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2936.z, x_2936.w, x_2936.x, x_2936.z) + vec4<f32>(x_2938.z, x_2938.w, x_2938.x, x_2938.z));
            let x_2942 : f32 = u_xlat16.y;
            u_xlat15.z = x_2942;
            let x_2945 : f32 = u_xlat64.y;
            u_xlat15.w = x_2945;
            let x_2948 : f32 = u_xlat14.y;
            u_xlat17.z = x_2948;
            let x_2951 : f32 = u_xlat13.z;
            u_xlat17.w = x_2951;
            let x_2953 : vec4<f32> = u_xlat15;
            let x_2955 : vec4<f32> = u_xlat17;
            let x_2957 : vec3<f32> = (vec3<f32>(x_2953.z, x_2953.y, x_2953.w) + vec3<f32>(x_2955.z, x_2955.y, x_2955.w));
            let x_2958 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2957.x, x_2957.y, x_2957.z, x_2958.w);
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2962 : vec4<f32> = u_xlat18;
            let x_2964 : vec3<f32> = (vec3<f32>(x_2960.x, x_2960.z, x_2960.w) / vec3<f32>(x_2962.z, x_2962.w, x_2962.y));
            let x_2965 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
            let x_2967 : vec4<f32> = u_xlat14;
            let x_2969 : vec3<f32> = (vec3<f32>(x_2967.x, x_2967.y, x_2967.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2970 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2969.x, x_2969.y, x_2969.z, x_2970.w);
            let x_2972 : vec4<f32> = u_xlat17;
            let x_2974 : vec4<f32> = u_xlat13;
            let x_2976 : vec3<f32> = (vec3<f32>(x_2972.z, x_2972.y, x_2972.w) / vec3<f32>(x_2974.x, x_2974.y, x_2974.z));
            let x_2977 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
            let x_2979 : vec4<f32> = u_xlat15;
            let x_2981 : vec3<f32> = (vec3<f32>(x_2979.x, x_2979.y, x_2979.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2982 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2981.x, x_2981.y, x_2981.z, x_2982.w);
            let x_2984 : vec4<f32> = u_xlat14;
            let x_2987 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2989 : vec3<f32> = (vec3<f32>(x_2984.y, x_2984.x, x_2984.z) * vec3<f32>(x_2987.x, x_2987.x, x_2987.x));
            let x_2990 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2989.x, x_2989.y, x_2989.z, x_2990.w);
            let x_2992 : vec4<f32> = u_xlat15;
            let x_2995 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2997 : vec3<f32> = (vec3<f32>(x_2992.x, x_2992.y, x_2992.z) * vec3<f32>(x_2995.y, x_2995.y, x_2995.y));
            let x_2998 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2997.x, x_2997.y, x_2997.z, x_2998.w);
            let x_3001 : f32 = u_xlat15.x;
            u_xlat14.w = x_3001;
            let x_3003 : vec4<f32> = u_xlat12;
            let x_3006 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3009 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3003.x, x_3003.y, x_3003.x, x_3003.y) * vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y)) + vec4<f32>(x_3009.y, x_3009.w, x_3009.x, x_3009.w));
            let x_3012 : vec4<f32> = u_xlat12;
            let x_3015 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3018 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3012.x, x_3012.y) * vec2<f32>(x_3015.x, x_3015.y)) + vec2<f32>(x_3018.z, x_3018.w));
            let x_3022 : f32 = u_xlat14.y;
            u_xlat15.w = x_3022;
            let x_3024 : vec4<f32> = u_xlat15;
            let x_3025 : vec2<f32> = vec2<f32>(x_3024.y, x_3024.z);
            let x_3026 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3026.x, x_3025.x, x_3026.z, x_3025.y);
            let x_3028 : vec4<f32> = u_xlat12;
            let x_3031 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3034 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3028.x, x_3028.y, x_3028.x, x_3028.y) * vec4<f32>(x_3031.x, x_3031.y, x_3031.x, x_3031.y)) + vec4<f32>(x_3034.x, x_3034.y, x_3034.z, x_3034.y));
            let x_3037 : vec4<f32> = u_xlat12;
            let x_3040 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.w, x_3043.y, x_3043.w, x_3043.z));
            let x_3046 : vec4<f32> = u_xlat12;
            let x_3049 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3046.x, x_3046.y, x_3046.x, x_3046.y) * vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y)) + vec4<f32>(x_3052.x, x_3052.w, x_3052.z, x_3052.w));
            let x_3055 : vec4<f32> = u_xlat13;
            let x_3057 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3055.x, x_3055.x, x_3055.x, x_3055.y) * vec4<f32>(x_3057.z, x_3057.w, x_3057.y, x_3057.z));
            let x_3061 : vec4<f32> = u_xlat13;
            let x_3063 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3061.y, x_3061.y, x_3061.z, x_3061.z) * x_3063);
            let x_3066 : f32 = u_xlat13.z;
            let x_3068 : f32 = u_xlat18.y;
            u_xlat86 = (x_3066 * x_3068);
            let x_3071 : vec4<f32> = u_xlat16;
            let x_3072 : vec2<f32> = vec2<f32>(x_3071.x, x_3071.y);
            let x_3074 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
            let x_3081 : vec3<f32> = txVec34;
            let x_3083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
            u_xlat87 = x_3083;
            let x_3085 : vec4<f32> = u_xlat16;
            let x_3086 : vec2<f32> = vec2<f32>(x_3085.z, x_3085.w);
            let x_3088 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3086.x, x_3086.y, x_3088);
            let x_3096 : vec3<f32> = txVec35;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat88 = x_3098;
            let x_3099 : f32 = u_xlat88;
            let x_3101 : f32 = u_xlat19.y;
            u_xlat88 = (x_3099 * x_3101);
            let x_3104 : f32 = u_xlat19.x;
            let x_3105 : f32 = u_xlat87;
            let x_3107 : f32 = u_xlat88;
            u_xlat87 = ((x_3104 * x_3105) + x_3107);
            let x_3110 : vec2<f32> = u_xlat64;
            let x_3112 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec36;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat88 = x_3121;
            let x_3123 : f32 = u_xlat19.z;
            let x_3124 : f32 = u_xlat88;
            let x_3126 : f32 = u_xlat87;
            u_xlat87 = ((x_3123 * x_3124) + x_3126);
            let x_3129 : vec4<f32> = u_xlat15;
            let x_3130 : vec2<f32> = vec2<f32>(x_3129.x, x_3129.y);
            let x_3132 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec37;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat88 = x_3141;
            let x_3143 : f32 = u_xlat19.w;
            let x_3144 : f32 = u_xlat88;
            let x_3146 : f32 = u_xlat87;
            u_xlat87 = ((x_3143 * x_3144) + x_3146);
            let x_3149 : vec4<f32> = u_xlat17;
            let x_3150 : vec2<f32> = vec2<f32>(x_3149.x, x_3149.y);
            let x_3152 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec38;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat88 = x_3161;
            let x_3163 : f32 = u_xlat20.x;
            let x_3164 : f32 = u_xlat88;
            let x_3166 : f32 = u_xlat87;
            u_xlat87 = ((x_3163 * x_3164) + x_3166);
            let x_3169 : vec4<f32> = u_xlat17;
            let x_3170 : vec2<f32> = vec2<f32>(x_3169.z, x_3169.w);
            let x_3172 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec39;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat88 = x_3181;
            let x_3183 : f32 = u_xlat20.y;
            let x_3184 : f32 = u_xlat88;
            let x_3186 : f32 = u_xlat87;
            u_xlat87 = ((x_3183 * x_3184) + x_3186);
            let x_3189 : vec4<f32> = u_xlat15;
            let x_3190 : vec2<f32> = vec2<f32>(x_3189.z, x_3189.w);
            let x_3192 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec40;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat88 = x_3201;
            let x_3203 : f32 = u_xlat20.z;
            let x_3204 : f32 = u_xlat88;
            let x_3206 : f32 = u_xlat87;
            u_xlat87 = ((x_3203 * x_3204) + x_3206);
            let x_3209 : vec4<f32> = u_xlat14;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.x, x_3209.y);
            let x_3212 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec41;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat88 = x_3221;
            let x_3223 : f32 = u_xlat20.w;
            let x_3224 : f32 = u_xlat88;
            let x_3226 : f32 = u_xlat87;
            u_xlat87 = ((x_3223 * x_3224) + x_3226);
            let x_3229 : vec4<f32> = u_xlat14;
            let x_3230 : vec2<f32> = vec2<f32>(x_3229.z, x_3229.w);
            let x_3232 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
            let x_3239 : vec3<f32> = txVec42;
            let x_3241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
            u_xlat88 = x_3241;
            let x_3242 : f32 = u_xlat86;
            let x_3243 : f32 = u_xlat88;
            let x_3245 : f32 = u_xlat87;
            u_xlat85 = ((x_3242 * x_3243) + x_3245);
          } else {
            let x_3248 : vec4<f32> = u_xlat11;
            let x_3251 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3254 : vec2<f32> = ((vec2<f32>(x_3248.x, x_3248.y) * vec2<f32>(x_3251.z, x_3251.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3255 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3254.x, x_3254.y, x_3255.z, x_3255.w);
            let x_3257 : vec4<f32> = u_xlat12;
            let x_3259 : vec2<f32> = floor(vec2<f32>(x_3257.x, x_3257.y));
            let x_3260 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3259.x, x_3259.y, x_3260.z, x_3260.w);
            let x_3262 : vec4<f32> = u_xlat11;
            let x_3265 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3268 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3262.x, x_3262.y) * vec2<f32>(x_3265.z, x_3265.w)) + -(vec2<f32>(x_3268.x, x_3268.y)));
            let x_3272 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3272.x, x_3272.x, x_3272.y, x_3272.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3275 : vec4<f32> = u_xlat13;
            let x_3277 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3275.x, x_3275.x, x_3275.z, x_3275.z) * vec4<f32>(x_3277.x, x_3277.x, x_3277.z, x_3277.z));
            let x_3280 : vec4<f32> = u_xlat14;
            let x_3282 : vec2<f32> = (vec2<f32>(x_3280.y, x_3280.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3283 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3283.x, x_3282.x, x_3283.z, x_3282.y);
            let x_3285 : vec4<f32> = u_xlat14;
            let x_3288 : vec2<f32> = u_xlat64;
            let x_3290 : vec2<f32> = ((vec2<f32>(x_3285.x, x_3285.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3288));
            let x_3291 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3290.x, x_3291.y, x_3290.y, x_3291.w);
            let x_3293 : vec2<f32> = u_xlat64;
            let x_3295 : vec2<f32> = (-(x_3293) + vec2<f32>(1.0f, 1.0f));
            let x_3296 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3295.x, x_3295.y, x_3296.z, x_3296.w);
            let x_3298 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3298, vec2<f32>(0.0f, 0.0f));
            let x_3300 : vec2<f32> = u_xlat66;
            let x_3302 : vec2<f32> = u_xlat66;
            let x_3304 : vec4<f32> = u_xlat14;
            let x_3306 : vec2<f32> = ((-(x_3300) * x_3302) + vec2<f32>(x_3304.x, x_3304.y));
            let x_3307 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3306.x, x_3306.y, x_3307.z, x_3307.w);
            let x_3309 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3309, vec2<f32>(0.0f, 0.0f));
            let x_3312 : vec2<f32> = u_xlat66;
            let x_3314 : vec2<f32> = u_xlat66;
            let x_3316 : vec4<f32> = u_xlat13;
            let x_3318 : vec2<f32> = ((-(x_3312) * x_3314) + vec2<f32>(x_3316.y, x_3316.w));
            let x_3319 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3318.x, x_3319.y, x_3318.y);
            let x_3321 : vec4<f32> = u_xlat14;
            let x_3323 : vec2<f32> = (vec2<f32>(x_3321.x, x_3321.y) + vec2<f32>(2.0f, 2.0f));
            let x_3324 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3323.x, x_3323.y, x_3324.z, x_3324.w);
            let x_3326 : vec3<f32> = u_xlat39;
            let x_3328 : vec2<f32> = (vec2<f32>(x_3326.x, x_3326.z) + vec2<f32>(2.0f, 2.0f));
            let x_3329 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3329.x, x_3328.x, x_3329.z, x_3328.y);
            let x_3332 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3332 * 0.08163200318813323975f);
            let x_3335 : vec4<f32> = u_xlat13;
            let x_3337 : vec3<f32> = (vec3<f32>(x_3335.z, x_3335.x, x_3335.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3338 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
            let x_3340 : vec4<f32> = u_xlat14;
            let x_3342 : vec2<f32> = (vec2<f32>(x_3340.x, x_3340.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3343 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3342.x, x_3342.y, x_3343.z, x_3343.w);
            let x_3346 : f32 = u_xlat17.y;
            u_xlat16.x = x_3346;
            let x_3348 : vec2<f32> = u_xlat64;
            let x_3351 : vec2<f32> = ((vec2<f32>(x_3348.x, x_3348.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3352 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3352.x, x_3351.x, x_3352.z, x_3351.y);
            let x_3354 : vec2<f32> = u_xlat64;
            let x_3357 : vec2<f32> = ((vec2<f32>(x_3354.x, x_3354.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3358 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3357.x, x_3358.y, x_3357.y, x_3358.w);
            let x_3361 : f32 = u_xlat13.x;
            u_xlat14.y = x_3361;
            let x_3364 : f32 = u_xlat15.y;
            u_xlat14.w = x_3364;
            let x_3366 : vec4<f32> = u_xlat14;
            let x_3367 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3366 + x_3367);
            let x_3369 : vec2<f32> = u_xlat64;
            let x_3372 : vec2<f32> = ((vec2<f32>(x_3369.y, x_3369.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3373 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3373.x, x_3372.x, x_3373.z, x_3372.y);
            let x_3375 : vec2<f32> = u_xlat64;
            let x_3378 : vec2<f32> = ((vec2<f32>(x_3375.y, x_3375.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3379 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3378.x, x_3379.y, x_3378.y, x_3379.w);
            let x_3382 : f32 = u_xlat13.y;
            u_xlat15.y = x_3382;
            let x_3384 : vec4<f32> = u_xlat15;
            let x_3385 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3384 + x_3385);
            let x_3387 : vec4<f32> = u_xlat14;
            let x_3388 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3387 / x_3388);
            let x_3390 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3390 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3392 : vec4<f32> = u_xlat15;
            let x_3393 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3392 / x_3393);
            let x_3395 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3395 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3397 : vec4<f32> = u_xlat14;
            let x_3400 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3397.w, x_3397.x, x_3397.y, x_3397.z) * vec4<f32>(x_3400.x, x_3400.x, x_3400.x, x_3400.x));
            let x_3403 : vec4<f32> = u_xlat15;
            let x_3406 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3403.x, x_3403.w, x_3403.y, x_3403.z) * vec4<f32>(x_3406.y, x_3406.y, x_3406.y, x_3406.y));
            let x_3409 : vec4<f32> = u_xlat14;
            let x_3410 : vec3<f32> = vec3<f32>(x_3409.y, x_3409.z, x_3409.w);
            let x_3411 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3410.x, x_3411.y, x_3410.y, x_3410.z);
            let x_3414 : f32 = u_xlat15.x;
            u_xlat17.y = x_3414;
            let x_3416 : vec4<f32> = u_xlat12;
            let x_3419 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3422 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3416.x, x_3416.y, x_3416.x, x_3416.y) * vec4<f32>(x_3419.x, x_3419.y, x_3419.x, x_3419.y)) + vec4<f32>(x_3422.x, x_3422.y, x_3422.z, x_3422.y));
            let x_3425 : vec4<f32> = u_xlat12;
            let x_3428 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3425.x, x_3425.y) * vec2<f32>(x_3428.x, x_3428.y)) + vec2<f32>(x_3431.w, x_3431.y));
            let x_3435 : f32 = u_xlat17.y;
            u_xlat14.y = x_3435;
            let x_3438 : f32 = u_xlat15.z;
            u_xlat17.y = x_3438;
            let x_3440 : vec4<f32> = u_xlat12;
            let x_3443 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3446 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3440.x, x_3440.y, x_3440.x, x_3440.y) * vec4<f32>(x_3443.x, x_3443.y, x_3443.x, x_3443.y)) + vec4<f32>(x_3446.x, x_3446.y, x_3446.z, x_3446.y));
            let x_3449 : vec4<f32> = u_xlat12;
            let x_3452 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3455 : vec4<f32> = u_xlat17;
            let x_3457 : vec2<f32> = ((vec2<f32>(x_3449.x, x_3449.y) * vec2<f32>(x_3452.x, x_3452.y)) + vec2<f32>(x_3455.w, x_3455.y));
            let x_3458 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3457.x, x_3457.y, x_3458.z, x_3458.w);
            let x_3461 : f32 = u_xlat17.y;
            u_xlat14.z = x_3461;
            let x_3464 : vec4<f32> = u_xlat12;
            let x_3467 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3470 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3464.x, x_3464.y, x_3464.x, x_3464.y) * vec4<f32>(x_3467.x, x_3467.y, x_3467.x, x_3467.y)) + vec4<f32>(x_3470.x, x_3470.y, x_3470.x, x_3470.z));
            let x_3474 : f32 = u_xlat15.w;
            u_xlat17.y = x_3474;
            let x_3477 : vec4<f32> = u_xlat12;
            let x_3480 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3483 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3477.x, x_3477.y, x_3477.x, x_3477.y) * vec4<f32>(x_3480.x, x_3480.y, x_3480.x, x_3480.y)) + vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3483.y));
            let x_3487 : vec4<f32> = u_xlat12;
            let x_3490 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3487.x, x_3487.y) * vec2<f32>(x_3490.x, x_3490.y)) + vec2<f32>(x_3493.w, x_3493.y));
            let x_3497 : f32 = u_xlat17.y;
            u_xlat14.w = x_3497;
            let x_3500 : vec4<f32> = u_xlat12;
            let x_3503 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3506 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3500.x, x_3500.y) * vec2<f32>(x_3503.x, x_3503.y)) + vec2<f32>(x_3506.x, x_3506.w));
            let x_3509 : vec4<f32> = u_xlat17;
            let x_3510 : vec3<f32> = vec3<f32>(x_3509.x, x_3509.z, x_3509.w);
            let x_3511 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3510.x, x_3511.y, x_3510.y, x_3510.z);
            let x_3513 : vec4<f32> = u_xlat12;
            let x_3516 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3519 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3513.x, x_3513.y, x_3513.x, x_3513.y) * vec4<f32>(x_3516.x, x_3516.y, x_3516.x, x_3516.y)) + vec4<f32>(x_3519.x, x_3519.y, x_3519.z, x_3519.y));
            let x_3523 : vec4<f32> = u_xlat12;
            let x_3526 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3529 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3523.x, x_3523.y) * vec2<f32>(x_3526.x, x_3526.y)) + vec2<f32>(x_3529.w, x_3529.y));
            let x_3533 : f32 = u_xlat14.x;
            u_xlat15.x = x_3533;
            let x_3535 : vec4<f32> = u_xlat12;
            let x_3538 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3541 : vec4<f32> = u_xlat15;
            let x_3543 : vec2<f32> = ((vec2<f32>(x_3535.x, x_3535.y) * vec2<f32>(x_3538.x, x_3538.y)) + vec2<f32>(x_3541.x, x_3541.y));
            let x_3544 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3543.x, x_3543.y, x_3544.z, x_3544.w);
            let x_3547 : vec4<f32> = u_xlat13;
            let x_3549 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3547.x, x_3547.x, x_3547.x, x_3547.x) * x_3549);
            let x_3552 : vec4<f32> = u_xlat13;
            let x_3554 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3552.y, x_3552.y, x_3552.y, x_3552.y) * x_3554);
            let x_3557 : vec4<f32> = u_xlat13;
            let x_3559 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3557.z, x_3557.z, x_3557.z, x_3557.z) * x_3559);
            let x_3561 : vec4<f32> = u_xlat13;
            let x_3563 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3561.w, x_3561.w, x_3561.w, x_3561.w) * x_3563);
            let x_3566 : vec4<f32> = u_xlat18;
            let x_3567 : vec2<f32> = vec2<f32>(x_3566.x, x_3566.y);
            let x_3569 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3567.x, x_3567.y, x_3569);
            let x_3576 : vec3<f32> = txVec43;
            let x_3578 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3576.xy, x_3576.z);
            u_xlat86 = x_3578;
            let x_3580 : vec4<f32> = u_xlat18;
            let x_3581 : vec2<f32> = vec2<f32>(x_3580.z, x_3580.w);
            let x_3583 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3581.x, x_3581.y, x_3583);
            let x_3590 : vec3<f32> = txVec44;
            let x_3592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3590.xy, x_3590.z);
            u_xlat87 = x_3592;
            let x_3593 : f32 = u_xlat87;
            let x_3595 : f32 = u_xlat23.y;
            u_xlat87 = (x_3593 * x_3595);
            let x_3598 : f32 = u_xlat23.x;
            let x_3599 : f32 = u_xlat86;
            let x_3601 : f32 = u_xlat87;
            u_xlat86 = ((x_3598 * x_3599) + x_3601);
            let x_3604 : vec2<f32> = u_xlat64;
            let x_3606 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3604.x, x_3604.y, x_3606);
            let x_3613 : vec3<f32> = txVec45;
            let x_3615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3613.xy, x_3613.z);
            u_xlat87 = x_3615;
            let x_3617 : f32 = u_xlat23.z;
            let x_3618 : f32 = u_xlat87;
            let x_3620 : f32 = u_xlat86;
            u_xlat86 = ((x_3617 * x_3618) + x_3620);
            let x_3623 : vec4<f32> = u_xlat21;
            let x_3624 : vec2<f32> = vec2<f32>(x_3623.x, x_3623.y);
            let x_3626 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3624.x, x_3624.y, x_3626);
            let x_3633 : vec3<f32> = txVec46;
            let x_3635 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3633.xy, x_3633.z);
            u_xlat87 = x_3635;
            let x_3637 : f32 = u_xlat23.w;
            let x_3638 : f32 = u_xlat87;
            let x_3640 : f32 = u_xlat86;
            u_xlat86 = ((x_3637 * x_3638) + x_3640);
            let x_3643 : vec4<f32> = u_xlat19;
            let x_3644 : vec2<f32> = vec2<f32>(x_3643.x, x_3643.y);
            let x_3646 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3644.x, x_3644.y, x_3646);
            let x_3653 : vec3<f32> = txVec47;
            let x_3655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3653.xy, x_3653.z);
            u_xlat87 = x_3655;
            let x_3657 : f32 = u_xlat24.x;
            let x_3658 : f32 = u_xlat87;
            let x_3660 : f32 = u_xlat86;
            u_xlat86 = ((x_3657 * x_3658) + x_3660);
            let x_3663 : vec4<f32> = u_xlat19;
            let x_3664 : vec2<f32> = vec2<f32>(x_3663.z, x_3663.w);
            let x_3666 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3664.x, x_3664.y, x_3666);
            let x_3673 : vec3<f32> = txVec48;
            let x_3675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3673.xy, x_3673.z);
            u_xlat87 = x_3675;
            let x_3677 : f32 = u_xlat24.y;
            let x_3678 : f32 = u_xlat87;
            let x_3680 : f32 = u_xlat86;
            u_xlat86 = ((x_3677 * x_3678) + x_3680);
            let x_3683 : vec4<f32> = u_xlat20;
            let x_3684 : vec2<f32> = vec2<f32>(x_3683.x, x_3683.y);
            let x_3686 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3684.x, x_3684.y, x_3686);
            let x_3693 : vec3<f32> = txVec49;
            let x_3695 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3693.xy, x_3693.z);
            u_xlat87 = x_3695;
            let x_3697 : f32 = u_xlat24.z;
            let x_3698 : f32 = u_xlat87;
            let x_3700 : f32 = u_xlat86;
            u_xlat86 = ((x_3697 * x_3698) + x_3700);
            let x_3703 : vec4<f32> = u_xlat21;
            let x_3704 : vec2<f32> = vec2<f32>(x_3703.z, x_3703.w);
            let x_3706 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3704.x, x_3704.y, x_3706);
            let x_3713 : vec3<f32> = txVec50;
            let x_3715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3713.xy, x_3713.z);
            u_xlat87 = x_3715;
            let x_3717 : f32 = u_xlat24.w;
            let x_3718 : f32 = u_xlat87;
            let x_3720 : f32 = u_xlat86;
            u_xlat86 = ((x_3717 * x_3718) + x_3720);
            let x_3723 : vec4<f32> = u_xlat22;
            let x_3724 : vec2<f32> = vec2<f32>(x_3723.x, x_3723.y);
            let x_3726 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3724.x, x_3724.y, x_3726);
            let x_3733 : vec3<f32> = txVec51;
            let x_3735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3733.xy, x_3733.z);
            u_xlat87 = x_3735;
            let x_3737 : f32 = u_xlat25.x;
            let x_3738 : f32 = u_xlat87;
            let x_3740 : f32 = u_xlat86;
            u_xlat86 = ((x_3737 * x_3738) + x_3740);
            let x_3743 : vec4<f32> = u_xlat22;
            let x_3744 : vec2<f32> = vec2<f32>(x_3743.z, x_3743.w);
            let x_3746 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3744.x, x_3744.y, x_3746);
            let x_3753 : vec3<f32> = txVec52;
            let x_3755 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3753.xy, x_3753.z);
            u_xlat87 = x_3755;
            let x_3757 : f32 = u_xlat25.y;
            let x_3758 : f32 = u_xlat87;
            let x_3760 : f32 = u_xlat86;
            u_xlat86 = ((x_3757 * x_3758) + x_3760);
            let x_3763 : vec2<f32> = u_xlat40;
            let x_3765 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3763.x, x_3763.y, x_3765);
            let x_3772 : vec3<f32> = txVec53;
            let x_3774 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3772.xy, x_3772.z);
            u_xlat87 = x_3774;
            let x_3776 : f32 = u_xlat25.z;
            let x_3777 : f32 = u_xlat87;
            let x_3779 : f32 = u_xlat86;
            u_xlat86 = ((x_3776 * x_3777) + x_3779);
            let x_3782 : vec2<f32> = u_xlat72;
            let x_3784 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3782.x, x_3782.y, x_3784);
            let x_3791 : vec3<f32> = txVec54;
            let x_3793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3791.xy, x_3791.z);
            u_xlat87 = x_3793;
            let x_3795 : f32 = u_xlat25.w;
            let x_3796 : f32 = u_xlat87;
            let x_3798 : f32 = u_xlat86;
            u_xlat86 = ((x_3795 * x_3796) + x_3798);
            let x_3801 : vec4<f32> = u_xlat17;
            let x_3802 : vec2<f32> = vec2<f32>(x_3801.x, x_3801.y);
            let x_3804 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3802.x, x_3802.y, x_3804);
            let x_3811 : vec3<f32> = txVec55;
            let x_3813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3811.xy, x_3811.z);
            u_xlat87 = x_3813;
            let x_3815 : f32 = u_xlat13.x;
            let x_3816 : f32 = u_xlat87;
            let x_3818 : f32 = u_xlat86;
            u_xlat86 = ((x_3815 * x_3816) + x_3818);
            let x_3821 : vec4<f32> = u_xlat17;
            let x_3822 : vec2<f32> = vec2<f32>(x_3821.z, x_3821.w);
            let x_3824 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3822.x, x_3822.y, x_3824);
            let x_3831 : vec3<f32> = txVec56;
            let x_3833 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3831.xy, x_3831.z);
            u_xlat87 = x_3833;
            let x_3835 : f32 = u_xlat13.y;
            let x_3836 : f32 = u_xlat87;
            let x_3838 : f32 = u_xlat86;
            u_xlat86 = ((x_3835 * x_3836) + x_3838);
            let x_3841 : vec2<f32> = u_xlat67;
            let x_3843 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3841.x, x_3841.y, x_3843);
            let x_3850 : vec3<f32> = txVec57;
            let x_3852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3850.xy, x_3850.z);
            u_xlat87 = x_3852;
            let x_3854 : f32 = u_xlat13.z;
            let x_3855 : f32 = u_xlat87;
            let x_3857 : f32 = u_xlat86;
            u_xlat86 = ((x_3854 * x_3855) + x_3857);
            let x_3860 : vec4<f32> = u_xlat12;
            let x_3861 : vec2<f32> = vec2<f32>(x_3860.x, x_3860.y);
            let x_3863 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3861.x, x_3861.y, x_3863);
            let x_3870 : vec3<f32> = txVec58;
            let x_3872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3870.xy, x_3870.z);
            u_xlat87 = x_3872;
            let x_3874 : f32 = u_xlat13.w;
            let x_3875 : f32 = u_xlat87;
            let x_3877 : f32 = u_xlat86;
            u_xlat85 = ((x_3874 * x_3875) + x_3877);
          }
        }
      } else {
        let x_3881 : vec4<f32> = u_xlat11;
        let x_3882 : vec2<f32> = vec2<f32>(x_3881.x, x_3881.y);
        let x_3884 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3882.x, x_3882.y, x_3884);
        let x_3891 : vec3<f32> = txVec59;
        let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
        u_xlat85 = x_3893;
      }
      let x_3894 : i32 = u_xlati83;
      let x_3896 : f32 = x_721.x_AdditionalShadowParams[x_3894].x;
      u_xlat86 = (1.0f + -(x_3896));
      let x_3899 : f32 = u_xlat85;
      let x_3900 : i32 = u_xlati83;
      let x_3902 : f32 = x_721.x_AdditionalShadowParams[x_3900].x;
      let x_3904 : f32 = u_xlat86;
      u_xlat85 = ((x_3899 * x_3902) + x_3904);
      let x_3907 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_3907);
      let x_3911 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3911 >= 1.0f);
      let x_3913 : bool = u_xlatb86;
      let x_3914 : bool = u_xlatb87;
      u_xlatb86 = (x_3913 | x_3914);
      let x_3916 : bool = u_xlatb86;
      let x_3917 : f32 = u_xlat85;
      u_xlat85 = select(x_3917, 1.0f, x_3916);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3920 : f32 = u_xlat85;
    u_xlat86 = (-(x_3920) + 1.0f);
    let x_3923 : f32 = u_xlat80;
    let x_3924 : f32 = u_xlat86;
    let x_3926 : f32 = u_xlat85;
    u_xlat85 = ((x_3923 * x_3924) + x_3926);
    let x_3929 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_3929 & 31i)));
    let x_3932 : i32 = u_xlati86;
    let x_3935 : f32 = x_2032.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_3932) & bitcast<u32>(x_3935)));
    let x_3939 : i32 = u_xlati86;
    if ((x_3939 != 0i)) {
      let x_3943 : i32 = u_xlati83;
      let x_3945 : f32 = x_2032.x_AdditionalLightsLightTypes[x_3943].el;
      u_xlati86 = i32(x_3945);
      let x_3948 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_3948 != 0i));
      let x_3952 : i32 = u_xlati83;
      u_xlati88 = (x_3952 << bitcast<u32>(2i));
      let x_3954 : i32 = u_xlati87;
      if ((x_3954 != 0i)) {
        let x_3958 : vec3<f32> = vs_TEXCOORD7;
        let x_3960 : i32 = u_xlati88;
        let x_3963 : i32 = u_xlati88;
        let x_3967 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_3960 + 1i) / 4i)][((x_3963 + 1i) % 4i)];
        let x_3969 : vec3<f32> = (vec3<f32>(x_3958.y, x_3958.y, x_3958.y) * vec3<f32>(x_3967.x, x_3967.y, x_3967.w));
        let x_3970 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3969.x, x_3969.y, x_3969.z, x_3970.w);
        let x_3972 : i32 = u_xlati88;
        let x_3974 : i32 = u_xlati88;
        let x_3977 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[(x_3972 / 4i)][(x_3974 % 4i)];
        let x_3979 : vec3<f32> = vs_TEXCOORD7;
        let x_3982 : vec4<f32> = u_xlat11;
        let x_3984 : vec3<f32> = ((vec3<f32>(x_3977.x, x_3977.y, x_3977.w) * vec3<f32>(x_3979.x, x_3979.x, x_3979.x)) + vec3<f32>(x_3982.x, x_3982.y, x_3982.z));
        let x_3985 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3984.x, x_3984.y, x_3984.z, x_3985.w);
        let x_3987 : i32 = u_xlati88;
        let x_3990 : i32 = u_xlati88;
        let x_3994 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_3987 + 2i) / 4i)][((x_3990 + 2i) % 4i)];
        let x_3996 : vec3<f32> = vs_TEXCOORD7;
        let x_3999 : vec4<f32> = u_xlat11;
        let x_4001 : vec3<f32> = ((vec3<f32>(x_3994.x, x_3994.y, x_3994.w) * vec3<f32>(x_3996.z, x_3996.z, x_3996.z)) + vec3<f32>(x_3999.x, x_3999.y, x_3999.z));
        let x_4002 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4001.x, x_4001.y, x_4001.z, x_4002.w);
        let x_4004 : vec4<f32> = u_xlat11;
        let x_4006 : i32 = u_xlati88;
        let x_4009 : i32 = u_xlati88;
        let x_4013 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_4006 + 3i) / 4i)][((x_4009 + 3i) % 4i)];
        let x_4015 : vec3<f32> = (vec3<f32>(x_4004.x, x_4004.y, x_4004.z) + vec3<f32>(x_4013.x, x_4013.y, x_4013.w));
        let x_4016 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4015.x, x_4015.y, x_4015.z, x_4016.w);
        let x_4018 : vec4<f32> = u_xlat11;
        let x_4020 : vec4<f32> = u_xlat11;
        let x_4022 : vec2<f32> = (vec2<f32>(x_4018.x, x_4018.y) / vec2<f32>(x_4020.z, x_4020.z));
        let x_4023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4022.x, x_4022.y, x_4023.z, x_4023.w);
        let x_4025 : vec4<f32> = u_xlat11;
        let x_4028 : vec2<f32> = ((vec2<f32>(x_4025.x, x_4025.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4029 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4028.x, x_4028.y, x_4029.z, x_4029.w);
        let x_4031 : vec4<f32> = u_xlat11;
        let x_4035 : vec2<f32> = clamp(vec2<f32>(x_4031.x, x_4031.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4036 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4035.x, x_4035.y, x_4036.z, x_4036.w);
        let x_4038 : i32 = u_xlati83;
        let x_4040 : vec4<f32> = x_2032.x_AdditionalLightsCookieAtlasUVRects[x_4038];
        let x_4042 : vec4<f32> = u_xlat11;
        let x_4045 : i32 = u_xlati83;
        let x_4047 : vec4<f32> = x_2032.x_AdditionalLightsCookieAtlasUVRects[x_4045];
        let x_4049 : vec2<f32> = ((vec2<f32>(x_4040.x, x_4040.y) * vec2<f32>(x_4042.x, x_4042.y)) + vec2<f32>(x_4047.z, x_4047.w));
        let x_4050 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4049.x, x_4049.y, x_4050.z, x_4050.w);
      } else {
        let x_4053 : i32 = u_xlati86;
        u_xlatb86 = (x_4053 == 1i);
        let x_4055 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4055);
        let x_4057 : i32 = u_xlati86;
        if ((x_4057 != 0i)) {
          let x_4062 : vec3<f32> = vs_TEXCOORD7;
          let x_4064 : i32 = u_xlati88;
          let x_4067 : i32 = u_xlati88;
          let x_4071 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_4064 + 1i) / 4i)][((x_4067 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4062.y, x_4062.y) * vec2<f32>(x_4071.x, x_4071.y));
          let x_4074 : i32 = u_xlati88;
          let x_4076 : i32 = u_xlati88;
          let x_4079 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[(x_4074 / 4i)][(x_4076 % 4i)];
          let x_4081 : vec3<f32> = vs_TEXCOORD7;
          let x_4084 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4079.x, x_4079.y) * vec2<f32>(x_4081.x, x_4081.x)) + x_4084);
          let x_4086 : i32 = u_xlati88;
          let x_4089 : i32 = u_xlati88;
          let x_4093 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_4086 + 2i) / 4i)][((x_4089 + 2i) % 4i)];
          let x_4095 : vec3<f32> = vs_TEXCOORD7;
          let x_4098 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4093.x, x_4093.y) * vec2<f32>(x_4095.z, x_4095.z)) + x_4098);
          let x_4100 : vec2<f32> = u_xlat63;
          let x_4101 : i32 = u_xlati88;
          let x_4104 : i32 = u_xlati88;
          let x_4108 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_4101 + 3i) / 4i)][((x_4104 + 3i) % 4i)];
          u_xlat63 = (x_4100 + vec2<f32>(x_4108.x, x_4108.y));
          let x_4111 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4111 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4114 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4114);
          let x_4116 : i32 = u_xlati83;
          let x_4118 : vec4<f32> = x_2032.x_AdditionalLightsCookieAtlasUVRects[x_4116];
          let x_4120 : vec2<f32> = u_xlat63;
          let x_4122 : i32 = u_xlati83;
          let x_4124 : vec4<f32> = x_2032.x_AdditionalLightsCookieAtlasUVRects[x_4122];
          let x_4126 : vec2<f32> = ((vec2<f32>(x_4118.x, x_4118.y) * x_4120) + vec2<f32>(x_4124.z, x_4124.w));
          let x_4127 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4126.x, x_4126.y, x_4127.z, x_4127.w);
        } else {
          let x_4130 : vec3<f32> = vs_TEXCOORD7;
          let x_4132 : i32 = u_xlati88;
          let x_4135 : i32 = u_xlati88;
          let x_4139 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_4132 + 1i) / 4i)][((x_4135 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4130.y, x_4130.y, x_4130.y, x_4130.y) * x_4139);
          let x_4141 : i32 = u_xlati88;
          let x_4143 : i32 = u_xlati88;
          let x_4146 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[(x_4141 / 4i)][(x_4143 % 4i)];
          let x_4147 : vec3<f32> = vs_TEXCOORD7;
          let x_4150 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4146 * vec4<f32>(x_4147.x, x_4147.x, x_4147.x, x_4147.x)) + x_4150);
          let x_4152 : i32 = u_xlati88;
          let x_4155 : i32 = u_xlati88;
          let x_4159 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_4152 + 2i) / 4i)][((x_4155 + 2i) % 4i)];
          let x_4160 : vec3<f32> = vs_TEXCOORD7;
          let x_4163 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4159 * vec4<f32>(x_4160.z, x_4160.z, x_4160.z, x_4160.z)) + x_4163);
          let x_4165 : vec4<f32> = u_xlat12;
          let x_4166 : i32 = u_xlati88;
          let x_4169 : i32 = u_xlati88;
          let x_4173 : vec4<f32> = x_2032.x_AdditionalLightsWorldToLights[((x_4166 + 3i) / 4i)][((x_4169 + 3i) % 4i)];
          u_xlat12 = (x_4165 + x_4173);
          let x_4175 : vec4<f32> = u_xlat12;
          let x_4177 : vec4<f32> = u_xlat12;
          let x_4179 : vec3<f32> = (vec3<f32>(x_4175.x, x_4175.y, x_4175.z) / vec3<f32>(x_4177.w, x_4177.w, x_4177.w));
          let x_4180 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4179.x, x_4179.y, x_4179.z, x_4180.w);
          let x_4182 : vec4<f32> = u_xlat12;
          let x_4184 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4182.x, x_4182.y, x_4182.z), vec3<f32>(x_4184.x, x_4184.y, x_4184.z));
          let x_4187 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4187);
          let x_4189 : f32 = u_xlat86;
          let x_4191 : vec4<f32> = u_xlat12;
          let x_4193 : vec3<f32> = (vec3<f32>(x_4189, x_4189, x_4189) * vec3<f32>(x_4191.x, x_4191.y, x_4191.z));
          let x_4194 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4193.x, x_4193.y, x_4193.z, x_4194.w);
          let x_4196 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4196.x, x_4196.y, x_4196.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4201 : f32 = u_xlat86;
          u_xlat86 = max(x_4201, 0.00000099999999747524f);
          let x_4204 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4204);
          let x_4206 : f32 = u_xlat86;
          let x_4208 : vec4<f32> = u_xlat12;
          let x_4210 : vec3<f32> = (vec3<f32>(x_4206, x_4206, x_4206) * vec3<f32>(x_4208.z, x_4208.x, x_4208.y));
          let x_4211 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4210.x, x_4210.y, x_4210.z, x_4211.w);
          let x_4214 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4214);
          let x_4218 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4218, 0.0f, 1.0f);
          let x_4222 : vec4<f32> = u_xlat13;
          let x_4224 : vec4<bool> = (vec4<f32>(x_4222.y, x_4222.z, x_4222.y, x_4222.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4224.x, x_4224.y);
          let x_4227 : bool = u_xlatb63.x;
          if (x_4227) {
            let x_4232 : f32 = u_xlat13.x;
            x_4228 = x_4232;
          } else {
            let x_4235 : f32 = u_xlat13.x;
            x_4228 = -(x_4235);
          }
          let x_4237 : f32 = x_4228;
          u_xlat63.x = x_4237;
          let x_4240 : bool = u_xlatb63.y;
          if (x_4240) {
            let x_4245 : f32 = u_xlat13.x;
            x_4241 = x_4245;
          } else {
            let x_4248 : f32 = u_xlat13.x;
            x_4241 = -(x_4248);
          }
          let x_4250 : f32 = x_4241;
          u_xlat63.y = x_4250;
          let x_4252 : vec4<f32> = u_xlat12;
          let x_4254 : f32 = u_xlat86;
          let x_4257 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4252.x, x_4252.y) * vec2<f32>(x_4254, x_4254)) + x_4257);
          let x_4259 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4259 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4262 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4262, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4266 : i32 = u_xlati83;
          let x_4268 : vec4<f32> = x_2032.x_AdditionalLightsCookieAtlasUVRects[x_4266];
          let x_4270 : vec2<f32> = u_xlat63;
          let x_4272 : i32 = u_xlati83;
          let x_4274 : vec4<f32> = x_2032.x_AdditionalLightsCookieAtlasUVRects[x_4272];
          let x_4276 : vec2<f32> = ((vec2<f32>(x_4268.x, x_4268.y) * x_4270) + vec2<f32>(x_4274.z, x_4274.w));
          let x_4277 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4276.x, x_4276.y, x_4277.z, x_4277.w);
        }
      }
      let x_4284 : vec4<f32> = u_xlat11;
      let x_4286 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4284.x, x_4284.y), 0.0f);
      u_xlat11 = x_4286;
      let x_4288 : bool = u_xlatb7.y;
      if (x_4288) {
        let x_4293 : f32 = u_xlat11.w;
        x_4289 = x_4293;
      } else {
        let x_4296 : f32 = u_xlat11.x;
        x_4289 = x_4296;
      }
      let x_4297 : f32 = x_4289;
      u_xlat86 = x_4297;
      let x_4299 : bool = u_xlatb7.x;
      if (x_4299) {
        let x_4303 : vec4<f32> = u_xlat11;
        x_4300 = vec3<f32>(x_4303.x, x_4303.y, x_4303.z);
      } else {
        let x_4306 : f32 = u_xlat86;
        x_4300 = vec3<f32>(x_4306, x_4306, x_4306);
      }
      let x_4308 : vec3<f32> = x_4300;
      let x_4309 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4308.x, x_4308.y, x_4308.z, x_4309.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4315 : vec4<f32> = u_xlat11;
    let x_4317 : i32 = u_xlati83;
    let x_4319 : vec4<f32> = x_2511.x_AdditionalLightsColor[x_4317];
    let x_4321 : vec3<f32> = (vec3<f32>(x_4315.x, x_4315.y, x_4315.z) * vec3<f32>(x_4319.x, x_4319.y, x_4319.z));
    let x_4322 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4321.x, x_4321.y, x_4321.z, x_4322.w);
    let x_4324 : f32 = u_xlat84;
    let x_4325 : f32 = u_xlat85;
    u_xlat83 = (x_4324 * x_4325);
    let x_4327 : vec4<f32> = u_xlat1;
    let x_4329 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4327.x, x_4327.y, x_4327.z), vec3<f32>(x_4329.x, x_4329.y, x_4329.z));
    let x_4332 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4332, 0.0f, 1.0f);
    let x_4334 : f32 = u_xlat83;
    let x_4335 : f32 = u_xlat84;
    u_xlat83 = (x_4334 * x_4335);
    let x_4337 : f32 = u_xlat83;
    let x_4339 : vec4<f32> = u_xlat11;
    let x_4341 : vec3<f32> = (vec3<f32>(x_4337, x_4337, x_4337) * vec3<f32>(x_4339.x, x_4339.y, x_4339.z));
    let x_4342 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4341.x, x_4341.y, x_4341.z, x_4342.w);
    let x_4344 : vec4<f32> = u_xlat9;
    let x_4346 : f32 = u_xlat59;
    let x_4349 : vec3<f32> = u_xlat2;
    let x_4350 : vec3<f32> = ((vec3<f32>(x_4344.x, x_4344.y, x_4344.z) * vec3<f32>(x_4346, x_4346, x_4346)) + x_4349);
    let x_4351 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4350.x, x_4350.y, x_4350.z, x_4351.w);
    let x_4353 : vec4<f32> = u_xlat9;
    let x_4355 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4353.x, x_4353.y, x_4353.z), vec3<f32>(x_4355.x, x_4355.y, x_4355.z));
    let x_4358 : f32 = u_xlat83;
    u_xlat83 = max(x_4358, 1.17549435e-38f);
    let x_4360 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4360);
    let x_4362 : f32 = u_xlat83;
    let x_4364 : vec4<f32> = u_xlat9;
    let x_4366 : vec3<f32> = (vec3<f32>(x_4362, x_4362, x_4362) * vec3<f32>(x_4364.x, x_4364.y, x_4364.z));
    let x_4367 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4366.x, x_4366.y, x_4366.z, x_4367.w);
    let x_4369 : vec4<f32> = u_xlat1;
    let x_4371 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4369.x, x_4369.y, x_4369.z), vec3<f32>(x_4371.x, x_4371.y, x_4371.z));
    let x_4374 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4374, 0.0f, 1.0f);
    let x_4376 : vec4<f32> = u_xlat10;
    let x_4378 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4376.x, x_4376.y, x_4376.z), vec3<f32>(x_4378.x, x_4378.y, x_4378.z));
    let x_4381 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4381, 0.0f, 1.0f);
    let x_4383 : f32 = u_xlat83;
    let x_4384 : f32 = u_xlat83;
    u_xlat83 = (x_4383 * x_4384);
    let x_4386 : f32 = u_xlat83;
    let x_4388 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4386 * x_4388) + 1.00001001358032226562f);
    let x_4391 : f32 = u_xlat84;
    let x_4392 : f32 = u_xlat84;
    u_xlat84 = (x_4391 * x_4392);
    let x_4394 : f32 = u_xlat83;
    let x_4395 : f32 = u_xlat83;
    u_xlat83 = (x_4394 * x_4395);
    let x_4397 : f32 = u_xlat84;
    u_xlat84 = max(x_4397, 0.10000000149011611938f);
    let x_4399 : f32 = u_xlat83;
    let x_4400 : f32 = u_xlat84;
    u_xlat83 = (x_4399 * x_4400);
    let x_4402 : f32 = u_xlat81;
    let x_4403 : f32 = u_xlat83;
    u_xlat83 = (x_4402 * x_4403);
    let x_4405 : f32 = u_xlat79;
    let x_4406 : f32 = u_xlat83;
    u_xlat83 = (x_4405 / x_4406);
    let x_4408 : vec4<f32> = u_xlat5;
    let x_4410 : f32 = u_xlat83;
    let x_4413 : vec4<f32> = u_xlat4;
    let x_4415 : vec3<f32> = ((vec3<f32>(x_4408.x, x_4408.y, x_4408.z) * vec3<f32>(x_4410, x_4410, x_4410)) + vec3<f32>(x_4413.x, x_4413.y, x_4413.z));
    let x_4416 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4415.x, x_4415.y, x_4415.z, x_4416.w);
    let x_4418 : vec4<f32> = u_xlat9;
    let x_4420 : vec4<f32> = u_xlat11;
    let x_4423 : vec4<f32> = u_xlat8;
    let x_4425 : vec3<f32> = ((vec3<f32>(x_4418.x, x_4418.y, x_4418.z) * vec3<f32>(x_4420.x, x_4420.y, x_4420.z)) + vec3<f32>(x_4423.x, x_4423.y, x_4423.z));
    let x_4426 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4425.x, x_4425.y, x_4425.z, x_4426.w);

    continuing {
      let x_4428 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4428 + bitcast<u32>(1i));
    }
  }
  let x_4430 : vec4<f32> = u_xlat3;
  let x_4432 : f32 = u_xlat26;
  let x_4435 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4430.x, x_4430.y, x_4430.z) * vec3<f32>(x_4432, x_4432, x_4432)) + vec3<f32>(x_4435.x, x_4435.y, x_4435.z));
  let x_4438 : vec4<f32> = u_xlat8;
  let x_4440 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4438.x, x_4438.y, x_4438.z) + x_4440);
  let x_4444 : f32 = u_xlat78;
  let x_4446 : vec3<f32> = u_xlat0;
  let x_4447 : vec3<f32> = (vec3<f32>(x_4444, x_4444, x_4444) * x_4446);
  let x_4448 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4447.x, x_4447.y, x_4447.z, x_4448.w);
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


