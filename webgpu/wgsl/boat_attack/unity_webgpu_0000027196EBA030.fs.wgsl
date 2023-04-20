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

@group(1) @binding(0) var<uniform> x_110 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_825 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_961 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(5) var<uniform> x_2307 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_2784 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

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
  var x_2390 : f32;
  var x_2402 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2920 : f32;
  var x_2930 : f32;
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
  var x_4503 : f32;
  var x_4516 : f32;
  var x_4564 : f32;
  var x_4575 : vec3<f32>;
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
  let x_116 : f32 = x_110.x_GlobalMipBias.x;
  let x_117 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_116);
  u_xlat4 = x_117;
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_120, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_131 : vec4<f32> = vs_TEXCOORD1;
  let x_134 : f32 = x_110.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_131.x, x_131.y), x_134);
  u_xlat5 = x_135;
  let x_141 : vec4<f32> = vs_TEXCOORD1;
  let x_144 : f32 = x_110.x_GlobalMipBias.x;
  let x_145 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_141.z, x_141.w), x_144);
  u_xlat6 = x_145;
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_155 : f32 = x_110.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_152.x, x_152.y), x_155);
  u_xlat7 = x_156;
  let x_162 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : f32 = x_110.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_162.z, x_162.w), x_165);
  u_xlat8 = x_166;
  let x_170 : f32 = u_xlat5.w;
  u_xlat9.x = x_170;
  let x_173 : f32 = u_xlat6.w;
  u_xlat9.y = x_173;
  let x_177 : f32 = u_xlat7.w;
  u_xlat9.z = x_177;
  let x_181 : f32 = u_xlat8.w;
  u_xlat9.w = x_181;
  let x_184 : vec4<f32> = u_xlat9;
  let x_187 : f32 = x_13.x_Smoothness0;
  let x_190 : f32 = x_13.x_Smoothness1;
  let x_193 : f32 = x_13.x_Smoothness2;
  let x_196 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_184 * vec4<f32>(x_187, x_190, x_193, x_196));
  let x_205 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_205);
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_208) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat9;
  let x_212 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_211 + -(x_212));
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_215 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_219 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_224 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_228);
  let x_231 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_231 + -(x_232));
  let x_237 : f32 = u_xlat12.x;
  let x_240 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_237 * x_240);
  let x_244 : f32 = u_xlat12.y;
  let x_247 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_244 * x_247);
  let x_251 : f32 = u_xlat12.z;
  let x_254 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.w;
  let x_261 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_258 * x_261);
  let x_264 : vec4<f32> = u_xlat11;
  let x_265 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_264 + x_265);
  let x_267 : bool = u_xlatb79;
  let x_268 : vec4<f32> = u_xlat11;
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_269, x_268, vec4<bool>(x_267, x_267, x_267, x_267));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_274, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_276 : f32 = u_xlat79;
  u_xlat79 = (x_276 + 0.00006103515625f);
  let x_279 : vec4<f32> = u_xlat4;
  let x_280 : f32 = u_xlat79;
  u_xlat4 = (x_279 / vec4<f32>(x_280, x_280, x_280, x_280));
  let x_283 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.x, x_283.x) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_296 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat12;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec4<f32> = u_xlat11;
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.z, x_316.z, x_316.z) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat7;
  let x_326 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat5;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_339 : vec3<f32> = (vec3<f32>(x_334.w, x_334.w, x_334.w) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat8;
  let x_344 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat5;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_357 : vec4<f32> = vs_TEXCOORD1;
  let x_360 : f32 = x_110.x_GlobalMipBias.x;
  let x_361 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_357.x, x_357.y), x_360);
  let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.w);
  let x_363 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = u_xlat6.x;
  let x_368 : f32 = u_xlat6.z;
  u_xlat6.x = (x_366 * x_368);
  let x_371 : vec4<f32> = u_xlat6;
  let x_376 : vec2<f32> = ((vec2<f32>(x_371.x, x_371.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_379.x, x_379.y), vec2<f32>(x_381.x, x_381.y));
  let x_384 : f32 = u_xlat79;
  u_xlat79 = min(x_384, 1.0f);
  let x_386 : f32 = u_xlat79;
  u_xlat79 = (-(x_386) + 1.0f);
  let x_389 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_389);
  let x_391 : f32 = u_xlat79;
  u_xlat7.z = max(x_391, 0.0000000000000001f);
  let x_395 : vec4<f32> = u_xlat6;
  let x_398 : f32 = x_13.x_NormalScale0;
  let x_400 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_398, x_398));
  let x_401 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_407 : vec4<f32> = vs_TEXCOORD1;
  let x_410 : f32 = x_110.x_GlobalMipBias.x;
  let x_411 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_407.z, x_407.w), x_410);
  let x_412 : vec3<f32> = vec3<f32>(x_411.x, x_411.y, x_411.w);
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat6.x;
  let x_418 : f32 = u_xlat6.z;
  u_xlat6.x = (x_416 * x_418);
  let x_421 : vec4<f32> = u_xlat6;
  let x_424 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_427.x, x_427.y), vec2<f32>(x_429.x, x_429.y));
  let x_432 : f32 = u_xlat79;
  u_xlat79 = min(x_432, 1.0f);
  let x_434 : f32 = u_xlat79;
  u_xlat79 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_437);
  let x_439 : f32 = u_xlat79;
  u_xlat8.z = max(x_439, 0.0000000000000001f);
  let x_442 : vec4<f32> = u_xlat6;
  let x_446 : f32 = x_13.x_NormalScale1;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_449 : vec2<f32> = vec2<f32>(x_446, x_448);
  let x_453 : vec2<f32> = (vec2<f32>(x_442.x, x_442.y) * vec2<f32>(x_449.x, x_449.y));
  let x_454 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat4;
  let x_458 : vec4<f32> = u_xlat8;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.y, x_456.y, x_456.y) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat4;
  let x_465 : vec4<f32> = u_xlat7;
  let x_468 : vec4<f32> = u_xlat6;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.x, x_463.x) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_477 : vec4<f32> = vs_TEXCOORD2;
  let x_480 : f32 = x_110.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_477.x, x_477.y), x_480);
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : f32 = u_xlat7.x;
  let x_488 : f32 = u_xlat7.z;
  u_xlat7.x = (x_486 * x_488);
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : vec2<f32> = ((vec2<f32>(x_491.x, x_491.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  let x_499 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_497.x, x_497.y), vec2<f32>(x_499.x, x_499.y));
  let x_502 : f32 = u_xlat79;
  u_xlat79 = min(x_502, 1.0f);
  let x_504 : f32 = u_xlat79;
  u_xlat79 = (-(x_504) + 1.0f);
  let x_507 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_507);
  let x_509 : f32 = u_xlat79;
  u_xlat8.z = max(x_509, 0.0000000000000001f);
  let x_512 : vec4<f32> = u_xlat7;
  let x_516 : f32 = x_13.x_NormalScale2;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_519 : vec2<f32> = vec2<f32>(x_516, x_518);
  let x_523 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(x_519.x, x_519.y));
  let x_524 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat8;
  let x_531 : vec4<f32> = u_xlat6;
  let x_533 : vec3<f32> = ((vec3<f32>(x_526.z, x_526.z, x_526.z) * vec3<f32>(x_528.x, x_528.y, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_540 : vec4<f32> = vs_TEXCOORD2;
  let x_543 : f32 = x_110.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_540.z, x_540.w), x_543);
  let x_545 : vec3<f32> = vec3<f32>(x_544.x, x_544.y, x_544.w);
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = u_xlat7.x;
  let x_551 : f32 = u_xlat7.z;
  u_xlat7.x = (x_549 * x_551);
  let x_554 : vec4<f32> = u_xlat7;
  let x_557 : vec2<f32> = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_560.x, x_560.y), vec2<f32>(x_562.x, x_562.y));
  let x_565 : f32 = u_xlat79;
  u_xlat79 = min(x_565, 1.0f);
  let x_567 : f32 = u_xlat79;
  u_xlat79 = (-(x_567) + 1.0f);
  let x_570 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_570);
  let x_572 : f32 = u_xlat79;
  u_xlat8.z = max(x_572, 0.0000000000000001f);
  let x_575 : vec4<f32> = u_xlat7;
  let x_579 : f32 = x_13.x_NormalScale3;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_582 : vec2<f32> = vec2<f32>(x_579, x_581);
  let x_586 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_582.x, x_582.y));
  let x_587 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec4<f32> = u_xlat8;
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * vec3<f32>(x_591.x, x_591.y, x_591.z)) + vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : f32 = u_xlat6.z;
  u_xlat6.w = (x_600 + 0.00000999999974737875f);
  let x_604 : vec4<f32> = u_xlat6;
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_604.x, x_604.y, x_604.w), vec3<f32>(x_606.x, x_606.y, x_606.w));
  let x_609 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_609);
  let x_611 : f32 = u_xlat79;
  let x_613 : vec4<f32> = u_xlat6;
  let x_615 : vec3<f32> = (vec3<f32>(x_611, x_611, x_611) * vec3<f32>(x_613.x, x_613.y, x_613.w));
  let x_616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_619 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_619;
  let x_622 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_640;
  let x_642 : vec4<f32> = u_xlat7;
  let x_643 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_642 + x_643);
  let x_646 : f32 = u_xlat0.z;
  u_xlat8.x = x_646;
  let x_649 : f32 = u_xlat1.z;
  u_xlat8.y = x_649;
  let x_652 : f32 = u_xlat2.z;
  u_xlat8.z = x_652;
  let x_655 : f32 = u_xlat3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat9;
  let x_660 : f32 = x_13.x_Smoothness0;
  let x_662 : f32 = x_13.x_Smoothness1;
  let x_664 : f32 = x_13.x_Smoothness2;
  let x_666 : f32 = x_13.x_Smoothness3;
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_657) * vec4<f32>(x_660, x_662, x_664, x_666)) + x_669);
  let x_673 : f32 = x_13.x_LayerHasMask0;
  let x_676 : f32 = x_13.x_LayerHasMask1;
  let x_679 : f32 = x_13.x_LayerHasMask2;
  let x_682 : f32 = x_13.x_LayerHasMask3;
  let x_684 : vec4<f32> = u_xlat8;
  let x_686 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_673, x_676, x_679, x_682) * x_684) + x_686);
  let x_689 : vec4<f32> = u_xlat4;
  let x_690 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_689, x_690);
  let x_693 : f32 = u_xlat0.x;
  u_xlat8.x = x_693;
  let x_696 : f32 = u_xlat1.x;
  u_xlat8.y = x_696;
  let x_699 : f32 = u_xlat2.x;
  u_xlat8.z = x_699;
  let x_702 : f32 = u_xlat3.x;
  u_xlat8.w = x_702;
  let x_704 : vec4<f32> = u_xlat8;
  let x_707 : f32 = x_13.x_Metallic0;
  let x_710 : f32 = x_13.x_Metallic1;
  let x_713 : f32 = x_13.x_Metallic2;
  let x_716 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_704 + -(vec4<f32>(x_707, x_710, x_713, x_716)));
  let x_721 : f32 = x_13.x_LayerHasMask0;
  let x_723 : f32 = x_13.x_LayerHasMask1;
  let x_725 : f32 = x_13.x_LayerHasMask2;
  let x_727 : f32 = x_13.x_LayerHasMask3;
  let x_729 : vec4<f32> = u_xlat8;
  let x_732 : f32 = x_13.x_Metallic0;
  let x_734 : f32 = x_13.x_Metallic1;
  let x_736 : f32 = x_13.x_Metallic2;
  let x_738 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_721, x_723, x_725, x_727) * x_729) + vec4<f32>(x_732, x_734, x_736, x_738));
  let x_741 : vec4<f32> = u_xlat4;
  let x_742 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_741, x_742);
  let x_746 : f32 = u_xlat0.y;
  u_xlat3.x = x_746;
  let x_749 : f32 = u_xlat1.y;
  u_xlat3.y = x_749;
  let x_752 : f32 = u_xlat2.y;
  u_xlat3.z = x_752;
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_754) + x_756);
  let x_759 : f32 = x_13.x_LayerHasMask0;
  let x_761 : f32 = x_13.x_LayerHasMask1;
  let x_763 : f32 = x_13.x_LayerHasMask2;
  let x_765 : f32 = x_13.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat1;
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + x_769);
  let x_772 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_772, x_773);
  let x_775 : vec4<f32> = u_xlat6;
  let x_778 : vec4<f32> = vs_TEXCOORD5;
  let x_780 : vec3<f32> = (vec3<f32>(x_775.y, x_775.y, x_775.y) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat6;
  let x_786 : vec4<f32> = vs_TEXCOORD4;
  let x_790 : vec4<f32> = u_xlat1;
  let x_792 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.x, x_783.x) * -(vec3<f32>(x_786.x, x_786.y, x_786.z))) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD3;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec3<f32> = ((vec3<f32>(x_795.z, x_795.z, x_795.z) * vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat1;
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_811);
  let x_813 : f32 = u_xlat79;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = (vec3<f32>(x_813, x_813, x_813) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  u_xlat1.w = 1.0f;
  let x_827 : vec4<f32> = x_825.unity_SHAr;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_827, x_828);
  let x_832 : vec4<f32> = x_825.unity_SHAg;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_832, x_833);
  let x_837 : vec4<f32> = x_825.unity_SHAb;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_837, x_838);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_841.y, x_841.z, x_841.z, x_841.x) * vec4<f32>(x_843.x, x_843.y, x_843.z, x_843.z));
  let x_847 : vec4<f32> = x_825.unity_SHBr;
  let x_848 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_847, x_848);
  let x_852 : vec4<f32> = x_825.unity_SHBg;
  let x_853 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_852, x_853);
  let x_857 : vec4<f32> = x_825.unity_SHBb;
  let x_858 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_857, x_858);
  let x_862 : f32 = u_xlat1.y;
  let x_864 : f32 = u_xlat1.y;
  u_xlat79 = (x_862 * x_864);
  let x_867 : f32 = u_xlat1.x;
  let x_869 : f32 = u_xlat1.x;
  let x_871 : f32 = u_xlat79;
  u_xlat79 = ((x_867 * x_869) + -(x_871));
  let x_876 : vec4<f32> = x_825.unity_SHC;
  let x_878 : f32 = u_xlat79;
  let x_881 : vec4<f32> = u_xlat4;
  let x_883 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_878, x_878, x_878)) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec3<f32> = u_xlat2;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_886 + vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_890, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_894 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_894) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_900 : f32 = u_xlat52;
  let x_901 : f32 = u_xlat79;
  u_xlat80 = (x_900 + -(x_901));
  let x_904 : f32 = u_xlat79;
  let x_906 : vec4<f32> = u_xlat5;
  let x_908 : vec3<f32> = (vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat5;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec3<f32> = u_xlat0;
  let x_920 : vec4<f32> = u_xlat4;
  let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.x, x_918.x) * vec3<f32>(x_920.x, x_920.y, x_920.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_926 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : f32 = u_xlat52;
  u_xlat0.x = (-(x_928) + 1.0f);
  let x_933 : f32 = u_xlat0.x;
  let x_935 : f32 = u_xlat0.x;
  u_xlat52 = (x_933 * x_935);
  let x_937 : f32 = u_xlat52;
  u_xlat52 = max(x_937, 0.0078125f);
  let x_940 : f32 = u_xlat52;
  let x_941 : f32 = u_xlat52;
  u_xlat79 = (x_940 * x_941);
  let x_943 : f32 = u_xlat80;
  u_xlat80 = (x_943 + 1.0f);
  let x_945 : f32 = u_xlat80;
  u_xlat80 = clamp(x_945, 0.0f, 1.0f);
  let x_948 : f32 = u_xlat52;
  u_xlat81 = ((x_948 * 4.0f) + 2.0f);
  let x_951 : f32 = u_xlat26;
  u_xlat26 = min(x_951, 1.0f);
  let x_963 : f32 = x_961.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_963);
  let x_965 : bool = u_xlatb82;
  if (x_965) {
    let x_969 : f32 = x_961.x_MainLightShadowParams.y;
    u_xlatb82 = (x_969 == 1.0f);
    let x_971 : bool = u_xlatb82;
    if (x_971) {
      let x_975 : vec4<f32> = vs_TEXCOORD8;
      let x_978 : vec4<f32> = x_961.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) + x_978);
      let x_982 : vec4<f32> = u_xlat5;
      let x_983 : vec2<f32> = vec2<f32>(x_982.x, x_982.y);
      let x_986 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_983.x, x_983.y, x_986);
      let x_998 : vec3<f32> = txVec0;
      let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
      u_xlat6.x = x_1000;
      let x_1003 : vec4<f32> = u_xlat5;
      let x_1004 : vec2<f32> = vec2<f32>(x_1003.z, x_1003.w);
      let x_1006 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
      let x_1013 : vec3<f32> = txVec1;
      let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
      u_xlat6.y = x_1015;
      let x_1017 : vec4<f32> = vs_TEXCOORD8;
      let x_1020 : vec4<f32> = x_961.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.y) + x_1020);
      let x_1023 : vec4<f32> = u_xlat5;
      let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
      let x_1026 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
      let x_1033 : vec3<f32> = txVec2;
      let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
      u_xlat6.z = x_1035;
      let x_1038 : vec4<f32> = u_xlat5;
      let x_1039 : vec2<f32> = vec2<f32>(x_1038.z, x_1038.w);
      let x_1041 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
      let x_1048 : vec3<f32> = txVec3;
      let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1048.xy, x_1048.z);
      u_xlat6.w = x_1050;
      let x_1053 : vec4<f32> = u_xlat6;
      u_xlat82 = dot(x_1053, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1060 : f32 = x_961.x_MainLightShadowParams.y;
      u_xlatb5 = (x_1060 == 2.0f);
      let x_1062 : bool = u_xlatb5;
      if (x_1062) {
        let x_1065 : vec4<f32> = vs_TEXCOORD8;
        let x_1068 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.z, x_1068.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1072 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat5;
        let x_1076 : vec2<f32> = floor(vec2<f32>(x_1074.x, x_1074.y));
        let x_1077 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1081 : vec4<f32> = vs_TEXCOORD8;
        let x_1084 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.z, x_1084.w)) + -(vec2<f32>(x_1087.x, x_1087.y)));
        let x_1091 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1091.x, x_1091.x, x_1091.y, x_1091.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1095.x, x_1095.x, x_1095.z, x_1095.z) * vec4<f32>(x_1097.x, x_1097.x, x_1097.z, x_1097.z));
        let x_1100 : vec4<f32> = u_xlat7;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1100.y, x_1100.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1105 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1104.x, x_1105.y, x_1104.y, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat7;
        let x_1110 : vec2<f32> = u_xlat57;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1110));
        let x_1113 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1116 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1116) + vec2<f32>(1.0f, 1.0f));
        let x_1120 : vec2<f32> = u_xlat57;
        let x_1122 : vec2<f32> = min(x_1120, vec2<f32>(0.0f, 0.0f));
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat8;
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1131 : vec2<f32> = u_xlat59;
        let x_1132 : vec2<f32> = ((-(vec2<f32>(x_1125.x, x_1125.y)) * vec2<f32>(x_1128.x, x_1128.y)) + x_1131);
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1135, vec2<f32>(0.0f, 0.0f));
        let x_1137 : vec2<f32> = u_xlat57;
        let x_1139 : vec2<f32> = u_xlat57;
        let x_1141 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_1137) * x_1139) + vec2<f32>(x_1141.y, x_1141.w));
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1146 : vec2<f32> = (vec2<f32>(x_1144.x, x_1144.y) + vec2<f32>(1.0f, 1.0f));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1149 + vec2<f32>(1.0f, 1.0f));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec2<f32> = u_xlat59;
        let x_1159 : vec2<f32> = (x_1158 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1164 : vec2<f32> = (vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec2<f32> = u_xlat57;
        let x_1168 : vec2<f32> = (x_1167 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1169 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_1171.y, x_1171.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1175 : f32 = u_xlat8.x;
        u_xlat9.z = x_1175;
        let x_1178 : f32 = u_xlat57.x;
        u_xlat9.w = x_1178;
        let x_1181 : f32 = u_xlat10.x;
        u_xlat7.z = x_1181;
        let x_1184 : f32 = u_xlat6.x;
        u_xlat7.w = x_1184;
        let x_1186 : vec4<f32> = u_xlat7;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_1186.z, x_1186.w, x_1186.x, x_1186.z) + vec4<f32>(x_1188.z, x_1188.w, x_1188.x, x_1188.z));
        let x_1192 : f32 = u_xlat9.y;
        u_xlat8.z = x_1192;
        let x_1195 : f32 = u_xlat57.y;
        u_xlat8.w = x_1195;
        let x_1198 : f32 = u_xlat7.y;
        u_xlat10.z = x_1198;
        let x_1201 : f32 = u_xlat6.z;
        u_xlat10.w = x_1201;
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1205 : vec4<f32> = u_xlat10;
        let x_1207 : vec3<f32> = (vec3<f32>(x_1203.z, x_1203.y, x_1203.w) + vec3<f32>(x_1205.z, x_1205.y, x_1205.w));
        let x_1208 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1214 : vec3<f32> = (vec3<f32>(x_1210.x, x_1210.z, x_1210.w) / vec3<f32>(x_1212.z, x_1212.w, x_1212.y));
        let x_1215 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat7;
        let x_1223 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat10;
        let x_1228 : vec4<f32> = u_xlat6;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1226.z, x_1226.y, x_1226.w) / vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat8;
        let x_1235 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1241 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1243 : vec3<f32> = (vec3<f32>(x_1238.y, x_1238.x, x_1238.z) * vec3<f32>(x_1241.x, x_1241.x, x_1241.x));
        let x_1244 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
        let x_1246 : vec4<f32> = u_xlat8;
        let x_1249 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1251 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) * vec3<f32>(x_1249.y, x_1249.y, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
        let x_1255 : f32 = u_xlat8.x;
        u_xlat7.w = x_1255;
        let x_1257 : vec4<f32> = u_xlat5;
        let x_1260 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y) * vec4<f32>(x_1260.x, x_1260.y, x_1260.x, x_1260.y)) + vec4<f32>(x_1263.y, x_1263.w, x_1263.x, x_1263.w));
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.z, x_1272.w));
        let x_1276 : f32 = u_xlat7.y;
        u_xlat8.w = x_1276;
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.y, x_1278.z);
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1280.x, x_1279.x, x_1280.z, x_1279.y);
        let x_1282 : vec4<f32> = u_xlat5;
        let x_1285 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y) * vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y)) + vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat5;
        let x_1294 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.w, x_1297.y, x_1297.w, x_1297.z));
        let x_1300 : vec4<f32> = u_xlat5;
        let x_1303 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y) * vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y)) + vec4<f32>(x_1306.x, x_1306.w, x_1306.z, x_1306.w));
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_1309.x, x_1309.x, x_1309.x, x_1309.y) * vec4<f32>(x_1311.z, x_1311.w, x_1311.y, x_1311.z));
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1314.y, x_1314.y, x_1314.z, x_1314.z) * x_1316);
        let x_1319 : f32 = u_xlat6.z;
        let x_1321 : f32 = u_xlat11.y;
        u_xlat5.x = (x_1319 * x_1321);
        let x_1325 : vec4<f32> = u_xlat9;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.x, x_1325.y);
        let x_1328 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1336 : vec3<f32> = txVec4;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1336.xy, x_1336.z);
        u_xlat31.x = x_1338;
        let x_1341 : vec4<f32> = u_xlat9;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec5;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat6.x = x_1353;
        let x_1356 : f32 = u_xlat6.x;
        let x_1358 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1356 * x_1358);
        let x_1362 : f32 = u_xlat12.x;
        let x_1364 : f32 = u_xlat31.x;
        let x_1367 : f32 = u_xlat6.x;
        u_xlat31.x = ((x_1362 * x_1364) + x_1367);
        let x_1371 : vec2<f32> = u_xlat57;
        let x_1373 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec6;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat57.x = x_1382;
        let x_1385 : f32 = u_xlat12.z;
        let x_1387 : f32 = u_xlat57.x;
        let x_1390 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1385 * x_1387) + x_1390);
        let x_1394 : vec4<f32> = u_xlat8;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec7;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat57.x = x_1406;
        let x_1409 : f32 = u_xlat12.w;
        let x_1411 : f32 = u_xlat57.x;
        let x_1414 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1409 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat10;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec8;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat57.x = x_1430;
        let x_1433 : f32 = u_xlat13.x;
        let x_1435 : f32 = u_xlat57.x;
        let x_1438 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1433 * x_1435) + x_1438);
        let x_1442 : vec4<f32> = u_xlat10;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec9;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat57.x = x_1454;
        let x_1457 : f32 = u_xlat13.y;
        let x_1459 : f32 = u_xlat57.x;
        let x_1462 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1457 * x_1459) + x_1462);
        let x_1466 : vec4<f32> = u_xlat8;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.z, x_1466.w);
        let x_1469 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec10;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat57.x = x_1478;
        let x_1481 : f32 = u_xlat13.z;
        let x_1483 : f32 = u_xlat57.x;
        let x_1486 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1481 * x_1483) + x_1486);
        let x_1490 : vec4<f32> = u_xlat7;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec11;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
        u_xlat57.x = x_1502;
        let x_1505 : f32 = u_xlat13.w;
        let x_1507 : f32 = u_xlat57.x;
        let x_1510 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1505 * x_1507) + x_1510);
        let x_1514 : vec4<f32> = u_xlat7;
        let x_1515 : vec2<f32> = vec2<f32>(x_1514.z, x_1514.w);
        let x_1517 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec12;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1524.xy, x_1524.z);
        u_xlat57.x = x_1526;
        let x_1529 : f32 = u_xlat5.x;
        let x_1531 : f32 = u_xlat57.x;
        let x_1534 : f32 = u_xlat31.x;
        u_xlat82 = ((x_1529 * x_1531) + x_1534);
      } else {
        let x_1537 : vec4<f32> = vs_TEXCOORD8;
        let x_1540 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(x_1540.z, x_1540.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1544 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1546 : vec4<f32> = u_xlat5;
        let x_1548 : vec2<f32> = floor(vec2<f32>(x_1546.x, x_1546.y));
        let x_1549 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1549.w);
        let x_1551 : vec4<f32> = vs_TEXCOORD8;
        let x_1554 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1557 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1551.x, x_1551.y) * vec2<f32>(x_1554.z, x_1554.w)) + -(vec2<f32>(x_1557.x, x_1557.y)));
        let x_1561 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1561.x, x_1561.x, x_1561.y, x_1561.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1564 : vec4<f32> = u_xlat6;
        let x_1566 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1564.x, x_1564.x, x_1564.z, x_1564.z) * vec4<f32>(x_1566.x, x_1566.x, x_1566.z, x_1566.z));
        let x_1569 : vec4<f32> = u_xlat7;
        let x_1573 : vec2<f32> = (vec2<f32>(x_1569.y, x_1569.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1574.x, x_1573.x, x_1574.z, x_1573.y);
        let x_1576 : vec4<f32> = u_xlat7;
        let x_1579 : vec2<f32> = u_xlat57;
        let x_1581 : vec2<f32> = ((vec2<f32>(x_1576.x, x_1576.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1579));
        let x_1582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1581.x, x_1582.y, x_1581.y, x_1582.w);
        let x_1584 : vec2<f32> = u_xlat57;
        let x_1586 : vec2<f32> = (-(x_1584) + vec2<f32>(1.0f, 1.0f));
        let x_1587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1586.x, x_1586.y, x_1587.z, x_1587.w);
        let x_1589 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1589, vec2<f32>(0.0f, 0.0f));
        let x_1591 : vec2<f32> = u_xlat59;
        let x_1593 : vec2<f32> = u_xlat59;
        let x_1595 : vec4<f32> = u_xlat7;
        let x_1597 : vec2<f32> = ((-(x_1591) * x_1593) + vec2<f32>(x_1595.x, x_1595.y));
        let x_1598 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1597.x, x_1597.y, x_1598.z, x_1598.w);
        let x_1600 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1600, vec2<f32>(0.0f, 0.0f));
        let x_1603 : vec2<f32> = u_xlat59;
        let x_1605 : vec2<f32> = u_xlat59;
        let x_1607 : vec4<f32> = u_xlat6;
        let x_1609 : vec2<f32> = ((-(x_1603) * x_1605) + vec2<f32>(x_1607.y, x_1607.w));
        let x_1610 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1609.x, x_1610.y, x_1609.y);
        let x_1612 : vec4<f32> = u_xlat7;
        let x_1614 : vec2<f32> = (vec2<f32>(x_1612.x, x_1612.y) + vec2<f32>(2.0f, 2.0f));
        let x_1615 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
        let x_1617 : vec3<f32> = u_xlat32;
        let x_1619 : vec2<f32> = (vec2<f32>(x_1617.x, x_1617.z) + vec2<f32>(2.0f, 2.0f));
        let x_1620 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1620.x, x_1619.x, x_1620.z, x_1619.y);
        let x_1623 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1623 * 0.08163200318813323975f);
        let x_1627 : vec4<f32> = u_xlat6;
        let x_1630 : vec3<f32> = (vec3<f32>(x_1627.z, x_1627.x, x_1627.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
        let x_1633 : vec4<f32> = u_xlat7;
        let x_1636 : vec2<f32> = (vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1637 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
        let x_1640 : f32 = u_xlat10.y;
        u_xlat9.x = x_1640;
        let x_1642 : vec2<f32> = u_xlat57;
        let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1650.x, x_1649.x, x_1650.z, x_1649.y);
        let x_1652 : vec2<f32> = u_xlat57;
        let x_1656 : vec2<f32> = ((vec2<f32>(x_1652.x, x_1652.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1657 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1656.x, x_1657.y, x_1656.y, x_1657.w);
        let x_1660 : f32 = u_xlat6.x;
        u_xlat7.y = x_1660;
        let x_1663 : f32 = u_xlat8.y;
        u_xlat7.w = x_1663;
        let x_1665 : vec4<f32> = u_xlat7;
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1665 + x_1666);
        let x_1668 : vec2<f32> = u_xlat57;
        let x_1671 : vec2<f32> = ((vec2<f32>(x_1668.y, x_1668.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1672 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1672.x, x_1671.x, x_1672.z, x_1671.y);
        let x_1674 : vec2<f32> = u_xlat57;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1674.y, x_1674.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1678 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1677.x, x_1678.y, x_1677.y, x_1678.w);
        let x_1681 : f32 = u_xlat6.y;
        u_xlat8.y = x_1681;
        let x_1683 : vec4<f32> = u_xlat8;
        let x_1684 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1683 + x_1684);
        let x_1686 : vec4<f32> = u_xlat7;
        let x_1687 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1686 / x_1687);
        let x_1689 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1689 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1695 : vec4<f32> = u_xlat8;
        let x_1696 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1695 / x_1696);
        let x_1698 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1698 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1700 : vec4<f32> = u_xlat7;
        let x_1703 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1700.w, x_1700.x, x_1700.y, x_1700.z) * vec4<f32>(x_1703.x, x_1703.x, x_1703.x, x_1703.x));
        let x_1706 : vec4<f32> = u_xlat8;
        let x_1709 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1706.x, x_1706.w, x_1706.y, x_1706.z) * vec4<f32>(x_1709.y, x_1709.y, x_1709.y, x_1709.y));
        let x_1712 : vec4<f32> = u_xlat7;
        let x_1713 : vec3<f32> = vec3<f32>(x_1712.y, x_1712.z, x_1712.w);
        let x_1714 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1713.x, x_1714.y, x_1713.y, x_1713.z);
        let x_1717 : f32 = u_xlat8.x;
        u_xlat10.y = x_1717;
        let x_1719 : vec4<f32> = u_xlat5;
        let x_1722 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1725 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y) * vec4<f32>(x_1722.x, x_1722.y, x_1722.x, x_1722.y)) + vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1725.y));
        let x_1728 : vec4<f32> = u_xlat5;
        let x_1731 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1731.x, x_1731.y)) + vec2<f32>(x_1734.w, x_1734.y));
        let x_1738 : f32 = u_xlat10.y;
        u_xlat7.y = x_1738;
        let x_1741 : f32 = u_xlat8.z;
        u_xlat10.y = x_1741;
        let x_1743 : vec4<f32> = u_xlat5;
        let x_1746 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1749 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1743.x, x_1743.y, x_1743.x, x_1743.y) * vec4<f32>(x_1746.x, x_1746.y, x_1746.x, x_1746.y)) + vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat5;
        let x_1755 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1758 : vec4<f32> = u_xlat10;
        let x_1760 : vec2<f32> = ((vec2<f32>(x_1752.x, x_1752.y) * vec2<f32>(x_1755.x, x_1755.y)) + vec2<f32>(x_1758.w, x_1758.y));
        let x_1761 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1760.x, x_1760.y, x_1761.z, x_1761.w);
        let x_1764 : f32 = u_xlat10.y;
        u_xlat7.z = x_1764;
        let x_1767 : vec4<f32> = u_xlat5;
        let x_1770 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1773 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1767.x, x_1767.y, x_1767.x, x_1767.y) * vec4<f32>(x_1770.x, x_1770.y, x_1770.x, x_1770.y)) + vec4<f32>(x_1773.x, x_1773.y, x_1773.x, x_1773.z));
        let x_1777 : f32 = u_xlat8.w;
        u_xlat10.y = x_1777;
        let x_1780 : vec4<f32> = u_xlat5;
        let x_1783 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1786 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1780.x, x_1780.y, x_1780.x, x_1780.y) * vec4<f32>(x_1783.x, x_1783.y, x_1783.x, x_1783.y)) + vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1786.y));
        let x_1790 : vec4<f32> = u_xlat5;
        let x_1793 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1796 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(x_1793.x, x_1793.y)) + vec2<f32>(x_1796.w, x_1796.y));
        let x_1800 : f32 = u_xlat10.y;
        u_xlat7.w = x_1800;
        let x_1803 : vec4<f32> = u_xlat5;
        let x_1806 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.x, x_1809.w));
        let x_1812 : vec4<f32> = u_xlat10;
        let x_1813 : vec3<f32> = vec3<f32>(x_1812.x, x_1812.z, x_1812.w);
        let x_1814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1813.x, x_1814.y, x_1813.y, x_1813.z);
        let x_1816 : vec4<f32> = u_xlat5;
        let x_1819 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1822 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1816.x, x_1816.y, x_1816.x, x_1816.y) * vec4<f32>(x_1819.x, x_1819.y, x_1819.x, x_1819.y)) + vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1822.y));
        let x_1826 : vec4<f32> = u_xlat5;
        let x_1829 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1832 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1829.x, x_1829.y)) + vec2<f32>(x_1832.w, x_1832.y));
        let x_1836 : f32 = u_xlat7.x;
        u_xlat8.x = x_1836;
        let x_1838 : vec4<f32> = u_xlat5;
        let x_1841 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1844 : vec4<f32> = u_xlat8;
        let x_1846 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1841.x, x_1841.y)) + vec2<f32>(x_1844.x, x_1844.y));
        let x_1847 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1846.x, x_1846.y, x_1847.z, x_1847.w);
        let x_1850 : vec4<f32> = u_xlat6;
        let x_1852 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1850.x, x_1850.x, x_1850.x, x_1850.x) * x_1852);
        let x_1855 : vec4<f32> = u_xlat6;
        let x_1857 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1855.y, x_1855.y, x_1855.y, x_1855.y) * x_1857);
        let x_1860 : vec4<f32> = u_xlat6;
        let x_1862 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1860.z, x_1860.z, x_1860.z, x_1860.z) * x_1862);
        let x_1864 : vec4<f32> = u_xlat6;
        let x_1866 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1864.w, x_1864.w, x_1864.w, x_1864.w) * x_1866);
        let x_1869 : vec4<f32> = u_xlat11;
        let x_1870 : vec2<f32> = vec2<f32>(x_1869.x, x_1869.y);
        let x_1872 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec13;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1879.xy, x_1879.z);
        u_xlat7.x = x_1881;
        let x_1884 : vec4<f32> = u_xlat11;
        let x_1885 : vec2<f32> = vec2<f32>(x_1884.z, x_1884.w);
        let x_1887 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1895 : vec3<f32> = txVec14;
        let x_1897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1895.xy, x_1895.z);
        u_xlat85 = x_1897;
        let x_1898 : f32 = u_xlat85;
        let x_1900 : f32 = u_xlat16.y;
        u_xlat85 = (x_1898 * x_1900);
        let x_1903 : f32 = u_xlat16.x;
        let x_1905 : f32 = u_xlat7.x;
        let x_1907 : f32 = u_xlat85;
        u_xlat7.x = ((x_1903 * x_1905) + x_1907);
        let x_1911 : vec2<f32> = u_xlat57;
        let x_1913 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1920 : vec3<f32> = txVec15;
        let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1920.xy, x_1920.z);
        u_xlat57.x = x_1922;
        let x_1925 : f32 = u_xlat16.z;
        let x_1927 : f32 = u_xlat57.x;
        let x_1930 : f32 = u_xlat7.x;
        u_xlat57.x = ((x_1925 * x_1927) + x_1930);
        let x_1934 : vec4<f32> = u_xlat14;
        let x_1935 : vec2<f32> = vec2<f32>(x_1934.x, x_1934.y);
        let x_1937 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
        let x_1945 : vec3<f32> = txVec16;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat83 = x_1947;
        let x_1949 : f32 = u_xlat16.w;
        let x_1950 : f32 = u_xlat83;
        let x_1953 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1949 * x_1950) + x_1953);
        let x_1957 : vec4<f32> = u_xlat12;
        let x_1958 : vec2<f32> = vec2<f32>(x_1957.x, x_1957.y);
        let x_1960 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1958.x, x_1958.y, x_1960);
        let x_1967 : vec3<f32> = txVec17;
        let x_1969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1967.xy, x_1967.z);
        u_xlat83 = x_1969;
        let x_1971 : f32 = u_xlat17.x;
        let x_1972 : f32 = u_xlat83;
        let x_1975 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1971 * x_1972) + x_1975);
        let x_1979 : vec4<f32> = u_xlat12;
        let x_1980 : vec2<f32> = vec2<f32>(x_1979.z, x_1979.w);
        let x_1982 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec18;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
        u_xlat83 = x_1991;
        let x_1993 : f32 = u_xlat17.y;
        let x_1994 : f32 = u_xlat83;
        let x_1997 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1993 * x_1994) + x_1997);
        let x_2001 : vec4<f32> = u_xlat13;
        let x_2002 : vec2<f32> = vec2<f32>(x_2001.x, x_2001.y);
        let x_2004 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
        let x_2011 : vec3<f32> = txVec19;
        let x_2013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2011.xy, x_2011.z);
        u_xlat83 = x_2013;
        let x_2015 : f32 = u_xlat17.z;
        let x_2016 : f32 = u_xlat83;
        let x_2019 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2015 * x_2016) + x_2019);
        let x_2023 : vec4<f32> = u_xlat14;
        let x_2024 : vec2<f32> = vec2<f32>(x_2023.z, x_2023.w);
        let x_2026 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec20;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2033.xy, x_2033.z);
        u_xlat83 = x_2035;
        let x_2037 : f32 = u_xlat17.w;
        let x_2038 : f32 = u_xlat83;
        let x_2041 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2037 * x_2038) + x_2041);
        let x_2045 : vec4<f32> = u_xlat15;
        let x_2046 : vec2<f32> = vec2<f32>(x_2045.x, x_2045.y);
        let x_2048 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
        let x_2055 : vec3<f32> = txVec21;
        let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2055.xy, x_2055.z);
        u_xlat83 = x_2057;
        let x_2059 : f32 = u_xlat18.x;
        let x_2060 : f32 = u_xlat83;
        let x_2063 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2059 * x_2060) + x_2063);
        let x_2067 : vec4<f32> = u_xlat15;
        let x_2068 : vec2<f32> = vec2<f32>(x_2067.z, x_2067.w);
        let x_2070 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec22;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat83 = x_2079;
        let x_2081 : f32 = u_xlat18.y;
        let x_2082 : f32 = u_xlat83;
        let x_2085 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2081 * x_2082) + x_2085);
        let x_2089 : vec2<f32> = u_xlat33;
        let x_2091 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2089.x, x_2089.y, x_2091);
        let x_2098 : vec3<f32> = txVec23;
        let x_2100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2098.xy, x_2098.z);
        u_xlat83 = x_2100;
        let x_2102 : f32 = u_xlat18.z;
        let x_2103 : f32 = u_xlat83;
        let x_2106 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2102 * x_2103) + x_2106);
        let x_2110 : vec2<f32> = u_xlat65;
        let x_2112 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec24;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2119.xy, x_2119.z);
        u_xlat83 = x_2121;
        let x_2123 : f32 = u_xlat18.w;
        let x_2124 : f32 = u_xlat83;
        let x_2127 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2123 * x_2124) + x_2127);
        let x_2131 : vec4<f32> = u_xlat10;
        let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
        let x_2134 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
        let x_2141 : vec3<f32> = txVec25;
        let x_2143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2141.xy, x_2141.z);
        u_xlat83 = x_2143;
        let x_2145 : f32 = u_xlat6.x;
        let x_2146 : f32 = u_xlat83;
        let x_2149 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2145 * x_2146) + x_2149);
        let x_2153 : vec4<f32> = u_xlat10;
        let x_2154 : vec2<f32> = vec2<f32>(x_2153.z, x_2153.w);
        let x_2156 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2154.x, x_2154.y, x_2156);
        let x_2163 : vec3<f32> = txVec26;
        let x_2165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2163.xy, x_2163.z);
        u_xlat83 = x_2165;
        let x_2167 : f32 = u_xlat6.y;
        let x_2168 : f32 = u_xlat83;
        let x_2171 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2167 * x_2168) + x_2171);
        let x_2175 : vec2<f32> = u_xlat60;
        let x_2177 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2175.x, x_2175.y, x_2177);
        let x_2184 : vec3<f32> = txVec27;
        let x_2186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2184.xy, x_2184.z);
        u_xlat83 = x_2186;
        let x_2188 : f32 = u_xlat6.z;
        let x_2189 : f32 = u_xlat83;
        let x_2192 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2188 * x_2189) + x_2192);
        let x_2196 : vec4<f32> = u_xlat5;
        let x_2197 : vec2<f32> = vec2<f32>(x_2196.x, x_2196.y);
        let x_2199 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2197.x, x_2197.y, x_2199);
        let x_2206 : vec3<f32> = txVec28;
        let x_2208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2206.xy, x_2206.z);
        u_xlat5.x = x_2208;
        let x_2211 : f32 = u_xlat6.w;
        let x_2213 : f32 = u_xlat5.x;
        let x_2216 : f32 = u_xlat57.x;
        u_xlat82 = ((x_2211 * x_2213) + x_2216);
      }
    }
  } else {
    let x_2220 : vec4<f32> = vs_TEXCOORD8;
    let x_2221 : vec2<f32> = vec2<f32>(x_2220.x, x_2220.y);
    let x_2223 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
    let x_2230 : vec3<f32> = txVec29;
    let x_2232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2230.xy, x_2230.z);
    u_xlat82 = x_2232;
  }
  let x_2234 : f32 = x_961.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_2234) + 1.0f);
  let x_2238 : f32 = u_xlat82;
  let x_2240 : f32 = x_961.x_MainLightShadowParams.x;
  let x_2243 : f32 = u_xlat5.x;
  u_xlat82 = ((x_2238 * x_2240) + x_2243);
  let x_2246 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_2246);
  let x_2252 : f32 = vs_TEXCOORD8.z;
  u_xlatb31.x = (x_2252 >= 1.0f);
  let x_2256 : bool = u_xlatb31.x;
  let x_2257 : bool = u_xlatb5;
  u_xlatb5 = (x_2256 | x_2257);
  let x_2259 : bool = u_xlatb5;
  let x_2260 : f32 = u_xlat82;
  u_xlat82 = select(x_2260, 1.0f, x_2259);
  let x_2264 : vec3<f32> = vs_TEXCOORD7;
  let x_2267 : vec3<f32> = x_110.x_WorldSpaceCameraPos;
  let x_2269 : vec3<f32> = (x_2264 + -(x_2267));
  let x_2270 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
  let x_2272 : vec4<f32> = u_xlat5;
  let x_2274 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2272.x, x_2272.y, x_2272.z), vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
  let x_2279 : f32 = u_xlat5.x;
  let x_2281 : f32 = x_961.x_MainLightShadowParams.z;
  let x_2284 : f32 = x_961.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2279 * x_2281) + x_2284);
  let x_2288 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2288, 0.0f, 1.0f);
  let x_2291 : f32 = u_xlat82;
  u_xlat57.x = (-(x_2291) + 1.0f);
  let x_2296 : f32 = u_xlat31.x;
  let x_2298 : f32 = u_xlat57.x;
  let x_2300 : f32 = u_xlat82;
  u_xlat82 = ((x_2296 * x_2298) + x_2300);
  let x_2309 : f32 = x_2307.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_2309 == -1.0f));
  let x_2313 : bool = u_xlatb31.x;
  if (x_2313) {
    let x_2316 : vec3<f32> = vs_TEXCOORD7;
    let x_2319 : vec4<f32> = x_2307.x_MainLightWorldToLight[1i];
    let x_2321 : vec2<f32> = (vec2<f32>(x_2316.y, x_2316.y) * vec2<f32>(x_2319.x, x_2319.y));
    let x_2322 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2321.x, x_2321.y, x_2322.z);
    let x_2325 : vec4<f32> = x_2307.x_MainLightWorldToLight[0i];
    let x_2327 : vec3<f32> = vs_TEXCOORD7;
    let x_2330 : vec3<f32> = u_xlat31;
    let x_2332 : vec2<f32> = ((vec2<f32>(x_2325.x, x_2325.y) * vec2<f32>(x_2327.x, x_2327.x)) + vec2<f32>(x_2330.x, x_2330.y));
    let x_2333 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2332.x, x_2332.y, x_2333.z);
    let x_2336 : vec4<f32> = x_2307.x_MainLightWorldToLight[2i];
    let x_2338 : vec3<f32> = vs_TEXCOORD7;
    let x_2341 : vec3<f32> = u_xlat31;
    let x_2343 : vec2<f32> = ((vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(x_2338.z, x_2338.z)) + vec2<f32>(x_2341.x, x_2341.y));
    let x_2344 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2343.x, x_2343.y, x_2344.z);
    let x_2346 : vec3<f32> = u_xlat31;
    let x_2349 : vec4<f32> = x_2307.x_MainLightWorldToLight[3i];
    let x_2351 : vec2<f32> = (vec2<f32>(x_2346.x, x_2346.y) + vec2<f32>(x_2349.x, x_2349.y));
    let x_2352 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2351.x, x_2351.y, x_2352.z);
    let x_2354 : vec3<f32> = u_xlat31;
    let x_2357 : vec2<f32> = ((vec2<f32>(x_2354.x, x_2354.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2358 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2357.x, x_2357.y, x_2358.z);
    let x_2365 : vec3<f32> = u_xlat31;
    let x_2368 : f32 = x_110.x_GlobalMipBias.x;
    let x_2369 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2365.x, x_2365.y), x_2368);
    u_xlat6 = x_2369;
    let x_2371 : f32 = x_2307.x_MainLightCookieTextureFormat;
    let x_2373 : f32 = x_2307.x_MainLightCookieTextureFormat;
    let x_2375 : f32 = x_2307.x_MainLightCookieTextureFormat;
    let x_2377 : f32 = x_2307.x_MainLightCookieTextureFormat;
    let x_2378 : vec4<f32> = vec4<f32>(x_2371, x_2373, x_2375, x_2377);
    let x_2385 : vec4<bool> = (vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2378.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_2385.x, x_2385.y);
    let x_2388 : bool = u_xlatb31.y;
    if (x_2388) {
      let x_2394 : f32 = u_xlat6.w;
      x_2390 = x_2394;
    } else {
      let x_2397 : f32 = u_xlat6.x;
      x_2390 = x_2397;
    }
    let x_2398 : f32 = x_2390;
    u_xlat57.x = x_2398;
    let x_2401 : bool = u_xlatb31.x;
    if (x_2401) {
      let x_2405 : vec4<f32> = u_xlat6;
      x_2402 = vec3<f32>(x_2405.x, x_2405.y, x_2405.z);
    } else {
      let x_2408 : vec2<f32> = u_xlat57;
      x_2402 = vec3<f32>(x_2408.x, x_2408.x, x_2408.x);
    }
    let x_2410 : vec3<f32> = x_2402;
    u_xlat31 = x_2410;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_2415 : vec3<f32> = u_xlat31;
  let x_2417 : vec4<f32> = x_110.x_MainLightColor;
  u_xlat31 = (x_2415 * vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2421 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2421;
  let x_2424 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2424;
  let x_2427 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2427;
  let x_2430 : vec4<f32> = u_xlat6;
  let x_2433 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(vec3<f32>(x_2430.x, x_2430.y, x_2430.z)), vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : f32 = u_xlat84;
  let x_2437 : f32 = u_xlat84;
  u_xlat84 = (x_2436 + x_2437);
  let x_2439 : vec4<f32> = u_xlat1;
  let x_2441 : f32 = u_xlat84;
  let x_2445 : vec4<f32> = u_xlat6;
  let x_2448 : vec3<f32> = ((vec3<f32>(x_2439.x, x_2439.y, x_2439.z) * -(vec3<f32>(x_2441, x_2441, x_2441))) + -(vec3<f32>(x_2445.x, x_2445.y, x_2445.z)));
  let x_2449 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
  let x_2451 : vec4<f32> = u_xlat1;
  let x_2453 : vec4<f32> = u_xlat6;
  u_xlat84 = dot(vec3<f32>(x_2451.x, x_2451.y, x_2451.z), vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2456, 0.0f, 1.0f);
  let x_2458 : f32 = u_xlat84;
  u_xlat84 = (-(x_2458) + 1.0f);
  let x_2461 : f32 = u_xlat84;
  let x_2462 : f32 = u_xlat84;
  u_xlat84 = (x_2461 * x_2462);
  let x_2464 : f32 = u_xlat84;
  let x_2465 : f32 = u_xlat84;
  u_xlat84 = (x_2464 * x_2465);
  let x_2468 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2468) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2475 : f32 = u_xlat0.x;
  let x_2476 : f32 = u_xlat85;
  u_xlat0.x = (x_2475 * x_2476);
  let x_2480 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2480 * 6.0f);
  let x_2492 : vec4<f32> = u_xlat7;
  let x_2495 : f32 = u_xlat0.x;
  let x_2496 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2492.x, x_2492.y, x_2492.z), x_2495);
  u_xlat7 = x_2496;
  let x_2498 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2498 + -1.0f);
  let x_2502 : f32 = x_825.unity_SpecCube0_HDR.w;
  let x_2504 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2502 * x_2504) + 1.0f);
  let x_2509 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2509, 0.0f);
  let x_2513 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2513);
  let x_2517 : f32 = u_xlat0.x;
  let x_2519 : f32 = x_825.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2517 * x_2519);
  let x_2523 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2523);
  let x_2527 : f32 = u_xlat0.x;
  let x_2529 : f32 = x_825.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2527 * x_2529);
  let x_2532 : vec4<f32> = u_xlat7;
  let x_2534 : vec3<f32> = u_xlat0;
  let x_2536 : vec3<f32> = (vec3<f32>(x_2532.x, x_2532.y, x_2532.z) * vec3<f32>(x_2534.x, x_2534.x, x_2534.x));
  let x_2537 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
  let x_2539 : f32 = u_xlat52;
  let x_2541 : f32 = u_xlat52;
  let x_2545 : vec2<f32> = ((vec2<f32>(x_2539, x_2539) * vec2<f32>(x_2541, x_2541)) + vec2<f32>(-1.0f, 1.0f));
  let x_2546 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2545.x, x_2546.y, x_2545.y);
  let x_2549 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2549);
  let x_2551 : vec4<f32> = u_xlat4;
  let x_2554 : f32 = u_xlat80;
  let x_2556 : vec3<f32> = (-(vec3<f32>(x_2551.x, x_2551.y, x_2551.z)) + vec3<f32>(x_2554, x_2554, x_2554));
  let x_2557 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
  let x_2559 : f32 = u_xlat84;
  let x_2561 : vec4<f32> = u_xlat8;
  let x_2564 : vec4<f32> = u_xlat4;
  let x_2566 : vec3<f32> = ((vec3<f32>(x_2559, x_2559, x_2559) * vec3<f32>(x_2561.x, x_2561.y, x_2561.z)) + vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
  let x_2567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
  let x_2569 : f32 = u_xlat52;
  let x_2571 : vec4<f32> = u_xlat8;
  let x_2573 : vec3<f32> = (vec3<f32>(x_2569, x_2569, x_2569) * vec3<f32>(x_2571.x, x_2571.y, x_2571.z));
  let x_2574 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
  let x_2576 : vec4<f32> = u_xlat7;
  let x_2578 : vec4<f32> = u_xlat8;
  let x_2580 : vec3<f32> = (vec3<f32>(x_2576.x, x_2576.y, x_2576.z) * vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
  let x_2581 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
  let x_2583 : vec3<f32> = u_xlat2;
  let x_2584 : vec4<f32> = u_xlat3;
  let x_2587 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_2583 * vec3<f32>(x_2584.x, x_2584.y, x_2584.z)) + vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
  let x_2590 : f32 = u_xlat82;
  let x_2592 : f32 = x_825.unity_LightData.z;
  u_xlat52 = (x_2590 * x_2592);
  let x_2594 : vec4<f32> = u_xlat1;
  let x_2597 : vec4<f32> = x_110.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2594.x, x_2594.y, x_2594.z), vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
  let x_2600 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2600, 0.0f, 1.0f);
  let x_2602 : f32 = u_xlat52;
  let x_2603 : f32 = u_xlat80;
  u_xlat52 = (x_2602 * x_2603);
  let x_2605 : f32 = u_xlat52;
  let x_2607 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2605, x_2605, x_2605) * x_2607);
  let x_2609 : vec4<f32> = u_xlat6;
  let x_2612 : vec4<f32> = x_110.x_MainLightPosition;
  let x_2614 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) + vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
  let x_2615 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
  let x_2617 : vec4<f32> = u_xlat7;
  let x_2619 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2617.x, x_2617.y, x_2617.z), vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
  let x_2622 : f32 = u_xlat52;
  u_xlat52 = max(x_2622, 1.17549435e-38f);
  let x_2625 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2625);
  let x_2627 : f32 = u_xlat52;
  let x_2629 : vec4<f32> = u_xlat7;
  let x_2631 : vec3<f32> = (vec3<f32>(x_2627, x_2627, x_2627) * vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
  let x_2632 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
  let x_2634 : vec4<f32> = u_xlat1;
  let x_2636 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2634.x, x_2634.y, x_2634.z), vec3<f32>(x_2636.x, x_2636.y, x_2636.z));
  let x_2639 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2639, 0.0f, 1.0f);
  let x_2642 : vec4<f32> = x_110.x_MainLightPosition;
  let x_2644 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2642.x, x_2642.y, x_2642.z), vec3<f32>(x_2644.x, x_2644.y, x_2644.z));
  let x_2647 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2647, 0.0f, 1.0f);
  let x_2649 : f32 = u_xlat52;
  let x_2650 : f32 = u_xlat52;
  u_xlat52 = (x_2649 * x_2650);
  let x_2652 : f32 = u_xlat52;
  let x_2654 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2652 * x_2654) + 1.00001001358032226562f);
  let x_2658 : f32 = u_xlat80;
  let x_2659 : f32 = u_xlat80;
  u_xlat80 = (x_2658 * x_2659);
  let x_2661 : f32 = u_xlat52;
  let x_2662 : f32 = u_xlat52;
  u_xlat52 = (x_2661 * x_2662);
  let x_2664 : f32 = u_xlat80;
  u_xlat80 = max(x_2664, 0.10000000149011611938f);
  let x_2667 : f32 = u_xlat52;
  let x_2668 : f32 = u_xlat80;
  u_xlat52 = (x_2667 * x_2668);
  let x_2670 : f32 = u_xlat81;
  let x_2671 : f32 = u_xlat52;
  u_xlat52 = (x_2670 * x_2671);
  let x_2673 : f32 = u_xlat79;
  let x_2674 : f32 = u_xlat52;
  u_xlat52 = (x_2673 / x_2674);
  let x_2676 : vec4<f32> = u_xlat4;
  let x_2678 : f32 = u_xlat52;
  let x_2681 : vec4<f32> = u_xlat3;
  let x_2683 : vec3<f32> = ((vec3<f32>(x_2676.x, x_2676.y, x_2676.z) * vec3<f32>(x_2678, x_2678, x_2678)) + vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
  let x_2684 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
  let x_2686 : vec3<f32> = u_xlat31;
  let x_2687 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2686 * vec3<f32>(x_2687.x, x_2687.y, x_2687.z));
  let x_2691 : f32 = x_110.x_AdditionalLightsCount.x;
  let x_2693 : f32 = x_825.unity_LightData.y;
  u_xlat52 = min(x_2691, x_2693);
  let x_2697 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2697));
  let x_2701 : f32 = u_xlat5.x;
  let x_2703 : f32 = x_961.x_AdditionalShadowFadeParams.x;
  let x_2706 : f32 = x_961.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2701 * x_2703) + x_2706);
  let x_2708 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2708, 0.0f, 1.0f);
  let x_2712 : f32 = x_2307.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2714 : f32 = x_2307.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2716 : f32 = x_2307.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2718 : f32 = x_2307.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2719 : vec4<f32> = vec4<f32>(x_2712, x_2714, x_2716, x_2718);
  let x_2725 : vec4<bool> = (vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2719.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2725.x, x_2725.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2737 : u32 = u_xlatu_loop_1;
    let x_2738 : u32 = u_xlatu52;
    if ((x_2737 < x_2738)) {
    } else {
      break;
    }
    let x_2741 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_2741 >> 2u);
    let x_2745 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2745 & 3u));
    let x_2748 : u32 = u_xlatu5;
    let x_2751 : vec4<f32> = x_825.unity_LightIndices[bitcast<i32>(x_2748)];
    let x_2761 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2766 : vec4<u32> = indexable[x_2761];
    u_xlat5.x = dot(x_2751, bitcast<vec4<f32>>(x_2766));
    let x_2772 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_2772);
    let x_2774 : vec3<f32> = vs_TEXCOORD7;
    let x_2785 : i32 = u_xlati5;
    let x_2787 : vec4<f32> = x_2784.x_AdditionalLightsPosition[x_2785];
    let x_2790 : i32 = u_xlati5;
    let x_2792 : vec4<f32> = x_2784.x_AdditionalLightsPosition[x_2790];
    let x_2794 : vec3<f32> = ((-(x_2774) * vec3<f32>(x_2787.w, x_2787.w, x_2787.w)) + vec3<f32>(x_2792.x, x_2792.y, x_2792.z));
    let x_2795 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2795.w);
    let x_2797 : vec4<f32> = u_xlat9;
    let x_2799 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2797.x, x_2797.y, x_2797.z), vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
    let x_2802 : f32 = u_xlat84;
    u_xlat84 = max(x_2802, 0.00006103515625f);
    let x_2804 : f32 = u_xlat84;
    u_xlat59.x = inverseSqrt(x_2804);
    let x_2807 : vec2<f32> = u_xlat59;
    let x_2809 : vec4<f32> = u_xlat9;
    let x_2811 : vec3<f32> = (vec3<f32>(x_2807.x, x_2807.x, x_2807.x) * vec3<f32>(x_2809.x, x_2809.y, x_2809.z));
    let x_2812 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2811.x, x_2811.y, x_2811.z, x_2812.w);
    let x_2814 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2814);
    let x_2816 : f32 = u_xlat84;
    let x_2817 : i32 = u_xlati5;
    let x_2819 : f32 = x_2784.x_AdditionalLightsAttenuation[x_2817].x;
    u_xlat84 = (x_2816 * x_2819);
    let x_2821 : f32 = u_xlat84;
    let x_2823 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2821) * x_2823) + 1.0f);
    let x_2826 : f32 = u_xlat84;
    u_xlat84 = max(x_2826, 0.0f);
    let x_2828 : f32 = u_xlat84;
    let x_2829 : f32 = u_xlat84;
    u_xlat84 = (x_2828 * x_2829);
    let x_2831 : f32 = u_xlat84;
    let x_2832 : f32 = u_xlat85;
    u_xlat84 = (x_2831 * x_2832);
    let x_2834 : i32 = u_xlati5;
    let x_2836 : vec4<f32> = x_2784.x_AdditionalLightsSpotDir[x_2834];
    let x_2838 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2836.x, x_2836.y, x_2836.z), vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : f32 = u_xlat85;
    let x_2842 : i32 = u_xlati5;
    let x_2844 : f32 = x_2784.x_AdditionalLightsAttenuation[x_2842].z;
    let x_2846 : i32 = u_xlati5;
    let x_2848 : f32 = x_2784.x_AdditionalLightsAttenuation[x_2846].w;
    u_xlat85 = ((x_2841 * x_2844) + x_2848);
    let x_2850 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2850, 0.0f, 1.0f);
    let x_2852 : f32 = u_xlat85;
    let x_2853 : f32 = u_xlat85;
    u_xlat85 = (x_2852 * x_2853);
    let x_2855 : f32 = u_xlat84;
    let x_2856 : f32 = u_xlat85;
    u_xlat84 = (x_2855 * x_2856);
    let x_2859 : i32 = u_xlati5;
    let x_2861 : f32 = x_961.x_AdditionalShadowParams[x_2859].w;
    u_xlati85 = i32(x_2861);
    let x_2864 : i32 = u_xlati85;
    u_xlatb86 = (x_2864 >= 0i);
    let x_2866 : bool = u_xlatb86;
    if (x_2866) {
      let x_2870 : i32 = u_xlati5;
      let x_2872 : f32 = x_961.x_AdditionalShadowParams[x_2870].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2872, x_2872, x_2872, x_2872))));
      let x_2876 : bool = u_xlatb86;
      if (x_2876) {
        let x_2881 : vec4<f32> = u_xlat10;
        let x_2884 : vec4<f32> = u_xlat10;
        let x_2887 : vec4<bool> = (abs(vec4<f32>(x_2881.z, x_2881.z, x_2881.y, x_2881.z)) >= abs(vec4<f32>(x_2884.x, x_2884.y, x_2884.x, x_2884.x)));
        let x_2889 : vec3<bool> = vec3<bool>(x_2887.x, x_2887.y, x_2887.z);
        let x_2890 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2889.x, x_2889.y, x_2889.z, x_2890.w);
        let x_2893 : bool = u_xlatb11.y;
        let x_2895 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2893 & x_2895);
        let x_2897 : vec4<f32> = u_xlat10;
        let x_2900 : vec4<bool> = (-(vec4<f32>(x_2897.z, x_2897.y, x_2897.z, x_2897.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2901 : vec3<bool> = vec3<bool>(x_2900.x, x_2900.y, x_2900.w);
        let x_2902 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2901.x, x_2901.y, x_2902.z, x_2901.z);
        let x_2905 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2905);
        let x_2910 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2910);
        let x_2916 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2916);
        let x_2919 : bool = u_xlatb11.z;
        if (x_2919) {
          let x_2924 : f32 = u_xlat11.y;
          x_2920 = x_2924;
        } else {
          let x_2926 : f32 = u_xlat87;
          x_2920 = x_2926;
        }
        let x_2927 : f32 = x_2920;
        u_xlat87 = x_2927;
        let x_2929 : bool = u_xlatb86;
        if (x_2929) {
          let x_2934 : f32 = u_xlat11.x;
          x_2930 = x_2934;
        } else {
          let x_2936 : f32 = u_xlat87;
          x_2930 = x_2936;
        }
        let x_2937 : f32 = x_2930;
        u_xlat86 = x_2937;
        let x_2938 : i32 = u_xlati5;
        let x_2940 : f32 = x_961.x_AdditionalShadowParams[x_2938].w;
        u_xlat87 = trunc(x_2940);
        let x_2942 : f32 = u_xlat86;
        let x_2943 : f32 = u_xlat87;
        u_xlat86 = (x_2942 + x_2943);
        let x_2945 : f32 = u_xlat86;
        u_xlati85 = i32(x_2945);
      }
      let x_2947 : i32 = u_xlati85;
      u_xlati85 = (x_2947 << bitcast<u32>(2i));
      let x_2949 : vec3<f32> = vs_TEXCOORD7;
      let x_2951 : i32 = u_xlati85;
      let x_2954 : i32 = u_xlati85;
      let x_2958 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[((x_2951 + 1i) / 4i)][((x_2954 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2949.y, x_2949.y, x_2949.y, x_2949.y) * x_2958);
      let x_2960 : i32 = u_xlati85;
      let x_2962 : i32 = u_xlati85;
      let x_2965 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[(x_2960 / 4i)][(x_2962 % 4i)];
      let x_2966 : vec3<f32> = vs_TEXCOORD7;
      let x_2969 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2965 * vec4<f32>(x_2966.x, x_2966.x, x_2966.x, x_2966.x)) + x_2969);
      let x_2971 : i32 = u_xlati85;
      let x_2974 : i32 = u_xlati85;
      let x_2978 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[((x_2971 + 2i) / 4i)][((x_2974 + 2i) % 4i)];
      let x_2979 : vec3<f32> = vs_TEXCOORD7;
      let x_2982 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2978 * vec4<f32>(x_2979.z, x_2979.z, x_2979.z, x_2979.z)) + x_2982);
      let x_2984 : vec4<f32> = u_xlat11;
      let x_2985 : i32 = u_xlati85;
      let x_2988 : i32 = u_xlati85;
      let x_2992 : vec4<f32> = x_961.x_AdditionalLightsWorldToShadow[((x_2985 + 3i) / 4i)][((x_2988 + 3i) % 4i)];
      u_xlat11 = (x_2984 + x_2992);
      let x_2994 : vec4<f32> = u_xlat11;
      let x_2996 : vec4<f32> = u_xlat11;
      let x_2998 : vec3<f32> = (vec3<f32>(x_2994.x, x_2994.y, x_2994.z) / vec3<f32>(x_2996.w, x_2996.w, x_2996.w));
      let x_2999 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2998.x, x_2998.y, x_2998.z, x_2999.w);
      let x_3002 : i32 = u_xlati5;
      let x_3004 : f32 = x_961.x_AdditionalShadowParams[x_3002].y;
      u_xlatb85 = (0.0f < x_3004);
      let x_3006 : bool = u_xlatb85;
      if (x_3006) {
        let x_3009 : i32 = u_xlati5;
        let x_3011 : f32 = x_961.x_AdditionalShadowParams[x_3009].y;
        u_xlatb85 = (1.0f == x_3011);
        let x_3013 : bool = u_xlatb85;
        if (x_3013) {
          let x_3016 : vec4<f32> = u_xlat11;
          let x_3019 : vec4<f32> = x_961.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y) + x_3019);
          let x_3022 : vec4<f32> = u_xlat12;
          let x_3023 : vec2<f32> = vec2<f32>(x_3022.x, x_3022.y);
          let x_3025 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
          let x_3033 : vec3<f32> = txVec30;
          let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
          u_xlat13.x = x_3035;
          let x_3038 : vec4<f32> = u_xlat12;
          let x_3039 : vec2<f32> = vec2<f32>(x_3038.z, x_3038.w);
          let x_3041 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3039.x, x_3039.y, x_3041);
          let x_3048 : vec3<f32> = txVec31;
          let x_3050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
          u_xlat13.y = x_3050;
          let x_3052 : vec4<f32> = u_xlat11;
          let x_3055 : vec4<f32> = x_961.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y) + x_3055);
          let x_3058 : vec4<f32> = u_xlat12;
          let x_3059 : vec2<f32> = vec2<f32>(x_3058.x, x_3058.y);
          let x_3061 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3059.x, x_3059.y, x_3061);
          let x_3068 : vec3<f32> = txVec32;
          let x_3070 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3068.xy, x_3068.z);
          u_xlat13.z = x_3070;
          let x_3073 : vec4<f32> = u_xlat12;
          let x_3074 : vec2<f32> = vec2<f32>(x_3073.z, x_3073.w);
          let x_3076 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
          let x_3083 : vec3<f32> = txVec33;
          let x_3085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
          u_xlat13.w = x_3085;
          let x_3087 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3087, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3090 : i32 = u_xlati5;
          let x_3092 : f32 = x_961.x_AdditionalShadowParams[x_3090].y;
          u_xlatb86 = (2.0f == x_3092);
          let x_3094 : bool = u_xlatb86;
          if (x_3094) {
            let x_3097 : vec4<f32> = u_xlat11;
            let x_3100 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3103 : vec2<f32> = ((vec2<f32>(x_3097.x, x_3097.y) * vec2<f32>(x_3100.z, x_3100.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3104 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3103.x, x_3103.y, x_3104.z, x_3104.w);
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3108 : vec2<f32> = floor(vec2<f32>(x_3106.x, x_3106.y));
            let x_3109 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3108.x, x_3108.y, x_3109.z, x_3109.w);
            let x_3112 : vec4<f32> = u_xlat11;
            let x_3115 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3112.x, x_3112.y) * vec2<f32>(x_3115.z, x_3115.w)) + -(vec2<f32>(x_3118.x, x_3118.y)));
            let x_3122 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3122.x, x_3122.x, x_3122.y, x_3122.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3125 : vec4<f32> = u_xlat13;
            let x_3127 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3125.x, x_3125.x, x_3125.z, x_3125.z) * vec4<f32>(x_3127.x, x_3127.x, x_3127.z, x_3127.z));
            let x_3130 : vec4<f32> = u_xlat14;
            let x_3132 : vec2<f32> = (vec2<f32>(x_3130.y, x_3130.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3133 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3132.x, x_3133.y, x_3132.y, x_3133.w);
            let x_3135 : vec4<f32> = u_xlat14;
            let x_3138 : vec2<f32> = u_xlat64;
            let x_3140 : vec2<f32> = ((vec2<f32>(x_3135.x, x_3135.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3138));
            let x_3141 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3140.x, x_3140.y, x_3141.z, x_3141.w);
            let x_3144 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3144) + vec2<f32>(1.0f, 1.0f));
            let x_3147 : vec2<f32> = u_xlat64;
            let x_3148 : vec2<f32> = min(x_3147, vec2<f32>(0.0f, 0.0f));
            let x_3149 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3148.x, x_3148.y, x_3149.z, x_3149.w);
            let x_3151 : vec4<f32> = u_xlat15;
            let x_3154 : vec4<f32> = u_xlat15;
            let x_3157 : vec2<f32> = u_xlat66;
            let x_3158 : vec2<f32> = ((-(vec2<f32>(x_3151.x, x_3151.y)) * vec2<f32>(x_3154.x, x_3154.y)) + x_3157);
            let x_3159 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3158.x, x_3158.y, x_3159.z, x_3159.w);
            let x_3161 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3161, vec2<f32>(0.0f, 0.0f));
            let x_3163 : vec2<f32> = u_xlat64;
            let x_3165 : vec2<f32> = u_xlat64;
            let x_3167 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3163) * x_3165) + vec2<f32>(x_3167.y, x_3167.w));
            let x_3170 : vec4<f32> = u_xlat15;
            let x_3172 : vec2<f32> = (vec2<f32>(x_3170.x, x_3170.y) + vec2<f32>(1.0f, 1.0f));
            let x_3173 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3172.x, x_3172.y, x_3173.z, x_3173.w);
            let x_3175 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3175 + vec2<f32>(1.0f, 1.0f));
            let x_3177 : vec4<f32> = u_xlat14;
            let x_3179 : vec2<f32> = (vec2<f32>(x_3177.x, x_3177.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3180 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3179.x, x_3179.y, x_3180.z, x_3180.w);
            let x_3182 : vec2<f32> = u_xlat66;
            let x_3183 : vec2<f32> = (x_3182 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3184 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3183.x, x_3183.y, x_3184.z, x_3184.w);
            let x_3186 : vec4<f32> = u_xlat15;
            let x_3188 : vec2<f32> = (vec2<f32>(x_3186.x, x_3186.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3189 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3188.x, x_3188.y, x_3189.z, x_3189.w);
            let x_3191 : vec2<f32> = u_xlat64;
            let x_3192 : vec2<f32> = (x_3191 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3193 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3192.x, x_3192.y, x_3193.z, x_3193.w);
            let x_3195 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3195.y, x_3195.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3199 : f32 = u_xlat15.x;
            u_xlat16.z = x_3199;
            let x_3202 : f32 = u_xlat64.x;
            u_xlat16.w = x_3202;
            let x_3205 : f32 = u_xlat17.x;
            u_xlat14.z = x_3205;
            let x_3208 : f32 = u_xlat13.x;
            u_xlat14.w = x_3208;
            let x_3210 : vec4<f32> = u_xlat14;
            let x_3212 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3210.z, x_3210.w, x_3210.x, x_3210.z) + vec4<f32>(x_3212.z, x_3212.w, x_3212.x, x_3212.z));
            let x_3216 : f32 = u_xlat16.y;
            u_xlat15.z = x_3216;
            let x_3219 : f32 = u_xlat64.y;
            u_xlat15.w = x_3219;
            let x_3222 : f32 = u_xlat14.y;
            u_xlat17.z = x_3222;
            let x_3225 : f32 = u_xlat13.z;
            u_xlat17.w = x_3225;
            let x_3227 : vec4<f32> = u_xlat15;
            let x_3229 : vec4<f32> = u_xlat17;
            let x_3231 : vec3<f32> = (vec3<f32>(x_3227.z, x_3227.y, x_3227.w) + vec3<f32>(x_3229.z, x_3229.y, x_3229.w));
            let x_3232 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3232.w);
            let x_3234 : vec4<f32> = u_xlat14;
            let x_3236 : vec4<f32> = u_xlat18;
            let x_3238 : vec3<f32> = (vec3<f32>(x_3234.x, x_3234.z, x_3234.w) / vec3<f32>(x_3236.z, x_3236.w, x_3236.y));
            let x_3239 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3238.x, x_3238.y, x_3238.z, x_3239.w);
            let x_3241 : vec4<f32> = u_xlat14;
            let x_3243 : vec3<f32> = (vec3<f32>(x_3241.x, x_3241.y, x_3241.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3244 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3243.x, x_3243.y, x_3243.z, x_3244.w);
            let x_3246 : vec4<f32> = u_xlat17;
            let x_3248 : vec4<f32> = u_xlat13;
            let x_3250 : vec3<f32> = (vec3<f32>(x_3246.z, x_3246.y, x_3246.w) / vec3<f32>(x_3248.x, x_3248.y, x_3248.z));
            let x_3251 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3250.x, x_3250.y, x_3250.z, x_3251.w);
            let x_3253 : vec4<f32> = u_xlat15;
            let x_3255 : vec3<f32> = (vec3<f32>(x_3253.x, x_3253.y, x_3253.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3256 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3255.x, x_3255.y, x_3255.z, x_3256.w);
            let x_3258 : vec4<f32> = u_xlat14;
            let x_3261 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3263 : vec3<f32> = (vec3<f32>(x_3258.y, x_3258.x, x_3258.z) * vec3<f32>(x_3261.x, x_3261.x, x_3261.x));
            let x_3264 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3263.x, x_3263.y, x_3263.z, x_3264.w);
            let x_3266 : vec4<f32> = u_xlat15;
            let x_3269 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3271 : vec3<f32> = (vec3<f32>(x_3266.x, x_3266.y, x_3266.z) * vec3<f32>(x_3269.y, x_3269.y, x_3269.y));
            let x_3272 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
            let x_3275 : f32 = u_xlat15.x;
            u_xlat14.w = x_3275;
            let x_3277 : vec4<f32> = u_xlat12;
            let x_3280 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3283 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3277.x, x_3277.y, x_3277.x, x_3277.y) * vec4<f32>(x_3280.x, x_3280.y, x_3280.x, x_3280.y)) + vec4<f32>(x_3283.y, x_3283.w, x_3283.x, x_3283.w));
            let x_3286 : vec4<f32> = u_xlat12;
            let x_3289 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3292 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3286.x, x_3286.y) * vec2<f32>(x_3289.x, x_3289.y)) + vec2<f32>(x_3292.z, x_3292.w));
            let x_3296 : f32 = u_xlat14.y;
            u_xlat15.w = x_3296;
            let x_3298 : vec4<f32> = u_xlat15;
            let x_3299 : vec2<f32> = vec2<f32>(x_3298.y, x_3298.z);
            let x_3300 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3300.x, x_3299.x, x_3300.z, x_3299.y);
            let x_3302 : vec4<f32> = u_xlat12;
            let x_3305 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3302.x, x_3302.y, x_3302.x, x_3302.y) * vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y)) + vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3308.y));
            let x_3311 : vec4<f32> = u_xlat12;
            let x_3314 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3317 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3311.x, x_3311.y, x_3311.x, x_3311.y) * vec4<f32>(x_3314.x, x_3314.y, x_3314.x, x_3314.y)) + vec4<f32>(x_3317.w, x_3317.y, x_3317.w, x_3317.z));
            let x_3320 : vec4<f32> = u_xlat12;
            let x_3323 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3326 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3320.x, x_3320.y, x_3320.x, x_3320.y) * vec4<f32>(x_3323.x, x_3323.y, x_3323.x, x_3323.y)) + vec4<f32>(x_3326.x, x_3326.w, x_3326.z, x_3326.w));
            let x_3330 : vec4<f32> = u_xlat13;
            let x_3332 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3330.x, x_3330.x, x_3330.x, x_3330.y) * vec4<f32>(x_3332.z, x_3332.w, x_3332.y, x_3332.z));
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3338 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3336.y, x_3336.y, x_3336.z, x_3336.z) * x_3338);
            let x_3341 : f32 = u_xlat13.z;
            let x_3343 : f32 = u_xlat18.y;
            u_xlat86 = (x_3341 * x_3343);
            let x_3346 : vec4<f32> = u_xlat16;
            let x_3347 : vec2<f32> = vec2<f32>(x_3346.x, x_3346.y);
            let x_3349 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec34;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat87 = x_3358;
            let x_3360 : vec4<f32> = u_xlat16;
            let x_3361 : vec2<f32> = vec2<f32>(x_3360.z, x_3360.w);
            let x_3363 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3371 : vec3<f32> = txVec35;
            let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
            u_xlat88 = x_3373;
            let x_3374 : f32 = u_xlat88;
            let x_3376 : f32 = u_xlat19.y;
            u_xlat88 = (x_3374 * x_3376);
            let x_3379 : f32 = u_xlat19.x;
            let x_3380 : f32 = u_xlat87;
            let x_3382 : f32 = u_xlat88;
            u_xlat87 = ((x_3379 * x_3380) + x_3382);
            let x_3385 : vec2<f32> = u_xlat64;
            let x_3387 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3385.x, x_3385.y, x_3387);
            let x_3394 : vec3<f32> = txVec36;
            let x_3396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3394.xy, x_3394.z);
            u_xlat88 = x_3396;
            let x_3398 : f32 = u_xlat19.z;
            let x_3399 : f32 = u_xlat88;
            let x_3401 : f32 = u_xlat87;
            u_xlat87 = ((x_3398 * x_3399) + x_3401);
            let x_3404 : vec4<f32> = u_xlat15;
            let x_3405 : vec2<f32> = vec2<f32>(x_3404.x, x_3404.y);
            let x_3407 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
            let x_3414 : vec3<f32> = txVec37;
            let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
            u_xlat88 = x_3416;
            let x_3418 : f32 = u_xlat19.w;
            let x_3419 : f32 = u_xlat88;
            let x_3421 : f32 = u_xlat87;
            u_xlat87 = ((x_3418 * x_3419) + x_3421);
            let x_3424 : vec4<f32> = u_xlat17;
            let x_3425 : vec2<f32> = vec2<f32>(x_3424.x, x_3424.y);
            let x_3427 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
            let x_3434 : vec3<f32> = txVec38;
            let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
            u_xlat88 = x_3436;
            let x_3438 : f32 = u_xlat20.x;
            let x_3439 : f32 = u_xlat88;
            let x_3441 : f32 = u_xlat87;
            u_xlat87 = ((x_3438 * x_3439) + x_3441);
            let x_3444 : vec4<f32> = u_xlat17;
            let x_3445 : vec2<f32> = vec2<f32>(x_3444.z, x_3444.w);
            let x_3447 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec39;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat88 = x_3456;
            let x_3458 : f32 = u_xlat20.y;
            let x_3459 : f32 = u_xlat88;
            let x_3461 : f32 = u_xlat87;
            u_xlat87 = ((x_3458 * x_3459) + x_3461);
            let x_3464 : vec4<f32> = u_xlat15;
            let x_3465 : vec2<f32> = vec2<f32>(x_3464.z, x_3464.w);
            let x_3467 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3465.x, x_3465.y, x_3467);
            let x_3474 : vec3<f32> = txVec40;
            let x_3476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3474.xy, x_3474.z);
            u_xlat88 = x_3476;
            let x_3478 : f32 = u_xlat20.z;
            let x_3479 : f32 = u_xlat88;
            let x_3481 : f32 = u_xlat87;
            u_xlat87 = ((x_3478 * x_3479) + x_3481);
            let x_3484 : vec4<f32> = u_xlat14;
            let x_3485 : vec2<f32> = vec2<f32>(x_3484.x, x_3484.y);
            let x_3487 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3494 : vec3<f32> = txVec41;
            let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
            u_xlat88 = x_3496;
            let x_3498 : f32 = u_xlat20.w;
            let x_3499 : f32 = u_xlat88;
            let x_3501 : f32 = u_xlat87;
            u_xlat87 = ((x_3498 * x_3499) + x_3501);
            let x_3504 : vec4<f32> = u_xlat14;
            let x_3505 : vec2<f32> = vec2<f32>(x_3504.z, x_3504.w);
            let x_3507 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3505.x, x_3505.y, x_3507);
            let x_3514 : vec3<f32> = txVec42;
            let x_3516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3514.xy, x_3514.z);
            u_xlat88 = x_3516;
            let x_3517 : f32 = u_xlat86;
            let x_3518 : f32 = u_xlat88;
            let x_3520 : f32 = u_xlat87;
            u_xlat85 = ((x_3517 * x_3518) + x_3520);
          } else {
            let x_3523 : vec4<f32> = u_xlat11;
            let x_3526 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3529 : vec2<f32> = ((vec2<f32>(x_3523.x, x_3523.y) * vec2<f32>(x_3526.z, x_3526.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3530 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3529.x, x_3529.y, x_3530.z, x_3530.w);
            let x_3532 : vec4<f32> = u_xlat12;
            let x_3534 : vec2<f32> = floor(vec2<f32>(x_3532.x, x_3532.y));
            let x_3535 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3534.x, x_3534.y, x_3535.z, x_3535.w);
            let x_3537 : vec4<f32> = u_xlat11;
            let x_3540 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3543 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3537.x, x_3537.y) * vec2<f32>(x_3540.z, x_3540.w)) + -(vec2<f32>(x_3543.x, x_3543.y)));
            let x_3547 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3547.x, x_3547.x, x_3547.y, x_3547.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3550 : vec4<f32> = u_xlat13;
            let x_3552 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3550.x, x_3550.x, x_3550.z, x_3550.z) * vec4<f32>(x_3552.x, x_3552.x, x_3552.z, x_3552.z));
            let x_3555 : vec4<f32> = u_xlat14;
            let x_3557 : vec2<f32> = (vec2<f32>(x_3555.y, x_3555.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3558 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3558.x, x_3557.x, x_3558.z, x_3557.y);
            let x_3560 : vec4<f32> = u_xlat14;
            let x_3563 : vec2<f32> = u_xlat64;
            let x_3565 : vec2<f32> = ((vec2<f32>(x_3560.x, x_3560.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3563));
            let x_3566 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3565.x, x_3566.y, x_3565.y, x_3566.w);
            let x_3568 : vec2<f32> = u_xlat64;
            let x_3570 : vec2<f32> = (-(x_3568) + vec2<f32>(1.0f, 1.0f));
            let x_3571 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3570.x, x_3570.y, x_3571.z, x_3571.w);
            let x_3573 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3573, vec2<f32>(0.0f, 0.0f));
            let x_3575 : vec2<f32> = u_xlat66;
            let x_3577 : vec2<f32> = u_xlat66;
            let x_3579 : vec4<f32> = u_xlat14;
            let x_3581 : vec2<f32> = ((-(x_3575) * x_3577) + vec2<f32>(x_3579.x, x_3579.y));
            let x_3582 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3581.x, x_3581.y, x_3582.z, x_3582.w);
            let x_3584 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3584, vec2<f32>(0.0f, 0.0f));
            let x_3587 : vec2<f32> = u_xlat66;
            let x_3589 : vec2<f32> = u_xlat66;
            let x_3591 : vec4<f32> = u_xlat13;
            let x_3593 : vec2<f32> = ((-(x_3587) * x_3589) + vec2<f32>(x_3591.y, x_3591.w));
            let x_3594 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3593.x, x_3594.y, x_3593.y);
            let x_3596 : vec4<f32> = u_xlat14;
            let x_3598 : vec2<f32> = (vec2<f32>(x_3596.x, x_3596.y) + vec2<f32>(2.0f, 2.0f));
            let x_3599 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3598.x, x_3598.y, x_3599.z, x_3599.w);
            let x_3601 : vec3<f32> = u_xlat39;
            let x_3603 : vec2<f32> = (vec2<f32>(x_3601.x, x_3601.z) + vec2<f32>(2.0f, 2.0f));
            let x_3604 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3604.x, x_3603.x, x_3604.z, x_3603.y);
            let x_3607 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3607 * 0.08163200318813323975f);
            let x_3610 : vec4<f32> = u_xlat13;
            let x_3612 : vec3<f32> = (vec3<f32>(x_3610.z, x_3610.x, x_3610.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3613 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
            let x_3615 : vec4<f32> = u_xlat14;
            let x_3617 : vec2<f32> = (vec2<f32>(x_3615.x, x_3615.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3618 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3617.x, x_3617.y, x_3618.z, x_3618.w);
            let x_3621 : f32 = u_xlat17.y;
            u_xlat16.x = x_3621;
            let x_3623 : vec2<f32> = u_xlat64;
            let x_3626 : vec2<f32> = ((vec2<f32>(x_3623.x, x_3623.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3627 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3627.x, x_3626.x, x_3627.z, x_3626.y);
            let x_3629 : vec2<f32> = u_xlat64;
            let x_3632 : vec2<f32> = ((vec2<f32>(x_3629.x, x_3629.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3633 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3632.x, x_3633.y, x_3632.y, x_3633.w);
            let x_3636 : f32 = u_xlat13.x;
            u_xlat14.y = x_3636;
            let x_3639 : f32 = u_xlat15.y;
            u_xlat14.w = x_3639;
            let x_3641 : vec4<f32> = u_xlat14;
            let x_3642 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3641 + x_3642);
            let x_3644 : vec2<f32> = u_xlat64;
            let x_3647 : vec2<f32> = ((vec2<f32>(x_3644.y, x_3644.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3648 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3648.x, x_3647.x, x_3648.z, x_3647.y);
            let x_3650 : vec2<f32> = u_xlat64;
            let x_3653 : vec2<f32> = ((vec2<f32>(x_3650.y, x_3650.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3654 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3653.x, x_3654.y, x_3653.y, x_3654.w);
            let x_3657 : f32 = u_xlat13.y;
            u_xlat15.y = x_3657;
            let x_3659 : vec4<f32> = u_xlat15;
            let x_3660 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3659 + x_3660);
            let x_3662 : vec4<f32> = u_xlat14;
            let x_3663 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3662 / x_3663);
            let x_3665 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3665 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3667 : vec4<f32> = u_xlat15;
            let x_3668 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3667 / x_3668);
            let x_3670 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3670 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3672 : vec4<f32> = u_xlat14;
            let x_3675 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3672.w, x_3672.x, x_3672.y, x_3672.z) * vec4<f32>(x_3675.x, x_3675.x, x_3675.x, x_3675.x));
            let x_3678 : vec4<f32> = u_xlat15;
            let x_3681 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3678.x, x_3678.w, x_3678.y, x_3678.z) * vec4<f32>(x_3681.y, x_3681.y, x_3681.y, x_3681.y));
            let x_3684 : vec4<f32> = u_xlat14;
            let x_3685 : vec3<f32> = vec3<f32>(x_3684.y, x_3684.z, x_3684.w);
            let x_3686 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3685.x, x_3686.y, x_3685.y, x_3685.z);
            let x_3689 : f32 = u_xlat15.x;
            u_xlat17.y = x_3689;
            let x_3691 : vec4<f32> = u_xlat12;
            let x_3694 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3697 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3691.x, x_3691.y, x_3691.x, x_3691.y) * vec4<f32>(x_3694.x, x_3694.y, x_3694.x, x_3694.y)) + vec4<f32>(x_3697.x, x_3697.y, x_3697.z, x_3697.y));
            let x_3700 : vec4<f32> = u_xlat12;
            let x_3703 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3706 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3700.x, x_3700.y) * vec2<f32>(x_3703.x, x_3703.y)) + vec2<f32>(x_3706.w, x_3706.y));
            let x_3710 : f32 = u_xlat17.y;
            u_xlat14.y = x_3710;
            let x_3713 : f32 = u_xlat15.z;
            u_xlat17.y = x_3713;
            let x_3715 : vec4<f32> = u_xlat12;
            let x_3718 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3721 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3715.x, x_3715.y, x_3715.x, x_3715.y) * vec4<f32>(x_3718.x, x_3718.y, x_3718.x, x_3718.y)) + vec4<f32>(x_3721.x, x_3721.y, x_3721.z, x_3721.y));
            let x_3724 : vec4<f32> = u_xlat12;
            let x_3727 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3730 : vec4<f32> = u_xlat17;
            let x_3732 : vec2<f32> = ((vec2<f32>(x_3724.x, x_3724.y) * vec2<f32>(x_3727.x, x_3727.y)) + vec2<f32>(x_3730.w, x_3730.y));
            let x_3733 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3732.x, x_3732.y, x_3733.z, x_3733.w);
            let x_3736 : f32 = u_xlat17.y;
            u_xlat14.z = x_3736;
            let x_3739 : vec4<f32> = u_xlat12;
            let x_3742 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3745 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3739.x, x_3739.y, x_3739.x, x_3739.y) * vec4<f32>(x_3742.x, x_3742.y, x_3742.x, x_3742.y)) + vec4<f32>(x_3745.x, x_3745.y, x_3745.x, x_3745.z));
            let x_3749 : f32 = u_xlat15.w;
            u_xlat17.y = x_3749;
            let x_3752 : vec4<f32> = u_xlat12;
            let x_3755 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3758 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3752.x, x_3752.y, x_3752.x, x_3752.y) * vec4<f32>(x_3755.x, x_3755.y, x_3755.x, x_3755.y)) + vec4<f32>(x_3758.x, x_3758.y, x_3758.z, x_3758.y));
            let x_3762 : vec4<f32> = u_xlat12;
            let x_3765 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3768 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3762.x, x_3762.y) * vec2<f32>(x_3765.x, x_3765.y)) + vec2<f32>(x_3768.w, x_3768.y));
            let x_3772 : f32 = u_xlat17.y;
            u_xlat14.w = x_3772;
            let x_3775 : vec4<f32> = u_xlat12;
            let x_3778 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3781 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3775.x, x_3775.y) * vec2<f32>(x_3778.x, x_3778.y)) + vec2<f32>(x_3781.x, x_3781.w));
            let x_3784 : vec4<f32> = u_xlat17;
            let x_3785 : vec3<f32> = vec3<f32>(x_3784.x, x_3784.z, x_3784.w);
            let x_3786 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3785.x, x_3786.y, x_3785.y, x_3785.z);
            let x_3788 : vec4<f32> = u_xlat12;
            let x_3791 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3794 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3788.x, x_3788.y, x_3788.x, x_3788.y) * vec4<f32>(x_3791.x, x_3791.y, x_3791.x, x_3791.y)) + vec4<f32>(x_3794.x, x_3794.y, x_3794.z, x_3794.y));
            let x_3798 : vec4<f32> = u_xlat12;
            let x_3801 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3804 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3798.x, x_3798.y) * vec2<f32>(x_3801.x, x_3801.y)) + vec2<f32>(x_3804.w, x_3804.y));
            let x_3808 : f32 = u_xlat14.x;
            u_xlat15.x = x_3808;
            let x_3810 : vec4<f32> = u_xlat12;
            let x_3813 : vec4<f32> = x_961.x_AdditionalShadowmapSize;
            let x_3816 : vec4<f32> = u_xlat15;
            let x_3818 : vec2<f32> = ((vec2<f32>(x_3810.x, x_3810.y) * vec2<f32>(x_3813.x, x_3813.y)) + vec2<f32>(x_3816.x, x_3816.y));
            let x_3819 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3818.x, x_3818.y, x_3819.z, x_3819.w);
            let x_3822 : vec4<f32> = u_xlat13;
            let x_3824 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3822.x, x_3822.x, x_3822.x, x_3822.x) * x_3824);
            let x_3827 : vec4<f32> = u_xlat13;
            let x_3829 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3827.y, x_3827.y, x_3827.y, x_3827.y) * x_3829);
            let x_3832 : vec4<f32> = u_xlat13;
            let x_3834 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3832.z, x_3832.z, x_3832.z, x_3832.z) * x_3834);
            let x_3836 : vec4<f32> = u_xlat13;
            let x_3838 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3836.w, x_3836.w, x_3836.w, x_3836.w) * x_3838);
            let x_3841 : vec4<f32> = u_xlat18;
            let x_3842 : vec2<f32> = vec2<f32>(x_3841.x, x_3841.y);
            let x_3844 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3842.x, x_3842.y, x_3844);
            let x_3851 : vec3<f32> = txVec43;
            let x_3853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3851.xy, x_3851.z);
            u_xlat86 = x_3853;
            let x_3855 : vec4<f32> = u_xlat18;
            let x_3856 : vec2<f32> = vec2<f32>(x_3855.z, x_3855.w);
            let x_3858 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3856.x, x_3856.y, x_3858);
            let x_3865 : vec3<f32> = txVec44;
            let x_3867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3865.xy, x_3865.z);
            u_xlat87 = x_3867;
            let x_3868 : f32 = u_xlat87;
            let x_3870 : f32 = u_xlat23.y;
            u_xlat87 = (x_3868 * x_3870);
            let x_3873 : f32 = u_xlat23.x;
            let x_3874 : f32 = u_xlat86;
            let x_3876 : f32 = u_xlat87;
            u_xlat86 = ((x_3873 * x_3874) + x_3876);
            let x_3879 : vec2<f32> = u_xlat64;
            let x_3881 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3879.x, x_3879.y, x_3881);
            let x_3888 : vec3<f32> = txVec45;
            let x_3890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3888.xy, x_3888.z);
            u_xlat87 = x_3890;
            let x_3892 : f32 = u_xlat23.z;
            let x_3893 : f32 = u_xlat87;
            let x_3895 : f32 = u_xlat86;
            u_xlat86 = ((x_3892 * x_3893) + x_3895);
            let x_3898 : vec4<f32> = u_xlat21;
            let x_3899 : vec2<f32> = vec2<f32>(x_3898.x, x_3898.y);
            let x_3901 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3899.x, x_3899.y, x_3901);
            let x_3908 : vec3<f32> = txVec46;
            let x_3910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3908.xy, x_3908.z);
            u_xlat87 = x_3910;
            let x_3912 : f32 = u_xlat23.w;
            let x_3913 : f32 = u_xlat87;
            let x_3915 : f32 = u_xlat86;
            u_xlat86 = ((x_3912 * x_3913) + x_3915);
            let x_3918 : vec4<f32> = u_xlat19;
            let x_3919 : vec2<f32> = vec2<f32>(x_3918.x, x_3918.y);
            let x_3921 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3919.x, x_3919.y, x_3921);
            let x_3928 : vec3<f32> = txVec47;
            let x_3930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3928.xy, x_3928.z);
            u_xlat87 = x_3930;
            let x_3932 : f32 = u_xlat24.x;
            let x_3933 : f32 = u_xlat87;
            let x_3935 : f32 = u_xlat86;
            u_xlat86 = ((x_3932 * x_3933) + x_3935);
            let x_3938 : vec4<f32> = u_xlat19;
            let x_3939 : vec2<f32> = vec2<f32>(x_3938.z, x_3938.w);
            let x_3941 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3939.x, x_3939.y, x_3941);
            let x_3948 : vec3<f32> = txVec48;
            let x_3950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3948.xy, x_3948.z);
            u_xlat87 = x_3950;
            let x_3952 : f32 = u_xlat24.y;
            let x_3953 : f32 = u_xlat87;
            let x_3955 : f32 = u_xlat86;
            u_xlat86 = ((x_3952 * x_3953) + x_3955);
            let x_3958 : vec4<f32> = u_xlat20;
            let x_3959 : vec2<f32> = vec2<f32>(x_3958.x, x_3958.y);
            let x_3961 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3959.x, x_3959.y, x_3961);
            let x_3968 : vec3<f32> = txVec49;
            let x_3970 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3968.xy, x_3968.z);
            u_xlat87 = x_3970;
            let x_3972 : f32 = u_xlat24.z;
            let x_3973 : f32 = u_xlat87;
            let x_3975 : f32 = u_xlat86;
            u_xlat86 = ((x_3972 * x_3973) + x_3975);
            let x_3978 : vec4<f32> = u_xlat21;
            let x_3979 : vec2<f32> = vec2<f32>(x_3978.z, x_3978.w);
            let x_3981 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3979.x, x_3979.y, x_3981);
            let x_3988 : vec3<f32> = txVec50;
            let x_3990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3988.xy, x_3988.z);
            u_xlat87 = x_3990;
            let x_3992 : f32 = u_xlat24.w;
            let x_3993 : f32 = u_xlat87;
            let x_3995 : f32 = u_xlat86;
            u_xlat86 = ((x_3992 * x_3993) + x_3995);
            let x_3998 : vec4<f32> = u_xlat22;
            let x_3999 : vec2<f32> = vec2<f32>(x_3998.x, x_3998.y);
            let x_4001 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3999.x, x_3999.y, x_4001);
            let x_4008 : vec3<f32> = txVec51;
            let x_4010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4008.xy, x_4008.z);
            u_xlat87 = x_4010;
            let x_4012 : f32 = u_xlat25.x;
            let x_4013 : f32 = u_xlat87;
            let x_4015 : f32 = u_xlat86;
            u_xlat86 = ((x_4012 * x_4013) + x_4015);
            let x_4018 : vec4<f32> = u_xlat22;
            let x_4019 : vec2<f32> = vec2<f32>(x_4018.z, x_4018.w);
            let x_4021 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4019.x, x_4019.y, x_4021);
            let x_4028 : vec3<f32> = txVec52;
            let x_4030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4028.xy, x_4028.z);
            u_xlat87 = x_4030;
            let x_4032 : f32 = u_xlat25.y;
            let x_4033 : f32 = u_xlat87;
            let x_4035 : f32 = u_xlat86;
            u_xlat86 = ((x_4032 * x_4033) + x_4035);
            let x_4038 : vec2<f32> = u_xlat40;
            let x_4040 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4038.x, x_4038.y, x_4040);
            let x_4047 : vec3<f32> = txVec53;
            let x_4049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4047.xy, x_4047.z);
            u_xlat87 = x_4049;
            let x_4051 : f32 = u_xlat25.z;
            let x_4052 : f32 = u_xlat87;
            let x_4054 : f32 = u_xlat86;
            u_xlat86 = ((x_4051 * x_4052) + x_4054);
            let x_4057 : vec2<f32> = u_xlat72;
            let x_4059 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4057.x, x_4057.y, x_4059);
            let x_4066 : vec3<f32> = txVec54;
            let x_4068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4066.xy, x_4066.z);
            u_xlat87 = x_4068;
            let x_4070 : f32 = u_xlat25.w;
            let x_4071 : f32 = u_xlat87;
            let x_4073 : f32 = u_xlat86;
            u_xlat86 = ((x_4070 * x_4071) + x_4073);
            let x_4076 : vec4<f32> = u_xlat17;
            let x_4077 : vec2<f32> = vec2<f32>(x_4076.x, x_4076.y);
            let x_4079 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4077.x, x_4077.y, x_4079);
            let x_4086 : vec3<f32> = txVec55;
            let x_4088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4086.xy, x_4086.z);
            u_xlat87 = x_4088;
            let x_4090 : f32 = u_xlat13.x;
            let x_4091 : f32 = u_xlat87;
            let x_4093 : f32 = u_xlat86;
            u_xlat86 = ((x_4090 * x_4091) + x_4093);
            let x_4096 : vec4<f32> = u_xlat17;
            let x_4097 : vec2<f32> = vec2<f32>(x_4096.z, x_4096.w);
            let x_4099 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4097.x, x_4097.y, x_4099);
            let x_4106 : vec3<f32> = txVec56;
            let x_4108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4106.xy, x_4106.z);
            u_xlat87 = x_4108;
            let x_4110 : f32 = u_xlat13.y;
            let x_4111 : f32 = u_xlat87;
            let x_4113 : f32 = u_xlat86;
            u_xlat86 = ((x_4110 * x_4111) + x_4113);
            let x_4116 : vec2<f32> = u_xlat67;
            let x_4118 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4116.x, x_4116.y, x_4118);
            let x_4125 : vec3<f32> = txVec57;
            let x_4127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4125.xy, x_4125.z);
            u_xlat87 = x_4127;
            let x_4129 : f32 = u_xlat13.z;
            let x_4130 : f32 = u_xlat87;
            let x_4132 : f32 = u_xlat86;
            u_xlat86 = ((x_4129 * x_4130) + x_4132);
            let x_4135 : vec4<f32> = u_xlat12;
            let x_4136 : vec2<f32> = vec2<f32>(x_4135.x, x_4135.y);
            let x_4138 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4136.x, x_4136.y, x_4138);
            let x_4145 : vec3<f32> = txVec58;
            let x_4147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4145.xy, x_4145.z);
            u_xlat87 = x_4147;
            let x_4149 : f32 = u_xlat13.w;
            let x_4150 : f32 = u_xlat87;
            let x_4152 : f32 = u_xlat86;
            u_xlat85 = ((x_4149 * x_4150) + x_4152);
          }
        }
      } else {
        let x_4156 : vec4<f32> = u_xlat11;
        let x_4157 : vec2<f32> = vec2<f32>(x_4156.x, x_4156.y);
        let x_4159 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4157.x, x_4157.y, x_4159);
        let x_4166 : vec3<f32> = txVec59;
        let x_4168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4166.xy, x_4166.z);
        u_xlat85 = x_4168;
      }
      let x_4169 : i32 = u_xlati5;
      let x_4171 : f32 = x_961.x_AdditionalShadowParams[x_4169].x;
      u_xlat86 = (1.0f + -(x_4171));
      let x_4174 : f32 = u_xlat85;
      let x_4175 : i32 = u_xlati5;
      let x_4177 : f32 = x_961.x_AdditionalShadowParams[x_4175].x;
      let x_4179 : f32 = u_xlat86;
      u_xlat85 = ((x_4174 * x_4177) + x_4179);
      let x_4182 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4182);
      let x_4186 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4186 >= 1.0f);
      let x_4188 : bool = u_xlatb86;
      let x_4189 : bool = u_xlatb87;
      u_xlatb86 = (x_4188 | x_4189);
      let x_4191 : bool = u_xlatb86;
      let x_4192 : f32 = u_xlat85;
      u_xlat85 = select(x_4192, 1.0f, x_4191);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4195 : f32 = u_xlat85;
    u_xlat86 = (-(x_4195) + 1.0f);
    let x_4198 : f32 = u_xlat80;
    let x_4199 : f32 = u_xlat86;
    let x_4201 : f32 = u_xlat85;
    u_xlat85 = ((x_4198 * x_4199) + x_4201);
    let x_4204 : i32 = u_xlati5;
    u_xlati86 = (1i << bitcast<u32>((x_4204 & 31i)));
    let x_4207 : i32 = u_xlati86;
    let x_4210 : f32 = x_2307.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4207) & bitcast<u32>(x_4210)));
    let x_4214 : i32 = u_xlati86;
    if ((x_4214 != 0i)) {
      let x_4218 : i32 = u_xlati5;
      let x_4220 : f32 = x_2307.x_AdditionalLightsLightTypes[x_4218].el;
      u_xlati86 = i32(x_4220);
      let x_4223 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4223 != 0i));
      let x_4227 : i32 = u_xlati5;
      u_xlati88 = (x_4227 << bitcast<u32>(2i));
      let x_4229 : i32 = u_xlati87;
      if ((x_4229 != 0i)) {
        let x_4233 : vec3<f32> = vs_TEXCOORD7;
        let x_4235 : i32 = u_xlati88;
        let x_4238 : i32 = u_xlati88;
        let x_4242 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4235 + 1i) / 4i)][((x_4238 + 1i) % 4i)];
        let x_4244 : vec3<f32> = (vec3<f32>(x_4233.y, x_4233.y, x_4233.y) * vec3<f32>(x_4242.x, x_4242.y, x_4242.w));
        let x_4245 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4244.x, x_4244.y, x_4244.z, x_4245.w);
        let x_4247 : i32 = u_xlati88;
        let x_4249 : i32 = u_xlati88;
        let x_4252 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[(x_4247 / 4i)][(x_4249 % 4i)];
        let x_4254 : vec3<f32> = vs_TEXCOORD7;
        let x_4257 : vec4<f32> = u_xlat11;
        let x_4259 : vec3<f32> = ((vec3<f32>(x_4252.x, x_4252.y, x_4252.w) * vec3<f32>(x_4254.x, x_4254.x, x_4254.x)) + vec3<f32>(x_4257.x, x_4257.y, x_4257.z));
        let x_4260 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4259.x, x_4259.y, x_4259.z, x_4260.w);
        let x_4262 : i32 = u_xlati88;
        let x_4265 : i32 = u_xlati88;
        let x_4269 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4262 + 2i) / 4i)][((x_4265 + 2i) % 4i)];
        let x_4271 : vec3<f32> = vs_TEXCOORD7;
        let x_4274 : vec4<f32> = u_xlat11;
        let x_4276 : vec3<f32> = ((vec3<f32>(x_4269.x, x_4269.y, x_4269.w) * vec3<f32>(x_4271.z, x_4271.z, x_4271.z)) + vec3<f32>(x_4274.x, x_4274.y, x_4274.z));
        let x_4277 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4276.x, x_4276.y, x_4276.z, x_4277.w);
        let x_4279 : vec4<f32> = u_xlat11;
        let x_4281 : i32 = u_xlati88;
        let x_4284 : i32 = u_xlati88;
        let x_4288 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4281 + 3i) / 4i)][((x_4284 + 3i) % 4i)];
        let x_4290 : vec3<f32> = (vec3<f32>(x_4279.x, x_4279.y, x_4279.z) + vec3<f32>(x_4288.x, x_4288.y, x_4288.w));
        let x_4291 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4290.x, x_4290.y, x_4290.z, x_4291.w);
        let x_4293 : vec4<f32> = u_xlat11;
        let x_4295 : vec4<f32> = u_xlat11;
        let x_4297 : vec2<f32> = (vec2<f32>(x_4293.x, x_4293.y) / vec2<f32>(x_4295.z, x_4295.z));
        let x_4298 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4297.x, x_4297.y, x_4298.z, x_4298.w);
        let x_4300 : vec4<f32> = u_xlat11;
        let x_4303 : vec2<f32> = ((vec2<f32>(x_4300.x, x_4300.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4304 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4303.x, x_4303.y, x_4304.z, x_4304.w);
        let x_4306 : vec4<f32> = u_xlat11;
        let x_4310 : vec2<f32> = clamp(vec2<f32>(x_4306.x, x_4306.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4311 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4310.x, x_4310.y, x_4311.z, x_4311.w);
        let x_4313 : i32 = u_xlati5;
        let x_4315 : vec4<f32> = x_2307.x_AdditionalLightsCookieAtlasUVRects[x_4313];
        let x_4317 : vec4<f32> = u_xlat11;
        let x_4320 : i32 = u_xlati5;
        let x_4322 : vec4<f32> = x_2307.x_AdditionalLightsCookieAtlasUVRects[x_4320];
        let x_4324 : vec2<f32> = ((vec2<f32>(x_4315.x, x_4315.y) * vec2<f32>(x_4317.x, x_4317.y)) + vec2<f32>(x_4322.z, x_4322.w));
        let x_4325 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4324.x, x_4324.y, x_4325.z, x_4325.w);
      } else {
        let x_4328 : i32 = u_xlati86;
        u_xlatb86 = (x_4328 == 1i);
        let x_4330 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4330);
        let x_4332 : i32 = u_xlati86;
        if ((x_4332 != 0i)) {
          let x_4337 : vec3<f32> = vs_TEXCOORD7;
          let x_4339 : i32 = u_xlati88;
          let x_4342 : i32 = u_xlati88;
          let x_4346 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4339 + 1i) / 4i)][((x_4342 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4337.y, x_4337.y) * vec2<f32>(x_4346.x, x_4346.y));
          let x_4349 : i32 = u_xlati88;
          let x_4351 : i32 = u_xlati88;
          let x_4354 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[(x_4349 / 4i)][(x_4351 % 4i)];
          let x_4356 : vec3<f32> = vs_TEXCOORD7;
          let x_4359 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4354.x, x_4354.y) * vec2<f32>(x_4356.x, x_4356.x)) + x_4359);
          let x_4361 : i32 = u_xlati88;
          let x_4364 : i32 = u_xlati88;
          let x_4368 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4361 + 2i) / 4i)][((x_4364 + 2i) % 4i)];
          let x_4370 : vec3<f32> = vs_TEXCOORD7;
          let x_4373 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4368.x, x_4368.y) * vec2<f32>(x_4370.z, x_4370.z)) + x_4373);
          let x_4375 : vec2<f32> = u_xlat63;
          let x_4376 : i32 = u_xlati88;
          let x_4379 : i32 = u_xlati88;
          let x_4383 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4376 + 3i) / 4i)][((x_4379 + 3i) % 4i)];
          u_xlat63 = (x_4375 + vec2<f32>(x_4383.x, x_4383.y));
          let x_4386 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4386 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4389 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4389);
          let x_4391 : i32 = u_xlati5;
          let x_4393 : vec4<f32> = x_2307.x_AdditionalLightsCookieAtlasUVRects[x_4391];
          let x_4395 : vec2<f32> = u_xlat63;
          let x_4397 : i32 = u_xlati5;
          let x_4399 : vec4<f32> = x_2307.x_AdditionalLightsCookieAtlasUVRects[x_4397];
          let x_4401 : vec2<f32> = ((vec2<f32>(x_4393.x, x_4393.y) * x_4395) + vec2<f32>(x_4399.z, x_4399.w));
          let x_4402 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4401.x, x_4401.y, x_4402.z, x_4402.w);
        } else {
          let x_4405 : vec3<f32> = vs_TEXCOORD7;
          let x_4407 : i32 = u_xlati88;
          let x_4410 : i32 = u_xlati88;
          let x_4414 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4407 + 1i) / 4i)][((x_4410 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4405.y, x_4405.y, x_4405.y, x_4405.y) * x_4414);
          let x_4416 : i32 = u_xlati88;
          let x_4418 : i32 = u_xlati88;
          let x_4421 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[(x_4416 / 4i)][(x_4418 % 4i)];
          let x_4422 : vec3<f32> = vs_TEXCOORD7;
          let x_4425 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4421 * vec4<f32>(x_4422.x, x_4422.x, x_4422.x, x_4422.x)) + x_4425);
          let x_4427 : i32 = u_xlati88;
          let x_4430 : i32 = u_xlati88;
          let x_4434 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4427 + 2i) / 4i)][((x_4430 + 2i) % 4i)];
          let x_4435 : vec3<f32> = vs_TEXCOORD7;
          let x_4438 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4434 * vec4<f32>(x_4435.z, x_4435.z, x_4435.z, x_4435.z)) + x_4438);
          let x_4440 : vec4<f32> = u_xlat12;
          let x_4441 : i32 = u_xlati88;
          let x_4444 : i32 = u_xlati88;
          let x_4448 : vec4<f32> = x_2307.x_AdditionalLightsWorldToLights[((x_4441 + 3i) / 4i)][((x_4444 + 3i) % 4i)];
          u_xlat12 = (x_4440 + x_4448);
          let x_4450 : vec4<f32> = u_xlat12;
          let x_4452 : vec4<f32> = u_xlat12;
          let x_4454 : vec3<f32> = (vec3<f32>(x_4450.x, x_4450.y, x_4450.z) / vec3<f32>(x_4452.w, x_4452.w, x_4452.w));
          let x_4455 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4454.x, x_4454.y, x_4454.z, x_4455.w);
          let x_4457 : vec4<f32> = u_xlat12;
          let x_4459 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4457.x, x_4457.y, x_4457.z), vec3<f32>(x_4459.x, x_4459.y, x_4459.z));
          let x_4462 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4462);
          let x_4464 : f32 = u_xlat86;
          let x_4466 : vec4<f32> = u_xlat12;
          let x_4468 : vec3<f32> = (vec3<f32>(x_4464, x_4464, x_4464) * vec3<f32>(x_4466.x, x_4466.y, x_4466.z));
          let x_4469 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4468.x, x_4468.y, x_4468.z, x_4469.w);
          let x_4471 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4471.x, x_4471.y, x_4471.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4476 : f32 = u_xlat86;
          u_xlat86 = max(x_4476, 0.00000099999999747524f);
          let x_4479 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4479);
          let x_4481 : f32 = u_xlat86;
          let x_4483 : vec4<f32> = u_xlat12;
          let x_4485 : vec3<f32> = (vec3<f32>(x_4481, x_4481, x_4481) * vec3<f32>(x_4483.z, x_4483.x, x_4483.y));
          let x_4486 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4485.x, x_4485.y, x_4485.z, x_4486.w);
          let x_4489 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4489);
          let x_4493 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4493, 0.0f, 1.0f);
          let x_4497 : vec4<f32> = u_xlat13;
          let x_4499 : vec4<bool> = (vec4<f32>(x_4497.y, x_4497.z, x_4497.y, x_4497.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4499.x, x_4499.y);
          let x_4502 : bool = u_xlatb63.x;
          if (x_4502) {
            let x_4507 : f32 = u_xlat13.x;
            x_4503 = x_4507;
          } else {
            let x_4510 : f32 = u_xlat13.x;
            x_4503 = -(x_4510);
          }
          let x_4512 : f32 = x_4503;
          u_xlat63.x = x_4512;
          let x_4515 : bool = u_xlatb63.y;
          if (x_4515) {
            let x_4520 : f32 = u_xlat13.x;
            x_4516 = x_4520;
          } else {
            let x_4523 : f32 = u_xlat13.x;
            x_4516 = -(x_4523);
          }
          let x_4525 : f32 = x_4516;
          u_xlat63.y = x_4525;
          let x_4527 : vec4<f32> = u_xlat12;
          let x_4529 : f32 = u_xlat86;
          let x_4532 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4527.x, x_4527.y) * vec2<f32>(x_4529, x_4529)) + x_4532);
          let x_4534 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4534 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4537 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4537, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4541 : i32 = u_xlati5;
          let x_4543 : vec4<f32> = x_2307.x_AdditionalLightsCookieAtlasUVRects[x_4541];
          let x_4545 : vec2<f32> = u_xlat63;
          let x_4547 : i32 = u_xlati5;
          let x_4549 : vec4<f32> = x_2307.x_AdditionalLightsCookieAtlasUVRects[x_4547];
          let x_4551 : vec2<f32> = ((vec2<f32>(x_4543.x, x_4543.y) * x_4545) + vec2<f32>(x_4549.z, x_4549.w));
          let x_4552 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4551.x, x_4551.y, x_4552.z, x_4552.w);
        }
      }
      let x_4559 : vec4<f32> = u_xlat11;
      let x_4561 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4559.x, x_4559.y), 0.0f);
      u_xlat11 = x_4561;
      let x_4563 : bool = u_xlatb7.y;
      if (x_4563) {
        let x_4568 : f32 = u_xlat11.w;
        x_4564 = x_4568;
      } else {
        let x_4571 : f32 = u_xlat11.x;
        x_4564 = x_4571;
      }
      let x_4572 : f32 = x_4564;
      u_xlat86 = x_4572;
      let x_4574 : bool = u_xlatb7.x;
      if (x_4574) {
        let x_4578 : vec4<f32> = u_xlat11;
        x_4575 = vec3<f32>(x_4578.x, x_4578.y, x_4578.z);
      } else {
        let x_4581 : f32 = u_xlat86;
        x_4575 = vec3<f32>(x_4581, x_4581, x_4581);
      }
      let x_4583 : vec3<f32> = x_4575;
      let x_4584 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4583.x, x_4583.y, x_4583.z, x_4584.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4590 : vec4<f32> = u_xlat11;
    let x_4592 : i32 = u_xlati5;
    let x_4594 : vec4<f32> = x_2784.x_AdditionalLightsColor[x_4592];
    let x_4596 : vec3<f32> = (vec3<f32>(x_4590.x, x_4590.y, x_4590.z) * vec3<f32>(x_4594.x, x_4594.y, x_4594.z));
    let x_4597 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4596.x, x_4596.y, x_4596.z, x_4597.w);
    let x_4599 : f32 = u_xlat84;
    let x_4600 : f32 = u_xlat85;
    u_xlat5.x = (x_4599 * x_4600);
    let x_4603 : vec4<f32> = u_xlat1;
    let x_4605 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4603.x, x_4603.y, x_4603.z), vec3<f32>(x_4605.x, x_4605.y, x_4605.z));
    let x_4608 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4608, 0.0f, 1.0f);
    let x_4611 : f32 = u_xlat5.x;
    let x_4612 : f32 = u_xlat84;
    u_xlat5.x = (x_4611 * x_4612);
    let x_4615 : vec4<f32> = u_xlat5;
    let x_4617 : vec4<f32> = u_xlat11;
    let x_4619 : vec3<f32> = (vec3<f32>(x_4615.x, x_4615.x, x_4615.x) * vec3<f32>(x_4617.x, x_4617.y, x_4617.z));
    let x_4620 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4619.x, x_4619.y, x_4619.z, x_4620.w);
    let x_4622 : vec4<f32> = u_xlat9;
    let x_4624 : vec2<f32> = u_xlat59;
    let x_4627 : vec4<f32> = u_xlat6;
    let x_4629 : vec3<f32> = ((vec3<f32>(x_4622.x, x_4622.y, x_4622.z) * vec3<f32>(x_4624.x, x_4624.x, x_4624.x)) + vec3<f32>(x_4627.x, x_4627.y, x_4627.z));
    let x_4630 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4629.x, x_4629.y, x_4629.z, x_4630.w);
    let x_4632 : vec4<f32> = u_xlat9;
    let x_4634 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4632.x, x_4632.y, x_4632.z), vec3<f32>(x_4634.x, x_4634.y, x_4634.z));
    let x_4639 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_4639, 1.17549435e-38f);
    let x_4643 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_4643);
    let x_4646 : vec4<f32> = u_xlat5;
    let x_4648 : vec4<f32> = u_xlat9;
    let x_4650 : vec3<f32> = (vec3<f32>(x_4646.x, x_4646.x, x_4646.x) * vec3<f32>(x_4648.x, x_4648.y, x_4648.z));
    let x_4651 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4650.x, x_4650.y, x_4650.z, x_4651.w);
    let x_4653 : vec4<f32> = u_xlat1;
    let x_4655 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4653.x, x_4653.y, x_4653.z), vec3<f32>(x_4655.x, x_4655.y, x_4655.z));
    let x_4660 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_4660, 0.0f, 1.0f);
    let x_4663 : vec4<f32> = u_xlat10;
    let x_4665 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4663.x, x_4663.y, x_4663.z), vec3<f32>(x_4665.x, x_4665.y, x_4665.z));
    let x_4668 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4668, 0.0f, 1.0f);
    let x_4671 : f32 = u_xlat5.x;
    let x_4673 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4671 * x_4673);
    let x_4677 : f32 = u_xlat5.x;
    let x_4679 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_4677 * x_4679) + 1.00001001358032226562f);
    let x_4683 : f32 = u_xlat84;
    let x_4684 : f32 = u_xlat84;
    u_xlat84 = (x_4683 * x_4684);
    let x_4687 : f32 = u_xlat5.x;
    let x_4689 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4687 * x_4689);
    let x_4692 : f32 = u_xlat84;
    u_xlat84 = max(x_4692, 0.10000000149011611938f);
    let x_4695 : f32 = u_xlat5.x;
    let x_4696 : f32 = u_xlat84;
    u_xlat5.x = (x_4695 * x_4696);
    let x_4699 : f32 = u_xlat81;
    let x_4701 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4699 * x_4701);
    let x_4704 : f32 = u_xlat79;
    let x_4706 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4704 / x_4706);
    let x_4709 : vec4<f32> = u_xlat4;
    let x_4711 : vec4<f32> = u_xlat5;
    let x_4714 : vec4<f32> = u_xlat3;
    let x_4716 : vec3<f32> = ((vec3<f32>(x_4709.x, x_4709.y, x_4709.z) * vec3<f32>(x_4711.x, x_4711.x, x_4711.x)) + vec3<f32>(x_4714.x, x_4714.y, x_4714.z));
    let x_4717 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4716.x, x_4716.y, x_4716.z, x_4717.w);
    let x_4719 : vec4<f32> = u_xlat9;
    let x_4721 : vec4<f32> = u_xlat11;
    let x_4724 : vec4<f32> = u_xlat8;
    let x_4726 : vec3<f32> = ((vec3<f32>(x_4719.x, x_4719.y, x_4719.z) * vec3<f32>(x_4721.x, x_4721.y, x_4721.z)) + vec3<f32>(x_4724.x, x_4724.y, x_4724.z));
    let x_4727 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4726.x, x_4726.y, x_4726.z, x_4727.w);

    continuing {
      let x_4729 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4729 + bitcast<u32>(1i));
    }
  }
  let x_4731 : vec3<f32> = u_xlat2;
  let x_4732 : f32 = u_xlat26;
  let x_4735 : vec3<f32> = u_xlat31;
  u_xlat0 = ((x_4731 * vec3<f32>(x_4732, x_4732, x_4732)) + x_4735);
  let x_4737 : vec4<f32> = u_xlat8;
  let x_4739 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4737.x, x_4737.y, x_4737.z) + x_4739);
  let x_4743 : f32 = u_xlat78;
  let x_4745 : vec3<f32> = u_xlat0;
  let x_4746 : vec3<f32> = (vec3<f32>(x_4743, x_4743, x_4743) * x_4745);
  let x_4747 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4746.x, x_4746.y, x_4746.z, x_4747.w);
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


