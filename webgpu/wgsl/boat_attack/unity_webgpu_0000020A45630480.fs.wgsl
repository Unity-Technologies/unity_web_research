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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_575 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb84 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat33 : f32;

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

@group(1) @binding(5) var<uniform> x_2228 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2416 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu84 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati84 : i32;

@group(1) @binding(1) var<uniform> x_2707 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

fn main_1() {
  var x_548 : vec3<f32>;
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
  var x_2181 : f32;
  var x_2311 : f32;
  var x_2322 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2861 : f32;
  var x_2871 : f32;
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
  var x_4449 : f32;
  var x_4462 : f32;
  var x_4520 : f32;
  var x_4531 : vec3<f32>;
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
  let x_536 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_536;
  let x_540 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_540;
  let x_544 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_544;
  let x_546 : bool = u_xlatb1;
  if (x_546) {
    let x_551 : vec3<f32> = u_xlat27;
    x_548 = x_551;
  } else {
    let x_553 : vec3<f32> = u_xlat2;
    x_548 = x_553;
  }
  let x_554 : vec3<f32> = x_548;
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : vec3<f32> = vs_TEXCOORD3;
  let x_559 : vec3<f32> = vs_TEXCOORD3;
  u_xlat79 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_561);
  let x_563 : f32 = u_xlat79;
  let x_565 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_567 : vec3<f32> = vs_TEXCOORD7;
  let x_577 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres0;
  let x_580 : vec3<f32> = (x_567 + -(vec3<f32>(x_577.x, x_577.y, x_577.z)));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres1;
  let x_588 : vec3<f32> = (x_583 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres2;
  let x_597 : vec3<f32> = (x_591 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres3;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_620 : vec4<f32> = u_xlat6;
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : vec4<f32> = u_xlat7;
  let x_628 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = x_575.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_634 < x_636);
  let x_639 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_639);
  let x_643 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_643);
  let x_647 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_655);
  let x_660 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_664);
  let x_667 : vec4<f32> = u_xlat3;
  let x_669 : vec4<f32> = u_xlat4;
  let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.y, x_667.z) + vec3<f32>(x_669.y, x_669.z, x_669.w));
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = max(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_678.x, x_677.x, x_677.y, x_677.z);
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_680, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_685 : f32 = u_xlat79;
  u_xlat79 = (-(x_685) + 4.0f);
  let x_690 : f32 = u_xlat79;
  u_xlatu79 = u32(x_690);
  let x_694 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_694) << bitcast<u32>(2i));
  let x_697 : vec3<f32> = vs_TEXCOORD7;
  let x_699 : i32 = u_xlati79;
  let x_702 : i32 = u_xlati79;
  let x_706 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_699 + 1i) / 4i)][((x_702 + 1i) % 4i)];
  let x_708 : vec3<f32> = (vec3<f32>(x_697.y, x_697.y, x_697.y) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : i32 = u_xlati79;
  let x_713 : i32 = u_xlati79;
  let x_716 : vec4<f32> = x_575.x_MainLightWorldToShadow[(x_711 / 4i)][(x_713 % 4i)];
  let x_718 : vec3<f32> = vs_TEXCOORD7;
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec3<f32> = ((vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.x, x_718.x)) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : i32 = u_xlati79;
  let x_729 : i32 = u_xlati79;
  let x_733 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_726 + 2i) / 4i)][((x_729 + 2i) % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.z, x_735.z, x_735.z)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : i32 = u_xlati79;
  let x_748 : i32 = u_xlati79;
  let x_752 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_745 + 3i) / 4i)][((x_748 + 3i) % 4i)];
  let x_754 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_759 : f32 = vs_TEXCOORD7.y;
  let x_761 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat79 = (x_759 * x_761);
  let x_764 : f32 = x_111.unity_MatrixV[0i].z;
  let x_766 : f32 = vs_TEXCOORD7.x;
  let x_768 : f32 = u_xlat79;
  u_xlat79 = ((x_764 * x_766) + x_768);
  let x_771 : f32 = x_111.unity_MatrixV[2i].z;
  let x_773 : f32 = vs_TEXCOORD7.z;
  let x_775 : f32 = u_xlat79;
  u_xlat79 = ((x_771 * x_773) + x_775);
  let x_777 : f32 = u_xlat79;
  let x_779 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat79 = (x_777 + x_779);
  let x_781 : f32 = u_xlat79;
  let x_784 : f32 = x_111.x_ProjectionParams.y;
  u_xlat79 = (-(x_781) + -(x_784));
  let x_787 : f32 = u_xlat79;
  u_xlat79 = max(x_787, 0.0f);
  let x_789 : f32 = u_xlat79;
  let x_791 : f32 = x_111.unity_FogParams.x;
  u_xlat79 = (x_789 * x_791);
  let x_798 : vec4<f32> = vs_TEXCOORD0;
  let x_801 : f32 = x_111.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_798.z, x_798.w), x_801);
  u_xlat4 = x_802;
  let x_807 : vec4<f32> = vs_TEXCOORD0;
  let x_810 : f32 = x_111.x_GlobalMipBias.x;
  let x_811 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_807.z, x_807.w), x_810);
  let x_812 : vec3<f32> = vec3<f32>(x_811.x, x_811.y, x_811.z);
  let x_813 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat4;
  let x_819 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_823 : vec3<f32> = u_xlat2;
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_823, vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat80;
  u_xlat80 = (x_827 + 0.5f);
  let x_829 : f32 = u_xlat80;
  let x_831 : vec4<f32> = u_xlat6;
  let x_833 : vec3<f32> = (vec3<f32>(x_829, x_829, x_829) * vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_837 : f32 = u_xlat4.w;
  u_xlat80 = max(x_837, 0.00009999999747378752f);
  let x_840 : vec4<f32> = u_xlat4;
  let x_842 : f32 = u_xlat80;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) / vec3<f32>(x_842, x_842, x_842));
  let x_845 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_848) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_854 : f32 = u_xlat52;
  let x_855 : f32 = u_xlat80;
  u_xlat81 = (x_854 + -(x_855));
  let x_858 : f32 = u_xlat80;
  let x_860 : vec4<f32> = u_xlat5;
  let x_862 : vec3<f32> = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat5;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_870 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec3<f32> = u_xlat0;
  let x_874 : vec4<f32> = u_xlat5;
  let x_879 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_880 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : f32 = u_xlat52;
  u_xlat0.x = (-(x_882) + 1.0f);
  let x_887 : f32 = u_xlat0.x;
  let x_889 : f32 = u_xlat0.x;
  u_xlat52 = (x_887 * x_889);
  let x_891 : f32 = u_xlat52;
  u_xlat52 = max(x_891, 0.0078125f);
  let x_894 : f32 = u_xlat52;
  let x_895 : f32 = u_xlat52;
  u_xlat80 = (x_894 * x_895);
  let x_897 : f32 = u_xlat81;
  u_xlat81 = (x_897 + 1.0f);
  let x_899 : f32 = u_xlat81;
  u_xlat81 = clamp(x_899, 0.0f, 1.0f);
  let x_902 : f32 = u_xlat52;
  u_xlat82 = ((x_902 * 4.0f) + 2.0f);
  let x_905 : f32 = u_xlat26;
  u_xlat26 = min(x_905, 1.0f);
  let x_909 : f32 = x_575.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_909);
  let x_911 : bool = u_xlatb83;
  if (x_911) {
    let x_915 : f32 = x_575.x_MainLightShadowParams.y;
    u_xlatb83 = (x_915 == 1.0f);
    let x_917 : bool = u_xlatb83;
    if (x_917) {
      let x_920 : vec4<f32> = u_xlat3;
      let x_923 : vec4<f32> = x_575.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y) + x_923);
      let x_926 : vec4<f32> = u_xlat7;
      let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
      let x_929 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_927.x, x_927.y, x_929);
      let x_941 : vec3<f32> = txVec0;
      let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
      u_xlat8.x = x_943;
      let x_946 : vec4<f32> = u_xlat7;
      let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
      let x_949 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_947.x, x_947.y, x_949);
      let x_956 : vec3<f32> = txVec1;
      let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
      u_xlat8.y = x_958;
      let x_960 : vec4<f32> = u_xlat3;
      let x_963 : vec4<f32> = x_575.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) + x_963);
      let x_966 : vec4<f32> = u_xlat7;
      let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
      let x_969 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_967.x, x_967.y, x_969);
      let x_976 : vec3<f32> = txVec2;
      let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
      u_xlat8.z = x_978;
      let x_981 : vec4<f32> = u_xlat7;
      let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
      let x_984 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_982.x, x_982.y, x_984);
      let x_991 : vec3<f32> = txVec3;
      let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
      u_xlat8.w = x_993;
      let x_996 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_996, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1003 : f32 = x_575.x_MainLightShadowParams.y;
      u_xlatb84 = (x_1003 == 2.0f);
      let x_1005 : bool = u_xlatb84;
      if (x_1005) {
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat7;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1024 : vec4<f32> = u_xlat3;
        let x_1027 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(x_1027.z, x_1027.w)) + -(vec2<f32>(x_1030.x, x_1030.y)));
        let x_1034 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1034.x, x_1034.x, x_1034.y, x_1034.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1038 : vec4<f32> = u_xlat8;
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1038.x, x_1038.x, x_1038.z, x_1038.z) * vec4<f32>(x_1040.x, x_1040.x, x_1040.z, x_1040.z));
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1043.y, x_1043.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1047.x, x_1048.y, x_1047.y, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1053 : vec2<f32> = u_xlat59;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1053));
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1059 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1059) + vec2<f32>(1.0f, 1.0f));
        let x_1063 : vec2<f32> = u_xlat59;
        let x_1065 : vec2<f32> = min(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat10;
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1074 : vec2<f32> = u_xlat61;
        let x_1075 : vec2<f32> = ((-(vec2<f32>(x_1068.x, x_1068.y)) * vec2<f32>(x_1071.x, x_1071.y)) + x_1074);
        let x_1076 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1078, vec2<f32>(0.0f, 0.0f));
        let x_1080 : vec2<f32> = u_xlat59;
        let x_1082 : vec2<f32> = u_xlat59;
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1080) * x_1082) + vec2<f32>(x_1084.y, x_1084.w));
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1089 : vec2<f32> = (vec2<f32>(x_1087.x, x_1087.y) + vec2<f32>(1.0f, 1.0f));
        let x_1090 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1092 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1092 + vec2<f32>(1.0f, 1.0f));
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec2<f32> = u_xlat61;
        let x_1102 : vec2<f32> = (x_1101 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1107 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec2<f32> = u_xlat59;
        let x_1111 : vec2<f32> = (x_1110 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1112 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1114.y, x_1114.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1118 : f32 = u_xlat10.x;
        u_xlat11.z = x_1118;
        let x_1121 : f32 = u_xlat59.x;
        u_xlat11.w = x_1121;
        let x_1124 : f32 = u_xlat12.x;
        u_xlat9.z = x_1124;
        let x_1127 : f32 = u_xlat8.x;
        u_xlat9.w = x_1127;
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1131 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1129.z, x_1129.w, x_1129.x, x_1129.z) + vec4<f32>(x_1131.z, x_1131.w, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat11.y;
        u_xlat10.z = x_1135;
        let x_1138 : f32 = u_xlat59.y;
        u_xlat10.w = x_1138;
        let x_1141 : f32 = u_xlat9.y;
        u_xlat12.z = x_1141;
        let x_1144 : f32 = u_xlat8.z;
        u_xlat12.w = x_1144;
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1148 : vec4<f32> = u_xlat12;
        let x_1150 : vec3<f32> = (vec3<f32>(x_1146.z, x_1146.y, x_1146.w) + vec3<f32>(x_1148.z, x_1148.y, x_1148.w));
        let x_1151 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1155 : vec4<f32> = u_xlat13;
        let x_1157 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.z, x_1153.w) / vec3<f32>(x_1155.z, x_1155.w, x_1155.y));
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1165 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat12;
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1172 : vec3<f32> = (vec3<f32>(x_1168.z, x_1168.y, x_1168.w) / vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
        let x_1173 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1175.x, x_1175.y, x_1175.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat9;
        let x_1183 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1180.y, x_1180.x, x_1180.z) * vec3<f32>(x_1183.x, x_1183.x, x_1183.x));
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat10;
        let x_1191 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1193 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) * vec3<f32>(x_1191.y, x_1191.y, x_1191.y));
        let x_1194 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
        let x_1197 : f32 = u_xlat10.x;
        u_xlat9.w = x_1197;
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1202 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y) * vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y)) + vec4<f32>(x_1205.y, x_1205.w, x_1205.x, x_1205.w));
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1211 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1211.x, x_1211.y)) + vec2<f32>(x_1214.z, x_1214.w));
        let x_1218 : f32 = u_xlat9.y;
        u_xlat10.w = x_1218;
        let x_1220 : vec4<f32> = u_xlat10;
        let x_1221 : vec2<f32> = vec2<f32>(x_1220.y, x_1220.z);
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1227 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y) * vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) + vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1236 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y) * vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.y)) + vec4<f32>(x_1239.w, x_1239.y, x_1239.w, x_1239.z));
        let x_1242 : vec4<f32> = u_xlat7;
        let x_1245 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.w, x_1248.z, x_1248.w));
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1254 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1252.x, x_1252.x, x_1252.x, x_1252.y) * vec4<f32>(x_1254.z, x_1254.w, x_1254.y, x_1254.z));
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1260 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1258.y, x_1258.y, x_1258.z, x_1258.z) * x_1260);
        let x_1264 : f32 = u_xlat8.z;
        let x_1266 : f32 = u_xlat13.y;
        u_xlat84 = (x_1264 * x_1266);
        let x_1269 : vec4<f32> = u_xlat11;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec4;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1279.xy, x_1279.z);
        u_xlat7.x = x_1281;
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1295 : vec3<f32> = txVec5;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat33 = x_1297;
        let x_1298 : f32 = u_xlat33;
        let x_1300 : f32 = u_xlat14.y;
        u_xlat33 = (x_1298 * x_1300);
        let x_1303 : f32 = u_xlat14.x;
        let x_1305 : f32 = u_xlat7.x;
        let x_1307 : f32 = u_xlat33;
        u_xlat7.x = ((x_1303 * x_1305) + x_1307);
        let x_1311 : vec2<f32> = u_xlat59;
        let x_1313 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec6;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat33 = x_1322;
        let x_1324 : f32 = u_xlat14.z;
        let x_1325 : f32 = u_xlat33;
        let x_1328 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1324 * x_1325) + x_1328);
        let x_1332 : vec4<f32> = u_xlat10;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec7;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat33 = x_1344;
        let x_1346 : f32 = u_xlat14.w;
        let x_1347 : f32 = u_xlat33;
        let x_1350 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1346 * x_1347) + x_1350);
        let x_1354 : vec4<f32> = u_xlat12;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.x, x_1354.y);
        let x_1357 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec8;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat33 = x_1366;
        let x_1368 : f32 = u_xlat15.x;
        let x_1369 : f32 = u_xlat33;
        let x_1372 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1368 * x_1369) + x_1372);
        let x_1376 : vec4<f32> = u_xlat12;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.z, x_1376.w);
        let x_1379 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec9;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat33 = x_1388;
        let x_1390 : f32 = u_xlat15.y;
        let x_1391 : f32 = u_xlat33;
        let x_1394 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1390 * x_1391) + x_1394);
        let x_1398 : vec4<f32> = u_xlat10;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.z, x_1398.w);
        let x_1401 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec10;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat33 = x_1410;
        let x_1412 : f32 = u_xlat15.z;
        let x_1413 : f32 = u_xlat33;
        let x_1416 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1412 * x_1413) + x_1416);
        let x_1420 : vec4<f32> = u_xlat9;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.x, x_1420.y);
        let x_1423 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec11;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat33 = x_1432;
        let x_1434 : f32 = u_xlat15.w;
        let x_1435 : f32 = u_xlat33;
        let x_1438 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1434 * x_1435) + x_1438);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec12;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat33 = x_1454;
        let x_1455 : f32 = u_xlat84;
        let x_1456 : f32 = u_xlat33;
        let x_1459 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1455 * x_1456) + x_1459);
      } else {
        let x_1462 : vec4<f32> = u_xlat3;
        let x_1465 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1468 : vec2<f32> = ((vec2<f32>(x_1462.x, x_1462.y) * vec2<f32>(x_1465.z, x_1465.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1469 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1468.x, x_1468.y, x_1469.z, x_1469.w);
        let x_1471 : vec4<f32> = u_xlat7;
        let x_1473 : vec2<f32> = floor(vec2<f32>(x_1471.x, x_1471.y));
        let x_1474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1473.x, x_1473.y, x_1474.z, x_1474.w);
        let x_1476 : vec4<f32> = u_xlat3;
        let x_1479 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1482 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1476.x, x_1476.y) * vec2<f32>(x_1479.z, x_1479.w)) + -(vec2<f32>(x_1482.x, x_1482.y)));
        let x_1486 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1486.x, x_1486.x, x_1486.y, x_1486.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1489 : vec4<f32> = u_xlat8;
        let x_1491 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1489.x, x_1489.x, x_1489.z, x_1489.z) * vec4<f32>(x_1491.x, x_1491.x, x_1491.z, x_1491.z));
        let x_1494 : vec4<f32> = u_xlat9;
        let x_1498 : vec2<f32> = (vec2<f32>(x_1494.y, x_1494.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1499 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1499.x, x_1498.x, x_1499.z, x_1498.y);
        let x_1501 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = u_xlat59;
        let x_1506 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1504));
        let x_1507 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1506.x, x_1507.y, x_1506.y, x_1507.w);
        let x_1509 : vec2<f32> = u_xlat59;
        let x_1511 : vec2<f32> = (-(x_1509) + vec2<f32>(1.0f, 1.0f));
        let x_1512 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
        let x_1514 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1514, vec2<f32>(0.0f, 0.0f));
        let x_1516 : vec2<f32> = u_xlat61;
        let x_1518 : vec2<f32> = u_xlat61;
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1522 : vec2<f32> = ((-(x_1516) * x_1518) + vec2<f32>(x_1520.x, x_1520.y));
        let x_1523 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1523.w);
        let x_1525 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1525, vec2<f32>(0.0f, 0.0f));
        let x_1528 : vec2<f32> = u_xlat61;
        let x_1530 : vec2<f32> = u_xlat61;
        let x_1532 : vec4<f32> = u_xlat8;
        let x_1534 : vec2<f32> = ((-(x_1528) * x_1530) + vec2<f32>(x_1532.y, x_1532.w));
        let x_1535 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1534.x, x_1535.y, x_1534.y);
        let x_1537 : vec4<f32> = u_xlat9;
        let x_1540 : vec2<f32> = (vec2<f32>(x_1537.x, x_1537.y) + vec2<f32>(2.0f, 2.0f));
        let x_1541 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
        let x_1543 : vec3<f32> = u_xlat34;
        let x_1545 : vec2<f32> = (vec2<f32>(x_1543.x, x_1543.z) + vec2<f32>(2.0f, 2.0f));
        let x_1546 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1546.x, x_1545.x, x_1546.z, x_1545.y);
        let x_1549 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1549 * 0.08163200318813323975f);
        let x_1553 : vec4<f32> = u_xlat8;
        let x_1556 : vec3<f32> = (vec3<f32>(x_1553.z, x_1553.x, x_1553.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1557 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
        let x_1559 : vec4<f32> = u_xlat9;
        let x_1562 : vec2<f32> = (vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1563 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
        let x_1566 : f32 = u_xlat12.y;
        u_xlat11.x = x_1566;
        let x_1568 : vec2<f32> = u_xlat59;
        let x_1575 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1576 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1576.x, x_1575.x, x_1576.z, x_1575.y);
        let x_1578 : vec2<f32> = u_xlat59;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1578.x, x_1578.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1583 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1582.x, x_1583.y, x_1582.y, x_1583.w);
        let x_1586 : f32 = u_xlat8.x;
        u_xlat9.y = x_1586;
        let x_1589 : f32 = u_xlat10.y;
        u_xlat9.w = x_1589;
        let x_1591 : vec4<f32> = u_xlat9;
        let x_1592 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1591 + x_1592);
        let x_1594 : vec2<f32> = u_xlat59;
        let x_1597 : vec2<f32> = ((vec2<f32>(x_1594.y, x_1594.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1598 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1598.x, x_1597.x, x_1598.z, x_1597.y);
        let x_1600 : vec2<f32> = u_xlat59;
        let x_1603 : vec2<f32> = ((vec2<f32>(x_1600.y, x_1600.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1604 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1604.w);
        let x_1607 : f32 = u_xlat8.y;
        u_xlat10.y = x_1607;
        let x_1609 : vec4<f32> = u_xlat10;
        let x_1610 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1609 + x_1610);
        let x_1612 : vec4<f32> = u_xlat9;
        let x_1613 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1612 / x_1613);
        let x_1615 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1615 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1621 : vec4<f32> = u_xlat10;
        let x_1622 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1621 / x_1622);
        let x_1624 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1624 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1626 : vec4<f32> = u_xlat9;
        let x_1629 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1626.w, x_1626.x, x_1626.y, x_1626.z) * vec4<f32>(x_1629.x, x_1629.x, x_1629.x, x_1629.x));
        let x_1632 : vec4<f32> = u_xlat10;
        let x_1635 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1632.x, x_1632.w, x_1632.y, x_1632.z) * vec4<f32>(x_1635.y, x_1635.y, x_1635.y, x_1635.y));
        let x_1638 : vec4<f32> = u_xlat9;
        let x_1639 : vec3<f32> = vec3<f32>(x_1638.y, x_1638.z, x_1638.w);
        let x_1640 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1639.x, x_1640.y, x_1639.y, x_1639.z);
        let x_1643 : f32 = u_xlat10.x;
        u_xlat12.y = x_1643;
        let x_1645 : vec4<f32> = u_xlat7;
        let x_1648 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1651 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1645.x, x_1645.y, x_1645.x, x_1645.y) * vec4<f32>(x_1648.x, x_1648.y, x_1648.x, x_1648.y)) + vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1651.y));
        let x_1654 : vec4<f32> = u_xlat7;
        let x_1657 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1660 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1654.x, x_1654.y) * vec2<f32>(x_1657.x, x_1657.y)) + vec2<f32>(x_1660.w, x_1660.y));
        let x_1664 : f32 = u_xlat12.y;
        u_xlat9.y = x_1664;
        let x_1667 : f32 = u_xlat10.z;
        u_xlat12.y = x_1667;
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1672 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1675 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1669.x, x_1669.y, x_1669.x, x_1669.y) * vec4<f32>(x_1672.x, x_1672.y, x_1672.x, x_1672.y)) + vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1675.y));
        let x_1678 : vec4<f32> = u_xlat7;
        let x_1681 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1684 : vec4<f32> = u_xlat12;
        let x_1686 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(x_1681.x, x_1681.y)) + vec2<f32>(x_1684.w, x_1684.y));
        let x_1687 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1686.x, x_1686.y, x_1687.z, x_1687.w);
        let x_1690 : f32 = u_xlat12.y;
        u_xlat9.z = x_1690;
        let x_1693 : vec4<f32> = u_xlat7;
        let x_1696 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1699 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1693.x, x_1693.y, x_1693.x, x_1693.y) * vec4<f32>(x_1696.x, x_1696.y, x_1696.x, x_1696.y)) + vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.z));
        let x_1703 : f32 = u_xlat10.w;
        u_xlat12.y = x_1703;
        let x_1706 : vec4<f32> = u_xlat7;
        let x_1709 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1712 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1706.x, x_1706.y, x_1706.x, x_1706.y) * vec4<f32>(x_1709.x, x_1709.y, x_1709.x, x_1709.y)) + vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1712.y));
        let x_1716 : vec4<f32> = u_xlat7;
        let x_1719 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1719.x, x_1719.y)) + vec2<f32>(x_1722.w, x_1722.y));
        let x_1726 : f32 = u_xlat12.y;
        u_xlat9.w = x_1726;
        let x_1729 : vec4<f32> = u_xlat7;
        let x_1732 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1735 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1732.x, x_1732.y)) + vec2<f32>(x_1735.x, x_1735.w));
        let x_1738 : vec4<f32> = u_xlat12;
        let x_1739 : vec3<f32> = vec3<f32>(x_1738.x, x_1738.z, x_1738.w);
        let x_1740 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1739.x, x_1740.y, x_1739.y, x_1739.z);
        let x_1742 : vec4<f32> = u_xlat7;
        let x_1745 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1748 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1742.x, x_1742.y, x_1742.x, x_1742.y) * vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y)) + vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1748.y));
        let x_1752 : vec4<f32> = u_xlat7;
        let x_1755 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1758 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1752.x, x_1752.y) * vec2<f32>(x_1755.x, x_1755.y)) + vec2<f32>(x_1758.w, x_1758.y));
        let x_1762 : f32 = u_xlat9.x;
        u_xlat10.x = x_1762;
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1767 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat10;
        let x_1772 : vec2<f32> = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.x, x_1770.y));
        let x_1773 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
        let x_1776 : vec4<f32> = u_xlat8;
        let x_1778 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1776.x, x_1776.x, x_1776.x, x_1776.x) * x_1778);
        let x_1781 : vec4<f32> = u_xlat8;
        let x_1783 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1781.y, x_1781.y, x_1781.y, x_1781.y) * x_1783);
        let x_1786 : vec4<f32> = u_xlat8;
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1786.z, x_1786.z, x_1786.z, x_1786.z) * x_1788);
        let x_1790 : vec4<f32> = u_xlat8;
        let x_1792 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1790.w, x_1790.w, x_1790.w, x_1790.w) * x_1792);
        let x_1795 : vec4<f32> = u_xlat13;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.x, x_1795.y);
        let x_1798 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec13;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1805.xy, x_1805.z);
        u_xlat84 = x_1807;
        let x_1809 : vec4<f32> = u_xlat13;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.z, x_1809.w);
        let x_1812 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec14;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1819.xy, x_1819.z);
        u_xlat9.x = x_1821;
        let x_1824 : f32 = u_xlat9.x;
        let x_1826 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1824 * x_1826);
        let x_1830 : f32 = u_xlat18.x;
        let x_1831 : f32 = u_xlat84;
        let x_1834 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1830 * x_1831) + x_1834);
        let x_1837 : vec2<f32> = u_xlat59;
        let x_1839 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec15;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1846.xy, x_1846.z);
        u_xlat59.x = x_1848;
        let x_1851 : f32 = u_xlat18.z;
        let x_1853 : f32 = u_xlat59.x;
        let x_1855 : f32 = u_xlat84;
        u_xlat84 = ((x_1851 * x_1853) + x_1855);
        let x_1858 : vec4<f32> = u_xlat16;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec16;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
        u_xlat59.x = x_1870;
        let x_1873 : f32 = u_xlat18.w;
        let x_1875 : f32 = u_xlat59.x;
        let x_1877 : f32 = u_xlat84;
        u_xlat84 = ((x_1873 * x_1875) + x_1877);
        let x_1880 : vec4<f32> = u_xlat14;
        let x_1881 : vec2<f32> = vec2<f32>(x_1880.x, x_1880.y);
        let x_1883 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec17;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat59.x = x_1892;
        let x_1895 : f32 = u_xlat19.x;
        let x_1897 : f32 = u_xlat59.x;
        let x_1899 : f32 = u_xlat84;
        u_xlat84 = ((x_1895 * x_1897) + x_1899);
        let x_1902 : vec4<f32> = u_xlat14;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
        let x_1905 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec18;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
        u_xlat59.x = x_1914;
        let x_1917 : f32 = u_xlat19.y;
        let x_1919 : f32 = u_xlat59.x;
        let x_1921 : f32 = u_xlat84;
        u_xlat84 = ((x_1917 * x_1919) + x_1921);
        let x_1924 : vec4<f32> = u_xlat15;
        let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
        let x_1927 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
        let x_1934 : vec3<f32> = txVec19;
        let x_1936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1934.xy, x_1934.z);
        u_xlat59.x = x_1936;
        let x_1939 : f32 = u_xlat19.z;
        let x_1941 : f32 = u_xlat59.x;
        let x_1943 : f32 = u_xlat84;
        u_xlat84 = ((x_1939 * x_1941) + x_1943);
        let x_1946 : vec4<f32> = u_xlat16;
        let x_1947 : vec2<f32> = vec2<f32>(x_1946.z, x_1946.w);
        let x_1949 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec20;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1956.xy, x_1956.z);
        u_xlat59.x = x_1958;
        let x_1961 : f32 = u_xlat19.w;
        let x_1963 : f32 = u_xlat59.x;
        let x_1965 : f32 = u_xlat84;
        u_xlat84 = ((x_1961 * x_1963) + x_1965);
        let x_1968 : vec4<f32> = u_xlat17;
        let x_1969 : vec2<f32> = vec2<f32>(x_1968.x, x_1968.y);
        let x_1971 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
        let x_1978 : vec3<f32> = txVec21;
        let x_1980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1978.xy, x_1978.z);
        u_xlat59.x = x_1980;
        let x_1983 : f32 = u_xlat20.x;
        let x_1985 : f32 = u_xlat59.x;
        let x_1987 : f32 = u_xlat84;
        u_xlat84 = ((x_1983 * x_1985) + x_1987);
        let x_1990 : vec4<f32> = u_xlat17;
        let x_1991 : vec2<f32> = vec2<f32>(x_1990.z, x_1990.w);
        let x_1993 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1991.x, x_1991.y, x_1993);
        let x_2000 : vec3<f32> = txVec22;
        let x_2002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2000.xy, x_2000.z);
        u_xlat59.x = x_2002;
        let x_2005 : f32 = u_xlat20.y;
        let x_2007 : f32 = u_xlat59.x;
        let x_2009 : f32 = u_xlat84;
        u_xlat84 = ((x_2005 * x_2007) + x_2009);
        let x_2012 : vec2<f32> = u_xlat35;
        let x_2014 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec23;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2021.xy, x_2021.z);
        u_xlat59.x = x_2023;
        let x_2026 : f32 = u_xlat20.z;
        let x_2028 : f32 = u_xlat59.x;
        let x_2030 : f32 = u_xlat84;
        u_xlat84 = ((x_2026 * x_2028) + x_2030);
        let x_2033 : vec2<f32> = u_xlat67;
        let x_2035 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec24;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
        u_xlat59.x = x_2044;
        let x_2047 : f32 = u_xlat20.w;
        let x_2049 : f32 = u_xlat59.x;
        let x_2051 : f32 = u_xlat84;
        u_xlat84 = ((x_2047 * x_2049) + x_2051);
        let x_2054 : vec4<f32> = u_xlat12;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.x, x_2054.y);
        let x_2057 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec25;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2064.xy, x_2064.z);
        u_xlat59.x = x_2066;
        let x_2069 : f32 = u_xlat8.x;
        let x_2071 : f32 = u_xlat59.x;
        let x_2073 : f32 = u_xlat84;
        u_xlat84 = ((x_2069 * x_2071) + x_2073);
        let x_2076 : vec4<f32> = u_xlat12;
        let x_2077 : vec2<f32> = vec2<f32>(x_2076.z, x_2076.w);
        let x_2079 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
        let x_2086 : vec3<f32> = txVec26;
        let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
        u_xlat59.x = x_2088;
        let x_2091 : f32 = u_xlat8.y;
        let x_2093 : f32 = u_xlat59.x;
        let x_2095 : f32 = u_xlat84;
        u_xlat84 = ((x_2091 * x_2093) + x_2095);
        let x_2098 : vec2<f32> = u_xlat62;
        let x_2100 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec27;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
        u_xlat59.x = x_2109;
        let x_2112 : f32 = u_xlat8.z;
        let x_2114 : f32 = u_xlat59.x;
        let x_2116 : f32 = u_xlat84;
        u_xlat84 = ((x_2112 * x_2114) + x_2116);
        let x_2119 : vec4<f32> = u_xlat7;
        let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
        let x_2122 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2129 : vec3<f32> = txVec28;
        let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
        u_xlat7.x = x_2131;
        let x_2134 : f32 = u_xlat8.w;
        let x_2136 : f32 = u_xlat7.x;
        let x_2138 : f32 = u_xlat84;
        u_xlat83 = ((x_2134 * x_2136) + x_2138);
      }
    }
  } else {
    let x_2142 : vec4<f32> = u_xlat3;
    let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
    let x_2145 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
    let x_2152 : vec3<f32> = txVec29;
    let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
    u_xlat83 = x_2154;
  }
  let x_2156 : f32 = x_575.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2156) + 1.0f);
  let x_2160 : f32 = u_xlat83;
  let x_2162 : f32 = x_575.x_MainLightShadowParams.x;
  let x_2165 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2160 * x_2162) + x_2165);
  let x_2170 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2170);
  let x_2174 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2174 >= 1.0f);
  let x_2176 : bool = u_xlatb55;
  let x_2177 : bool = u_xlatb29;
  u_xlatb29 = (x_2176 | x_2177);
  let x_2179 : bool = u_xlatb29;
  if (x_2179) {
    x_2181 = 1.0f;
  } else {
    let x_2186 : f32 = u_xlat3.x;
    x_2181 = x_2186;
  }
  let x_2187 : f32 = x_2181;
  u_xlat3.x = x_2187;
  let x_2189 : vec3<f32> = vs_TEXCOORD7;
  let x_2191 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2193 : vec3<f32> = (x_2189 + -(x_2191));
  let x_2194 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
  let x_2197 : vec4<f32> = u_xlat7;
  let x_2199 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2197.x, x_2197.y, x_2197.z), vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2203 : f32 = u_xlat29;
  let x_2205 : f32 = x_575.x_MainLightShadowParams.z;
  let x_2208 : f32 = x_575.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2203 * x_2205) + x_2208);
  let x_2210 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2210, 0.0f, 1.0f);
  let x_2213 : f32 = u_xlat3.x;
  u_xlat83 = (-(x_2213) + 1.0f);
  let x_2216 : f32 = u_xlat55;
  let x_2217 : f32 = u_xlat83;
  let x_2220 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2216 * x_2217) + x_2220);
  let x_2230 : f32 = x_2228.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2230 == -1.0f));
  let x_2232 : bool = u_xlatb55;
  if (x_2232) {
    let x_2235 : vec3<f32> = vs_TEXCOORD7;
    let x_2238 : vec4<f32> = x_2228.x_MainLightWorldToLight[1i];
    let x_2240 : vec2<f32> = (vec2<f32>(x_2235.y, x_2235.y) * vec2<f32>(x_2238.x, x_2238.y));
    let x_2241 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2240.x, x_2240.y, x_2241.z, x_2241.w);
    let x_2244 : vec4<f32> = x_2228.x_MainLightWorldToLight[0i];
    let x_2246 : vec3<f32> = vs_TEXCOORD7;
    let x_2249 : vec4<f32> = u_xlat7;
    let x_2251 : vec2<f32> = ((vec2<f32>(x_2244.x, x_2244.y) * vec2<f32>(x_2246.x, x_2246.x)) + vec2<f32>(x_2249.x, x_2249.y));
    let x_2252 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2251.x, x_2251.y, x_2252.z, x_2252.w);
    let x_2255 : vec4<f32> = x_2228.x_MainLightWorldToLight[2i];
    let x_2257 : vec3<f32> = vs_TEXCOORD7;
    let x_2260 : vec4<f32> = u_xlat7;
    let x_2262 : vec2<f32> = ((vec2<f32>(x_2255.x, x_2255.y) * vec2<f32>(x_2257.z, x_2257.z)) + vec2<f32>(x_2260.x, x_2260.y));
    let x_2263 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2262.x, x_2262.y, x_2263.z, x_2263.w);
    let x_2265 : vec4<f32> = u_xlat7;
    let x_2268 : vec4<f32> = x_2228.x_MainLightWorldToLight[3i];
    let x_2270 : vec2<f32> = (vec2<f32>(x_2265.x, x_2265.y) + vec2<f32>(x_2268.x, x_2268.y));
    let x_2271 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
    let x_2273 : vec4<f32> = u_xlat7;
    let x_2276 : vec2<f32> = ((vec2<f32>(x_2273.x, x_2273.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2277 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
    let x_2284 : vec4<f32> = u_xlat7;
    let x_2287 : f32 = x_111.x_GlobalMipBias.x;
    let x_2288 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2284.x, x_2284.y), x_2287);
    u_xlat7 = x_2288;
    let x_2293 : f32 = x_2228.x_MainLightCookieTextureFormat;
    let x_2295 : f32 = x_2228.x_MainLightCookieTextureFormat;
    let x_2297 : f32 = x_2228.x_MainLightCookieTextureFormat;
    let x_2299 : f32 = x_2228.x_MainLightCookieTextureFormat;
    let x_2300 : vec4<f32> = vec4<f32>(x_2293, x_2295, x_2297, x_2299);
    let x_2307 : vec4<bool> = (vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2300.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2307.x, x_2307.y);
    let x_2310 : bool = u_xlatb8.y;
    if (x_2310) {
      let x_2315 : f32 = u_xlat7.w;
      x_2311 = x_2315;
    } else {
      let x_2318 : f32 = u_xlat7.x;
      x_2311 = x_2318;
    }
    let x_2319 : f32 = x_2311;
    u_xlat55 = x_2319;
    let x_2321 : bool = u_xlatb8.x;
    if (x_2321) {
      let x_2325 : vec4<f32> = u_xlat7;
      x_2322 = vec3<f32>(x_2325.x, x_2325.y, x_2325.z);
    } else {
      let x_2328 : f32 = u_xlat55;
      x_2322 = vec3<f32>(x_2328, x_2328, x_2328);
    }
    let x_2330 : vec3<f32> = x_2322;
    let x_2331 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2337 : vec4<f32> = u_xlat7;
  let x_2340 : vec4<f32> = x_111.x_MainLightColor;
  let x_2342 : vec3<f32> = (vec3<f32>(x_2337.x, x_2337.y, x_2337.z) * vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
  let x_2343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2345 : vec4<f32> = u_xlat1;
  let x_2348 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(-(vec3<f32>(x_2345.x, x_2345.y, x_2345.z)), x_2348);
  let x_2350 : f32 = u_xlat55;
  let x_2351 : f32 = u_xlat55;
  u_xlat55 = (x_2350 + x_2351);
  let x_2353 : vec3<f32> = u_xlat2;
  let x_2354 : f32 = u_xlat55;
  let x_2358 : vec4<f32> = u_xlat1;
  let x_2361 : vec3<f32> = ((x_2353 * -(vec3<f32>(x_2354, x_2354, x_2354))) + -(vec3<f32>(x_2358.x, x_2358.y, x_2358.z)));
  let x_2362 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
  let x_2364 : vec3<f32> = u_xlat2;
  let x_2365 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(x_2364, vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
  let x_2368 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2368, 0.0f, 1.0f);
  let x_2370 : f32 = u_xlat55;
  u_xlat55 = (-(x_2370) + 1.0f);
  let x_2373 : f32 = u_xlat55;
  let x_2374 : f32 = u_xlat55;
  u_xlat55 = (x_2373 * x_2374);
  let x_2376 : f32 = u_xlat55;
  let x_2377 : f32 = u_xlat55;
  u_xlat55 = (x_2376 * x_2377);
  let x_2380 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2380) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2387 : f32 = u_xlat0.x;
  let x_2388 : f32 = u_xlat83;
  u_xlat0.x = (x_2387 * x_2388);
  let x_2392 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2392 * 6.0f);
  let x_2404 : vec4<f32> = u_xlat8;
  let x_2407 : f32 = u_xlat0.x;
  let x_2408 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2404.x, x_2404.y, x_2404.z), x_2407);
  u_xlat8 = x_2408;
  let x_2410 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2410 + -1.0f);
  let x_2418 : f32 = x_2416.unity_SpecCube0_HDR.w;
  let x_2420 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2418 * x_2420) + 1.0f);
  let x_2425 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2425, 0.0f);
  let x_2429 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2429);
  let x_2433 : f32 = u_xlat0.x;
  let x_2435 : f32 = x_2416.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2433 * x_2435);
  let x_2439 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2439);
  let x_2443 : f32 = u_xlat0.x;
  let x_2445 : f32 = x_2416.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2443 * x_2445);
  let x_2448 : vec4<f32> = u_xlat8;
  let x_2450 : vec3<f32> = u_xlat0;
  let x_2452 : vec3<f32> = (vec3<f32>(x_2448.x, x_2448.y, x_2448.z) * vec3<f32>(x_2450.x, x_2450.x, x_2450.x));
  let x_2453 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2455 : f32 = u_xlat52;
  let x_2457 : f32 = u_xlat52;
  let x_2461 : vec2<f32> = ((vec2<f32>(x_2455, x_2455) * vec2<f32>(x_2457, x_2457)) + vec2<f32>(-1.0f, 1.0f));
  let x_2462 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2461.x, x_2462.y, x_2461.y);
  let x_2465 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2465);
  let x_2467 : vec4<f32> = u_xlat5;
  let x_2470 : f32 = u_xlat81;
  let x_2472 : vec3<f32> = (-(vec3<f32>(x_2467.x, x_2467.y, x_2467.z)) + vec3<f32>(x_2470, x_2470, x_2470));
  let x_2473 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2472.x, x_2472.y, x_2472.z, x_2473.w);
  let x_2475 : f32 = u_xlat55;
  let x_2477 : vec4<f32> = u_xlat9;
  let x_2480 : vec4<f32> = u_xlat5;
  let x_2482 : vec3<f32> = ((vec3<f32>(x_2475, x_2475, x_2475) * vec3<f32>(x_2477.x, x_2477.y, x_2477.z)) + vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2483 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
  let x_2485 : f32 = u_xlat52;
  let x_2487 : vec4<f32> = u_xlat9;
  let x_2489 : vec3<f32> = (vec3<f32>(x_2485, x_2485, x_2485) * vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
  let x_2490 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
  let x_2492 : vec4<f32> = u_xlat8;
  let x_2494 : vec4<f32> = u_xlat9;
  let x_2496 : vec3<f32> = (vec3<f32>(x_2492.x, x_2492.y, x_2492.z) * vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
  let x_2497 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
  let x_2499 : vec4<f32> = u_xlat4;
  let x_2501 : vec4<f32> = u_xlat6;
  let x_2504 : vec4<f32> = u_xlat8;
  let x_2506 : vec3<f32> = ((vec3<f32>(x_2499.x, x_2499.y, x_2499.z) * vec3<f32>(x_2501.x, x_2501.y, x_2501.z)) + vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
  let x_2507 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
  let x_2510 : f32 = u_xlat3.x;
  let x_2512 : f32 = x_2416.unity_LightData.z;
  u_xlat52 = (x_2510 * x_2512);
  let x_2514 : vec3<f32> = u_xlat2;
  let x_2516 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(x_2514, vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
  let x_2521 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2521, 0.0f, 1.0f);
  let x_2524 : f32 = u_xlat52;
  let x_2526 : f32 = u_xlat3.x;
  u_xlat52 = (x_2524 * x_2526);
  let x_2528 : f32 = u_xlat52;
  let x_2530 : vec4<f32> = u_xlat7;
  let x_2532 : vec3<f32> = (vec3<f32>(x_2528, x_2528, x_2528) * vec3<f32>(x_2530.x, x_2530.y, x_2530.z));
  let x_2533 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2532.x, x_2533.y, x_2532.y, x_2532.z);
  let x_2535 : vec4<f32> = u_xlat1;
  let x_2538 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2540 : vec3<f32> = (vec3<f32>(x_2535.x, x_2535.y, x_2535.z) + vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
  let x_2541 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
  let x_2543 : vec4<f32> = u_xlat7;
  let x_2545 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2543.x, x_2543.y, x_2543.z), vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
  let x_2548 : f32 = u_xlat52;
  u_xlat52 = max(x_2548, 1.17549435e-38f);
  let x_2551 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2551);
  let x_2553 : f32 = u_xlat52;
  let x_2555 : vec4<f32> = u_xlat7;
  let x_2557 : vec3<f32> = (vec3<f32>(x_2553, x_2553, x_2553) * vec3<f32>(x_2555.x, x_2555.y, x_2555.z));
  let x_2558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
  let x_2560 : vec3<f32> = u_xlat2;
  let x_2561 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_2560, vec3<f32>(x_2561.x, x_2561.y, x_2561.z));
  let x_2564 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2564, 0.0f, 1.0f);
  let x_2567 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2569 : vec4<f32> = u_xlat7;
  u_xlat83 = dot(vec3<f32>(x_2567.x, x_2567.y, x_2567.z), vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2572 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2572, 0.0f, 1.0f);
  let x_2574 : f32 = u_xlat52;
  let x_2575 : f32 = u_xlat52;
  u_xlat52 = (x_2574 * x_2575);
  let x_2577 : f32 = u_xlat52;
  let x_2579 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2577 * x_2579) + 1.00001001358032226562f);
  let x_2583 : f32 = u_xlat83;
  let x_2584 : f32 = u_xlat83;
  u_xlat83 = (x_2583 * x_2584);
  let x_2586 : f32 = u_xlat52;
  let x_2587 : f32 = u_xlat52;
  u_xlat52 = (x_2586 * x_2587);
  let x_2589 : f32 = u_xlat83;
  u_xlat83 = max(x_2589, 0.10000000149011611938f);
  let x_2592 : f32 = u_xlat52;
  let x_2593 : f32 = u_xlat83;
  u_xlat52 = (x_2592 * x_2593);
  let x_2595 : f32 = u_xlat82;
  let x_2596 : f32 = u_xlat52;
  u_xlat52 = (x_2595 * x_2596);
  let x_2598 : f32 = u_xlat80;
  let x_2599 : f32 = u_xlat52;
  u_xlat52 = (x_2598 / x_2599);
  let x_2601 : vec4<f32> = u_xlat5;
  let x_2603 : f32 = u_xlat52;
  let x_2606 : vec4<f32> = u_xlat6;
  let x_2608 : vec3<f32> = ((vec3<f32>(x_2601.x, x_2601.y, x_2601.z) * vec3<f32>(x_2603, x_2603, x_2603)) + vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
  let x_2609 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
  let x_2611 : vec4<f32> = u_xlat3;
  let x_2613 : vec4<f32> = u_xlat7;
  let x_2615 : vec3<f32> = (vec3<f32>(x_2611.x, x_2611.z, x_2611.w) * vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
  let x_2616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2615.x, x_2616.y, x_2615.y, x_2615.z);
  let x_2619 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2621 : f32 = x_2416.unity_LightData.y;
  u_xlat52 = min(x_2619, x_2621);
  let x_2624 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2624));
  let x_2627 : f32 = u_xlat29;
  let x_2629 : f32 = x_575.x_AdditionalShadowFadeParams.x;
  let x_2632 : f32 = x_575.x_AdditionalShadowFadeParams.y;
  u_xlat29 = ((x_2627 * x_2629) + x_2632);
  let x_2634 : f32 = u_xlat29;
  u_xlat29 = clamp(x_2634, 0.0f, 1.0f);
  let x_2638 : f32 = x_2228.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2640 : f32 = x_2228.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2642 : f32 = x_2228.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2644 : f32 = x_2228.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2645 : vec4<f32> = vec4<f32>(x_2638, x_2640, x_2642, x_2644);
  let x_2651 : vec4<bool> = (vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2645.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2651.x, x_2651.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2663 : u32 = u_xlatu_loop_1;
    let x_2664 : u32 = u_xlatu52;
    if ((x_2663 < x_2664)) {
    } else {
      break;
    }
    let x_2667 : u32 = u_xlatu_loop_1;
    u_xlatu84 = (x_2667 >> 2u);
    let x_2670 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2670 & 3u));
    let x_2673 : u32 = u_xlatu84;
    let x_2676 : vec4<f32> = x_2416.unity_LightIndices[bitcast<i32>(x_2673)];
    let x_2686 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2691 : vec4<u32> = indexable[x_2686];
    u_xlat84 = dot(x_2676, bitcast<vec4<f32>>(x_2691));
    let x_2695 : f32 = u_xlat84;
    u_xlati84 = i32(x_2695);
    let x_2697 : vec3<f32> = vs_TEXCOORD7;
    let x_2708 : i32 = u_xlati84;
    let x_2710 : vec4<f32> = x_2707.x_AdditionalLightsPosition[x_2708];
    let x_2713 : i32 = u_xlati84;
    let x_2715 : vec4<f32> = x_2707.x_AdditionalLightsPosition[x_2713];
    let x_2717 : vec3<f32> = ((-(x_2697) * vec3<f32>(x_2710.w, x_2710.w, x_2710.w)) + vec3<f32>(x_2715.x, x_2715.y, x_2715.z));
    let x_2718 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2717.x, x_2717.y, x_2717.z, x_2718.w);
    let x_2720 : vec4<f32> = u_xlat9;
    let x_2722 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_2720.x, x_2720.y, x_2720.z), vec3<f32>(x_2722.x, x_2722.y, x_2722.z));
    let x_2727 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2727, 0.00006103515625f);
    let x_2732 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_2732);
    let x_2734 : f32 = u_xlat85;
    let x_2736 : vec4<f32> = u_xlat9;
    let x_2738 : vec3<f32> = (vec3<f32>(x_2734, x_2734, x_2734) * vec3<f32>(x_2736.x, x_2736.y, x_2736.z));
    let x_2739 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2739.w);
    let x_2743 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_2743);
    let x_2746 : f32 = u_xlat59.x;
    let x_2747 : i32 = u_xlati84;
    let x_2749 : f32 = x_2707.x_AdditionalLightsAttenuation[x_2747].x;
    u_xlat59.x = (x_2746 * x_2749);
    let x_2753 : f32 = u_xlat59.x;
    let x_2756 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_2753) * x_2756) + 1.0f);
    let x_2761 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_2761, 0.0f);
    let x_2765 : f32 = u_xlat59.x;
    let x_2767 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2765 * x_2767);
    let x_2771 : f32 = u_xlat59.x;
    let x_2772 : f32 = u_xlat86;
    u_xlat59.x = (x_2771 * x_2772);
    let x_2775 : i32 = u_xlati84;
    let x_2777 : vec4<f32> = x_2707.x_AdditionalLightsSpotDir[x_2775];
    let x_2779 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2777.x, x_2777.y, x_2777.z), vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
    let x_2782 : f32 = u_xlat86;
    let x_2783 : i32 = u_xlati84;
    let x_2785 : f32 = x_2707.x_AdditionalLightsAttenuation[x_2783].z;
    let x_2787 : i32 = u_xlati84;
    let x_2789 : f32 = x_2707.x_AdditionalLightsAttenuation[x_2787].w;
    u_xlat86 = ((x_2782 * x_2785) + x_2789);
    let x_2791 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2791, 0.0f, 1.0f);
    let x_2793 : f32 = u_xlat86;
    let x_2794 : f32 = u_xlat86;
    u_xlat86 = (x_2793 * x_2794);
    let x_2797 : f32 = u_xlat59.x;
    let x_2798 : f32 = u_xlat86;
    u_xlat59.x = (x_2797 * x_2798);
    let x_2802 : i32 = u_xlati84;
    let x_2804 : f32 = x_575.x_AdditionalShadowParams[x_2802].w;
    u_xlati86 = i32(x_2804);
    let x_2807 : i32 = u_xlati86;
    u_xlatb87 = (x_2807 >= 0i);
    let x_2809 : bool = u_xlatb87;
    if (x_2809) {
      let x_2813 : i32 = u_xlati84;
      let x_2815 : f32 = x_575.x_AdditionalShadowParams[x_2813].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2815, x_2815, x_2815, x_2815))));
      let x_2819 : bool = u_xlatb87;
      if (x_2819) {
        let x_2823 : vec4<f32> = u_xlat10;
        let x_2826 : vec4<f32> = u_xlat10;
        let x_2829 : vec4<bool> = (abs(vec4<f32>(x_2823.z, x_2823.z, x_2823.y, x_2823.z)) >= abs(vec4<f32>(x_2826.x, x_2826.y, x_2826.x, x_2826.x)));
        let x_2831 : vec3<bool> = vec3<bool>(x_2829.x, x_2829.y, x_2829.z);
        let x_2832 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2831.x, x_2831.y, x_2831.z, x_2832.w);
        let x_2835 : bool = u_xlatb11.y;
        let x_2837 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2835 & x_2837);
        let x_2839 : vec4<f32> = u_xlat10;
        let x_2842 : vec4<bool> = (-(vec4<f32>(x_2839.z, x_2839.y, x_2839.z, x_2839.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2843 : vec3<bool> = vec3<bool>(x_2842.x, x_2842.y, x_2842.w);
        let x_2844 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2843.x, x_2843.y, x_2844.z, x_2843.z);
        let x_2847 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2847);
        let x_2852 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2852);
        let x_2857 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2857);
        let x_2860 : bool = u_xlatb11.z;
        if (x_2860) {
          let x_2865 : f32 = u_xlat11.y;
          x_2861 = x_2865;
        } else {
          let x_2867 : f32 = u_xlat88;
          x_2861 = x_2867;
        }
        let x_2868 : f32 = x_2861;
        u_xlat88 = x_2868;
        let x_2870 : bool = u_xlatb87;
        if (x_2870) {
          let x_2875 : f32 = u_xlat11.x;
          x_2871 = x_2875;
        } else {
          let x_2877 : f32 = u_xlat88;
          x_2871 = x_2877;
        }
        let x_2878 : f32 = x_2871;
        u_xlat87 = x_2878;
        let x_2879 : i32 = u_xlati84;
        let x_2881 : f32 = x_575.x_AdditionalShadowParams[x_2879].w;
        u_xlat88 = trunc(x_2881);
        let x_2883 : f32 = u_xlat87;
        let x_2884 : f32 = u_xlat88;
        u_xlat87 = (x_2883 + x_2884);
        let x_2886 : f32 = u_xlat87;
        u_xlati86 = i32(x_2886);
      }
      let x_2888 : i32 = u_xlati86;
      u_xlati86 = (x_2888 << bitcast<u32>(2i));
      let x_2890 : vec3<f32> = vs_TEXCOORD7;
      let x_2892 : i32 = u_xlati86;
      let x_2895 : i32 = u_xlati86;
      let x_2899 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_2892 + 1i) / 4i)][((x_2895 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2890.y, x_2890.y, x_2890.y, x_2890.y) * x_2899);
      let x_2901 : i32 = u_xlati86;
      let x_2903 : i32 = u_xlati86;
      let x_2906 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[(x_2901 / 4i)][(x_2903 % 4i)];
      let x_2907 : vec3<f32> = vs_TEXCOORD7;
      let x_2910 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2906 * vec4<f32>(x_2907.x, x_2907.x, x_2907.x, x_2907.x)) + x_2910);
      let x_2912 : i32 = u_xlati86;
      let x_2915 : i32 = u_xlati86;
      let x_2919 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_2912 + 2i) / 4i)][((x_2915 + 2i) % 4i)];
      let x_2920 : vec3<f32> = vs_TEXCOORD7;
      let x_2923 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2919 * vec4<f32>(x_2920.z, x_2920.z, x_2920.z, x_2920.z)) + x_2923);
      let x_2925 : vec4<f32> = u_xlat11;
      let x_2926 : i32 = u_xlati86;
      let x_2929 : i32 = u_xlati86;
      let x_2933 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_2926 + 3i) / 4i)][((x_2929 + 3i) % 4i)];
      u_xlat11 = (x_2925 + x_2933);
      let x_2935 : vec4<f32> = u_xlat11;
      let x_2937 : vec4<f32> = u_xlat11;
      let x_2939 : vec3<f32> = (vec3<f32>(x_2935.x, x_2935.y, x_2935.z) / vec3<f32>(x_2937.w, x_2937.w, x_2937.w));
      let x_2940 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2940.w);
      let x_2943 : i32 = u_xlati84;
      let x_2945 : f32 = x_575.x_AdditionalShadowParams[x_2943].y;
      u_xlatb86 = (0.0f < x_2945);
      let x_2947 : bool = u_xlatb86;
      if (x_2947) {
        let x_2950 : i32 = u_xlati84;
        let x_2952 : f32 = x_575.x_AdditionalShadowParams[x_2950].y;
        u_xlatb86 = (1.0f == x_2952);
        let x_2954 : bool = u_xlatb86;
        if (x_2954) {
          let x_2957 : vec4<f32> = u_xlat11;
          let x_2960 : vec4<f32> = x_575.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.y) + x_2960);
          let x_2963 : vec4<f32> = u_xlat12;
          let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
          let x_2966 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
          let x_2974 : vec3<f32> = txVec30;
          let x_2976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2974.xy, x_2974.z);
          u_xlat13.x = x_2976;
          let x_2979 : vec4<f32> = u_xlat12;
          let x_2980 : vec2<f32> = vec2<f32>(x_2979.z, x_2979.w);
          let x_2982 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2980.x, x_2980.y, x_2982);
          let x_2989 : vec3<f32> = txVec31;
          let x_2991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2989.xy, x_2989.z);
          u_xlat13.y = x_2991;
          let x_2993 : vec4<f32> = u_xlat11;
          let x_2996 : vec4<f32> = x_575.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y) + x_2996);
          let x_2999 : vec4<f32> = u_xlat12;
          let x_3000 : vec2<f32> = vec2<f32>(x_2999.x, x_2999.y);
          let x_3002 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3000.x, x_3000.y, x_3002);
          let x_3009 : vec3<f32> = txVec32;
          let x_3011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3009.xy, x_3009.z);
          u_xlat13.z = x_3011;
          let x_3014 : vec4<f32> = u_xlat12;
          let x_3015 : vec2<f32> = vec2<f32>(x_3014.z, x_3014.w);
          let x_3017 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
          let x_3024 : vec3<f32> = txVec33;
          let x_3026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
          u_xlat13.w = x_3026;
          let x_3028 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3028, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3031 : i32 = u_xlati84;
          let x_3033 : f32 = x_575.x_AdditionalShadowParams[x_3031].y;
          u_xlatb87 = (2.0f == x_3033);
          let x_3035 : bool = u_xlatb87;
          if (x_3035) {
            let x_3038 : vec4<f32> = u_xlat11;
            let x_3041 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3044 : vec2<f32> = ((vec2<f32>(x_3038.x, x_3038.y) * vec2<f32>(x_3041.z, x_3041.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3045 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3044.x, x_3044.y, x_3045.z, x_3045.w);
            let x_3047 : vec4<f32> = u_xlat12;
            let x_3049 : vec2<f32> = floor(vec2<f32>(x_3047.x, x_3047.y));
            let x_3050 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3049.x, x_3049.y, x_3050.z, x_3050.w);
            let x_3053 : vec4<f32> = u_xlat11;
            let x_3056 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3059 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3053.x, x_3053.y) * vec2<f32>(x_3056.z, x_3056.w)) + -(vec2<f32>(x_3059.x, x_3059.y)));
            let x_3063 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3063.x, x_3063.x, x_3063.y, x_3063.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3066 : vec4<f32> = u_xlat13;
            let x_3068 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3066.x, x_3066.x, x_3066.z, x_3066.z) * vec4<f32>(x_3068.x, x_3068.x, x_3068.z, x_3068.z));
            let x_3071 : vec4<f32> = u_xlat14;
            let x_3073 : vec2<f32> = (vec2<f32>(x_3071.y, x_3071.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3074 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3073.x, x_3074.y, x_3073.y, x_3074.w);
            let x_3076 : vec4<f32> = u_xlat14;
            let x_3079 : vec2<f32> = u_xlat64;
            let x_3081 : vec2<f32> = ((vec2<f32>(x_3076.x, x_3076.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3079));
            let x_3082 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3081.x, x_3081.y, x_3082.z, x_3082.w);
            let x_3085 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3085) + vec2<f32>(1.0f, 1.0f));
            let x_3088 : vec2<f32> = u_xlat64;
            let x_3089 : vec2<f32> = min(x_3088, vec2<f32>(0.0f, 0.0f));
            let x_3090 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3089.x, x_3089.y, x_3090.z, x_3090.w);
            let x_3092 : vec4<f32> = u_xlat15;
            let x_3095 : vec4<f32> = u_xlat15;
            let x_3098 : vec2<f32> = u_xlat66;
            let x_3099 : vec2<f32> = ((-(vec2<f32>(x_3092.x, x_3092.y)) * vec2<f32>(x_3095.x, x_3095.y)) + x_3098);
            let x_3100 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3099.x, x_3099.y, x_3100.z, x_3100.w);
            let x_3102 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3102, vec2<f32>(0.0f, 0.0f));
            let x_3104 : vec2<f32> = u_xlat64;
            let x_3106 : vec2<f32> = u_xlat64;
            let x_3108 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3104) * x_3106) + vec2<f32>(x_3108.y, x_3108.w));
            let x_3111 : vec4<f32> = u_xlat15;
            let x_3113 : vec2<f32> = (vec2<f32>(x_3111.x, x_3111.y) + vec2<f32>(1.0f, 1.0f));
            let x_3114 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3113.x, x_3113.y, x_3114.z, x_3114.w);
            let x_3116 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3116 + vec2<f32>(1.0f, 1.0f));
            let x_3118 : vec4<f32> = u_xlat14;
            let x_3120 : vec2<f32> = (vec2<f32>(x_3118.x, x_3118.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3121 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3120.x, x_3120.y, x_3121.z, x_3121.w);
            let x_3123 : vec2<f32> = u_xlat66;
            let x_3124 : vec2<f32> = (x_3123 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3125 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3124.x, x_3124.y, x_3125.z, x_3125.w);
            let x_3127 : vec4<f32> = u_xlat15;
            let x_3129 : vec2<f32> = (vec2<f32>(x_3127.x, x_3127.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3130 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3129.x, x_3129.y, x_3130.z, x_3130.w);
            let x_3132 : vec2<f32> = u_xlat64;
            let x_3133 : vec2<f32> = (x_3132 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3134 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3133.x, x_3133.y, x_3134.z, x_3134.w);
            let x_3136 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3136.y, x_3136.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3140 : f32 = u_xlat15.x;
            u_xlat16.z = x_3140;
            let x_3143 : f32 = u_xlat64.x;
            u_xlat16.w = x_3143;
            let x_3146 : f32 = u_xlat17.x;
            u_xlat14.z = x_3146;
            let x_3149 : f32 = u_xlat13.x;
            u_xlat14.w = x_3149;
            let x_3151 : vec4<f32> = u_xlat14;
            let x_3153 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3151.z, x_3151.w, x_3151.x, x_3151.z) + vec4<f32>(x_3153.z, x_3153.w, x_3153.x, x_3153.z));
            let x_3157 : f32 = u_xlat16.y;
            u_xlat15.z = x_3157;
            let x_3160 : f32 = u_xlat64.y;
            u_xlat15.w = x_3160;
            let x_3163 : f32 = u_xlat14.y;
            u_xlat17.z = x_3163;
            let x_3166 : f32 = u_xlat13.z;
            u_xlat17.w = x_3166;
            let x_3168 : vec4<f32> = u_xlat15;
            let x_3170 : vec4<f32> = u_xlat17;
            let x_3172 : vec3<f32> = (vec3<f32>(x_3168.z, x_3168.y, x_3168.w) + vec3<f32>(x_3170.z, x_3170.y, x_3170.w));
            let x_3173 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
            let x_3175 : vec4<f32> = u_xlat14;
            let x_3177 : vec4<f32> = u_xlat18;
            let x_3179 : vec3<f32> = (vec3<f32>(x_3175.x, x_3175.z, x_3175.w) / vec3<f32>(x_3177.z, x_3177.w, x_3177.y));
            let x_3180 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3179.x, x_3179.y, x_3179.z, x_3180.w);
            let x_3182 : vec4<f32> = u_xlat14;
            let x_3184 : vec3<f32> = (vec3<f32>(x_3182.x, x_3182.y, x_3182.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3185 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3184.x, x_3184.y, x_3184.z, x_3185.w);
            let x_3187 : vec4<f32> = u_xlat17;
            let x_3189 : vec4<f32> = u_xlat13;
            let x_3191 : vec3<f32> = (vec3<f32>(x_3187.z, x_3187.y, x_3187.w) / vec3<f32>(x_3189.x, x_3189.y, x_3189.z));
            let x_3192 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3191.x, x_3191.y, x_3191.z, x_3192.w);
            let x_3194 : vec4<f32> = u_xlat15;
            let x_3196 : vec3<f32> = (vec3<f32>(x_3194.x, x_3194.y, x_3194.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3197 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3196.x, x_3196.y, x_3196.z, x_3197.w);
            let x_3199 : vec4<f32> = u_xlat14;
            let x_3202 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3204 : vec3<f32> = (vec3<f32>(x_3199.y, x_3199.x, x_3199.z) * vec3<f32>(x_3202.x, x_3202.x, x_3202.x));
            let x_3205 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3204.x, x_3204.y, x_3204.z, x_3205.w);
            let x_3207 : vec4<f32> = u_xlat15;
            let x_3210 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3212 : vec3<f32> = (vec3<f32>(x_3207.x, x_3207.y, x_3207.z) * vec3<f32>(x_3210.y, x_3210.y, x_3210.y));
            let x_3213 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3212.x, x_3212.y, x_3212.z, x_3213.w);
            let x_3216 : f32 = u_xlat15.x;
            u_xlat14.w = x_3216;
            let x_3218 : vec4<f32> = u_xlat12;
            let x_3221 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3224 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3218.x, x_3218.y, x_3218.x, x_3218.y) * vec4<f32>(x_3221.x, x_3221.y, x_3221.x, x_3221.y)) + vec4<f32>(x_3224.y, x_3224.w, x_3224.x, x_3224.w));
            let x_3227 : vec4<f32> = u_xlat12;
            let x_3230 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3233 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3227.x, x_3227.y) * vec2<f32>(x_3230.x, x_3230.y)) + vec2<f32>(x_3233.z, x_3233.w));
            let x_3237 : f32 = u_xlat14.y;
            u_xlat15.w = x_3237;
            let x_3239 : vec4<f32> = u_xlat15;
            let x_3240 : vec2<f32> = vec2<f32>(x_3239.y, x_3239.z);
            let x_3241 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3241.x, x_3240.x, x_3241.z, x_3240.y);
            let x_3243 : vec4<f32> = u_xlat12;
            let x_3246 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3249 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3243.x, x_3243.y, x_3243.x, x_3243.y) * vec4<f32>(x_3246.x, x_3246.y, x_3246.x, x_3246.y)) + vec4<f32>(x_3249.x, x_3249.y, x_3249.z, x_3249.y));
            let x_3252 : vec4<f32> = u_xlat12;
            let x_3255 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3258 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3252.x, x_3252.y, x_3252.x, x_3252.y) * vec4<f32>(x_3255.x, x_3255.y, x_3255.x, x_3255.y)) + vec4<f32>(x_3258.w, x_3258.y, x_3258.w, x_3258.z));
            let x_3261 : vec4<f32> = u_xlat12;
            let x_3264 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3267 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3261.x, x_3261.y, x_3261.x, x_3261.y) * vec4<f32>(x_3264.x, x_3264.y, x_3264.x, x_3264.y)) + vec4<f32>(x_3267.x, x_3267.w, x_3267.z, x_3267.w));
            let x_3270 : vec4<f32> = u_xlat13;
            let x_3272 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3270.x, x_3270.x, x_3270.x, x_3270.y) * vec4<f32>(x_3272.z, x_3272.w, x_3272.y, x_3272.z));
            let x_3275 : vec4<f32> = u_xlat13;
            let x_3277 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3275.y, x_3275.y, x_3275.z, x_3275.z) * x_3277);
            let x_3280 : f32 = u_xlat13.z;
            let x_3282 : f32 = u_xlat18.y;
            u_xlat87 = (x_3280 * x_3282);
            let x_3285 : vec4<f32> = u_xlat16;
            let x_3286 : vec2<f32> = vec2<f32>(x_3285.x, x_3285.y);
            let x_3288 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3286.x, x_3286.y, x_3288);
            let x_3295 : vec3<f32> = txVec34;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat88 = x_3297;
            let x_3299 : vec4<f32> = u_xlat16;
            let x_3300 : vec2<f32> = vec2<f32>(x_3299.z, x_3299.w);
            let x_3302 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3300.x, x_3300.y, x_3302);
            let x_3310 : vec3<f32> = txVec35;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat89 = x_3312;
            let x_3313 : f32 = u_xlat89;
            let x_3315 : f32 = u_xlat19.y;
            u_xlat89 = (x_3313 * x_3315);
            let x_3318 : f32 = u_xlat19.x;
            let x_3319 : f32 = u_xlat88;
            let x_3321 : f32 = u_xlat89;
            u_xlat88 = ((x_3318 * x_3319) + x_3321);
            let x_3324 : vec2<f32> = u_xlat64;
            let x_3326 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec36;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat89 = x_3335;
            let x_3337 : f32 = u_xlat19.z;
            let x_3338 : f32 = u_xlat89;
            let x_3340 : f32 = u_xlat88;
            u_xlat88 = ((x_3337 * x_3338) + x_3340);
            let x_3343 : vec4<f32> = u_xlat15;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.x, x_3343.y);
            let x_3346 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec37;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat89 = x_3355;
            let x_3357 : f32 = u_xlat19.w;
            let x_3358 : f32 = u_xlat89;
            let x_3360 : f32 = u_xlat88;
            u_xlat88 = ((x_3357 * x_3358) + x_3360);
            let x_3363 : vec4<f32> = u_xlat17;
            let x_3364 : vec2<f32> = vec2<f32>(x_3363.x, x_3363.y);
            let x_3366 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec38;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat89 = x_3375;
            let x_3377 : f32 = u_xlat20.x;
            let x_3378 : f32 = u_xlat89;
            let x_3380 : f32 = u_xlat88;
            u_xlat88 = ((x_3377 * x_3378) + x_3380);
            let x_3383 : vec4<f32> = u_xlat17;
            let x_3384 : vec2<f32> = vec2<f32>(x_3383.z, x_3383.w);
            let x_3386 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec39;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat89 = x_3395;
            let x_3397 : f32 = u_xlat20.y;
            let x_3398 : f32 = u_xlat89;
            let x_3400 : f32 = u_xlat88;
            u_xlat88 = ((x_3397 * x_3398) + x_3400);
            let x_3403 : vec4<f32> = u_xlat15;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.z, x_3403.w);
            let x_3406 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec40;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat89 = x_3415;
            let x_3417 : f32 = u_xlat20.z;
            let x_3418 : f32 = u_xlat89;
            let x_3420 : f32 = u_xlat88;
            u_xlat88 = ((x_3417 * x_3418) + x_3420);
            let x_3423 : vec4<f32> = u_xlat14;
            let x_3424 : vec2<f32> = vec2<f32>(x_3423.x, x_3423.y);
            let x_3426 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3424.x, x_3424.y, x_3426);
            let x_3433 : vec3<f32> = txVec41;
            let x_3435 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3433.xy, x_3433.z);
            u_xlat89 = x_3435;
            let x_3437 : f32 = u_xlat20.w;
            let x_3438 : f32 = u_xlat89;
            let x_3440 : f32 = u_xlat88;
            u_xlat88 = ((x_3437 * x_3438) + x_3440);
            let x_3443 : vec4<f32> = u_xlat14;
            let x_3444 : vec2<f32> = vec2<f32>(x_3443.z, x_3443.w);
            let x_3446 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec42;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat89 = x_3455;
            let x_3456 : f32 = u_xlat87;
            let x_3457 : f32 = u_xlat89;
            let x_3459 : f32 = u_xlat88;
            u_xlat86 = ((x_3456 * x_3457) + x_3459);
          } else {
            let x_3462 : vec4<f32> = u_xlat11;
            let x_3465 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3468 : vec2<f32> = ((vec2<f32>(x_3462.x, x_3462.y) * vec2<f32>(x_3465.z, x_3465.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3469 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3468.x, x_3468.y, x_3469.z, x_3469.w);
            let x_3471 : vec4<f32> = u_xlat12;
            let x_3473 : vec2<f32> = floor(vec2<f32>(x_3471.x, x_3471.y));
            let x_3474 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3473.x, x_3473.y, x_3474.z, x_3474.w);
            let x_3476 : vec4<f32> = u_xlat11;
            let x_3479 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3482 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3476.x, x_3476.y) * vec2<f32>(x_3479.z, x_3479.w)) + -(vec2<f32>(x_3482.x, x_3482.y)));
            let x_3486 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3486.x, x_3486.x, x_3486.y, x_3486.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3489 : vec4<f32> = u_xlat13;
            let x_3491 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3489.x, x_3489.x, x_3489.z, x_3489.z) * vec4<f32>(x_3491.x, x_3491.x, x_3491.z, x_3491.z));
            let x_3494 : vec4<f32> = u_xlat14;
            let x_3496 : vec2<f32> = (vec2<f32>(x_3494.y, x_3494.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3497 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3497.x, x_3496.x, x_3497.z, x_3496.y);
            let x_3499 : vec4<f32> = u_xlat14;
            let x_3502 : vec2<f32> = u_xlat64;
            let x_3504 : vec2<f32> = ((vec2<f32>(x_3499.x, x_3499.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3502));
            let x_3505 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3504.x, x_3505.y, x_3504.y, x_3505.w);
            let x_3507 : vec2<f32> = u_xlat64;
            let x_3509 : vec2<f32> = (-(x_3507) + vec2<f32>(1.0f, 1.0f));
            let x_3510 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3509.x, x_3509.y, x_3510.z, x_3510.w);
            let x_3512 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3512, vec2<f32>(0.0f, 0.0f));
            let x_3514 : vec2<f32> = u_xlat66;
            let x_3516 : vec2<f32> = u_xlat66;
            let x_3518 : vec4<f32> = u_xlat14;
            let x_3520 : vec2<f32> = ((-(x_3514) * x_3516) + vec2<f32>(x_3518.x, x_3518.y));
            let x_3521 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3520.x, x_3520.y, x_3521.z, x_3521.w);
            let x_3523 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3523, vec2<f32>(0.0f, 0.0f));
            let x_3526 : vec2<f32> = u_xlat66;
            let x_3528 : vec2<f32> = u_xlat66;
            let x_3530 : vec4<f32> = u_xlat13;
            let x_3532 : vec2<f32> = ((-(x_3526) * x_3528) + vec2<f32>(x_3530.y, x_3530.w));
            let x_3533 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3532.x, x_3533.y, x_3532.y);
            let x_3535 : vec4<f32> = u_xlat14;
            let x_3537 : vec2<f32> = (vec2<f32>(x_3535.x, x_3535.y) + vec2<f32>(2.0f, 2.0f));
            let x_3538 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3537.x, x_3537.y, x_3538.z, x_3538.w);
            let x_3540 : vec3<f32> = u_xlat39;
            let x_3542 : vec2<f32> = (vec2<f32>(x_3540.x, x_3540.z) + vec2<f32>(2.0f, 2.0f));
            let x_3543 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3543.x, x_3542.x, x_3543.z, x_3542.y);
            let x_3546 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3546 * 0.08163200318813323975f);
            let x_3549 : vec4<f32> = u_xlat13;
            let x_3551 : vec3<f32> = (vec3<f32>(x_3549.z, x_3549.x, x_3549.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3552 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3551.x, x_3551.y, x_3551.z, x_3552.w);
            let x_3554 : vec4<f32> = u_xlat14;
            let x_3556 : vec2<f32> = (vec2<f32>(x_3554.x, x_3554.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3557 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3556.x, x_3556.y, x_3557.z, x_3557.w);
            let x_3560 : f32 = u_xlat17.y;
            u_xlat16.x = x_3560;
            let x_3562 : vec2<f32> = u_xlat64;
            let x_3565 : vec2<f32> = ((vec2<f32>(x_3562.x, x_3562.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3566 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3566.x, x_3565.x, x_3566.z, x_3565.y);
            let x_3568 : vec2<f32> = u_xlat64;
            let x_3571 : vec2<f32> = ((vec2<f32>(x_3568.x, x_3568.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3572 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3571.x, x_3572.y, x_3571.y, x_3572.w);
            let x_3575 : f32 = u_xlat13.x;
            u_xlat14.y = x_3575;
            let x_3578 : f32 = u_xlat15.y;
            u_xlat14.w = x_3578;
            let x_3580 : vec4<f32> = u_xlat14;
            let x_3581 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3580 + x_3581);
            let x_3583 : vec2<f32> = u_xlat64;
            let x_3586 : vec2<f32> = ((vec2<f32>(x_3583.y, x_3583.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3587 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3587.x, x_3586.x, x_3587.z, x_3586.y);
            let x_3589 : vec2<f32> = u_xlat64;
            let x_3592 : vec2<f32> = ((vec2<f32>(x_3589.y, x_3589.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3593 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3592.x, x_3593.y, x_3592.y, x_3593.w);
            let x_3596 : f32 = u_xlat13.y;
            u_xlat15.y = x_3596;
            let x_3598 : vec4<f32> = u_xlat15;
            let x_3599 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3598 + x_3599);
            let x_3601 : vec4<f32> = u_xlat14;
            let x_3602 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3601 / x_3602);
            let x_3604 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3604 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3606 : vec4<f32> = u_xlat15;
            let x_3607 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3606 / x_3607);
            let x_3609 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3609 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3611 : vec4<f32> = u_xlat14;
            let x_3614 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3611.w, x_3611.x, x_3611.y, x_3611.z) * vec4<f32>(x_3614.x, x_3614.x, x_3614.x, x_3614.x));
            let x_3617 : vec4<f32> = u_xlat15;
            let x_3620 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3617.x, x_3617.w, x_3617.y, x_3617.z) * vec4<f32>(x_3620.y, x_3620.y, x_3620.y, x_3620.y));
            let x_3623 : vec4<f32> = u_xlat14;
            let x_3624 : vec3<f32> = vec3<f32>(x_3623.y, x_3623.z, x_3623.w);
            let x_3625 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3624.x, x_3625.y, x_3624.y, x_3624.z);
            let x_3628 : f32 = u_xlat15.x;
            u_xlat17.y = x_3628;
            let x_3630 : vec4<f32> = u_xlat12;
            let x_3633 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3636 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3630.x, x_3630.y, x_3630.x, x_3630.y) * vec4<f32>(x_3633.x, x_3633.y, x_3633.x, x_3633.y)) + vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3636.y));
            let x_3639 : vec4<f32> = u_xlat12;
            let x_3642 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3645 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3639.x, x_3639.y) * vec2<f32>(x_3642.x, x_3642.y)) + vec2<f32>(x_3645.w, x_3645.y));
            let x_3649 : f32 = u_xlat17.y;
            u_xlat14.y = x_3649;
            let x_3652 : f32 = u_xlat15.z;
            u_xlat17.y = x_3652;
            let x_3654 : vec4<f32> = u_xlat12;
            let x_3657 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3660 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3654.x, x_3654.y, x_3654.x, x_3654.y) * vec4<f32>(x_3657.x, x_3657.y, x_3657.x, x_3657.y)) + vec4<f32>(x_3660.x, x_3660.y, x_3660.z, x_3660.y));
            let x_3663 : vec4<f32> = u_xlat12;
            let x_3666 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3669 : vec4<f32> = u_xlat17;
            let x_3671 : vec2<f32> = ((vec2<f32>(x_3663.x, x_3663.y) * vec2<f32>(x_3666.x, x_3666.y)) + vec2<f32>(x_3669.w, x_3669.y));
            let x_3672 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3671.x, x_3671.y, x_3672.z, x_3672.w);
            let x_3675 : f32 = u_xlat17.y;
            u_xlat14.z = x_3675;
            let x_3678 : vec4<f32> = u_xlat12;
            let x_3681 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3684 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3678.x, x_3678.y, x_3678.x, x_3678.y) * vec4<f32>(x_3681.x, x_3681.y, x_3681.x, x_3681.y)) + vec4<f32>(x_3684.x, x_3684.y, x_3684.x, x_3684.z));
            let x_3688 : f32 = u_xlat15.w;
            u_xlat17.y = x_3688;
            let x_3691 : vec4<f32> = u_xlat12;
            let x_3694 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3697 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3691.x, x_3691.y, x_3691.x, x_3691.y) * vec4<f32>(x_3694.x, x_3694.y, x_3694.x, x_3694.y)) + vec4<f32>(x_3697.x, x_3697.y, x_3697.z, x_3697.y));
            let x_3701 : vec4<f32> = u_xlat12;
            let x_3704 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3707 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3701.x, x_3701.y) * vec2<f32>(x_3704.x, x_3704.y)) + vec2<f32>(x_3707.w, x_3707.y));
            let x_3711 : f32 = u_xlat17.y;
            u_xlat14.w = x_3711;
            let x_3714 : vec4<f32> = u_xlat12;
            let x_3717 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3720 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3714.x, x_3714.y) * vec2<f32>(x_3717.x, x_3717.y)) + vec2<f32>(x_3720.x, x_3720.w));
            let x_3723 : vec4<f32> = u_xlat17;
            let x_3724 : vec3<f32> = vec3<f32>(x_3723.x, x_3723.z, x_3723.w);
            let x_3725 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3724.x, x_3725.y, x_3724.y, x_3724.z);
            let x_3727 : vec4<f32> = u_xlat12;
            let x_3730 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3733 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3727.x, x_3727.y, x_3727.x, x_3727.y) * vec4<f32>(x_3730.x, x_3730.y, x_3730.x, x_3730.y)) + vec4<f32>(x_3733.x, x_3733.y, x_3733.z, x_3733.y));
            let x_3736 : vec4<f32> = u_xlat12;
            let x_3739 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3742 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3736.x, x_3736.y) * vec2<f32>(x_3739.x, x_3739.y)) + vec2<f32>(x_3742.w, x_3742.y));
            let x_3746 : f32 = u_xlat14.x;
            u_xlat15.x = x_3746;
            let x_3748 : vec4<f32> = u_xlat12;
            let x_3751 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3754 : vec4<f32> = u_xlat15;
            let x_3756 : vec2<f32> = ((vec2<f32>(x_3748.x, x_3748.y) * vec2<f32>(x_3751.x, x_3751.y)) + vec2<f32>(x_3754.x, x_3754.y));
            let x_3757 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3756.x, x_3756.y, x_3757.z, x_3757.w);
            let x_3760 : vec4<f32> = u_xlat13;
            let x_3762 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3760.x, x_3760.x, x_3760.x, x_3760.x) * x_3762);
            let x_3765 : vec4<f32> = u_xlat13;
            let x_3767 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3765.y, x_3765.y, x_3765.y, x_3765.y) * x_3767);
            let x_3770 : vec4<f32> = u_xlat13;
            let x_3772 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3770.z, x_3770.z, x_3770.z, x_3770.z) * x_3772);
            let x_3774 : vec4<f32> = u_xlat13;
            let x_3776 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3774.w, x_3774.w, x_3774.w, x_3774.w) * x_3776);
            let x_3779 : vec4<f32> = u_xlat18;
            let x_3780 : vec2<f32> = vec2<f32>(x_3779.x, x_3779.y);
            let x_3782 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3780.x, x_3780.y, x_3782);
            let x_3789 : vec3<f32> = txVec43;
            let x_3791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3789.xy, x_3789.z);
            u_xlat87 = x_3791;
            let x_3793 : vec4<f32> = u_xlat18;
            let x_3794 : vec2<f32> = vec2<f32>(x_3793.z, x_3793.w);
            let x_3796 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3794.x, x_3794.y, x_3796);
            let x_3803 : vec3<f32> = txVec44;
            let x_3805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3803.xy, x_3803.z);
            u_xlat88 = x_3805;
            let x_3806 : f32 = u_xlat88;
            let x_3808 : f32 = u_xlat23.y;
            u_xlat88 = (x_3806 * x_3808);
            let x_3811 : f32 = u_xlat23.x;
            let x_3812 : f32 = u_xlat87;
            let x_3814 : f32 = u_xlat88;
            u_xlat87 = ((x_3811 * x_3812) + x_3814);
            let x_3817 : vec2<f32> = u_xlat64;
            let x_3819 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3817.x, x_3817.y, x_3819);
            let x_3826 : vec3<f32> = txVec45;
            let x_3828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3826.xy, x_3826.z);
            u_xlat88 = x_3828;
            let x_3830 : f32 = u_xlat23.z;
            let x_3831 : f32 = u_xlat88;
            let x_3833 : f32 = u_xlat87;
            u_xlat87 = ((x_3830 * x_3831) + x_3833);
            let x_3836 : vec4<f32> = u_xlat21;
            let x_3837 : vec2<f32> = vec2<f32>(x_3836.x, x_3836.y);
            let x_3839 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3837.x, x_3837.y, x_3839);
            let x_3846 : vec3<f32> = txVec46;
            let x_3848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3846.xy, x_3846.z);
            u_xlat88 = x_3848;
            let x_3850 : f32 = u_xlat23.w;
            let x_3851 : f32 = u_xlat88;
            let x_3853 : f32 = u_xlat87;
            u_xlat87 = ((x_3850 * x_3851) + x_3853);
            let x_3856 : vec4<f32> = u_xlat19;
            let x_3857 : vec2<f32> = vec2<f32>(x_3856.x, x_3856.y);
            let x_3859 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3857.x, x_3857.y, x_3859);
            let x_3866 : vec3<f32> = txVec47;
            let x_3868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3866.xy, x_3866.z);
            u_xlat88 = x_3868;
            let x_3870 : f32 = u_xlat24.x;
            let x_3871 : f32 = u_xlat88;
            let x_3873 : f32 = u_xlat87;
            u_xlat87 = ((x_3870 * x_3871) + x_3873);
            let x_3876 : vec4<f32> = u_xlat19;
            let x_3877 : vec2<f32> = vec2<f32>(x_3876.z, x_3876.w);
            let x_3879 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3877.x, x_3877.y, x_3879);
            let x_3886 : vec3<f32> = txVec48;
            let x_3888 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3886.xy, x_3886.z);
            u_xlat88 = x_3888;
            let x_3890 : f32 = u_xlat24.y;
            let x_3891 : f32 = u_xlat88;
            let x_3893 : f32 = u_xlat87;
            u_xlat87 = ((x_3890 * x_3891) + x_3893);
            let x_3896 : vec4<f32> = u_xlat20;
            let x_3897 : vec2<f32> = vec2<f32>(x_3896.x, x_3896.y);
            let x_3899 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3897.x, x_3897.y, x_3899);
            let x_3906 : vec3<f32> = txVec49;
            let x_3908 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3906.xy, x_3906.z);
            u_xlat88 = x_3908;
            let x_3910 : f32 = u_xlat24.z;
            let x_3911 : f32 = u_xlat88;
            let x_3913 : f32 = u_xlat87;
            u_xlat87 = ((x_3910 * x_3911) + x_3913);
            let x_3916 : vec4<f32> = u_xlat21;
            let x_3917 : vec2<f32> = vec2<f32>(x_3916.z, x_3916.w);
            let x_3919 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3917.x, x_3917.y, x_3919);
            let x_3926 : vec3<f32> = txVec50;
            let x_3928 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3926.xy, x_3926.z);
            u_xlat88 = x_3928;
            let x_3930 : f32 = u_xlat24.w;
            let x_3931 : f32 = u_xlat88;
            let x_3933 : f32 = u_xlat87;
            u_xlat87 = ((x_3930 * x_3931) + x_3933);
            let x_3936 : vec4<f32> = u_xlat22;
            let x_3937 : vec2<f32> = vec2<f32>(x_3936.x, x_3936.y);
            let x_3939 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3937.x, x_3937.y, x_3939);
            let x_3946 : vec3<f32> = txVec51;
            let x_3948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3946.xy, x_3946.z);
            u_xlat88 = x_3948;
            let x_3950 : f32 = u_xlat25.x;
            let x_3951 : f32 = u_xlat88;
            let x_3953 : f32 = u_xlat87;
            u_xlat87 = ((x_3950 * x_3951) + x_3953);
            let x_3956 : vec4<f32> = u_xlat22;
            let x_3957 : vec2<f32> = vec2<f32>(x_3956.z, x_3956.w);
            let x_3959 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3957.x, x_3957.y, x_3959);
            let x_3966 : vec3<f32> = txVec52;
            let x_3968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3966.xy, x_3966.z);
            u_xlat88 = x_3968;
            let x_3970 : f32 = u_xlat25.y;
            let x_3971 : f32 = u_xlat88;
            let x_3973 : f32 = u_xlat87;
            u_xlat87 = ((x_3970 * x_3971) + x_3973);
            let x_3976 : vec2<f32> = u_xlat40;
            let x_3978 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3976.x, x_3976.y, x_3978);
            let x_3985 : vec3<f32> = txVec53;
            let x_3987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3985.xy, x_3985.z);
            u_xlat88 = x_3987;
            let x_3989 : f32 = u_xlat25.z;
            let x_3990 : f32 = u_xlat88;
            let x_3992 : f32 = u_xlat87;
            u_xlat87 = ((x_3989 * x_3990) + x_3992);
            let x_3995 : vec2<f32> = u_xlat72;
            let x_3997 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3995.x, x_3995.y, x_3997);
            let x_4004 : vec3<f32> = txVec54;
            let x_4006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4004.xy, x_4004.z);
            u_xlat88 = x_4006;
            let x_4008 : f32 = u_xlat25.w;
            let x_4009 : f32 = u_xlat88;
            let x_4011 : f32 = u_xlat87;
            u_xlat87 = ((x_4008 * x_4009) + x_4011);
            let x_4014 : vec4<f32> = u_xlat17;
            let x_4015 : vec2<f32> = vec2<f32>(x_4014.x, x_4014.y);
            let x_4017 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4015.x, x_4015.y, x_4017);
            let x_4024 : vec3<f32> = txVec55;
            let x_4026 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4024.xy, x_4024.z);
            u_xlat88 = x_4026;
            let x_4028 : f32 = u_xlat13.x;
            let x_4029 : f32 = u_xlat88;
            let x_4031 : f32 = u_xlat87;
            u_xlat87 = ((x_4028 * x_4029) + x_4031);
            let x_4034 : vec4<f32> = u_xlat17;
            let x_4035 : vec2<f32> = vec2<f32>(x_4034.z, x_4034.w);
            let x_4037 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4035.x, x_4035.y, x_4037);
            let x_4044 : vec3<f32> = txVec56;
            let x_4046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4044.xy, x_4044.z);
            u_xlat88 = x_4046;
            let x_4048 : f32 = u_xlat13.y;
            let x_4049 : f32 = u_xlat88;
            let x_4051 : f32 = u_xlat87;
            u_xlat87 = ((x_4048 * x_4049) + x_4051);
            let x_4054 : vec2<f32> = u_xlat67;
            let x_4056 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4054.x, x_4054.y, x_4056);
            let x_4063 : vec3<f32> = txVec57;
            let x_4065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4063.xy, x_4063.z);
            u_xlat88 = x_4065;
            let x_4067 : f32 = u_xlat13.z;
            let x_4068 : f32 = u_xlat88;
            let x_4070 : f32 = u_xlat87;
            u_xlat87 = ((x_4067 * x_4068) + x_4070);
            let x_4073 : vec4<f32> = u_xlat12;
            let x_4074 : vec2<f32> = vec2<f32>(x_4073.x, x_4073.y);
            let x_4076 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4074.x, x_4074.y, x_4076);
            let x_4083 : vec3<f32> = txVec58;
            let x_4085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4083.xy, x_4083.z);
            u_xlat88 = x_4085;
            let x_4087 : f32 = u_xlat13.w;
            let x_4088 : f32 = u_xlat88;
            let x_4090 : f32 = u_xlat87;
            u_xlat86 = ((x_4087 * x_4088) + x_4090);
          }
        }
      } else {
        let x_4094 : vec4<f32> = u_xlat11;
        let x_4095 : vec2<f32> = vec2<f32>(x_4094.x, x_4094.y);
        let x_4097 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4095.x, x_4095.y, x_4097);
        let x_4104 : vec3<f32> = txVec59;
        let x_4106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4104.xy, x_4104.z);
        u_xlat86 = x_4106;
      }
      let x_4107 : i32 = u_xlati84;
      let x_4109 : f32 = x_575.x_AdditionalShadowParams[x_4107].x;
      u_xlat87 = (1.0f + -(x_4109));
      let x_4112 : f32 = u_xlat86;
      let x_4113 : i32 = u_xlati84;
      let x_4115 : f32 = x_575.x_AdditionalShadowParams[x_4113].x;
      let x_4117 : f32 = u_xlat87;
      u_xlat86 = ((x_4112 * x_4115) + x_4117);
      let x_4120 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4120);
      let x_4124 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4124 >= 1.0f);
      let x_4126 : bool = u_xlatb87;
      let x_4127 : bool = u_xlatb88;
      u_xlatb87 = (x_4126 | x_4127);
      let x_4129 : bool = u_xlatb87;
      let x_4130 : f32 = u_xlat86;
      u_xlat86 = select(x_4130, 1.0f, x_4129);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4133 : f32 = u_xlat86;
    u_xlat87 = (-(x_4133) + 1.0f);
    let x_4136 : f32 = u_xlat29;
    let x_4137 : f32 = u_xlat87;
    let x_4139 : f32 = u_xlat86;
    u_xlat86 = ((x_4136 * x_4137) + x_4139);
    let x_4142 : i32 = u_xlati84;
    u_xlati87 = (1i << bitcast<u32>((x_4142 & 31i)));
    let x_4145 : i32 = u_xlati87;
    let x_4148 : f32 = x_2228.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4145) & bitcast<u32>(x_4148)));
    let x_4152 : i32 = u_xlati87;
    if ((x_4152 != 0i)) {
      let x_4156 : i32 = u_xlati84;
      let x_4158 : f32 = x_2228.x_AdditionalLightsLightTypes[x_4156].el;
      u_xlati87 = i32(x_4158);
      let x_4161 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4161 != 0i));
      let x_4165 : i32 = u_xlati84;
      u_xlati11 = (x_4165 << bitcast<u32>(2i));
      let x_4167 : i32 = u_xlati88;
      if ((x_4167 != 0i)) {
        let x_4172 : vec3<f32> = vs_TEXCOORD7;
        let x_4174 : i32 = u_xlati11;
        let x_4177 : i32 = u_xlati11;
        let x_4181 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4174 + 1i) / 4i)][((x_4177 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4172.y, x_4172.y, x_4172.y) * vec3<f32>(x_4181.x, x_4181.y, x_4181.w));
        let x_4184 : i32 = u_xlati11;
        let x_4186 : i32 = u_xlati11;
        let x_4189 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[(x_4184 / 4i)][(x_4186 % 4i)];
        let x_4191 : vec3<f32> = vs_TEXCOORD7;
        let x_4194 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4189.x, x_4189.y, x_4189.w) * vec3<f32>(x_4191.x, x_4191.x, x_4191.x)) + x_4194);
        let x_4196 : i32 = u_xlati11;
        let x_4199 : i32 = u_xlati11;
        let x_4203 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4196 + 2i) / 4i)][((x_4199 + 2i) % 4i)];
        let x_4205 : vec3<f32> = vs_TEXCOORD7;
        let x_4208 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4203.x, x_4203.y, x_4203.w) * vec3<f32>(x_4205.z, x_4205.z, x_4205.z)) + x_4208);
        let x_4210 : vec3<f32> = u_xlat37;
        let x_4211 : i32 = u_xlati11;
        let x_4214 : i32 = u_xlati11;
        let x_4218 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4211 + 3i) / 4i)][((x_4214 + 3i) % 4i)];
        u_xlat37 = (x_4210 + vec3<f32>(x_4218.x, x_4218.y, x_4218.w));
        let x_4221 : vec3<f32> = u_xlat37;
        let x_4223 : vec3<f32> = u_xlat37;
        let x_4225 : vec2<f32> = (vec2<f32>(x_4221.x, x_4221.y) / vec2<f32>(x_4223.z, x_4223.z));
        let x_4226 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4225.x, x_4225.y, x_4226.z);
        let x_4228 : vec3<f32> = u_xlat37;
        let x_4231 : vec2<f32> = ((vec2<f32>(x_4228.x, x_4228.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4232 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4231.x, x_4231.y, x_4232.z);
        let x_4234 : vec3<f32> = u_xlat37;
        let x_4238 : vec2<f32> = clamp(vec2<f32>(x_4234.x, x_4234.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4239 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4238.x, x_4238.y, x_4239.z);
        let x_4241 : i32 = u_xlati84;
        let x_4243 : vec4<f32> = x_2228.x_AdditionalLightsCookieAtlasUVRects[x_4241];
        let x_4245 : vec3<f32> = u_xlat37;
        let x_4248 : i32 = u_xlati84;
        let x_4250 : vec4<f32> = x_2228.x_AdditionalLightsCookieAtlasUVRects[x_4248];
        let x_4252 : vec2<f32> = ((vec2<f32>(x_4243.x, x_4243.y) * vec2<f32>(x_4245.x, x_4245.y)) + vec2<f32>(x_4250.z, x_4250.w));
        let x_4253 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4252.x, x_4252.y, x_4253.z);
      } else {
        let x_4256 : i32 = u_xlati87;
        u_xlatb87 = (x_4256 == 1i);
        let x_4258 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4258);
        let x_4260 : i32 = u_xlati87;
        if ((x_4260 != 0i)) {
          let x_4264 : vec3<f32> = vs_TEXCOORD7;
          let x_4266 : i32 = u_xlati11;
          let x_4269 : i32 = u_xlati11;
          let x_4273 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4266 + 1i) / 4i)][((x_4269 + 1i) % 4i)];
          let x_4275 : vec2<f32> = (vec2<f32>(x_4264.y, x_4264.y) * vec2<f32>(x_4273.x, x_4273.y));
          let x_4276 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4275.x, x_4275.y, x_4276.z, x_4276.w);
          let x_4278 : i32 = u_xlati11;
          let x_4280 : i32 = u_xlati11;
          let x_4283 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[(x_4278 / 4i)][(x_4280 % 4i)];
          let x_4285 : vec3<f32> = vs_TEXCOORD7;
          let x_4288 : vec4<f32> = u_xlat12;
          let x_4290 : vec2<f32> = ((vec2<f32>(x_4283.x, x_4283.y) * vec2<f32>(x_4285.x, x_4285.x)) + vec2<f32>(x_4288.x, x_4288.y));
          let x_4291 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4290.x, x_4290.y, x_4291.z, x_4291.w);
          let x_4293 : i32 = u_xlati11;
          let x_4296 : i32 = u_xlati11;
          let x_4300 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4293 + 2i) / 4i)][((x_4296 + 2i) % 4i)];
          let x_4302 : vec3<f32> = vs_TEXCOORD7;
          let x_4305 : vec4<f32> = u_xlat12;
          let x_4307 : vec2<f32> = ((vec2<f32>(x_4300.x, x_4300.y) * vec2<f32>(x_4302.z, x_4302.z)) + vec2<f32>(x_4305.x, x_4305.y));
          let x_4308 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4307.x, x_4307.y, x_4308.z, x_4308.w);
          let x_4310 : vec4<f32> = u_xlat12;
          let x_4312 : i32 = u_xlati11;
          let x_4315 : i32 = u_xlati11;
          let x_4319 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4312 + 3i) / 4i)][((x_4315 + 3i) % 4i)];
          let x_4321 : vec2<f32> = (vec2<f32>(x_4310.x, x_4310.y) + vec2<f32>(x_4319.x, x_4319.y));
          let x_4322 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4321.x, x_4321.y, x_4322.z, x_4322.w);
          let x_4324 : vec4<f32> = u_xlat12;
          let x_4327 : vec2<f32> = ((vec2<f32>(x_4324.x, x_4324.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4328 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4327.x, x_4327.y, x_4328.z, x_4328.w);
          let x_4330 : vec4<f32> = u_xlat12;
          let x_4332 : vec2<f32> = fract(vec2<f32>(x_4330.x, x_4330.y));
          let x_4333 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4332.x, x_4332.y, x_4333.z, x_4333.w);
          let x_4335 : i32 = u_xlati84;
          let x_4337 : vec4<f32> = x_2228.x_AdditionalLightsCookieAtlasUVRects[x_4335];
          let x_4339 : vec4<f32> = u_xlat12;
          let x_4342 : i32 = u_xlati84;
          let x_4344 : vec4<f32> = x_2228.x_AdditionalLightsCookieAtlasUVRects[x_4342];
          let x_4346 : vec2<f32> = ((vec2<f32>(x_4337.x, x_4337.y) * vec2<f32>(x_4339.x, x_4339.y)) + vec2<f32>(x_4344.z, x_4344.w));
          let x_4347 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4346.x, x_4346.y, x_4347.z);
        } else {
          let x_4350 : vec3<f32> = vs_TEXCOORD7;
          let x_4352 : i32 = u_xlati11;
          let x_4355 : i32 = u_xlati11;
          let x_4359 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4352 + 1i) / 4i)][((x_4355 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4350.y, x_4350.y, x_4350.y, x_4350.y) * x_4359);
          let x_4361 : i32 = u_xlati11;
          let x_4363 : i32 = u_xlati11;
          let x_4366 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[(x_4361 / 4i)][(x_4363 % 4i)];
          let x_4367 : vec3<f32> = vs_TEXCOORD7;
          let x_4370 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4366 * vec4<f32>(x_4367.x, x_4367.x, x_4367.x, x_4367.x)) + x_4370);
          let x_4372 : i32 = u_xlati11;
          let x_4375 : i32 = u_xlati11;
          let x_4379 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4372 + 2i) / 4i)][((x_4375 + 2i) % 4i)];
          let x_4380 : vec3<f32> = vs_TEXCOORD7;
          let x_4383 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4379 * vec4<f32>(x_4380.z, x_4380.z, x_4380.z, x_4380.z)) + x_4383);
          let x_4385 : vec4<f32> = u_xlat12;
          let x_4386 : i32 = u_xlati11;
          let x_4389 : i32 = u_xlati11;
          let x_4393 : vec4<f32> = x_2228.x_AdditionalLightsWorldToLights[((x_4386 + 3i) / 4i)][((x_4389 + 3i) % 4i)];
          u_xlat12 = (x_4385 + x_4393);
          let x_4395 : vec4<f32> = u_xlat12;
          let x_4397 : vec4<f32> = u_xlat12;
          let x_4399 : vec3<f32> = (vec3<f32>(x_4395.x, x_4395.y, x_4395.z) / vec3<f32>(x_4397.w, x_4397.w, x_4397.w));
          let x_4400 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4399.x, x_4399.y, x_4399.z, x_4400.w);
          let x_4402 : vec4<f32> = u_xlat12;
          let x_4404 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4402.x, x_4402.y, x_4402.z), vec3<f32>(x_4404.x, x_4404.y, x_4404.z));
          let x_4407 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4407);
          let x_4409 : f32 = u_xlat87;
          let x_4411 : vec4<f32> = u_xlat12;
          let x_4413 : vec3<f32> = (vec3<f32>(x_4409, x_4409, x_4409) * vec3<f32>(x_4411.x, x_4411.y, x_4411.z));
          let x_4414 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4413.x, x_4413.y, x_4413.z, x_4414.w);
          let x_4416 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4416.x, x_4416.y, x_4416.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4421 : f32 = u_xlat87;
          u_xlat87 = max(x_4421, 0.00000099999999747524f);
          let x_4424 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4424);
          let x_4426 : f32 = u_xlat87;
          let x_4428 : vec4<f32> = u_xlat12;
          let x_4430 : vec3<f32> = (vec3<f32>(x_4426, x_4426, x_4426) * vec3<f32>(x_4428.z, x_4428.x, x_4428.y));
          let x_4431 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4430.x, x_4430.y, x_4430.z, x_4431.w);
          let x_4434 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4434);
          let x_4438 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4438, 0.0f, 1.0f);
          let x_4441 : vec4<f32> = u_xlat13;
          let x_4443 : vec4<bool> = (vec4<f32>(x_4441.y, x_4441.y, x_4441.y, x_4441.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4444 : vec2<bool> = vec2<bool>(x_4443.x, x_4443.w);
          let x_4445 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4444.x, x_4445.y, x_4445.z, x_4444.y);
          let x_4448 : bool = u_xlatb11.x;
          if (x_4448) {
            let x_4453 : f32 = u_xlat13.x;
            x_4449 = x_4453;
          } else {
            let x_4456 : f32 = u_xlat13.x;
            x_4449 = -(x_4456);
          }
          let x_4458 : f32 = x_4449;
          u_xlat11.x = x_4458;
          let x_4461 : bool = u_xlatb11.w;
          if (x_4461) {
            let x_4466 : f32 = u_xlat13.x;
            x_4462 = x_4466;
          } else {
            let x_4469 : f32 = u_xlat13.x;
            x_4462 = -(x_4469);
          }
          let x_4471 : f32 = x_4462;
          u_xlat11.w = x_4471;
          let x_4473 : vec4<f32> = u_xlat12;
          let x_4475 : f32 = u_xlat87;
          let x_4478 : vec4<f32> = u_xlat11;
          let x_4480 : vec2<f32> = ((vec2<f32>(x_4473.x, x_4473.y) * vec2<f32>(x_4475, x_4475)) + vec2<f32>(x_4478.x, x_4478.w));
          let x_4481 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4480.x, x_4481.y, x_4481.z, x_4480.y);
          let x_4483 : vec4<f32> = u_xlat11;
          let x_4486 : vec2<f32> = ((vec2<f32>(x_4483.x, x_4483.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4487 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4486.x, x_4487.y, x_4487.z, x_4486.y);
          let x_4489 : vec4<f32> = u_xlat11;
          let x_4493 : vec2<f32> = clamp(vec2<f32>(x_4489.x, x_4489.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4494 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4493.x, x_4494.y, x_4494.z, x_4493.y);
          let x_4496 : i32 = u_xlati84;
          let x_4498 : vec4<f32> = x_2228.x_AdditionalLightsCookieAtlasUVRects[x_4496];
          let x_4500 : vec4<f32> = u_xlat11;
          let x_4503 : i32 = u_xlati84;
          let x_4505 : vec4<f32> = x_2228.x_AdditionalLightsCookieAtlasUVRects[x_4503];
          let x_4507 : vec2<f32> = ((vec2<f32>(x_4498.x, x_4498.y) * vec2<f32>(x_4500.x, x_4500.w)) + vec2<f32>(x_4505.z, x_4505.w));
          let x_4508 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4507.x, x_4507.y, x_4508.z);
        }
      }
      let x_4515 : vec3<f32> = u_xlat37;
      let x_4517 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4515.x, x_4515.y), 0.0f);
      u_xlat11 = x_4517;
      let x_4519 : bool = u_xlatb7.y;
      if (x_4519) {
        let x_4524 : f32 = u_xlat11.w;
        x_4520 = x_4524;
      } else {
        let x_4527 : f32 = u_xlat11.x;
        x_4520 = x_4527;
      }
      let x_4528 : f32 = x_4520;
      u_xlat87 = x_4528;
      let x_4530 : bool = u_xlatb7.x;
      if (x_4530) {
        let x_4534 : vec4<f32> = u_xlat11;
        x_4531 = vec3<f32>(x_4534.x, x_4534.y, x_4534.z);
      } else {
        let x_4537 : f32 = u_xlat87;
        x_4531 = vec3<f32>(x_4537, x_4537, x_4537);
      }
      let x_4539 : vec3<f32> = x_4531;
      let x_4540 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4539.x, x_4539.y, x_4539.z, x_4540.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4546 : vec4<f32> = u_xlat11;
    let x_4548 : i32 = u_xlati84;
    let x_4550 : vec4<f32> = x_2707.x_AdditionalLightsColor[x_4548];
    let x_4552 : vec3<f32> = (vec3<f32>(x_4546.x, x_4546.y, x_4546.z) * vec3<f32>(x_4550.x, x_4550.y, x_4550.z));
    let x_4553 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4552.x, x_4552.y, x_4552.z, x_4553.w);
    let x_4556 : f32 = u_xlat59.x;
    let x_4557 : f32 = u_xlat86;
    u_xlat84 = (x_4556 * x_4557);
    let x_4559 : vec3<f32> = u_xlat2;
    let x_4560 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(x_4559, vec3<f32>(x_4560.x, x_4560.y, x_4560.z));
    let x_4565 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4565, 0.0f, 1.0f);
    let x_4568 : f32 = u_xlat84;
    let x_4570 : f32 = u_xlat59.x;
    u_xlat84 = (x_4568 * x_4570);
    let x_4572 : f32 = u_xlat84;
    let x_4574 : vec4<f32> = u_xlat11;
    let x_4576 : vec3<f32> = (vec3<f32>(x_4572, x_4572, x_4572) * vec3<f32>(x_4574.x, x_4574.y, x_4574.z));
    let x_4577 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4576.x, x_4576.y, x_4576.z, x_4577.w);
    let x_4579 : vec4<f32> = u_xlat9;
    let x_4581 : f32 = u_xlat85;
    let x_4584 : vec4<f32> = u_xlat1;
    let x_4586 : vec3<f32> = ((vec3<f32>(x_4579.x, x_4579.y, x_4579.z) * vec3<f32>(x_4581, x_4581, x_4581)) + vec3<f32>(x_4584.x, x_4584.y, x_4584.z));
    let x_4587 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4586.x, x_4586.y, x_4586.z, x_4587.w);
    let x_4589 : vec4<f32> = u_xlat9;
    let x_4591 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4589.x, x_4589.y, x_4589.z), vec3<f32>(x_4591.x, x_4591.y, x_4591.z));
    let x_4594 : f32 = u_xlat84;
    u_xlat84 = max(x_4594, 1.17549435e-38f);
    let x_4596 : f32 = u_xlat84;
    u_xlat84 = inverseSqrt(x_4596);
    let x_4598 : f32 = u_xlat84;
    let x_4600 : vec4<f32> = u_xlat9;
    let x_4602 : vec3<f32> = (vec3<f32>(x_4598, x_4598, x_4598) * vec3<f32>(x_4600.x, x_4600.y, x_4600.z));
    let x_4603 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4602.x, x_4602.y, x_4602.z, x_4603.w);
    let x_4605 : vec3<f32> = u_xlat2;
    let x_4606 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4605, vec3<f32>(x_4606.x, x_4606.y, x_4606.z));
    let x_4609 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4609, 0.0f, 1.0f);
    let x_4611 : vec4<f32> = u_xlat10;
    let x_4613 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_4611.x, x_4611.y, x_4611.z), vec3<f32>(x_4613.x, x_4613.y, x_4613.z));
    let x_4618 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_4618, 0.0f, 1.0f);
    let x_4621 : f32 = u_xlat84;
    let x_4622 : f32 = u_xlat84;
    u_xlat84 = (x_4621 * x_4622);
    let x_4624 : f32 = u_xlat84;
    let x_4626 : f32 = u_xlat0.x;
    u_xlat84 = ((x_4624 * x_4626) + 1.00001001358032226562f);
    let x_4630 : f32 = u_xlat59.x;
    let x_4632 : f32 = u_xlat59.x;
    u_xlat59.x = (x_4630 * x_4632);
    let x_4635 : f32 = u_xlat84;
    let x_4636 : f32 = u_xlat84;
    u_xlat84 = (x_4635 * x_4636);
    let x_4639 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_4639, 0.10000000149011611938f);
    let x_4642 : f32 = u_xlat84;
    let x_4644 : f32 = u_xlat59.x;
    u_xlat84 = (x_4642 * x_4644);
    let x_4646 : f32 = u_xlat82;
    let x_4647 : f32 = u_xlat84;
    u_xlat84 = (x_4646 * x_4647);
    let x_4649 : f32 = u_xlat80;
    let x_4650 : f32 = u_xlat84;
    u_xlat84 = (x_4649 / x_4650);
    let x_4652 : vec4<f32> = u_xlat5;
    let x_4654 : f32 = u_xlat84;
    let x_4657 : vec4<f32> = u_xlat6;
    let x_4659 : vec3<f32> = ((vec3<f32>(x_4652.x, x_4652.y, x_4652.z) * vec3<f32>(x_4654, x_4654, x_4654)) + vec3<f32>(x_4657.x, x_4657.y, x_4657.z));
    let x_4660 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4659.x, x_4659.y, x_4659.z, x_4660.w);
    let x_4662 : vec4<f32> = u_xlat9;
    let x_4664 : vec4<f32> = u_xlat11;
    let x_4667 : vec4<f32> = u_xlat8;
    let x_4669 : vec3<f32> = ((vec3<f32>(x_4662.x, x_4662.y, x_4662.z) * vec3<f32>(x_4664.x, x_4664.y, x_4664.z)) + vec3<f32>(x_4667.x, x_4667.y, x_4667.z));
    let x_4670 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4669.x, x_4669.y, x_4669.z, x_4670.w);

    continuing {
      let x_4672 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4672 + bitcast<u32>(1i));
    }
  }
  let x_4674 : vec4<f32> = u_xlat4;
  let x_4676 : f32 = u_xlat26;
  let x_4679 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_4674.x, x_4674.y, x_4674.z) * vec3<f32>(x_4676, x_4676, x_4676)) + vec3<f32>(x_4679.x, x_4679.z, x_4679.w));
  let x_4682 : vec4<f32> = u_xlat8;
  let x_4684 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4682.x, x_4682.y, x_4682.z) + x_4684);
  let x_4686 : f32 = u_xlat79;
  let x_4687 : f32 = u_xlat79;
  u_xlat1.x = (x_4686 * -(x_4687));
  let x_4692 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4692);
  let x_4695 : vec3<f32> = u_xlat0;
  let x_4696 : f32 = u_xlat78;
  let x_4700 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_4695 * vec3<f32>(x_4696, x_4696, x_4696)) + -(vec3<f32>(x_4700.x, x_4700.y, x_4700.z)));
  let x_4706 : vec4<f32> = u_xlat1;
  let x_4708 : vec3<f32> = u_xlat0;
  let x_4711 : vec4<f32> = x_111.unity_FogColor;
  let x_4713 : vec3<f32> = ((vec3<f32>(x_4706.x, x_4706.x, x_4706.x) * x_4708) + vec3<f32>(x_4711.x, x_4711.y, x_4711.z));
  let x_4714 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4713.x, x_4713.y, x_4713.z, x_4714.w);
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


