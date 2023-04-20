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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

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

var<private> u_xlatb76 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat76 : f32;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat77 : f32;

@group(1) @binding(2) var<uniform> x_1050 : UnityPerDraw;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2873 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu76 : u32;

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
  var x_2467 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3007 : f32;
  var x_3018 : f32;
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
  u_xlat75 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb76 = (4.0f >= x_208);
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
  let x_270 : bool = u_xlatb76;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat76;
  u_xlat76 = (x_279 + 0.00006103515625f);
  let x_282 : vec4<f32> = u_xlat4;
  let x_283 : f32 = u_xlat76;
  u_xlat4 = (x_282 / vec4<f32>(x_283, x_283, x_283, x_283));
  let x_286 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_299 : vec3<f32> = (vec3<f32>(x_294.y, x_294.y, x_294.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat6;
  let x_304 : vec4<f32> = u_xlat12;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat11;
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.z, x_319.z, x_319.z) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat7;
  let x_329 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_342 : vec3<f32> = (vec3<f32>(x_337.w, x_337.w, x_337.w) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat8;
  let x_347 : vec4<f32> = u_xlat6;
  let x_350 : vec4<f32> = u_xlat5;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_363 : f32 = x_113.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_360.x, x_360.y), x_363);
  let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.w);
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = u_xlat6.x;
  let x_371 : f32 = u_xlat6.z;
  u_xlat6.x = (x_369 * x_371);
  let x_374 : vec4<f32> = u_xlat6;
  let x_379 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_382.x, x_382.y), vec2<f32>(x_384.x, x_384.y));
  let x_387 : f32 = u_xlat76;
  u_xlat76 = min(x_387, 1.0f);
  let x_389 : f32 = u_xlat76;
  u_xlat76 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_392);
  let x_394 : f32 = u_xlat76;
  u_xlat7.z = max(x_394, 0.0000000000000001f);
  let x_398 : vec4<f32> = u_xlat6;
  let x_401 : f32 = x_13.x_NormalScale0;
  let x_403 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401, x_401));
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_410 : vec4<f32> = vs_TEXCOORD1;
  let x_413 : f32 = x_113.x_GlobalMipBias.x;
  let x_414 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_410.z, x_410.w), x_413);
  let x_415 : vec3<f32> = vec3<f32>(x_414.x, x_414.y, x_414.w);
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat6.x;
  let x_421 : f32 = u_xlat6.z;
  u_xlat6.x = (x_419 * x_421);
  let x_424 : vec4<f32> = u_xlat6;
  let x_427 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_430.x, x_430.y), vec2<f32>(x_432.x, x_432.y));
  let x_435 : f32 = u_xlat76;
  u_xlat76 = min(x_435, 1.0f);
  let x_437 : f32 = u_xlat76;
  u_xlat76 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_440);
  let x_442 : f32 = u_xlat76;
  u_xlat8.z = max(x_442, 0.0000000000000001f);
  let x_445 : vec4<f32> = u_xlat6;
  let x_449 : f32 = x_13.x_NormalScale1;
  let x_451 : f32 = x_13.x_NormalScale1;
  let x_452 : vec2<f32> = vec2<f32>(x_449, x_451);
  let x_456 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_452.x, x_452.y));
  let x_457 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat8;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.y, x_459.y, x_459.y) * vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec4<f32> = u_xlat7;
  let x_471 : vec4<f32> = u_xlat6;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.x, x_466.x) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_480 : vec4<f32> = vs_TEXCOORD2;
  let x_483 : f32 = x_113.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_480.x, x_480.y), x_483);
  let x_485 : vec3<f32> = vec3<f32>(x_484.x, x_484.y, x_484.w);
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat7.x;
  let x_491 : f32 = u_xlat7.z;
  u_xlat7.x = (x_489 * x_491);
  let x_494 : vec4<f32> = u_xlat7;
  let x_497 : vec2<f32> = ((vec2<f32>(x_494.x, x_494.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat7;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_500.x, x_500.y), vec2<f32>(x_502.x, x_502.y));
  let x_505 : f32 = u_xlat76;
  u_xlat76 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat76;
  u_xlat76 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_510);
  let x_512 : f32 = u_xlat76;
  u_xlat8.z = max(x_512, 0.0000000000000001f);
  let x_515 : vec4<f32> = u_xlat7;
  let x_519 : f32 = x_13.x_NormalScale2;
  let x_521 : f32 = x_13.x_NormalScale2;
  let x_522 : vec2<f32> = vec2<f32>(x_519, x_521);
  let x_526 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) * vec2<f32>(x_522.x, x_522.y));
  let x_527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat4;
  let x_531 : vec4<f32> = u_xlat8;
  let x_534 : vec4<f32> = u_xlat6;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.z, x_529.z, x_529.z) * vec3<f32>(x_531.x, x_531.y, x_531.z)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_543 : vec4<f32> = vs_TEXCOORD2;
  let x_546 : f32 = x_113.x_GlobalMipBias.x;
  let x_547 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_543.z, x_543.w), x_546);
  let x_548 : vec3<f32> = vec3<f32>(x_547.x, x_547.y, x_547.w);
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_552 : f32 = u_xlat7.x;
  let x_554 : f32 = u_xlat7.z;
  u_xlat7.x = (x_552 * x_554);
  let x_557 : vec4<f32> = u_xlat7;
  let x_560 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat7;
  let x_565 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_563.x, x_563.y), vec2<f32>(x_565.x, x_565.y));
  let x_568 : f32 = u_xlat76;
  u_xlat76 = min(x_568, 1.0f);
  let x_570 : f32 = u_xlat76;
  u_xlat76 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_573);
  let x_575 : f32 = u_xlat76;
  u_xlat8.z = max(x_575, 0.0000000000000001f);
  let x_578 : vec4<f32> = u_xlat7;
  let x_582 : f32 = x_13.x_NormalScale3;
  let x_584 : f32 = x_13.x_NormalScale3;
  let x_585 : vec2<f32> = vec2<f32>(x_582, x_584);
  let x_589 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_585.x, x_585.y));
  let x_590 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec4<f32> = u_xlat8;
  let x_597 : vec4<f32> = u_xlat6;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat6.z;
  u_xlat6.w = (x_603 + 0.00000999999974737875f);
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_607.x, x_607.y, x_607.w), vec3<f32>(x_609.x, x_609.y, x_609.w));
  let x_612 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_612);
  let x_614 : f32 = u_xlat76;
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec3<f32> = (vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.w));
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_643;
  let x_645 : vec4<f32> = u_xlat7;
  let x_646 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_645 + x_646);
  let x_649 : f32 = u_xlat0.z;
  u_xlat8.x = x_649;
  let x_652 : f32 = u_xlat1.z;
  u_xlat8.y = x_652;
  let x_655 : f32 = u_xlat2.z;
  u_xlat8.z = x_655;
  let x_658 : f32 = u_xlat3.y;
  u_xlat8.w = x_658;
  let x_660 : vec4<f32> = u_xlat9;
  let x_663 : f32 = x_13.x_Smoothness0;
  let x_665 : f32 = x_13.x_Smoothness1;
  let x_667 : f32 = x_13.x_Smoothness2;
  let x_669 : f32 = x_13.x_Smoothness3;
  let x_672 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_660) * vec4<f32>(x_663, x_665, x_667, x_669)) + x_672);
  let x_676 : f32 = x_13.x_LayerHasMask0;
  let x_679 : f32 = x_13.x_LayerHasMask1;
  let x_682 : f32 = x_13.x_LayerHasMask2;
  let x_685 : f32 = x_13.x_LayerHasMask3;
  let x_687 : vec4<f32> = u_xlat8;
  let x_689 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_676, x_679, x_682, x_685) * x_687) + x_689);
  let x_692 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_692, x_693);
  let x_696 : f32 = u_xlat0.x;
  u_xlat8.x = x_696;
  let x_699 : f32 = u_xlat1.x;
  u_xlat8.y = x_699;
  let x_702 : f32 = u_xlat2.x;
  u_xlat8.z = x_702;
  let x_705 : f32 = u_xlat3.x;
  u_xlat8.w = x_705;
  let x_707 : vec4<f32> = u_xlat8;
  let x_710 : f32 = x_13.x_Metallic0;
  let x_713 : f32 = x_13.x_Metallic1;
  let x_716 : f32 = x_13.x_Metallic2;
  let x_719 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_707 + -(vec4<f32>(x_710, x_713, x_716, x_719)));
  let x_724 : f32 = x_13.x_LayerHasMask0;
  let x_726 : f32 = x_13.x_LayerHasMask1;
  let x_728 : f32 = x_13.x_LayerHasMask2;
  let x_730 : f32 = x_13.x_LayerHasMask3;
  let x_732 : vec4<f32> = u_xlat8;
  let x_735 : f32 = x_13.x_Metallic0;
  let x_737 : f32 = x_13.x_Metallic1;
  let x_739 : f32 = x_13.x_Metallic2;
  let x_741 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_724, x_726, x_728, x_730) * x_732) + vec4<f32>(x_735, x_737, x_739, x_741));
  let x_744 : vec4<f32> = u_xlat4;
  let x_745 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_744, x_745);
  let x_749 : f32 = u_xlat0.y;
  u_xlat3.x = x_749;
  let x_752 : f32 = u_xlat1.y;
  u_xlat3.y = x_752;
  let x_755 : f32 = u_xlat2.y;
  u_xlat3.z = x_755;
  let x_757 : vec4<f32> = u_xlat7;
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_757) + x_759);
  let x_762 : f32 = x_13.x_LayerHasMask0;
  let x_764 : f32 = x_13.x_LayerHasMask1;
  let x_766 : f32 = x_13.x_LayerHasMask2;
  let x_768 : f32 = x_13.x_LayerHasMask3;
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_762, x_764, x_766, x_768) * x_770) + x_772);
  let x_775 : vec4<f32> = u_xlat4;
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_775, x_776);
  let x_778 : vec4<f32> = u_xlat6;
  let x_781 : vec4<f32> = vs_TEXCOORD5;
  let x_783 : vec3<f32> = (vec3<f32>(x_778.y, x_778.y, x_778.y) * vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat6;
  let x_789 : vec4<f32> = vs_TEXCOORD4;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.x, x_786.x) * -(vec3<f32>(x_789.x, x_789.y, x_789.z))) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_798.z, x_798.z, x_798.z) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat76;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec3<f32> = (vec3<f32>(x_816, x_816, x_816) * vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_825 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_825 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
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
  u_xlat27 = (vec3<f32>(x_958.y, x_958.y, x_958.y) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_975 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_970 / 4i)][(x_972 % 4i)];
  let x_977 : vec3<f32> = vs_TEXCOORD7;
  let x_980 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
  let x_982 : i32 = u_xlati2;
  let x_985 : i32 = u_xlati2;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + x_994);
  let x_996 : vec3<f32> = u_xlat27;
  let x_997 : i32 = u_xlati2;
  let x_1000 : i32 = u_xlati2;
  let x_1004 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
  let x_1006 : vec3<f32> = (x_996 + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1012 : f32 = vs_TEXCOORD7.y;
  let x_1014 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat77 = (x_1012 * x_1014);
  let x_1017 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1019 : f32 = vs_TEXCOORD7.x;
  let x_1021 : f32 = u_xlat77;
  u_xlat77 = ((x_1017 * x_1019) + x_1021);
  let x_1024 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1026 : f32 = vs_TEXCOORD7.z;
  let x_1028 : f32 = u_xlat77;
  u_xlat77 = ((x_1024 * x_1026) + x_1028);
  let x_1030 : f32 = u_xlat77;
  let x_1032 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat77 = (x_1030 + x_1032);
  let x_1034 : f32 = u_xlat77;
  let x_1037 : f32 = x_113.x_ProjectionParams.y;
  u_xlat77 = (-(x_1034) + -(x_1037));
  let x_1040 : f32 = u_xlat77;
  u_xlat77 = max(x_1040, 0.0f);
  let x_1042 : f32 = u_xlat77;
  let x_1044 : f32 = x_113.unity_FogParams.x;
  u_xlat77 = (x_1042 * x_1044);
  u_xlat1.w = 1.0f;
  let x_1052 : vec4<f32> = x_1050.unity_SHAr;
  let x_1053 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1052, x_1053);
  let x_1057 : vec4<f32> = x_1050.unity_SHAg;
  let x_1058 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1057, x_1058);
  let x_1062 : vec4<f32> = x_1050.unity_SHAb;
  let x_1063 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1062, x_1063);
  let x_1066 : vec4<f32> = u_xlat1;
  let x_1068 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1066.y, x_1066.z, x_1066.z, x_1066.x) * vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.z));
  let x_1072 : vec4<f32> = x_1050.unity_SHBr;
  let x_1073 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1072, x_1073);
  let x_1077 : vec4<f32> = x_1050.unity_SHBg;
  let x_1078 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1077, x_1078);
  let x_1082 : vec4<f32> = x_1050.unity_SHBb;
  let x_1083 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1082, x_1083);
  let x_1087 : f32 = u_xlat1.y;
  let x_1089 : f32 = u_xlat1.y;
  u_xlat76 = (x_1087 * x_1089);
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat1.x;
  let x_1096 : f32 = u_xlat76;
  u_xlat76 = ((x_1092 * x_1094) + -(x_1096));
  let x_1101 : vec4<f32> = x_1050.unity_SHC;
  let x_1103 : f32 = u_xlat76;
  let x_1106 : vec4<f32> = u_xlat6;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1103, x_1103, x_1103)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat3;
  let x_1113 : vec4<f32> = u_xlat4;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat3;
  let x_1120 : vec3<f32> = max(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1121 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1124 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_1124) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1130 : f32 = u_xlat76;
  u_xlat78 = (-(x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat76;
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1137 : vec3<f32> = (vec3<f32>(x_1133, x_1133, x_1133) * vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec3<f32> = u_xlat0;
  let x_1149 : vec4<f32> = u_xlat5;
  let x_1154 : vec3<f32> = ((vec3<f32>(x_1147.x, x_1147.x, x_1147.x) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1155 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1157) + 1.0f);
  let x_1162 : f32 = u_xlat0.x;
  let x_1164 : f32 = u_xlat0.x;
  u_xlat76 = (x_1162 * x_1164);
  let x_1166 : f32 = u_xlat76;
  u_xlat76 = max(x_1166, 0.0078125f);
  let x_1170 : f32 = u_xlat76;
  let x_1171 : f32 = u_xlat76;
  u_xlat79 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat50;
  let x_1174 : f32 = u_xlat78;
  u_xlat50 = (x_1173 + x_1174);
  let x_1176 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1176, 0.0f, 1.0f);
  let x_1178 : f32 = u_xlat76;
  u_xlat78 = ((x_1178 * 4.0f) + 2.0f);
  let x_1181 : f32 = u_xlat25;
  u_xlat25 = min(x_1181, 1.0f);
  let x_1185 : f32 = x_833.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_1185);
  let x_1187 : bool = u_xlatb80;
  if (x_1187) {
    let x_1191 : f32 = x_833.x_MainLightShadowParams.y;
    u_xlatb80 = (x_1191 == 1.0f);
    let x_1193 : bool = u_xlatb80;
    if (x_1193) {
      let x_1196 : vec4<f32> = u_xlat2;
      let x_1199 : vec4<f32> = x_833.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y) + x_1199);
      let x_1203 : vec4<f32> = u_xlat6;
      let x_1204 : vec2<f32> = vec2<f32>(x_1203.x, x_1203.y);
      let x_1206 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1204.x, x_1204.y, x_1206);
      let x_1218 : vec3<f32> = txVec0;
      let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
      u_xlat7.x = x_1220;
      let x_1223 : vec4<f32> = u_xlat6;
      let x_1224 : vec2<f32> = vec2<f32>(x_1223.z, x_1223.w);
      let x_1226 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
      let x_1233 : vec3<f32> = txVec1;
      let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1233.xy, x_1233.z);
      u_xlat7.y = x_1235;
      let x_1237 : vec4<f32> = u_xlat2;
      let x_1240 : vec4<f32> = x_833.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y) + x_1240);
      let x_1243 : vec4<f32> = u_xlat6;
      let x_1244 : vec2<f32> = vec2<f32>(x_1243.x, x_1243.y);
      let x_1246 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
      let x_1253 : vec3<f32> = txVec2;
      let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
      u_xlat7.z = x_1255;
      let x_1258 : vec4<f32> = u_xlat6;
      let x_1259 : vec2<f32> = vec2<f32>(x_1258.z, x_1258.w);
      let x_1261 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
      let x_1268 : vec3<f32> = txVec3;
      let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
      u_xlat7.w = x_1270;
      let x_1273 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_1273, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1280 : f32 = x_833.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1280 == 2.0f);
      let x_1282 : bool = u_xlatb6;
      if (x_1282) {
        let x_1285 : vec4<f32> = u_xlat2;
        let x_1288 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1291 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(x_1288.z, x_1288.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1292 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat6;
        let x_1296 : vec2<f32> = floor(vec2<f32>(x_1294.x, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
        let x_1301 : vec4<f32> = u_xlat2;
        let x_1304 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.z, x_1304.w)) + -(vec2<f32>(x_1307.x, x_1307.y)));
        let x_1311 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1311.x, x_1311.x, x_1311.y, x_1311.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1317 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.z, x_1315.z) * vec4<f32>(x_1317.x, x_1317.x, x_1317.z, x_1317.z));
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = (vec2<f32>(x_1320.y, x_1320.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1325 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1324.x, x_1325.y, x_1324.y, x_1325.w);
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1330 : vec2<f32> = u_xlat56;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1330));
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1336 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_1336) + vec2<f32>(1.0f, 1.0f));
        let x_1340 : vec2<f32> = u_xlat56;
        let x_1342 : vec2<f32> = min(x_1340, vec2<f32>(0.0f, 0.0f));
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat9;
        let x_1348 : vec4<f32> = u_xlat9;
        let x_1351 : vec2<f32> = u_xlat58;
        let x_1352 : vec2<f32> = ((-(vec2<f32>(x_1345.x, x_1345.y)) * vec2<f32>(x_1348.x, x_1348.y)) + x_1351);
        let x_1353 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
        let x_1355 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_1355, vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec2<f32> = u_xlat56;
        let x_1359 : vec2<f32> = u_xlat56;
        let x_1361 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_1357) * x_1359) + vec2<f32>(x_1361.y, x_1361.w));
        let x_1364 : vec4<f32> = u_xlat9;
        let x_1366 : vec2<f32> = (vec2<f32>(x_1364.x, x_1364.y) + vec2<f32>(1.0f, 1.0f));
        let x_1367 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1369 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_1369 + vec2<f32>(1.0f, 1.0f));
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1375 : vec2<f32> = (vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1376 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
        let x_1378 : vec2<f32> = u_xlat58;
        let x_1379 : vec2<f32> = (x_1378 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat9;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec2<f32> = u_xlat56;
        let x_1388 : vec2<f32> = (x_1387 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1389 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        let x_1391 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1391.y, x_1391.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1395 : f32 = u_xlat9.x;
        u_xlat10.z = x_1395;
        let x_1398 : f32 = u_xlat56.x;
        u_xlat10.w = x_1398;
        let x_1401 : f32 = u_xlat11.x;
        u_xlat8.z = x_1401;
        let x_1404 : f32 = u_xlat7.x;
        u_xlat8.w = x_1404;
        let x_1406 : vec4<f32> = u_xlat8;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1406.z, x_1406.w, x_1406.x, x_1406.z) + vec4<f32>(x_1408.z, x_1408.w, x_1408.x, x_1408.z));
        let x_1412 : f32 = u_xlat10.y;
        u_xlat9.z = x_1412;
        let x_1415 : f32 = u_xlat56.y;
        u_xlat9.w = x_1415;
        let x_1418 : f32 = u_xlat8.y;
        u_xlat11.z = x_1418;
        let x_1421 : f32 = u_xlat7.z;
        u_xlat11.w = x_1421;
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1425 : vec4<f32> = u_xlat11;
        let x_1427 : vec3<f32> = (vec3<f32>(x_1423.z, x_1423.y, x_1423.w) + vec3<f32>(x_1425.z, x_1425.y, x_1425.w));
        let x_1428 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1432 : vec4<f32> = u_xlat12;
        let x_1434 : vec3<f32> = (vec3<f32>(x_1430.x, x_1430.z, x_1430.w) / vec3<f32>(x_1432.z, x_1432.w, x_1432.y));
        let x_1435 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
        let x_1437 : vec4<f32> = u_xlat8;
        let x_1443 : vec3<f32> = (vec3<f32>(x_1437.x, x_1437.y, x_1437.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1448 : vec4<f32> = u_xlat7;
        let x_1450 : vec3<f32> = (vec3<f32>(x_1446.z, x_1446.y, x_1446.w) / vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1455 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1456 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat8;
        let x_1461 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1463 : vec3<f32> = (vec3<f32>(x_1458.y, x_1458.x, x_1458.z) * vec3<f32>(x_1461.x, x_1461.x, x_1461.x));
        let x_1464 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat9;
        let x_1469 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1471 : vec3<f32> = (vec3<f32>(x_1466.x, x_1466.y, x_1466.z) * vec3<f32>(x_1469.y, x_1469.y, x_1469.y));
        let x_1472 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
        let x_1475 : f32 = u_xlat9.x;
        u_xlat8.w = x_1475;
        let x_1477 : vec4<f32> = u_xlat6;
        let x_1480 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y) * vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y)) + vec4<f32>(x_1483.y, x_1483.w, x_1483.x, x_1483.w));
        let x_1486 : vec4<f32> = u_xlat6;
        let x_1489 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1486.x, x_1486.y) * vec2<f32>(x_1489.x, x_1489.y)) + vec2<f32>(x_1492.z, x_1492.w));
        let x_1496 : f32 = u_xlat8.y;
        u_xlat9.w = x_1496;
        let x_1498 : vec4<f32> = u_xlat9;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.y, x_1498.z);
        let x_1500 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1500.x, x_1499.x, x_1500.z, x_1499.y);
        let x_1502 : vec4<f32> = u_xlat6;
        let x_1505 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1508 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1502.x, x_1502.y, x_1502.x, x_1502.y) * vec4<f32>(x_1505.x, x_1505.y, x_1505.x, x_1505.y)) + vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1508.y));
        let x_1511 : vec4<f32> = u_xlat6;
        let x_1514 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y) * vec4<f32>(x_1514.x, x_1514.y, x_1514.x, x_1514.y)) + vec4<f32>(x_1517.w, x_1517.y, x_1517.w, x_1517.z));
        let x_1520 : vec4<f32> = u_xlat6;
        let x_1523 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y) * vec4<f32>(x_1523.x, x_1523.y, x_1523.x, x_1523.y)) + vec4<f32>(x_1526.x, x_1526.w, x_1526.z, x_1526.w));
        let x_1529 : vec4<f32> = u_xlat7;
        let x_1531 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1529.x, x_1529.x, x_1529.x, x_1529.y) * vec4<f32>(x_1531.z, x_1531.w, x_1531.y, x_1531.z));
        let x_1535 : vec4<f32> = u_xlat7;
        let x_1537 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1535.y, x_1535.y, x_1535.z, x_1535.z) * x_1537);
        let x_1540 : f32 = u_xlat7.z;
        let x_1542 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1540 * x_1542);
        let x_1546 : vec4<f32> = u_xlat10;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.x, x_1546.y);
        let x_1549 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1557 : vec3<f32> = txVec4;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1557.xy, x_1557.z);
        u_xlat31 = x_1559;
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.z, x_1561.w);
        let x_1564 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec5;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat7.x = x_1573;
        let x_1576 : f32 = u_xlat7.x;
        let x_1578 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1576 * x_1578);
        let x_1582 : f32 = u_xlat13.x;
        let x_1583 : f32 = u_xlat31;
        let x_1586 : f32 = u_xlat7.x;
        u_xlat31 = ((x_1582 * x_1583) + x_1586);
        let x_1589 : vec2<f32> = u_xlat56;
        let x_1591 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec6;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat56.x = x_1600;
        let x_1603 : f32 = u_xlat13.z;
        let x_1605 : f32 = u_xlat56.x;
        let x_1607 : f32 = u_xlat31;
        u_xlat31 = ((x_1603 * x_1605) + x_1607);
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.x, x_1610.y);
        let x_1613 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec7;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat56.x = x_1622;
        let x_1625 : f32 = u_xlat13.w;
        let x_1627 : f32 = u_xlat56.x;
        let x_1629 : f32 = u_xlat31;
        u_xlat31 = ((x_1625 * x_1627) + x_1629);
        let x_1632 : vec4<f32> = u_xlat11;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
        let x_1635 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec8;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
        u_xlat56.x = x_1644;
        let x_1647 : f32 = u_xlat14.x;
        let x_1649 : f32 = u_xlat56.x;
        let x_1651 : f32 = u_xlat31;
        u_xlat31 = ((x_1647 * x_1649) + x_1651);
        let x_1654 : vec4<f32> = u_xlat11;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.z, x_1654.w);
        let x_1657 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec9;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat56.x = x_1666;
        let x_1669 : f32 = u_xlat14.y;
        let x_1671 : f32 = u_xlat56.x;
        let x_1673 : f32 = u_xlat31;
        u_xlat31 = ((x_1669 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat9;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.z, x_1676.w);
        let x_1679 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec10;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat56.x = x_1688;
        let x_1691 : f32 = u_xlat14.z;
        let x_1693 : f32 = u_xlat56.x;
        let x_1695 : f32 = u_xlat31;
        u_xlat31 = ((x_1691 * x_1693) + x_1695);
        let x_1698 : vec4<f32> = u_xlat8;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.x, x_1698.y);
        let x_1701 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec11;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
        u_xlat56.x = x_1710;
        let x_1713 : f32 = u_xlat14.w;
        let x_1715 : f32 = u_xlat56.x;
        let x_1717 : f32 = u_xlat31;
        u_xlat31 = ((x_1713 * x_1715) + x_1717);
        let x_1720 : vec4<f32> = u_xlat8;
        let x_1721 : vec2<f32> = vec2<f32>(x_1720.z, x_1720.w);
        let x_1723 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1721.x, x_1721.y, x_1723);
        let x_1730 : vec3<f32> = txVec12;
        let x_1732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1730.xy, x_1730.z);
        u_xlat56.x = x_1732;
        let x_1735 : f32 = u_xlat6.x;
        let x_1737 : f32 = u_xlat56.x;
        let x_1739 : f32 = u_xlat31;
        u_xlat80 = ((x_1735 * x_1737) + x_1739);
      } else {
        let x_1742 : vec4<f32> = u_xlat2;
        let x_1745 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1748 : vec2<f32> = ((vec2<f32>(x_1742.x, x_1742.y) * vec2<f32>(x_1745.z, x_1745.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1749 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
        let x_1751 : vec4<f32> = u_xlat6;
        let x_1753 : vec2<f32> = floor(vec2<f32>(x_1751.x, x_1751.y));
        let x_1754 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
        let x_1756 : vec4<f32> = u_xlat2;
        let x_1759 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1762 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1759.z, x_1759.w)) + -(vec2<f32>(x_1762.x, x_1762.y)));
        let x_1766 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1766.x, x_1766.x, x_1766.y, x_1766.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1769 : vec4<f32> = u_xlat7;
        let x_1771 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1769.x, x_1769.x, x_1769.z, x_1769.z) * vec4<f32>(x_1771.x, x_1771.x, x_1771.z, x_1771.z));
        let x_1774 : vec4<f32> = u_xlat8;
        let x_1778 : vec2<f32> = (vec2<f32>(x_1774.y, x_1774.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1779 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1779.x, x_1778.x, x_1779.z, x_1778.y);
        let x_1781 : vec4<f32> = u_xlat8;
        let x_1784 : vec2<f32> = u_xlat56;
        let x_1786 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1784));
        let x_1787 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1786.x, x_1787.y, x_1786.y, x_1787.w);
        let x_1789 : vec2<f32> = u_xlat56;
        let x_1791 : vec2<f32> = (-(x_1789) + vec2<f32>(1.0f, 1.0f));
        let x_1792 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
        let x_1794 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1794, vec2<f32>(0.0f, 0.0f));
        let x_1796 : vec2<f32> = u_xlat58;
        let x_1798 : vec2<f32> = u_xlat58;
        let x_1800 : vec4<f32> = u_xlat8;
        let x_1802 : vec2<f32> = ((-(x_1796) * x_1798) + vec2<f32>(x_1800.x, x_1800.y));
        let x_1803 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
        let x_1805 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1805, vec2<f32>(0.0f, 0.0f));
        let x_1808 : vec2<f32> = u_xlat58;
        let x_1810 : vec2<f32> = u_xlat58;
        let x_1812 : vec4<f32> = u_xlat7;
        let x_1814 : vec2<f32> = ((-(x_1808) * x_1810) + vec2<f32>(x_1812.y, x_1812.w));
        let x_1815 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1814.x, x_1815.y, x_1814.y);
        let x_1817 : vec4<f32> = u_xlat8;
        let x_1819 : vec2<f32> = (vec2<f32>(x_1817.x, x_1817.y) + vec2<f32>(2.0f, 2.0f));
        let x_1820 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1819.x, x_1819.y, x_1820.z, x_1820.w);
        let x_1822 : vec3<f32> = u_xlat32;
        let x_1824 : vec2<f32> = (vec2<f32>(x_1822.x, x_1822.z) + vec2<f32>(2.0f, 2.0f));
        let x_1825 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1825.x, x_1824.x, x_1825.z, x_1824.y);
        let x_1828 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1828 * 0.08163200318813323975f);
        let x_1832 : vec4<f32> = u_xlat7;
        let x_1835 : vec3<f32> = (vec3<f32>(x_1832.z, x_1832.x, x_1832.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1836 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
        let x_1838 : vec4<f32> = u_xlat8;
        let x_1841 : vec2<f32> = (vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1842 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1841.x, x_1841.y, x_1842.z, x_1842.w);
        let x_1845 : f32 = u_xlat11.y;
        u_xlat10.x = x_1845;
        let x_1847 : vec2<f32> = u_xlat56;
        let x_1854 : vec2<f32> = ((vec2<f32>(x_1847.x, x_1847.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1855 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1855.x, x_1854.x, x_1855.z, x_1854.y);
        let x_1857 : vec2<f32> = u_xlat56;
        let x_1861 : vec2<f32> = ((vec2<f32>(x_1857.x, x_1857.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1861.x, x_1862.y, x_1861.y, x_1862.w);
        let x_1865 : f32 = u_xlat7.x;
        u_xlat8.y = x_1865;
        let x_1868 : f32 = u_xlat9.y;
        u_xlat8.w = x_1868;
        let x_1870 : vec4<f32> = u_xlat8;
        let x_1871 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1870 + x_1871);
        let x_1873 : vec2<f32> = u_xlat56;
        let x_1876 : vec2<f32> = ((vec2<f32>(x_1873.y, x_1873.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1877 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1877.x, x_1876.x, x_1877.z, x_1876.y);
        let x_1879 : vec2<f32> = u_xlat56;
        let x_1882 : vec2<f32> = ((vec2<f32>(x_1879.y, x_1879.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1883 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1882.x, x_1883.y, x_1882.y, x_1883.w);
        let x_1886 : f32 = u_xlat7.y;
        u_xlat9.y = x_1886;
        let x_1888 : vec4<f32> = u_xlat9;
        let x_1889 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1888 + x_1889);
        let x_1891 : vec4<f32> = u_xlat8;
        let x_1892 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1891 / x_1892);
        let x_1894 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1894 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1900 : vec4<f32> = u_xlat9;
        let x_1901 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1900 / x_1901);
        let x_1903 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1903 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1905 : vec4<f32> = u_xlat8;
        let x_1908 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1905.w, x_1905.x, x_1905.y, x_1905.z) * vec4<f32>(x_1908.x, x_1908.x, x_1908.x, x_1908.x));
        let x_1911 : vec4<f32> = u_xlat9;
        let x_1914 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1911.x, x_1911.w, x_1911.y, x_1911.z) * vec4<f32>(x_1914.y, x_1914.y, x_1914.y, x_1914.y));
        let x_1917 : vec4<f32> = u_xlat8;
        let x_1918 : vec3<f32> = vec3<f32>(x_1917.y, x_1917.z, x_1917.w);
        let x_1919 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1918.x, x_1919.y, x_1918.y, x_1918.z);
        let x_1922 : f32 = u_xlat9.x;
        u_xlat11.y = x_1922;
        let x_1924 : vec4<f32> = u_xlat6;
        let x_1927 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1930 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1924.x, x_1924.y, x_1924.x, x_1924.y) * vec4<f32>(x_1927.x, x_1927.y, x_1927.x, x_1927.y)) + vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1930.y));
        let x_1933 : vec4<f32> = u_xlat6;
        let x_1936 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1939 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1933.x, x_1933.y) * vec2<f32>(x_1936.x, x_1936.y)) + vec2<f32>(x_1939.w, x_1939.y));
        let x_1943 : f32 = u_xlat11.y;
        u_xlat8.y = x_1943;
        let x_1946 : f32 = u_xlat9.z;
        u_xlat11.y = x_1946;
        let x_1948 : vec4<f32> = u_xlat6;
        let x_1951 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1954 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1948.x, x_1948.y, x_1948.x, x_1948.y) * vec4<f32>(x_1951.x, x_1951.y, x_1951.x, x_1951.y)) + vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1954.y));
        let x_1957 : vec4<f32> = u_xlat6;
        let x_1960 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1963 : vec4<f32> = u_xlat11;
        let x_1965 : vec2<f32> = ((vec2<f32>(x_1957.x, x_1957.y) * vec2<f32>(x_1960.x, x_1960.y)) + vec2<f32>(x_1963.w, x_1963.y));
        let x_1966 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1965.x, x_1965.y, x_1966.z, x_1966.w);
        let x_1969 : f32 = u_xlat11.y;
        u_xlat8.z = x_1969;
        let x_1972 : vec4<f32> = u_xlat6;
        let x_1975 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1978 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1972.x, x_1972.y, x_1972.x, x_1972.y) * vec4<f32>(x_1975.x, x_1975.y, x_1975.x, x_1975.y)) + vec4<f32>(x_1978.x, x_1978.y, x_1978.x, x_1978.z));
        let x_1982 : f32 = u_xlat9.w;
        u_xlat11.y = x_1982;
        let x_1985 : vec4<f32> = u_xlat6;
        let x_1988 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1991 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1985.x, x_1985.y, x_1985.x, x_1985.y) * vec4<f32>(x_1988.x, x_1988.y, x_1988.x, x_1988.y)) + vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1991.y));
        let x_1995 : vec4<f32> = u_xlat6;
        let x_1998 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2001 : vec4<f32> = u_xlat11;
        let x_2003 : vec2<f32> = ((vec2<f32>(x_1995.x, x_1995.y) * vec2<f32>(x_1998.x, x_1998.y)) + vec2<f32>(x_2001.w, x_2001.y));
        let x_2004 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2003.x, x_2003.y, x_2004.z);
        let x_2007 : f32 = u_xlat11.y;
        u_xlat8.w = x_2007;
        let x_2010 : vec4<f32> = u_xlat6;
        let x_2013 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2016 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_2010.x, x_2010.y) * vec2<f32>(x_2013.x, x_2013.y)) + vec2<f32>(x_2016.x, x_2016.w));
        let x_2019 : vec4<f32> = u_xlat11;
        let x_2020 : vec3<f32> = vec3<f32>(x_2019.x, x_2019.z, x_2019.w);
        let x_2021 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2020.x, x_2021.y, x_2020.y, x_2020.z);
        let x_2023 : vec4<f32> = u_xlat6;
        let x_2026 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2029 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2023.x, x_2023.y, x_2023.x, x_2023.y) * vec4<f32>(x_2026.x, x_2026.y, x_2026.x, x_2026.y)) + vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2029.y));
        let x_2033 : vec4<f32> = u_xlat6;
        let x_2036 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2039 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2033.x, x_2033.y) * vec2<f32>(x_2036.x, x_2036.y)) + vec2<f32>(x_2039.w, x_2039.y));
        let x_2043 : f32 = u_xlat8.x;
        u_xlat9.x = x_2043;
        let x_2045 : vec4<f32> = u_xlat6;
        let x_2048 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2051 : vec4<f32> = u_xlat9;
        let x_2053 : vec2<f32> = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(x_2048.x, x_2048.y)) + vec2<f32>(x_2051.x, x_2051.y));
        let x_2054 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2053.x, x_2053.y, x_2054.z, x_2054.w);
        let x_2057 : vec4<f32> = u_xlat7;
        let x_2059 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2057.x, x_2057.x, x_2057.x, x_2057.x) * x_2059);
        let x_2062 : vec4<f32> = u_xlat7;
        let x_2064 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2062.y, x_2062.y, x_2062.y, x_2062.y) * x_2064);
        let x_2067 : vec4<f32> = u_xlat7;
        let x_2069 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2067.z, x_2067.z, x_2067.z, x_2067.z) * x_2069);
        let x_2071 : vec4<f32> = u_xlat7;
        let x_2073 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2071.w, x_2071.w, x_2071.w, x_2071.w) * x_2073);
        let x_2076 : vec4<f32> = u_xlat12;
        let x_2077 : vec2<f32> = vec2<f32>(x_2076.x, x_2076.y);
        let x_2079 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
        let x_2086 : vec3<f32> = txVec13;
        let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
        u_xlat8.x = x_2088;
        let x_2091 : vec4<f32> = u_xlat12;
        let x_2092 : vec2<f32> = vec2<f32>(x_2091.z, x_2091.w);
        let x_2094 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
        let x_2102 : vec3<f32> = txVec14;
        let x_2104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2102.xy, x_2102.z);
        u_xlat83 = x_2104;
        let x_2105 : f32 = u_xlat83;
        let x_2107 : f32 = u_xlat17.y;
        u_xlat83 = (x_2105 * x_2107);
        let x_2110 : f32 = u_xlat17.x;
        let x_2112 : f32 = u_xlat8.x;
        let x_2114 : f32 = u_xlat83;
        u_xlat8.x = ((x_2110 * x_2112) + x_2114);
        let x_2118 : vec2<f32> = u_xlat56;
        let x_2120 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2118.x, x_2118.y, x_2120);
        let x_2127 : vec3<f32> = txVec15;
        let x_2129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2127.xy, x_2127.z);
        u_xlat56.x = x_2129;
        let x_2132 : f32 = u_xlat17.z;
        let x_2134 : f32 = u_xlat56.x;
        let x_2137 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_2132 * x_2134) + x_2137);
        let x_2141 : vec4<f32> = u_xlat15;
        let x_2142 : vec2<f32> = vec2<f32>(x_2141.x, x_2141.y);
        let x_2144 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2142.x, x_2142.y, x_2144);
        let x_2152 : vec3<f32> = txVec16;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
        u_xlat81 = x_2154;
        let x_2156 : f32 = u_xlat17.w;
        let x_2157 : f32 = u_xlat81;
        let x_2160 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2156 * x_2157) + x_2160);
        let x_2164 : vec4<f32> = u_xlat13;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.x, x_2164.y);
        let x_2167 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec17;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2174.xy, x_2174.z);
        u_xlat81 = x_2176;
        let x_2178 : f32 = u_xlat18.x;
        let x_2179 : f32 = u_xlat81;
        let x_2182 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2178 * x_2179) + x_2182);
        let x_2186 : vec4<f32> = u_xlat13;
        let x_2187 : vec2<f32> = vec2<f32>(x_2186.z, x_2186.w);
        let x_2189 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2187.x, x_2187.y, x_2189);
        let x_2196 : vec3<f32> = txVec18;
        let x_2198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2196.xy, x_2196.z);
        u_xlat81 = x_2198;
        let x_2200 : f32 = u_xlat18.y;
        let x_2201 : f32 = u_xlat81;
        let x_2204 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2200 * x_2201) + x_2204);
        let x_2208 : vec4<f32> = u_xlat14;
        let x_2209 : vec2<f32> = vec2<f32>(x_2208.x, x_2208.y);
        let x_2211 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2209.x, x_2209.y, x_2211);
        let x_2218 : vec3<f32> = txVec19;
        let x_2220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2218.xy, x_2218.z);
        u_xlat81 = x_2220;
        let x_2222 : f32 = u_xlat18.z;
        let x_2223 : f32 = u_xlat81;
        let x_2226 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2222 * x_2223) + x_2226);
        let x_2230 : vec4<f32> = u_xlat15;
        let x_2231 : vec2<f32> = vec2<f32>(x_2230.z, x_2230.w);
        let x_2233 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
        let x_2240 : vec3<f32> = txVec20;
        let x_2242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
        u_xlat81 = x_2242;
        let x_2244 : f32 = u_xlat18.w;
        let x_2245 : f32 = u_xlat81;
        let x_2248 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2244 * x_2245) + x_2248);
        let x_2252 : vec4<f32> = u_xlat16;
        let x_2253 : vec2<f32> = vec2<f32>(x_2252.x, x_2252.y);
        let x_2255 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2253.x, x_2253.y, x_2255);
        let x_2262 : vec3<f32> = txVec21;
        let x_2264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2262.xy, x_2262.z);
        u_xlat81 = x_2264;
        let x_2266 : f32 = u_xlat19.x;
        let x_2267 : f32 = u_xlat81;
        let x_2270 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2266 * x_2267) + x_2270);
        let x_2274 : vec4<f32> = u_xlat16;
        let x_2275 : vec2<f32> = vec2<f32>(x_2274.z, x_2274.w);
        let x_2277 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2275.x, x_2275.y, x_2277);
        let x_2284 : vec3<f32> = txVec22;
        let x_2286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2284.xy, x_2284.z);
        u_xlat81 = x_2286;
        let x_2288 : f32 = u_xlat19.y;
        let x_2289 : f32 = u_xlat81;
        let x_2292 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2288 * x_2289) + x_2292);
        let x_2296 : vec3<f32> = u_xlat33;
        let x_2297 : vec2<f32> = vec2<f32>(x_2296.x, x_2296.y);
        let x_2299 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2297.x, x_2297.y, x_2299);
        let x_2306 : vec3<f32> = txVec23;
        let x_2308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2306.xy, x_2306.z);
        u_xlat81 = x_2308;
        let x_2310 : f32 = u_xlat19.z;
        let x_2311 : f32 = u_xlat81;
        let x_2314 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2310 * x_2311) + x_2314);
        let x_2318 : vec2<f32> = u_xlat64;
        let x_2320 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2318.x, x_2318.y, x_2320);
        let x_2327 : vec3<f32> = txVec24;
        let x_2329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2327.xy, x_2327.z);
        u_xlat81 = x_2329;
        let x_2331 : f32 = u_xlat19.w;
        let x_2332 : f32 = u_xlat81;
        let x_2335 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2331 * x_2332) + x_2335);
        let x_2339 : vec4<f32> = u_xlat11;
        let x_2340 : vec2<f32> = vec2<f32>(x_2339.x, x_2339.y);
        let x_2342 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2340.x, x_2340.y, x_2342);
        let x_2349 : vec3<f32> = txVec25;
        let x_2351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2349.xy, x_2349.z);
        u_xlat81 = x_2351;
        let x_2353 : f32 = u_xlat7.x;
        let x_2354 : f32 = u_xlat81;
        let x_2357 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2353 * x_2354) + x_2357);
        let x_2361 : vec4<f32> = u_xlat11;
        let x_2362 : vec2<f32> = vec2<f32>(x_2361.z, x_2361.w);
        let x_2364 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
        let x_2371 : vec3<f32> = txVec26;
        let x_2373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
        u_xlat81 = x_2373;
        let x_2375 : f32 = u_xlat7.y;
        let x_2376 : f32 = u_xlat81;
        let x_2379 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2375 * x_2376) + x_2379);
        let x_2383 : vec2<f32> = u_xlat59;
        let x_2385 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2383.x, x_2383.y, x_2385);
        let x_2392 : vec3<f32> = txVec27;
        let x_2394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2392.xy, x_2392.z);
        u_xlat81 = x_2394;
        let x_2396 : f32 = u_xlat7.z;
        let x_2397 : f32 = u_xlat81;
        let x_2400 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2396 * x_2397) + x_2400);
        let x_2404 : vec4<f32> = u_xlat6;
        let x_2405 : vec2<f32> = vec2<f32>(x_2404.x, x_2404.y);
        let x_2407 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2405.x, x_2405.y, x_2407);
        let x_2414 : vec3<f32> = txVec28;
        let x_2416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2414.xy, x_2414.z);
        u_xlat6.x = x_2416;
        let x_2419 : f32 = u_xlat7.w;
        let x_2421 : f32 = u_xlat6.x;
        let x_2424 : f32 = u_xlat56.x;
        u_xlat80 = ((x_2419 * x_2421) + x_2424);
      }
    }
  } else {
    let x_2428 : vec4<f32> = u_xlat2;
    let x_2429 : vec2<f32> = vec2<f32>(x_2428.x, x_2428.y);
    let x_2431 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2429.x, x_2429.y, x_2431);
    let x_2438 : vec3<f32> = txVec29;
    let x_2440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2438.xy, x_2438.z);
    u_xlat80 = x_2440;
  }
  let x_2442 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2442) + 1.0f);
  let x_2446 : f32 = u_xlat80;
  let x_2448 : f32 = x_833.x_MainLightShadowParams.x;
  let x_2451 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2446 * x_2448) + x_2451);
  let x_2456 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_2456);
  let x_2460 : f32 = u_xlat2.z;
  u_xlatb52 = (x_2460 >= 1.0f);
  let x_2462 : bool = u_xlatb52;
  let x_2463 : bool = u_xlatb27;
  u_xlatb27 = (x_2462 | x_2463);
  let x_2465 : bool = u_xlatb27;
  if (x_2465) {
    x_2467 = 1.0f;
  } else {
    let x_2472 : f32 = u_xlat2.x;
    x_2467 = x_2472;
  }
  let x_2473 : f32 = x_2467;
  u_xlat2.x = x_2473;
  let x_2475 : vec3<f32> = vs_TEXCOORD7;
  let x_2478 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2480 : vec3<f32> = (x_2475 + -(x_2478));
  let x_2481 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
  let x_2483 : vec4<f32> = u_xlat6;
  let x_2485 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_2483.x, x_2483.y, x_2483.z), vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2491 : f32 = u_xlat27.x;
  let x_2493 : f32 = x_833.x_MainLightShadowParams.z;
  let x_2496 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat52 = ((x_2491 * x_2493) + x_2496);
  let x_2498 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2498, 0.0f, 1.0f);
  let x_2501 : f32 = u_xlat2.x;
  u_xlat80 = (-(x_2501) + 1.0f);
  let x_2504 : f32 = u_xlat52;
  let x_2505 : f32 = u_xlat80;
  let x_2508 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2504 * x_2505) + x_2508);
  let x_2512 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2512;
  let x_2515 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2515;
  let x_2518 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2518;
  let x_2520 : vec4<f32> = u_xlat6;
  let x_2523 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(-(vec3<f32>(x_2520.x, x_2520.y, x_2520.z)), vec3<f32>(x_2523.x, x_2523.y, x_2523.z));
  let x_2526 : f32 = u_xlat52;
  let x_2527 : f32 = u_xlat52;
  u_xlat52 = (x_2526 + x_2527);
  let x_2529 : vec4<f32> = u_xlat1;
  let x_2531 : f32 = u_xlat52;
  let x_2535 : vec4<f32> = u_xlat6;
  let x_2538 : vec3<f32> = ((vec3<f32>(x_2529.x, x_2529.y, x_2529.z) * -(vec3<f32>(x_2531, x_2531, x_2531))) + -(vec3<f32>(x_2535.x, x_2535.y, x_2535.z)));
  let x_2539 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
  let x_2541 : vec4<f32> = u_xlat1;
  let x_2543 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2541.x, x_2541.y, x_2541.z), vec3<f32>(x_2543.x, x_2543.y, x_2543.z));
  let x_2546 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2546, 0.0f, 1.0f);
  let x_2548 : f32 = u_xlat52;
  u_xlat52 = (-(x_2548) + 1.0f);
  let x_2551 : f32 = u_xlat52;
  let x_2552 : f32 = u_xlat52;
  u_xlat52 = (x_2551 * x_2552);
  let x_2554 : f32 = u_xlat52;
  let x_2555 : f32 = u_xlat52;
  u_xlat52 = (x_2554 * x_2555);
  let x_2558 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2558) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2565 : f32 = u_xlat0.x;
  let x_2566 : f32 = u_xlat80;
  u_xlat0.x = (x_2565 * x_2566);
  let x_2570 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2570 * 6.0f);
  let x_2582 : vec4<f32> = u_xlat7;
  let x_2585 : f32 = u_xlat0.x;
  let x_2586 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2582.x, x_2582.y, x_2582.z), x_2585);
  u_xlat7 = x_2586;
  let x_2588 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2588 + -1.0f);
  let x_2592 : f32 = x_1050.unity_SpecCube0_HDR.w;
  let x_2594 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2592 * x_2594) + 1.0f);
  let x_2599 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2599, 0.0f);
  let x_2603 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2603);
  let x_2607 : f32 = u_xlat0.x;
  let x_2609 : f32 = x_1050.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2607 * x_2609);
  let x_2613 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2613);
  let x_2617 : f32 = u_xlat0.x;
  let x_2619 : f32 = x_1050.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2617 * x_2619);
  let x_2622 : vec4<f32> = u_xlat7;
  let x_2624 : vec3<f32> = u_xlat0;
  let x_2626 : vec3<f32> = (vec3<f32>(x_2622.x, x_2622.y, x_2622.z) * vec3<f32>(x_2624.x, x_2624.x, x_2624.x));
  let x_2627 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
  let x_2629 : f32 = u_xlat76;
  let x_2631 : f32 = u_xlat76;
  let x_2635 : vec2<f32> = ((vec2<f32>(x_2629, x_2629) * vec2<f32>(x_2631, x_2631)) + vec2<f32>(-1.0f, 1.0f));
  let x_2636 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
  let x_2639 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2639);
  let x_2642 : vec4<f32> = u_xlat5;
  let x_2645 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2642.x, x_2642.y, x_2642.z)) + vec3<f32>(x_2645, x_2645, x_2645));
  let x_2648 : f32 = u_xlat52;
  let x_2650 : vec3<f32> = u_xlat33;
  let x_2652 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2648, x_2648, x_2648) * x_2650) + vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
  let x_2655 : vec3<f32> = u_xlat0;
  let x_2657 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2655.x, x_2655.x, x_2655.x) * x_2657);
  let x_2659 : vec4<f32> = u_xlat7;
  let x_2661 : vec3<f32> = u_xlat33;
  let x_2662 : vec3<f32> = (vec3<f32>(x_2659.x, x_2659.y, x_2659.z) * x_2661);
  let x_2663 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
  let x_2665 : vec4<f32> = u_xlat3;
  let x_2667 : vec4<f32> = u_xlat4;
  let x_2670 : vec4<f32> = u_xlat7;
  let x_2672 : vec3<f32> = ((vec3<f32>(x_2665.x, x_2665.y, x_2665.z) * vec3<f32>(x_2667.x, x_2667.y, x_2667.z)) + vec3<f32>(x_2670.x, x_2670.y, x_2670.z));
  let x_2673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2673.w);
  let x_2676 : f32 = u_xlat2.x;
  let x_2678 : f32 = x_1050.unity_LightData.z;
  u_xlat0.x = (x_2676 * x_2678);
  let x_2681 : vec4<f32> = u_xlat1;
  let x_2684 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2681.x, x_2681.y, x_2681.z), vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
  let x_2687 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2687, 0.0f, 1.0f);
  let x_2689 : f32 = u_xlat50;
  let x_2691 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2689 * x_2691);
  let x_2694 : vec3<f32> = u_xlat0;
  let x_2697 : vec4<f32> = x_113.x_MainLightColor;
  let x_2699 : vec3<f32> = (vec3<f32>(x_2694.x, x_2694.x, x_2694.x) * vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
  let x_2700 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
  let x_2702 : vec4<f32> = u_xlat6;
  let x_2705 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_2702.x, x_2702.y, x_2702.z) + vec3<f32>(x_2705.x, x_2705.y, x_2705.z));
  let x_2708 : vec3<f32> = u_xlat33;
  let x_2709 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2708, x_2709);
  let x_2713 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2713, 1.17549435e-38f);
  let x_2718 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2718);
  let x_2721 : vec3<f32> = u_xlat0;
  let x_2723 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2721.x, x_2721.x, x_2721.x) * x_2723);
  let x_2725 : vec4<f32> = u_xlat1;
  let x_2727 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2725.x, x_2725.y, x_2725.z), x_2727);
  let x_2731 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2731, 0.0f, 1.0f);
  let x_2735 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2737 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2735.x, x_2735.y, x_2735.z), x_2737);
  let x_2741 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2741, 0.0f, 1.0f);
  let x_2744 : vec3<f32> = u_xlat0;
  let x_2746 : vec3<f32> = u_xlat0;
  let x_2748 : vec2<f32> = (vec2<f32>(x_2744.x, x_2744.z) * vec2<f32>(x_2746.x, x_2746.z));
  let x_2749 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2748.x, x_2749.y, x_2748.y);
  let x_2752 : f32 = u_xlat0.x;
  let x_2754 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2752 * x_2754) + 1.00001001358032226562f);
  let x_2760 : f32 = u_xlat0.x;
  let x_2762 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2760 * x_2762);
  let x_2766 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2766, 0.10000000149011611938f);
  let x_2769 : f32 = u_xlat50;
  let x_2771 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2769 * x_2771);
  let x_2774 : f32 = u_xlat78;
  let x_2776 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2774 * x_2776);
  let x_2779 : f32 = u_xlat79;
  let x_2781 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2779 / x_2781);
  let x_2784 : vec4<f32> = u_xlat5;
  let x_2786 : vec3<f32> = u_xlat0;
  let x_2789 : vec4<f32> = u_xlat4;
  u_xlat33 = ((vec3<f32>(x_2784.x, x_2784.y, x_2784.z) * vec3<f32>(x_2786.x, x_2786.x, x_2786.x)) + vec3<f32>(x_2789.x, x_2789.y, x_2789.z));
  let x_2792 : vec4<f32> = u_xlat7;
  let x_2794 : vec3<f32> = u_xlat33;
  let x_2795 : vec3<f32> = (vec3<f32>(x_2792.x, x_2792.y, x_2792.z) * x_2794);
  let x_2796 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
  let x_2799 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2801 : f32 = x_1050.unity_LightData.y;
  u_xlat0.x = min(x_2799, x_2801);
  let x_2806 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2806));
  let x_2810 : f32 = u_xlat27.x;
  let x_2812 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_2815 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2810 * x_2812) + x_2815);
  let x_2817 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2817, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2829 : u32 = u_xlatu_loop_1;
    let x_2830 : u32 = u_xlatu0;
    if ((x_2829 < x_2830)) {
    } else {
      break;
    }
    let x_2833 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2833 >> 2u);
    let x_2836 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2836 & 3u));
    let x_2839 : u32 = u_xlatu80;
    let x_2842 : vec4<f32> = x_1050.unity_LightIndices[bitcast<i32>(x_2839)];
    let x_2852 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2857 : vec4<u32> = indexable[x_2852];
    u_xlat80 = dot(x_2842, bitcast<vec4<f32>>(x_2857));
    let x_2861 : f32 = u_xlat80;
    u_xlati80 = i32(x_2861);
    let x_2863 : vec3<f32> = vs_TEXCOORD7;
    let x_2874 : i32 = u_xlati80;
    let x_2876 : vec4<f32> = x_2873.x_AdditionalLightsPosition[x_2874];
    let x_2879 : i32 = u_xlati80;
    let x_2881 : vec4<f32> = x_2873.x_AdditionalLightsPosition[x_2879];
    u_xlat33 = ((-(x_2863) * vec3<f32>(x_2876.w, x_2876.w, x_2876.w)) + vec3<f32>(x_2881.x, x_2881.y, x_2881.z));
    let x_2884 : vec3<f32> = u_xlat33;
    let x_2885 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_2884, x_2885);
    let x_2887 : f32 = u_xlat81;
    u_xlat81 = max(x_2887, 0.00006103515625f);
    let x_2890 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2890);
    let x_2892 : f32 = u_xlat82;
    let x_2894 : vec3<f32> = u_xlat33;
    let x_2895 : vec3<f32> = (vec3<f32>(x_2892, x_2892, x_2892) * x_2894);
    let x_2896 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2896.w);
    let x_2899 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2899);
    let x_2901 : f32 = u_xlat81;
    let x_2902 : i32 = u_xlati80;
    let x_2904 : f32 = x_2873.x_AdditionalLightsAttenuation[x_2902].x;
    u_xlat81 = (x_2901 * x_2904);
    let x_2906 : f32 = u_xlat81;
    let x_2908 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2906) * x_2908) + 1.0f);
    let x_2911 : f32 = u_xlat81;
    u_xlat81 = max(x_2911, 0.0f);
    let x_2913 : f32 = u_xlat81;
    let x_2914 : f32 = u_xlat81;
    u_xlat81 = (x_2913 * x_2914);
    let x_2916 : f32 = u_xlat81;
    let x_2917 : f32 = u_xlat84;
    u_xlat81 = (x_2916 * x_2917);
    let x_2919 : i32 = u_xlati80;
    let x_2921 : vec4<f32> = x_2873.x_AdditionalLightsSpotDir[x_2919];
    let x_2923 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2921.x, x_2921.y, x_2921.z), vec3<f32>(x_2923.x, x_2923.y, x_2923.z));
    let x_2926 : f32 = u_xlat84;
    let x_2927 : i32 = u_xlati80;
    let x_2929 : f32 = x_2873.x_AdditionalLightsAttenuation[x_2927].z;
    let x_2931 : i32 = u_xlati80;
    let x_2933 : f32 = x_2873.x_AdditionalLightsAttenuation[x_2931].w;
    u_xlat84 = ((x_2926 * x_2929) + x_2933);
    let x_2935 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2935, 0.0f, 1.0f);
    let x_2937 : f32 = u_xlat84;
    let x_2938 : f32 = u_xlat84;
    u_xlat84 = (x_2937 * x_2938);
    let x_2940 : f32 = u_xlat81;
    let x_2941 : f32 = u_xlat84;
    u_xlat81 = (x_2940 * x_2941);
    let x_2944 : i32 = u_xlati80;
    let x_2946 : f32 = x_833.x_AdditionalShadowParams[x_2944].w;
    u_xlati84 = i32(x_2946);
    let x_2951 : i32 = u_xlati84;
    u_xlatb10.x = (x_2951 >= 0i);
    let x_2955 : bool = u_xlatb10.x;
    if (x_2955) {
      let x_2959 : i32 = u_xlati80;
      let x_2961 : f32 = x_833.x_AdditionalShadowParams[x_2959].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2961, x_2961, x_2961, x_2961))));
      let x_2967 : bool = u_xlatb10.x;
      if (x_2967) {
        let x_2970 : vec4<f32> = u_xlat9;
        let x_2973 : vec4<f32> = u_xlat9;
        let x_2976 : vec4<bool> = (abs(vec4<f32>(x_2970.z, x_2970.z, x_2970.y, x_2970.z)) >= abs(vec4<f32>(x_2973.x, x_2973.y, x_2973.x, x_2973.x)));
        u_xlatb10 = vec3<bool>(x_2976.x, x_2976.y, x_2976.z);
        let x_2979 : bool = u_xlatb10.y;
        let x_2981 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2979 & x_2981);
        let x_2985 : vec4<f32> = u_xlat9;
        let x_2988 : vec4<bool> = (-(vec4<f32>(x_2985.z, x_2985.y, x_2985.x, x_2985.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2988.x, x_2988.y, x_2988.z);
        let x_2992 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2992);
        let x_2997 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2997);
        let x_3001 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3001);
        let x_3006 : bool = u_xlatb10.z;
        if (x_3006) {
          let x_3011 : f32 = u_xlat35.z;
          x_3007 = x_3011;
        } else {
          let x_3014 : f32 = u_xlat11.x;
          x_3007 = x_3014;
        }
        let x_3015 : f32 = x_3007;
        u_xlat60 = x_3015;
        let x_3017 : bool = u_xlatb10.x;
        if (x_3017) {
          let x_3022 : f32 = u_xlat35.x;
          x_3018 = x_3022;
        } else {
          let x_3024 : f32 = u_xlat60;
          x_3018 = x_3024;
        }
        let x_3025 : f32 = x_3018;
        u_xlat10.x = x_3025;
        let x_3027 : i32 = u_xlati80;
        let x_3029 : f32 = x_833.x_AdditionalShadowParams[x_3027].w;
        u_xlat35.x = trunc(x_3029);
        let x_3033 : f32 = u_xlat10.x;
        let x_3035 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3033 + x_3035);
        let x_3039 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3039);
      }
      let x_3041 : i32 = u_xlati84;
      u_xlati84 = (x_3041 << bitcast<u32>(2i));
      let x_3043 : vec3<f32> = vs_TEXCOORD7;
      let x_3045 : i32 = u_xlati84;
      let x_3048 : i32 = u_xlati84;
      let x_3052 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3045 + 1i) / 4i)][((x_3048 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3043.y, x_3043.y, x_3043.y, x_3043.y) * x_3052);
      let x_3054 : i32 = u_xlati84;
      let x_3056 : i32 = u_xlati84;
      let x_3059 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_3054 / 4i)][(x_3056 % 4i)];
      let x_3060 : vec3<f32> = vs_TEXCOORD7;
      let x_3063 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3059 * vec4<f32>(x_3060.x, x_3060.x, x_3060.x, x_3060.x)) + x_3063);
      let x_3065 : i32 = u_xlati84;
      let x_3068 : i32 = u_xlati84;
      let x_3072 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3065 + 2i) / 4i)][((x_3068 + 2i) % 4i)];
      let x_3073 : vec3<f32> = vs_TEXCOORD7;
      let x_3076 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3072 * vec4<f32>(x_3073.z, x_3073.z, x_3073.z, x_3073.z)) + x_3076);
      let x_3078 : vec4<f32> = u_xlat10;
      let x_3079 : i32 = u_xlati84;
      let x_3082 : i32 = u_xlati84;
      let x_3086 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3079 + 3i) / 4i)][((x_3082 + 3i) % 4i)];
      u_xlat10 = (x_3078 + x_3086);
      let x_3088 : vec4<f32> = u_xlat10;
      let x_3090 : vec4<f32> = u_xlat10;
      let x_3092 : vec3<f32> = (vec3<f32>(x_3088.x, x_3088.y, x_3088.z) / vec3<f32>(x_3090.w, x_3090.w, x_3090.w));
      let x_3093 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3092.x, x_3092.y, x_3092.z, x_3093.w);
      let x_3096 : i32 = u_xlati80;
      let x_3098 : f32 = x_833.x_AdditionalShadowParams[x_3096].y;
      u_xlatb84 = (0.0f < x_3098);
      let x_3100 : bool = u_xlatb84;
      if (x_3100) {
        let x_3103 : i32 = u_xlati80;
        let x_3105 : f32 = x_833.x_AdditionalShadowParams[x_3103].y;
        u_xlatb84 = (1.0f == x_3105);
        let x_3107 : bool = u_xlatb84;
        if (x_3107) {
          let x_3110 : vec4<f32> = u_xlat10;
          let x_3113 : vec4<f32> = x_833.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3110.x, x_3110.y, x_3110.x, x_3110.y) + x_3113);
          let x_3116 : vec4<f32> = u_xlat11;
          let x_3117 : vec2<f32> = vec2<f32>(x_3116.x, x_3116.y);
          let x_3119 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
          let x_3127 : vec3<f32> = txVec30;
          let x_3129 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3127.xy, x_3127.z);
          u_xlat12.x = x_3129;
          let x_3132 : vec4<f32> = u_xlat11;
          let x_3133 : vec2<f32> = vec2<f32>(x_3132.z, x_3132.w);
          let x_3135 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
          let x_3142 : vec3<f32> = txVec31;
          let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
          u_xlat12.y = x_3144;
          let x_3146 : vec4<f32> = u_xlat10;
          let x_3149 : vec4<f32> = x_833.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3146.x, x_3146.y, x_3146.x, x_3146.y) + x_3149);
          let x_3152 : vec4<f32> = u_xlat11;
          let x_3153 : vec2<f32> = vec2<f32>(x_3152.x, x_3152.y);
          let x_3155 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
          let x_3162 : vec3<f32> = txVec32;
          let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
          u_xlat12.z = x_3164;
          let x_3167 : vec4<f32> = u_xlat11;
          let x_3168 : vec2<f32> = vec2<f32>(x_3167.z, x_3167.w);
          let x_3170 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
          let x_3177 : vec3<f32> = txVec33;
          let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
          u_xlat12.w = x_3179;
          let x_3181 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3181, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3185 : i32 = u_xlati80;
          let x_3187 : f32 = x_833.x_AdditionalShadowParams[x_3185].y;
          u_xlatb85 = (2.0f == x_3187);
          let x_3189 : bool = u_xlatb85;
          if (x_3189) {
            let x_3192 : vec4<f32> = u_xlat10;
            let x_3195 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3198 : vec2<f32> = ((vec2<f32>(x_3192.x, x_3192.y) * vec2<f32>(x_3195.z, x_3195.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3199 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3198.x, x_3198.y, x_3199.z, x_3199.w);
            let x_3201 : vec4<f32> = u_xlat11;
            let x_3203 : vec2<f32> = floor(vec2<f32>(x_3201.x, x_3201.y));
            let x_3204 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3203.x, x_3203.y, x_3204.z, x_3204.w);
            let x_3207 : vec4<f32> = u_xlat10;
            let x_3210 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3213 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3207.x, x_3207.y) * vec2<f32>(x_3210.z, x_3210.w)) + -(vec2<f32>(x_3213.x, x_3213.y)));
            let x_3217 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3217.x, x_3217.x, x_3217.y, x_3217.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3220 : vec4<f32> = u_xlat12;
            let x_3222 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3220.x, x_3220.x, x_3220.z, x_3220.z) * vec4<f32>(x_3222.x, x_3222.x, x_3222.z, x_3222.z));
            let x_3225 : vec4<f32> = u_xlat13;
            let x_3227 : vec2<f32> = (vec2<f32>(x_3225.y, x_3225.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3228 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3227.x, x_3228.y, x_3227.y, x_3228.w);
            let x_3230 : vec4<f32> = u_xlat13;
            let x_3233 : vec2<f32> = u_xlat61;
            let x_3235 : vec2<f32> = ((vec2<f32>(x_3230.x, x_3230.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3233));
            let x_3236 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3235.x, x_3235.y, x_3236.z, x_3236.w);
            let x_3239 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3239) + vec2<f32>(1.0f, 1.0f));
            let x_3242 : vec2<f32> = u_xlat61;
            let x_3243 : vec2<f32> = min(x_3242, vec2<f32>(0.0f, 0.0f));
            let x_3244 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
            let x_3246 : vec4<f32> = u_xlat14;
            let x_3249 : vec4<f32> = u_xlat14;
            let x_3252 : vec2<f32> = u_xlat63;
            let x_3253 : vec2<f32> = ((-(vec2<f32>(x_3246.x, x_3246.y)) * vec2<f32>(x_3249.x, x_3249.y)) + x_3252);
            let x_3254 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3253.x, x_3253.y, x_3254.z, x_3254.w);
            let x_3256 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3256, vec2<f32>(0.0f, 0.0f));
            let x_3258 : vec2<f32> = u_xlat61;
            let x_3260 : vec2<f32> = u_xlat61;
            let x_3262 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3258) * x_3260) + vec2<f32>(x_3262.y, x_3262.w));
            let x_3265 : vec4<f32> = u_xlat14;
            let x_3267 : vec2<f32> = (vec2<f32>(x_3265.x, x_3265.y) + vec2<f32>(1.0f, 1.0f));
            let x_3268 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3267.x, x_3267.y, x_3268.z, x_3268.w);
            let x_3270 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3270 + vec2<f32>(1.0f, 1.0f));
            let x_3272 : vec4<f32> = u_xlat13;
            let x_3274 : vec2<f32> = (vec2<f32>(x_3272.x, x_3272.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3275 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3274.x, x_3274.y, x_3275.z, x_3275.w);
            let x_3277 : vec2<f32> = u_xlat63;
            let x_3278 : vec2<f32> = (x_3277 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3279 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3278.x, x_3278.y, x_3279.z, x_3279.w);
            let x_3281 : vec4<f32> = u_xlat14;
            let x_3283 : vec2<f32> = (vec2<f32>(x_3281.x, x_3281.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3284 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3283.x, x_3283.y, x_3284.z, x_3284.w);
            let x_3286 : vec2<f32> = u_xlat61;
            let x_3287 : vec2<f32> = (x_3286 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3288 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3287.x, x_3287.y, x_3288.z, x_3288.w);
            let x_3290 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3290.y, x_3290.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3294 : f32 = u_xlat14.x;
            u_xlat15.z = x_3294;
            let x_3297 : f32 = u_xlat61.x;
            u_xlat15.w = x_3297;
            let x_3300 : f32 = u_xlat16.x;
            u_xlat13.z = x_3300;
            let x_3303 : f32 = u_xlat12.x;
            u_xlat13.w = x_3303;
            let x_3305 : vec4<f32> = u_xlat13;
            let x_3307 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3305.z, x_3305.w, x_3305.x, x_3305.z) + vec4<f32>(x_3307.z, x_3307.w, x_3307.x, x_3307.z));
            let x_3311 : f32 = u_xlat15.y;
            u_xlat14.z = x_3311;
            let x_3314 : f32 = u_xlat61.y;
            u_xlat14.w = x_3314;
            let x_3317 : f32 = u_xlat13.y;
            u_xlat16.z = x_3317;
            let x_3320 : f32 = u_xlat12.z;
            u_xlat16.w = x_3320;
            let x_3322 : vec4<f32> = u_xlat14;
            let x_3324 : vec4<f32> = u_xlat16;
            let x_3326 : vec3<f32> = (vec3<f32>(x_3322.z, x_3322.y, x_3322.w) + vec3<f32>(x_3324.z, x_3324.y, x_3324.w));
            let x_3327 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3326.x, x_3326.y, x_3326.z, x_3327.w);
            let x_3329 : vec4<f32> = u_xlat13;
            let x_3331 : vec4<f32> = u_xlat17;
            let x_3333 : vec3<f32> = (vec3<f32>(x_3329.x, x_3329.z, x_3329.w) / vec3<f32>(x_3331.z, x_3331.w, x_3331.y));
            let x_3334 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3334.w);
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3338 : vec3<f32> = (vec3<f32>(x_3336.x, x_3336.y, x_3336.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3339 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3338.x, x_3338.y, x_3338.z, x_3339.w);
            let x_3341 : vec4<f32> = u_xlat16;
            let x_3343 : vec4<f32> = u_xlat12;
            let x_3345 : vec3<f32> = (vec3<f32>(x_3341.z, x_3341.y, x_3341.w) / vec3<f32>(x_3343.x, x_3343.y, x_3343.z));
            let x_3346 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3345.x, x_3345.y, x_3345.z, x_3346.w);
            let x_3348 : vec4<f32> = u_xlat14;
            let x_3350 : vec3<f32> = (vec3<f32>(x_3348.x, x_3348.y, x_3348.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3351 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3351.w);
            let x_3353 : vec4<f32> = u_xlat13;
            let x_3356 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3358 : vec3<f32> = (vec3<f32>(x_3353.y, x_3353.x, x_3353.z) * vec3<f32>(x_3356.x, x_3356.x, x_3356.x));
            let x_3359 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3358.x, x_3358.y, x_3358.z, x_3359.w);
            let x_3361 : vec4<f32> = u_xlat14;
            let x_3364 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3366 : vec3<f32> = (vec3<f32>(x_3361.x, x_3361.y, x_3361.z) * vec3<f32>(x_3364.y, x_3364.y, x_3364.y));
            let x_3367 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3366.x, x_3366.y, x_3366.z, x_3367.w);
            let x_3370 : f32 = u_xlat14.x;
            u_xlat13.w = x_3370;
            let x_3372 : vec4<f32> = u_xlat11;
            let x_3375 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3378 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3372.x, x_3372.y, x_3372.x, x_3372.y) * vec4<f32>(x_3375.x, x_3375.y, x_3375.x, x_3375.y)) + vec4<f32>(x_3378.y, x_3378.w, x_3378.x, x_3378.w));
            let x_3381 : vec4<f32> = u_xlat11;
            let x_3384 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3387 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3381.x, x_3381.y) * vec2<f32>(x_3384.x, x_3384.y)) + vec2<f32>(x_3387.z, x_3387.w));
            let x_3391 : f32 = u_xlat13.y;
            u_xlat14.w = x_3391;
            let x_3393 : vec4<f32> = u_xlat14;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.y, x_3393.z);
            let x_3395 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3395.x, x_3394.x, x_3395.z, x_3394.y);
            let x_3397 : vec4<f32> = u_xlat11;
            let x_3400 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3403 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3397.x, x_3397.y, x_3397.x, x_3397.y) * vec4<f32>(x_3400.x, x_3400.y, x_3400.x, x_3400.y)) + vec4<f32>(x_3403.x, x_3403.y, x_3403.z, x_3403.y));
            let x_3406 : vec4<f32> = u_xlat11;
            let x_3409 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3412 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3406.x, x_3406.y, x_3406.x, x_3406.y) * vec4<f32>(x_3409.x, x_3409.y, x_3409.x, x_3409.y)) + vec4<f32>(x_3412.w, x_3412.y, x_3412.w, x_3412.z));
            let x_3415 : vec4<f32> = u_xlat11;
            let x_3418 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3421 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3415.x, x_3415.y, x_3415.x, x_3415.y) * vec4<f32>(x_3418.x, x_3418.y, x_3418.x, x_3418.y)) + vec4<f32>(x_3421.x, x_3421.w, x_3421.z, x_3421.w));
            let x_3424 : vec4<f32> = u_xlat12;
            let x_3426 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3424.x, x_3424.x, x_3424.x, x_3424.y) * vec4<f32>(x_3426.z, x_3426.w, x_3426.y, x_3426.z));
            let x_3429 : vec4<f32> = u_xlat12;
            let x_3431 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3429.y, x_3429.y, x_3429.z, x_3429.z) * x_3431);
            let x_3435 : f32 = u_xlat12.z;
            let x_3437 : f32 = u_xlat17.y;
            u_xlat85 = (x_3435 * x_3437);
            let x_3440 : vec4<f32> = u_xlat15;
            let x_3441 : vec2<f32> = vec2<f32>(x_3440.x, x_3440.y);
            let x_3443 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec34;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat11.x = x_3452;
            let x_3455 : vec4<f32> = u_xlat15;
            let x_3456 : vec2<f32> = vec2<f32>(x_3455.z, x_3455.w);
            let x_3458 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3456.x, x_3456.y, x_3458);
            let x_3466 : vec3<f32> = txVec35;
            let x_3468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3466.xy, x_3466.z);
            u_xlat36 = x_3468;
            let x_3469 : f32 = u_xlat36;
            let x_3471 : f32 = u_xlat18.y;
            u_xlat36 = (x_3469 * x_3471);
            let x_3474 : f32 = u_xlat18.x;
            let x_3476 : f32 = u_xlat11.x;
            let x_3478 : f32 = u_xlat36;
            u_xlat11.x = ((x_3474 * x_3476) + x_3478);
            let x_3482 : vec2<f32> = u_xlat61;
            let x_3484 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3482.x, x_3482.y, x_3484);
            let x_3491 : vec3<f32> = txVec36;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat36 = x_3493;
            let x_3495 : f32 = u_xlat18.z;
            let x_3496 : f32 = u_xlat36;
            let x_3499 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3495 * x_3496) + x_3499);
            let x_3503 : vec4<f32> = u_xlat14;
            let x_3504 : vec2<f32> = vec2<f32>(x_3503.x, x_3503.y);
            let x_3506 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3504.x, x_3504.y, x_3506);
            let x_3513 : vec3<f32> = txVec37;
            let x_3515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3513.xy, x_3513.z);
            u_xlat36 = x_3515;
            let x_3517 : f32 = u_xlat18.w;
            let x_3518 : f32 = u_xlat36;
            let x_3521 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3517 * x_3518) + x_3521);
            let x_3525 : vec4<f32> = u_xlat16;
            let x_3526 : vec2<f32> = vec2<f32>(x_3525.x, x_3525.y);
            let x_3528 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3526.x, x_3526.y, x_3528);
            let x_3535 : vec3<f32> = txVec38;
            let x_3537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3535.xy, x_3535.z);
            u_xlat36 = x_3537;
            let x_3539 : f32 = u_xlat19.x;
            let x_3540 : f32 = u_xlat36;
            let x_3543 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3539 * x_3540) + x_3543);
            let x_3547 : vec4<f32> = u_xlat16;
            let x_3548 : vec2<f32> = vec2<f32>(x_3547.z, x_3547.w);
            let x_3550 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3548.x, x_3548.y, x_3550);
            let x_3557 : vec3<f32> = txVec39;
            let x_3559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3557.xy, x_3557.z);
            u_xlat36 = x_3559;
            let x_3561 : f32 = u_xlat19.y;
            let x_3562 : f32 = u_xlat36;
            let x_3565 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3561 * x_3562) + x_3565);
            let x_3569 : vec4<f32> = u_xlat14;
            let x_3570 : vec2<f32> = vec2<f32>(x_3569.z, x_3569.w);
            let x_3572 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3570.x, x_3570.y, x_3572);
            let x_3579 : vec3<f32> = txVec40;
            let x_3581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3579.xy, x_3579.z);
            u_xlat36 = x_3581;
            let x_3583 : f32 = u_xlat19.z;
            let x_3584 : f32 = u_xlat36;
            let x_3587 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3583 * x_3584) + x_3587);
            let x_3591 : vec4<f32> = u_xlat13;
            let x_3592 : vec2<f32> = vec2<f32>(x_3591.x, x_3591.y);
            let x_3594 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
            let x_3601 : vec3<f32> = txVec41;
            let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
            u_xlat36 = x_3603;
            let x_3605 : f32 = u_xlat19.w;
            let x_3606 : f32 = u_xlat36;
            let x_3609 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3605 * x_3606) + x_3609);
            let x_3613 : vec4<f32> = u_xlat13;
            let x_3614 : vec2<f32> = vec2<f32>(x_3613.z, x_3613.w);
            let x_3616 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3614.x, x_3614.y, x_3616);
            let x_3623 : vec3<f32> = txVec42;
            let x_3625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3623.xy, x_3623.z);
            u_xlat36 = x_3625;
            let x_3626 : f32 = u_xlat85;
            let x_3627 : f32 = u_xlat36;
            let x_3630 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3626 * x_3627) + x_3630);
          } else {
            let x_3633 : vec4<f32> = u_xlat10;
            let x_3636 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3639 : vec2<f32> = ((vec2<f32>(x_3633.x, x_3633.y) * vec2<f32>(x_3636.z, x_3636.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3640 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3639.x, x_3639.y, x_3640.z, x_3640.w);
            let x_3642 : vec4<f32> = u_xlat11;
            let x_3644 : vec2<f32> = floor(vec2<f32>(x_3642.x, x_3642.y));
            let x_3645 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3644.x, x_3644.y, x_3645.z, x_3645.w);
            let x_3647 : vec4<f32> = u_xlat10;
            let x_3650 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3653 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3647.x, x_3647.y) * vec2<f32>(x_3650.z, x_3650.w)) + -(vec2<f32>(x_3653.x, x_3653.y)));
            let x_3657 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3657.x, x_3657.x, x_3657.y, x_3657.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3660 : vec4<f32> = u_xlat12;
            let x_3662 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3660.x, x_3660.x, x_3660.z, x_3660.z) * vec4<f32>(x_3662.x, x_3662.x, x_3662.z, x_3662.z));
            let x_3665 : vec4<f32> = u_xlat13;
            let x_3667 : vec2<f32> = (vec2<f32>(x_3665.y, x_3665.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3668 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3668.x, x_3667.x, x_3668.z, x_3667.y);
            let x_3670 : vec4<f32> = u_xlat13;
            let x_3673 : vec2<f32> = u_xlat61;
            let x_3675 : vec2<f32> = ((vec2<f32>(x_3670.x, x_3670.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3673));
            let x_3676 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3675.x, x_3676.y, x_3675.y, x_3676.w);
            let x_3678 : vec2<f32> = u_xlat61;
            let x_3680 : vec2<f32> = (-(x_3678) + vec2<f32>(1.0f, 1.0f));
            let x_3681 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3680.x, x_3680.y, x_3681.z, x_3681.w);
            let x_3683 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3683, vec2<f32>(0.0f, 0.0f));
            let x_3685 : vec2<f32> = u_xlat63;
            let x_3687 : vec2<f32> = u_xlat63;
            let x_3689 : vec4<f32> = u_xlat13;
            let x_3691 : vec2<f32> = ((-(x_3685) * x_3687) + vec2<f32>(x_3689.x, x_3689.y));
            let x_3692 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3691.x, x_3691.y, x_3692.z, x_3692.w);
            let x_3694 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3694, vec2<f32>(0.0f, 0.0f));
            let x_3697 : vec2<f32> = u_xlat63;
            let x_3699 : vec2<f32> = u_xlat63;
            let x_3701 : vec4<f32> = u_xlat12;
            let x_3703 : vec2<f32> = ((-(x_3697) * x_3699) + vec2<f32>(x_3701.y, x_3701.w));
            let x_3704 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3703.x, x_3704.y, x_3703.y);
            let x_3706 : vec4<f32> = u_xlat13;
            let x_3708 : vec2<f32> = (vec2<f32>(x_3706.x, x_3706.y) + vec2<f32>(2.0f, 2.0f));
            let x_3709 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3708.x, x_3708.y, x_3709.z, x_3709.w);
            let x_3711 : vec3<f32> = u_xlat37;
            let x_3713 : vec2<f32> = (vec2<f32>(x_3711.x, x_3711.z) + vec2<f32>(2.0f, 2.0f));
            let x_3714 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3714.x, x_3713.x, x_3714.z, x_3713.y);
            let x_3717 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3717 * 0.08163200318813323975f);
            let x_3720 : vec4<f32> = u_xlat12;
            let x_3722 : vec3<f32> = (vec3<f32>(x_3720.z, x_3720.x, x_3720.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3723 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3722.x, x_3722.y, x_3722.z, x_3723.w);
            let x_3725 : vec4<f32> = u_xlat13;
            let x_3727 : vec2<f32> = (vec2<f32>(x_3725.x, x_3725.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3728 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3727.x, x_3727.y, x_3728.z, x_3728.w);
            let x_3731 : f32 = u_xlat16.y;
            u_xlat15.x = x_3731;
            let x_3733 : vec2<f32> = u_xlat61;
            let x_3736 : vec2<f32> = ((vec2<f32>(x_3733.x, x_3733.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3737 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3737.x, x_3736.x, x_3737.z, x_3736.y);
            let x_3739 : vec2<f32> = u_xlat61;
            let x_3742 : vec2<f32> = ((vec2<f32>(x_3739.x, x_3739.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3743 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3742.x, x_3743.y, x_3742.y, x_3743.w);
            let x_3746 : f32 = u_xlat12.x;
            u_xlat13.y = x_3746;
            let x_3749 : f32 = u_xlat14.y;
            u_xlat13.w = x_3749;
            let x_3751 : vec4<f32> = u_xlat13;
            let x_3752 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3751 + x_3752);
            let x_3754 : vec2<f32> = u_xlat61;
            let x_3757 : vec2<f32> = ((vec2<f32>(x_3754.y, x_3754.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3758 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3758.x, x_3757.x, x_3758.z, x_3757.y);
            let x_3760 : vec2<f32> = u_xlat61;
            let x_3763 : vec2<f32> = ((vec2<f32>(x_3760.y, x_3760.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3764 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3763.x, x_3764.y, x_3763.y, x_3764.w);
            let x_3767 : f32 = u_xlat12.y;
            u_xlat14.y = x_3767;
            let x_3769 : vec4<f32> = u_xlat14;
            let x_3770 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3769 + x_3770);
            let x_3772 : vec4<f32> = u_xlat13;
            let x_3773 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3772 / x_3773);
            let x_3775 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3775 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3777 : vec4<f32> = u_xlat14;
            let x_3778 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3777 / x_3778);
            let x_3780 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3780 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3782 : vec4<f32> = u_xlat13;
            let x_3785 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3782.w, x_3782.x, x_3782.y, x_3782.z) * vec4<f32>(x_3785.x, x_3785.x, x_3785.x, x_3785.x));
            let x_3788 : vec4<f32> = u_xlat14;
            let x_3791 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3788.x, x_3788.w, x_3788.y, x_3788.z) * vec4<f32>(x_3791.y, x_3791.y, x_3791.y, x_3791.y));
            let x_3794 : vec4<f32> = u_xlat13;
            let x_3795 : vec3<f32> = vec3<f32>(x_3794.y, x_3794.z, x_3794.w);
            let x_3796 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3795.x, x_3796.y, x_3795.y, x_3795.z);
            let x_3799 : f32 = u_xlat14.x;
            u_xlat16.y = x_3799;
            let x_3801 : vec4<f32> = u_xlat11;
            let x_3804 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3807 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3801.x, x_3801.y, x_3801.x, x_3801.y) * vec4<f32>(x_3804.x, x_3804.y, x_3804.x, x_3804.y)) + vec4<f32>(x_3807.x, x_3807.y, x_3807.z, x_3807.y));
            let x_3810 : vec4<f32> = u_xlat11;
            let x_3813 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3816 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3810.x, x_3810.y) * vec2<f32>(x_3813.x, x_3813.y)) + vec2<f32>(x_3816.w, x_3816.y));
            let x_3820 : f32 = u_xlat16.y;
            u_xlat13.y = x_3820;
            let x_3823 : f32 = u_xlat14.z;
            u_xlat16.y = x_3823;
            let x_3825 : vec4<f32> = u_xlat11;
            let x_3828 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3831 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3825.x, x_3825.y, x_3825.x, x_3825.y) * vec4<f32>(x_3828.x, x_3828.y, x_3828.x, x_3828.y)) + vec4<f32>(x_3831.x, x_3831.y, x_3831.z, x_3831.y));
            let x_3834 : vec4<f32> = u_xlat11;
            let x_3837 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3840 : vec4<f32> = u_xlat16;
            let x_3842 : vec2<f32> = ((vec2<f32>(x_3834.x, x_3834.y) * vec2<f32>(x_3837.x, x_3837.y)) + vec2<f32>(x_3840.w, x_3840.y));
            let x_3843 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3842.x, x_3842.y, x_3843.z, x_3843.w);
            let x_3846 : f32 = u_xlat16.y;
            u_xlat13.z = x_3846;
            let x_3849 : vec4<f32> = u_xlat11;
            let x_3852 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3855 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3849.x, x_3849.y, x_3849.x, x_3849.y) * vec4<f32>(x_3852.x, x_3852.y, x_3852.x, x_3852.y)) + vec4<f32>(x_3855.x, x_3855.y, x_3855.x, x_3855.z));
            let x_3859 : f32 = u_xlat14.w;
            u_xlat16.y = x_3859;
            let x_3862 : vec4<f32> = u_xlat11;
            let x_3865 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3868 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3862.x, x_3862.y, x_3862.x, x_3862.y) * vec4<f32>(x_3865.x, x_3865.y, x_3865.x, x_3865.y)) + vec4<f32>(x_3868.x, x_3868.y, x_3868.z, x_3868.y));
            let x_3872 : vec4<f32> = u_xlat11;
            let x_3875 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3878 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3872.x, x_3872.y) * vec2<f32>(x_3875.x, x_3875.y)) + vec2<f32>(x_3878.w, x_3878.y));
            let x_3882 : f32 = u_xlat16.y;
            u_xlat13.w = x_3882;
            let x_3885 : vec4<f32> = u_xlat11;
            let x_3888 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3891 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3885.x, x_3885.y) * vec2<f32>(x_3888.x, x_3888.y)) + vec2<f32>(x_3891.x, x_3891.w));
            let x_3894 : vec4<f32> = u_xlat16;
            let x_3895 : vec3<f32> = vec3<f32>(x_3894.x, x_3894.z, x_3894.w);
            let x_3896 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3895.x, x_3896.y, x_3895.y, x_3895.z);
            let x_3898 : vec4<f32> = u_xlat11;
            let x_3901 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3904 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3898.x, x_3898.y, x_3898.x, x_3898.y) * vec4<f32>(x_3901.x, x_3901.y, x_3901.x, x_3901.y)) + vec4<f32>(x_3904.x, x_3904.y, x_3904.z, x_3904.y));
            let x_3907 : vec4<f32> = u_xlat11;
            let x_3910 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3913 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3907.x, x_3907.y) * vec2<f32>(x_3910.x, x_3910.y)) + vec2<f32>(x_3913.w, x_3913.y));
            let x_3917 : f32 = u_xlat13.x;
            u_xlat14.x = x_3917;
            let x_3919 : vec4<f32> = u_xlat11;
            let x_3922 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3925 : vec4<f32> = u_xlat14;
            let x_3927 : vec2<f32> = ((vec2<f32>(x_3919.x, x_3919.y) * vec2<f32>(x_3922.x, x_3922.y)) + vec2<f32>(x_3925.x, x_3925.y));
            let x_3928 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3927.x, x_3927.y, x_3928.z, x_3928.w);
            let x_3931 : vec4<f32> = u_xlat12;
            let x_3933 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3931.x, x_3931.x, x_3931.x, x_3931.x) * x_3933);
            let x_3936 : vec4<f32> = u_xlat12;
            let x_3938 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3936.y, x_3936.y, x_3936.y, x_3936.y) * x_3938);
            let x_3941 : vec4<f32> = u_xlat12;
            let x_3943 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3941.z, x_3941.z, x_3941.z, x_3941.z) * x_3943);
            let x_3945 : vec4<f32> = u_xlat12;
            let x_3947 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3945.w, x_3945.w, x_3945.w, x_3945.w) * x_3947);
            let x_3950 : vec4<f32> = u_xlat17;
            let x_3951 : vec2<f32> = vec2<f32>(x_3950.x, x_3950.y);
            let x_3953 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3951.x, x_3951.y, x_3953);
            let x_3960 : vec3<f32> = txVec43;
            let x_3962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3960.xy, x_3960.z);
            u_xlat85 = x_3962;
            let x_3964 : vec4<f32> = u_xlat17;
            let x_3965 : vec2<f32> = vec2<f32>(x_3964.z, x_3964.w);
            let x_3967 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3965.x, x_3965.y, x_3967);
            let x_3974 : vec3<f32> = txVec44;
            let x_3976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3974.xy, x_3974.z);
            u_xlat13.x = x_3976;
            let x_3979 : f32 = u_xlat13.x;
            let x_3981 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3979 * x_3981);
            let x_3985 : f32 = u_xlat22.x;
            let x_3986 : f32 = u_xlat85;
            let x_3989 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3985 * x_3986) + x_3989);
            let x_3992 : vec2<f32> = u_xlat61;
            let x_3994 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3992.x, x_3992.y, x_3994);
            let x_4001 : vec3<f32> = txVec45;
            let x_4003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4001.xy, x_4001.z);
            u_xlat61.x = x_4003;
            let x_4006 : f32 = u_xlat22.z;
            let x_4008 : f32 = u_xlat61.x;
            let x_4010 : f32 = u_xlat85;
            u_xlat85 = ((x_4006 * x_4008) + x_4010);
            let x_4013 : vec4<f32> = u_xlat20;
            let x_4014 : vec2<f32> = vec2<f32>(x_4013.x, x_4013.y);
            let x_4016 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_4014.x, x_4014.y, x_4016);
            let x_4023 : vec3<f32> = txVec46;
            let x_4025 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4023.xy, x_4023.z);
            u_xlat61.x = x_4025;
            let x_4028 : f32 = u_xlat22.w;
            let x_4030 : f32 = u_xlat61.x;
            let x_4032 : f32 = u_xlat85;
            u_xlat85 = ((x_4028 * x_4030) + x_4032);
            let x_4035 : vec4<f32> = u_xlat18;
            let x_4036 : vec2<f32> = vec2<f32>(x_4035.x, x_4035.y);
            let x_4038 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_4036.x, x_4036.y, x_4038);
            let x_4045 : vec3<f32> = txVec47;
            let x_4047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4045.xy, x_4045.z);
            u_xlat61.x = x_4047;
            let x_4050 : f32 = u_xlat23.x;
            let x_4052 : f32 = u_xlat61.x;
            let x_4054 : f32 = u_xlat85;
            u_xlat85 = ((x_4050 * x_4052) + x_4054);
            let x_4057 : vec4<f32> = u_xlat18;
            let x_4058 : vec2<f32> = vec2<f32>(x_4057.z, x_4057.w);
            let x_4060 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_4058.x, x_4058.y, x_4060);
            let x_4067 : vec3<f32> = txVec48;
            let x_4069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4067.xy, x_4067.z);
            u_xlat61.x = x_4069;
            let x_4072 : f32 = u_xlat23.y;
            let x_4074 : f32 = u_xlat61.x;
            let x_4076 : f32 = u_xlat85;
            u_xlat85 = ((x_4072 * x_4074) + x_4076);
            let x_4079 : vec4<f32> = u_xlat19;
            let x_4080 : vec2<f32> = vec2<f32>(x_4079.x, x_4079.y);
            let x_4082 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4080.x, x_4080.y, x_4082);
            let x_4089 : vec3<f32> = txVec49;
            let x_4091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4089.xy, x_4089.z);
            u_xlat61.x = x_4091;
            let x_4094 : f32 = u_xlat23.z;
            let x_4096 : f32 = u_xlat61.x;
            let x_4098 : f32 = u_xlat85;
            u_xlat85 = ((x_4094 * x_4096) + x_4098);
            let x_4101 : vec4<f32> = u_xlat20;
            let x_4102 : vec2<f32> = vec2<f32>(x_4101.z, x_4101.w);
            let x_4104 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4102.x, x_4102.y, x_4104);
            let x_4111 : vec3<f32> = txVec50;
            let x_4113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4111.xy, x_4111.z);
            u_xlat61.x = x_4113;
            let x_4116 : f32 = u_xlat23.w;
            let x_4118 : f32 = u_xlat61.x;
            let x_4120 : f32 = u_xlat85;
            u_xlat85 = ((x_4116 * x_4118) + x_4120);
            let x_4123 : vec4<f32> = u_xlat21;
            let x_4124 : vec2<f32> = vec2<f32>(x_4123.x, x_4123.y);
            let x_4126 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4124.x, x_4124.y, x_4126);
            let x_4133 : vec3<f32> = txVec51;
            let x_4135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4133.xy, x_4133.z);
            u_xlat61.x = x_4135;
            let x_4138 : f32 = u_xlat24.x;
            let x_4140 : f32 = u_xlat61.x;
            let x_4142 : f32 = u_xlat85;
            u_xlat85 = ((x_4138 * x_4140) + x_4142);
            let x_4145 : vec4<f32> = u_xlat21;
            let x_4146 : vec2<f32> = vec2<f32>(x_4145.z, x_4145.w);
            let x_4148 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4146.x, x_4146.y, x_4148);
            let x_4155 : vec3<f32> = txVec52;
            let x_4157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4155.xy, x_4155.z);
            u_xlat61.x = x_4157;
            let x_4160 : f32 = u_xlat24.y;
            let x_4162 : f32 = u_xlat61.x;
            let x_4164 : f32 = u_xlat85;
            u_xlat85 = ((x_4160 * x_4162) + x_4164);
            let x_4167 : vec2<f32> = u_xlat38;
            let x_4169 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4167.x, x_4167.y, x_4169);
            let x_4176 : vec3<f32> = txVec53;
            let x_4178 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4176.xy, x_4176.z);
            u_xlat61.x = x_4178;
            let x_4181 : f32 = u_xlat24.z;
            let x_4183 : f32 = u_xlat61.x;
            let x_4185 : f32 = u_xlat85;
            u_xlat85 = ((x_4181 * x_4183) + x_4185);
            let x_4188 : vec2<f32> = u_xlat69;
            let x_4190 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4188.x, x_4188.y, x_4190);
            let x_4197 : vec3<f32> = txVec54;
            let x_4199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4197.xy, x_4197.z);
            u_xlat61.x = x_4199;
            let x_4202 : f32 = u_xlat24.w;
            let x_4204 : f32 = u_xlat61.x;
            let x_4206 : f32 = u_xlat85;
            u_xlat85 = ((x_4202 * x_4204) + x_4206);
            let x_4209 : vec4<f32> = u_xlat16;
            let x_4210 : vec2<f32> = vec2<f32>(x_4209.x, x_4209.y);
            let x_4212 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4210.x, x_4210.y, x_4212);
            let x_4219 : vec3<f32> = txVec55;
            let x_4221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4219.xy, x_4219.z);
            u_xlat61.x = x_4221;
            let x_4224 : f32 = u_xlat12.x;
            let x_4226 : f32 = u_xlat61.x;
            let x_4228 : f32 = u_xlat85;
            u_xlat85 = ((x_4224 * x_4226) + x_4228);
            let x_4231 : vec4<f32> = u_xlat16;
            let x_4232 : vec2<f32> = vec2<f32>(x_4231.z, x_4231.w);
            let x_4234 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4232.x, x_4232.y, x_4234);
            let x_4241 : vec3<f32> = txVec56;
            let x_4243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4241.xy, x_4241.z);
            u_xlat61.x = x_4243;
            let x_4246 : f32 = u_xlat12.y;
            let x_4248 : f32 = u_xlat61.x;
            let x_4250 : f32 = u_xlat85;
            u_xlat85 = ((x_4246 * x_4248) + x_4250);
            let x_4253 : vec2<f32> = u_xlat64;
            let x_4255 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4253.x, x_4253.y, x_4255);
            let x_4262 : vec3<f32> = txVec57;
            let x_4264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4262.xy, x_4262.z);
            u_xlat61.x = x_4264;
            let x_4267 : f32 = u_xlat12.z;
            let x_4269 : f32 = u_xlat61.x;
            let x_4271 : f32 = u_xlat85;
            u_xlat85 = ((x_4267 * x_4269) + x_4271);
            let x_4274 : vec4<f32> = u_xlat11;
            let x_4275 : vec2<f32> = vec2<f32>(x_4274.x, x_4274.y);
            let x_4277 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4275.x, x_4275.y, x_4277);
            let x_4284 : vec3<f32> = txVec58;
            let x_4286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4284.xy, x_4284.z);
            u_xlat11.x = x_4286;
            let x_4289 : f32 = u_xlat12.w;
            let x_4291 : f32 = u_xlat11.x;
            let x_4293 : f32 = u_xlat85;
            u_xlat84 = ((x_4289 * x_4291) + x_4293);
          }
        }
      } else {
        let x_4297 : vec4<f32> = u_xlat10;
        let x_4298 : vec2<f32> = vec2<f32>(x_4297.x, x_4297.y);
        let x_4300 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4298.x, x_4298.y, x_4300);
        let x_4307 : vec3<f32> = txVec59;
        let x_4309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4307.xy, x_4307.z);
        u_xlat84 = x_4309;
      }
      let x_4310 : i32 = u_xlati80;
      let x_4312 : f32 = x_833.x_AdditionalShadowParams[x_4310].x;
      u_xlat10.x = (1.0f + -(x_4312));
      let x_4316 : f32 = u_xlat84;
      let x_4317 : i32 = u_xlati80;
      let x_4319 : f32 = x_833.x_AdditionalShadowParams[x_4317].x;
      let x_4322 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4316 * x_4319) + x_4322);
      let x_4325 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4325);
      let x_4330 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4330 >= 1.0f);
      let x_4332 : bool = u_xlatb35;
      let x_4334 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4332 | x_4334);
      let x_4338 : bool = u_xlatb10.x;
      let x_4339 : f32 = u_xlat84;
      u_xlat84 = select(x_4339, 1.0f, x_4338);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4342 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4342) + 1.0f);
    let x_4346 : f32 = u_xlat50;
    let x_4348 : f32 = u_xlat10.x;
    let x_4350 : f32 = u_xlat84;
    u_xlat84 = ((x_4346 * x_4348) + x_4350);
    let x_4352 : f32 = u_xlat81;
    let x_4353 : f32 = u_xlat84;
    u_xlat81 = (x_4352 * x_4353);
    let x_4355 : vec4<f32> = u_xlat1;
    let x_4357 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4355.x, x_4355.y, x_4355.z), vec3<f32>(x_4357.x, x_4357.y, x_4357.z));
    let x_4360 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4360, 0.0f, 1.0f);
    let x_4362 : f32 = u_xlat81;
    let x_4363 : f32 = u_xlat84;
    u_xlat81 = (x_4362 * x_4363);
    let x_4365 : f32 = u_xlat81;
    let x_4367 : i32 = u_xlati80;
    let x_4369 : vec4<f32> = x_2873.x_AdditionalLightsColor[x_4367];
    let x_4371 : vec3<f32> = (vec3<f32>(x_4365, x_4365, x_4365) * vec3<f32>(x_4369.x, x_4369.y, x_4369.z));
    let x_4372 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4371.x, x_4371.y, x_4371.z, x_4372.w);
    let x_4374 : vec3<f32> = u_xlat33;
    let x_4375 : f32 = u_xlat82;
    let x_4378 : vec4<f32> = u_xlat6;
    u_xlat33 = ((x_4374 * vec3<f32>(x_4375, x_4375, x_4375)) + vec3<f32>(x_4378.x, x_4378.y, x_4378.z));
    let x_4381 : vec3<f32> = u_xlat33;
    let x_4382 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_4381, x_4382);
    let x_4384 : f32 = u_xlat80;
    u_xlat80 = max(x_4384, 1.17549435e-38f);
    let x_4386 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4386);
    let x_4388 : f32 = u_xlat80;
    let x_4390 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4388, x_4388, x_4388) * x_4390);
    let x_4392 : vec4<f32> = u_xlat1;
    let x_4394 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4392.x, x_4392.y, x_4392.z), x_4394);
    let x_4396 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4396, 0.0f, 1.0f);
    let x_4398 : vec4<f32> = u_xlat9;
    let x_4400 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(vec3<f32>(x_4398.x, x_4398.y, x_4398.z), x_4400);
    let x_4402 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4402, 0.0f, 1.0f);
    let x_4404 : f32 = u_xlat80;
    let x_4405 : f32 = u_xlat80;
    u_xlat80 = (x_4404 * x_4405);
    let x_4407 : f32 = u_xlat80;
    let x_4409 : f32 = u_xlat8.x;
    u_xlat80 = ((x_4407 * x_4409) + 1.00001001358032226562f);
    let x_4412 : f32 = u_xlat81;
    let x_4413 : f32 = u_xlat81;
    u_xlat81 = (x_4412 * x_4413);
    let x_4415 : f32 = u_xlat80;
    let x_4416 : f32 = u_xlat80;
    u_xlat80 = (x_4415 * x_4416);
    let x_4418 : f32 = u_xlat81;
    u_xlat81 = max(x_4418, 0.10000000149011611938f);
    let x_4420 : f32 = u_xlat80;
    let x_4421 : f32 = u_xlat81;
    u_xlat80 = (x_4420 * x_4421);
    let x_4423 : f32 = u_xlat78;
    let x_4424 : f32 = u_xlat80;
    u_xlat80 = (x_4423 * x_4424);
    let x_4426 : f32 = u_xlat79;
    let x_4427 : f32 = u_xlat80;
    u_xlat80 = (x_4426 / x_4427);
    let x_4429 : vec4<f32> = u_xlat5;
    let x_4431 : f32 = u_xlat80;
    let x_4434 : vec4<f32> = u_xlat4;
    u_xlat33 = ((vec3<f32>(x_4429.x, x_4429.y, x_4429.z) * vec3<f32>(x_4431, x_4431, x_4431)) + vec3<f32>(x_4434.x, x_4434.y, x_4434.z));
    let x_4437 : vec3<f32> = u_xlat33;
    let x_4438 : vec4<f32> = u_xlat10;
    let x_4441 : vec4<f32> = u_xlat2;
    let x_4443 : vec3<f32> = ((x_4437 * vec3<f32>(x_4438.x, x_4438.y, x_4438.z)) + vec3<f32>(x_4441.x, x_4441.y, x_4441.z));
    let x_4444 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_4443.x, x_4443.y, x_4443.z, x_4444.w);

    continuing {
      let x_4446 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4446 + bitcast<u32>(1i));
    }
  }
  let x_4448 : vec4<f32> = u_xlat3;
  let x_4450 : f32 = u_xlat25;
  let x_4453 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4448.x, x_4448.y, x_4448.z) * vec3<f32>(x_4450, x_4450, x_4450)) + vec3<f32>(x_4453.x, x_4453.y, x_4453.z));
  let x_4456 : vec4<f32> = u_xlat2;
  let x_4458 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4456.x, x_4456.y, x_4456.z) + x_4458);
  let x_4460 : f32 = u_xlat77;
  let x_4461 : f32 = u_xlat77;
  u_xlat1.x = (x_4460 * -(x_4461));
  let x_4466 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4466);
  let x_4469 : vec3<f32> = u_xlat0;
  let x_4470 : f32 = u_xlat75;
  let x_4474 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4469 * vec3<f32>(x_4470, x_4470, x_4470)) + -(vec3<f32>(x_4474.x, x_4474.y, x_4474.z)));
  let x_4480 : vec4<f32> = u_xlat1;
  let x_4482 : vec3<f32> = u_xlat0;
  let x_4485 : vec4<f32> = x_113.unity_FogColor;
  let x_4487 : vec3<f32> = ((vec3<f32>(x_4480.x, x_4480.x, x_4480.x) * x_4482) + vec3<f32>(x_4485.x, x_4485.y, x_4485.z));
  let x_4488 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4487.x, x_4487.y, x_4487.z, x_4488.w);
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


