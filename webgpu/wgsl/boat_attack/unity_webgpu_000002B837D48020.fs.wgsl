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

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_580 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(1) @binding(2) var<uniform> x_802 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb81 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2605 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

fn main_1() {
  var x_550 : vec3<f32>;
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
  var x_2211 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2738 : f32;
  var x_2750 : f32;
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
  let x_356 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_356;
  let x_359 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_359;
  let x_362 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_362;
  let x_365 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_365;
  let x_368 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_368;
  let x_371 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_371;
  let x_374 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_374;
  let x_377 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_377;
  let x_379 : vec4<f32> = u_xlat6;
  let x_380 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_379 + x_380);
  let x_383 : f32 = u_xlat0.z;
  u_xlat7.x = x_383;
  let x_386 : f32 = u_xlat1.z;
  u_xlat7.y = x_386;
  let x_389 : f32 = u_xlat2.z;
  u_xlat7.z = x_389;
  let x_392 : f32 = u_xlat3.y;
  u_xlat7.w = x_392;
  let x_394 : vec4<f32> = u_xlat9;
  let x_397 : f32 = x_13.x_Smoothness0;
  let x_399 : f32 = x_13.x_Smoothness1;
  let x_401 : f32 = x_13.x_Smoothness2;
  let x_403 : f32 = x_13.x_Smoothness3;
  let x_406 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_394) * vec4<f32>(x_397, x_399, x_401, x_403)) + x_406);
  let x_410 : f32 = x_13.x_LayerHasMask0;
  let x_413 : f32 = x_13.x_LayerHasMask1;
  let x_416 : f32 = x_13.x_LayerHasMask2;
  let x_419 : f32 = x_13.x_LayerHasMask3;
  let x_421 : vec4<f32> = u_xlat7;
  let x_423 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_410, x_413, x_416, x_419) * x_421) + x_423);
  let x_426 : vec4<f32> = u_xlat4;
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_426, x_427);
  let x_430 : f32 = u_xlat0.x;
  u_xlat7.x = x_430;
  let x_433 : f32 = u_xlat1.x;
  u_xlat7.y = x_433;
  let x_436 : f32 = u_xlat2.x;
  u_xlat7.z = x_436;
  let x_439 : f32 = u_xlat3.x;
  u_xlat7.w = x_439;
  let x_441 : vec4<f32> = u_xlat7;
  let x_444 : f32 = x_13.x_Metallic0;
  let x_447 : f32 = x_13.x_Metallic1;
  let x_450 : f32 = x_13.x_Metallic2;
  let x_453 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_441 + -(vec4<f32>(x_444, x_447, x_450, x_453)));
  let x_458 : f32 = x_13.x_LayerHasMask0;
  let x_460 : f32 = x_13.x_LayerHasMask1;
  let x_462 : f32 = x_13.x_LayerHasMask2;
  let x_464 : f32 = x_13.x_LayerHasMask3;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : f32 = x_13.x_Metallic0;
  let x_471 : f32 = x_13.x_Metallic1;
  let x_473 : f32 = x_13.x_Metallic2;
  let x_475 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_458, x_460, x_462, x_464) * x_466) + vec4<f32>(x_469, x_471, x_473, x_475));
  let x_478 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_478, x_479);
  let x_483 : f32 = u_xlat0.y;
  u_xlat3.x = x_483;
  let x_486 : f32 = u_xlat1.y;
  u_xlat3.y = x_486;
  let x_489 : f32 = u_xlat2.y;
  u_xlat3.z = x_489;
  let x_491 : vec4<f32> = u_xlat6;
  let x_493 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_491) + x_493);
  let x_496 : f32 = x_13.x_LayerHasMask0;
  let x_498 : f32 = x_13.x_LayerHasMask1;
  let x_500 : f32 = x_13.x_LayerHasMask2;
  let x_502 : f32 = x_13.x_LayerHasMask3;
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_496, x_498, x_500, x_502) * x_504) + x_506);
  let x_509 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_509, x_510);
  let x_514 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_514 == 0.0f);
  let x_519 : vec3<f32> = vs_TEXCOORD7;
  let x_523 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_519) + x_523);
  let x_525 : vec3<f32> = u_xlat26;
  let x_526 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_525, x_526);
  let x_530 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_530);
  let x_533 : vec3<f32> = u_xlat26;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat26 = (x_533 * vec3<f32>(x_534.x, x_534.x, x_534.x));
  let x_538 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_538;
  let x_542 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_542;
  let x_546 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_546;
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_553 : vec3<f32> = u_xlat26;
    x_550 = x_553;
  } else {
    let x_555 : vec4<f32> = u_xlat2;
    x_550 = vec3<f32>(x_555.x, x_555.y, x_555.z);
  }
  let x_557 : vec3<f32> = x_550;
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : vec3<f32> = vs_TEXCOORD3;
  let x_562 : vec3<f32> = vs_TEXCOORD3;
  u_xlat76 = dot(x_561, x_562);
  let x_564 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_564);
  let x_566 : f32 = u_xlat76;
  let x_568 : vec3<f32> = vs_TEXCOORD3;
  let x_569 : vec3<f32> = (vec3<f32>(x_566, x_566, x_566) * x_568);
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec3<f32> = vs_TEXCOORD7;
  let x_582 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres0;
  let x_585 : vec3<f32> = (x_572 + -(vec3<f32>(x_582.x, x_582.y, x_582.z)));
  let x_586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec3<f32> = vs_TEXCOORD7;
  let x_590 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres1;
  let x_593 : vec3<f32> = (x_588 + -(vec3<f32>(x_590.x, x_590.y, x_590.z)));
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = vs_TEXCOORD7;
  let x_599 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres2;
  let x_602 : vec3<f32> = (x_596 + -(vec3<f32>(x_599.x, x_599.y, x_599.z)));
  let x_603 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec3<f32> = vs_TEXCOORD7;
  let x_607 : vec4<f32> = x_580.x_CascadeShadowSplitSpheres3;
  let x_610 : vec3<f32> = (x_605 + -(vec3<f32>(x_607.x, x_607.y, x_607.z)));
  let x_611 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : vec4<f32> = u_xlat7;
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = x_580.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_639 < x_641);
  let x_644 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_644);
  let x_648 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_648);
  let x_652 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_652);
  let x_656 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_660);
  let x_665 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_665);
  let x_669 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_669);
  let x_672 : vec4<f32> = u_xlat3;
  let x_674 : vec4<f32> = u_xlat4;
  let x_676 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) + vec3<f32>(x_674.y, x_674.z, x_674.w));
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = max(vec3<f32>(x_679.x, x_679.y, x_679.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_683.x, x_682.x, x_682.y, x_682.z);
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_685, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_690 : f32 = u_xlat76;
  u_xlat76 = (-(x_690) + 4.0f);
  let x_695 : f32 = u_xlat76;
  u_xlatu76 = u32(x_695);
  let x_699 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_699) << bitcast<u32>(2i));
  let x_702 : vec3<f32> = vs_TEXCOORD7;
  let x_704 : i32 = u_xlati76;
  let x_707 : i32 = u_xlati76;
  let x_711 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_704 + 1i) / 4i)][((x_707 + 1i) % 4i)];
  let x_713 : vec3<f32> = (vec3<f32>(x_702.y, x_702.y, x_702.y) * vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : i32 = u_xlati76;
  let x_718 : i32 = u_xlati76;
  let x_721 : vec4<f32> = x_580.x_MainLightWorldToShadow[(x_716 / 4i)][(x_718 % 4i)];
  let x_723 : vec3<f32> = vs_TEXCOORD7;
  let x_726 : vec4<f32> = u_xlat3;
  let x_728 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723.x, x_723.x, x_723.x)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati76;
  let x_734 : i32 = u_xlati76;
  let x_738 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_731 + 2i) / 4i)][((x_734 + 2i) % 4i)];
  let x_740 : vec3<f32> = vs_TEXCOORD7;
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740.z, x_740.z, x_740.z)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : i32 = u_xlati76;
  let x_753 : i32 = u_xlati76;
  let x_757 : vec4<f32> = x_580.x_MainLightWorldToShadow[((x_750 + 3i) / 4i)][((x_753 + 3i) % 4i)];
  let x_759 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_764 : f32 = vs_TEXCOORD7.y;
  let x_766 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat76 = (x_764 * x_766);
  let x_769 : f32 = x_113.unity_MatrixV[0i].z;
  let x_771 : f32 = vs_TEXCOORD7.x;
  let x_773 : f32 = u_xlat76;
  u_xlat76 = ((x_769 * x_771) + x_773);
  let x_776 : f32 = x_113.unity_MatrixV[2i].z;
  let x_778 : f32 = vs_TEXCOORD7.z;
  let x_780 : f32 = u_xlat76;
  u_xlat76 = ((x_776 * x_778) + x_780);
  let x_782 : f32 = u_xlat76;
  let x_784 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat76 = (x_782 + x_784);
  let x_786 : f32 = u_xlat76;
  let x_789 : f32 = x_113.x_ProjectionParams.y;
  u_xlat76 = (-(x_786) + -(x_789));
  let x_792 : f32 = u_xlat76;
  u_xlat76 = max(x_792, 0.0f);
  let x_794 : f32 = u_xlat76;
  let x_796 : f32 = x_113.unity_FogParams.x;
  u_xlat76 = (x_794 * x_796);
  u_xlat2.w = 1.0f;
  let x_804 : vec4<f32> = x_802.unity_SHAr;
  let x_805 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_804, x_805);
  let x_809 : vec4<f32> = x_802.unity_SHAg;
  let x_810 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_809, x_810);
  let x_814 : vec4<f32> = x_802.unity_SHAb;
  let x_815 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_814, x_815);
  let x_818 : vec4<f32> = u_xlat2;
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_818.y, x_818.z, x_818.z, x_818.x) * vec4<f32>(x_820.x, x_820.y, x_820.z, x_820.z));
  let x_824 : vec4<f32> = x_802.unity_SHBr;
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_824, x_825);
  let x_829 : vec4<f32> = x_802.unity_SHBg;
  let x_830 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_829, x_830);
  let x_834 : vec4<f32> = x_802.unity_SHBb;
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_834, x_835);
  let x_840 : f32 = u_xlat2.y;
  let x_842 : f32 = u_xlat2.y;
  u_xlat77 = (x_840 * x_842);
  let x_845 : f32 = u_xlat2.x;
  let x_847 : f32 = u_xlat2.x;
  let x_849 : f32 = u_xlat77;
  u_xlat77 = ((x_845 * x_847) + -(x_849));
  let x_854 : vec4<f32> = x_802.unity_SHC;
  let x_856 : f32 = u_xlat77;
  let x_859 : vec4<f32> = u_xlat7;
  let x_861 : vec3<f32> = ((vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_856, x_856, x_856)) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat4;
  let x_866 : vec4<f32> = u_xlat6;
  let x_868 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) + vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat4;
  let x_873 : vec3<f32> = max(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_877) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_883 : f32 = u_xlat77;
  u_xlat78 = (-(x_883) + 1.0f);
  let x_886 : f32 = u_xlat77;
  let x_888 : vec4<f32> = u_xlat5;
  let x_890 : vec3<f32> = (vec3<f32>(x_886, x_886, x_886) * vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec3<f32> = u_xlat0;
  let x_902 : vec4<f32> = u_xlat5;
  let x_907 : vec3<f32> = ((vec3<f32>(x_900.x, x_900.x, x_900.x) * vec3<f32>(x_902.x, x_902.y, x_902.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_908 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : f32 = u_xlat50;
  u_xlat0.x = (-(x_910) + 1.0f);
  let x_915 : f32 = u_xlat0.x;
  let x_917 : f32 = u_xlat0.x;
  u_xlat77 = (x_915 * x_917);
  let x_919 : f32 = u_xlat77;
  u_xlat77 = max(x_919, 0.0078125f);
  let x_923 : f32 = u_xlat77;
  let x_924 : f32 = u_xlat77;
  u_xlat79 = (x_923 * x_924);
  let x_926 : f32 = u_xlat50;
  let x_927 : f32 = u_xlat78;
  u_xlat50 = (x_926 + x_927);
  let x_929 : f32 = u_xlat50;
  u_xlat50 = clamp(x_929, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat77;
  u_xlat78 = ((x_931 * 4.0f) + 2.0f);
  let x_934 : f32 = u_xlat25;
  u_xlat25 = min(x_934, 1.0f);
  let x_938 : f32 = x_580.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_938);
  let x_940 : bool = u_xlatb80;
  if (x_940) {
    let x_944 : f32 = x_580.x_MainLightShadowParams.y;
    u_xlatb80 = (x_944 == 1.0f);
    let x_946 : bool = u_xlatb80;
    if (x_946) {
      let x_949 : vec4<f32> = u_xlat3;
      let x_952 : vec4<f32> = x_580.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_949.x, x_949.y, x_949.x, x_949.y) + x_952);
      let x_955 : vec4<f32> = u_xlat7;
      let x_956 : vec2<f32> = vec2<f32>(x_955.x, x_955.y);
      let x_958 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_956.x, x_956.y, x_958);
      let x_970 : vec3<f32> = txVec0;
      let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_970.xy, x_970.z);
      u_xlat8.x = x_972;
      let x_975 : vec4<f32> = u_xlat7;
      let x_976 : vec2<f32> = vec2<f32>(x_975.z, x_975.w);
      let x_978 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_976.x, x_976.y, x_978);
      let x_985 : vec3<f32> = txVec1;
      let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_985.xy, x_985.z);
      u_xlat8.y = x_987;
      let x_989 : vec4<f32> = u_xlat3;
      let x_992 : vec4<f32> = x_580.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y) + x_992);
      let x_995 : vec4<f32> = u_xlat7;
      let x_996 : vec2<f32> = vec2<f32>(x_995.x, x_995.y);
      let x_998 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_996.x, x_996.y, x_998);
      let x_1005 : vec3<f32> = txVec2;
      let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
      u_xlat8.z = x_1007;
      let x_1010 : vec4<f32> = u_xlat7;
      let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
      let x_1013 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
      let x_1020 : vec3<f32> = txVec3;
      let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1020.xy, x_1020.z);
      u_xlat8.w = x_1022;
      let x_1025 : vec4<f32> = u_xlat8;
      u_xlat80 = dot(x_1025, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1032 : f32 = x_580.x_MainLightShadowParams.y;
      u_xlatb81 = (x_1032 == 2.0f);
      let x_1034 : bool = u_xlatb81;
      if (x_1034) {
        let x_1037 : vec4<f32> = u_xlat3;
        let x_1040 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1037.x, x_1037.y) * vec2<f32>(x_1040.z, x_1040.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1044 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1048 : vec2<f32> = floor(vec2<f32>(x_1046.x, x_1046.y));
        let x_1049 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1053 : vec4<f32> = u_xlat3;
        let x_1056 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1053.x, x_1053.y) * vec2<f32>(x_1056.z, x_1056.w)) + -(vec2<f32>(x_1059.x, x_1059.y)));
        let x_1063 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1063.x, x_1063.x, x_1063.y, x_1063.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1067.x, x_1067.x, x_1067.z, x_1067.z) * vec4<f32>(x_1069.x, x_1069.x, x_1069.z, x_1069.z));
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1076 : vec2<f32> = (vec2<f32>(x_1072.y, x_1072.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1076.x, x_1077.y, x_1076.y, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat9;
        let x_1082 : vec2<f32> = u_xlat57;
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1082));
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1088 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1088) + vec2<f32>(1.0f, 1.0f));
        let x_1092 : vec2<f32> = u_xlat57;
        let x_1094 : vec2<f32> = min(x_1092, vec2<f32>(0.0f, 0.0f));
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat10;
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1103 : vec2<f32> = u_xlat59;
        let x_1104 : vec2<f32> = ((-(vec2<f32>(x_1097.x, x_1097.y)) * vec2<f32>(x_1100.x, x_1100.y)) + x_1103);
        let x_1105 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1107 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1107, vec2<f32>(0.0f, 0.0f));
        let x_1109 : vec2<f32> = u_xlat57;
        let x_1111 : vec2<f32> = u_xlat57;
        let x_1113 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1109) * x_1111) + vec2<f32>(x_1113.y, x_1113.w));
        let x_1116 : vec4<f32> = u_xlat10;
        let x_1118 : vec2<f32> = (vec2<f32>(x_1116.x, x_1116.y) + vec2<f32>(1.0f, 1.0f));
        let x_1119 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1121 + vec2<f32>(1.0f, 1.0f));
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1127 : vec2<f32> = (vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1128 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec2<f32> = u_xlat59;
        let x_1131 : vec2<f32> = (x_1130 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat10;
        let x_1136 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec2<f32> = u_xlat57;
        let x_1140 : vec2<f32> = (x_1139 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1141 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1147 : f32 = u_xlat10.x;
        u_xlat11.z = x_1147;
        let x_1150 : f32 = u_xlat57.x;
        u_xlat11.w = x_1150;
        let x_1153 : f32 = u_xlat12.x;
        u_xlat9.z = x_1153;
        let x_1156 : f32 = u_xlat8.x;
        u_xlat9.w = x_1156;
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1160 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1158.z, x_1158.w, x_1158.x, x_1158.z) + vec4<f32>(x_1160.z, x_1160.w, x_1160.x, x_1160.z));
        let x_1164 : f32 = u_xlat11.y;
        u_xlat10.z = x_1164;
        let x_1167 : f32 = u_xlat57.y;
        u_xlat10.w = x_1167;
        let x_1170 : f32 = u_xlat9.y;
        u_xlat12.z = x_1170;
        let x_1173 : f32 = u_xlat8.z;
        u_xlat12.w = x_1173;
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1177 : vec4<f32> = u_xlat12;
        let x_1179 : vec3<f32> = (vec3<f32>(x_1175.z, x_1175.y, x_1175.w) + vec3<f32>(x_1177.z, x_1177.y, x_1177.w));
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1184 : vec4<f32> = u_xlat13;
        let x_1186 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.z, x_1182.w) / vec3<f32>(x_1184.z, x_1184.w, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1195 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1196 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);
        let x_1198 : vec4<f32> = u_xlat12;
        let x_1200 : vec4<f32> = u_xlat8;
        let x_1202 : vec3<f32> = (vec3<f32>(x_1198.z, x_1198.y, x_1198.w) / vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
        let x_1203 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
        let x_1205 : vec4<f32> = u_xlat10;
        let x_1207 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.y, x_1205.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1208 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1213 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1215 : vec3<f32> = (vec3<f32>(x_1210.y, x_1210.x, x_1210.z) * vec3<f32>(x_1213.x, x_1213.x, x_1213.x));
        let x_1216 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat10;
        let x_1221 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1223 : vec3<f32> = (vec3<f32>(x_1218.x, x_1218.y, x_1218.z) * vec3<f32>(x_1221.y, x_1221.y, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1227 : f32 = u_xlat10.x;
        u_xlat9.w = x_1227;
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1232 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.y, x_1235.w, x_1235.x, x_1235.w));
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1241 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.z, x_1244.w));
        let x_1248 : f32 = u_xlat9.y;
        u_xlat10.w = x_1248;
        let x_1250 : vec4<f32> = u_xlat10;
        let x_1251 : vec2<f32> = vec2<f32>(x_1250.y, x_1250.z);
        let x_1252 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1252.x, x_1251.x, x_1252.z, x_1251.y);
        let x_1254 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1260.y));
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1266 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y) * vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y)) + vec4<f32>(x_1269.w, x_1269.y, x_1269.w, x_1269.z));
        let x_1272 : vec4<f32> = u_xlat7;
        let x_1275 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.w, x_1278.z, x_1278.w));
        let x_1282 : vec4<f32> = u_xlat8;
        let x_1284 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1282.x, x_1282.x, x_1282.x, x_1282.y) * vec4<f32>(x_1284.z, x_1284.w, x_1284.y, x_1284.z));
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1290 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1288.y, x_1288.y, x_1288.z, x_1288.z) * x_1290);
        let x_1294 : f32 = u_xlat8.z;
        let x_1296 : f32 = u_xlat13.y;
        u_xlat81 = (x_1294 * x_1296);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec4;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1309.xy, x_1309.z);
        u_xlat7.x = x_1311;
        let x_1314 : vec4<f32> = u_xlat11;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.z, x_1314.w);
        let x_1317 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1325 : vec3<f32> = txVec5;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1325.xy, x_1325.z);
        u_xlat32 = x_1327;
        let x_1328 : f32 = u_xlat32;
        let x_1330 : f32 = u_xlat14.y;
        u_xlat32 = (x_1328 * x_1330);
        let x_1333 : f32 = u_xlat14.x;
        let x_1335 : f32 = u_xlat7.x;
        let x_1337 : f32 = u_xlat32;
        u_xlat7.x = ((x_1333 * x_1335) + x_1337);
        let x_1341 : vec2<f32> = u_xlat57;
        let x_1343 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec6;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1350.xy, x_1350.z);
        u_xlat32 = x_1352;
        let x_1354 : f32 = u_xlat14.z;
        let x_1355 : f32 = u_xlat32;
        let x_1358 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1354 * x_1355) + x_1358);
        let x_1362 : vec4<f32> = u_xlat10;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.x, x_1362.y);
        let x_1365 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec7;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1372.xy, x_1372.z);
        u_xlat32 = x_1374;
        let x_1376 : f32 = u_xlat14.w;
        let x_1377 : f32 = u_xlat32;
        let x_1380 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1376 * x_1377) + x_1380);
        let x_1384 : vec4<f32> = u_xlat12;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec8;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat32 = x_1396;
        let x_1398 : f32 = u_xlat15.x;
        let x_1399 : f32 = u_xlat32;
        let x_1402 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1398 * x_1399) + x_1402);
        let x_1406 : vec4<f32> = u_xlat12;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.z, x_1406.w);
        let x_1409 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec9;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat32 = x_1418;
        let x_1420 : f32 = u_xlat15.y;
        let x_1421 : f32 = u_xlat32;
        let x_1424 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1420 * x_1421) + x_1424);
        let x_1428 : vec4<f32> = u_xlat10;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.z, x_1428.w);
        let x_1431 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec10;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1438.xy, x_1438.z);
        u_xlat32 = x_1440;
        let x_1442 : f32 = u_xlat15.z;
        let x_1443 : f32 = u_xlat32;
        let x_1446 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1442 * x_1443) + x_1446);
        let x_1450 : vec4<f32> = u_xlat9;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec11;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat32 = x_1462;
        let x_1464 : f32 = u_xlat15.w;
        let x_1465 : f32 = u_xlat32;
        let x_1468 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1464 * x_1465) + x_1468);
        let x_1472 : vec4<f32> = u_xlat9;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec12;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat32 = x_1484;
        let x_1485 : f32 = u_xlat81;
        let x_1486 : f32 = u_xlat32;
        let x_1489 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1485 * x_1486) + x_1489);
      } else {
        let x_1492 : vec4<f32> = u_xlat3;
        let x_1495 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1498 : vec2<f32> = ((vec2<f32>(x_1492.x, x_1492.y) * vec2<f32>(x_1495.z, x_1495.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1499 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
        let x_1501 : vec4<f32> = u_xlat7;
        let x_1503 : vec2<f32> = floor(vec2<f32>(x_1501.x, x_1501.y));
        let x_1504 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
        let x_1506 : vec4<f32> = u_xlat3;
        let x_1509 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1512 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1506.x, x_1506.y) * vec2<f32>(x_1509.z, x_1509.w)) + -(vec2<f32>(x_1512.x, x_1512.y)));
        let x_1516 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1516.x, x_1516.x, x_1516.y, x_1516.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1519 : vec4<f32> = u_xlat8;
        let x_1521 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1519.x, x_1519.x, x_1519.z, x_1519.z) * vec4<f32>(x_1521.x, x_1521.x, x_1521.z, x_1521.z));
        let x_1524 : vec4<f32> = u_xlat9;
        let x_1528 : vec2<f32> = (vec2<f32>(x_1524.y, x_1524.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1529 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1529.x, x_1528.x, x_1529.z, x_1528.y);
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1534 : vec2<f32> = u_xlat57;
        let x_1536 : vec2<f32> = ((vec2<f32>(x_1531.x, x_1531.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1534));
        let x_1537 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1536.x, x_1537.y, x_1536.y, x_1537.w);
        let x_1539 : vec2<f32> = u_xlat57;
        let x_1541 : vec2<f32> = (-(x_1539) + vec2<f32>(1.0f, 1.0f));
        let x_1542 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1541.x, x_1541.y, x_1542.z, x_1542.w);
        let x_1544 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1544, vec2<f32>(0.0f, 0.0f));
        let x_1546 : vec2<f32> = u_xlat59;
        let x_1548 : vec2<f32> = u_xlat59;
        let x_1550 : vec4<f32> = u_xlat9;
        let x_1552 : vec2<f32> = ((-(x_1546) * x_1548) + vec2<f32>(x_1550.x, x_1550.y));
        let x_1553 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
        let x_1555 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1555, vec2<f32>(0.0f, 0.0f));
        let x_1558 : vec2<f32> = u_xlat59;
        let x_1560 : vec2<f32> = u_xlat59;
        let x_1562 : vec4<f32> = u_xlat8;
        let x_1564 : vec2<f32> = ((-(x_1558) * x_1560) + vec2<f32>(x_1562.y, x_1562.w));
        let x_1565 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1564.x, x_1565.y, x_1564.y);
        let x_1567 : vec4<f32> = u_xlat9;
        let x_1570 : vec2<f32> = (vec2<f32>(x_1567.x, x_1567.y) + vec2<f32>(2.0f, 2.0f));
        let x_1571 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1570.x, x_1570.y, x_1571.z, x_1571.w);
        let x_1573 : vec3<f32> = u_xlat33;
        let x_1575 : vec2<f32> = (vec2<f32>(x_1573.x, x_1573.z) + vec2<f32>(2.0f, 2.0f));
        let x_1576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1576.x, x_1575.x, x_1576.z, x_1575.y);
        let x_1579 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1579 * 0.08163200318813323975f);
        let x_1583 : vec4<f32> = u_xlat8;
        let x_1586 : vec3<f32> = (vec3<f32>(x_1583.z, x_1583.x, x_1583.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1587 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
        let x_1589 : vec4<f32> = u_xlat9;
        let x_1592 : vec2<f32> = (vec2<f32>(x_1589.x, x_1589.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
        let x_1596 : f32 = u_xlat12.y;
        u_xlat11.x = x_1596;
        let x_1598 : vec2<f32> = u_xlat57;
        let x_1605 : vec2<f32> = ((vec2<f32>(x_1598.x, x_1598.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1606 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1606.x, x_1605.x, x_1606.z, x_1605.y);
        let x_1608 : vec2<f32> = u_xlat57;
        let x_1612 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1613 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1612.x, x_1613.y, x_1612.y, x_1613.w);
        let x_1616 : f32 = u_xlat8.x;
        u_xlat9.y = x_1616;
        let x_1619 : f32 = u_xlat10.y;
        u_xlat9.w = x_1619;
        let x_1621 : vec4<f32> = u_xlat9;
        let x_1622 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1621 + x_1622);
        let x_1624 : vec2<f32> = u_xlat57;
        let x_1627 : vec2<f32> = ((vec2<f32>(x_1624.y, x_1624.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1628 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1628.x, x_1627.x, x_1628.z, x_1627.y);
        let x_1630 : vec2<f32> = u_xlat57;
        let x_1633 : vec2<f32> = ((vec2<f32>(x_1630.y, x_1630.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1634 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1634.w);
        let x_1637 : f32 = u_xlat8.y;
        u_xlat10.y = x_1637;
        let x_1639 : vec4<f32> = u_xlat10;
        let x_1640 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1639 + x_1640);
        let x_1642 : vec4<f32> = u_xlat9;
        let x_1643 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1642 / x_1643);
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1645 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1651 : vec4<f32> = u_xlat10;
        let x_1652 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1651 / x_1652);
        let x_1654 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1654 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1656 : vec4<f32> = u_xlat9;
        let x_1659 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1656.w, x_1656.x, x_1656.y, x_1656.z) * vec4<f32>(x_1659.x, x_1659.x, x_1659.x, x_1659.x));
        let x_1662 : vec4<f32> = u_xlat10;
        let x_1665 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1662.x, x_1662.w, x_1662.y, x_1662.z) * vec4<f32>(x_1665.y, x_1665.y, x_1665.y, x_1665.y));
        let x_1668 : vec4<f32> = u_xlat9;
        let x_1669 : vec3<f32> = vec3<f32>(x_1668.y, x_1668.z, x_1668.w);
        let x_1670 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1669.x, x_1670.y, x_1669.y, x_1669.z);
        let x_1673 : f32 = u_xlat10.x;
        u_xlat12.y = x_1673;
        let x_1675 : vec4<f32> = u_xlat7;
        let x_1678 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1681 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1675.x, x_1675.y, x_1675.x, x_1675.y) * vec4<f32>(x_1678.x, x_1678.y, x_1678.x, x_1678.y)) + vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1681.y));
        let x_1684 : vec4<f32> = u_xlat7;
        let x_1687 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1690 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1684.x, x_1684.y) * vec2<f32>(x_1687.x, x_1687.y)) + vec2<f32>(x_1690.w, x_1690.y));
        let x_1694 : f32 = u_xlat12.y;
        u_xlat9.y = x_1694;
        let x_1697 : f32 = u_xlat10.z;
        u_xlat12.y = x_1697;
        let x_1699 : vec4<f32> = u_xlat7;
        let x_1702 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1705 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.y) * vec4<f32>(x_1702.x, x_1702.y, x_1702.x, x_1702.y)) + vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1705.y));
        let x_1708 : vec4<f32> = u_xlat7;
        let x_1711 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat12;
        let x_1716 : vec2<f32> = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1711.x, x_1711.y)) + vec2<f32>(x_1714.w, x_1714.y));
        let x_1717 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1716.x, x_1716.y, x_1717.z, x_1717.w);
        let x_1720 : f32 = u_xlat12.y;
        u_xlat9.z = x_1720;
        let x_1723 : vec4<f32> = u_xlat7;
        let x_1726 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y) * vec4<f32>(x_1726.x, x_1726.y, x_1726.x, x_1726.y)) + vec4<f32>(x_1729.x, x_1729.y, x_1729.x, x_1729.z));
        let x_1733 : f32 = u_xlat10.w;
        u_xlat12.y = x_1733;
        let x_1736 : vec4<f32> = u_xlat7;
        let x_1739 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1742 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1736.x, x_1736.y, x_1736.x, x_1736.y) * vec4<f32>(x_1739.x, x_1739.y, x_1739.x, x_1739.y)) + vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1742.y));
        let x_1746 : vec4<f32> = u_xlat7;
        let x_1749 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1752 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1749.x, x_1749.y)) + vec2<f32>(x_1752.w, x_1752.y));
        let x_1756 : f32 = u_xlat12.y;
        u_xlat9.w = x_1756;
        let x_1759 : vec4<f32> = u_xlat7;
        let x_1762 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1765 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1759.x, x_1759.y) * vec2<f32>(x_1762.x, x_1762.y)) + vec2<f32>(x_1765.x, x_1765.w));
        let x_1768 : vec4<f32> = u_xlat12;
        let x_1769 : vec3<f32> = vec3<f32>(x_1768.x, x_1768.z, x_1768.w);
        let x_1770 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1769.x, x_1770.y, x_1769.y, x_1769.z);
        let x_1772 : vec4<f32> = u_xlat7;
        let x_1775 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1778 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y) * vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y)) + vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1778.y));
        let x_1782 : vec4<f32> = u_xlat7;
        let x_1785 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1788 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1782.x, x_1782.y) * vec2<f32>(x_1785.x, x_1785.y)) + vec2<f32>(x_1788.w, x_1788.y));
        let x_1792 : f32 = u_xlat9.x;
        u_xlat10.x = x_1792;
        let x_1794 : vec4<f32> = u_xlat7;
        let x_1797 : vec4<f32> = x_580.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat10;
        let x_1802 : vec2<f32> = ((vec2<f32>(x_1794.x, x_1794.y) * vec2<f32>(x_1797.x, x_1797.y)) + vec2<f32>(x_1800.x, x_1800.y));
        let x_1803 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
        let x_1806 : vec4<f32> = u_xlat8;
        let x_1808 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1806.x, x_1806.x, x_1806.x, x_1806.x) * x_1808);
        let x_1811 : vec4<f32> = u_xlat8;
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1811.y, x_1811.y, x_1811.y, x_1811.y) * x_1813);
        let x_1816 : vec4<f32> = u_xlat8;
        let x_1818 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1816.z, x_1816.z, x_1816.z, x_1816.z) * x_1818);
        let x_1820 : vec4<f32> = u_xlat8;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1820.w, x_1820.w, x_1820.w, x_1820.w) * x_1822);
        let x_1825 : vec4<f32> = u_xlat13;
        let x_1826 : vec2<f32> = vec2<f32>(x_1825.x, x_1825.y);
        let x_1828 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1826.x, x_1826.y, x_1828);
        let x_1835 : vec3<f32> = txVec13;
        let x_1837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1835.xy, x_1835.z);
        u_xlat81 = x_1837;
        let x_1839 : vec4<f32> = u_xlat13;
        let x_1840 : vec2<f32> = vec2<f32>(x_1839.z, x_1839.w);
        let x_1842 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1840.x, x_1840.y, x_1842);
        let x_1849 : vec3<f32> = txVec14;
        let x_1851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1849.xy, x_1849.z);
        u_xlat9.x = x_1851;
        let x_1854 : f32 = u_xlat9.x;
        let x_1856 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1854 * x_1856);
        let x_1860 : f32 = u_xlat18.x;
        let x_1861 : f32 = u_xlat81;
        let x_1864 : f32 = u_xlat9.x;
        u_xlat81 = ((x_1860 * x_1861) + x_1864);
        let x_1867 : vec2<f32> = u_xlat57;
        let x_1869 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1867.x, x_1867.y, x_1869);
        let x_1876 : vec3<f32> = txVec15;
        let x_1878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1876.xy, x_1876.z);
        u_xlat57.x = x_1878;
        let x_1881 : f32 = u_xlat18.z;
        let x_1883 : f32 = u_xlat57.x;
        let x_1885 : f32 = u_xlat81;
        u_xlat81 = ((x_1881 * x_1883) + x_1885);
        let x_1888 : vec4<f32> = u_xlat16;
        let x_1889 : vec2<f32> = vec2<f32>(x_1888.x, x_1888.y);
        let x_1891 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec16;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1898.xy, x_1898.z);
        u_xlat57.x = x_1900;
        let x_1903 : f32 = u_xlat18.w;
        let x_1905 : f32 = u_xlat57.x;
        let x_1907 : f32 = u_xlat81;
        u_xlat81 = ((x_1903 * x_1905) + x_1907);
        let x_1910 : vec4<f32> = u_xlat14;
        let x_1911 : vec2<f32> = vec2<f32>(x_1910.x, x_1910.y);
        let x_1913 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1920 : vec3<f32> = txVec17;
        let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1920.xy, x_1920.z);
        u_xlat57.x = x_1922;
        let x_1925 : f32 = u_xlat19.x;
        let x_1927 : f32 = u_xlat57.x;
        let x_1929 : f32 = u_xlat81;
        u_xlat81 = ((x_1925 * x_1927) + x_1929);
        let x_1932 : vec4<f32> = u_xlat14;
        let x_1933 : vec2<f32> = vec2<f32>(x_1932.z, x_1932.w);
        let x_1935 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec18;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1942.xy, x_1942.z);
        u_xlat57.x = x_1944;
        let x_1947 : f32 = u_xlat19.y;
        let x_1949 : f32 = u_xlat57.x;
        let x_1951 : f32 = u_xlat81;
        u_xlat81 = ((x_1947 * x_1949) + x_1951);
        let x_1954 : vec4<f32> = u_xlat15;
        let x_1955 : vec2<f32> = vec2<f32>(x_1954.x, x_1954.y);
        let x_1957 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1955.x, x_1955.y, x_1957);
        let x_1964 : vec3<f32> = txVec19;
        let x_1966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1964.xy, x_1964.z);
        u_xlat57.x = x_1966;
        let x_1969 : f32 = u_xlat19.z;
        let x_1971 : f32 = u_xlat57.x;
        let x_1973 : f32 = u_xlat81;
        u_xlat81 = ((x_1969 * x_1971) + x_1973);
        let x_1976 : vec4<f32> = u_xlat16;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.z, x_1976.w);
        let x_1979 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec20;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1986.xy, x_1986.z);
        u_xlat57.x = x_1988;
        let x_1991 : f32 = u_xlat19.w;
        let x_1993 : f32 = u_xlat57.x;
        let x_1995 : f32 = u_xlat81;
        u_xlat81 = ((x_1991 * x_1993) + x_1995);
        let x_1998 : vec4<f32> = u_xlat17;
        let x_1999 : vec2<f32> = vec2<f32>(x_1998.x, x_1998.y);
        let x_2001 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1999.x, x_1999.y, x_2001);
        let x_2008 : vec3<f32> = txVec21;
        let x_2010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2008.xy, x_2008.z);
        u_xlat57.x = x_2010;
        let x_2013 : f32 = u_xlat20.x;
        let x_2015 : f32 = u_xlat57.x;
        let x_2017 : f32 = u_xlat81;
        u_xlat81 = ((x_2013 * x_2015) + x_2017);
        let x_2020 : vec4<f32> = u_xlat17;
        let x_2021 : vec2<f32> = vec2<f32>(x_2020.z, x_2020.w);
        let x_2023 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
        let x_2030 : vec3<f32> = txVec22;
        let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
        u_xlat57.x = x_2032;
        let x_2035 : f32 = u_xlat20.y;
        let x_2037 : f32 = u_xlat57.x;
        let x_2039 : f32 = u_xlat81;
        u_xlat81 = ((x_2035 * x_2037) + x_2039);
        let x_2042 : vec2<f32> = u_xlat34;
        let x_2044 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2042.x, x_2042.y, x_2044);
        let x_2051 : vec3<f32> = txVec23;
        let x_2053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2051.xy, x_2051.z);
        u_xlat57.x = x_2053;
        let x_2056 : f32 = u_xlat20.z;
        let x_2058 : f32 = u_xlat57.x;
        let x_2060 : f32 = u_xlat81;
        u_xlat81 = ((x_2056 * x_2058) + x_2060);
        let x_2063 : vec2<f32> = u_xlat65;
        let x_2065 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
        let x_2072 : vec3<f32> = txVec24;
        let x_2074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
        u_xlat57.x = x_2074;
        let x_2077 : f32 = u_xlat20.w;
        let x_2079 : f32 = u_xlat57.x;
        let x_2081 : f32 = u_xlat81;
        u_xlat81 = ((x_2077 * x_2079) + x_2081);
        let x_2084 : vec4<f32> = u_xlat12;
        let x_2085 : vec2<f32> = vec2<f32>(x_2084.x, x_2084.y);
        let x_2087 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2085.x, x_2085.y, x_2087);
        let x_2094 : vec3<f32> = txVec25;
        let x_2096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2094.xy, x_2094.z);
        u_xlat57.x = x_2096;
        let x_2099 : f32 = u_xlat8.x;
        let x_2101 : f32 = u_xlat57.x;
        let x_2103 : f32 = u_xlat81;
        u_xlat81 = ((x_2099 * x_2101) + x_2103);
        let x_2106 : vec4<f32> = u_xlat12;
        let x_2107 : vec2<f32> = vec2<f32>(x_2106.z, x_2106.w);
        let x_2109 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2107.x, x_2107.y, x_2109);
        let x_2116 : vec3<f32> = txVec26;
        let x_2118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2116.xy, x_2116.z);
        u_xlat57.x = x_2118;
        let x_2121 : f32 = u_xlat8.y;
        let x_2123 : f32 = u_xlat57.x;
        let x_2125 : f32 = u_xlat81;
        u_xlat81 = ((x_2121 * x_2123) + x_2125);
        let x_2128 : vec2<f32> = u_xlat60;
        let x_2130 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
        let x_2137 : vec3<f32> = txVec27;
        let x_2139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
        u_xlat57.x = x_2139;
        let x_2142 : f32 = u_xlat8.z;
        let x_2144 : f32 = u_xlat57.x;
        let x_2146 : f32 = u_xlat81;
        u_xlat81 = ((x_2142 * x_2144) + x_2146);
        let x_2149 : vec4<f32> = u_xlat7;
        let x_2150 : vec2<f32> = vec2<f32>(x_2149.x, x_2149.y);
        let x_2152 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2150.x, x_2150.y, x_2152);
        let x_2159 : vec3<f32> = txVec28;
        let x_2161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2159.xy, x_2159.z);
        u_xlat7.x = x_2161;
        let x_2164 : f32 = u_xlat8.w;
        let x_2166 : f32 = u_xlat7.x;
        let x_2168 : f32 = u_xlat81;
        u_xlat80 = ((x_2164 * x_2166) + x_2168);
      }
    }
  } else {
    let x_2172 : vec4<f32> = u_xlat3;
    let x_2173 : vec2<f32> = vec2<f32>(x_2172.x, x_2172.y);
    let x_2175 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2173.x, x_2173.y, x_2175);
    let x_2182 : vec3<f32> = txVec29;
    let x_2184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2182.xy, x_2182.z);
    u_xlat80 = x_2184;
  }
  let x_2186 : f32 = x_580.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2186) + 1.0f);
  let x_2190 : f32 = u_xlat80;
  let x_2192 : f32 = x_580.x_MainLightShadowParams.x;
  let x_2195 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2190 * x_2192) + x_2195);
  let x_2200 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2200);
  let x_2204 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2204 >= 1.0f);
  let x_2206 : bool = u_xlatb53;
  let x_2207 : bool = u_xlatb28;
  u_xlatb28 = (x_2206 | x_2207);
  let x_2209 : bool = u_xlatb28;
  if (x_2209) {
    x_2211 = 1.0f;
  } else {
    let x_2216 : f32 = u_xlat3.x;
    x_2211 = x_2216;
  }
  let x_2217 : f32 = x_2211;
  u_xlat3.x = x_2217;
  let x_2219 : vec3<f32> = vs_TEXCOORD7;
  let x_2221 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2223 : vec3<f32> = (x_2219 + -(x_2221));
  let x_2224 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2223.x, x_2223.y, x_2223.z, x_2224.w);
  let x_2227 : vec4<f32> = u_xlat7;
  let x_2229 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2227.x, x_2227.y, x_2227.z), vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
  let x_2233 : f32 = u_xlat28;
  let x_2235 : f32 = x_580.x_MainLightShadowParams.z;
  let x_2238 : f32 = x_580.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2233 * x_2235) + x_2238);
  let x_2240 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2240, 0.0f, 1.0f);
  let x_2243 : f32 = u_xlat3.x;
  u_xlat80 = (-(x_2243) + 1.0f);
  let x_2246 : f32 = u_xlat53;
  let x_2247 : f32 = u_xlat80;
  let x_2250 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2246 * x_2247) + x_2250);
  let x_2253 : vec4<f32> = u_xlat1;
  let x_2256 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(-(vec3<f32>(x_2253.x, x_2253.y, x_2253.z)), vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : f32 = u_xlat53;
  let x_2260 : f32 = u_xlat53;
  u_xlat53 = (x_2259 + x_2260);
  let x_2262 : vec4<f32> = u_xlat2;
  let x_2264 : f32 = u_xlat53;
  let x_2268 : vec4<f32> = u_xlat1;
  let x_2271 : vec3<f32> = ((vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * -(vec3<f32>(x_2264, x_2264, x_2264))) + -(vec3<f32>(x_2268.x, x_2268.y, x_2268.z)));
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : vec4<f32> = u_xlat2;
  let x_2276 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(vec3<f32>(x_2274.x, x_2274.y, x_2274.z), vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2279, 0.0f, 1.0f);
  let x_2281 : f32 = u_xlat53;
  u_xlat53 = (-(x_2281) + 1.0f);
  let x_2284 : f32 = u_xlat53;
  let x_2285 : f32 = u_xlat53;
  u_xlat53 = (x_2284 * x_2285);
  let x_2287 : f32 = u_xlat53;
  let x_2288 : f32 = u_xlat53;
  u_xlat53 = (x_2287 * x_2288);
  let x_2291 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2291) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2298 : f32 = u_xlat0.x;
  let x_2299 : f32 = u_xlat80;
  u_xlat0.x = (x_2298 * x_2299);
  let x_2303 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2303 * 6.0f);
  let x_2315 : vec4<f32> = u_xlat7;
  let x_2318 : f32 = u_xlat0.x;
  let x_2319 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2315.x, x_2315.y, x_2315.z), x_2318);
  u_xlat7 = x_2319;
  let x_2321 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2321 + -1.0f);
  let x_2325 : f32 = x_802.unity_SpecCube0_HDR.w;
  let x_2327 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2325 * x_2327) + 1.0f);
  let x_2332 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2332, 0.0f);
  let x_2336 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2336);
  let x_2340 : f32 = u_xlat0.x;
  let x_2342 : f32 = x_802.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2340 * x_2342);
  let x_2346 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2346);
  let x_2350 : f32 = u_xlat0.x;
  let x_2352 : f32 = x_802.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2350 * x_2352);
  let x_2355 : vec4<f32> = u_xlat7;
  let x_2357 : vec3<f32> = u_xlat0;
  let x_2359 : vec3<f32> = (vec3<f32>(x_2355.x, x_2355.y, x_2355.z) * vec3<f32>(x_2357.x, x_2357.x, x_2357.x));
  let x_2360 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
  let x_2362 : f32 = u_xlat77;
  let x_2364 : f32 = u_xlat77;
  let x_2368 : vec2<f32> = ((vec2<f32>(x_2362, x_2362) * vec2<f32>(x_2364, x_2364)) + vec2<f32>(-1.0f, 1.0f));
  let x_2369 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2368.x, x_2368.y, x_2369.z, x_2369.w);
  let x_2372 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2372);
  let x_2375 : vec4<f32> = u_xlat5;
  let x_2378 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2375.x, x_2375.y, x_2375.z)) + vec3<f32>(x_2378, x_2378, x_2378));
  let x_2381 : f32 = u_xlat53;
  let x_2383 : vec3<f32> = u_xlat33;
  let x_2385 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2381, x_2381, x_2381) * x_2383) + vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
  let x_2388 : vec3<f32> = u_xlat0;
  let x_2390 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2388.x, x_2388.x, x_2388.x) * x_2390);
  let x_2392 : vec4<f32> = u_xlat7;
  let x_2394 : vec3<f32> = u_xlat33;
  let x_2395 : vec3<f32> = (vec3<f32>(x_2392.x, x_2392.y, x_2392.z) * x_2394);
  let x_2396 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
  let x_2398 : vec4<f32> = u_xlat4;
  let x_2400 : vec4<f32> = u_xlat6;
  let x_2403 : vec4<f32> = u_xlat7;
  let x_2405 : vec3<f32> = ((vec3<f32>(x_2398.x, x_2398.y, x_2398.z) * vec3<f32>(x_2400.x, x_2400.y, x_2400.z)) + vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
  let x_2406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2409 : f32 = u_xlat3.x;
  let x_2411 : f32 = x_802.unity_LightData.z;
  u_xlat0.x = (x_2409 * x_2411);
  let x_2414 : vec4<f32> = u_xlat2;
  let x_2417 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2414.x, x_2414.y, x_2414.z), vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2420, 0.0f, 1.0f);
  let x_2422 : f32 = u_xlat50;
  let x_2424 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2422 * x_2424);
  let x_2427 : vec3<f32> = u_xlat0;
  let x_2430 : vec4<f32> = x_113.x_MainLightColor;
  let x_2432 : vec3<f32> = (vec3<f32>(x_2427.x, x_2427.x, x_2427.x) * vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
  let x_2433 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
  let x_2435 : vec4<f32> = u_xlat1;
  let x_2438 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_2435.x, x_2435.y, x_2435.z) + vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2441 : vec3<f32> = u_xlat33;
  let x_2442 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2441, x_2442);
  let x_2446 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2446, 1.17549435e-38f);
  let x_2451 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2451);
  let x_2454 : vec3<f32> = u_xlat0;
  let x_2456 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2454.x, x_2454.x, x_2454.x) * x_2456);
  let x_2458 : vec4<f32> = u_xlat2;
  let x_2460 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2458.x, x_2458.y, x_2458.z), x_2460);
  let x_2464 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2464, 0.0f, 1.0f);
  let x_2468 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2470 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2468.x, x_2468.y, x_2468.z), x_2470);
  let x_2474 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2474, 0.0f, 1.0f);
  let x_2477 : vec3<f32> = u_xlat0;
  let x_2479 : vec3<f32> = u_xlat0;
  let x_2481 : vec2<f32> = (vec2<f32>(x_2477.x, x_2477.z) * vec2<f32>(x_2479.x, x_2479.z));
  let x_2482 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2481.x, x_2482.y, x_2481.y);
  let x_2485 : f32 = u_xlat0.x;
  let x_2487 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2485 * x_2487) + 1.00001001358032226562f);
  let x_2493 : f32 = u_xlat0.x;
  let x_2495 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2493 * x_2495);
  let x_2499 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2499, 0.10000000149011611938f);
  let x_2502 : f32 = u_xlat50;
  let x_2504 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2502 * x_2504);
  let x_2507 : f32 = u_xlat78;
  let x_2509 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2507 * x_2509);
  let x_2512 : f32 = u_xlat79;
  let x_2514 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2512 / x_2514);
  let x_2517 : vec4<f32> = u_xlat5;
  let x_2519 : vec3<f32> = u_xlat0;
  let x_2522 : vec4<f32> = u_xlat6;
  u_xlat33 = ((vec3<f32>(x_2517.x, x_2517.y, x_2517.z) * vec3<f32>(x_2519.x, x_2519.x, x_2519.x)) + vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
  let x_2525 : vec4<f32> = u_xlat7;
  let x_2527 : vec3<f32> = u_xlat33;
  let x_2528 : vec3<f32> = (vec3<f32>(x_2525.x, x_2525.y, x_2525.z) * x_2527);
  let x_2529 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
  let x_2532 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2534 : f32 = x_802.unity_LightData.y;
  u_xlat0.x = min(x_2532, x_2534);
  let x_2539 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2539));
  let x_2542 : f32 = u_xlat28;
  let x_2544 : f32 = x_580.x_AdditionalShadowFadeParams.x;
  let x_2547 : f32 = x_580.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2542 * x_2544) + x_2547);
  let x_2549 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2549, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2561 : u32 = u_xlatu_loop_1;
    let x_2562 : u32 = u_xlatu0;
    if ((x_2561 < x_2562)) {
    } else {
      break;
    }
    let x_2565 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2565 >> 2u);
    let x_2568 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2568 & 3u));
    let x_2571 : u32 = u_xlatu80;
    let x_2574 : vec4<f32> = x_802.unity_LightIndices[bitcast<i32>(x_2571)];
    let x_2584 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2589 : vec4<u32> = indexable[x_2584];
    u_xlat80 = dot(x_2574, bitcast<vec4<f32>>(x_2589));
    let x_2593 : f32 = u_xlat80;
    u_xlati80 = i32(x_2593);
    let x_2595 : vec3<f32> = vs_TEXCOORD7;
    let x_2606 : i32 = u_xlati80;
    let x_2608 : vec4<f32> = x_2605.x_AdditionalLightsPosition[x_2606];
    let x_2611 : i32 = u_xlati80;
    let x_2613 : vec4<f32> = x_2605.x_AdditionalLightsPosition[x_2611];
    u_xlat33 = ((-(x_2595) * vec3<f32>(x_2608.w, x_2608.w, x_2608.w)) + vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
    let x_2616 : vec3<f32> = u_xlat33;
    let x_2617 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_2616, x_2617);
    let x_2619 : f32 = u_xlat81;
    u_xlat81 = max(x_2619, 0.00006103515625f);
    let x_2622 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2622);
    let x_2624 : f32 = u_xlat82;
    let x_2626 : vec3<f32> = u_xlat33;
    let x_2627 : vec3<f32> = (vec3<f32>(x_2624, x_2624, x_2624) * x_2626);
    let x_2628 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
    let x_2631 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2631);
    let x_2633 : f32 = u_xlat81;
    let x_2634 : i32 = u_xlati80;
    let x_2636 : f32 = x_2605.x_AdditionalLightsAttenuation[x_2634].x;
    u_xlat81 = (x_2633 * x_2636);
    let x_2638 : f32 = u_xlat81;
    let x_2640 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2638) * x_2640) + 1.0f);
    let x_2643 : f32 = u_xlat81;
    u_xlat81 = max(x_2643, 0.0f);
    let x_2645 : f32 = u_xlat81;
    let x_2646 : f32 = u_xlat81;
    u_xlat81 = (x_2645 * x_2646);
    let x_2648 : f32 = u_xlat81;
    let x_2649 : f32 = u_xlat84;
    u_xlat81 = (x_2648 * x_2649);
    let x_2651 : i32 = u_xlati80;
    let x_2653 : vec4<f32> = x_2605.x_AdditionalLightsSpotDir[x_2651];
    let x_2655 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2653.x, x_2653.y, x_2653.z), vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
    let x_2658 : f32 = u_xlat84;
    let x_2659 : i32 = u_xlati80;
    let x_2661 : f32 = x_2605.x_AdditionalLightsAttenuation[x_2659].z;
    let x_2663 : i32 = u_xlati80;
    let x_2665 : f32 = x_2605.x_AdditionalLightsAttenuation[x_2663].w;
    u_xlat84 = ((x_2658 * x_2661) + x_2665);
    let x_2667 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2667, 0.0f, 1.0f);
    let x_2669 : f32 = u_xlat84;
    let x_2670 : f32 = u_xlat84;
    u_xlat84 = (x_2669 * x_2670);
    let x_2672 : f32 = u_xlat81;
    let x_2673 : f32 = u_xlat84;
    u_xlat81 = (x_2672 * x_2673);
    let x_2676 : i32 = u_xlati80;
    let x_2678 : f32 = x_580.x_AdditionalShadowParams[x_2676].w;
    u_xlati84 = i32(x_2678);
    let x_2683 : i32 = u_xlati84;
    u_xlatb10.x = (x_2683 >= 0i);
    let x_2687 : bool = u_xlatb10.x;
    if (x_2687) {
      let x_2691 : i32 = u_xlati80;
      let x_2693 : f32 = x_580.x_AdditionalShadowParams[x_2691].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2693, x_2693, x_2693, x_2693))));
      let x_2699 : bool = u_xlatb10.x;
      if (x_2699) {
        let x_2702 : vec4<f32> = u_xlat9;
        let x_2705 : vec4<f32> = u_xlat9;
        let x_2708 : vec4<bool> = (abs(vec4<f32>(x_2702.z, x_2702.z, x_2702.y, x_2702.z)) >= abs(vec4<f32>(x_2705.x, x_2705.y, x_2705.x, x_2705.x)));
        u_xlatb10 = vec3<bool>(x_2708.x, x_2708.y, x_2708.z);
        let x_2711 : bool = u_xlatb10.y;
        let x_2713 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2711 & x_2713);
        let x_2717 : vec4<f32> = u_xlat9;
        let x_2720 : vec4<bool> = (-(vec4<f32>(x_2717.z, x_2717.y, x_2717.x, x_2717.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2720.x, x_2720.y, x_2720.z);
        let x_2724 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2724);
        let x_2729 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2729);
        let x_2733 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2733);
        let x_2737 : bool = u_xlatb10.z;
        if (x_2737) {
          let x_2742 : f32 = u_xlat35.z;
          x_2738 = x_2742;
        } else {
          let x_2745 : f32 = u_xlat11.x;
          x_2738 = x_2745;
        }
        let x_2746 : f32 = x_2738;
        u_xlat60.x = x_2746;
        let x_2749 : bool = u_xlatb10.x;
        if (x_2749) {
          let x_2754 : f32 = u_xlat35.x;
          x_2750 = x_2754;
        } else {
          let x_2757 : f32 = u_xlat60.x;
          x_2750 = x_2757;
        }
        let x_2758 : f32 = x_2750;
        u_xlat10.x = x_2758;
        let x_2760 : i32 = u_xlati80;
        let x_2762 : f32 = x_580.x_AdditionalShadowParams[x_2760].w;
        u_xlat35.x = trunc(x_2762);
        let x_2766 : f32 = u_xlat10.x;
        let x_2768 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2766 + x_2768);
        let x_2772 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2772);
      }
      let x_2774 : i32 = u_xlati84;
      u_xlati84 = (x_2774 << bitcast<u32>(2i));
      let x_2776 : vec3<f32> = vs_TEXCOORD7;
      let x_2778 : i32 = u_xlati84;
      let x_2781 : i32 = u_xlati84;
      let x_2785 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_2778 + 1i) / 4i)][((x_2781 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2776.y, x_2776.y, x_2776.y, x_2776.y) * x_2785);
      let x_2787 : i32 = u_xlati84;
      let x_2789 : i32 = u_xlati84;
      let x_2792 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[(x_2787 / 4i)][(x_2789 % 4i)];
      let x_2793 : vec3<f32> = vs_TEXCOORD7;
      let x_2796 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2792 * vec4<f32>(x_2793.x, x_2793.x, x_2793.x, x_2793.x)) + x_2796);
      let x_2798 : i32 = u_xlati84;
      let x_2801 : i32 = u_xlati84;
      let x_2805 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_2798 + 2i) / 4i)][((x_2801 + 2i) % 4i)];
      let x_2806 : vec3<f32> = vs_TEXCOORD7;
      let x_2809 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2805 * vec4<f32>(x_2806.z, x_2806.z, x_2806.z, x_2806.z)) + x_2809);
      let x_2811 : vec4<f32> = u_xlat10;
      let x_2812 : i32 = u_xlati84;
      let x_2815 : i32 = u_xlati84;
      let x_2819 : vec4<f32> = x_580.x_AdditionalLightsWorldToShadow[((x_2812 + 3i) / 4i)][((x_2815 + 3i) % 4i)];
      u_xlat10 = (x_2811 + x_2819);
      let x_2821 : vec4<f32> = u_xlat10;
      let x_2823 : vec4<f32> = u_xlat10;
      let x_2825 : vec3<f32> = (vec3<f32>(x_2821.x, x_2821.y, x_2821.z) / vec3<f32>(x_2823.w, x_2823.w, x_2823.w));
      let x_2826 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2825.x, x_2825.y, x_2825.z, x_2826.w);
      let x_2829 : i32 = u_xlati80;
      let x_2831 : f32 = x_580.x_AdditionalShadowParams[x_2829].y;
      u_xlatb84 = (0.0f < x_2831);
      let x_2833 : bool = u_xlatb84;
      if (x_2833) {
        let x_2836 : i32 = u_xlati80;
        let x_2838 : f32 = x_580.x_AdditionalShadowParams[x_2836].y;
        u_xlatb84 = (1.0f == x_2838);
        let x_2840 : bool = u_xlatb84;
        if (x_2840) {
          let x_2843 : vec4<f32> = u_xlat10;
          let x_2846 : vec4<f32> = x_580.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2843.x, x_2843.y, x_2843.x, x_2843.y) + x_2846);
          let x_2849 : vec4<f32> = u_xlat11;
          let x_2850 : vec2<f32> = vec2<f32>(x_2849.x, x_2849.y);
          let x_2852 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2850.x, x_2850.y, x_2852);
          let x_2860 : vec3<f32> = txVec30;
          let x_2862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2860.xy, x_2860.z);
          u_xlat12.x = x_2862;
          let x_2865 : vec4<f32> = u_xlat11;
          let x_2866 : vec2<f32> = vec2<f32>(x_2865.z, x_2865.w);
          let x_2868 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2866.x, x_2866.y, x_2868);
          let x_2875 : vec3<f32> = txVec31;
          let x_2877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2875.xy, x_2875.z);
          u_xlat12.y = x_2877;
          let x_2879 : vec4<f32> = u_xlat10;
          let x_2882 : vec4<f32> = x_580.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y) + x_2882);
          let x_2885 : vec4<f32> = u_xlat11;
          let x_2886 : vec2<f32> = vec2<f32>(x_2885.x, x_2885.y);
          let x_2888 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2886.x, x_2886.y, x_2888);
          let x_2895 : vec3<f32> = txVec32;
          let x_2897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2895.xy, x_2895.z);
          u_xlat12.z = x_2897;
          let x_2900 : vec4<f32> = u_xlat11;
          let x_2901 : vec2<f32> = vec2<f32>(x_2900.z, x_2900.w);
          let x_2903 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2901.x, x_2901.y, x_2903);
          let x_2910 : vec3<f32> = txVec33;
          let x_2912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2910.xy, x_2910.z);
          u_xlat12.w = x_2912;
          let x_2914 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2914, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2918 : i32 = u_xlati80;
          let x_2920 : f32 = x_580.x_AdditionalShadowParams[x_2918].y;
          u_xlatb85 = (2.0f == x_2920);
          let x_2922 : bool = u_xlatb85;
          if (x_2922) {
            let x_2925 : vec4<f32> = u_xlat10;
            let x_2928 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_2931 : vec2<f32> = ((vec2<f32>(x_2925.x, x_2925.y) * vec2<f32>(x_2928.z, x_2928.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2932 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2931.x, x_2931.y, x_2932.z, x_2932.w);
            let x_2934 : vec4<f32> = u_xlat11;
            let x_2936 : vec2<f32> = floor(vec2<f32>(x_2934.x, x_2934.y));
            let x_2937 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2940 : vec4<f32> = u_xlat10;
            let x_2943 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2940.x, x_2940.y) * vec2<f32>(x_2943.z, x_2943.w)) + -(vec2<f32>(x_2946.x, x_2946.y)));
            let x_2950 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2950.x, x_2950.x, x_2950.y, x_2950.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2953 : vec4<f32> = u_xlat12;
            let x_2955 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2953.x, x_2953.x, x_2953.z, x_2953.z) * vec4<f32>(x_2955.x, x_2955.x, x_2955.z, x_2955.z));
            let x_2958 : vec4<f32> = u_xlat13;
            let x_2960 : vec2<f32> = (vec2<f32>(x_2958.y, x_2958.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2961 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2960.x, x_2961.y, x_2960.y, x_2961.w);
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2966 : vec2<f32> = u_xlat61;
            let x_2968 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2966));
            let x_2969 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2968.x, x_2968.y, x_2969.z, x_2969.w);
            let x_2972 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2972) + vec2<f32>(1.0f, 1.0f));
            let x_2975 : vec2<f32> = u_xlat61;
            let x_2976 : vec2<f32> = min(x_2975, vec2<f32>(0.0f, 0.0f));
            let x_2977 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2976.x, x_2976.y, x_2977.z, x_2977.w);
            let x_2979 : vec4<f32> = u_xlat14;
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2985 : vec2<f32> = u_xlat63;
            let x_2986 : vec2<f32> = ((-(vec2<f32>(x_2979.x, x_2979.y)) * vec2<f32>(x_2982.x, x_2982.y)) + x_2985);
            let x_2987 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2986.x, x_2986.y, x_2987.z, x_2987.w);
            let x_2989 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2989, vec2<f32>(0.0f, 0.0f));
            let x_2991 : vec2<f32> = u_xlat61;
            let x_2993 : vec2<f32> = u_xlat61;
            let x_2995 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2991) * x_2993) + vec2<f32>(x_2995.y, x_2995.w));
            let x_2998 : vec4<f32> = u_xlat14;
            let x_3000 : vec2<f32> = (vec2<f32>(x_2998.x, x_2998.y) + vec2<f32>(1.0f, 1.0f));
            let x_3001 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3000.x, x_3000.y, x_3001.z, x_3001.w);
            let x_3003 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3003 + vec2<f32>(1.0f, 1.0f));
            let x_3005 : vec4<f32> = u_xlat13;
            let x_3007 : vec2<f32> = (vec2<f32>(x_3005.x, x_3005.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3008 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3007.x, x_3007.y, x_3008.z, x_3008.w);
            let x_3010 : vec2<f32> = u_xlat63;
            let x_3011 : vec2<f32> = (x_3010 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3012 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
            let x_3014 : vec4<f32> = u_xlat14;
            let x_3016 : vec2<f32> = (vec2<f32>(x_3014.x, x_3014.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3017 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3016.x, x_3016.y, x_3017.z, x_3017.w);
            let x_3019 : vec2<f32> = u_xlat61;
            let x_3020 : vec2<f32> = (x_3019 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3021 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3020.x, x_3020.y, x_3021.z, x_3021.w);
            let x_3023 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3023.y, x_3023.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3027 : f32 = u_xlat14.x;
            u_xlat15.z = x_3027;
            let x_3030 : f32 = u_xlat61.x;
            u_xlat15.w = x_3030;
            let x_3033 : f32 = u_xlat16.x;
            u_xlat13.z = x_3033;
            let x_3036 : f32 = u_xlat12.x;
            u_xlat13.w = x_3036;
            let x_3038 : vec4<f32> = u_xlat13;
            let x_3040 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3038.z, x_3038.w, x_3038.x, x_3038.z) + vec4<f32>(x_3040.z, x_3040.w, x_3040.x, x_3040.z));
            let x_3044 : f32 = u_xlat15.y;
            u_xlat14.z = x_3044;
            let x_3047 : f32 = u_xlat61.y;
            u_xlat14.w = x_3047;
            let x_3050 : f32 = u_xlat13.y;
            u_xlat16.z = x_3050;
            let x_3053 : f32 = u_xlat12.z;
            u_xlat16.w = x_3053;
            let x_3055 : vec4<f32> = u_xlat14;
            let x_3057 : vec4<f32> = u_xlat16;
            let x_3059 : vec3<f32> = (vec3<f32>(x_3055.z, x_3055.y, x_3055.w) + vec3<f32>(x_3057.z, x_3057.y, x_3057.w));
            let x_3060 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3059.x, x_3059.y, x_3059.z, x_3060.w);
            let x_3062 : vec4<f32> = u_xlat13;
            let x_3064 : vec4<f32> = u_xlat17;
            let x_3066 : vec3<f32> = (vec3<f32>(x_3062.x, x_3062.z, x_3062.w) / vec3<f32>(x_3064.z, x_3064.w, x_3064.y));
            let x_3067 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3066.x, x_3066.y, x_3066.z, x_3067.w);
            let x_3069 : vec4<f32> = u_xlat13;
            let x_3071 : vec3<f32> = (vec3<f32>(x_3069.x, x_3069.y, x_3069.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3072 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
            let x_3074 : vec4<f32> = u_xlat16;
            let x_3076 : vec4<f32> = u_xlat12;
            let x_3078 : vec3<f32> = (vec3<f32>(x_3074.z, x_3074.y, x_3074.w) / vec3<f32>(x_3076.x, x_3076.y, x_3076.z));
            let x_3079 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
            let x_3081 : vec4<f32> = u_xlat14;
            let x_3083 : vec3<f32> = (vec3<f32>(x_3081.x, x_3081.y, x_3081.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3084 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3083.x, x_3083.y, x_3083.z, x_3084.w);
            let x_3086 : vec4<f32> = u_xlat13;
            let x_3089 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3091 : vec3<f32> = (vec3<f32>(x_3086.y, x_3086.x, x_3086.z) * vec3<f32>(x_3089.x, x_3089.x, x_3089.x));
            let x_3092 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3092.w);
            let x_3094 : vec4<f32> = u_xlat14;
            let x_3097 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3099 : vec3<f32> = (vec3<f32>(x_3094.x, x_3094.y, x_3094.z) * vec3<f32>(x_3097.y, x_3097.y, x_3097.y));
            let x_3100 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3099.x, x_3099.y, x_3099.z, x_3100.w);
            let x_3103 : f32 = u_xlat14.x;
            u_xlat13.w = x_3103;
            let x_3105 : vec4<f32> = u_xlat11;
            let x_3108 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3111 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3105.x, x_3105.y, x_3105.x, x_3105.y) * vec4<f32>(x_3108.x, x_3108.y, x_3108.x, x_3108.y)) + vec4<f32>(x_3111.y, x_3111.w, x_3111.x, x_3111.w));
            let x_3114 : vec4<f32> = u_xlat11;
            let x_3117 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3120 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3114.x, x_3114.y) * vec2<f32>(x_3117.x, x_3117.y)) + vec2<f32>(x_3120.z, x_3120.w));
            let x_3124 : f32 = u_xlat13.y;
            u_xlat14.w = x_3124;
            let x_3126 : vec4<f32> = u_xlat14;
            let x_3127 : vec2<f32> = vec2<f32>(x_3126.y, x_3126.z);
            let x_3128 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3128.x, x_3127.x, x_3128.z, x_3127.y);
            let x_3130 : vec4<f32> = u_xlat11;
            let x_3133 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3136 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3130.x, x_3130.y, x_3130.x, x_3130.y) * vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y)) + vec4<f32>(x_3136.x, x_3136.y, x_3136.z, x_3136.y));
            let x_3139 : vec4<f32> = u_xlat11;
            let x_3142 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3145 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3139.x, x_3139.y, x_3139.x, x_3139.y) * vec4<f32>(x_3142.x, x_3142.y, x_3142.x, x_3142.y)) + vec4<f32>(x_3145.w, x_3145.y, x_3145.w, x_3145.z));
            let x_3148 : vec4<f32> = u_xlat11;
            let x_3151 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3154 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3148.x, x_3148.y, x_3148.x, x_3148.y) * vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y)) + vec4<f32>(x_3154.x, x_3154.w, x_3154.z, x_3154.w));
            let x_3157 : vec4<f32> = u_xlat12;
            let x_3159 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3157.x, x_3157.x, x_3157.x, x_3157.y) * vec4<f32>(x_3159.z, x_3159.w, x_3159.y, x_3159.z));
            let x_3162 : vec4<f32> = u_xlat12;
            let x_3164 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3162.y, x_3162.y, x_3162.z, x_3162.z) * x_3164);
            let x_3168 : f32 = u_xlat12.z;
            let x_3170 : f32 = u_xlat17.y;
            u_xlat85 = (x_3168 * x_3170);
            let x_3173 : vec4<f32> = u_xlat15;
            let x_3174 : vec2<f32> = vec2<f32>(x_3173.x, x_3173.y);
            let x_3176 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3174.x, x_3174.y, x_3176);
            let x_3183 : vec3<f32> = txVec34;
            let x_3185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3183.xy, x_3183.z);
            u_xlat11.x = x_3185;
            let x_3188 : vec4<f32> = u_xlat15;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.z, x_3188.w);
            let x_3191 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3199 : vec3<f32> = txVec35;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat36 = x_3201;
            let x_3202 : f32 = u_xlat36;
            let x_3204 : f32 = u_xlat18.y;
            u_xlat36 = (x_3202 * x_3204);
            let x_3207 : f32 = u_xlat18.x;
            let x_3209 : f32 = u_xlat11.x;
            let x_3211 : f32 = u_xlat36;
            u_xlat11.x = ((x_3207 * x_3209) + x_3211);
            let x_3215 : vec2<f32> = u_xlat61;
            let x_3217 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
            let x_3224 : vec3<f32> = txVec36;
            let x_3226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
            u_xlat36 = x_3226;
            let x_3228 : f32 = u_xlat18.z;
            let x_3229 : f32 = u_xlat36;
            let x_3232 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3228 * x_3229) + x_3232);
            let x_3236 : vec4<f32> = u_xlat14;
            let x_3237 : vec2<f32> = vec2<f32>(x_3236.x, x_3236.y);
            let x_3239 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3237.x, x_3237.y, x_3239);
            let x_3246 : vec3<f32> = txVec37;
            let x_3248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3246.xy, x_3246.z);
            u_xlat36 = x_3248;
            let x_3250 : f32 = u_xlat18.w;
            let x_3251 : f32 = u_xlat36;
            let x_3254 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3250 * x_3251) + x_3254);
            let x_3258 : vec4<f32> = u_xlat16;
            let x_3259 : vec2<f32> = vec2<f32>(x_3258.x, x_3258.y);
            let x_3261 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3259.x, x_3259.y, x_3261);
            let x_3268 : vec3<f32> = txVec38;
            let x_3270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3268.xy, x_3268.z);
            u_xlat36 = x_3270;
            let x_3272 : f32 = u_xlat19.x;
            let x_3273 : f32 = u_xlat36;
            let x_3276 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3272 * x_3273) + x_3276);
            let x_3280 : vec4<f32> = u_xlat16;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.z, x_3280.w);
            let x_3283 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3290 : vec3<f32> = txVec39;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat36 = x_3292;
            let x_3294 : f32 = u_xlat19.y;
            let x_3295 : f32 = u_xlat36;
            let x_3298 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3294 * x_3295) + x_3298);
            let x_3302 : vec4<f32> = u_xlat14;
            let x_3303 : vec2<f32> = vec2<f32>(x_3302.z, x_3302.w);
            let x_3305 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3303.x, x_3303.y, x_3305);
            let x_3312 : vec3<f32> = txVec40;
            let x_3314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3312.xy, x_3312.z);
            u_xlat36 = x_3314;
            let x_3316 : f32 = u_xlat19.z;
            let x_3317 : f32 = u_xlat36;
            let x_3320 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3316 * x_3317) + x_3320);
            let x_3324 : vec4<f32> = u_xlat13;
            let x_3325 : vec2<f32> = vec2<f32>(x_3324.x, x_3324.y);
            let x_3327 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3325.x, x_3325.y, x_3327);
            let x_3334 : vec3<f32> = txVec41;
            let x_3336 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3334.xy, x_3334.z);
            u_xlat36 = x_3336;
            let x_3338 : f32 = u_xlat19.w;
            let x_3339 : f32 = u_xlat36;
            let x_3342 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3338 * x_3339) + x_3342);
            let x_3346 : vec4<f32> = u_xlat13;
            let x_3347 : vec2<f32> = vec2<f32>(x_3346.z, x_3346.w);
            let x_3349 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec42;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat36 = x_3358;
            let x_3359 : f32 = u_xlat85;
            let x_3360 : f32 = u_xlat36;
            let x_3363 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3359 * x_3360) + x_3363);
          } else {
            let x_3366 : vec4<f32> = u_xlat10;
            let x_3369 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3372 : vec2<f32> = ((vec2<f32>(x_3366.x, x_3366.y) * vec2<f32>(x_3369.z, x_3369.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3373 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3372.x, x_3372.y, x_3373.z, x_3373.w);
            let x_3375 : vec4<f32> = u_xlat11;
            let x_3377 : vec2<f32> = floor(vec2<f32>(x_3375.x, x_3375.y));
            let x_3378 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3377.x, x_3377.y, x_3378.z, x_3378.w);
            let x_3380 : vec4<f32> = u_xlat10;
            let x_3383 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3386 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3380.x, x_3380.y) * vec2<f32>(x_3383.z, x_3383.w)) + -(vec2<f32>(x_3386.x, x_3386.y)));
            let x_3390 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3390.x, x_3390.x, x_3390.y, x_3390.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3393 : vec4<f32> = u_xlat12;
            let x_3395 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3393.x, x_3393.x, x_3393.z, x_3393.z) * vec4<f32>(x_3395.x, x_3395.x, x_3395.z, x_3395.z));
            let x_3398 : vec4<f32> = u_xlat13;
            let x_3400 : vec2<f32> = (vec2<f32>(x_3398.y, x_3398.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3401 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3401.x, x_3400.x, x_3401.z, x_3400.y);
            let x_3403 : vec4<f32> = u_xlat13;
            let x_3406 : vec2<f32> = u_xlat61;
            let x_3408 : vec2<f32> = ((vec2<f32>(x_3403.x, x_3403.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3406));
            let x_3409 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3408.x, x_3409.y, x_3408.y, x_3409.w);
            let x_3411 : vec2<f32> = u_xlat61;
            let x_3413 : vec2<f32> = (-(x_3411) + vec2<f32>(1.0f, 1.0f));
            let x_3414 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3413.x, x_3413.y, x_3414.z, x_3414.w);
            let x_3416 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3416, vec2<f32>(0.0f, 0.0f));
            let x_3418 : vec2<f32> = u_xlat63;
            let x_3420 : vec2<f32> = u_xlat63;
            let x_3422 : vec4<f32> = u_xlat13;
            let x_3424 : vec2<f32> = ((-(x_3418) * x_3420) + vec2<f32>(x_3422.x, x_3422.y));
            let x_3425 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3424.x, x_3424.y, x_3425.z, x_3425.w);
            let x_3427 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3427, vec2<f32>(0.0f, 0.0f));
            let x_3430 : vec2<f32> = u_xlat63;
            let x_3432 : vec2<f32> = u_xlat63;
            let x_3434 : vec4<f32> = u_xlat12;
            let x_3436 : vec2<f32> = ((-(x_3430) * x_3432) + vec2<f32>(x_3434.y, x_3434.w));
            let x_3437 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3436.x, x_3437.y, x_3436.y);
            let x_3439 : vec4<f32> = u_xlat13;
            let x_3441 : vec2<f32> = (vec2<f32>(x_3439.x, x_3439.y) + vec2<f32>(2.0f, 2.0f));
            let x_3442 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3441.x, x_3441.y, x_3442.z, x_3442.w);
            let x_3444 : vec3<f32> = u_xlat37;
            let x_3446 : vec2<f32> = (vec2<f32>(x_3444.x, x_3444.z) + vec2<f32>(2.0f, 2.0f));
            let x_3447 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3447.x, x_3446.x, x_3447.z, x_3446.y);
            let x_3450 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3450 * 0.08163200318813323975f);
            let x_3453 : vec4<f32> = u_xlat12;
            let x_3455 : vec3<f32> = (vec3<f32>(x_3453.z, x_3453.x, x_3453.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3456 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3455.x, x_3455.y, x_3455.z, x_3456.w);
            let x_3458 : vec4<f32> = u_xlat13;
            let x_3460 : vec2<f32> = (vec2<f32>(x_3458.x, x_3458.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3461 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3460.x, x_3460.y, x_3461.z, x_3461.w);
            let x_3464 : f32 = u_xlat16.y;
            u_xlat15.x = x_3464;
            let x_3466 : vec2<f32> = u_xlat61;
            let x_3469 : vec2<f32> = ((vec2<f32>(x_3466.x, x_3466.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3470 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3470.x, x_3469.x, x_3470.z, x_3469.y);
            let x_3472 : vec2<f32> = u_xlat61;
            let x_3475 : vec2<f32> = ((vec2<f32>(x_3472.x, x_3472.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3476 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3475.x, x_3476.y, x_3475.y, x_3476.w);
            let x_3479 : f32 = u_xlat12.x;
            u_xlat13.y = x_3479;
            let x_3482 : f32 = u_xlat14.y;
            u_xlat13.w = x_3482;
            let x_3484 : vec4<f32> = u_xlat13;
            let x_3485 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3484 + x_3485);
            let x_3487 : vec2<f32> = u_xlat61;
            let x_3490 : vec2<f32> = ((vec2<f32>(x_3487.y, x_3487.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3491 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3491.x, x_3490.x, x_3491.z, x_3490.y);
            let x_3493 : vec2<f32> = u_xlat61;
            let x_3496 : vec2<f32> = ((vec2<f32>(x_3493.y, x_3493.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3497 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3496.x, x_3497.y, x_3496.y, x_3497.w);
            let x_3500 : f32 = u_xlat12.y;
            u_xlat14.y = x_3500;
            let x_3502 : vec4<f32> = u_xlat14;
            let x_3503 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3502 + x_3503);
            let x_3505 : vec4<f32> = u_xlat13;
            let x_3506 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3505 / x_3506);
            let x_3508 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3508 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3510 : vec4<f32> = u_xlat14;
            let x_3511 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3510 / x_3511);
            let x_3513 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3513 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3515 : vec4<f32> = u_xlat13;
            let x_3518 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3515.w, x_3515.x, x_3515.y, x_3515.z) * vec4<f32>(x_3518.x, x_3518.x, x_3518.x, x_3518.x));
            let x_3521 : vec4<f32> = u_xlat14;
            let x_3524 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3521.x, x_3521.w, x_3521.y, x_3521.z) * vec4<f32>(x_3524.y, x_3524.y, x_3524.y, x_3524.y));
            let x_3527 : vec4<f32> = u_xlat13;
            let x_3528 : vec3<f32> = vec3<f32>(x_3527.y, x_3527.z, x_3527.w);
            let x_3529 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3528.x, x_3529.y, x_3528.y, x_3528.z);
            let x_3532 : f32 = u_xlat14.x;
            u_xlat16.y = x_3532;
            let x_3534 : vec4<f32> = u_xlat11;
            let x_3537 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3540 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3534.x, x_3534.y, x_3534.x, x_3534.y) * vec4<f32>(x_3537.x, x_3537.y, x_3537.x, x_3537.y)) + vec4<f32>(x_3540.x, x_3540.y, x_3540.z, x_3540.y));
            let x_3543 : vec4<f32> = u_xlat11;
            let x_3546 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3549 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3543.x, x_3543.y) * vec2<f32>(x_3546.x, x_3546.y)) + vec2<f32>(x_3549.w, x_3549.y));
            let x_3553 : f32 = u_xlat16.y;
            u_xlat13.y = x_3553;
            let x_3556 : f32 = u_xlat14.z;
            u_xlat16.y = x_3556;
            let x_3558 : vec4<f32> = u_xlat11;
            let x_3561 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3564 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3558.x, x_3558.y, x_3558.x, x_3558.y) * vec4<f32>(x_3561.x, x_3561.y, x_3561.x, x_3561.y)) + vec4<f32>(x_3564.x, x_3564.y, x_3564.z, x_3564.y));
            let x_3567 : vec4<f32> = u_xlat11;
            let x_3570 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3573 : vec4<f32> = u_xlat16;
            let x_3575 : vec2<f32> = ((vec2<f32>(x_3567.x, x_3567.y) * vec2<f32>(x_3570.x, x_3570.y)) + vec2<f32>(x_3573.w, x_3573.y));
            let x_3576 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3575.x, x_3575.y, x_3576.z, x_3576.w);
            let x_3579 : f32 = u_xlat16.y;
            u_xlat13.z = x_3579;
            let x_3581 : vec4<f32> = u_xlat11;
            let x_3584 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3587 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3581.x, x_3581.y, x_3581.x, x_3581.y) * vec4<f32>(x_3584.x, x_3584.y, x_3584.x, x_3584.y)) + vec4<f32>(x_3587.x, x_3587.y, x_3587.x, x_3587.z));
            let x_3591 : f32 = u_xlat14.w;
            u_xlat16.y = x_3591;
            let x_3594 : vec4<f32> = u_xlat11;
            let x_3597 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3600 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3594.x, x_3594.y, x_3594.x, x_3594.y) * vec4<f32>(x_3597.x, x_3597.y, x_3597.x, x_3597.y)) + vec4<f32>(x_3600.x, x_3600.y, x_3600.z, x_3600.y));
            let x_3604 : vec4<f32> = u_xlat11;
            let x_3607 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3610 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3604.x, x_3604.y) * vec2<f32>(x_3607.x, x_3607.y)) + vec2<f32>(x_3610.w, x_3610.y));
            let x_3614 : f32 = u_xlat16.y;
            u_xlat13.w = x_3614;
            let x_3617 : vec4<f32> = u_xlat11;
            let x_3620 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3623 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3617.x, x_3617.y) * vec2<f32>(x_3620.x, x_3620.y)) + vec2<f32>(x_3623.x, x_3623.w));
            let x_3626 : vec4<f32> = u_xlat16;
            let x_3627 : vec3<f32> = vec3<f32>(x_3626.x, x_3626.z, x_3626.w);
            let x_3628 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3627.x, x_3628.y, x_3627.y, x_3627.z);
            let x_3630 : vec4<f32> = u_xlat11;
            let x_3633 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3636 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3630.x, x_3630.y, x_3630.x, x_3630.y) * vec4<f32>(x_3633.x, x_3633.y, x_3633.x, x_3633.y)) + vec4<f32>(x_3636.x, x_3636.y, x_3636.z, x_3636.y));
            let x_3640 : vec4<f32> = u_xlat11;
            let x_3643 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3646 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3640.x, x_3640.y) * vec2<f32>(x_3643.x, x_3643.y)) + vec2<f32>(x_3646.w, x_3646.y));
            let x_3650 : f32 = u_xlat13.x;
            u_xlat14.x = x_3650;
            let x_3652 : vec4<f32> = u_xlat11;
            let x_3655 : vec4<f32> = x_580.x_AdditionalShadowmapSize;
            let x_3658 : vec4<f32> = u_xlat14;
            let x_3660 : vec2<f32> = ((vec2<f32>(x_3652.x, x_3652.y) * vec2<f32>(x_3655.x, x_3655.y)) + vec2<f32>(x_3658.x, x_3658.y));
            let x_3661 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3660.x, x_3660.y, x_3661.z, x_3661.w);
            let x_3664 : vec4<f32> = u_xlat12;
            let x_3666 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3664.x, x_3664.x, x_3664.x, x_3664.x) * x_3666);
            let x_3669 : vec4<f32> = u_xlat12;
            let x_3671 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3669.y, x_3669.y, x_3669.y, x_3669.y) * x_3671);
            let x_3674 : vec4<f32> = u_xlat12;
            let x_3676 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3674.z, x_3674.z, x_3674.z, x_3674.z) * x_3676);
            let x_3678 : vec4<f32> = u_xlat12;
            let x_3680 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3678.w, x_3678.w, x_3678.w, x_3678.w) * x_3680);
            let x_3683 : vec4<f32> = u_xlat17;
            let x_3684 : vec2<f32> = vec2<f32>(x_3683.x, x_3683.y);
            let x_3686 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3684.x, x_3684.y, x_3686);
            let x_3693 : vec3<f32> = txVec43;
            let x_3695 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3693.xy, x_3693.z);
            u_xlat85 = x_3695;
            let x_3697 : vec4<f32> = u_xlat17;
            let x_3698 : vec2<f32> = vec2<f32>(x_3697.z, x_3697.w);
            let x_3700 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3698.x, x_3698.y, x_3700);
            let x_3707 : vec3<f32> = txVec44;
            let x_3709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3707.xy, x_3707.z);
            u_xlat13.x = x_3709;
            let x_3712 : f32 = u_xlat13.x;
            let x_3714 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3712 * x_3714);
            let x_3718 : f32 = u_xlat22.x;
            let x_3719 : f32 = u_xlat85;
            let x_3722 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3718 * x_3719) + x_3722);
            let x_3725 : vec2<f32> = u_xlat61;
            let x_3727 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec45;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat61.x = x_3736;
            let x_3739 : f32 = u_xlat22.z;
            let x_3741 : f32 = u_xlat61.x;
            let x_3743 : f32 = u_xlat85;
            u_xlat85 = ((x_3739 * x_3741) + x_3743);
            let x_3746 : vec4<f32> = u_xlat20;
            let x_3747 : vec2<f32> = vec2<f32>(x_3746.x, x_3746.y);
            let x_3749 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3747.x, x_3747.y, x_3749);
            let x_3756 : vec3<f32> = txVec46;
            let x_3758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3756.xy, x_3756.z);
            u_xlat61.x = x_3758;
            let x_3761 : f32 = u_xlat22.w;
            let x_3763 : f32 = u_xlat61.x;
            let x_3765 : f32 = u_xlat85;
            u_xlat85 = ((x_3761 * x_3763) + x_3765);
            let x_3768 : vec4<f32> = u_xlat18;
            let x_3769 : vec2<f32> = vec2<f32>(x_3768.x, x_3768.y);
            let x_3771 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3769.x, x_3769.y, x_3771);
            let x_3778 : vec3<f32> = txVec47;
            let x_3780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3778.xy, x_3778.z);
            u_xlat61.x = x_3780;
            let x_3783 : f32 = u_xlat23.x;
            let x_3785 : f32 = u_xlat61.x;
            let x_3787 : f32 = u_xlat85;
            u_xlat85 = ((x_3783 * x_3785) + x_3787);
            let x_3790 : vec4<f32> = u_xlat18;
            let x_3791 : vec2<f32> = vec2<f32>(x_3790.z, x_3790.w);
            let x_3793 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3791.x, x_3791.y, x_3793);
            let x_3800 : vec3<f32> = txVec48;
            let x_3802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3800.xy, x_3800.z);
            u_xlat61.x = x_3802;
            let x_3805 : f32 = u_xlat23.y;
            let x_3807 : f32 = u_xlat61.x;
            let x_3809 : f32 = u_xlat85;
            u_xlat85 = ((x_3805 * x_3807) + x_3809);
            let x_3812 : vec4<f32> = u_xlat19;
            let x_3813 : vec2<f32> = vec2<f32>(x_3812.x, x_3812.y);
            let x_3815 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3813.x, x_3813.y, x_3815);
            let x_3822 : vec3<f32> = txVec49;
            let x_3824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3822.xy, x_3822.z);
            u_xlat61.x = x_3824;
            let x_3827 : f32 = u_xlat23.z;
            let x_3829 : f32 = u_xlat61.x;
            let x_3831 : f32 = u_xlat85;
            u_xlat85 = ((x_3827 * x_3829) + x_3831);
            let x_3834 : vec4<f32> = u_xlat20;
            let x_3835 : vec2<f32> = vec2<f32>(x_3834.z, x_3834.w);
            let x_3837 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3835.x, x_3835.y, x_3837);
            let x_3844 : vec3<f32> = txVec50;
            let x_3846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3844.xy, x_3844.z);
            u_xlat61.x = x_3846;
            let x_3849 : f32 = u_xlat23.w;
            let x_3851 : f32 = u_xlat61.x;
            let x_3853 : f32 = u_xlat85;
            u_xlat85 = ((x_3849 * x_3851) + x_3853);
            let x_3856 : vec4<f32> = u_xlat21;
            let x_3857 : vec2<f32> = vec2<f32>(x_3856.x, x_3856.y);
            let x_3859 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3857.x, x_3857.y, x_3859);
            let x_3866 : vec3<f32> = txVec51;
            let x_3868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3866.xy, x_3866.z);
            u_xlat61.x = x_3868;
            let x_3871 : f32 = u_xlat24.x;
            let x_3873 : f32 = u_xlat61.x;
            let x_3875 : f32 = u_xlat85;
            u_xlat85 = ((x_3871 * x_3873) + x_3875);
            let x_3878 : vec4<f32> = u_xlat21;
            let x_3879 : vec2<f32> = vec2<f32>(x_3878.z, x_3878.w);
            let x_3881 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3879.x, x_3879.y, x_3881);
            let x_3888 : vec3<f32> = txVec52;
            let x_3890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3888.xy, x_3888.z);
            u_xlat61.x = x_3890;
            let x_3893 : f32 = u_xlat24.y;
            let x_3895 : f32 = u_xlat61.x;
            let x_3897 : f32 = u_xlat85;
            u_xlat85 = ((x_3893 * x_3895) + x_3897);
            let x_3900 : vec2<f32> = u_xlat38;
            let x_3902 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3900.x, x_3900.y, x_3902);
            let x_3909 : vec3<f32> = txVec53;
            let x_3911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3909.xy, x_3909.z);
            u_xlat61.x = x_3911;
            let x_3914 : f32 = u_xlat24.z;
            let x_3916 : f32 = u_xlat61.x;
            let x_3918 : f32 = u_xlat85;
            u_xlat85 = ((x_3914 * x_3916) + x_3918);
            let x_3921 : vec2<f32> = u_xlat69;
            let x_3923 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3921.x, x_3921.y, x_3923);
            let x_3930 : vec3<f32> = txVec54;
            let x_3932 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3930.xy, x_3930.z);
            u_xlat61.x = x_3932;
            let x_3935 : f32 = u_xlat24.w;
            let x_3937 : f32 = u_xlat61.x;
            let x_3939 : f32 = u_xlat85;
            u_xlat85 = ((x_3935 * x_3937) + x_3939);
            let x_3942 : vec4<f32> = u_xlat16;
            let x_3943 : vec2<f32> = vec2<f32>(x_3942.x, x_3942.y);
            let x_3945 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3943.x, x_3943.y, x_3945);
            let x_3952 : vec3<f32> = txVec55;
            let x_3954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3952.xy, x_3952.z);
            u_xlat61.x = x_3954;
            let x_3957 : f32 = u_xlat12.x;
            let x_3959 : f32 = u_xlat61.x;
            let x_3961 : f32 = u_xlat85;
            u_xlat85 = ((x_3957 * x_3959) + x_3961);
            let x_3964 : vec4<f32> = u_xlat16;
            let x_3965 : vec2<f32> = vec2<f32>(x_3964.z, x_3964.w);
            let x_3967 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3965.x, x_3965.y, x_3967);
            let x_3974 : vec3<f32> = txVec56;
            let x_3976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3974.xy, x_3974.z);
            u_xlat61.x = x_3976;
            let x_3979 : f32 = u_xlat12.y;
            let x_3981 : f32 = u_xlat61.x;
            let x_3983 : f32 = u_xlat85;
            u_xlat85 = ((x_3979 * x_3981) + x_3983);
            let x_3986 : vec2<f32> = u_xlat64;
            let x_3988 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3986.x, x_3986.y, x_3988);
            let x_3995 : vec3<f32> = txVec57;
            let x_3997 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3995.xy, x_3995.z);
            u_xlat61.x = x_3997;
            let x_4000 : f32 = u_xlat12.z;
            let x_4002 : f32 = u_xlat61.x;
            let x_4004 : f32 = u_xlat85;
            u_xlat85 = ((x_4000 * x_4002) + x_4004);
            let x_4007 : vec4<f32> = u_xlat11;
            let x_4008 : vec2<f32> = vec2<f32>(x_4007.x, x_4007.y);
            let x_4010 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4008.x, x_4008.y, x_4010);
            let x_4017 : vec3<f32> = txVec58;
            let x_4019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4017.xy, x_4017.z);
            u_xlat11.x = x_4019;
            let x_4022 : f32 = u_xlat12.w;
            let x_4024 : f32 = u_xlat11.x;
            let x_4026 : f32 = u_xlat85;
            u_xlat84 = ((x_4022 * x_4024) + x_4026);
          }
        }
      } else {
        let x_4030 : vec4<f32> = u_xlat10;
        let x_4031 : vec2<f32> = vec2<f32>(x_4030.x, x_4030.y);
        let x_4033 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4031.x, x_4031.y, x_4033);
        let x_4040 : vec3<f32> = txVec59;
        let x_4042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4040.xy, x_4040.z);
        u_xlat84 = x_4042;
      }
      let x_4043 : i32 = u_xlati80;
      let x_4045 : f32 = x_580.x_AdditionalShadowParams[x_4043].x;
      u_xlat10.x = (1.0f + -(x_4045));
      let x_4049 : f32 = u_xlat84;
      let x_4050 : i32 = u_xlati80;
      let x_4052 : f32 = x_580.x_AdditionalShadowParams[x_4050].x;
      let x_4055 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4049 * x_4052) + x_4055);
      let x_4058 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4058);
      let x_4063 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4063 >= 1.0f);
      let x_4065 : bool = u_xlatb35;
      let x_4067 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4065 | x_4067);
      let x_4071 : bool = u_xlatb10.x;
      let x_4072 : f32 = u_xlat84;
      u_xlat84 = select(x_4072, 1.0f, x_4071);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4075 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4075) + 1.0f);
    let x_4079 : f32 = u_xlat50;
    let x_4081 : f32 = u_xlat10.x;
    let x_4083 : f32 = u_xlat84;
    u_xlat84 = ((x_4079 * x_4081) + x_4083);
    let x_4085 : f32 = u_xlat81;
    let x_4086 : f32 = u_xlat84;
    u_xlat81 = (x_4085 * x_4086);
    let x_4088 : vec4<f32> = u_xlat2;
    let x_4090 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4088.x, x_4088.y, x_4088.z), vec3<f32>(x_4090.x, x_4090.y, x_4090.z));
    let x_4093 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4093, 0.0f, 1.0f);
    let x_4095 : f32 = u_xlat81;
    let x_4096 : f32 = u_xlat84;
    u_xlat81 = (x_4095 * x_4096);
    let x_4098 : f32 = u_xlat81;
    let x_4100 : i32 = u_xlati80;
    let x_4102 : vec4<f32> = x_2605.x_AdditionalLightsColor[x_4100];
    let x_4104 : vec3<f32> = (vec3<f32>(x_4098, x_4098, x_4098) * vec3<f32>(x_4102.x, x_4102.y, x_4102.z));
    let x_4105 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4104.x, x_4104.y, x_4104.z, x_4105.w);
    let x_4107 : vec3<f32> = u_xlat33;
    let x_4108 : f32 = u_xlat82;
    let x_4111 : vec4<f32> = u_xlat1;
    u_xlat33 = ((x_4107 * vec3<f32>(x_4108, x_4108, x_4108)) + vec3<f32>(x_4111.x, x_4111.y, x_4111.z));
    let x_4114 : vec3<f32> = u_xlat33;
    let x_4115 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_4114, x_4115);
    let x_4117 : f32 = u_xlat80;
    u_xlat80 = max(x_4117, 1.17549435e-38f);
    let x_4119 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4119);
    let x_4121 : f32 = u_xlat80;
    let x_4123 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4121, x_4121, x_4121) * x_4123);
    let x_4125 : vec4<f32> = u_xlat2;
    let x_4127 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4125.x, x_4125.y, x_4125.z), x_4127);
    let x_4129 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4129, 0.0f, 1.0f);
    let x_4131 : vec4<f32> = u_xlat9;
    let x_4133 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(vec3<f32>(x_4131.x, x_4131.y, x_4131.z), x_4133);
    let x_4135 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4135, 0.0f, 1.0f);
    let x_4137 : f32 = u_xlat80;
    let x_4138 : f32 = u_xlat80;
    u_xlat80 = (x_4137 * x_4138);
    let x_4140 : f32 = u_xlat80;
    let x_4142 : f32 = u_xlat8.x;
    u_xlat80 = ((x_4140 * x_4142) + 1.00001001358032226562f);
    let x_4145 : f32 = u_xlat81;
    let x_4146 : f32 = u_xlat81;
    u_xlat81 = (x_4145 * x_4146);
    let x_4148 : f32 = u_xlat80;
    let x_4149 : f32 = u_xlat80;
    u_xlat80 = (x_4148 * x_4149);
    let x_4151 : f32 = u_xlat81;
    u_xlat81 = max(x_4151, 0.10000000149011611938f);
    let x_4153 : f32 = u_xlat80;
    let x_4154 : f32 = u_xlat81;
    u_xlat80 = (x_4153 * x_4154);
    let x_4156 : f32 = u_xlat78;
    let x_4157 : f32 = u_xlat80;
    u_xlat80 = (x_4156 * x_4157);
    let x_4159 : f32 = u_xlat79;
    let x_4160 : f32 = u_xlat80;
    u_xlat80 = (x_4159 / x_4160);
    let x_4162 : vec4<f32> = u_xlat5;
    let x_4164 : f32 = u_xlat80;
    let x_4167 : vec4<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_4162.x, x_4162.y, x_4162.z) * vec3<f32>(x_4164, x_4164, x_4164)) + vec3<f32>(x_4167.x, x_4167.y, x_4167.z));
    let x_4170 : vec3<f32> = u_xlat33;
    let x_4171 : vec4<f32> = u_xlat10;
    let x_4174 : vec4<f32> = u_xlat3;
    let x_4176 : vec3<f32> = ((x_4170 * vec3<f32>(x_4171.x, x_4171.y, x_4171.z)) + vec3<f32>(x_4174.x, x_4174.y, x_4174.z));
    let x_4177 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_4176.x, x_4176.y, x_4176.z, x_4177.w);

    continuing {
      let x_4179 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4179 + bitcast<u32>(1i));
    }
  }
  let x_4181 : vec4<f32> = u_xlat4;
  let x_4183 : f32 = u_xlat25;
  let x_4186 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4181.x, x_4181.y, x_4181.z) * vec3<f32>(x_4183, x_4183, x_4183)) + vec3<f32>(x_4186.x, x_4186.y, x_4186.z));
  let x_4189 : vec4<f32> = u_xlat3;
  let x_4191 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4189.x, x_4189.y, x_4189.z) + x_4191);
  let x_4193 : f32 = u_xlat76;
  let x_4194 : f32 = u_xlat76;
  u_xlat1.x = (x_4193 * -(x_4194));
  let x_4199 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4199);
  let x_4202 : vec3<f32> = u_xlat0;
  let x_4203 : f32 = u_xlat75;
  let x_4207 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4202 * vec3<f32>(x_4203, x_4203, x_4203)) + -(vec3<f32>(x_4207.x, x_4207.y, x_4207.z)));
  let x_4213 : vec4<f32> = u_xlat1;
  let x_4215 : vec3<f32> = u_xlat0;
  let x_4218 : vec4<f32> = x_113.unity_FogColor;
  let x_4220 : vec3<f32> = ((vec3<f32>(x_4213.x, x_4213.x, x_4213.x) * x_4215) + vec3<f32>(x_4218.x, x_4218.y, x_4218.z));
  let x_4221 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4220.x, x_4220.y, x_4220.z, x_4221.w);
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


