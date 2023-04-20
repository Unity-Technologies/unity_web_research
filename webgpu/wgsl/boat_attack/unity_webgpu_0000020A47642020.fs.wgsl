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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_625 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_769 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb32 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2112 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2589 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

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

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

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
  var x_2195 : f32;
  var x_2207 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2725 : f32;
  var x_2735 : f32;
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
  var x_4314 : f32;
  var x_4327 : f32;
  var x_4385 : f32;
  var x_4396 : vec3<f32>;
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
  let x_586 : f32 = vs_TEXCOORD7.y;
  let x_588 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_586 * x_588);
  let x_591 : f32 = x_113.unity_MatrixV[0i].z;
  let x_593 : f32 = vs_TEXCOORD7.x;
  let x_595 : f32 = u_xlat79;
  u_xlat79 = ((x_591 * x_593) + x_595);
  let x_598 : f32 = x_113.unity_MatrixV[2i].z;
  let x_600 : f32 = vs_TEXCOORD7.z;
  let x_602 : f32 = u_xlat79;
  u_xlat79 = ((x_598 * x_600) + x_602);
  let x_604 : f32 = u_xlat79;
  let x_607 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_604 + x_607);
  let x_609 : f32 = u_xlat79;
  let x_612 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_609) + -(x_612));
  let x_615 : f32 = u_xlat79;
  u_xlat79 = max(x_615, 0.0f);
  let x_617 : f32 = u_xlat79;
  let x_619 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_617 * x_619);
  u_xlat2.w = 1.0f;
  let x_627 : vec4<f32> = x_625.unity_SHAr;
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_627, x_628);
  let x_632 : vec4<f32> = x_625.unity_SHAg;
  let x_633 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_632, x_633);
  let x_637 : vec4<f32> = x_625.unity_SHAb;
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_637, x_638);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_641.y, x_641.z, x_641.z, x_641.x) * vec4<f32>(x_643.x, x_643.y, x_643.z, x_643.z));
  let x_647 : vec4<f32> = x_625.unity_SHBr;
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_647, x_648);
  let x_652 : vec4<f32> = x_625.unity_SHBg;
  let x_653 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_652, x_653);
  let x_657 : vec4<f32> = x_625.unity_SHBb;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_657, x_658);
  let x_663 : f32 = u_xlat2.y;
  let x_665 : f32 = u_xlat2.y;
  u_xlat80 = (x_663 * x_665);
  let x_668 : f32 = u_xlat2.x;
  let x_670 : f32 = u_xlat2.x;
  let x_672 : f32 = u_xlat80;
  u_xlat80 = ((x_668 * x_670) + -(x_672));
  let x_677 : vec4<f32> = x_625.unity_SHC;
  let x_679 : f32 = u_xlat80;
  let x_682 : vec4<f32> = u_xlat6;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(x_679, x_679, x_679)) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec4<f32> = u_xlat4;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat3;
  let x_697 : vec3<f32> = max(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_701 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_701) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_707 : f32 = u_xlat52;
  let x_708 : f32 = u_xlat80;
  u_xlat81 = (x_707 + -(x_708));
  let x_711 : f32 = u_xlat80;
  let x_713 : vec4<f32> = u_xlat5;
  let x_715 : vec3<f32> = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat5;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_723 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec3<f32> = u_xlat0;
  let x_727 : vec4<f32> = u_xlat5;
  let x_732 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.x, x_725.x) * vec3<f32>(x_727.x, x_727.y, x_727.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_733 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : f32 = u_xlat52;
  u_xlat0.x = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  let x_742 : f32 = u_xlat0.x;
  u_xlat52 = (x_740 * x_742);
  let x_744 : f32 = u_xlat52;
  u_xlat52 = max(x_744, 0.0078125f);
  let x_747 : f32 = u_xlat52;
  let x_748 : f32 = u_xlat52;
  u_xlat80 = (x_747 * x_748);
  let x_750 : f32 = u_xlat81;
  u_xlat81 = (x_750 + 1.0f);
  let x_752 : f32 = u_xlat81;
  u_xlat81 = clamp(x_752, 0.0f, 1.0f);
  let x_755 : f32 = u_xlat52;
  u_xlat82 = ((x_755 * 4.0f) + 2.0f);
  let x_759 : f32 = u_xlat26;
  u_xlat26 = min(x_759, 1.0f);
  let x_771 : f32 = x_769.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_771);
  let x_773 : bool = u_xlatb83;
  if (x_773) {
    let x_777 : f32 = x_769.x_MainLightShadowParams.y;
    u_xlatb83 = (x_777 == 1.0f);
    let x_779 : bool = u_xlatb83;
    if (x_779) {
      let x_783 : vec4<f32> = vs_TEXCOORD8;
      let x_786 : vec4<f32> = x_769.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) + x_786);
      let x_789 : vec4<f32> = u_xlat6;
      let x_790 : vec2<f32> = vec2<f32>(x_789.x, x_789.y);
      let x_792 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_790.x, x_790.y, x_792);
      let x_804 : vec3<f32> = txVec0;
      let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
      u_xlat7.x = x_806;
      let x_809 : vec4<f32> = u_xlat6;
      let x_810 : vec2<f32> = vec2<f32>(x_809.z, x_809.w);
      let x_812 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_810.x, x_810.y, x_812);
      let x_819 : vec3<f32> = txVec1;
      let x_821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_819.xy, x_819.z);
      u_xlat7.y = x_821;
      let x_823 : vec4<f32> = vs_TEXCOORD8;
      let x_826 : vec4<f32> = x_769.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y) + x_826);
      let x_829 : vec4<f32> = u_xlat6;
      let x_830 : vec2<f32> = vec2<f32>(x_829.x, x_829.y);
      let x_832 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_830.x, x_830.y, x_832);
      let x_839 : vec3<f32> = txVec2;
      let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_839.xy, x_839.z);
      u_xlat7.z = x_841;
      let x_844 : vec4<f32> = u_xlat6;
      let x_845 : vec2<f32> = vec2<f32>(x_844.z, x_844.w);
      let x_847 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_845.x, x_845.y, x_847);
      let x_854 : vec3<f32> = txVec3;
      let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_854.xy, x_854.z);
      u_xlat7.w = x_856;
      let x_859 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_859, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_866 : f32 = x_769.x_MainLightShadowParams.y;
      u_xlatb6 = (x_866 == 2.0f);
      let x_868 : bool = u_xlatb6;
      if (x_868) {
        let x_871 : vec4<f32> = vs_TEXCOORD8;
        let x_874 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_877 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.y) * vec2<f32>(x_874.z, x_874.w)) + vec2<f32>(0.5f, 0.5f));
        let x_878 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat6;
        let x_882 : vec2<f32> = floor(vec2<f32>(x_880.x, x_880.y));
        let x_883 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_887 : vec4<f32> = vs_TEXCOORD8;
        let x_890 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_887.x, x_887.y) * vec2<f32>(x_890.z, x_890.w)) + -(vec2<f32>(x_893.x, x_893.y)));
        let x_897 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_897.x, x_897.x, x_897.y, x_897.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_901 : vec4<f32> = u_xlat7;
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_901.x, x_901.x, x_901.z, x_901.z) * vec4<f32>(x_903.x, x_903.x, x_903.z, x_903.z));
        let x_906 : vec4<f32> = u_xlat8;
        let x_910 : vec2<f32> = (vec2<f32>(x_906.y, x_906.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_911 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_910.x, x_911.y, x_910.y, x_911.w);
        let x_913 : vec4<f32> = u_xlat8;
        let x_916 : vec2<f32> = u_xlat58;
        let x_918 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.z) * vec2<f32>(0.5f, 0.5f)) + -(x_916));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_922 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_922) + vec2<f32>(1.0f, 1.0f));
        let x_926 : vec2<f32> = u_xlat58;
        let x_928 : vec2<f32> = min(x_926, vec2<f32>(0.0f, 0.0f));
        let x_929 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat9;
        let x_934 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = u_xlat60;
        let x_938 : vec2<f32> = ((-(vec2<f32>(x_931.x, x_931.y)) * vec2<f32>(x_934.x, x_934.y)) + x_937);
        let x_939 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_941, vec2<f32>(0.0f, 0.0f));
        let x_943 : vec2<f32> = u_xlat58;
        let x_945 : vec2<f32> = u_xlat58;
        let x_947 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_943) * x_945) + vec2<f32>(x_947.y, x_947.w));
        let x_950 : vec4<f32> = u_xlat9;
        let x_952 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) + vec2<f32>(1.0f, 1.0f));
        let x_953 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_955 + vec2<f32>(1.0f, 1.0f));
        let x_957 : vec4<f32> = u_xlat8;
        let x_961 : vec2<f32> = (vec2<f32>(x_957.x, x_957.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_962 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec2<f32> = u_xlat60;
        let x_965 : vec2<f32> = (x_964 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat9;
        let x_970 : vec2<f32> = (vec2<f32>(x_968.x, x_968.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec2<f32> = u_xlat58;
        let x_974 : vec2<f32> = (x_973 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_975 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_977.y, x_977.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_981 : f32 = u_xlat9.x;
        u_xlat10.z = x_981;
        let x_984 : f32 = u_xlat58.x;
        u_xlat10.w = x_984;
        let x_987 : f32 = u_xlat11.x;
        u_xlat8.z = x_987;
        let x_990 : f32 = u_xlat7.x;
        u_xlat8.w = x_990;
        let x_992 : vec4<f32> = u_xlat8;
        let x_994 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_992.z, x_992.w, x_992.x, x_992.z) + vec4<f32>(x_994.z, x_994.w, x_994.x, x_994.z));
        let x_998 : f32 = u_xlat10.y;
        u_xlat9.z = x_998;
        let x_1001 : f32 = u_xlat58.y;
        u_xlat9.w = x_1001;
        let x_1004 : f32 = u_xlat8.y;
        u_xlat11.z = x_1004;
        let x_1007 : f32 = u_xlat7.z;
        u_xlat11.w = x_1007;
        let x_1009 : vec4<f32> = u_xlat9;
        let x_1011 : vec4<f32> = u_xlat11;
        let x_1013 : vec3<f32> = (vec3<f32>(x_1009.z, x_1009.y, x_1009.w) + vec3<f32>(x_1011.z, x_1011.y, x_1011.w));
        let x_1014 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
        let x_1016 : vec4<f32> = u_xlat8;
        let x_1018 : vec4<f32> = u_xlat12;
        let x_1020 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.z, x_1016.w) / vec3<f32>(x_1018.z, x_1018.w, x_1018.y));
        let x_1021 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1029 : vec3<f32> = (vec3<f32>(x_1023.x, x_1023.y, x_1023.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat11;
        let x_1034 : vec4<f32> = u_xlat7;
        let x_1036 : vec3<f32> = (vec3<f32>(x_1032.z, x_1032.y, x_1032.w) / vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
        let x_1037 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1047 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1044.y, x_1044.x, x_1044.z) * vec3<f32>(x_1047.x, x_1047.x, x_1047.x));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat9;
        let x_1055 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1057 : vec3<f32> = (vec3<f32>(x_1052.x, x_1052.y, x_1052.z) * vec3<f32>(x_1055.y, x_1055.y, x_1055.y));
        let x_1058 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
        let x_1061 : f32 = u_xlat9.x;
        u_xlat8.w = x_1061;
        let x_1063 : vec4<f32> = u_xlat6;
        let x_1066 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) * vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y)) + vec4<f32>(x_1069.y, x_1069.w, x_1069.x, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat6;
        let x_1075 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.x, x_1075.y)) + vec2<f32>(x_1078.z, x_1078.w));
        let x_1082 : f32 = u_xlat8.y;
        u_xlat9.w = x_1082;
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.y, x_1084.z);
        let x_1086 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1086.x, x_1085.x, x_1086.z, x_1085.y);
        let x_1088 : vec4<f32> = u_xlat6;
        let x_1091 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y) * vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y)) + vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1094.y));
        let x_1097 : vec4<f32> = u_xlat6;
        let x_1100 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) * vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y)) + vec4<f32>(x_1103.w, x_1103.y, x_1103.w, x_1103.z));
        let x_1106 : vec4<f32> = u_xlat6;
        let x_1109 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y) * vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y)) + vec4<f32>(x_1112.x, x_1112.w, x_1112.z, x_1112.w));
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1117 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1115.x, x_1115.x, x_1115.x, x_1115.y) * vec4<f32>(x_1117.z, x_1117.w, x_1117.y, x_1117.z));
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1123 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1121.y, x_1121.y, x_1121.z, x_1121.z) * x_1123);
        let x_1126 : f32 = u_xlat7.z;
        let x_1128 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1126 * x_1128);
        let x_1132 : vec4<f32> = u_xlat10;
        let x_1133 : vec2<f32> = vec2<f32>(x_1132.x, x_1132.y);
        let x_1135 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1133.x, x_1133.y, x_1135);
        let x_1143 : vec3<f32> = txVec4;
        let x_1145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1143.xy, x_1143.z);
        u_xlat32.x = x_1145;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.z, x_1148.w);
        let x_1151 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec5;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1158.xy, x_1158.z);
        u_xlat7.x = x_1160;
        let x_1163 : f32 = u_xlat7.x;
        let x_1165 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1163 * x_1165);
        let x_1169 : f32 = u_xlat13.x;
        let x_1171 : f32 = u_xlat32.x;
        let x_1174 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1169 * x_1171) + x_1174);
        let x_1178 : vec2<f32> = u_xlat58;
        let x_1180 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1187 : vec3<f32> = txVec6;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1187.xy, x_1187.z);
        u_xlat58.x = x_1189;
        let x_1192 : f32 = u_xlat13.z;
        let x_1194 : f32 = u_xlat58.x;
        let x_1197 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1192 * x_1194) + x_1197);
        let x_1201 : vec4<f32> = u_xlat9;
        let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
        let x_1204 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
        let x_1211 : vec3<f32> = txVec7;
        let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1211.xy, x_1211.z);
        u_xlat58.x = x_1213;
        let x_1216 : f32 = u_xlat13.w;
        let x_1218 : f32 = u_xlat58.x;
        let x_1221 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1216 * x_1218) + x_1221);
        let x_1225 : vec4<f32> = u_xlat11;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
        let x_1228 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1235 : vec3<f32> = txVec8;
        let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1235.xy, x_1235.z);
        u_xlat58.x = x_1237;
        let x_1240 : f32 = u_xlat14.x;
        let x_1242 : f32 = u_xlat58.x;
        let x_1245 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1240 * x_1242) + x_1245);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.z, x_1249.w);
        let x_1252 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec9;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat58.x = x_1261;
        let x_1264 : f32 = u_xlat14.y;
        let x_1266 : f32 = u_xlat58.x;
        let x_1269 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1264 * x_1266) + x_1269);
        let x_1273 : vec4<f32> = u_xlat9;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.z, x_1273.w);
        let x_1276 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec10;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1283.xy, x_1283.z);
        u_xlat58.x = x_1285;
        let x_1288 : f32 = u_xlat14.z;
        let x_1290 : f32 = u_xlat58.x;
        let x_1293 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1288 * x_1290) + x_1293);
        let x_1297 : vec4<f32> = u_xlat8;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec11;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat58.x = x_1309;
        let x_1312 : f32 = u_xlat14.w;
        let x_1314 : f32 = u_xlat58.x;
        let x_1317 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1312 * x_1314) + x_1317);
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec12;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat58.x = x_1333;
        let x_1336 : f32 = u_xlat6.x;
        let x_1338 : f32 = u_xlat58.x;
        let x_1341 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1336 * x_1338) + x_1341);
      } else {
        let x_1344 : vec4<f32> = vs_TEXCOORD8;
        let x_1347 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1347.z, x_1347.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1351 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat6;
        let x_1355 : vec2<f32> = floor(vec2<f32>(x_1353.x, x_1353.y));
        let x_1356 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1355.x, x_1355.y, x_1356.z, x_1356.w);
        let x_1358 : vec4<f32> = vs_TEXCOORD8;
        let x_1361 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1361.z, x_1361.w)) + -(vec2<f32>(x_1364.x, x_1364.y)));
        let x_1368 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1368.x, x_1368.x, x_1368.y, x_1368.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1373 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1371.x, x_1371.x, x_1371.z, x_1371.z) * vec4<f32>(x_1373.x, x_1373.x, x_1373.z, x_1373.z));
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1380 : vec2<f32> = (vec2<f32>(x_1376.y, x_1376.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1381 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1381.x, x_1380.x, x_1381.z, x_1380.y);
        let x_1383 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = u_xlat58;
        let x_1388 : vec2<f32> = ((vec2<f32>(x_1383.x, x_1383.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1386));
        let x_1389 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1389.w);
        let x_1391 : vec2<f32> = u_xlat58;
        let x_1393 : vec2<f32> = (-(x_1391) + vec2<f32>(1.0f, 1.0f));
        let x_1394 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1396 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1396, vec2<f32>(0.0f, 0.0f));
        let x_1398 : vec2<f32> = u_xlat60;
        let x_1400 : vec2<f32> = u_xlat60;
        let x_1402 : vec4<f32> = u_xlat8;
        let x_1404 : vec2<f32> = ((-(x_1398) * x_1400) + vec2<f32>(x_1402.x, x_1402.y));
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1407 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1407, vec2<f32>(0.0f, 0.0f));
        let x_1410 : vec2<f32> = u_xlat60;
        let x_1412 : vec2<f32> = u_xlat60;
        let x_1414 : vec4<f32> = u_xlat7;
        let x_1416 : vec2<f32> = ((-(x_1410) * x_1412) + vec2<f32>(x_1414.y, x_1414.w));
        let x_1417 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1416.x, x_1417.y, x_1416.y);
        let x_1419 : vec4<f32> = u_xlat8;
        let x_1422 : vec2<f32> = (vec2<f32>(x_1419.x, x_1419.y) + vec2<f32>(2.0f, 2.0f));
        let x_1423 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1422.x, x_1422.y, x_1423.z, x_1423.w);
        let x_1425 : vec3<f32> = u_xlat33;
        let x_1427 : vec2<f32> = (vec2<f32>(x_1425.x, x_1425.z) + vec2<f32>(2.0f, 2.0f));
        let x_1428 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1428.x, x_1427.x, x_1428.z, x_1427.y);
        let x_1431 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1431 * 0.08163200318813323975f);
        let x_1435 : vec4<f32> = u_xlat7;
        let x_1438 : vec3<f32> = (vec3<f32>(x_1435.z, x_1435.x, x_1435.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
        let x_1441 : vec4<f32> = u_xlat8;
        let x_1444 : vec2<f32> = (vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1445 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
        let x_1448 : f32 = u_xlat11.y;
        u_xlat10.x = x_1448;
        let x_1450 : vec2<f32> = u_xlat58;
        let x_1457 : vec2<f32> = ((vec2<f32>(x_1450.x, x_1450.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1458 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1458.x, x_1457.x, x_1458.z, x_1457.y);
        let x_1460 : vec2<f32> = u_xlat58;
        let x_1464 : vec2<f32> = ((vec2<f32>(x_1460.x, x_1460.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1465 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1464.x, x_1465.y, x_1464.y, x_1465.w);
        let x_1468 : f32 = u_xlat7.x;
        u_xlat8.y = x_1468;
        let x_1471 : f32 = u_xlat9.y;
        u_xlat8.w = x_1471;
        let x_1473 : vec4<f32> = u_xlat8;
        let x_1474 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1473 + x_1474);
        let x_1476 : vec2<f32> = u_xlat58;
        let x_1479 : vec2<f32> = ((vec2<f32>(x_1476.y, x_1476.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1480.x, x_1479.x, x_1480.z, x_1479.y);
        let x_1482 : vec2<f32> = u_xlat58;
        let x_1485 : vec2<f32> = ((vec2<f32>(x_1482.y, x_1482.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1486 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1485.x, x_1486.y, x_1485.y, x_1486.w);
        let x_1489 : f32 = u_xlat7.y;
        u_xlat9.y = x_1489;
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1491 + x_1492);
        let x_1494 : vec4<f32> = u_xlat8;
        let x_1495 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1494 / x_1495);
        let x_1497 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1497 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1503 : vec4<f32> = u_xlat9;
        let x_1504 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1503 / x_1504);
        let x_1506 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1506 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1508 : vec4<f32> = u_xlat8;
        let x_1511 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1508.w, x_1508.x, x_1508.y, x_1508.z) * vec4<f32>(x_1511.x, x_1511.x, x_1511.x, x_1511.x));
        let x_1514 : vec4<f32> = u_xlat9;
        let x_1517 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1514.x, x_1514.w, x_1514.y, x_1514.z) * vec4<f32>(x_1517.y, x_1517.y, x_1517.y, x_1517.y));
        let x_1520 : vec4<f32> = u_xlat8;
        let x_1521 : vec3<f32> = vec3<f32>(x_1520.y, x_1520.z, x_1520.w);
        let x_1522 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1521.x, x_1522.y, x_1521.y, x_1521.z);
        let x_1525 : f32 = u_xlat9.x;
        u_xlat11.y = x_1525;
        let x_1527 : vec4<f32> = u_xlat6;
        let x_1530 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1527.x, x_1527.y, x_1527.x, x_1527.y) * vec4<f32>(x_1530.x, x_1530.y, x_1530.x, x_1530.y)) + vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1533.y));
        let x_1536 : vec4<f32> = u_xlat6;
        let x_1539 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1542 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1536.x, x_1536.y) * vec2<f32>(x_1539.x, x_1539.y)) + vec2<f32>(x_1542.w, x_1542.y));
        let x_1546 : f32 = u_xlat11.y;
        u_xlat8.y = x_1546;
        let x_1549 : f32 = u_xlat9.z;
        u_xlat11.y = x_1549;
        let x_1551 : vec4<f32> = u_xlat6;
        let x_1554 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1551.x, x_1551.y, x_1551.x, x_1551.y) * vec4<f32>(x_1554.x, x_1554.y, x_1554.x, x_1554.y)) + vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1557.y));
        let x_1560 : vec4<f32> = u_xlat6;
        let x_1563 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1566 : vec4<f32> = u_xlat11;
        let x_1568 : vec2<f32> = ((vec2<f32>(x_1560.x, x_1560.y) * vec2<f32>(x_1563.x, x_1563.y)) + vec2<f32>(x_1566.w, x_1566.y));
        let x_1569 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1568.x, x_1568.y, x_1569.z, x_1569.w);
        let x_1572 : f32 = u_xlat11.y;
        u_xlat8.z = x_1572;
        let x_1575 : vec4<f32> = u_xlat6;
        let x_1578 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1581 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1575.x, x_1575.y, x_1575.x, x_1575.y) * vec4<f32>(x_1578.x, x_1578.y, x_1578.x, x_1578.y)) + vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.z));
        let x_1585 : f32 = u_xlat9.w;
        u_xlat11.y = x_1585;
        let x_1588 : vec4<f32> = u_xlat6;
        let x_1591 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1594 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1588.x, x_1588.y, x_1588.x, x_1588.y) * vec4<f32>(x_1591.x, x_1591.y, x_1591.x, x_1591.y)) + vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1594.y));
        let x_1598 : vec4<f32> = u_xlat6;
        let x_1601 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(x_1601.x, x_1601.y)) + vec2<f32>(x_1604.w, x_1604.y));
        let x_1608 : f32 = u_xlat11.y;
        u_xlat8.w = x_1608;
        let x_1611 : vec4<f32> = u_xlat6;
        let x_1614 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1611.x, x_1611.y) * vec2<f32>(x_1614.x, x_1614.y)) + vec2<f32>(x_1617.x, x_1617.w));
        let x_1620 : vec4<f32> = u_xlat11;
        let x_1621 : vec3<f32> = vec3<f32>(x_1620.x, x_1620.z, x_1620.w);
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1621.x, x_1622.y, x_1621.y, x_1621.z);
        let x_1624 : vec4<f32> = u_xlat6;
        let x_1627 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1624.x, x_1624.y, x_1624.x, x_1624.y) * vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.y)) + vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1630.y));
        let x_1634 : vec4<f32> = u_xlat6;
        let x_1637 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.w, x_1640.y));
        let x_1644 : f32 = u_xlat8.x;
        u_xlat9.x = x_1644;
        let x_1646 : vec4<f32> = u_xlat6;
        let x_1649 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1652 : vec4<f32> = u_xlat9;
        let x_1654 : vec2<f32> = ((vec2<f32>(x_1646.x, x_1646.y) * vec2<f32>(x_1649.x, x_1649.y)) + vec2<f32>(x_1652.x, x_1652.y));
        let x_1655 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1654.x, x_1654.y, x_1655.z, x_1655.w);
        let x_1658 : vec4<f32> = u_xlat7;
        let x_1660 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1658.x, x_1658.x, x_1658.x, x_1658.x) * x_1660);
        let x_1663 : vec4<f32> = u_xlat7;
        let x_1665 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1663.y, x_1663.y, x_1663.y, x_1663.y) * x_1665);
        let x_1668 : vec4<f32> = u_xlat7;
        let x_1670 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1668.z, x_1668.z, x_1668.z, x_1668.z) * x_1670);
        let x_1672 : vec4<f32> = u_xlat7;
        let x_1674 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1672.w, x_1672.w, x_1672.w, x_1672.w) * x_1674);
        let x_1677 : vec4<f32> = u_xlat12;
        let x_1678 : vec2<f32> = vec2<f32>(x_1677.x, x_1677.y);
        let x_1680 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec13;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1687.xy, x_1687.z);
        u_xlat8.x = x_1689;
        let x_1692 : vec4<f32> = u_xlat12;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.z, x_1692.w);
        let x_1695 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1703 : vec3<f32> = txVec14;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1703.xy, x_1703.z);
        u_xlat86 = x_1705;
        let x_1706 : f32 = u_xlat86;
        let x_1708 : f32 = u_xlat17.y;
        u_xlat86 = (x_1706 * x_1708);
        let x_1711 : f32 = u_xlat17.x;
        let x_1713 : f32 = u_xlat8.x;
        let x_1715 : f32 = u_xlat86;
        u_xlat8.x = ((x_1711 * x_1713) + x_1715);
        let x_1719 : vec2<f32> = u_xlat58;
        let x_1721 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec15;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat58.x = x_1730;
        let x_1733 : f32 = u_xlat17.z;
        let x_1735 : f32 = u_xlat58.x;
        let x_1738 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1733 * x_1735) + x_1738);
        let x_1742 : vec4<f32> = u_xlat15;
        let x_1743 : vec2<f32> = vec2<f32>(x_1742.x, x_1742.y);
        let x_1745 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1753 : vec3<f32> = txVec16;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat84 = x_1755;
        let x_1757 : f32 = u_xlat17.w;
        let x_1758 : f32 = u_xlat84;
        let x_1761 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1757 * x_1758) + x_1761);
        let x_1765 : vec4<f32> = u_xlat13;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec17;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1775.xy, x_1775.z);
        u_xlat84 = x_1777;
        let x_1779 : f32 = u_xlat18.x;
        let x_1780 : f32 = u_xlat84;
        let x_1783 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1779 * x_1780) + x_1783);
        let x_1787 : vec4<f32> = u_xlat13;
        let x_1788 : vec2<f32> = vec2<f32>(x_1787.z, x_1787.w);
        let x_1790 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec18;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1797.xy, x_1797.z);
        u_xlat84 = x_1799;
        let x_1801 : f32 = u_xlat18.y;
        let x_1802 : f32 = u_xlat84;
        let x_1805 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1801 * x_1802) + x_1805);
        let x_1809 : vec4<f32> = u_xlat14;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.x, x_1809.y);
        let x_1812 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec19;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1819.xy, x_1819.z);
        u_xlat84 = x_1821;
        let x_1823 : f32 = u_xlat18.z;
        let x_1824 : f32 = u_xlat84;
        let x_1827 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1823 * x_1824) + x_1827);
        let x_1831 : vec4<f32> = u_xlat15;
        let x_1832 : vec2<f32> = vec2<f32>(x_1831.z, x_1831.w);
        let x_1834 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1832.x, x_1832.y, x_1834);
        let x_1841 : vec3<f32> = txVec20;
        let x_1843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1841.xy, x_1841.z);
        u_xlat84 = x_1843;
        let x_1845 : f32 = u_xlat18.w;
        let x_1846 : f32 = u_xlat84;
        let x_1849 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1845 * x_1846) + x_1849);
        let x_1853 : vec4<f32> = u_xlat16;
        let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
        let x_1856 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec21;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat84 = x_1865;
        let x_1867 : f32 = u_xlat19.x;
        let x_1868 : f32 = u_xlat84;
        let x_1871 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1867 * x_1868) + x_1871);
        let x_1875 : vec4<f32> = u_xlat16;
        let x_1876 : vec2<f32> = vec2<f32>(x_1875.z, x_1875.w);
        let x_1878 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1885 : vec3<f32> = txVec22;
        let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
        u_xlat84 = x_1887;
        let x_1889 : f32 = u_xlat19.y;
        let x_1890 : f32 = u_xlat84;
        let x_1893 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1889 * x_1890) + x_1893);
        let x_1897 : vec2<f32> = u_xlat34;
        let x_1899 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec23;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat84 = x_1908;
        let x_1910 : f32 = u_xlat19.z;
        let x_1911 : f32 = u_xlat84;
        let x_1914 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1910 * x_1911) + x_1914);
        let x_1918 : vec2<f32> = u_xlat66;
        let x_1920 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1927 : vec3<f32> = txVec24;
        let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1927.xy, x_1927.z);
        u_xlat84 = x_1929;
        let x_1931 : f32 = u_xlat19.w;
        let x_1932 : f32 = u_xlat84;
        let x_1935 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1931 * x_1932) + x_1935);
        let x_1939 : vec4<f32> = u_xlat11;
        let x_1940 : vec2<f32> = vec2<f32>(x_1939.x, x_1939.y);
        let x_1942 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec25;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1949.xy, x_1949.z);
        u_xlat84 = x_1951;
        let x_1953 : f32 = u_xlat7.x;
        let x_1954 : f32 = u_xlat84;
        let x_1957 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1953 * x_1954) + x_1957);
        let x_1961 : vec4<f32> = u_xlat11;
        let x_1962 : vec2<f32> = vec2<f32>(x_1961.z, x_1961.w);
        let x_1964 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
        let x_1971 : vec3<f32> = txVec26;
        let x_1973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1971.xy, x_1971.z);
        u_xlat84 = x_1973;
        let x_1975 : f32 = u_xlat7.y;
        let x_1976 : f32 = u_xlat84;
        let x_1979 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1975 * x_1976) + x_1979);
        let x_1983 : vec2<f32> = u_xlat61;
        let x_1985 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1983.x, x_1983.y, x_1985);
        let x_1992 : vec3<f32> = txVec27;
        let x_1994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1992.xy, x_1992.z);
        u_xlat84 = x_1994;
        let x_1996 : f32 = u_xlat7.z;
        let x_1997 : f32 = u_xlat84;
        let x_2000 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1996 * x_1997) + x_2000);
        let x_2004 : vec4<f32> = u_xlat6;
        let x_2005 : vec2<f32> = vec2<f32>(x_2004.x, x_2004.y);
        let x_2007 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec28;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2014.xy, x_2014.z);
        u_xlat6.x = x_2016;
        let x_2019 : f32 = u_xlat7.w;
        let x_2021 : f32 = u_xlat6.x;
        let x_2024 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2019 * x_2021) + x_2024);
      }
    }
  } else {
    let x_2028 : vec4<f32> = vs_TEXCOORD8;
    let x_2029 : vec2<f32> = vec2<f32>(x_2028.x, x_2028.y);
    let x_2031 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
    let x_2038 : vec3<f32> = txVec29;
    let x_2040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2038.xy, x_2038.z);
    u_xlat83 = x_2040;
  }
  let x_2042 : f32 = x_769.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2042) + 1.0f);
  let x_2046 : f32 = u_xlat83;
  let x_2048 : f32 = x_769.x_MainLightShadowParams.x;
  let x_2051 : f32 = u_xlat6.x;
  u_xlat83 = ((x_2046 * x_2048) + x_2051);
  let x_2054 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2054);
  let x_2060 : f32 = vs_TEXCOORD8.z;
  u_xlatb32.x = (x_2060 >= 1.0f);
  let x_2064 : bool = u_xlatb32.x;
  let x_2065 : bool = u_xlatb6;
  u_xlatb6 = (x_2064 | x_2065);
  let x_2067 : bool = u_xlatb6;
  let x_2068 : f32 = u_xlat83;
  u_xlat83 = select(x_2068, 1.0f, x_2067);
  let x_2070 : vec3<f32> = vs_TEXCOORD7;
  let x_2072 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2074 : vec3<f32> = (x_2070 + -(x_2072));
  let x_2075 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : vec4<f32> = u_xlat6;
  let x_2079 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2084 : f32 = u_xlat6.x;
  let x_2086 : f32 = x_769.x_MainLightShadowParams.z;
  let x_2089 : f32 = x_769.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_2084 * x_2086) + x_2089);
  let x_2093 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_2093, 0.0f, 1.0f);
  let x_2096 : f32 = u_xlat83;
  u_xlat58.x = (-(x_2096) + 1.0f);
  let x_2101 : f32 = u_xlat32.x;
  let x_2103 : f32 = u_xlat58.x;
  let x_2105 : f32 = u_xlat83;
  u_xlat83 = ((x_2101 * x_2103) + x_2105);
  let x_2114 : f32 = x_2112.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_2114 == -1.0f));
  let x_2118 : bool = u_xlatb32.x;
  if (x_2118) {
    let x_2121 : vec3<f32> = vs_TEXCOORD7;
    let x_2124 : vec4<f32> = x_2112.x_MainLightWorldToLight[1i];
    let x_2126 : vec2<f32> = (vec2<f32>(x_2121.y, x_2121.y) * vec2<f32>(x_2124.x, x_2124.y));
    let x_2127 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2126.x, x_2126.y, x_2127.z);
    let x_2130 : vec4<f32> = x_2112.x_MainLightWorldToLight[0i];
    let x_2132 : vec3<f32> = vs_TEXCOORD7;
    let x_2135 : vec3<f32> = u_xlat32;
    let x_2137 : vec2<f32> = ((vec2<f32>(x_2130.x, x_2130.y) * vec2<f32>(x_2132.x, x_2132.x)) + vec2<f32>(x_2135.x, x_2135.y));
    let x_2138 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2137.x, x_2137.y, x_2138.z);
    let x_2141 : vec4<f32> = x_2112.x_MainLightWorldToLight[2i];
    let x_2143 : vec3<f32> = vs_TEXCOORD7;
    let x_2146 : vec3<f32> = u_xlat32;
    let x_2148 : vec2<f32> = ((vec2<f32>(x_2141.x, x_2141.y) * vec2<f32>(x_2143.z, x_2143.z)) + vec2<f32>(x_2146.x, x_2146.y));
    let x_2149 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2148.x, x_2148.y, x_2149.z);
    let x_2151 : vec3<f32> = u_xlat32;
    let x_2154 : vec4<f32> = x_2112.x_MainLightWorldToLight[3i];
    let x_2156 : vec2<f32> = (vec2<f32>(x_2151.x, x_2151.y) + vec2<f32>(x_2154.x, x_2154.y));
    let x_2157 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2156.x, x_2156.y, x_2157.z);
    let x_2159 : vec3<f32> = u_xlat32;
    let x_2162 : vec2<f32> = ((vec2<f32>(x_2159.x, x_2159.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2163 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2162.x, x_2162.y, x_2163.z);
    let x_2170 : vec3<f32> = u_xlat32;
    let x_2173 : f32 = x_113.x_GlobalMipBias.x;
    let x_2174 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2170.x, x_2170.y), x_2173);
    u_xlat7 = x_2174;
    let x_2176 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2178 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2180 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2182 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2183 : vec4<f32> = vec4<f32>(x_2176, x_2178, x_2180, x_2182);
    let x_2190 : vec4<bool> = (vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2183.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_2190.x, x_2190.y);
    let x_2193 : bool = u_xlatb32.y;
    if (x_2193) {
      let x_2199 : f32 = u_xlat7.w;
      x_2195 = x_2199;
    } else {
      let x_2202 : f32 = u_xlat7.x;
      x_2195 = x_2202;
    }
    let x_2203 : f32 = x_2195;
    u_xlat58.x = x_2203;
    let x_2206 : bool = u_xlatb32.x;
    if (x_2206) {
      let x_2210 : vec4<f32> = u_xlat7;
      x_2207 = vec3<f32>(x_2210.x, x_2210.y, x_2210.z);
    } else {
      let x_2213 : vec2<f32> = u_xlat58;
      x_2207 = vec3<f32>(x_2213.x, x_2213.x, x_2213.x);
    }
    let x_2215 : vec3<f32> = x_2207;
    u_xlat32 = x_2215;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_2220 : vec3<f32> = u_xlat32;
  let x_2222 : vec4<f32> = x_113.x_MainLightColor;
  u_xlat32 = (x_2220 * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = u_xlat1;
  let x_2228 : vec4<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_2225.x, x_2225.y, x_2225.z)), vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
  let x_2233 : f32 = u_xlat7.x;
  let x_2235 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2233 + x_2235);
  let x_2238 : vec4<f32> = u_xlat2;
  let x_2240 : vec4<f32> = u_xlat7;
  let x_2244 : vec4<f32> = u_xlat1;
  let x_2247 : vec3<f32> = ((vec3<f32>(x_2238.x, x_2238.y, x_2238.z) * -(vec3<f32>(x_2240.x, x_2240.x, x_2240.x))) + -(vec3<f32>(x_2244.x, x_2244.y, x_2244.z)));
  let x_2248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
  let x_2251 : vec4<f32> = u_xlat2;
  let x_2253 : vec4<f32> = u_xlat1;
  u_xlat85 = dot(vec3<f32>(x_2251.x, x_2251.y, x_2251.z), vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
  let x_2256 : f32 = u_xlat85;
  u_xlat85 = clamp(x_2256, 0.0f, 1.0f);
  let x_2258 : f32 = u_xlat85;
  u_xlat85 = (-(x_2258) + 1.0f);
  let x_2261 : f32 = u_xlat85;
  let x_2262 : f32 = u_xlat85;
  u_xlat85 = (x_2261 * x_2262);
  let x_2264 : f32 = u_xlat85;
  let x_2265 : f32 = u_xlat85;
  u_xlat85 = (x_2264 * x_2265);
  let x_2268 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_2268) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2276 : f32 = u_xlat0.x;
  let x_2278 : f32 = u_xlat8.x;
  u_xlat0.x = (x_2276 * x_2278);
  let x_2282 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2282 * 6.0f);
  let x_2294 : vec4<f32> = u_xlat7;
  let x_2297 : f32 = u_xlat0.x;
  let x_2298 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2294.x, x_2294.y, x_2294.z), x_2297);
  u_xlat8 = x_2298;
  let x_2300 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2300 + -1.0f);
  let x_2304 : f32 = x_625.unity_SpecCube0_HDR.w;
  let x_2306 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2304 * x_2306) + 1.0f);
  let x_2311 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2311, 0.0f);
  let x_2315 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2315);
  let x_2319 : f32 = u_xlat0.x;
  let x_2321 : f32 = x_625.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2319 * x_2321);
  let x_2325 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2325);
  let x_2329 : f32 = u_xlat0.x;
  let x_2331 : f32 = x_625.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2329 * x_2331);
  let x_2334 : vec4<f32> = u_xlat8;
  let x_2336 : vec3<f32> = u_xlat0;
  let x_2338 : vec3<f32> = (vec3<f32>(x_2334.x, x_2334.y, x_2334.z) * vec3<f32>(x_2336.x, x_2336.x, x_2336.x));
  let x_2339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
  let x_2341 : f32 = u_xlat52;
  let x_2343 : f32 = u_xlat52;
  let x_2347 : vec2<f32> = ((vec2<f32>(x_2341, x_2341) * vec2<f32>(x_2343, x_2343)) + vec2<f32>(-1.0f, 1.0f));
  let x_2348 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2347.x, x_2348.y, x_2347.y);
  let x_2351 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2351);
  let x_2353 : vec4<f32> = u_xlat5;
  let x_2356 : f32 = u_xlat81;
  let x_2358 : vec3<f32> = (-(vec3<f32>(x_2353.x, x_2353.y, x_2353.z)) + vec3<f32>(x_2356, x_2356, x_2356));
  let x_2359 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
  let x_2361 : f32 = u_xlat85;
  let x_2363 : vec4<f32> = u_xlat8;
  let x_2366 : vec4<f32> = u_xlat5;
  let x_2368 : vec3<f32> = ((vec3<f32>(x_2361, x_2361, x_2361) * vec3<f32>(x_2363.x, x_2363.y, x_2363.z)) + vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
  let x_2369 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
  let x_2371 : f32 = u_xlat52;
  let x_2373 : vec4<f32> = u_xlat8;
  let x_2375 : vec3<f32> = (vec3<f32>(x_2371, x_2371, x_2371) * vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
  let x_2376 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
  let x_2378 : vec4<f32> = u_xlat7;
  let x_2380 : vec4<f32> = u_xlat8;
  let x_2382 : vec3<f32> = (vec3<f32>(x_2378.x, x_2378.y, x_2378.z) * vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
  let x_2383 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
  let x_2385 : vec4<f32> = u_xlat3;
  let x_2387 : vec4<f32> = u_xlat4;
  let x_2390 : vec4<f32> = u_xlat7;
  let x_2392 : vec3<f32> = ((vec3<f32>(x_2385.x, x_2385.y, x_2385.z) * vec3<f32>(x_2387.x, x_2387.y, x_2387.z)) + vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
  let x_2393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
  let x_2395 : f32 = u_xlat83;
  let x_2397 : f32 = x_625.unity_LightData.z;
  u_xlat52 = (x_2395 * x_2397);
  let x_2399 : vec4<f32> = u_xlat2;
  let x_2402 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_2399.x, x_2399.y, x_2399.z), vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
  let x_2405 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2405, 0.0f, 1.0f);
  let x_2407 : f32 = u_xlat52;
  let x_2408 : f32 = u_xlat81;
  u_xlat52 = (x_2407 * x_2408);
  let x_2410 : f32 = u_xlat52;
  let x_2412 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2410, x_2410, x_2410) * x_2412);
  let x_2414 : vec4<f32> = u_xlat1;
  let x_2417 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2419 : vec3<f32> = (vec3<f32>(x_2414.x, x_2414.y, x_2414.z) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
  let x_2422 : vec4<f32> = u_xlat7;
  let x_2424 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2422.x, x_2422.y, x_2422.z), vec3<f32>(x_2424.x, x_2424.y, x_2424.z));
  let x_2427 : f32 = u_xlat52;
  u_xlat52 = max(x_2427, 1.17549435e-38f);
  let x_2430 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2430);
  let x_2432 : f32 = u_xlat52;
  let x_2434 : vec4<f32> = u_xlat7;
  let x_2436 : vec3<f32> = (vec3<f32>(x_2432, x_2432, x_2432) * vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
  let x_2439 : vec4<f32> = u_xlat2;
  let x_2441 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2439.x, x_2439.y, x_2439.z), vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
  let x_2444 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2444, 0.0f, 1.0f);
  let x_2447 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2449 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_2447.x, x_2447.y, x_2447.z), vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2452, 0.0f, 1.0f);
  let x_2454 : f32 = u_xlat52;
  let x_2455 : f32 = u_xlat52;
  u_xlat52 = (x_2454 * x_2455);
  let x_2457 : f32 = u_xlat52;
  let x_2459 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2457 * x_2459) + 1.00001001358032226562f);
  let x_2463 : f32 = u_xlat81;
  let x_2464 : f32 = u_xlat81;
  u_xlat81 = (x_2463 * x_2464);
  let x_2466 : f32 = u_xlat52;
  let x_2467 : f32 = u_xlat52;
  u_xlat52 = (x_2466 * x_2467);
  let x_2469 : f32 = u_xlat81;
  u_xlat81 = max(x_2469, 0.10000000149011611938f);
  let x_2472 : f32 = u_xlat52;
  let x_2473 : f32 = u_xlat81;
  u_xlat52 = (x_2472 * x_2473);
  let x_2475 : f32 = u_xlat82;
  let x_2476 : f32 = u_xlat52;
  u_xlat52 = (x_2475 * x_2476);
  let x_2478 : f32 = u_xlat80;
  let x_2479 : f32 = u_xlat52;
  u_xlat52 = (x_2478 / x_2479);
  let x_2481 : vec4<f32> = u_xlat5;
  let x_2483 : f32 = u_xlat52;
  let x_2486 : vec4<f32> = u_xlat4;
  let x_2488 : vec3<f32> = ((vec3<f32>(x_2481.x, x_2481.y, x_2481.z) * vec3<f32>(x_2483, x_2483, x_2483)) + vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
  let x_2489 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
  let x_2491 : vec3<f32> = u_xlat32;
  let x_2492 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2491 * vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2496 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2498 : f32 = x_625.unity_LightData.y;
  u_xlat52 = min(x_2496, x_2498);
  let x_2502 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2502));
  let x_2506 : f32 = u_xlat6.x;
  let x_2508 : f32 = x_769.x_AdditionalShadowFadeParams.x;
  let x_2511 : f32 = x_769.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2506 * x_2508) + x_2511);
  let x_2513 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2513, 0.0f, 1.0f);
  let x_2517 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2519 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2521 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2523 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2524 : vec4<f32> = vec4<f32>(x_2517, x_2519, x_2521, x_2523);
  let x_2530 : vec4<bool> = (vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2524.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2530.x, x_2530.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2542 : u32 = u_xlatu_loop_1;
    let x_2543 : u32 = u_xlatu52;
    if ((x_2542 < x_2543)) {
    } else {
      break;
    }
    let x_2546 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2546 >> 2u);
    let x_2550 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2550 & 3u));
    let x_2553 : u32 = u_xlatu6;
    let x_2556 : vec4<f32> = x_625.unity_LightIndices[bitcast<i32>(x_2553)];
    let x_2566 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2571 : vec4<u32> = indexable[x_2566];
    u_xlat6.x = dot(x_2556, bitcast<vec4<f32>>(x_2571));
    let x_2577 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2577);
    let x_2579 : vec3<f32> = vs_TEXCOORD7;
    let x_2590 : i32 = u_xlati6;
    let x_2592 : vec4<f32> = x_2589.x_AdditionalLightsPosition[x_2590];
    let x_2595 : i32 = u_xlati6;
    let x_2597 : vec4<f32> = x_2589.x_AdditionalLightsPosition[x_2595];
    let x_2599 : vec3<f32> = ((-(x_2579) * vec3<f32>(x_2592.w, x_2592.w, x_2592.w)) + vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
    let x_2600 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
    let x_2603 : vec4<f32> = u_xlat9;
    let x_2605 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2603.x, x_2603.y, x_2603.z), vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
    let x_2608 : f32 = u_xlat59;
    u_xlat59 = max(x_2608, 0.00006103515625f);
    let x_2610 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2610);
    let x_2612 : f32 = u_xlat85;
    let x_2614 : vec4<f32> = u_xlat9;
    let x_2616 : vec3<f32> = (vec3<f32>(x_2612, x_2612, x_2612) * vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
    let x_2617 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
    let x_2619 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2619);
    let x_2621 : f32 = u_xlat59;
    let x_2622 : i32 = u_xlati6;
    let x_2624 : f32 = x_2589.x_AdditionalLightsAttenuation[x_2622].x;
    u_xlat59 = (x_2621 * x_2624);
    let x_2626 : f32 = u_xlat59;
    let x_2628 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2626) * x_2628) + 1.0f);
    let x_2631 : f32 = u_xlat59;
    u_xlat59 = max(x_2631, 0.0f);
    let x_2633 : f32 = u_xlat59;
    let x_2634 : f32 = u_xlat59;
    u_xlat59 = (x_2633 * x_2634);
    let x_2636 : f32 = u_xlat59;
    let x_2637 : f32 = u_xlat86;
    u_xlat59 = (x_2636 * x_2637);
    let x_2639 : i32 = u_xlati6;
    let x_2641 : vec4<f32> = x_2589.x_AdditionalLightsSpotDir[x_2639];
    let x_2643 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2641.x, x_2641.y, x_2641.z), vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
    let x_2646 : f32 = u_xlat86;
    let x_2647 : i32 = u_xlati6;
    let x_2649 : f32 = x_2589.x_AdditionalLightsAttenuation[x_2647].z;
    let x_2651 : i32 = u_xlati6;
    let x_2653 : f32 = x_2589.x_AdditionalLightsAttenuation[x_2651].w;
    u_xlat86 = ((x_2646 * x_2649) + x_2653);
    let x_2655 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2655, 0.0f, 1.0f);
    let x_2657 : f32 = u_xlat86;
    let x_2658 : f32 = u_xlat86;
    u_xlat86 = (x_2657 * x_2658);
    let x_2660 : f32 = u_xlat59;
    let x_2661 : f32 = u_xlat86;
    u_xlat59 = (x_2660 * x_2661);
    let x_2664 : i32 = u_xlati6;
    let x_2666 : f32 = x_769.x_AdditionalShadowParams[x_2664].w;
    u_xlati86 = i32(x_2666);
    let x_2669 : i32 = u_xlati86;
    u_xlatb87 = (x_2669 >= 0i);
    let x_2671 : bool = u_xlatb87;
    if (x_2671) {
      let x_2675 : i32 = u_xlati6;
      let x_2677 : f32 = x_769.x_AdditionalShadowParams[x_2675].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2677, x_2677, x_2677, x_2677))));
      let x_2681 : bool = u_xlatb87;
      if (x_2681) {
        let x_2686 : vec4<f32> = u_xlat10;
        let x_2689 : vec4<f32> = u_xlat10;
        let x_2692 : vec4<bool> = (abs(vec4<f32>(x_2686.z, x_2686.z, x_2686.y, x_2686.z)) >= abs(vec4<f32>(x_2689.x, x_2689.y, x_2689.x, x_2689.x)));
        let x_2694 : vec3<bool> = vec3<bool>(x_2692.x, x_2692.y, x_2692.z);
        let x_2695 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2694.x, x_2694.y, x_2694.z, x_2695.w);
        let x_2698 : bool = u_xlatb11.y;
        let x_2700 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2698 & x_2700);
        let x_2702 : vec4<f32> = u_xlat10;
        let x_2705 : vec4<bool> = (-(vec4<f32>(x_2702.z, x_2702.y, x_2702.z, x_2702.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2706 : vec3<bool> = vec3<bool>(x_2705.x, x_2705.y, x_2705.w);
        let x_2707 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2706.x, x_2706.y, x_2707.z, x_2706.z);
        let x_2710 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2710);
        let x_2715 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2715);
        let x_2721 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2721);
        let x_2724 : bool = u_xlatb11.z;
        if (x_2724) {
          let x_2729 : f32 = u_xlat11.y;
          x_2725 = x_2729;
        } else {
          let x_2731 : f32 = u_xlat88;
          x_2725 = x_2731;
        }
        let x_2732 : f32 = x_2725;
        u_xlat88 = x_2732;
        let x_2734 : bool = u_xlatb87;
        if (x_2734) {
          let x_2739 : f32 = u_xlat11.x;
          x_2735 = x_2739;
        } else {
          let x_2741 : f32 = u_xlat88;
          x_2735 = x_2741;
        }
        let x_2742 : f32 = x_2735;
        u_xlat87 = x_2742;
        let x_2743 : i32 = u_xlati6;
        let x_2745 : f32 = x_769.x_AdditionalShadowParams[x_2743].w;
        u_xlat88 = trunc(x_2745);
        let x_2747 : f32 = u_xlat87;
        let x_2748 : f32 = u_xlat88;
        u_xlat87 = (x_2747 + x_2748);
        let x_2750 : f32 = u_xlat87;
        u_xlati86 = i32(x_2750);
      }
      let x_2752 : i32 = u_xlati86;
      u_xlati86 = (x_2752 << bitcast<u32>(2i));
      let x_2754 : vec3<f32> = vs_TEXCOORD7;
      let x_2756 : i32 = u_xlati86;
      let x_2759 : i32 = u_xlati86;
      let x_2763 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[((x_2756 + 1i) / 4i)][((x_2759 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2754.y, x_2754.y, x_2754.y, x_2754.y) * x_2763);
      let x_2765 : i32 = u_xlati86;
      let x_2767 : i32 = u_xlati86;
      let x_2770 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[(x_2765 / 4i)][(x_2767 % 4i)];
      let x_2771 : vec3<f32> = vs_TEXCOORD7;
      let x_2774 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2770 * vec4<f32>(x_2771.x, x_2771.x, x_2771.x, x_2771.x)) + x_2774);
      let x_2776 : i32 = u_xlati86;
      let x_2779 : i32 = u_xlati86;
      let x_2783 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[((x_2776 + 2i) / 4i)][((x_2779 + 2i) % 4i)];
      let x_2784 : vec3<f32> = vs_TEXCOORD7;
      let x_2787 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2783 * vec4<f32>(x_2784.z, x_2784.z, x_2784.z, x_2784.z)) + x_2787);
      let x_2789 : vec4<f32> = u_xlat11;
      let x_2790 : i32 = u_xlati86;
      let x_2793 : i32 = u_xlati86;
      let x_2797 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[((x_2790 + 3i) / 4i)][((x_2793 + 3i) % 4i)];
      u_xlat11 = (x_2789 + x_2797);
      let x_2799 : vec4<f32> = u_xlat11;
      let x_2801 : vec4<f32> = u_xlat11;
      let x_2803 : vec3<f32> = (vec3<f32>(x_2799.x, x_2799.y, x_2799.z) / vec3<f32>(x_2801.w, x_2801.w, x_2801.w));
      let x_2804 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
      let x_2807 : i32 = u_xlati6;
      let x_2809 : f32 = x_769.x_AdditionalShadowParams[x_2807].y;
      u_xlatb86 = (0.0f < x_2809);
      let x_2811 : bool = u_xlatb86;
      if (x_2811) {
        let x_2814 : i32 = u_xlati6;
        let x_2816 : f32 = x_769.x_AdditionalShadowParams[x_2814].y;
        u_xlatb86 = (1.0f == x_2816);
        let x_2818 : bool = u_xlatb86;
        if (x_2818) {
          let x_2821 : vec4<f32> = u_xlat11;
          let x_2824 : vec4<f32> = x_769.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y) + x_2824);
          let x_2827 : vec4<f32> = u_xlat12;
          let x_2828 : vec2<f32> = vec2<f32>(x_2827.x, x_2827.y);
          let x_2830 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2828.x, x_2828.y, x_2830);
          let x_2838 : vec3<f32> = txVec30;
          let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
          u_xlat13.x = x_2840;
          let x_2843 : vec4<f32> = u_xlat12;
          let x_2844 : vec2<f32> = vec2<f32>(x_2843.z, x_2843.w);
          let x_2846 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2844.x, x_2844.y, x_2846);
          let x_2853 : vec3<f32> = txVec31;
          let x_2855 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2853.xy, x_2853.z);
          u_xlat13.y = x_2855;
          let x_2857 : vec4<f32> = u_xlat11;
          let x_2860 : vec4<f32> = x_769.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2857.x, x_2857.y, x_2857.x, x_2857.y) + x_2860);
          let x_2863 : vec4<f32> = u_xlat12;
          let x_2864 : vec2<f32> = vec2<f32>(x_2863.x, x_2863.y);
          let x_2866 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2864.x, x_2864.y, x_2866);
          let x_2873 : vec3<f32> = txVec32;
          let x_2875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2873.xy, x_2873.z);
          u_xlat13.z = x_2875;
          let x_2878 : vec4<f32> = u_xlat12;
          let x_2879 : vec2<f32> = vec2<f32>(x_2878.z, x_2878.w);
          let x_2881 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
          let x_2888 : vec3<f32> = txVec33;
          let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
          u_xlat13.w = x_2890;
          let x_2892 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2892, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2895 : i32 = u_xlati6;
          let x_2897 : f32 = x_769.x_AdditionalShadowParams[x_2895].y;
          u_xlatb87 = (2.0f == x_2897);
          let x_2899 : bool = u_xlatb87;
          if (x_2899) {
            let x_2902 : vec4<f32> = u_xlat11;
            let x_2905 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2908 : vec2<f32> = ((vec2<f32>(x_2902.x, x_2902.y) * vec2<f32>(x_2905.z, x_2905.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2909 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
            let x_2911 : vec4<f32> = u_xlat12;
            let x_2913 : vec2<f32> = floor(vec2<f32>(x_2911.x, x_2911.y));
            let x_2914 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2913.x, x_2913.y, x_2914.z, x_2914.w);
            let x_2917 : vec4<f32> = u_xlat11;
            let x_2920 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2923 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2917.x, x_2917.y) * vec2<f32>(x_2920.z, x_2920.w)) + -(vec2<f32>(x_2923.x, x_2923.y)));
            let x_2927 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2927.x, x_2927.x, x_2927.y, x_2927.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2930 : vec4<f32> = u_xlat13;
            let x_2932 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2930.x, x_2930.x, x_2930.z, x_2930.z) * vec4<f32>(x_2932.x, x_2932.x, x_2932.z, x_2932.z));
            let x_2935 : vec4<f32> = u_xlat14;
            let x_2937 : vec2<f32> = (vec2<f32>(x_2935.y, x_2935.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2938 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2937.x, x_2938.y, x_2937.y, x_2938.w);
            let x_2940 : vec4<f32> = u_xlat14;
            let x_2943 : vec2<f32> = u_xlat64;
            let x_2945 : vec2<f32> = ((vec2<f32>(x_2940.x, x_2940.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2943));
            let x_2946 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2945.x, x_2945.y, x_2946.z, x_2946.w);
            let x_2948 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2948) + vec2<f32>(1.0f, 1.0f));
            let x_2951 : vec2<f32> = u_xlat64;
            let x_2952 : vec2<f32> = min(x_2951, vec2<f32>(0.0f, 0.0f));
            let x_2953 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2952.x, x_2952.y, x_2953.z, x_2953.w);
            let x_2955 : vec4<f32> = u_xlat15;
            let x_2958 : vec4<f32> = u_xlat15;
            let x_2961 : vec2<f32> = u_xlat66;
            let x_2962 : vec2<f32> = ((-(vec2<f32>(x_2955.x, x_2955.y)) * vec2<f32>(x_2958.x, x_2958.y)) + x_2961);
            let x_2963 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2962.x, x_2962.y, x_2963.z, x_2963.w);
            let x_2965 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2965, vec2<f32>(0.0f, 0.0f));
            let x_2967 : vec2<f32> = u_xlat64;
            let x_2969 : vec2<f32> = u_xlat64;
            let x_2971 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2967) * x_2969) + vec2<f32>(x_2971.y, x_2971.w));
            let x_2974 : vec4<f32> = u_xlat15;
            let x_2976 : vec2<f32> = (vec2<f32>(x_2974.x, x_2974.y) + vec2<f32>(1.0f, 1.0f));
            let x_2977 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2976.x, x_2976.y, x_2977.z, x_2977.w);
            let x_2979 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2979 + vec2<f32>(1.0f, 1.0f));
            let x_2981 : vec4<f32> = u_xlat14;
            let x_2983 : vec2<f32> = (vec2<f32>(x_2981.x, x_2981.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2984 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2983.x, x_2983.y, x_2984.z, x_2984.w);
            let x_2986 : vec2<f32> = u_xlat66;
            let x_2987 : vec2<f32> = (x_2986 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2988 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat15;
            let x_2992 : vec2<f32> = (vec2<f32>(x_2990.x, x_2990.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2993 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2992.x, x_2992.y, x_2993.z, x_2993.w);
            let x_2995 : vec2<f32> = u_xlat64;
            let x_2996 : vec2<f32> = (x_2995 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2997 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2996.x, x_2996.y, x_2997.z, x_2997.w);
            let x_2999 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2999.y, x_2999.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3003 : f32 = u_xlat15.x;
            u_xlat16.z = x_3003;
            let x_3006 : f32 = u_xlat64.x;
            u_xlat16.w = x_3006;
            let x_3009 : f32 = u_xlat17.x;
            u_xlat14.z = x_3009;
            let x_3012 : f32 = u_xlat13.x;
            u_xlat14.w = x_3012;
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3016 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3014.z, x_3014.w, x_3014.x, x_3014.z) + vec4<f32>(x_3016.z, x_3016.w, x_3016.x, x_3016.z));
            let x_3020 : f32 = u_xlat16.y;
            u_xlat15.z = x_3020;
            let x_3023 : f32 = u_xlat64.y;
            u_xlat15.w = x_3023;
            let x_3026 : f32 = u_xlat14.y;
            u_xlat17.z = x_3026;
            let x_3029 : f32 = u_xlat13.z;
            u_xlat17.w = x_3029;
            let x_3031 : vec4<f32> = u_xlat15;
            let x_3033 : vec4<f32> = u_xlat17;
            let x_3035 : vec3<f32> = (vec3<f32>(x_3031.z, x_3031.y, x_3031.w) + vec3<f32>(x_3033.z, x_3033.y, x_3033.w));
            let x_3036 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3040 : vec4<f32> = u_xlat18;
            let x_3042 : vec3<f32> = (vec3<f32>(x_3038.x, x_3038.z, x_3038.w) / vec3<f32>(x_3040.z, x_3040.w, x_3040.y));
            let x_3043 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3042.x, x_3042.y, x_3042.z, x_3043.w);
            let x_3045 : vec4<f32> = u_xlat14;
            let x_3047 : vec3<f32> = (vec3<f32>(x_3045.x, x_3045.y, x_3045.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3048 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3048.w);
            let x_3050 : vec4<f32> = u_xlat17;
            let x_3052 : vec4<f32> = u_xlat13;
            let x_3054 : vec3<f32> = (vec3<f32>(x_3050.z, x_3050.y, x_3050.w) / vec3<f32>(x_3052.x, x_3052.y, x_3052.z));
            let x_3055 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3054.x, x_3054.y, x_3054.z, x_3055.w);
            let x_3057 : vec4<f32> = u_xlat15;
            let x_3059 : vec3<f32> = (vec3<f32>(x_3057.x, x_3057.y, x_3057.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3060 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3059.x, x_3059.y, x_3059.z, x_3060.w);
            let x_3062 : vec4<f32> = u_xlat14;
            let x_3065 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3067 : vec3<f32> = (vec3<f32>(x_3062.y, x_3062.x, x_3062.z) * vec3<f32>(x_3065.x, x_3065.x, x_3065.x));
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3067.x, x_3067.y, x_3067.z, x_3068.w);
            let x_3070 : vec4<f32> = u_xlat15;
            let x_3073 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3075 : vec3<f32> = (vec3<f32>(x_3070.x, x_3070.y, x_3070.z) * vec3<f32>(x_3073.y, x_3073.y, x_3073.y));
            let x_3076 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3075.x, x_3075.y, x_3075.z, x_3076.w);
            let x_3079 : f32 = u_xlat15.x;
            u_xlat14.w = x_3079;
            let x_3081 : vec4<f32> = u_xlat12;
            let x_3084 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3087 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3081.x, x_3081.y, x_3081.x, x_3081.y) * vec4<f32>(x_3084.x, x_3084.y, x_3084.x, x_3084.y)) + vec4<f32>(x_3087.y, x_3087.w, x_3087.x, x_3087.w));
            let x_3090 : vec4<f32> = u_xlat12;
            let x_3093 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3096 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3090.x, x_3090.y) * vec2<f32>(x_3093.x, x_3093.y)) + vec2<f32>(x_3096.z, x_3096.w));
            let x_3100 : f32 = u_xlat14.y;
            u_xlat15.w = x_3100;
            let x_3102 : vec4<f32> = u_xlat15;
            let x_3103 : vec2<f32> = vec2<f32>(x_3102.y, x_3102.z);
            let x_3104 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3104.x, x_3103.x, x_3104.z, x_3103.y);
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3109 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3112 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3106.x, x_3106.y, x_3106.x, x_3106.y) * vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.y)) + vec4<f32>(x_3112.x, x_3112.y, x_3112.z, x_3112.y));
            let x_3115 : vec4<f32> = u_xlat12;
            let x_3118 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y) * vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y)) + vec4<f32>(x_3121.w, x_3121.y, x_3121.w, x_3121.z));
            let x_3124 : vec4<f32> = u_xlat12;
            let x_3127 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3124.x, x_3124.y, x_3124.x, x_3124.y) * vec4<f32>(x_3127.x, x_3127.y, x_3127.x, x_3127.y)) + vec4<f32>(x_3130.x, x_3130.w, x_3130.z, x_3130.w));
            let x_3133 : vec4<f32> = u_xlat13;
            let x_3135 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3133.x, x_3133.x, x_3133.x, x_3133.y) * vec4<f32>(x_3135.z, x_3135.w, x_3135.y, x_3135.z));
            let x_3139 : vec4<f32> = u_xlat13;
            let x_3141 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3139.y, x_3139.y, x_3139.z, x_3139.z) * x_3141);
            let x_3144 : f32 = u_xlat13.z;
            let x_3146 : f32 = u_xlat18.y;
            u_xlat87 = (x_3144 * x_3146);
            let x_3149 : vec4<f32> = u_xlat16;
            let x_3150 : vec2<f32> = vec2<f32>(x_3149.x, x_3149.y);
            let x_3152 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec34;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat88 = x_3161;
            let x_3163 : vec4<f32> = u_xlat16;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.z, x_3163.w);
            let x_3166 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3174 : vec3<f32> = txVec35;
            let x_3176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3174.xy, x_3174.z);
            u_xlat89 = x_3176;
            let x_3177 : f32 = u_xlat89;
            let x_3179 : f32 = u_xlat19.y;
            u_xlat89 = (x_3177 * x_3179);
            let x_3182 : f32 = u_xlat19.x;
            let x_3183 : f32 = u_xlat88;
            let x_3185 : f32 = u_xlat89;
            u_xlat88 = ((x_3182 * x_3183) + x_3185);
            let x_3188 : vec2<f32> = u_xlat64;
            let x_3190 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
            let x_3197 : vec3<f32> = txVec36;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat89 = x_3199;
            let x_3201 : f32 = u_xlat19.z;
            let x_3202 : f32 = u_xlat89;
            let x_3204 : f32 = u_xlat88;
            u_xlat88 = ((x_3201 * x_3202) + x_3204);
            let x_3207 : vec4<f32> = u_xlat15;
            let x_3208 : vec2<f32> = vec2<f32>(x_3207.x, x_3207.y);
            let x_3210 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3208.x, x_3208.y, x_3210);
            let x_3217 : vec3<f32> = txVec37;
            let x_3219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3217.xy, x_3217.z);
            u_xlat89 = x_3219;
            let x_3221 : f32 = u_xlat19.w;
            let x_3222 : f32 = u_xlat89;
            let x_3224 : f32 = u_xlat88;
            u_xlat88 = ((x_3221 * x_3222) + x_3224);
            let x_3227 : vec4<f32> = u_xlat17;
            let x_3228 : vec2<f32> = vec2<f32>(x_3227.x, x_3227.y);
            let x_3230 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3228.x, x_3228.y, x_3230);
            let x_3237 : vec3<f32> = txVec38;
            let x_3239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3237.xy, x_3237.z);
            u_xlat89 = x_3239;
            let x_3241 : f32 = u_xlat20.x;
            let x_3242 : f32 = u_xlat89;
            let x_3244 : f32 = u_xlat88;
            u_xlat88 = ((x_3241 * x_3242) + x_3244);
            let x_3247 : vec4<f32> = u_xlat17;
            let x_3248 : vec2<f32> = vec2<f32>(x_3247.z, x_3247.w);
            let x_3250 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
            let x_3257 : vec3<f32> = txVec39;
            let x_3259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
            u_xlat89 = x_3259;
            let x_3261 : f32 = u_xlat20.y;
            let x_3262 : f32 = u_xlat89;
            let x_3264 : f32 = u_xlat88;
            u_xlat88 = ((x_3261 * x_3262) + x_3264);
            let x_3267 : vec4<f32> = u_xlat15;
            let x_3268 : vec2<f32> = vec2<f32>(x_3267.z, x_3267.w);
            let x_3270 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec40;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat89 = x_3279;
            let x_3281 : f32 = u_xlat20.z;
            let x_3282 : f32 = u_xlat89;
            let x_3284 : f32 = u_xlat88;
            u_xlat88 = ((x_3281 * x_3282) + x_3284);
            let x_3287 : vec4<f32> = u_xlat14;
            let x_3288 : vec2<f32> = vec2<f32>(x_3287.x, x_3287.y);
            let x_3290 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
            let x_3297 : vec3<f32> = txVec41;
            let x_3299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3297.xy, x_3297.z);
            u_xlat89 = x_3299;
            let x_3301 : f32 = u_xlat20.w;
            let x_3302 : f32 = u_xlat89;
            let x_3304 : f32 = u_xlat88;
            u_xlat88 = ((x_3301 * x_3302) + x_3304);
            let x_3307 : vec4<f32> = u_xlat14;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.z, x_3307.w);
            let x_3310 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec42;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat89 = x_3319;
            let x_3320 : f32 = u_xlat87;
            let x_3321 : f32 = u_xlat89;
            let x_3323 : f32 = u_xlat88;
            u_xlat86 = ((x_3320 * x_3321) + x_3323);
          } else {
            let x_3326 : vec4<f32> = u_xlat11;
            let x_3329 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3332 : vec2<f32> = ((vec2<f32>(x_3326.x, x_3326.y) * vec2<f32>(x_3329.z, x_3329.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3333 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3332.x, x_3332.y, x_3333.z, x_3333.w);
            let x_3335 : vec4<f32> = u_xlat12;
            let x_3337 : vec2<f32> = floor(vec2<f32>(x_3335.x, x_3335.y));
            let x_3338 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3337.x, x_3337.y, x_3338.z, x_3338.w);
            let x_3340 : vec4<f32> = u_xlat11;
            let x_3343 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3346 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3340.x, x_3340.y) * vec2<f32>(x_3343.z, x_3343.w)) + -(vec2<f32>(x_3346.x, x_3346.y)));
            let x_3350 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3350.x, x_3350.x, x_3350.y, x_3350.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3353 : vec4<f32> = u_xlat13;
            let x_3355 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3353.x, x_3353.x, x_3353.z, x_3353.z) * vec4<f32>(x_3355.x, x_3355.x, x_3355.z, x_3355.z));
            let x_3358 : vec4<f32> = u_xlat14;
            let x_3360 : vec2<f32> = (vec2<f32>(x_3358.y, x_3358.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3361 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3361.x, x_3360.x, x_3361.z, x_3360.y);
            let x_3363 : vec4<f32> = u_xlat14;
            let x_3366 : vec2<f32> = u_xlat64;
            let x_3368 : vec2<f32> = ((vec2<f32>(x_3363.x, x_3363.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3366));
            let x_3369 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3368.x, x_3369.y, x_3368.y, x_3369.w);
            let x_3371 : vec2<f32> = u_xlat64;
            let x_3373 : vec2<f32> = (-(x_3371) + vec2<f32>(1.0f, 1.0f));
            let x_3374 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3373.x, x_3373.y, x_3374.z, x_3374.w);
            let x_3376 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3376, vec2<f32>(0.0f, 0.0f));
            let x_3378 : vec2<f32> = u_xlat66;
            let x_3380 : vec2<f32> = u_xlat66;
            let x_3382 : vec4<f32> = u_xlat14;
            let x_3384 : vec2<f32> = ((-(x_3378) * x_3380) + vec2<f32>(x_3382.x, x_3382.y));
            let x_3385 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3384.x, x_3384.y, x_3385.z, x_3385.w);
            let x_3387 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3387, vec2<f32>(0.0f, 0.0f));
            let x_3390 : vec2<f32> = u_xlat66;
            let x_3392 : vec2<f32> = u_xlat66;
            let x_3394 : vec4<f32> = u_xlat13;
            let x_3396 : vec2<f32> = ((-(x_3390) * x_3392) + vec2<f32>(x_3394.y, x_3394.w));
            let x_3397 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3396.x, x_3397.y, x_3396.y);
            let x_3399 : vec4<f32> = u_xlat14;
            let x_3401 : vec2<f32> = (vec2<f32>(x_3399.x, x_3399.y) + vec2<f32>(2.0f, 2.0f));
            let x_3402 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3401.x, x_3401.y, x_3402.z, x_3402.w);
            let x_3404 : vec3<f32> = u_xlat39;
            let x_3406 : vec2<f32> = (vec2<f32>(x_3404.x, x_3404.z) + vec2<f32>(2.0f, 2.0f));
            let x_3407 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3407.x, x_3406.x, x_3407.z, x_3406.y);
            let x_3410 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3410 * 0.08163200318813323975f);
            let x_3413 : vec4<f32> = u_xlat13;
            let x_3415 : vec3<f32> = (vec3<f32>(x_3413.z, x_3413.x, x_3413.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3416 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3415.x, x_3415.y, x_3415.z, x_3416.w);
            let x_3418 : vec4<f32> = u_xlat14;
            let x_3420 : vec2<f32> = (vec2<f32>(x_3418.x, x_3418.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3421 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3420.x, x_3420.y, x_3421.z, x_3421.w);
            let x_3424 : f32 = u_xlat17.y;
            u_xlat16.x = x_3424;
            let x_3426 : vec2<f32> = u_xlat64;
            let x_3429 : vec2<f32> = ((vec2<f32>(x_3426.x, x_3426.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3430 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3430.x, x_3429.x, x_3430.z, x_3429.y);
            let x_3432 : vec2<f32> = u_xlat64;
            let x_3435 : vec2<f32> = ((vec2<f32>(x_3432.x, x_3432.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3436 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3435.x, x_3436.y, x_3435.y, x_3436.w);
            let x_3439 : f32 = u_xlat13.x;
            u_xlat14.y = x_3439;
            let x_3442 : f32 = u_xlat15.y;
            u_xlat14.w = x_3442;
            let x_3444 : vec4<f32> = u_xlat14;
            let x_3445 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3444 + x_3445);
            let x_3447 : vec2<f32> = u_xlat64;
            let x_3450 : vec2<f32> = ((vec2<f32>(x_3447.y, x_3447.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3451 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3451.x, x_3450.x, x_3451.z, x_3450.y);
            let x_3453 : vec2<f32> = u_xlat64;
            let x_3456 : vec2<f32> = ((vec2<f32>(x_3453.y, x_3453.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3457 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3456.x, x_3457.y, x_3456.y, x_3457.w);
            let x_3460 : f32 = u_xlat13.y;
            u_xlat15.y = x_3460;
            let x_3462 : vec4<f32> = u_xlat15;
            let x_3463 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3462 + x_3463);
            let x_3465 : vec4<f32> = u_xlat14;
            let x_3466 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3465 / x_3466);
            let x_3468 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3468 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3470 : vec4<f32> = u_xlat15;
            let x_3471 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3470 / x_3471);
            let x_3473 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3473 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3475 : vec4<f32> = u_xlat14;
            let x_3478 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3475.w, x_3475.x, x_3475.y, x_3475.z) * vec4<f32>(x_3478.x, x_3478.x, x_3478.x, x_3478.x));
            let x_3481 : vec4<f32> = u_xlat15;
            let x_3484 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3481.x, x_3481.w, x_3481.y, x_3481.z) * vec4<f32>(x_3484.y, x_3484.y, x_3484.y, x_3484.y));
            let x_3487 : vec4<f32> = u_xlat14;
            let x_3488 : vec3<f32> = vec3<f32>(x_3487.y, x_3487.z, x_3487.w);
            let x_3489 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3488.x, x_3489.y, x_3488.y, x_3488.z);
            let x_3492 : f32 = u_xlat15.x;
            u_xlat17.y = x_3492;
            let x_3494 : vec4<f32> = u_xlat12;
            let x_3497 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3500 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3494.x, x_3494.y, x_3494.x, x_3494.y) * vec4<f32>(x_3497.x, x_3497.y, x_3497.x, x_3497.y)) + vec4<f32>(x_3500.x, x_3500.y, x_3500.z, x_3500.y));
            let x_3503 : vec4<f32> = u_xlat12;
            let x_3506 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3509 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3503.x, x_3503.y) * vec2<f32>(x_3506.x, x_3506.y)) + vec2<f32>(x_3509.w, x_3509.y));
            let x_3513 : f32 = u_xlat17.y;
            u_xlat14.y = x_3513;
            let x_3516 : f32 = u_xlat15.z;
            u_xlat17.y = x_3516;
            let x_3518 : vec4<f32> = u_xlat12;
            let x_3521 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3524 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3518.x, x_3518.y, x_3518.x, x_3518.y) * vec4<f32>(x_3521.x, x_3521.y, x_3521.x, x_3521.y)) + vec4<f32>(x_3524.x, x_3524.y, x_3524.z, x_3524.y));
            let x_3527 : vec4<f32> = u_xlat12;
            let x_3530 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3533 : vec4<f32> = u_xlat17;
            let x_3535 : vec2<f32> = ((vec2<f32>(x_3527.x, x_3527.y) * vec2<f32>(x_3530.x, x_3530.y)) + vec2<f32>(x_3533.w, x_3533.y));
            let x_3536 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3535.x, x_3535.y, x_3536.z, x_3536.w);
            let x_3539 : f32 = u_xlat17.y;
            u_xlat14.z = x_3539;
            let x_3542 : vec4<f32> = u_xlat12;
            let x_3545 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3548 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3542.x, x_3542.y, x_3542.x, x_3542.y) * vec4<f32>(x_3545.x, x_3545.y, x_3545.x, x_3545.y)) + vec4<f32>(x_3548.x, x_3548.y, x_3548.x, x_3548.z));
            let x_3552 : f32 = u_xlat15.w;
            u_xlat17.y = x_3552;
            let x_3555 : vec4<f32> = u_xlat12;
            let x_3558 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3561 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3555.x, x_3555.y, x_3555.x, x_3555.y) * vec4<f32>(x_3558.x, x_3558.y, x_3558.x, x_3558.y)) + vec4<f32>(x_3561.x, x_3561.y, x_3561.z, x_3561.y));
            let x_3565 : vec4<f32> = u_xlat12;
            let x_3568 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3571 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3565.x, x_3565.y) * vec2<f32>(x_3568.x, x_3568.y)) + vec2<f32>(x_3571.w, x_3571.y));
            let x_3575 : f32 = u_xlat17.y;
            u_xlat14.w = x_3575;
            let x_3578 : vec4<f32> = u_xlat12;
            let x_3581 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3584 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3578.x, x_3578.y) * vec2<f32>(x_3581.x, x_3581.y)) + vec2<f32>(x_3584.x, x_3584.w));
            let x_3587 : vec4<f32> = u_xlat17;
            let x_3588 : vec3<f32> = vec3<f32>(x_3587.x, x_3587.z, x_3587.w);
            let x_3589 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3588.x, x_3589.y, x_3588.y, x_3588.z);
            let x_3591 : vec4<f32> = u_xlat12;
            let x_3594 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3597 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3591.x, x_3591.y, x_3591.x, x_3591.y) * vec4<f32>(x_3594.x, x_3594.y, x_3594.x, x_3594.y)) + vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3597.y));
            let x_3601 : vec4<f32> = u_xlat12;
            let x_3604 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3607 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3601.x, x_3601.y) * vec2<f32>(x_3604.x, x_3604.y)) + vec2<f32>(x_3607.w, x_3607.y));
            let x_3611 : f32 = u_xlat14.x;
            u_xlat15.x = x_3611;
            let x_3613 : vec4<f32> = u_xlat12;
            let x_3616 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3619 : vec4<f32> = u_xlat15;
            let x_3621 : vec2<f32> = ((vec2<f32>(x_3613.x, x_3613.y) * vec2<f32>(x_3616.x, x_3616.y)) + vec2<f32>(x_3619.x, x_3619.y));
            let x_3622 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3621.x, x_3621.y, x_3622.z, x_3622.w);
            let x_3625 : vec4<f32> = u_xlat13;
            let x_3627 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3625.x, x_3625.x, x_3625.x, x_3625.x) * x_3627);
            let x_3630 : vec4<f32> = u_xlat13;
            let x_3632 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3630.y, x_3630.y, x_3630.y, x_3630.y) * x_3632);
            let x_3635 : vec4<f32> = u_xlat13;
            let x_3637 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3635.z, x_3635.z, x_3635.z, x_3635.z) * x_3637);
            let x_3639 : vec4<f32> = u_xlat13;
            let x_3641 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3639.w, x_3639.w, x_3639.w, x_3639.w) * x_3641);
            let x_3644 : vec4<f32> = u_xlat18;
            let x_3645 : vec2<f32> = vec2<f32>(x_3644.x, x_3644.y);
            let x_3647 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3645.x, x_3645.y, x_3647);
            let x_3654 : vec3<f32> = txVec43;
            let x_3656 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3654.xy, x_3654.z);
            u_xlat87 = x_3656;
            let x_3658 : vec4<f32> = u_xlat18;
            let x_3659 : vec2<f32> = vec2<f32>(x_3658.z, x_3658.w);
            let x_3661 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3659.x, x_3659.y, x_3661);
            let x_3668 : vec3<f32> = txVec44;
            let x_3670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3668.xy, x_3668.z);
            u_xlat88 = x_3670;
            let x_3671 : f32 = u_xlat88;
            let x_3673 : f32 = u_xlat23.y;
            u_xlat88 = (x_3671 * x_3673);
            let x_3676 : f32 = u_xlat23.x;
            let x_3677 : f32 = u_xlat87;
            let x_3679 : f32 = u_xlat88;
            u_xlat87 = ((x_3676 * x_3677) + x_3679);
            let x_3682 : vec2<f32> = u_xlat64;
            let x_3684 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3682.x, x_3682.y, x_3684);
            let x_3691 : vec3<f32> = txVec45;
            let x_3693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3691.xy, x_3691.z);
            u_xlat88 = x_3693;
            let x_3695 : f32 = u_xlat23.z;
            let x_3696 : f32 = u_xlat88;
            let x_3698 : f32 = u_xlat87;
            u_xlat87 = ((x_3695 * x_3696) + x_3698);
            let x_3701 : vec4<f32> = u_xlat21;
            let x_3702 : vec2<f32> = vec2<f32>(x_3701.x, x_3701.y);
            let x_3704 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3702.x, x_3702.y, x_3704);
            let x_3711 : vec3<f32> = txVec46;
            let x_3713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3711.xy, x_3711.z);
            u_xlat88 = x_3713;
            let x_3715 : f32 = u_xlat23.w;
            let x_3716 : f32 = u_xlat88;
            let x_3718 : f32 = u_xlat87;
            u_xlat87 = ((x_3715 * x_3716) + x_3718);
            let x_3721 : vec4<f32> = u_xlat19;
            let x_3722 : vec2<f32> = vec2<f32>(x_3721.x, x_3721.y);
            let x_3724 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3722.x, x_3722.y, x_3724);
            let x_3731 : vec3<f32> = txVec47;
            let x_3733 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3731.xy, x_3731.z);
            u_xlat88 = x_3733;
            let x_3735 : f32 = u_xlat24.x;
            let x_3736 : f32 = u_xlat88;
            let x_3738 : f32 = u_xlat87;
            u_xlat87 = ((x_3735 * x_3736) + x_3738);
            let x_3741 : vec4<f32> = u_xlat19;
            let x_3742 : vec2<f32> = vec2<f32>(x_3741.z, x_3741.w);
            let x_3744 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3742.x, x_3742.y, x_3744);
            let x_3751 : vec3<f32> = txVec48;
            let x_3753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3751.xy, x_3751.z);
            u_xlat88 = x_3753;
            let x_3755 : f32 = u_xlat24.y;
            let x_3756 : f32 = u_xlat88;
            let x_3758 : f32 = u_xlat87;
            u_xlat87 = ((x_3755 * x_3756) + x_3758);
            let x_3761 : vec4<f32> = u_xlat20;
            let x_3762 : vec2<f32> = vec2<f32>(x_3761.x, x_3761.y);
            let x_3764 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3762.x, x_3762.y, x_3764);
            let x_3771 : vec3<f32> = txVec49;
            let x_3773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3771.xy, x_3771.z);
            u_xlat88 = x_3773;
            let x_3775 : f32 = u_xlat24.z;
            let x_3776 : f32 = u_xlat88;
            let x_3778 : f32 = u_xlat87;
            u_xlat87 = ((x_3775 * x_3776) + x_3778);
            let x_3781 : vec4<f32> = u_xlat21;
            let x_3782 : vec2<f32> = vec2<f32>(x_3781.z, x_3781.w);
            let x_3784 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3782.x, x_3782.y, x_3784);
            let x_3791 : vec3<f32> = txVec50;
            let x_3793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3791.xy, x_3791.z);
            u_xlat88 = x_3793;
            let x_3795 : f32 = u_xlat24.w;
            let x_3796 : f32 = u_xlat88;
            let x_3798 : f32 = u_xlat87;
            u_xlat87 = ((x_3795 * x_3796) + x_3798);
            let x_3801 : vec4<f32> = u_xlat22;
            let x_3802 : vec2<f32> = vec2<f32>(x_3801.x, x_3801.y);
            let x_3804 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3802.x, x_3802.y, x_3804);
            let x_3811 : vec3<f32> = txVec51;
            let x_3813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3811.xy, x_3811.z);
            u_xlat88 = x_3813;
            let x_3815 : f32 = u_xlat25.x;
            let x_3816 : f32 = u_xlat88;
            let x_3818 : f32 = u_xlat87;
            u_xlat87 = ((x_3815 * x_3816) + x_3818);
            let x_3821 : vec4<f32> = u_xlat22;
            let x_3822 : vec2<f32> = vec2<f32>(x_3821.z, x_3821.w);
            let x_3824 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3822.x, x_3822.y, x_3824);
            let x_3831 : vec3<f32> = txVec52;
            let x_3833 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3831.xy, x_3831.z);
            u_xlat88 = x_3833;
            let x_3835 : f32 = u_xlat25.y;
            let x_3836 : f32 = u_xlat88;
            let x_3838 : f32 = u_xlat87;
            u_xlat87 = ((x_3835 * x_3836) + x_3838);
            let x_3841 : vec2<f32> = u_xlat40;
            let x_3843 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3841.x, x_3841.y, x_3843);
            let x_3850 : vec3<f32> = txVec53;
            let x_3852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3850.xy, x_3850.z);
            u_xlat88 = x_3852;
            let x_3854 : f32 = u_xlat25.z;
            let x_3855 : f32 = u_xlat88;
            let x_3857 : f32 = u_xlat87;
            u_xlat87 = ((x_3854 * x_3855) + x_3857);
            let x_3860 : vec2<f32> = u_xlat72;
            let x_3862 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
            let x_3869 : vec3<f32> = txVec54;
            let x_3871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3869.xy, x_3869.z);
            u_xlat88 = x_3871;
            let x_3873 : f32 = u_xlat25.w;
            let x_3874 : f32 = u_xlat88;
            let x_3876 : f32 = u_xlat87;
            u_xlat87 = ((x_3873 * x_3874) + x_3876);
            let x_3879 : vec4<f32> = u_xlat17;
            let x_3880 : vec2<f32> = vec2<f32>(x_3879.x, x_3879.y);
            let x_3882 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3880.x, x_3880.y, x_3882);
            let x_3889 : vec3<f32> = txVec55;
            let x_3891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3889.xy, x_3889.z);
            u_xlat88 = x_3891;
            let x_3893 : f32 = u_xlat13.x;
            let x_3894 : f32 = u_xlat88;
            let x_3896 : f32 = u_xlat87;
            u_xlat87 = ((x_3893 * x_3894) + x_3896);
            let x_3899 : vec4<f32> = u_xlat17;
            let x_3900 : vec2<f32> = vec2<f32>(x_3899.z, x_3899.w);
            let x_3902 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3900.x, x_3900.y, x_3902);
            let x_3909 : vec3<f32> = txVec56;
            let x_3911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3909.xy, x_3909.z);
            u_xlat88 = x_3911;
            let x_3913 : f32 = u_xlat13.y;
            let x_3914 : f32 = u_xlat88;
            let x_3916 : f32 = u_xlat87;
            u_xlat87 = ((x_3913 * x_3914) + x_3916);
            let x_3919 : vec2<f32> = u_xlat67;
            let x_3921 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3919.x, x_3919.y, x_3921);
            let x_3928 : vec3<f32> = txVec57;
            let x_3930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3928.xy, x_3928.z);
            u_xlat88 = x_3930;
            let x_3932 : f32 = u_xlat13.z;
            let x_3933 : f32 = u_xlat88;
            let x_3935 : f32 = u_xlat87;
            u_xlat87 = ((x_3932 * x_3933) + x_3935);
            let x_3938 : vec4<f32> = u_xlat12;
            let x_3939 : vec2<f32> = vec2<f32>(x_3938.x, x_3938.y);
            let x_3941 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3939.x, x_3939.y, x_3941);
            let x_3948 : vec3<f32> = txVec58;
            let x_3950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3948.xy, x_3948.z);
            u_xlat88 = x_3950;
            let x_3952 : f32 = u_xlat13.w;
            let x_3953 : f32 = u_xlat88;
            let x_3955 : f32 = u_xlat87;
            u_xlat86 = ((x_3952 * x_3953) + x_3955);
          }
        }
      } else {
        let x_3959 : vec4<f32> = u_xlat11;
        let x_3960 : vec2<f32> = vec2<f32>(x_3959.x, x_3959.y);
        let x_3962 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3960.x, x_3960.y, x_3962);
        let x_3969 : vec3<f32> = txVec59;
        let x_3971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3969.xy, x_3969.z);
        u_xlat86 = x_3971;
      }
      let x_3972 : i32 = u_xlati6;
      let x_3974 : f32 = x_769.x_AdditionalShadowParams[x_3972].x;
      u_xlat87 = (1.0f + -(x_3974));
      let x_3977 : f32 = u_xlat86;
      let x_3978 : i32 = u_xlati6;
      let x_3980 : f32 = x_769.x_AdditionalShadowParams[x_3978].x;
      let x_3982 : f32 = u_xlat87;
      u_xlat86 = ((x_3977 * x_3980) + x_3982);
      let x_3985 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3985);
      let x_3989 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3989 >= 1.0f);
      let x_3991 : bool = u_xlatb87;
      let x_3992 : bool = u_xlatb88;
      u_xlatb87 = (x_3991 | x_3992);
      let x_3994 : bool = u_xlatb87;
      let x_3995 : f32 = u_xlat86;
      u_xlat86 = select(x_3995, 1.0f, x_3994);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3998 : f32 = u_xlat86;
    u_xlat87 = (-(x_3998) + 1.0f);
    let x_4001 : f32 = u_xlat81;
    let x_4002 : f32 = u_xlat87;
    let x_4004 : f32 = u_xlat86;
    u_xlat86 = ((x_4001 * x_4002) + x_4004);
    let x_4007 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_4007 & 31i)));
    let x_4010 : i32 = u_xlati87;
    let x_4013 : f32 = x_2112.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4010) & bitcast<u32>(x_4013)));
    let x_4017 : i32 = u_xlati87;
    if ((x_4017 != 0i)) {
      let x_4021 : i32 = u_xlati6;
      let x_4023 : f32 = x_2112.x_AdditionalLightsLightTypes[x_4021].el;
      u_xlati87 = i32(x_4023);
      let x_4026 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4026 != 0i));
      let x_4030 : i32 = u_xlati6;
      u_xlati11 = (x_4030 << bitcast<u32>(2i));
      let x_4032 : i32 = u_xlati88;
      if ((x_4032 != 0i)) {
        let x_4037 : vec3<f32> = vs_TEXCOORD7;
        let x_4039 : i32 = u_xlati11;
        let x_4042 : i32 = u_xlati11;
        let x_4046 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4039 + 1i) / 4i)][((x_4042 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4037.y, x_4037.y, x_4037.y) * vec3<f32>(x_4046.x, x_4046.y, x_4046.w));
        let x_4049 : i32 = u_xlati11;
        let x_4051 : i32 = u_xlati11;
        let x_4054 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[(x_4049 / 4i)][(x_4051 % 4i)];
        let x_4056 : vec3<f32> = vs_TEXCOORD7;
        let x_4059 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4054.x, x_4054.y, x_4054.w) * vec3<f32>(x_4056.x, x_4056.x, x_4056.x)) + x_4059);
        let x_4061 : i32 = u_xlati11;
        let x_4064 : i32 = u_xlati11;
        let x_4068 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4061 + 2i) / 4i)][((x_4064 + 2i) % 4i)];
        let x_4070 : vec3<f32> = vs_TEXCOORD7;
        let x_4073 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4068.x, x_4068.y, x_4068.w) * vec3<f32>(x_4070.z, x_4070.z, x_4070.z)) + x_4073);
        let x_4075 : vec3<f32> = u_xlat37;
        let x_4076 : i32 = u_xlati11;
        let x_4079 : i32 = u_xlati11;
        let x_4083 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4076 + 3i) / 4i)][((x_4079 + 3i) % 4i)];
        u_xlat37 = (x_4075 + vec3<f32>(x_4083.x, x_4083.y, x_4083.w));
        let x_4086 : vec3<f32> = u_xlat37;
        let x_4088 : vec3<f32> = u_xlat37;
        let x_4090 : vec2<f32> = (vec2<f32>(x_4086.x, x_4086.y) / vec2<f32>(x_4088.z, x_4088.z));
        let x_4091 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4090.x, x_4090.y, x_4091.z);
        let x_4093 : vec3<f32> = u_xlat37;
        let x_4096 : vec2<f32> = ((vec2<f32>(x_4093.x, x_4093.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4097 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4096.x, x_4096.y, x_4097.z);
        let x_4099 : vec3<f32> = u_xlat37;
        let x_4103 : vec2<f32> = clamp(vec2<f32>(x_4099.x, x_4099.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4104 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4103.x, x_4103.y, x_4104.z);
        let x_4106 : i32 = u_xlati6;
        let x_4108 : vec4<f32> = x_2112.x_AdditionalLightsCookieAtlasUVRects[x_4106];
        let x_4110 : vec3<f32> = u_xlat37;
        let x_4113 : i32 = u_xlati6;
        let x_4115 : vec4<f32> = x_2112.x_AdditionalLightsCookieAtlasUVRects[x_4113];
        let x_4117 : vec2<f32> = ((vec2<f32>(x_4108.x, x_4108.y) * vec2<f32>(x_4110.x, x_4110.y)) + vec2<f32>(x_4115.z, x_4115.w));
        let x_4118 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4117.x, x_4117.y, x_4118.z);
      } else {
        let x_4121 : i32 = u_xlati87;
        u_xlatb87 = (x_4121 == 1i);
        let x_4123 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4123);
        let x_4125 : i32 = u_xlati87;
        if ((x_4125 != 0i)) {
          let x_4129 : vec3<f32> = vs_TEXCOORD7;
          let x_4131 : i32 = u_xlati11;
          let x_4134 : i32 = u_xlati11;
          let x_4138 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4131 + 1i) / 4i)][((x_4134 + 1i) % 4i)];
          let x_4140 : vec2<f32> = (vec2<f32>(x_4129.y, x_4129.y) * vec2<f32>(x_4138.x, x_4138.y));
          let x_4141 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4140.x, x_4140.y, x_4141.z, x_4141.w);
          let x_4143 : i32 = u_xlati11;
          let x_4145 : i32 = u_xlati11;
          let x_4148 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[(x_4143 / 4i)][(x_4145 % 4i)];
          let x_4150 : vec3<f32> = vs_TEXCOORD7;
          let x_4153 : vec4<f32> = u_xlat12;
          let x_4155 : vec2<f32> = ((vec2<f32>(x_4148.x, x_4148.y) * vec2<f32>(x_4150.x, x_4150.x)) + vec2<f32>(x_4153.x, x_4153.y));
          let x_4156 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4155.x, x_4155.y, x_4156.z, x_4156.w);
          let x_4158 : i32 = u_xlati11;
          let x_4161 : i32 = u_xlati11;
          let x_4165 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4158 + 2i) / 4i)][((x_4161 + 2i) % 4i)];
          let x_4167 : vec3<f32> = vs_TEXCOORD7;
          let x_4170 : vec4<f32> = u_xlat12;
          let x_4172 : vec2<f32> = ((vec2<f32>(x_4165.x, x_4165.y) * vec2<f32>(x_4167.z, x_4167.z)) + vec2<f32>(x_4170.x, x_4170.y));
          let x_4173 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4172.x, x_4172.y, x_4173.z, x_4173.w);
          let x_4175 : vec4<f32> = u_xlat12;
          let x_4177 : i32 = u_xlati11;
          let x_4180 : i32 = u_xlati11;
          let x_4184 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4177 + 3i) / 4i)][((x_4180 + 3i) % 4i)];
          let x_4186 : vec2<f32> = (vec2<f32>(x_4175.x, x_4175.y) + vec2<f32>(x_4184.x, x_4184.y));
          let x_4187 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4186.x, x_4186.y, x_4187.z, x_4187.w);
          let x_4189 : vec4<f32> = u_xlat12;
          let x_4192 : vec2<f32> = ((vec2<f32>(x_4189.x, x_4189.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4193 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4192.x, x_4192.y, x_4193.z, x_4193.w);
          let x_4195 : vec4<f32> = u_xlat12;
          let x_4197 : vec2<f32> = fract(vec2<f32>(x_4195.x, x_4195.y));
          let x_4198 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4197.x, x_4197.y, x_4198.z, x_4198.w);
          let x_4200 : i32 = u_xlati6;
          let x_4202 : vec4<f32> = x_2112.x_AdditionalLightsCookieAtlasUVRects[x_4200];
          let x_4204 : vec4<f32> = u_xlat12;
          let x_4207 : i32 = u_xlati6;
          let x_4209 : vec4<f32> = x_2112.x_AdditionalLightsCookieAtlasUVRects[x_4207];
          let x_4211 : vec2<f32> = ((vec2<f32>(x_4202.x, x_4202.y) * vec2<f32>(x_4204.x, x_4204.y)) + vec2<f32>(x_4209.z, x_4209.w));
          let x_4212 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4211.x, x_4211.y, x_4212.z);
        } else {
          let x_4215 : vec3<f32> = vs_TEXCOORD7;
          let x_4217 : i32 = u_xlati11;
          let x_4220 : i32 = u_xlati11;
          let x_4224 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4217 + 1i) / 4i)][((x_4220 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4215.y, x_4215.y, x_4215.y, x_4215.y) * x_4224);
          let x_4226 : i32 = u_xlati11;
          let x_4228 : i32 = u_xlati11;
          let x_4231 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[(x_4226 / 4i)][(x_4228 % 4i)];
          let x_4232 : vec3<f32> = vs_TEXCOORD7;
          let x_4235 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4231 * vec4<f32>(x_4232.x, x_4232.x, x_4232.x, x_4232.x)) + x_4235);
          let x_4237 : i32 = u_xlati11;
          let x_4240 : i32 = u_xlati11;
          let x_4244 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4237 + 2i) / 4i)][((x_4240 + 2i) % 4i)];
          let x_4245 : vec3<f32> = vs_TEXCOORD7;
          let x_4248 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4244 * vec4<f32>(x_4245.z, x_4245.z, x_4245.z, x_4245.z)) + x_4248);
          let x_4250 : vec4<f32> = u_xlat12;
          let x_4251 : i32 = u_xlati11;
          let x_4254 : i32 = u_xlati11;
          let x_4258 : vec4<f32> = x_2112.x_AdditionalLightsWorldToLights[((x_4251 + 3i) / 4i)][((x_4254 + 3i) % 4i)];
          u_xlat12 = (x_4250 + x_4258);
          let x_4260 : vec4<f32> = u_xlat12;
          let x_4262 : vec4<f32> = u_xlat12;
          let x_4264 : vec3<f32> = (vec3<f32>(x_4260.x, x_4260.y, x_4260.z) / vec3<f32>(x_4262.w, x_4262.w, x_4262.w));
          let x_4265 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4264.x, x_4264.y, x_4264.z, x_4265.w);
          let x_4267 : vec4<f32> = u_xlat12;
          let x_4269 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4267.x, x_4267.y, x_4267.z), vec3<f32>(x_4269.x, x_4269.y, x_4269.z));
          let x_4272 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4272);
          let x_4274 : f32 = u_xlat87;
          let x_4276 : vec4<f32> = u_xlat12;
          let x_4278 : vec3<f32> = (vec3<f32>(x_4274, x_4274, x_4274) * vec3<f32>(x_4276.x, x_4276.y, x_4276.z));
          let x_4279 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4278.x, x_4278.y, x_4278.z, x_4279.w);
          let x_4281 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4281.x, x_4281.y, x_4281.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4286 : f32 = u_xlat87;
          u_xlat87 = max(x_4286, 0.00000099999999747524f);
          let x_4289 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4289);
          let x_4291 : f32 = u_xlat87;
          let x_4293 : vec4<f32> = u_xlat12;
          let x_4295 : vec3<f32> = (vec3<f32>(x_4291, x_4291, x_4291) * vec3<f32>(x_4293.z, x_4293.x, x_4293.y));
          let x_4296 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4295.x, x_4295.y, x_4295.z, x_4296.w);
          let x_4299 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4299);
          let x_4303 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4303, 0.0f, 1.0f);
          let x_4306 : vec4<f32> = u_xlat13;
          let x_4308 : vec4<bool> = (vec4<f32>(x_4306.y, x_4306.y, x_4306.y, x_4306.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4309 : vec2<bool> = vec2<bool>(x_4308.x, x_4308.w);
          let x_4310 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4309.x, x_4310.y, x_4310.z, x_4309.y);
          let x_4313 : bool = u_xlatb11.x;
          if (x_4313) {
            let x_4318 : f32 = u_xlat13.x;
            x_4314 = x_4318;
          } else {
            let x_4321 : f32 = u_xlat13.x;
            x_4314 = -(x_4321);
          }
          let x_4323 : f32 = x_4314;
          u_xlat11.x = x_4323;
          let x_4326 : bool = u_xlatb11.w;
          if (x_4326) {
            let x_4331 : f32 = u_xlat13.x;
            x_4327 = x_4331;
          } else {
            let x_4334 : f32 = u_xlat13.x;
            x_4327 = -(x_4334);
          }
          let x_4336 : f32 = x_4327;
          u_xlat11.w = x_4336;
          let x_4338 : vec4<f32> = u_xlat12;
          let x_4340 : f32 = u_xlat87;
          let x_4343 : vec4<f32> = u_xlat11;
          let x_4345 : vec2<f32> = ((vec2<f32>(x_4338.x, x_4338.y) * vec2<f32>(x_4340, x_4340)) + vec2<f32>(x_4343.x, x_4343.w));
          let x_4346 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4345.x, x_4346.y, x_4346.z, x_4345.y);
          let x_4348 : vec4<f32> = u_xlat11;
          let x_4351 : vec2<f32> = ((vec2<f32>(x_4348.x, x_4348.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4352 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4351.x, x_4352.y, x_4352.z, x_4351.y);
          let x_4354 : vec4<f32> = u_xlat11;
          let x_4358 : vec2<f32> = clamp(vec2<f32>(x_4354.x, x_4354.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4359 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4358.x, x_4359.y, x_4359.z, x_4358.y);
          let x_4361 : i32 = u_xlati6;
          let x_4363 : vec4<f32> = x_2112.x_AdditionalLightsCookieAtlasUVRects[x_4361];
          let x_4365 : vec4<f32> = u_xlat11;
          let x_4368 : i32 = u_xlati6;
          let x_4370 : vec4<f32> = x_2112.x_AdditionalLightsCookieAtlasUVRects[x_4368];
          let x_4372 : vec2<f32> = ((vec2<f32>(x_4363.x, x_4363.y) * vec2<f32>(x_4365.x, x_4365.w)) + vec2<f32>(x_4370.z, x_4370.w));
          let x_4373 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4372.x, x_4372.y, x_4373.z);
        }
      }
      let x_4380 : vec3<f32> = u_xlat37;
      let x_4382 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4380.x, x_4380.y), 0.0f);
      u_xlat11 = x_4382;
      let x_4384 : bool = u_xlatb7.y;
      if (x_4384) {
        let x_4389 : f32 = u_xlat11.w;
        x_4385 = x_4389;
      } else {
        let x_4392 : f32 = u_xlat11.x;
        x_4385 = x_4392;
      }
      let x_4393 : f32 = x_4385;
      u_xlat87 = x_4393;
      let x_4395 : bool = u_xlatb7.x;
      if (x_4395) {
        let x_4399 : vec4<f32> = u_xlat11;
        x_4396 = vec3<f32>(x_4399.x, x_4399.y, x_4399.z);
      } else {
        let x_4402 : f32 = u_xlat87;
        x_4396 = vec3<f32>(x_4402, x_4402, x_4402);
      }
      let x_4404 : vec3<f32> = x_4396;
      let x_4405 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4404.x, x_4404.y, x_4404.z, x_4405.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4411 : vec4<f32> = u_xlat11;
    let x_4413 : i32 = u_xlati6;
    let x_4415 : vec4<f32> = x_2589.x_AdditionalLightsColor[x_4413];
    let x_4417 : vec3<f32> = (vec3<f32>(x_4411.x, x_4411.y, x_4411.z) * vec3<f32>(x_4415.x, x_4415.y, x_4415.z));
    let x_4418 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4417.x, x_4417.y, x_4417.z, x_4418.w);
    let x_4420 : f32 = u_xlat59;
    let x_4421 : f32 = u_xlat86;
    u_xlat6.x = (x_4420 * x_4421);
    let x_4424 : vec4<f32> = u_xlat2;
    let x_4426 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_4424.x, x_4424.y, x_4424.z), vec3<f32>(x_4426.x, x_4426.y, x_4426.z));
    let x_4429 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4429, 0.0f, 1.0f);
    let x_4432 : f32 = u_xlat6.x;
    let x_4433 : f32 = u_xlat59;
    u_xlat6.x = (x_4432 * x_4433);
    let x_4436 : vec4<f32> = u_xlat6;
    let x_4438 : vec4<f32> = u_xlat11;
    let x_4440 : vec3<f32> = (vec3<f32>(x_4436.x, x_4436.x, x_4436.x) * vec3<f32>(x_4438.x, x_4438.y, x_4438.z));
    let x_4441 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4440.x, x_4440.y, x_4440.z, x_4441.w);
    let x_4443 : vec4<f32> = u_xlat9;
    let x_4445 : f32 = u_xlat85;
    let x_4448 : vec4<f32> = u_xlat1;
    let x_4450 : vec3<f32> = ((vec3<f32>(x_4443.x, x_4443.y, x_4443.z) * vec3<f32>(x_4445, x_4445, x_4445)) + vec3<f32>(x_4448.x, x_4448.y, x_4448.z));
    let x_4451 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4450.x, x_4450.y, x_4450.z, x_4451.w);
    let x_4453 : vec4<f32> = u_xlat9;
    let x_4455 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4453.x, x_4453.y, x_4453.z), vec3<f32>(x_4455.x, x_4455.y, x_4455.z));
    let x_4460 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4460, 1.17549435e-38f);
    let x_4464 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4464);
    let x_4467 : vec4<f32> = u_xlat6;
    let x_4469 : vec4<f32> = u_xlat9;
    let x_4471 : vec3<f32> = (vec3<f32>(x_4467.x, x_4467.x, x_4467.x) * vec3<f32>(x_4469.x, x_4469.y, x_4469.z));
    let x_4472 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4471.x, x_4471.y, x_4471.z, x_4472.w);
    let x_4474 : vec4<f32> = u_xlat2;
    let x_4476 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4474.x, x_4474.y, x_4474.z), vec3<f32>(x_4476.x, x_4476.y, x_4476.z));
    let x_4481 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4481, 0.0f, 1.0f);
    let x_4484 : vec4<f32> = u_xlat10;
    let x_4486 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4484.x, x_4484.y, x_4484.z), vec3<f32>(x_4486.x, x_4486.y, x_4486.z));
    let x_4489 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4489, 0.0f, 1.0f);
    let x_4492 : f32 = u_xlat6.x;
    let x_4494 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4492 * x_4494);
    let x_4498 : f32 = u_xlat6.x;
    let x_4500 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4498 * x_4500) + 1.00001001358032226562f);
    let x_4504 : f32 = u_xlat59;
    let x_4505 : f32 = u_xlat59;
    u_xlat59 = (x_4504 * x_4505);
    let x_4508 : f32 = u_xlat6.x;
    let x_4510 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4508 * x_4510);
    let x_4513 : f32 = u_xlat59;
    u_xlat59 = max(x_4513, 0.10000000149011611938f);
    let x_4516 : f32 = u_xlat6.x;
    let x_4517 : f32 = u_xlat59;
    u_xlat6.x = (x_4516 * x_4517);
    let x_4520 : f32 = u_xlat82;
    let x_4522 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4520 * x_4522);
    let x_4525 : f32 = u_xlat80;
    let x_4527 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4525 / x_4527);
    let x_4530 : vec4<f32> = u_xlat5;
    let x_4532 : vec4<f32> = u_xlat6;
    let x_4535 : vec4<f32> = u_xlat4;
    let x_4537 : vec3<f32> = ((vec3<f32>(x_4530.x, x_4530.y, x_4530.z) * vec3<f32>(x_4532.x, x_4532.x, x_4532.x)) + vec3<f32>(x_4535.x, x_4535.y, x_4535.z));
    let x_4538 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4537.x, x_4537.y, x_4537.z, x_4538.w);
    let x_4540 : vec4<f32> = u_xlat9;
    let x_4542 : vec4<f32> = u_xlat11;
    let x_4545 : vec4<f32> = u_xlat8;
    let x_4547 : vec3<f32> = ((vec3<f32>(x_4540.x, x_4540.y, x_4540.z) * vec3<f32>(x_4542.x, x_4542.y, x_4542.z)) + vec3<f32>(x_4545.x, x_4545.y, x_4545.z));
    let x_4548 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4547.x, x_4547.y, x_4547.z, x_4548.w);

    continuing {
      let x_4550 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4550 + bitcast<u32>(1i));
    }
  }
  let x_4552 : vec4<f32> = u_xlat3;
  let x_4554 : f32 = u_xlat26;
  let x_4557 : vec3<f32> = u_xlat32;
  u_xlat0 = ((vec3<f32>(x_4552.x, x_4552.y, x_4552.z) * vec3<f32>(x_4554, x_4554, x_4554)) + x_4557);
  let x_4559 : vec4<f32> = u_xlat8;
  let x_4561 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4559.x, x_4559.y, x_4559.z) + x_4561);
  let x_4563 : f32 = u_xlat78;
  let x_4565 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4563, x_4563, x_4563) * x_4565);
  let x_4567 : f32 = u_xlat79;
  let x_4568 : f32 = u_xlat79;
  u_xlat78 = (x_4567 * -(x_4568));
  let x_4571 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4571);
  let x_4575 : vec3<f32> = u_xlat0;
  let x_4576 : f32 = u_xlat78;
  let x_4578 : vec3<f32> = (x_4575 * vec3<f32>(x_4576, x_4576, x_4576));
  let x_4579 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4578.x, x_4578.y, x_4578.z, x_4579.w);
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


