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
  x_AdditionalLightsWorldToShadow : Arr_3,
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

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

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

var<private> u_xlatb77 : bool;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_625 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_769 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb31 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu50 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2450 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatu80 : u32;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2591 : f32;
  var x_2602 : f32;
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
  let x_281 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb77;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat76;
  u_xlat76 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat76;
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
  u_xlat50 = dot(x_439, x_440);
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
  u_xlat25 = dot(x_522, x_523);
  let x_527 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_527 == 0.0f);
  let x_532 : vec3<f32> = vs_TEXCOORD7;
  let x_536 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_532) + x_536);
  let x_538 : vec3<f32> = u_xlat26;
  let x_539 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_538, x_539);
  let x_543 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_543);
  let x_546 : vec3<f32> = u_xlat26;
  let x_547 : vec4<f32> = u_xlat2;
  u_xlat26 = (x_546 * vec3<f32>(x_547.x, x_547.x, x_547.x));
  let x_551 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : vec3<f32> = u_xlat26;
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
  u_xlat76 = dot(x_573, x_574);
  let x_576 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_576);
  let x_578 : f32 = u_xlat76;
  let x_580 : vec3<f32> = vs_TEXCOORD3;
  let x_581 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * x_580);
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_586 : f32 = vs_TEXCOORD7.y;
  let x_588 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat76 = (x_586 * x_588);
  let x_591 : f32 = x_113.unity_MatrixV[0i].z;
  let x_593 : f32 = vs_TEXCOORD7.x;
  let x_595 : f32 = u_xlat76;
  u_xlat76 = ((x_591 * x_593) + x_595);
  let x_598 : f32 = x_113.unity_MatrixV[2i].z;
  let x_600 : f32 = vs_TEXCOORD7.z;
  let x_602 : f32 = u_xlat76;
  u_xlat76 = ((x_598 * x_600) + x_602);
  let x_604 : f32 = u_xlat76;
  let x_607 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat76 = (x_604 + x_607);
  let x_609 : f32 = u_xlat76;
  let x_612 : f32 = x_113.x_ProjectionParams.y;
  u_xlat76 = (-(x_609) + -(x_612));
  let x_615 : f32 = u_xlat76;
  u_xlat76 = max(x_615, 0.0f);
  let x_617 : f32 = u_xlat76;
  let x_619 : f32 = x_113.unity_FogParams.x;
  u_xlat76 = (x_617 * x_619);
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
  u_xlat77 = (x_663 * x_665);
  let x_668 : f32 = u_xlat2.x;
  let x_670 : f32 = u_xlat2.x;
  let x_672 : f32 = u_xlat77;
  u_xlat77 = ((x_668 * x_670) + -(x_672));
  let x_677 : vec4<f32> = x_625.unity_SHC;
  let x_679 : f32 = u_xlat77;
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
  u_xlat77 = ((-(x_701) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_707 : f32 = u_xlat50;
  let x_708 : f32 = u_xlat77;
  u_xlat78 = (x_707 + -(x_708));
  let x_711 : f32 = u_xlat77;
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
  let x_735 : f32 = u_xlat50;
  u_xlat0.x = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  let x_742 : f32 = u_xlat0.x;
  u_xlat50 = (x_740 * x_742);
  let x_744 : f32 = u_xlat50;
  u_xlat50 = max(x_744, 0.0078125f);
  let x_747 : f32 = u_xlat50;
  let x_748 : f32 = u_xlat50;
  u_xlat77 = (x_747 * x_748);
  let x_750 : f32 = u_xlat78;
  u_xlat78 = (x_750 + 1.0f);
  let x_752 : f32 = u_xlat78;
  u_xlat78 = clamp(x_752, 0.0f, 1.0f);
  let x_755 : f32 = u_xlat50;
  u_xlat79 = ((x_755 * 4.0f) + 2.0f);
  let x_759 : f32 = u_xlat25;
  u_xlat25 = min(x_759, 1.0f);
  let x_771 : f32 = x_769.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_771);
  let x_773 : bool = u_xlatb80;
  if (x_773) {
    let x_777 : f32 = x_769.x_MainLightShadowParams.y;
    u_xlatb80 = (x_777 == 1.0f);
    let x_779 : bool = u_xlatb80;
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
      u_xlat80 = dot(x_859, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
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
        u_xlat56 = ((vec2<f32>(x_887.x, x_887.y) * vec2<f32>(x_890.z, x_890.w)) + -(vec2<f32>(x_893.x, x_893.y)));
        let x_897 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_897.x, x_897.x, x_897.y, x_897.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_901 : vec4<f32> = u_xlat7;
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_901.x, x_901.x, x_901.z, x_901.z) * vec4<f32>(x_903.x, x_903.x, x_903.z, x_903.z));
        let x_906 : vec4<f32> = u_xlat8;
        let x_910 : vec2<f32> = (vec2<f32>(x_906.y, x_906.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_911 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_910.x, x_911.y, x_910.y, x_911.w);
        let x_913 : vec4<f32> = u_xlat8;
        let x_916 : vec2<f32> = u_xlat56;
        let x_918 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.z) * vec2<f32>(0.5f, 0.5f)) + -(x_916));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_922 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_922) + vec2<f32>(1.0f, 1.0f));
        let x_926 : vec2<f32> = u_xlat56;
        let x_928 : vec2<f32> = min(x_926, vec2<f32>(0.0f, 0.0f));
        let x_929 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat9;
        let x_934 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = u_xlat58;
        let x_938 : vec2<f32> = ((-(vec2<f32>(x_931.x, x_931.y)) * vec2<f32>(x_934.x, x_934.y)) + x_937);
        let x_939 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_941, vec2<f32>(0.0f, 0.0f));
        let x_943 : vec2<f32> = u_xlat56;
        let x_945 : vec2<f32> = u_xlat56;
        let x_947 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_943) * x_945) + vec2<f32>(x_947.y, x_947.w));
        let x_950 : vec4<f32> = u_xlat9;
        let x_952 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) + vec2<f32>(1.0f, 1.0f));
        let x_953 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_955 + vec2<f32>(1.0f, 1.0f));
        let x_957 : vec4<f32> = u_xlat8;
        let x_961 : vec2<f32> = (vec2<f32>(x_957.x, x_957.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_962 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec2<f32> = u_xlat58;
        let x_965 : vec2<f32> = (x_964 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat9;
        let x_970 : vec2<f32> = (vec2<f32>(x_968.x, x_968.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec2<f32> = u_xlat56;
        let x_974 : vec2<f32> = (x_973 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_975 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_977.y, x_977.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_981 : f32 = u_xlat9.x;
        u_xlat10.z = x_981;
        let x_984 : f32 = u_xlat56.x;
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
        let x_1001 : f32 = u_xlat56.y;
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
        u_xlat56 = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1075.x, x_1075.y)) + vec2<f32>(x_1078.z, x_1078.w));
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
        u_xlat31.x = x_1145;
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
        let x_1171 : f32 = u_xlat31.x;
        let x_1174 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_1169 * x_1171) + x_1174);
        let x_1178 : vec2<f32> = u_xlat56;
        let x_1180 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1187 : vec3<f32> = txVec6;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1187.xy, x_1187.z);
        u_xlat56.x = x_1189;
        let x_1192 : f32 = u_xlat13.z;
        let x_1194 : f32 = u_xlat56.x;
        let x_1197 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1192 * x_1194) + x_1197);
        let x_1201 : vec4<f32> = u_xlat9;
        let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
        let x_1204 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
        let x_1211 : vec3<f32> = txVec7;
        let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1211.xy, x_1211.z);
        u_xlat56.x = x_1213;
        let x_1216 : f32 = u_xlat13.w;
        let x_1218 : f32 = u_xlat56.x;
        let x_1221 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1216 * x_1218) + x_1221);
        let x_1225 : vec4<f32> = u_xlat11;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
        let x_1228 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1235 : vec3<f32> = txVec8;
        let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1235.xy, x_1235.z);
        u_xlat56.x = x_1237;
        let x_1240 : f32 = u_xlat14.x;
        let x_1242 : f32 = u_xlat56.x;
        let x_1245 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1240 * x_1242) + x_1245);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.z, x_1249.w);
        let x_1252 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec9;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat56.x = x_1261;
        let x_1264 : f32 = u_xlat14.y;
        let x_1266 : f32 = u_xlat56.x;
        let x_1269 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1264 * x_1266) + x_1269);
        let x_1273 : vec4<f32> = u_xlat9;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.z, x_1273.w);
        let x_1276 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec10;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1283.xy, x_1283.z);
        u_xlat56.x = x_1285;
        let x_1288 : f32 = u_xlat14.z;
        let x_1290 : f32 = u_xlat56.x;
        let x_1293 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1288 * x_1290) + x_1293);
        let x_1297 : vec4<f32> = u_xlat8;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec11;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat56.x = x_1309;
        let x_1312 : f32 = u_xlat14.w;
        let x_1314 : f32 = u_xlat56.x;
        let x_1317 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1312 * x_1314) + x_1317);
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec12;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1331.xy, x_1331.z);
        u_xlat56.x = x_1333;
        let x_1336 : f32 = u_xlat6.x;
        let x_1338 : f32 = u_xlat56.x;
        let x_1341 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1336 * x_1338) + x_1341);
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
        u_xlat56 = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1361.z, x_1361.w)) + -(vec2<f32>(x_1364.x, x_1364.y)));
        let x_1368 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1368.x, x_1368.x, x_1368.y, x_1368.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1373 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1371.x, x_1371.x, x_1371.z, x_1371.z) * vec4<f32>(x_1373.x, x_1373.x, x_1373.z, x_1373.z));
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1380 : vec2<f32> = (vec2<f32>(x_1376.y, x_1376.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1381 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1381.x, x_1380.x, x_1381.z, x_1380.y);
        let x_1383 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = u_xlat56;
        let x_1388 : vec2<f32> = ((vec2<f32>(x_1383.x, x_1383.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1386));
        let x_1389 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1389.w);
        let x_1391 : vec2<f32> = u_xlat56;
        let x_1393 : vec2<f32> = (-(x_1391) + vec2<f32>(1.0f, 1.0f));
        let x_1394 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1396 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1396, vec2<f32>(0.0f, 0.0f));
        let x_1398 : vec2<f32> = u_xlat58;
        let x_1400 : vec2<f32> = u_xlat58;
        let x_1402 : vec4<f32> = u_xlat8;
        let x_1404 : vec2<f32> = ((-(x_1398) * x_1400) + vec2<f32>(x_1402.x, x_1402.y));
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1407 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1407, vec2<f32>(0.0f, 0.0f));
        let x_1410 : vec2<f32> = u_xlat58;
        let x_1412 : vec2<f32> = u_xlat58;
        let x_1414 : vec4<f32> = u_xlat7;
        let x_1416 : vec2<f32> = ((-(x_1410) * x_1412) + vec2<f32>(x_1414.y, x_1414.w));
        let x_1417 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1416.x, x_1417.y, x_1416.y);
        let x_1419 : vec4<f32> = u_xlat8;
        let x_1422 : vec2<f32> = (vec2<f32>(x_1419.x, x_1419.y) + vec2<f32>(2.0f, 2.0f));
        let x_1423 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1422.x, x_1422.y, x_1423.z, x_1423.w);
        let x_1425 : vec3<f32> = u_xlat32;
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
        let x_1450 : vec2<f32> = u_xlat56;
        let x_1457 : vec2<f32> = ((vec2<f32>(x_1450.x, x_1450.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1458 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1458.x, x_1457.x, x_1458.z, x_1457.y);
        let x_1460 : vec2<f32> = u_xlat56;
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
        let x_1476 : vec2<f32> = u_xlat56;
        let x_1479 : vec2<f32> = ((vec2<f32>(x_1476.y, x_1476.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1480.x, x_1479.x, x_1480.z, x_1479.y);
        let x_1482 : vec2<f32> = u_xlat56;
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
        u_xlat56 = ((vec2<f32>(x_1536.x, x_1536.y) * vec2<f32>(x_1539.x, x_1539.y)) + vec2<f32>(x_1542.w, x_1542.y));
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
        u_xlat33 = ((vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(x_1601.x, x_1601.y)) + vec2<f32>(x_1604.w, x_1604.y));
        let x_1608 : f32 = u_xlat11.y;
        u_xlat8.w = x_1608;
        let x_1611 : vec4<f32> = u_xlat6;
        let x_1614 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1611.x, x_1611.y) * vec2<f32>(x_1614.x, x_1614.y)) + vec2<f32>(x_1617.x, x_1617.w));
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
        u_xlat59 = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.w, x_1640.y));
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
        u_xlat83 = x_1705;
        let x_1706 : f32 = u_xlat83;
        let x_1708 : f32 = u_xlat17.y;
        u_xlat83 = (x_1706 * x_1708);
        let x_1711 : f32 = u_xlat17.x;
        let x_1713 : f32 = u_xlat8.x;
        let x_1715 : f32 = u_xlat83;
        u_xlat8.x = ((x_1711 * x_1713) + x_1715);
        let x_1719 : vec2<f32> = u_xlat56;
        let x_1721 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec15;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat56.x = x_1730;
        let x_1733 : f32 = u_xlat17.z;
        let x_1735 : f32 = u_xlat56.x;
        let x_1738 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1733 * x_1735) + x_1738);
        let x_1742 : vec4<f32> = u_xlat15;
        let x_1743 : vec2<f32> = vec2<f32>(x_1742.x, x_1742.y);
        let x_1745 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1753 : vec3<f32> = txVec16;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat81 = x_1755;
        let x_1757 : f32 = u_xlat17.w;
        let x_1758 : f32 = u_xlat81;
        let x_1761 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1757 * x_1758) + x_1761);
        let x_1765 : vec4<f32> = u_xlat13;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec17;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1775.xy, x_1775.z);
        u_xlat81 = x_1777;
        let x_1779 : f32 = u_xlat18.x;
        let x_1780 : f32 = u_xlat81;
        let x_1783 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1779 * x_1780) + x_1783);
        let x_1787 : vec4<f32> = u_xlat13;
        let x_1788 : vec2<f32> = vec2<f32>(x_1787.z, x_1787.w);
        let x_1790 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec18;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1797.xy, x_1797.z);
        u_xlat81 = x_1799;
        let x_1801 : f32 = u_xlat18.y;
        let x_1802 : f32 = u_xlat81;
        let x_1805 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1801 * x_1802) + x_1805);
        let x_1809 : vec4<f32> = u_xlat14;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.x, x_1809.y);
        let x_1812 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec19;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1819.xy, x_1819.z);
        u_xlat81 = x_1821;
        let x_1823 : f32 = u_xlat18.z;
        let x_1824 : f32 = u_xlat81;
        let x_1827 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1823 * x_1824) + x_1827);
        let x_1831 : vec4<f32> = u_xlat15;
        let x_1832 : vec2<f32> = vec2<f32>(x_1831.z, x_1831.w);
        let x_1834 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1832.x, x_1832.y, x_1834);
        let x_1841 : vec3<f32> = txVec20;
        let x_1843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1841.xy, x_1841.z);
        u_xlat81 = x_1843;
        let x_1845 : f32 = u_xlat18.w;
        let x_1846 : f32 = u_xlat81;
        let x_1849 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1845 * x_1846) + x_1849);
        let x_1853 : vec4<f32> = u_xlat16;
        let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
        let x_1856 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec21;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat81 = x_1865;
        let x_1867 : f32 = u_xlat19.x;
        let x_1868 : f32 = u_xlat81;
        let x_1871 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1867 * x_1868) + x_1871);
        let x_1875 : vec4<f32> = u_xlat16;
        let x_1876 : vec2<f32> = vec2<f32>(x_1875.z, x_1875.w);
        let x_1878 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1885 : vec3<f32> = txVec22;
        let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
        u_xlat81 = x_1887;
        let x_1889 : f32 = u_xlat19.y;
        let x_1890 : f32 = u_xlat81;
        let x_1893 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1889 * x_1890) + x_1893);
        let x_1897 : vec2<f32> = u_xlat33;
        let x_1899 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec23;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat81 = x_1908;
        let x_1910 : f32 = u_xlat19.z;
        let x_1911 : f32 = u_xlat81;
        let x_1914 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1910 * x_1911) + x_1914);
        let x_1918 : vec2<f32> = u_xlat64;
        let x_1920 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1927 : vec3<f32> = txVec24;
        let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1927.xy, x_1927.z);
        u_xlat81 = x_1929;
        let x_1931 : f32 = u_xlat19.w;
        let x_1932 : f32 = u_xlat81;
        let x_1935 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1931 * x_1932) + x_1935);
        let x_1939 : vec4<f32> = u_xlat11;
        let x_1940 : vec2<f32> = vec2<f32>(x_1939.x, x_1939.y);
        let x_1942 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec25;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1949.xy, x_1949.z);
        u_xlat81 = x_1951;
        let x_1953 : f32 = u_xlat7.x;
        let x_1954 : f32 = u_xlat81;
        let x_1957 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1953 * x_1954) + x_1957);
        let x_1961 : vec4<f32> = u_xlat11;
        let x_1962 : vec2<f32> = vec2<f32>(x_1961.z, x_1961.w);
        let x_1964 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
        let x_1971 : vec3<f32> = txVec26;
        let x_1973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1971.xy, x_1971.z);
        u_xlat81 = x_1973;
        let x_1975 : f32 = u_xlat7.y;
        let x_1976 : f32 = u_xlat81;
        let x_1979 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1975 * x_1976) + x_1979);
        let x_1983 : vec2<f32> = u_xlat59;
        let x_1985 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1983.x, x_1983.y, x_1985);
        let x_1992 : vec3<f32> = txVec27;
        let x_1994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1992.xy, x_1992.z);
        u_xlat81 = x_1994;
        let x_1996 : f32 = u_xlat7.z;
        let x_1997 : f32 = u_xlat81;
        let x_2000 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1996 * x_1997) + x_2000);
        let x_2004 : vec4<f32> = u_xlat6;
        let x_2005 : vec2<f32> = vec2<f32>(x_2004.x, x_2004.y);
        let x_2007 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec28;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2014.xy, x_2014.z);
        u_xlat6.x = x_2016;
        let x_2019 : f32 = u_xlat7.w;
        let x_2021 : f32 = u_xlat6.x;
        let x_2024 : f32 = u_xlat56.x;
        u_xlat80 = ((x_2019 * x_2021) + x_2024);
      }
    }
  } else {
    let x_2028 : vec4<f32> = vs_TEXCOORD8;
    let x_2029 : vec2<f32> = vec2<f32>(x_2028.x, x_2028.y);
    let x_2031 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
    let x_2038 : vec3<f32> = txVec29;
    let x_2040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2038.xy, x_2038.z);
    u_xlat80 = x_2040;
  }
  let x_2042 : f32 = x_769.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2042) + 1.0f);
  let x_2046 : f32 = u_xlat80;
  let x_2048 : f32 = x_769.x_MainLightShadowParams.x;
  let x_2051 : f32 = u_xlat6.x;
  u_xlat80 = ((x_2046 * x_2048) + x_2051);
  let x_2054 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2054);
  let x_2058 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (x_2058 >= 1.0f);
  let x_2060 : bool = u_xlatb31;
  let x_2061 : bool = u_xlatb6;
  u_xlatb6 = (x_2060 | x_2061);
  let x_2063 : bool = u_xlatb6;
  let x_2064 : f32 = u_xlat80;
  u_xlat80 = select(x_2064, 1.0f, x_2063);
  let x_2066 : vec3<f32> = vs_TEXCOORD7;
  let x_2068 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2070 : vec3<f32> = (x_2066 + -(x_2068));
  let x_2071 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
  let x_2073 : vec4<f32> = u_xlat6;
  let x_2075 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2073.x, x_2073.y, x_2073.z), vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2080 : f32 = u_xlat6.x;
  let x_2082 : f32 = x_769.x_MainLightShadowParams.z;
  let x_2085 : f32 = x_769.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2080 * x_2082) + x_2085);
  let x_2089 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2089, 0.0f, 1.0f);
  let x_2092 : f32 = u_xlat80;
  u_xlat56.x = (-(x_2092) + 1.0f);
  let x_2097 : f32 = u_xlat31.x;
  let x_2099 : f32 = u_xlat56.x;
  let x_2101 : f32 = u_xlat80;
  u_xlat80 = ((x_2097 * x_2099) + x_2101);
  let x_2103 : vec4<f32> = u_xlat1;
  let x_2106 : vec4<f32> = u_xlat2;
  u_xlat31.x = dot(-(vec3<f32>(x_2103.x, x_2103.y, x_2103.z)), vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
  let x_2111 : f32 = u_xlat31.x;
  let x_2113 : f32 = u_xlat31.x;
  u_xlat31.x = (x_2111 + x_2113);
  let x_2116 : vec4<f32> = u_xlat2;
  let x_2118 : vec3<f32> = u_xlat31;
  let x_2122 : vec4<f32> = u_xlat1;
  u_xlat31 = ((vec3<f32>(x_2116.x, x_2116.y, x_2116.z) * -(vec3<f32>(x_2118.x, x_2118.x, x_2118.x))) + -(vec3<f32>(x_2122.x, x_2122.y, x_2122.z)));
  let x_2126 : vec4<f32> = u_xlat2;
  let x_2128 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec3<f32>(x_2126.x, x_2126.y, x_2126.z), vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
  let x_2133 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_2133, 0.0f, 1.0f);
  let x_2137 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_2137) + 1.0f);
  let x_2142 : f32 = u_xlat7.x;
  let x_2144 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2142 * x_2144);
  let x_2148 : f32 = u_xlat7.x;
  let x_2150 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2148 * x_2150);
  let x_2154 : f32 = u_xlat0.x;
  u_xlat32.x = ((-(x_2154) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2162 : f32 = u_xlat0.x;
  let x_2164 : f32 = u_xlat32.x;
  u_xlat0.x = (x_2162 * x_2164);
  let x_2168 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2168 * 6.0f);
  let x_2180 : vec3<f32> = u_xlat31;
  let x_2182 : f32 = u_xlat0.x;
  let x_2183 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2180, x_2182);
  u_xlat8 = x_2183;
  let x_2185 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2185 + -1.0f);
  let x_2189 : f32 = x_625.unity_SpecCube0_HDR.w;
  let x_2191 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2189 * x_2191) + 1.0f);
  let x_2196 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2196, 0.0f);
  let x_2200 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2200);
  let x_2204 : f32 = u_xlat0.x;
  let x_2206 : f32 = x_625.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2204 * x_2206);
  let x_2210 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2210);
  let x_2214 : f32 = u_xlat0.x;
  let x_2216 : f32 = x_625.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2214 * x_2216);
  let x_2219 : vec4<f32> = u_xlat8;
  let x_2221 : vec3<f32> = u_xlat0;
  u_xlat31 = (vec3<f32>(x_2219.x, x_2219.y, x_2219.z) * vec3<f32>(x_2221.x, x_2221.x, x_2221.x));
  let x_2224 : f32 = u_xlat50;
  let x_2226 : f32 = u_xlat50;
  let x_2230 : vec2<f32> = ((vec2<f32>(x_2224, x_2224) * vec2<f32>(x_2226, x_2226)) + vec2<f32>(-1.0f, 1.0f));
  let x_2231 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2230.x, x_2231.y, x_2230.y);
  let x_2234 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2234);
  let x_2236 : vec4<f32> = u_xlat5;
  let x_2239 : f32 = u_xlat78;
  u_xlat32 = (-(vec3<f32>(x_2236.x, x_2236.y, x_2236.z)) + vec3<f32>(x_2239, x_2239, x_2239));
  let x_2242 : vec4<f32> = u_xlat7;
  let x_2244 : vec3<f32> = u_xlat32;
  let x_2246 : vec4<f32> = u_xlat5;
  let x_2248 : vec3<f32> = ((vec3<f32>(x_2242.x, x_2242.x, x_2242.x) * x_2244) + vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
  let x_2251 : f32 = u_xlat50;
  let x_2253 : vec4<f32> = u_xlat7;
  let x_2255 : vec3<f32> = (vec3<f32>(x_2251, x_2251, x_2251) * vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
  let x_2256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
  let x_2258 : vec3<f32> = u_xlat31;
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2258 * vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
  let x_2262 : vec4<f32> = u_xlat3;
  let x_2264 : vec4<f32> = u_xlat4;
  let x_2267 : vec3<f32> = u_xlat31;
  let x_2268 : vec3<f32> = ((vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * vec3<f32>(x_2264.x, x_2264.y, x_2264.z)) + x_2267);
  let x_2269 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2268.x, x_2268.y, x_2268.z, x_2269.w);
  let x_2271 : f32 = u_xlat80;
  let x_2273 : f32 = x_625.unity_LightData.z;
  u_xlat50 = (x_2271 * x_2273);
  let x_2275 : vec4<f32> = u_xlat2;
  let x_2278 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat78 = dot(vec3<f32>(x_2275.x, x_2275.y, x_2275.z), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2281 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2281, 0.0f, 1.0f);
  let x_2283 : f32 = u_xlat50;
  let x_2284 : f32 = u_xlat78;
  u_xlat50 = (x_2283 * x_2284);
  let x_2286 : f32 = u_xlat50;
  let x_2289 : vec4<f32> = x_113.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2286, x_2286, x_2286) * vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2292 : vec4<f32> = u_xlat1;
  let x_2295 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2297 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) + vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
  let x_2300 : vec4<f32> = u_xlat7;
  let x_2302 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2300.x, x_2300.y, x_2300.z), vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2305 : f32 = u_xlat50;
  u_xlat50 = max(x_2305, 1.17549435e-38f);
  let x_2308 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2308);
  let x_2310 : f32 = u_xlat50;
  let x_2312 : vec4<f32> = u_xlat7;
  let x_2314 : vec3<f32> = (vec3<f32>(x_2310, x_2310, x_2310) * vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
  let x_2315 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
  let x_2317 : vec4<f32> = u_xlat2;
  let x_2319 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2317.x, x_2317.y, x_2317.z), vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
  let x_2322 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2322, 0.0f, 1.0f);
  let x_2325 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2327 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2325.x, x_2325.y, x_2325.z), vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
  let x_2330 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2330, 0.0f, 1.0f);
  let x_2332 : f32 = u_xlat50;
  let x_2333 : f32 = u_xlat50;
  u_xlat50 = (x_2332 * x_2333);
  let x_2335 : f32 = u_xlat50;
  let x_2337 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2335 * x_2337) + 1.00001001358032226562f);
  let x_2341 : f32 = u_xlat78;
  let x_2342 : f32 = u_xlat78;
  u_xlat78 = (x_2341 * x_2342);
  let x_2344 : f32 = u_xlat50;
  let x_2345 : f32 = u_xlat50;
  u_xlat50 = (x_2344 * x_2345);
  let x_2347 : f32 = u_xlat78;
  u_xlat78 = max(x_2347, 0.10000000149011611938f);
  let x_2350 : f32 = u_xlat50;
  let x_2351 : f32 = u_xlat78;
  u_xlat50 = (x_2350 * x_2351);
  let x_2353 : f32 = u_xlat79;
  let x_2354 : f32 = u_xlat50;
  u_xlat50 = (x_2353 * x_2354);
  let x_2356 : f32 = u_xlat77;
  let x_2357 : f32 = u_xlat50;
  u_xlat50 = (x_2356 / x_2357);
  let x_2359 : vec4<f32> = u_xlat5;
  let x_2361 : f32 = u_xlat50;
  let x_2364 : vec4<f32> = u_xlat4;
  let x_2366 : vec3<f32> = ((vec3<f32>(x_2359.x, x_2359.y, x_2359.z) * vec3<f32>(x_2361, x_2361, x_2361)) + vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
  let x_2367 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2367.w);
  let x_2369 : vec3<f32> = u_xlat31;
  let x_2370 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2369 * vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
  let x_2374 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2376 : f32 = x_625.unity_LightData.y;
  u_xlat50 = min(x_2374, x_2376);
  let x_2380 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2380));
  let x_2384 : f32 = u_xlat6.x;
  let x_2386 : f32 = x_769.x_AdditionalShadowFadeParams.x;
  let x_2389 : f32 = x_769.x_AdditionalShadowFadeParams.y;
  u_xlat78 = ((x_2384 * x_2386) + x_2389);
  let x_2391 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2391, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2403 : u32 = u_xlatu_loop_1;
    let x_2404 : u32 = u_xlatu50;
    if ((x_2403 < x_2404)) {
    } else {
      break;
    }
    let x_2407 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2407 >> 2u);
    let x_2411 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2411 & 3u));
    let x_2414 : u32 = u_xlatu6;
    let x_2417 : vec4<f32> = x_625.unity_LightIndices[bitcast<i32>(x_2414)];
    let x_2427 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2432 : vec4<u32> = indexable[x_2427];
    u_xlat6.x = dot(x_2417, bitcast<vec4<f32>>(x_2432));
    let x_2438 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2438);
    let x_2440 : vec3<f32> = vs_TEXCOORD7;
    let x_2451 : i32 = u_xlati6;
    let x_2453 : vec4<f32> = x_2450.x_AdditionalLightsPosition[x_2451];
    let x_2456 : i32 = u_xlati6;
    let x_2458 : vec4<f32> = x_2450.x_AdditionalLightsPosition[x_2456];
    let x_2460 : vec3<f32> = ((-(x_2440) * vec3<f32>(x_2453.w, x_2453.w, x_2453.w)) + vec3<f32>(x_2458.x, x_2458.y, x_2458.z));
    let x_2461 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2460.x, x_2460.y, x_2460.z, x_2461.w);
    let x_2464 : vec4<f32> = u_xlat8;
    let x_2466 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2464.x, x_2464.y, x_2464.z), vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
    let x_2469 : f32 = u_xlat82;
    u_xlat82 = max(x_2469, 0.00006103515625f);
    let x_2471 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2471);
    let x_2473 : f32 = u_xlat83;
    let x_2475 : vec4<f32> = u_xlat8;
    let x_2477 : vec3<f32> = (vec3<f32>(x_2473, x_2473, x_2473) * vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
    let x_2478 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
    let x_2481 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2481);
    let x_2483 : f32 = u_xlat82;
    let x_2484 : i32 = u_xlati6;
    let x_2486 : f32 = x_2450.x_AdditionalLightsAttenuation[x_2484].x;
    u_xlat82 = (x_2483 * x_2486);
    let x_2488 : f32 = u_xlat82;
    let x_2490 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2488) * x_2490) + 1.0f);
    let x_2493 : f32 = u_xlat82;
    u_xlat82 = max(x_2493, 0.0f);
    let x_2495 : f32 = u_xlat82;
    let x_2496 : f32 = u_xlat82;
    u_xlat82 = (x_2495 * x_2496);
    let x_2498 : f32 = u_xlat82;
    let x_2499 : f32 = u_xlat84;
    u_xlat82 = (x_2498 * x_2499);
    let x_2501 : i32 = u_xlati6;
    let x_2503 : vec4<f32> = x_2450.x_AdditionalLightsSpotDir[x_2501];
    let x_2505 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2503.x, x_2503.y, x_2503.z), vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
    let x_2508 : f32 = u_xlat84;
    let x_2509 : i32 = u_xlati6;
    let x_2511 : f32 = x_2450.x_AdditionalLightsAttenuation[x_2509].z;
    let x_2513 : i32 = u_xlati6;
    let x_2515 : f32 = x_2450.x_AdditionalLightsAttenuation[x_2513].w;
    u_xlat84 = ((x_2508 * x_2511) + x_2515);
    let x_2517 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2517, 0.0f, 1.0f);
    let x_2519 : f32 = u_xlat84;
    let x_2520 : f32 = u_xlat84;
    u_xlat84 = (x_2519 * x_2520);
    let x_2522 : f32 = u_xlat82;
    let x_2523 : f32 = u_xlat84;
    u_xlat82 = (x_2522 * x_2523);
    let x_2526 : i32 = u_xlati6;
    let x_2528 : f32 = x_769.x_AdditionalShadowParams[x_2526].w;
    u_xlati84 = i32(x_2528);
    let x_2533 : i32 = u_xlati84;
    u_xlatb10.x = (x_2533 >= 0i);
    let x_2537 : bool = u_xlatb10.x;
    if (x_2537) {
      let x_2541 : i32 = u_xlati6;
      let x_2543 : f32 = x_769.x_AdditionalShadowParams[x_2541].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2543, x_2543, x_2543, x_2543))));
      let x_2549 : bool = u_xlatb10.x;
      if (x_2549) {
        let x_2552 : vec4<f32> = u_xlat9;
        let x_2555 : vec4<f32> = u_xlat9;
        let x_2558 : vec4<bool> = (abs(vec4<f32>(x_2552.z, x_2552.z, x_2552.y, x_2552.z)) >= abs(vec4<f32>(x_2555.x, x_2555.y, x_2555.x, x_2555.x)));
        u_xlatb10 = vec3<bool>(x_2558.x, x_2558.y, x_2558.z);
        let x_2561 : bool = u_xlatb10.y;
        let x_2563 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2561 & x_2563);
        let x_2567 : vec4<f32> = u_xlat9;
        let x_2570 : vec4<bool> = (-(vec4<f32>(x_2567.z, x_2567.y, x_2567.x, x_2567.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2570.x, x_2570.y, x_2570.z);
        let x_2574 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2574);
        let x_2579 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2579);
        let x_2584 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2584);
        let x_2589 : bool = u_xlatb10.z;
        if (x_2589) {
          let x_2595 : f32 = u_xlat35.z;
          x_2591 = x_2595;
        } else {
          let x_2598 : f32 = u_xlat11.x;
          x_2591 = x_2598;
        }
        let x_2599 : f32 = x_2591;
        u_xlat60 = x_2599;
        let x_2601 : bool = u_xlatb10.x;
        if (x_2601) {
          let x_2606 : f32 = u_xlat35.x;
          x_2602 = x_2606;
        } else {
          let x_2608 : f32 = u_xlat60;
          x_2602 = x_2608;
        }
        let x_2609 : f32 = x_2602;
        u_xlat10.x = x_2609;
        let x_2611 : i32 = u_xlati6;
        let x_2613 : f32 = x_769.x_AdditionalShadowParams[x_2611].w;
        u_xlat35.x = trunc(x_2613);
        let x_2617 : f32 = u_xlat10.x;
        let x_2619 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2617 + x_2619);
        let x_2623 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2623);
      }
      let x_2625 : i32 = u_xlati84;
      u_xlati84 = (x_2625 << bitcast<u32>(2i));
      let x_2627 : vec3<f32> = vs_TEXCOORD7;
      let x_2629 : i32 = u_xlati84;
      let x_2632 : i32 = u_xlati84;
      let x_2636 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[((x_2629 + 1i) / 4i)][((x_2632 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2627.y, x_2627.y, x_2627.y, x_2627.y) * x_2636);
      let x_2638 : i32 = u_xlati84;
      let x_2640 : i32 = u_xlati84;
      let x_2643 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[(x_2638 / 4i)][(x_2640 % 4i)];
      let x_2644 : vec3<f32> = vs_TEXCOORD7;
      let x_2647 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2643 * vec4<f32>(x_2644.x, x_2644.x, x_2644.x, x_2644.x)) + x_2647);
      let x_2649 : i32 = u_xlati84;
      let x_2652 : i32 = u_xlati84;
      let x_2656 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[((x_2649 + 2i) / 4i)][((x_2652 + 2i) % 4i)];
      let x_2657 : vec3<f32> = vs_TEXCOORD7;
      let x_2660 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2656 * vec4<f32>(x_2657.z, x_2657.z, x_2657.z, x_2657.z)) + x_2660);
      let x_2662 : vec4<f32> = u_xlat10;
      let x_2663 : i32 = u_xlati84;
      let x_2666 : i32 = u_xlati84;
      let x_2670 : vec4<f32> = x_769.x_AdditionalLightsWorldToShadow[((x_2663 + 3i) / 4i)][((x_2666 + 3i) % 4i)];
      u_xlat10 = (x_2662 + x_2670);
      let x_2672 : vec4<f32> = u_xlat10;
      let x_2674 : vec4<f32> = u_xlat10;
      let x_2676 : vec3<f32> = (vec3<f32>(x_2672.x, x_2672.y, x_2672.z) / vec3<f32>(x_2674.w, x_2674.w, x_2674.w));
      let x_2677 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2676.x, x_2676.y, x_2676.z, x_2677.w);
      let x_2680 : i32 = u_xlati6;
      let x_2682 : f32 = x_769.x_AdditionalShadowParams[x_2680].y;
      u_xlatb84 = (0.0f < x_2682);
      let x_2684 : bool = u_xlatb84;
      if (x_2684) {
        let x_2687 : i32 = u_xlati6;
        let x_2689 : f32 = x_769.x_AdditionalShadowParams[x_2687].y;
        u_xlatb84 = (1.0f == x_2689);
        let x_2691 : bool = u_xlatb84;
        if (x_2691) {
          let x_2694 : vec4<f32> = u_xlat10;
          let x_2697 : vec4<f32> = x_769.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2694.x, x_2694.y, x_2694.x, x_2694.y) + x_2697);
          let x_2700 : vec4<f32> = u_xlat11;
          let x_2701 : vec2<f32> = vec2<f32>(x_2700.x, x_2700.y);
          let x_2703 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
          let x_2711 : vec3<f32> = txVec30;
          let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
          u_xlat12.x = x_2713;
          let x_2716 : vec4<f32> = u_xlat11;
          let x_2717 : vec2<f32> = vec2<f32>(x_2716.z, x_2716.w);
          let x_2719 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2717.x, x_2717.y, x_2719);
          let x_2726 : vec3<f32> = txVec31;
          let x_2728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2726.xy, x_2726.z);
          u_xlat12.y = x_2728;
          let x_2730 : vec4<f32> = u_xlat10;
          let x_2733 : vec4<f32> = x_769.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2730.x, x_2730.y, x_2730.x, x_2730.y) + x_2733);
          let x_2736 : vec4<f32> = u_xlat11;
          let x_2737 : vec2<f32> = vec2<f32>(x_2736.x, x_2736.y);
          let x_2739 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2737.x, x_2737.y, x_2739);
          let x_2746 : vec3<f32> = txVec32;
          let x_2748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2746.xy, x_2746.z);
          u_xlat12.z = x_2748;
          let x_2751 : vec4<f32> = u_xlat11;
          let x_2752 : vec2<f32> = vec2<f32>(x_2751.z, x_2751.w);
          let x_2754 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2752.x, x_2752.y, x_2754);
          let x_2761 : vec3<f32> = txVec33;
          let x_2763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2761.xy, x_2761.z);
          u_xlat12.w = x_2763;
          let x_2765 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2765, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2769 : i32 = u_xlati6;
          let x_2771 : f32 = x_769.x_AdditionalShadowParams[x_2769].y;
          u_xlatb85 = (2.0f == x_2771);
          let x_2773 : bool = u_xlatb85;
          if (x_2773) {
            let x_2776 : vec4<f32> = u_xlat10;
            let x_2779 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2782 : vec2<f32> = ((vec2<f32>(x_2776.x, x_2776.y) * vec2<f32>(x_2779.z, x_2779.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2783 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2782.x, x_2782.y, x_2783.z, x_2783.w);
            let x_2785 : vec4<f32> = u_xlat11;
            let x_2787 : vec2<f32> = floor(vec2<f32>(x_2785.x, x_2785.y));
            let x_2788 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2791 : vec4<f32> = u_xlat10;
            let x_2794 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2797 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2791.x, x_2791.y) * vec2<f32>(x_2794.z, x_2794.w)) + -(vec2<f32>(x_2797.x, x_2797.y)));
            let x_2801 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2801.x, x_2801.x, x_2801.y, x_2801.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2804 : vec4<f32> = u_xlat12;
            let x_2806 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2804.x, x_2804.x, x_2804.z, x_2804.z) * vec4<f32>(x_2806.x, x_2806.x, x_2806.z, x_2806.z));
            let x_2809 : vec4<f32> = u_xlat13;
            let x_2811 : vec2<f32> = (vec2<f32>(x_2809.y, x_2809.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2812 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2811.x, x_2812.y, x_2811.y, x_2812.w);
            let x_2814 : vec4<f32> = u_xlat13;
            let x_2817 : vec2<f32> = u_xlat61;
            let x_2819 : vec2<f32> = ((vec2<f32>(x_2814.x, x_2814.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2817));
            let x_2820 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2819.x, x_2819.y, x_2820.z, x_2820.w);
            let x_2823 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2823) + vec2<f32>(1.0f, 1.0f));
            let x_2826 : vec2<f32> = u_xlat61;
            let x_2827 : vec2<f32> = min(x_2826, vec2<f32>(0.0f, 0.0f));
            let x_2828 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
            let x_2830 : vec4<f32> = u_xlat14;
            let x_2833 : vec4<f32> = u_xlat14;
            let x_2836 : vec2<f32> = u_xlat63;
            let x_2837 : vec2<f32> = ((-(vec2<f32>(x_2830.x, x_2830.y)) * vec2<f32>(x_2833.x, x_2833.y)) + x_2836);
            let x_2838 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2837.x, x_2837.y, x_2838.z, x_2838.w);
            let x_2840 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2840, vec2<f32>(0.0f, 0.0f));
            let x_2842 : vec2<f32> = u_xlat61;
            let x_2844 : vec2<f32> = u_xlat61;
            let x_2846 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2842) * x_2844) + vec2<f32>(x_2846.y, x_2846.w));
            let x_2849 : vec4<f32> = u_xlat14;
            let x_2851 : vec2<f32> = (vec2<f32>(x_2849.x, x_2849.y) + vec2<f32>(1.0f, 1.0f));
            let x_2852 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2851.x, x_2851.y, x_2852.z, x_2852.w);
            let x_2854 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2854 + vec2<f32>(1.0f, 1.0f));
            let x_2856 : vec4<f32> = u_xlat13;
            let x_2858 : vec2<f32> = (vec2<f32>(x_2856.x, x_2856.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2859 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2858.x, x_2858.y, x_2859.z, x_2859.w);
            let x_2861 : vec2<f32> = u_xlat63;
            let x_2862 : vec2<f32> = (x_2861 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2863 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
            let x_2865 : vec4<f32> = u_xlat14;
            let x_2867 : vec2<f32> = (vec2<f32>(x_2865.x, x_2865.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2868 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2867.x, x_2867.y, x_2868.z, x_2868.w);
            let x_2870 : vec2<f32> = u_xlat61;
            let x_2871 : vec2<f32> = (x_2870 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2872 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2871.x, x_2871.y, x_2872.z, x_2872.w);
            let x_2874 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2874.y, x_2874.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2878 : f32 = u_xlat14.x;
            u_xlat15.z = x_2878;
            let x_2881 : f32 = u_xlat61.x;
            u_xlat15.w = x_2881;
            let x_2884 : f32 = u_xlat16.x;
            u_xlat13.z = x_2884;
            let x_2887 : f32 = u_xlat12.x;
            u_xlat13.w = x_2887;
            let x_2889 : vec4<f32> = u_xlat13;
            let x_2891 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2889.z, x_2889.w, x_2889.x, x_2889.z) + vec4<f32>(x_2891.z, x_2891.w, x_2891.x, x_2891.z));
            let x_2895 : f32 = u_xlat15.y;
            u_xlat14.z = x_2895;
            let x_2898 : f32 = u_xlat61.y;
            u_xlat14.w = x_2898;
            let x_2901 : f32 = u_xlat13.y;
            u_xlat16.z = x_2901;
            let x_2904 : f32 = u_xlat12.z;
            u_xlat16.w = x_2904;
            let x_2906 : vec4<f32> = u_xlat14;
            let x_2908 : vec4<f32> = u_xlat16;
            let x_2910 : vec3<f32> = (vec3<f32>(x_2906.z, x_2906.y, x_2906.w) + vec3<f32>(x_2908.z, x_2908.y, x_2908.w));
            let x_2911 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat13;
            let x_2915 : vec4<f32> = u_xlat17;
            let x_2917 : vec3<f32> = (vec3<f32>(x_2913.x, x_2913.z, x_2913.w) / vec3<f32>(x_2915.z, x_2915.w, x_2915.y));
            let x_2918 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
            let x_2920 : vec4<f32> = u_xlat13;
            let x_2922 : vec3<f32> = (vec3<f32>(x_2920.x, x_2920.y, x_2920.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2923 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
            let x_2925 : vec4<f32> = u_xlat16;
            let x_2927 : vec4<f32> = u_xlat12;
            let x_2929 : vec3<f32> = (vec3<f32>(x_2925.z, x_2925.y, x_2925.w) / vec3<f32>(x_2927.x, x_2927.y, x_2927.z));
            let x_2930 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2929.x, x_2929.y, x_2929.z, x_2930.w);
            let x_2932 : vec4<f32> = u_xlat14;
            let x_2934 : vec3<f32> = (vec3<f32>(x_2932.x, x_2932.y, x_2932.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2935 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2935.w);
            let x_2937 : vec4<f32> = u_xlat13;
            let x_2940 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2942 : vec3<f32> = (vec3<f32>(x_2937.y, x_2937.x, x_2937.z) * vec3<f32>(x_2940.x, x_2940.x, x_2940.x));
            let x_2943 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2942.x, x_2942.y, x_2942.z, x_2943.w);
            let x_2945 : vec4<f32> = u_xlat14;
            let x_2948 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2950 : vec3<f32> = (vec3<f32>(x_2945.x, x_2945.y, x_2945.z) * vec3<f32>(x_2948.y, x_2948.y, x_2948.y));
            let x_2951 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2950.x, x_2950.y, x_2950.z, x_2951.w);
            let x_2954 : f32 = u_xlat14.x;
            u_xlat13.w = x_2954;
            let x_2956 : vec4<f32> = u_xlat11;
            let x_2959 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2962 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2956.x, x_2956.y, x_2956.x, x_2956.y) * vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y)) + vec4<f32>(x_2962.y, x_2962.w, x_2962.x, x_2962.w));
            let x_2965 : vec4<f32> = u_xlat11;
            let x_2968 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2971 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2965.x, x_2965.y) * vec2<f32>(x_2968.x, x_2968.y)) + vec2<f32>(x_2971.z, x_2971.w));
            let x_2975 : f32 = u_xlat13.y;
            u_xlat14.w = x_2975;
            let x_2977 : vec4<f32> = u_xlat14;
            let x_2978 : vec2<f32> = vec2<f32>(x_2977.y, x_2977.z);
            let x_2979 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2979.x, x_2978.x, x_2979.z, x_2978.y);
            let x_2981 : vec4<f32> = u_xlat11;
            let x_2984 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2981.x, x_2981.y, x_2981.x, x_2981.y) * vec4<f32>(x_2984.x, x_2984.y, x_2984.x, x_2984.y)) + vec4<f32>(x_2987.x, x_2987.y, x_2987.z, x_2987.y));
            let x_2990 : vec4<f32> = u_xlat11;
            let x_2993 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_2996 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.y) * vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y)) + vec4<f32>(x_2996.w, x_2996.y, x_2996.w, x_2996.z));
            let x_2999 : vec4<f32> = u_xlat11;
            let x_3002 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3005 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2999.x, x_2999.y, x_2999.x, x_2999.y) * vec4<f32>(x_3002.x, x_3002.y, x_3002.x, x_3002.y)) + vec4<f32>(x_3005.x, x_3005.w, x_3005.z, x_3005.w));
            let x_3008 : vec4<f32> = u_xlat12;
            let x_3010 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3008.x, x_3008.x, x_3008.x, x_3008.y) * vec4<f32>(x_3010.z, x_3010.w, x_3010.y, x_3010.z));
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3015 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3013.y, x_3013.y, x_3013.z, x_3013.z) * x_3015);
            let x_3019 : f32 = u_xlat12.z;
            let x_3021 : f32 = u_xlat17.y;
            u_xlat85 = (x_3019 * x_3021);
            let x_3024 : vec4<f32> = u_xlat15;
            let x_3025 : vec2<f32> = vec2<f32>(x_3024.x, x_3024.y);
            let x_3027 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
            let x_3034 : vec3<f32> = txVec34;
            let x_3036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3034.xy, x_3034.z);
            u_xlat11.x = x_3036;
            let x_3039 : vec4<f32> = u_xlat15;
            let x_3040 : vec2<f32> = vec2<f32>(x_3039.z, x_3039.w);
            let x_3042 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3040.x, x_3040.y, x_3042);
            let x_3050 : vec3<f32> = txVec35;
            let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
            u_xlat36 = x_3052;
            let x_3053 : f32 = u_xlat36;
            let x_3055 : f32 = u_xlat18.y;
            u_xlat36 = (x_3053 * x_3055);
            let x_3058 : f32 = u_xlat18.x;
            let x_3060 : f32 = u_xlat11.x;
            let x_3062 : f32 = u_xlat36;
            u_xlat11.x = ((x_3058 * x_3060) + x_3062);
            let x_3066 : vec2<f32> = u_xlat61;
            let x_3068 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec36;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat36 = x_3077;
            let x_3079 : f32 = u_xlat18.z;
            let x_3080 : f32 = u_xlat36;
            let x_3083 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3079 * x_3080) + x_3083);
            let x_3087 : vec4<f32> = u_xlat14;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.x, x_3087.y);
            let x_3090 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec37;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat36 = x_3099;
            let x_3101 : f32 = u_xlat18.w;
            let x_3102 : f32 = u_xlat36;
            let x_3105 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3101 * x_3102) + x_3105);
            let x_3109 : vec4<f32> = u_xlat16;
            let x_3110 : vec2<f32> = vec2<f32>(x_3109.x, x_3109.y);
            let x_3112 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec38;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat36 = x_3121;
            let x_3123 : f32 = u_xlat19.x;
            let x_3124 : f32 = u_xlat36;
            let x_3127 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3123 * x_3124) + x_3127);
            let x_3131 : vec4<f32> = u_xlat16;
            let x_3132 : vec2<f32> = vec2<f32>(x_3131.z, x_3131.w);
            let x_3134 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3132.x, x_3132.y, x_3134);
            let x_3141 : vec3<f32> = txVec39;
            let x_3143 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3141.xy, x_3141.z);
            u_xlat36 = x_3143;
            let x_3145 : f32 = u_xlat19.y;
            let x_3146 : f32 = u_xlat36;
            let x_3149 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3145 * x_3146) + x_3149);
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec40;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat36 = x_3165;
            let x_3167 : f32 = u_xlat19.z;
            let x_3168 : f32 = u_xlat36;
            let x_3171 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3167 * x_3168) + x_3171);
            let x_3175 : vec4<f32> = u_xlat13;
            let x_3176 : vec2<f32> = vec2<f32>(x_3175.x, x_3175.y);
            let x_3178 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
            let x_3185 : vec3<f32> = txVec41;
            let x_3187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
            u_xlat36 = x_3187;
            let x_3189 : f32 = u_xlat19.w;
            let x_3190 : f32 = u_xlat36;
            let x_3193 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3189 * x_3190) + x_3193);
            let x_3197 : vec4<f32> = u_xlat13;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.z, x_3197.w);
            let x_3200 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3207 : vec3<f32> = txVec42;
            let x_3209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
            u_xlat36 = x_3209;
            let x_3210 : f32 = u_xlat85;
            let x_3211 : f32 = u_xlat36;
            let x_3214 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3210 * x_3211) + x_3214);
          } else {
            let x_3217 : vec4<f32> = u_xlat10;
            let x_3220 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3223 : vec2<f32> = ((vec2<f32>(x_3217.x, x_3217.y) * vec2<f32>(x_3220.z, x_3220.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3224 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3223.x, x_3223.y, x_3224.z, x_3224.w);
            let x_3226 : vec4<f32> = u_xlat11;
            let x_3228 : vec2<f32> = floor(vec2<f32>(x_3226.x, x_3226.y));
            let x_3229 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3228.x, x_3228.y, x_3229.z, x_3229.w);
            let x_3231 : vec4<f32> = u_xlat10;
            let x_3234 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3237 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3231.x, x_3231.y) * vec2<f32>(x_3234.z, x_3234.w)) + -(vec2<f32>(x_3237.x, x_3237.y)));
            let x_3241 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3241.x, x_3241.x, x_3241.y, x_3241.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3244 : vec4<f32> = u_xlat12;
            let x_3246 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3244.x, x_3244.x, x_3244.z, x_3244.z) * vec4<f32>(x_3246.x, x_3246.x, x_3246.z, x_3246.z));
            let x_3249 : vec4<f32> = u_xlat13;
            let x_3251 : vec2<f32> = (vec2<f32>(x_3249.y, x_3249.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3252 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3252.x, x_3251.x, x_3252.z, x_3251.y);
            let x_3254 : vec4<f32> = u_xlat13;
            let x_3257 : vec2<f32> = u_xlat61;
            let x_3259 : vec2<f32> = ((vec2<f32>(x_3254.x, x_3254.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3257));
            let x_3260 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3259.x, x_3260.y, x_3259.y, x_3260.w);
            let x_3262 : vec2<f32> = u_xlat61;
            let x_3264 : vec2<f32> = (-(x_3262) + vec2<f32>(1.0f, 1.0f));
            let x_3265 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3264.x, x_3264.y, x_3265.z, x_3265.w);
            let x_3267 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3267, vec2<f32>(0.0f, 0.0f));
            let x_3269 : vec2<f32> = u_xlat63;
            let x_3271 : vec2<f32> = u_xlat63;
            let x_3273 : vec4<f32> = u_xlat13;
            let x_3275 : vec2<f32> = ((-(x_3269) * x_3271) + vec2<f32>(x_3273.x, x_3273.y));
            let x_3276 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3275.x, x_3275.y, x_3276.z, x_3276.w);
            let x_3278 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3278, vec2<f32>(0.0f, 0.0f));
            let x_3281 : vec2<f32> = u_xlat63;
            let x_3283 : vec2<f32> = u_xlat63;
            let x_3285 : vec4<f32> = u_xlat12;
            let x_3287 : vec2<f32> = ((-(x_3281) * x_3283) + vec2<f32>(x_3285.y, x_3285.w));
            let x_3288 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3287.x, x_3288.y, x_3287.y);
            let x_3290 : vec4<f32> = u_xlat13;
            let x_3292 : vec2<f32> = (vec2<f32>(x_3290.x, x_3290.y) + vec2<f32>(2.0f, 2.0f));
            let x_3293 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3292.x, x_3292.y, x_3293.z, x_3293.w);
            let x_3295 : vec3<f32> = u_xlat37;
            let x_3297 : vec2<f32> = (vec2<f32>(x_3295.x, x_3295.z) + vec2<f32>(2.0f, 2.0f));
            let x_3298 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3298.x, x_3297.x, x_3298.z, x_3297.y);
            let x_3301 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3301 * 0.08163200318813323975f);
            let x_3304 : vec4<f32> = u_xlat12;
            let x_3306 : vec3<f32> = (vec3<f32>(x_3304.z, x_3304.x, x_3304.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3307 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3306.x, x_3306.y, x_3306.z, x_3307.w);
            let x_3309 : vec4<f32> = u_xlat13;
            let x_3311 : vec2<f32> = (vec2<f32>(x_3309.x, x_3309.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3312 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3311.x, x_3311.y, x_3312.z, x_3312.w);
            let x_3315 : f32 = u_xlat16.y;
            u_xlat15.x = x_3315;
            let x_3317 : vec2<f32> = u_xlat61;
            let x_3320 : vec2<f32> = ((vec2<f32>(x_3317.x, x_3317.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3321 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3321.x, x_3320.x, x_3321.z, x_3320.y);
            let x_3323 : vec2<f32> = u_xlat61;
            let x_3326 : vec2<f32> = ((vec2<f32>(x_3323.x, x_3323.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3327 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3326.x, x_3327.y, x_3326.y, x_3327.w);
            let x_3330 : f32 = u_xlat12.x;
            u_xlat13.y = x_3330;
            let x_3333 : f32 = u_xlat14.y;
            u_xlat13.w = x_3333;
            let x_3335 : vec4<f32> = u_xlat13;
            let x_3336 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3335 + x_3336);
            let x_3338 : vec2<f32> = u_xlat61;
            let x_3341 : vec2<f32> = ((vec2<f32>(x_3338.y, x_3338.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3342 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3342.x, x_3341.x, x_3342.z, x_3341.y);
            let x_3344 : vec2<f32> = u_xlat61;
            let x_3347 : vec2<f32> = ((vec2<f32>(x_3344.y, x_3344.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3348 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3347.x, x_3348.y, x_3347.y, x_3348.w);
            let x_3351 : f32 = u_xlat12.y;
            u_xlat14.y = x_3351;
            let x_3353 : vec4<f32> = u_xlat14;
            let x_3354 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3353 + x_3354);
            let x_3356 : vec4<f32> = u_xlat13;
            let x_3357 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3356 / x_3357);
            let x_3359 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3359 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3361 : vec4<f32> = u_xlat14;
            let x_3362 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3361 / x_3362);
            let x_3364 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3364 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3366 : vec4<f32> = u_xlat13;
            let x_3369 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3366.w, x_3366.x, x_3366.y, x_3366.z) * vec4<f32>(x_3369.x, x_3369.x, x_3369.x, x_3369.x));
            let x_3372 : vec4<f32> = u_xlat14;
            let x_3375 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3372.x, x_3372.w, x_3372.y, x_3372.z) * vec4<f32>(x_3375.y, x_3375.y, x_3375.y, x_3375.y));
            let x_3378 : vec4<f32> = u_xlat13;
            let x_3379 : vec3<f32> = vec3<f32>(x_3378.y, x_3378.z, x_3378.w);
            let x_3380 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3379.x, x_3380.y, x_3379.y, x_3379.z);
            let x_3383 : f32 = u_xlat14.x;
            u_xlat16.y = x_3383;
            let x_3385 : vec4<f32> = u_xlat11;
            let x_3388 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3391 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3385.x, x_3385.y, x_3385.x, x_3385.y) * vec4<f32>(x_3388.x, x_3388.y, x_3388.x, x_3388.y)) + vec4<f32>(x_3391.x, x_3391.y, x_3391.z, x_3391.y));
            let x_3394 : vec4<f32> = u_xlat11;
            let x_3397 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3400 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3394.x, x_3394.y) * vec2<f32>(x_3397.x, x_3397.y)) + vec2<f32>(x_3400.w, x_3400.y));
            let x_3404 : f32 = u_xlat16.y;
            u_xlat13.y = x_3404;
            let x_3407 : f32 = u_xlat14.z;
            u_xlat16.y = x_3407;
            let x_3409 : vec4<f32> = u_xlat11;
            let x_3412 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3415 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3409.x, x_3409.y, x_3409.x, x_3409.y) * vec4<f32>(x_3412.x, x_3412.y, x_3412.x, x_3412.y)) + vec4<f32>(x_3415.x, x_3415.y, x_3415.z, x_3415.y));
            let x_3418 : vec4<f32> = u_xlat11;
            let x_3421 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3424 : vec4<f32> = u_xlat16;
            let x_3426 : vec2<f32> = ((vec2<f32>(x_3418.x, x_3418.y) * vec2<f32>(x_3421.x, x_3421.y)) + vec2<f32>(x_3424.w, x_3424.y));
            let x_3427 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3426.x, x_3426.y, x_3427.z, x_3427.w);
            let x_3430 : f32 = u_xlat16.y;
            u_xlat13.z = x_3430;
            let x_3433 : vec4<f32> = u_xlat11;
            let x_3436 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3439 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3433.x, x_3433.y, x_3433.x, x_3433.y) * vec4<f32>(x_3436.x, x_3436.y, x_3436.x, x_3436.y)) + vec4<f32>(x_3439.x, x_3439.y, x_3439.x, x_3439.z));
            let x_3443 : f32 = u_xlat14.w;
            u_xlat16.y = x_3443;
            let x_3446 : vec4<f32> = u_xlat11;
            let x_3449 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3452 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3446.x, x_3446.y, x_3446.x, x_3446.y) * vec4<f32>(x_3449.x, x_3449.y, x_3449.x, x_3449.y)) + vec4<f32>(x_3452.x, x_3452.y, x_3452.z, x_3452.y));
            let x_3456 : vec4<f32> = u_xlat11;
            let x_3459 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3462 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3456.x, x_3456.y) * vec2<f32>(x_3459.x, x_3459.y)) + vec2<f32>(x_3462.w, x_3462.y));
            let x_3466 : f32 = u_xlat16.y;
            u_xlat13.w = x_3466;
            let x_3469 : vec4<f32> = u_xlat11;
            let x_3472 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3475 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3469.x, x_3469.y) * vec2<f32>(x_3472.x, x_3472.y)) + vec2<f32>(x_3475.x, x_3475.w));
            let x_3478 : vec4<f32> = u_xlat16;
            let x_3479 : vec3<f32> = vec3<f32>(x_3478.x, x_3478.z, x_3478.w);
            let x_3480 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3479.x, x_3480.y, x_3479.y, x_3479.z);
            let x_3482 : vec4<f32> = u_xlat11;
            let x_3485 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3488 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3482.x, x_3482.y, x_3482.x, x_3482.y) * vec4<f32>(x_3485.x, x_3485.y, x_3485.x, x_3485.y)) + vec4<f32>(x_3488.x, x_3488.y, x_3488.z, x_3488.y));
            let x_3491 : vec4<f32> = u_xlat11;
            let x_3494 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3497 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3491.x, x_3491.y) * vec2<f32>(x_3494.x, x_3494.y)) + vec2<f32>(x_3497.w, x_3497.y));
            let x_3501 : f32 = u_xlat13.x;
            u_xlat14.x = x_3501;
            let x_3503 : vec4<f32> = u_xlat11;
            let x_3506 : vec4<f32> = x_769.x_AdditionalShadowmapSize;
            let x_3509 : vec4<f32> = u_xlat14;
            let x_3511 : vec2<f32> = ((vec2<f32>(x_3503.x, x_3503.y) * vec2<f32>(x_3506.x, x_3506.y)) + vec2<f32>(x_3509.x, x_3509.y));
            let x_3512 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3511.x, x_3511.y, x_3512.z, x_3512.w);
            let x_3515 : vec4<f32> = u_xlat12;
            let x_3517 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3515.x, x_3515.x, x_3515.x, x_3515.x) * x_3517);
            let x_3520 : vec4<f32> = u_xlat12;
            let x_3522 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3520.y, x_3520.y, x_3520.y, x_3520.y) * x_3522);
            let x_3525 : vec4<f32> = u_xlat12;
            let x_3527 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3525.z, x_3525.z, x_3525.z, x_3525.z) * x_3527);
            let x_3529 : vec4<f32> = u_xlat12;
            let x_3531 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3529.w, x_3529.w, x_3529.w, x_3529.w) * x_3531);
            let x_3534 : vec4<f32> = u_xlat17;
            let x_3535 : vec2<f32> = vec2<f32>(x_3534.x, x_3534.y);
            let x_3537 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3535.x, x_3535.y, x_3537);
            let x_3544 : vec3<f32> = txVec43;
            let x_3546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3544.xy, x_3544.z);
            u_xlat85 = x_3546;
            let x_3548 : vec4<f32> = u_xlat17;
            let x_3549 : vec2<f32> = vec2<f32>(x_3548.z, x_3548.w);
            let x_3551 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3549.x, x_3549.y, x_3551);
            let x_3558 : vec3<f32> = txVec44;
            let x_3560 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3558.xy, x_3558.z);
            u_xlat13.x = x_3560;
            let x_3563 : f32 = u_xlat13.x;
            let x_3565 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3563 * x_3565);
            let x_3569 : f32 = u_xlat22.x;
            let x_3570 : f32 = u_xlat85;
            let x_3573 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3569 * x_3570) + x_3573);
            let x_3576 : vec2<f32> = u_xlat61;
            let x_3578 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec45;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat61.x = x_3587;
            let x_3590 : f32 = u_xlat22.z;
            let x_3592 : f32 = u_xlat61.x;
            let x_3594 : f32 = u_xlat85;
            u_xlat85 = ((x_3590 * x_3592) + x_3594);
            let x_3597 : vec4<f32> = u_xlat20;
            let x_3598 : vec2<f32> = vec2<f32>(x_3597.x, x_3597.y);
            let x_3600 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3598.x, x_3598.y, x_3600);
            let x_3607 : vec3<f32> = txVec46;
            let x_3609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3607.xy, x_3607.z);
            u_xlat61.x = x_3609;
            let x_3612 : f32 = u_xlat22.w;
            let x_3614 : f32 = u_xlat61.x;
            let x_3616 : f32 = u_xlat85;
            u_xlat85 = ((x_3612 * x_3614) + x_3616);
            let x_3619 : vec4<f32> = u_xlat18;
            let x_3620 : vec2<f32> = vec2<f32>(x_3619.x, x_3619.y);
            let x_3622 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3620.x, x_3620.y, x_3622);
            let x_3629 : vec3<f32> = txVec47;
            let x_3631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3629.xy, x_3629.z);
            u_xlat61.x = x_3631;
            let x_3634 : f32 = u_xlat23.x;
            let x_3636 : f32 = u_xlat61.x;
            let x_3638 : f32 = u_xlat85;
            u_xlat85 = ((x_3634 * x_3636) + x_3638);
            let x_3641 : vec4<f32> = u_xlat18;
            let x_3642 : vec2<f32> = vec2<f32>(x_3641.z, x_3641.w);
            let x_3644 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3642.x, x_3642.y, x_3644);
            let x_3651 : vec3<f32> = txVec48;
            let x_3653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3651.xy, x_3651.z);
            u_xlat61.x = x_3653;
            let x_3656 : f32 = u_xlat23.y;
            let x_3658 : f32 = u_xlat61.x;
            let x_3660 : f32 = u_xlat85;
            u_xlat85 = ((x_3656 * x_3658) + x_3660);
            let x_3663 : vec4<f32> = u_xlat19;
            let x_3664 : vec2<f32> = vec2<f32>(x_3663.x, x_3663.y);
            let x_3666 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3664.x, x_3664.y, x_3666);
            let x_3673 : vec3<f32> = txVec49;
            let x_3675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3673.xy, x_3673.z);
            u_xlat61.x = x_3675;
            let x_3678 : f32 = u_xlat23.z;
            let x_3680 : f32 = u_xlat61.x;
            let x_3682 : f32 = u_xlat85;
            u_xlat85 = ((x_3678 * x_3680) + x_3682);
            let x_3685 : vec4<f32> = u_xlat20;
            let x_3686 : vec2<f32> = vec2<f32>(x_3685.z, x_3685.w);
            let x_3688 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3686.x, x_3686.y, x_3688);
            let x_3695 : vec3<f32> = txVec50;
            let x_3697 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3695.xy, x_3695.z);
            u_xlat61.x = x_3697;
            let x_3700 : f32 = u_xlat23.w;
            let x_3702 : f32 = u_xlat61.x;
            let x_3704 : f32 = u_xlat85;
            u_xlat85 = ((x_3700 * x_3702) + x_3704);
            let x_3707 : vec4<f32> = u_xlat21;
            let x_3708 : vec2<f32> = vec2<f32>(x_3707.x, x_3707.y);
            let x_3710 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3708.x, x_3708.y, x_3710);
            let x_3717 : vec3<f32> = txVec51;
            let x_3719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3717.xy, x_3717.z);
            u_xlat61.x = x_3719;
            let x_3722 : f32 = u_xlat24.x;
            let x_3724 : f32 = u_xlat61.x;
            let x_3726 : f32 = u_xlat85;
            u_xlat85 = ((x_3722 * x_3724) + x_3726);
            let x_3729 : vec4<f32> = u_xlat21;
            let x_3730 : vec2<f32> = vec2<f32>(x_3729.z, x_3729.w);
            let x_3732 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3730.x, x_3730.y, x_3732);
            let x_3739 : vec3<f32> = txVec52;
            let x_3741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3739.xy, x_3739.z);
            u_xlat61.x = x_3741;
            let x_3744 : f32 = u_xlat24.y;
            let x_3746 : f32 = u_xlat61.x;
            let x_3748 : f32 = u_xlat85;
            u_xlat85 = ((x_3744 * x_3746) + x_3748);
            let x_3751 : vec2<f32> = u_xlat38;
            let x_3753 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3751.x, x_3751.y, x_3753);
            let x_3760 : vec3<f32> = txVec53;
            let x_3762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3760.xy, x_3760.z);
            u_xlat61.x = x_3762;
            let x_3765 : f32 = u_xlat24.z;
            let x_3767 : f32 = u_xlat61.x;
            let x_3769 : f32 = u_xlat85;
            u_xlat85 = ((x_3765 * x_3767) + x_3769);
            let x_3772 : vec2<f32> = u_xlat69;
            let x_3774 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3772.x, x_3772.y, x_3774);
            let x_3781 : vec3<f32> = txVec54;
            let x_3783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3781.xy, x_3781.z);
            u_xlat61.x = x_3783;
            let x_3786 : f32 = u_xlat24.w;
            let x_3788 : f32 = u_xlat61.x;
            let x_3790 : f32 = u_xlat85;
            u_xlat85 = ((x_3786 * x_3788) + x_3790);
            let x_3793 : vec4<f32> = u_xlat16;
            let x_3794 : vec2<f32> = vec2<f32>(x_3793.x, x_3793.y);
            let x_3796 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3794.x, x_3794.y, x_3796);
            let x_3803 : vec3<f32> = txVec55;
            let x_3805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3803.xy, x_3803.z);
            u_xlat61.x = x_3805;
            let x_3808 : f32 = u_xlat12.x;
            let x_3810 : f32 = u_xlat61.x;
            let x_3812 : f32 = u_xlat85;
            u_xlat85 = ((x_3808 * x_3810) + x_3812);
            let x_3815 : vec4<f32> = u_xlat16;
            let x_3816 : vec2<f32> = vec2<f32>(x_3815.z, x_3815.w);
            let x_3818 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3816.x, x_3816.y, x_3818);
            let x_3825 : vec3<f32> = txVec56;
            let x_3827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3825.xy, x_3825.z);
            u_xlat61.x = x_3827;
            let x_3830 : f32 = u_xlat12.y;
            let x_3832 : f32 = u_xlat61.x;
            let x_3834 : f32 = u_xlat85;
            u_xlat85 = ((x_3830 * x_3832) + x_3834);
            let x_3837 : vec2<f32> = u_xlat64;
            let x_3839 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3837.x, x_3837.y, x_3839);
            let x_3846 : vec3<f32> = txVec57;
            let x_3848 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3846.xy, x_3846.z);
            u_xlat61.x = x_3848;
            let x_3851 : f32 = u_xlat12.z;
            let x_3853 : f32 = u_xlat61.x;
            let x_3855 : f32 = u_xlat85;
            u_xlat85 = ((x_3851 * x_3853) + x_3855);
            let x_3858 : vec4<f32> = u_xlat11;
            let x_3859 : vec2<f32> = vec2<f32>(x_3858.x, x_3858.y);
            let x_3861 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3859.x, x_3859.y, x_3861);
            let x_3868 : vec3<f32> = txVec58;
            let x_3870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3868.xy, x_3868.z);
            u_xlat11.x = x_3870;
            let x_3873 : f32 = u_xlat12.w;
            let x_3875 : f32 = u_xlat11.x;
            let x_3877 : f32 = u_xlat85;
            u_xlat84 = ((x_3873 * x_3875) + x_3877);
          }
        }
      } else {
        let x_3881 : vec4<f32> = u_xlat10;
        let x_3882 : vec2<f32> = vec2<f32>(x_3881.x, x_3881.y);
        let x_3884 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3882.x, x_3882.y, x_3884);
        let x_3891 : vec3<f32> = txVec59;
        let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
        u_xlat84 = x_3893;
      }
      let x_3894 : i32 = u_xlati6;
      let x_3896 : f32 = x_769.x_AdditionalShadowParams[x_3894].x;
      u_xlat10.x = (1.0f + -(x_3896));
      let x_3900 : f32 = u_xlat84;
      let x_3901 : i32 = u_xlati6;
      let x_3903 : f32 = x_769.x_AdditionalShadowParams[x_3901].x;
      let x_3906 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3900 * x_3903) + x_3906);
      let x_3909 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3909);
      let x_3914 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3914 >= 1.0f);
      let x_3916 : bool = u_xlatb35;
      let x_3918 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3916 | x_3918);
      let x_3922 : bool = u_xlatb10.x;
      let x_3923 : f32 = u_xlat84;
      u_xlat84 = select(x_3923, 1.0f, x_3922);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3926 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3926) + 1.0f);
    let x_3930 : f32 = u_xlat78;
    let x_3932 : f32 = u_xlat10.x;
    let x_3934 : f32 = u_xlat84;
    u_xlat84 = ((x_3930 * x_3932) + x_3934);
    let x_3936 : f32 = u_xlat82;
    let x_3937 : f32 = u_xlat84;
    u_xlat82 = (x_3936 * x_3937);
    let x_3939 : vec4<f32> = u_xlat2;
    let x_3941 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3939.x, x_3939.y, x_3939.z), vec3<f32>(x_3941.x, x_3941.y, x_3941.z));
    let x_3944 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3944, 0.0f, 1.0f);
    let x_3946 : f32 = u_xlat82;
    let x_3947 : f32 = u_xlat84;
    u_xlat82 = (x_3946 * x_3947);
    let x_3949 : f32 = u_xlat82;
    let x_3951 : i32 = u_xlati6;
    let x_3953 : vec4<f32> = x_2450.x_AdditionalLightsColor[x_3951];
    let x_3955 : vec3<f32> = (vec3<f32>(x_3949, x_3949, x_3949) * vec3<f32>(x_3953.x, x_3953.y, x_3953.z));
    let x_3956 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3955.x, x_3955.y, x_3955.z, x_3956.w);
    let x_3958 : vec4<f32> = u_xlat8;
    let x_3960 : f32 = u_xlat83;
    let x_3963 : vec4<f32> = u_xlat1;
    let x_3965 : vec3<f32> = ((vec3<f32>(x_3958.x, x_3958.y, x_3958.z) * vec3<f32>(x_3960, x_3960, x_3960)) + vec3<f32>(x_3963.x, x_3963.y, x_3963.z));
    let x_3966 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
    let x_3968 : vec4<f32> = u_xlat8;
    let x_3970 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3968.x, x_3968.y, x_3968.z), vec3<f32>(x_3970.x, x_3970.y, x_3970.z));
    let x_3975 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3975, 1.17549435e-38f);
    let x_3979 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_3979);
    let x_3982 : vec4<f32> = u_xlat6;
    let x_3984 : vec4<f32> = u_xlat8;
    let x_3986 : vec3<f32> = (vec3<f32>(x_3982.x, x_3982.x, x_3982.x) * vec3<f32>(x_3984.x, x_3984.y, x_3984.z));
    let x_3987 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3986.x, x_3986.y, x_3986.z, x_3987.w);
    let x_3989 : vec4<f32> = u_xlat2;
    let x_3991 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3989.x, x_3989.y, x_3989.z), vec3<f32>(x_3991.x, x_3991.y, x_3991.z));
    let x_3996 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3996, 0.0f, 1.0f);
    let x_3999 : vec4<f32> = u_xlat9;
    let x_4001 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3999.x, x_3999.y, x_3999.z), vec3<f32>(x_4001.x, x_4001.y, x_4001.z));
    let x_4004 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4004, 0.0f, 1.0f);
    let x_4007 : f32 = u_xlat6.x;
    let x_4009 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4007 * x_4009);
    let x_4013 : f32 = u_xlat6.x;
    let x_4015 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4013 * x_4015) + 1.00001001358032226562f);
    let x_4019 : f32 = u_xlat82;
    let x_4020 : f32 = u_xlat82;
    u_xlat82 = (x_4019 * x_4020);
    let x_4023 : f32 = u_xlat6.x;
    let x_4025 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4023 * x_4025);
    let x_4028 : f32 = u_xlat82;
    u_xlat82 = max(x_4028, 0.10000000149011611938f);
    let x_4031 : f32 = u_xlat6.x;
    let x_4032 : f32 = u_xlat82;
    u_xlat6.x = (x_4031 * x_4032);
    let x_4035 : f32 = u_xlat79;
    let x_4037 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4035 * x_4037);
    let x_4040 : f32 = u_xlat77;
    let x_4042 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4040 / x_4042);
    let x_4045 : vec4<f32> = u_xlat5;
    let x_4047 : vec4<f32> = u_xlat6;
    let x_4050 : vec4<f32> = u_xlat4;
    let x_4052 : vec3<f32> = ((vec3<f32>(x_4045.x, x_4045.y, x_4045.z) * vec3<f32>(x_4047.x, x_4047.x, x_4047.x)) + vec3<f32>(x_4050.x, x_4050.y, x_4050.z));
    let x_4053 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4052.x, x_4052.y, x_4052.z, x_4053.w);
    let x_4055 : vec4<f32> = u_xlat8;
    let x_4057 : vec4<f32> = u_xlat10;
    let x_4060 : vec4<f32> = u_xlat7;
    let x_4062 : vec3<f32> = ((vec3<f32>(x_4055.x, x_4055.y, x_4055.z) * vec3<f32>(x_4057.x, x_4057.y, x_4057.z)) + vec3<f32>(x_4060.x, x_4060.y, x_4060.z));
    let x_4063 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4062.x, x_4062.y, x_4062.z, x_4063.w);

    continuing {
      let x_4065 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4065 + bitcast<u32>(1i));
    }
  }
  let x_4067 : vec4<f32> = u_xlat3;
  let x_4069 : f32 = u_xlat25;
  let x_4072 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4067.x, x_4067.y, x_4067.z) * vec3<f32>(x_4069, x_4069, x_4069)) + x_4072);
  let x_4074 : vec4<f32> = u_xlat7;
  let x_4076 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4074.x, x_4074.y, x_4074.z) + x_4076);
  let x_4078 : f32 = u_xlat75;
  let x_4080 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4078, x_4078, x_4078) * x_4080);
  let x_4082 : f32 = u_xlat76;
  let x_4083 : f32 = u_xlat76;
  u_xlat75 = (x_4082 * -(x_4083));
  let x_4086 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4086);
  let x_4090 : vec3<f32> = u_xlat0;
  let x_4091 : f32 = u_xlat75;
  let x_4093 : vec3<f32> = (x_4090 * vec3<f32>(x_4091, x_4091, x_4091));
  let x_4094 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4093.x, x_4093.y, x_4093.z, x_4094.w);
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


