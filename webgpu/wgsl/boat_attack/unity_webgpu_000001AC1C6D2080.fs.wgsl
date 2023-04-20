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

var<private> u_xlatb77 : bool;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_592 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(1) @binding(2) var<uniform> x_814 : UnityPerDraw;

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

@group(1) @binding(1) var<uniform> x_2617 : AdditionalLights;

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
  var x_2223 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2750 : f32;
  var x_2762 : f32;
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
  let x_584 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres0;
  let x_597 : vec3<f32> = (x_584 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres1;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_611 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres2;
  let x_614 : vec3<f32> = (x_608 + -(vec3<f32>(x_611.x, x_611.y, x_611.z)));
  let x_615 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec3<f32> = vs_TEXCOORD7;
  let x_619 : vec4<f32> = x_592.x_CascadeShadowSplitSpheres3;
  let x_622 : vec3<f32> = (x_617 + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_623 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat3;
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_637 : vec4<f32> = u_xlat6;
  let x_639 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_643 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = x_592.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_651 < x_653);
  let x_656 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_656);
  let x_660 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_664);
  let x_668 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_668);
  let x_672 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_672);
  let x_677 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_677);
  let x_681 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_681);
  let x_684 : vec4<f32> = u_xlat3;
  let x_686 : vec4<f32> = u_xlat4;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + vec3<f32>(x_686.y, x_686.z, x_686.w));
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat3;
  let x_694 : vec3<f32> = max(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_695.x, x_694.x, x_694.y, x_694.z);
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_697, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_702 : f32 = u_xlat76;
  u_xlat76 = (-(x_702) + 4.0f);
  let x_707 : f32 = u_xlat76;
  u_xlatu76 = u32(x_707);
  let x_711 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_711) << bitcast<u32>(2i));
  let x_714 : vec3<f32> = vs_TEXCOORD7;
  let x_716 : i32 = u_xlati76;
  let x_719 : i32 = u_xlati76;
  let x_723 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_716 + 1i) / 4i)][((x_719 + 1i) % 4i)];
  let x_725 : vec3<f32> = (vec3<f32>(x_714.y, x_714.y, x_714.y) * vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : i32 = u_xlati76;
  let x_730 : i32 = u_xlati76;
  let x_733 : vec4<f32> = x_592.x_MainLightWorldToShadow[(x_728 / 4i)][(x_730 % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.x, x_735.x, x_735.x)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : i32 = u_xlati76;
  let x_746 : i32 = u_xlati76;
  let x_750 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_743 + 2i) / 4i)][((x_746 + 2i) % 4i)];
  let x_752 : vec3<f32> = vs_TEXCOORD7;
  let x_755 : vec4<f32> = u_xlat3;
  let x_757 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752.z, x_752.z, x_752.z)) + vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : i32 = u_xlati76;
  let x_765 : i32 = u_xlati76;
  let x_769 : vec4<f32> = x_592.x_MainLightWorldToShadow[((x_762 + 3i) / 4i)][((x_765 + 3i) % 4i)];
  let x_771 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_776 : f32 = vs_TEXCOORD7.y;
  let x_778 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat76 = (x_776 * x_778);
  let x_781 : f32 = x_113.unity_MatrixV[0i].z;
  let x_783 : f32 = vs_TEXCOORD7.x;
  let x_785 : f32 = u_xlat76;
  u_xlat76 = ((x_781 * x_783) + x_785);
  let x_788 : f32 = x_113.unity_MatrixV[2i].z;
  let x_790 : f32 = vs_TEXCOORD7.z;
  let x_792 : f32 = u_xlat76;
  u_xlat76 = ((x_788 * x_790) + x_792);
  let x_794 : f32 = u_xlat76;
  let x_796 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat76 = (x_794 + x_796);
  let x_798 : f32 = u_xlat76;
  let x_801 : f32 = x_113.x_ProjectionParams.y;
  u_xlat76 = (-(x_798) + -(x_801));
  let x_804 : f32 = u_xlat76;
  u_xlat76 = max(x_804, 0.0f);
  let x_806 : f32 = u_xlat76;
  let x_808 : f32 = x_113.unity_FogParams.x;
  u_xlat76 = (x_806 * x_808);
  u_xlat2.w = 1.0f;
  let x_816 : vec4<f32> = x_814.unity_SHAr;
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_816, x_817);
  let x_821 : vec4<f32> = x_814.unity_SHAg;
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_821, x_822);
  let x_826 : vec4<f32> = x_814.unity_SHAb;
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_826, x_827);
  let x_830 : vec4<f32> = u_xlat2;
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_830.y, x_830.z, x_830.z, x_830.x) * vec4<f32>(x_832.x, x_832.y, x_832.z, x_832.z));
  let x_836 : vec4<f32> = x_814.unity_SHBr;
  let x_837 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_836, x_837);
  let x_841 : vec4<f32> = x_814.unity_SHBg;
  let x_842 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_841, x_842);
  let x_846 : vec4<f32> = x_814.unity_SHBb;
  let x_847 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_846, x_847);
  let x_852 : f32 = u_xlat2.y;
  let x_854 : f32 = u_xlat2.y;
  u_xlat77 = (x_852 * x_854);
  let x_857 : f32 = u_xlat2.x;
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat77;
  u_xlat77 = ((x_857 * x_859) + -(x_861));
  let x_866 : vec4<f32> = x_814.unity_SHC;
  let x_868 : f32 = u_xlat77;
  let x_871 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat4;
  let x_878 : vec4<f32> = u_xlat6;
  let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec3<f32> = max(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_889) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat77;
  u_xlat78 = (-(x_895) + 1.0f);
  let x_898 : f32 = u_xlat77;
  let x_900 : vec4<f32> = u_xlat5;
  let x_902 : vec3<f32> = (vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat5;
  let x_909 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec3<f32> = u_xlat0;
  let x_914 : vec4<f32> = u_xlat5;
  let x_919 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_920 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat50;
  u_xlat0.x = (-(x_922) + 1.0f);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat0.x;
  u_xlat77 = (x_927 * x_929);
  let x_931 : f32 = u_xlat77;
  u_xlat77 = max(x_931, 0.0078125f);
  let x_935 : f32 = u_xlat77;
  let x_936 : f32 = u_xlat77;
  u_xlat79 = (x_935 * x_936);
  let x_938 : f32 = u_xlat50;
  let x_939 : f32 = u_xlat78;
  u_xlat50 = (x_938 + x_939);
  let x_941 : f32 = u_xlat50;
  u_xlat50 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat77;
  u_xlat78 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat25;
  u_xlat25 = min(x_946, 1.0f);
  let x_950 : f32 = x_592.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_950);
  let x_952 : bool = u_xlatb80;
  if (x_952) {
    let x_956 : f32 = x_592.x_MainLightShadowParams.y;
    u_xlatb80 = (x_956 == 1.0f);
    let x_958 : bool = u_xlatb80;
    if (x_958) {
      let x_961 : vec4<f32> = u_xlat3;
      let x_964 : vec4<f32> = x_592.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_961.x, x_961.y, x_961.x, x_961.y) + x_964);
      let x_967 : vec4<f32> = u_xlat7;
      let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
      let x_970 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_968.x, x_968.y, x_970);
      let x_982 : vec3<f32> = txVec0;
      let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
      u_xlat8.x = x_984;
      let x_987 : vec4<f32> = u_xlat7;
      let x_988 : vec2<f32> = vec2<f32>(x_987.z, x_987.w);
      let x_990 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_988.x, x_988.y, x_990);
      let x_997 : vec3<f32> = txVec1;
      let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
      u_xlat8.y = x_999;
      let x_1001 : vec4<f32> = u_xlat3;
      let x_1004 : vec4<f32> = x_592.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) + x_1004);
      let x_1007 : vec4<f32> = u_xlat7;
      let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
      let x_1010 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
      let x_1017 : vec3<f32> = txVec2;
      let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
      u_xlat8.z = x_1019;
      let x_1022 : vec4<f32> = u_xlat7;
      let x_1023 : vec2<f32> = vec2<f32>(x_1022.z, x_1022.w);
      let x_1025 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
      let x_1032 : vec3<f32> = txVec3;
      let x_1034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1032.xy, x_1032.z);
      u_xlat8.w = x_1034;
      let x_1037 : vec4<f32> = u_xlat8;
      u_xlat80 = dot(x_1037, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1044 : f32 = x_592.x_MainLightShadowParams.y;
      u_xlatb81 = (x_1044 == 2.0f);
      let x_1046 : bool = u_xlatb81;
      if (x_1046) {
        let x_1049 : vec4<f32> = u_xlat3;
        let x_1052 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = floor(vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1065 : vec4<f32> = u_xlat3;
        let x_1068 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.z, x_1068.w)) + -(vec2<f32>(x_1071.x, x_1071.y)));
        let x_1075 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1075.x, x_1075.x, x_1075.y, x_1075.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1079 : vec4<f32> = u_xlat8;
        let x_1081 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1079.x, x_1079.x, x_1079.z, x_1079.z) * vec4<f32>(x_1081.x, x_1081.x, x_1081.z, x_1081.z));
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1088 : vec2<f32> = (vec2<f32>(x_1084.y, x_1084.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1094 : vec2<f32> = u_xlat57;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1091.x, x_1091.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1094));
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1100 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1100) + vec2<f32>(1.0f, 1.0f));
        let x_1104 : vec2<f32> = u_xlat57;
        let x_1106 : vec2<f32> = min(x_1104, vec2<f32>(0.0f, 0.0f));
        let x_1107 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat10;
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1115 : vec2<f32> = u_xlat59;
        let x_1116 : vec2<f32> = ((-(vec2<f32>(x_1109.x, x_1109.y)) * vec2<f32>(x_1112.x, x_1112.y)) + x_1115);
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1119, vec2<f32>(0.0f, 0.0f));
        let x_1121 : vec2<f32> = u_xlat57;
        let x_1123 : vec2<f32> = u_xlat57;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1121) * x_1123) + vec2<f32>(x_1125.y, x_1125.w));
        let x_1128 : vec4<f32> = u_xlat10;
        let x_1130 : vec2<f32> = (vec2<f32>(x_1128.x, x_1128.y) + vec2<f32>(1.0f, 1.0f));
        let x_1131 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1133 + vec2<f32>(1.0f, 1.0f));
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1139 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec2<f32> = u_xlat59;
        let x_1143 : vec2<f32> = (x_1142 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1151 : vec2<f32> = u_xlat57;
        let x_1152 : vec2<f32> = (x_1151 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1155.y, x_1155.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1159 : f32 = u_xlat10.x;
        u_xlat11.z = x_1159;
        let x_1162 : f32 = u_xlat57.x;
        u_xlat11.w = x_1162;
        let x_1165 : f32 = u_xlat12.x;
        u_xlat9.z = x_1165;
        let x_1168 : f32 = u_xlat8.x;
        u_xlat9.w = x_1168;
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1172 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1170.z, x_1170.w, x_1170.x, x_1170.z) + vec4<f32>(x_1172.z, x_1172.w, x_1172.x, x_1172.z));
        let x_1176 : f32 = u_xlat11.y;
        u_xlat10.z = x_1176;
        let x_1179 : f32 = u_xlat57.y;
        u_xlat10.w = x_1179;
        let x_1182 : f32 = u_xlat9.y;
        u_xlat12.z = x_1182;
        let x_1185 : f32 = u_xlat8.z;
        u_xlat12.w = x_1185;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1189 : vec4<f32> = u_xlat12;
        let x_1191 : vec3<f32> = (vec3<f32>(x_1187.z, x_1187.y, x_1187.w) + vec3<f32>(x_1189.z, x_1189.y, x_1189.w));
        let x_1192 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat9;
        let x_1196 : vec4<f32> = u_xlat13;
        let x_1198 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.z, x_1194.w) / vec3<f32>(x_1196.z, x_1196.w, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat9;
        let x_1207 : vec3<f32> = (vec3<f32>(x_1201.x, x_1201.y, x_1201.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1208 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat12;
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1214 : vec3<f32> = (vec3<f32>(x_1210.z, x_1210.y, x_1210.w) / vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
        let x_1215 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1219 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat9;
        let x_1225 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1227 : vec3<f32> = (vec3<f32>(x_1222.y, x_1222.x, x_1222.z) * vec3<f32>(x_1225.x, x_1225.x, x_1225.x));
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1233 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1235 : vec3<f32> = (vec3<f32>(x_1230.x, x_1230.y, x_1230.z) * vec3<f32>(x_1233.y, x_1233.y, x_1233.y));
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1239 : f32 = u_xlat10.x;
        u_xlat9.w = x_1239;
        let x_1241 : vec4<f32> = u_xlat7;
        let x_1244 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.y, x_1247.w, x_1247.x, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1253 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.z, x_1256.w));
        let x_1260 : f32 = u_xlat9.y;
        u_xlat10.w = x_1260;
        let x_1262 : vec4<f32> = u_xlat10;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.y, x_1262.z);
        let x_1264 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1264.x, x_1263.x, x_1264.z, x_1263.y);
        let x_1266 : vec4<f32> = u_xlat7;
        let x_1269 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat7;
        let x_1278 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y) * vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y)) + vec4<f32>(x_1281.w, x_1281.y, x_1281.w, x_1281.z));
        let x_1284 : vec4<f32> = u_xlat7;
        let x_1287 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.x, x_1290.w, x_1290.z, x_1290.w));
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1296 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1294.x, x_1294.x, x_1294.x, x_1294.y) * vec4<f32>(x_1296.z, x_1296.w, x_1296.y, x_1296.z));
        let x_1300 : vec4<f32> = u_xlat8;
        let x_1302 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1300.y, x_1300.y, x_1300.z, x_1300.z) * x_1302);
        let x_1306 : f32 = u_xlat8.z;
        let x_1308 : f32 = u_xlat13.y;
        u_xlat81 = (x_1306 * x_1308);
        let x_1311 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.x, x_1311.y);
        let x_1314 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec4;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat7.x = x_1323;
        let x_1326 : vec4<f32> = u_xlat11;
        let x_1327 : vec2<f32> = vec2<f32>(x_1326.z, x_1326.w);
        let x_1329 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1337 : vec3<f32> = txVec5;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat32 = x_1339;
        let x_1340 : f32 = u_xlat32;
        let x_1342 : f32 = u_xlat14.y;
        u_xlat32 = (x_1340 * x_1342);
        let x_1345 : f32 = u_xlat14.x;
        let x_1347 : f32 = u_xlat7.x;
        let x_1349 : f32 = u_xlat32;
        u_xlat7.x = ((x_1345 * x_1347) + x_1349);
        let x_1353 : vec2<f32> = u_xlat57;
        let x_1355 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec6;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1362.xy, x_1362.z);
        u_xlat32 = x_1364;
        let x_1366 : f32 = u_xlat14.z;
        let x_1367 : f32 = u_xlat32;
        let x_1370 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1366 * x_1367) + x_1370);
        let x_1374 : vec4<f32> = u_xlat10;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec7;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat32 = x_1386;
        let x_1388 : f32 = u_xlat14.w;
        let x_1389 : f32 = u_xlat32;
        let x_1392 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1388 * x_1389) + x_1392);
        let x_1396 : vec4<f32> = u_xlat12;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec8;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1406.xy, x_1406.z);
        u_xlat32 = x_1408;
        let x_1410 : f32 = u_xlat15.x;
        let x_1411 : f32 = u_xlat32;
        let x_1414 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1410 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat12;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec9;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat32 = x_1430;
        let x_1432 : f32 = u_xlat15.y;
        let x_1433 : f32 = u_xlat32;
        let x_1436 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1432 * x_1433) + x_1436);
        let x_1440 : vec4<f32> = u_xlat10;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.z, x_1440.w);
        let x_1443 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec10;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat32 = x_1452;
        let x_1454 : f32 = u_xlat15.z;
        let x_1455 : f32 = u_xlat32;
        let x_1458 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec11;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat32 = x_1474;
        let x_1476 : f32 = u_xlat15.w;
        let x_1477 : f32 = u_xlat32;
        let x_1480 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat9;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.z, x_1484.w);
        let x_1487 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec12;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1494.xy, x_1494.z);
        u_xlat32 = x_1496;
        let x_1497 : f32 = u_xlat81;
        let x_1498 : f32 = u_xlat32;
        let x_1501 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1497 * x_1498) + x_1501);
      } else {
        let x_1504 : vec4<f32> = u_xlat3;
        let x_1507 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1510 : vec2<f32> = ((vec2<f32>(x_1504.x, x_1504.y) * vec2<f32>(x_1507.z, x_1507.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1511 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1510.x, x_1510.y, x_1511.z, x_1511.w);
        let x_1513 : vec4<f32> = u_xlat7;
        let x_1515 : vec2<f32> = floor(vec2<f32>(x_1513.x, x_1513.y));
        let x_1516 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
        let x_1518 : vec4<f32> = u_xlat3;
        let x_1521 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1521.z, x_1521.w)) + -(vec2<f32>(x_1524.x, x_1524.y)));
        let x_1528 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1528.x, x_1528.x, x_1528.y, x_1528.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1533 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1531.x, x_1531.x, x_1531.z, x_1531.z) * vec4<f32>(x_1533.x, x_1533.x, x_1533.z, x_1533.z));
        let x_1536 : vec4<f32> = u_xlat9;
        let x_1540 : vec2<f32> = (vec2<f32>(x_1536.y, x_1536.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1541 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1541.x, x_1540.x, x_1541.z, x_1540.y);
        let x_1543 : vec4<f32> = u_xlat9;
        let x_1546 : vec2<f32> = u_xlat57;
        let x_1548 : vec2<f32> = ((vec2<f32>(x_1543.x, x_1543.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1546));
        let x_1549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1548.x, x_1549.y, x_1548.y, x_1549.w);
        let x_1551 : vec2<f32> = u_xlat57;
        let x_1553 : vec2<f32> = (-(x_1551) + vec2<f32>(1.0f, 1.0f));
        let x_1554 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1553.x, x_1553.y, x_1554.z, x_1554.w);
        let x_1556 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1556, vec2<f32>(0.0f, 0.0f));
        let x_1558 : vec2<f32> = u_xlat59;
        let x_1560 : vec2<f32> = u_xlat59;
        let x_1562 : vec4<f32> = u_xlat9;
        let x_1564 : vec2<f32> = ((-(x_1558) * x_1560) + vec2<f32>(x_1562.x, x_1562.y));
        let x_1565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1564.x, x_1564.y, x_1565.z, x_1565.w);
        let x_1567 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1567, vec2<f32>(0.0f, 0.0f));
        let x_1570 : vec2<f32> = u_xlat59;
        let x_1572 : vec2<f32> = u_xlat59;
        let x_1574 : vec4<f32> = u_xlat8;
        let x_1576 : vec2<f32> = ((-(x_1570) * x_1572) + vec2<f32>(x_1574.y, x_1574.w));
        let x_1577 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1576.x, x_1577.y, x_1576.y);
        let x_1579 : vec4<f32> = u_xlat9;
        let x_1582 : vec2<f32> = (vec2<f32>(x_1579.x, x_1579.y) + vec2<f32>(2.0f, 2.0f));
        let x_1583 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1585 : vec3<f32> = u_xlat33;
        let x_1587 : vec2<f32> = (vec2<f32>(x_1585.x, x_1585.z) + vec2<f32>(2.0f, 2.0f));
        let x_1588 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1588.x, x_1587.x, x_1588.z, x_1587.y);
        let x_1591 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1591 * 0.08163200318813323975f);
        let x_1595 : vec4<f32> = u_xlat8;
        let x_1598 : vec3<f32> = (vec3<f32>(x_1595.z, x_1595.x, x_1595.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1599 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1604 : vec2<f32> = (vec2<f32>(x_1601.x, x_1601.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1605 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
        let x_1608 : f32 = u_xlat12.y;
        u_xlat11.x = x_1608;
        let x_1610 : vec2<f32> = u_xlat57;
        let x_1617 : vec2<f32> = ((vec2<f32>(x_1610.x, x_1610.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1618.x, x_1617.x, x_1618.z, x_1617.y);
        let x_1620 : vec2<f32> = u_xlat57;
        let x_1624 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1625 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1624.x, x_1625.y, x_1624.y, x_1625.w);
        let x_1628 : f32 = u_xlat8.x;
        u_xlat9.y = x_1628;
        let x_1631 : f32 = u_xlat10.y;
        u_xlat9.w = x_1631;
        let x_1633 : vec4<f32> = u_xlat9;
        let x_1634 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1633 + x_1634);
        let x_1636 : vec2<f32> = u_xlat57;
        let x_1639 : vec2<f32> = ((vec2<f32>(x_1636.y, x_1636.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1640 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1640.x, x_1639.x, x_1640.z, x_1639.y);
        let x_1642 : vec2<f32> = u_xlat57;
        let x_1645 : vec2<f32> = ((vec2<f32>(x_1642.y, x_1642.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1646 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1645.x, x_1646.y, x_1645.y, x_1646.w);
        let x_1649 : f32 = u_xlat8.y;
        u_xlat10.y = x_1649;
        let x_1651 : vec4<f32> = u_xlat10;
        let x_1652 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1651 + x_1652);
        let x_1654 : vec4<f32> = u_xlat9;
        let x_1655 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1654 / x_1655);
        let x_1657 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1657 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1663 : vec4<f32> = u_xlat10;
        let x_1664 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1663 / x_1664);
        let x_1666 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1666 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1668 : vec4<f32> = u_xlat9;
        let x_1671 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1668.w, x_1668.x, x_1668.y, x_1668.z) * vec4<f32>(x_1671.x, x_1671.x, x_1671.x, x_1671.x));
        let x_1674 : vec4<f32> = u_xlat10;
        let x_1677 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1674.x, x_1674.w, x_1674.y, x_1674.z) * vec4<f32>(x_1677.y, x_1677.y, x_1677.y, x_1677.y));
        let x_1680 : vec4<f32> = u_xlat9;
        let x_1681 : vec3<f32> = vec3<f32>(x_1680.y, x_1680.z, x_1680.w);
        let x_1682 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1681.x, x_1682.y, x_1681.y, x_1681.z);
        let x_1685 : f32 = u_xlat10.x;
        u_xlat12.y = x_1685;
        let x_1687 : vec4<f32> = u_xlat7;
        let x_1690 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1693 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y) * vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y)) + vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1693.y));
        let x_1696 : vec4<f32> = u_xlat7;
        let x_1699 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1702 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1696.x, x_1696.y) * vec2<f32>(x_1699.x, x_1699.y)) + vec2<f32>(x_1702.w, x_1702.y));
        let x_1706 : f32 = u_xlat12.y;
        u_xlat9.y = x_1706;
        let x_1709 : f32 = u_xlat10.z;
        u_xlat12.y = x_1709;
        let x_1711 : vec4<f32> = u_xlat7;
        let x_1714 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1717 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y) * vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y)) + vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1717.y));
        let x_1720 : vec4<f32> = u_xlat7;
        let x_1723 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat12;
        let x_1728 : vec2<f32> = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1723.x, x_1723.y)) + vec2<f32>(x_1726.w, x_1726.y));
        let x_1729 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1732 : f32 = u_xlat12.y;
        u_xlat9.z = x_1732;
        let x_1735 : vec4<f32> = u_xlat7;
        let x_1738 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1741 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.y) * vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.y)) + vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.z));
        let x_1745 : f32 = u_xlat10.w;
        u_xlat12.y = x_1745;
        let x_1748 : vec4<f32> = u_xlat7;
        let x_1751 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1754 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y) * vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y)) + vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1754.y));
        let x_1758 : vec4<f32> = u_xlat7;
        let x_1761 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1764 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(x_1761.x, x_1761.y)) + vec2<f32>(x_1764.w, x_1764.y));
        let x_1768 : f32 = u_xlat12.y;
        u_xlat9.w = x_1768;
        let x_1771 : vec4<f32> = u_xlat7;
        let x_1774 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1771.x, x_1771.y) * vec2<f32>(x_1774.x, x_1774.y)) + vec2<f32>(x_1777.x, x_1777.w));
        let x_1780 : vec4<f32> = u_xlat12;
        let x_1781 : vec3<f32> = vec3<f32>(x_1780.x, x_1780.z, x_1780.w);
        let x_1782 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1781.x, x_1782.y, x_1781.y, x_1781.z);
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1787 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1790 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y) * vec4<f32>(x_1787.x, x_1787.y, x_1787.x, x_1787.y)) + vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1790.y));
        let x_1794 : vec4<f32> = u_xlat7;
        let x_1797 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1794.x, x_1794.y) * vec2<f32>(x_1797.x, x_1797.y)) + vec2<f32>(x_1800.w, x_1800.y));
        let x_1804 : f32 = u_xlat9.x;
        u_xlat10.x = x_1804;
        let x_1806 : vec4<f32> = u_xlat7;
        let x_1809 : vec4<f32> = x_592.x_MainLightShadowmapSize;
        let x_1812 : vec4<f32> = u_xlat10;
        let x_1814 : vec2<f32> = ((vec2<f32>(x_1806.x, x_1806.y) * vec2<f32>(x_1809.x, x_1809.y)) + vec2<f32>(x_1812.x, x_1812.y));
        let x_1815 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
        let x_1818 : vec4<f32> = u_xlat8;
        let x_1820 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1818.x, x_1818.x, x_1818.x, x_1818.x) * x_1820);
        let x_1823 : vec4<f32> = u_xlat8;
        let x_1825 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1823.y, x_1823.y, x_1823.y, x_1823.y) * x_1825);
        let x_1828 : vec4<f32> = u_xlat8;
        let x_1830 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1828.z, x_1828.z, x_1828.z, x_1828.z) * x_1830);
        let x_1832 : vec4<f32> = u_xlat8;
        let x_1834 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1832.w, x_1832.w, x_1832.w, x_1832.w) * x_1834);
        let x_1837 : vec4<f32> = u_xlat13;
        let x_1838 : vec2<f32> = vec2<f32>(x_1837.x, x_1837.y);
        let x_1840 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec13;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1847.xy, x_1847.z);
        u_xlat81 = x_1849;
        let x_1851 : vec4<f32> = u_xlat13;
        let x_1852 : vec2<f32> = vec2<f32>(x_1851.z, x_1851.w);
        let x_1854 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1852.x, x_1852.y, x_1854);
        let x_1861 : vec3<f32> = txVec14;
        let x_1863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1861.xy, x_1861.z);
        u_xlat9.x = x_1863;
        let x_1866 : f32 = u_xlat9.x;
        let x_1868 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1866 * x_1868);
        let x_1872 : f32 = u_xlat18.x;
        let x_1873 : f32 = u_xlat81;
        let x_1876 : f32 = u_xlat9.x;
        u_xlat81 = ((x_1872 * x_1873) + x_1876);
        let x_1879 : vec2<f32> = u_xlat57;
        let x_1881 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec15;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1888.xy, x_1888.z);
        u_xlat57.x = x_1890;
        let x_1893 : f32 = u_xlat18.z;
        let x_1895 : f32 = u_xlat57.x;
        let x_1897 : f32 = u_xlat81;
        u_xlat81 = ((x_1893 * x_1895) + x_1897);
        let x_1900 : vec4<f32> = u_xlat16;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec16;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1910.xy, x_1910.z);
        u_xlat57.x = x_1912;
        let x_1915 : f32 = u_xlat18.w;
        let x_1917 : f32 = u_xlat57.x;
        let x_1919 : f32 = u_xlat81;
        u_xlat81 = ((x_1915 * x_1917) + x_1919);
        let x_1922 : vec4<f32> = u_xlat14;
        let x_1923 : vec2<f32> = vec2<f32>(x_1922.x, x_1922.y);
        let x_1925 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1923.x, x_1923.y, x_1925);
        let x_1932 : vec3<f32> = txVec17;
        let x_1934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1932.xy, x_1932.z);
        u_xlat57.x = x_1934;
        let x_1937 : f32 = u_xlat19.x;
        let x_1939 : f32 = u_xlat57.x;
        let x_1941 : f32 = u_xlat81;
        u_xlat81 = ((x_1937 * x_1939) + x_1941);
        let x_1944 : vec4<f32> = u_xlat14;
        let x_1945 : vec2<f32> = vec2<f32>(x_1944.z, x_1944.w);
        let x_1947 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1945.x, x_1945.y, x_1947);
        let x_1954 : vec3<f32> = txVec18;
        let x_1956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1954.xy, x_1954.z);
        u_xlat57.x = x_1956;
        let x_1959 : f32 = u_xlat19.y;
        let x_1961 : f32 = u_xlat57.x;
        let x_1963 : f32 = u_xlat81;
        u_xlat81 = ((x_1959 * x_1961) + x_1963);
        let x_1966 : vec4<f32> = u_xlat15;
        let x_1967 : vec2<f32> = vec2<f32>(x_1966.x, x_1966.y);
        let x_1969 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1967.x, x_1967.y, x_1969);
        let x_1976 : vec3<f32> = txVec19;
        let x_1978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1976.xy, x_1976.z);
        u_xlat57.x = x_1978;
        let x_1981 : f32 = u_xlat19.z;
        let x_1983 : f32 = u_xlat57.x;
        let x_1985 : f32 = u_xlat81;
        u_xlat81 = ((x_1981 * x_1983) + x_1985);
        let x_1988 : vec4<f32> = u_xlat16;
        let x_1989 : vec2<f32> = vec2<f32>(x_1988.z, x_1988.w);
        let x_1991 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1989.x, x_1989.y, x_1991);
        let x_1998 : vec3<f32> = txVec20;
        let x_2000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1998.xy, x_1998.z);
        u_xlat57.x = x_2000;
        let x_2003 : f32 = u_xlat19.w;
        let x_2005 : f32 = u_xlat57.x;
        let x_2007 : f32 = u_xlat81;
        u_xlat81 = ((x_2003 * x_2005) + x_2007);
        let x_2010 : vec4<f32> = u_xlat17;
        let x_2011 : vec2<f32> = vec2<f32>(x_2010.x, x_2010.y);
        let x_2013 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
        let x_2020 : vec3<f32> = txVec21;
        let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2020.xy, x_2020.z);
        u_xlat57.x = x_2022;
        let x_2025 : f32 = u_xlat20.x;
        let x_2027 : f32 = u_xlat57.x;
        let x_2029 : f32 = u_xlat81;
        u_xlat81 = ((x_2025 * x_2027) + x_2029);
        let x_2032 : vec4<f32> = u_xlat17;
        let x_2033 : vec2<f32> = vec2<f32>(x_2032.z, x_2032.w);
        let x_2035 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec22;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
        u_xlat57.x = x_2044;
        let x_2047 : f32 = u_xlat20.y;
        let x_2049 : f32 = u_xlat57.x;
        let x_2051 : f32 = u_xlat81;
        u_xlat81 = ((x_2047 * x_2049) + x_2051);
        let x_2054 : vec2<f32> = u_xlat34;
        let x_2056 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
        let x_2063 : vec3<f32> = txVec23;
        let x_2065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2063.xy, x_2063.z);
        u_xlat57.x = x_2065;
        let x_2068 : f32 = u_xlat20.z;
        let x_2070 : f32 = u_xlat57.x;
        let x_2072 : f32 = u_xlat81;
        u_xlat81 = ((x_2068 * x_2070) + x_2072);
        let x_2075 : vec2<f32> = u_xlat65;
        let x_2077 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
        let x_2084 : vec3<f32> = txVec24;
        let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2084.xy, x_2084.z);
        u_xlat57.x = x_2086;
        let x_2089 : f32 = u_xlat20.w;
        let x_2091 : f32 = u_xlat57.x;
        let x_2093 : f32 = u_xlat81;
        u_xlat81 = ((x_2089 * x_2091) + x_2093);
        let x_2096 : vec4<f32> = u_xlat12;
        let x_2097 : vec2<f32> = vec2<f32>(x_2096.x, x_2096.y);
        let x_2099 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
        let x_2106 : vec3<f32> = txVec25;
        let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2106.xy, x_2106.z);
        u_xlat57.x = x_2108;
        let x_2111 : f32 = u_xlat8.x;
        let x_2113 : f32 = u_xlat57.x;
        let x_2115 : f32 = u_xlat81;
        u_xlat81 = ((x_2111 * x_2113) + x_2115);
        let x_2118 : vec4<f32> = u_xlat12;
        let x_2119 : vec2<f32> = vec2<f32>(x_2118.z, x_2118.w);
        let x_2121 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
        let x_2128 : vec3<f32> = txVec26;
        let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2128.xy, x_2128.z);
        u_xlat57.x = x_2130;
        let x_2133 : f32 = u_xlat8.y;
        let x_2135 : f32 = u_xlat57.x;
        let x_2137 : f32 = u_xlat81;
        u_xlat81 = ((x_2133 * x_2135) + x_2137);
        let x_2140 : vec2<f32> = u_xlat60;
        let x_2142 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2140.x, x_2140.y, x_2142);
        let x_2149 : vec3<f32> = txVec27;
        let x_2151 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2149.xy, x_2149.z);
        u_xlat57.x = x_2151;
        let x_2154 : f32 = u_xlat8.z;
        let x_2156 : f32 = u_xlat57.x;
        let x_2158 : f32 = u_xlat81;
        u_xlat81 = ((x_2154 * x_2156) + x_2158);
        let x_2161 : vec4<f32> = u_xlat7;
        let x_2162 : vec2<f32> = vec2<f32>(x_2161.x, x_2161.y);
        let x_2164 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2162.x, x_2162.y, x_2164);
        let x_2171 : vec3<f32> = txVec28;
        let x_2173 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2171.xy, x_2171.z);
        u_xlat7.x = x_2173;
        let x_2176 : f32 = u_xlat8.w;
        let x_2178 : f32 = u_xlat7.x;
        let x_2180 : f32 = u_xlat81;
        u_xlat80 = ((x_2176 * x_2178) + x_2180);
      }
    }
  } else {
    let x_2184 : vec4<f32> = u_xlat3;
    let x_2185 : vec2<f32> = vec2<f32>(x_2184.x, x_2184.y);
    let x_2187 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
    let x_2194 : vec3<f32> = txVec29;
    let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2194.xy, x_2194.z);
    u_xlat80 = x_2196;
  }
  let x_2198 : f32 = x_592.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2198) + 1.0f);
  let x_2202 : f32 = u_xlat80;
  let x_2204 : f32 = x_592.x_MainLightShadowParams.x;
  let x_2207 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2202 * x_2204) + x_2207);
  let x_2212 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2212);
  let x_2216 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2216 >= 1.0f);
  let x_2218 : bool = u_xlatb53;
  let x_2219 : bool = u_xlatb28;
  u_xlatb28 = (x_2218 | x_2219);
  let x_2221 : bool = u_xlatb28;
  if (x_2221) {
    x_2223 = 1.0f;
  } else {
    let x_2228 : f32 = u_xlat3.x;
    x_2223 = x_2228;
  }
  let x_2229 : f32 = x_2223;
  u_xlat3.x = x_2229;
  let x_2231 : vec3<f32> = vs_TEXCOORD7;
  let x_2233 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2235 : vec3<f32> = (x_2231 + -(x_2233));
  let x_2236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2239 : vec4<f32> = u_xlat7;
  let x_2241 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2239.x, x_2239.y, x_2239.z), vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2245 : f32 = u_xlat28;
  let x_2247 : f32 = x_592.x_MainLightShadowParams.z;
  let x_2250 : f32 = x_592.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2245 * x_2247) + x_2250);
  let x_2252 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2252, 0.0f, 1.0f);
  let x_2255 : f32 = u_xlat3.x;
  u_xlat80 = (-(x_2255) + 1.0f);
  let x_2258 : f32 = u_xlat53;
  let x_2259 : f32 = u_xlat80;
  let x_2262 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2258 * x_2259) + x_2262);
  let x_2265 : vec4<f32> = u_xlat1;
  let x_2268 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(-(vec3<f32>(x_2265.x, x_2265.y, x_2265.z)), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2271 : f32 = u_xlat53;
  let x_2272 : f32 = u_xlat53;
  u_xlat53 = (x_2271 + x_2272);
  let x_2274 : vec4<f32> = u_xlat2;
  let x_2276 : f32 = u_xlat53;
  let x_2280 : vec4<f32> = u_xlat1;
  let x_2283 : vec3<f32> = ((vec3<f32>(x_2274.x, x_2274.y, x_2274.z) * -(vec3<f32>(x_2276, x_2276, x_2276))) + -(vec3<f32>(x_2280.x, x_2280.y, x_2280.z)));
  let x_2284 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
  let x_2286 : vec4<f32> = u_xlat2;
  let x_2288 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(vec3<f32>(x_2286.x, x_2286.y, x_2286.z), vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
  let x_2291 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2291, 0.0f, 1.0f);
  let x_2293 : f32 = u_xlat53;
  u_xlat53 = (-(x_2293) + 1.0f);
  let x_2296 : f32 = u_xlat53;
  let x_2297 : f32 = u_xlat53;
  u_xlat53 = (x_2296 * x_2297);
  let x_2299 : f32 = u_xlat53;
  let x_2300 : f32 = u_xlat53;
  u_xlat53 = (x_2299 * x_2300);
  let x_2303 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2303) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2310 : f32 = u_xlat0.x;
  let x_2311 : f32 = u_xlat80;
  u_xlat0.x = (x_2310 * x_2311);
  let x_2315 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2315 * 6.0f);
  let x_2327 : vec4<f32> = u_xlat7;
  let x_2330 : f32 = u_xlat0.x;
  let x_2331 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2327.x, x_2327.y, x_2327.z), x_2330);
  u_xlat7 = x_2331;
  let x_2333 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2333 + -1.0f);
  let x_2337 : f32 = x_814.unity_SpecCube0_HDR.w;
  let x_2339 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2337 * x_2339) + 1.0f);
  let x_2344 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2344, 0.0f);
  let x_2348 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2348);
  let x_2352 : f32 = u_xlat0.x;
  let x_2354 : f32 = x_814.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2352 * x_2354);
  let x_2358 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2358);
  let x_2362 : f32 = u_xlat0.x;
  let x_2364 : f32 = x_814.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2362 * x_2364);
  let x_2367 : vec4<f32> = u_xlat7;
  let x_2369 : vec3<f32> = u_xlat0;
  let x_2371 : vec3<f32> = (vec3<f32>(x_2367.x, x_2367.y, x_2367.z) * vec3<f32>(x_2369.x, x_2369.x, x_2369.x));
  let x_2372 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);
  let x_2374 : f32 = u_xlat77;
  let x_2376 : f32 = u_xlat77;
  let x_2380 : vec2<f32> = ((vec2<f32>(x_2374, x_2374) * vec2<f32>(x_2376, x_2376)) + vec2<f32>(-1.0f, 1.0f));
  let x_2381 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2380.x, x_2380.y, x_2381.z, x_2381.w);
  let x_2384 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2384);
  let x_2387 : vec4<f32> = u_xlat5;
  let x_2390 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2387.x, x_2387.y, x_2387.z)) + vec3<f32>(x_2390, x_2390, x_2390));
  let x_2393 : f32 = u_xlat53;
  let x_2395 : vec3<f32> = u_xlat33;
  let x_2397 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2393, x_2393, x_2393) * x_2395) + vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : vec3<f32> = u_xlat0;
  let x_2402 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2400.x, x_2400.x, x_2400.x) * x_2402);
  let x_2404 : vec4<f32> = u_xlat7;
  let x_2406 : vec3<f32> = u_xlat33;
  let x_2407 : vec3<f32> = (vec3<f32>(x_2404.x, x_2404.y, x_2404.z) * x_2406);
  let x_2408 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
  let x_2410 : vec4<f32> = u_xlat4;
  let x_2412 : vec4<f32> = u_xlat6;
  let x_2415 : vec4<f32> = u_xlat7;
  let x_2417 : vec3<f32> = ((vec3<f32>(x_2410.x, x_2410.y, x_2410.z) * vec3<f32>(x_2412.x, x_2412.y, x_2412.z)) + vec3<f32>(x_2415.x, x_2415.y, x_2415.z));
  let x_2418 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
  let x_2421 : f32 = u_xlat3.x;
  let x_2423 : f32 = x_814.unity_LightData.z;
  u_xlat0.x = (x_2421 * x_2423);
  let x_2426 : vec4<f32> = u_xlat2;
  let x_2429 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2426.x, x_2426.y, x_2426.z), vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
  let x_2432 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2432, 0.0f, 1.0f);
  let x_2434 : f32 = u_xlat50;
  let x_2436 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2434 * x_2436);
  let x_2439 : vec3<f32> = u_xlat0;
  let x_2442 : vec4<f32> = x_113.x_MainLightColor;
  let x_2444 : vec3<f32> = (vec3<f32>(x_2439.x, x_2439.x, x_2439.x) * vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
  let x_2445 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
  let x_2447 : vec4<f32> = u_xlat1;
  let x_2450 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_2447.x, x_2447.y, x_2447.z) + vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec3<f32> = u_xlat33;
  let x_2454 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2453, x_2454);
  let x_2458 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2458, 1.17549435e-38f);
  let x_2463 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2463);
  let x_2466 : vec3<f32> = u_xlat0;
  let x_2468 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2466.x, x_2466.x, x_2466.x) * x_2468);
  let x_2470 : vec4<f32> = u_xlat2;
  let x_2472 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2470.x, x_2470.y, x_2470.z), x_2472);
  let x_2476 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2476, 0.0f, 1.0f);
  let x_2480 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2482 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2480.x, x_2480.y, x_2480.z), x_2482);
  let x_2486 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2486, 0.0f, 1.0f);
  let x_2489 : vec3<f32> = u_xlat0;
  let x_2491 : vec3<f32> = u_xlat0;
  let x_2493 : vec2<f32> = (vec2<f32>(x_2489.x, x_2489.z) * vec2<f32>(x_2491.x, x_2491.z));
  let x_2494 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2493.x, x_2494.y, x_2493.y);
  let x_2497 : f32 = u_xlat0.x;
  let x_2499 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2497 * x_2499) + 1.00001001358032226562f);
  let x_2505 : f32 = u_xlat0.x;
  let x_2507 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2505 * x_2507);
  let x_2511 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2511, 0.10000000149011611938f);
  let x_2514 : f32 = u_xlat50;
  let x_2516 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2514 * x_2516);
  let x_2519 : f32 = u_xlat78;
  let x_2521 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2519 * x_2521);
  let x_2524 : f32 = u_xlat79;
  let x_2526 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2524 / x_2526);
  let x_2529 : vec4<f32> = u_xlat5;
  let x_2531 : vec3<f32> = u_xlat0;
  let x_2534 : vec4<f32> = u_xlat6;
  u_xlat33 = ((vec3<f32>(x_2529.x, x_2529.y, x_2529.z) * vec3<f32>(x_2531.x, x_2531.x, x_2531.x)) + vec3<f32>(x_2534.x, x_2534.y, x_2534.z));
  let x_2537 : vec4<f32> = u_xlat7;
  let x_2539 : vec3<f32> = u_xlat33;
  let x_2540 : vec3<f32> = (vec3<f32>(x_2537.x, x_2537.y, x_2537.z) * x_2539);
  let x_2541 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
  let x_2544 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2546 : f32 = x_814.unity_LightData.y;
  u_xlat0.x = min(x_2544, x_2546);
  let x_2551 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2551));
  let x_2554 : f32 = u_xlat28;
  let x_2556 : f32 = x_592.x_AdditionalShadowFadeParams.x;
  let x_2559 : f32 = x_592.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2554 * x_2556) + x_2559);
  let x_2561 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2561, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2573 : u32 = u_xlatu_loop_1;
    let x_2574 : u32 = u_xlatu0;
    if ((x_2573 < x_2574)) {
    } else {
      break;
    }
    let x_2577 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2577 >> 2u);
    let x_2580 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2580 & 3u));
    let x_2583 : u32 = u_xlatu80;
    let x_2586 : vec4<f32> = x_814.unity_LightIndices[bitcast<i32>(x_2583)];
    let x_2596 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2601 : vec4<u32> = indexable[x_2596];
    u_xlat80 = dot(x_2586, bitcast<vec4<f32>>(x_2601));
    let x_2605 : f32 = u_xlat80;
    u_xlati80 = i32(x_2605);
    let x_2607 : vec3<f32> = vs_TEXCOORD7;
    let x_2618 : i32 = u_xlati80;
    let x_2620 : vec4<f32> = x_2617.x_AdditionalLightsPosition[x_2618];
    let x_2623 : i32 = u_xlati80;
    let x_2625 : vec4<f32> = x_2617.x_AdditionalLightsPosition[x_2623];
    u_xlat33 = ((-(x_2607) * vec3<f32>(x_2620.w, x_2620.w, x_2620.w)) + vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
    let x_2628 : vec3<f32> = u_xlat33;
    let x_2629 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(x_2628, x_2629);
    let x_2631 : f32 = u_xlat81;
    u_xlat81 = max(x_2631, 0.00006103515625f);
    let x_2634 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2634);
    let x_2636 : f32 = u_xlat82;
    let x_2638 : vec3<f32> = u_xlat33;
    let x_2639 : vec3<f32> = (vec3<f32>(x_2636, x_2636, x_2636) * x_2638);
    let x_2640 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
    let x_2643 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2643);
    let x_2645 : f32 = u_xlat81;
    let x_2646 : i32 = u_xlati80;
    let x_2648 : f32 = x_2617.x_AdditionalLightsAttenuation[x_2646].x;
    u_xlat81 = (x_2645 * x_2648);
    let x_2650 : f32 = u_xlat81;
    let x_2652 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2650) * x_2652) + 1.0f);
    let x_2655 : f32 = u_xlat81;
    u_xlat81 = max(x_2655, 0.0f);
    let x_2657 : f32 = u_xlat81;
    let x_2658 : f32 = u_xlat81;
    u_xlat81 = (x_2657 * x_2658);
    let x_2660 : f32 = u_xlat81;
    let x_2661 : f32 = u_xlat84;
    u_xlat81 = (x_2660 * x_2661);
    let x_2663 : i32 = u_xlati80;
    let x_2665 : vec4<f32> = x_2617.x_AdditionalLightsSpotDir[x_2663];
    let x_2667 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2665.x, x_2665.y, x_2665.z), vec3<f32>(x_2667.x, x_2667.y, x_2667.z));
    let x_2670 : f32 = u_xlat84;
    let x_2671 : i32 = u_xlati80;
    let x_2673 : f32 = x_2617.x_AdditionalLightsAttenuation[x_2671].z;
    let x_2675 : i32 = u_xlati80;
    let x_2677 : f32 = x_2617.x_AdditionalLightsAttenuation[x_2675].w;
    u_xlat84 = ((x_2670 * x_2673) + x_2677);
    let x_2679 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2679, 0.0f, 1.0f);
    let x_2681 : f32 = u_xlat84;
    let x_2682 : f32 = u_xlat84;
    u_xlat84 = (x_2681 * x_2682);
    let x_2684 : f32 = u_xlat81;
    let x_2685 : f32 = u_xlat84;
    u_xlat81 = (x_2684 * x_2685);
    let x_2688 : i32 = u_xlati80;
    let x_2690 : f32 = x_592.x_AdditionalShadowParams[x_2688].w;
    u_xlati84 = i32(x_2690);
    let x_2695 : i32 = u_xlati84;
    u_xlatb10.x = (x_2695 >= 0i);
    let x_2699 : bool = u_xlatb10.x;
    if (x_2699) {
      let x_2703 : i32 = u_xlati80;
      let x_2705 : f32 = x_592.x_AdditionalShadowParams[x_2703].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2705, x_2705, x_2705, x_2705))));
      let x_2711 : bool = u_xlatb10.x;
      if (x_2711) {
        let x_2714 : vec4<f32> = u_xlat9;
        let x_2717 : vec4<f32> = u_xlat9;
        let x_2720 : vec4<bool> = (abs(vec4<f32>(x_2714.z, x_2714.z, x_2714.y, x_2714.z)) >= abs(vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.x)));
        u_xlatb10 = vec3<bool>(x_2720.x, x_2720.y, x_2720.z);
        let x_2723 : bool = u_xlatb10.y;
        let x_2725 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2723 & x_2725);
        let x_2729 : vec4<f32> = u_xlat9;
        let x_2732 : vec4<bool> = (-(vec4<f32>(x_2729.z, x_2729.y, x_2729.x, x_2729.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2732.x, x_2732.y, x_2732.z);
        let x_2736 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2736);
        let x_2741 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2741);
        let x_2745 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2745);
        let x_2749 : bool = u_xlatb10.z;
        if (x_2749) {
          let x_2754 : f32 = u_xlat35.z;
          x_2750 = x_2754;
        } else {
          let x_2757 : f32 = u_xlat11.x;
          x_2750 = x_2757;
        }
        let x_2758 : f32 = x_2750;
        u_xlat60.x = x_2758;
        let x_2761 : bool = u_xlatb10.x;
        if (x_2761) {
          let x_2766 : f32 = u_xlat35.x;
          x_2762 = x_2766;
        } else {
          let x_2769 : f32 = u_xlat60.x;
          x_2762 = x_2769;
        }
        let x_2770 : f32 = x_2762;
        u_xlat10.x = x_2770;
        let x_2772 : i32 = u_xlati80;
        let x_2774 : f32 = x_592.x_AdditionalShadowParams[x_2772].w;
        u_xlat35.x = trunc(x_2774);
        let x_2778 : f32 = u_xlat10.x;
        let x_2780 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2778 + x_2780);
        let x_2784 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2784);
      }
      let x_2786 : i32 = u_xlati84;
      u_xlati84 = (x_2786 << bitcast<u32>(2i));
      let x_2788 : vec3<f32> = vs_TEXCOORD7;
      let x_2790 : i32 = u_xlati84;
      let x_2793 : i32 = u_xlati84;
      let x_2797 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_2790 + 1i) / 4i)][((x_2793 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2788.y, x_2788.y, x_2788.y, x_2788.y) * x_2797);
      let x_2799 : i32 = u_xlati84;
      let x_2801 : i32 = u_xlati84;
      let x_2804 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[(x_2799 / 4i)][(x_2801 % 4i)];
      let x_2805 : vec3<f32> = vs_TEXCOORD7;
      let x_2808 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2804 * vec4<f32>(x_2805.x, x_2805.x, x_2805.x, x_2805.x)) + x_2808);
      let x_2810 : i32 = u_xlati84;
      let x_2813 : i32 = u_xlati84;
      let x_2817 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_2810 + 2i) / 4i)][((x_2813 + 2i) % 4i)];
      let x_2818 : vec3<f32> = vs_TEXCOORD7;
      let x_2821 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2817 * vec4<f32>(x_2818.z, x_2818.z, x_2818.z, x_2818.z)) + x_2821);
      let x_2823 : vec4<f32> = u_xlat10;
      let x_2824 : i32 = u_xlati84;
      let x_2827 : i32 = u_xlati84;
      let x_2831 : vec4<f32> = x_592.x_AdditionalLightsWorldToShadow[((x_2824 + 3i) / 4i)][((x_2827 + 3i) % 4i)];
      u_xlat10 = (x_2823 + x_2831);
      let x_2833 : vec4<f32> = u_xlat10;
      let x_2835 : vec4<f32> = u_xlat10;
      let x_2837 : vec3<f32> = (vec3<f32>(x_2833.x, x_2833.y, x_2833.z) / vec3<f32>(x_2835.w, x_2835.w, x_2835.w));
      let x_2838 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2838.w);
      let x_2841 : i32 = u_xlati80;
      let x_2843 : f32 = x_592.x_AdditionalShadowParams[x_2841].y;
      u_xlatb84 = (0.0f < x_2843);
      let x_2845 : bool = u_xlatb84;
      if (x_2845) {
        let x_2848 : i32 = u_xlati80;
        let x_2850 : f32 = x_592.x_AdditionalShadowParams[x_2848].y;
        u_xlatb84 = (1.0f == x_2850);
        let x_2852 : bool = u_xlatb84;
        if (x_2852) {
          let x_2855 : vec4<f32> = u_xlat10;
          let x_2858 : vec4<f32> = x_592.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y) + x_2858);
          let x_2861 : vec4<f32> = u_xlat11;
          let x_2862 : vec2<f32> = vec2<f32>(x_2861.x, x_2861.y);
          let x_2864 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2862.x, x_2862.y, x_2864);
          let x_2872 : vec3<f32> = txVec30;
          let x_2874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2872.xy, x_2872.z);
          u_xlat12.x = x_2874;
          let x_2877 : vec4<f32> = u_xlat11;
          let x_2878 : vec2<f32> = vec2<f32>(x_2877.z, x_2877.w);
          let x_2880 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2878.x, x_2878.y, x_2880);
          let x_2887 : vec3<f32> = txVec31;
          let x_2889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2887.xy, x_2887.z);
          u_xlat12.y = x_2889;
          let x_2891 : vec4<f32> = u_xlat10;
          let x_2894 : vec4<f32> = x_592.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2891.x, x_2891.y, x_2891.x, x_2891.y) + x_2894);
          let x_2897 : vec4<f32> = u_xlat11;
          let x_2898 : vec2<f32> = vec2<f32>(x_2897.x, x_2897.y);
          let x_2900 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
          let x_2907 : vec3<f32> = txVec32;
          let x_2909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
          u_xlat12.z = x_2909;
          let x_2912 : vec4<f32> = u_xlat11;
          let x_2913 : vec2<f32> = vec2<f32>(x_2912.z, x_2912.w);
          let x_2915 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
          let x_2922 : vec3<f32> = txVec33;
          let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
          u_xlat12.w = x_2924;
          let x_2926 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2926, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2930 : i32 = u_xlati80;
          let x_2932 : f32 = x_592.x_AdditionalShadowParams[x_2930].y;
          u_xlatb85 = (2.0f == x_2932);
          let x_2934 : bool = u_xlatb85;
          if (x_2934) {
            let x_2937 : vec4<f32> = u_xlat10;
            let x_2940 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_2943 : vec2<f32> = ((vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(x_2940.z, x_2940.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2944 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat11;
            let x_2948 : vec2<f32> = floor(vec2<f32>(x_2946.x, x_2946.y));
            let x_2949 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2948.x, x_2948.y, x_2949.z, x_2949.w);
            let x_2952 : vec4<f32> = u_xlat10;
            let x_2955 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_2958 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2952.x, x_2952.y) * vec2<f32>(x_2955.z, x_2955.w)) + -(vec2<f32>(x_2958.x, x_2958.y)));
            let x_2962 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2962.x, x_2962.x, x_2962.y, x_2962.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2965 : vec4<f32> = u_xlat12;
            let x_2967 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2965.x, x_2965.x, x_2965.z, x_2965.z) * vec4<f32>(x_2967.x, x_2967.x, x_2967.z, x_2967.z));
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2972 : vec2<f32> = (vec2<f32>(x_2970.y, x_2970.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2973 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2972.x, x_2973.y, x_2972.y, x_2973.w);
            let x_2975 : vec4<f32> = u_xlat13;
            let x_2978 : vec2<f32> = u_xlat61;
            let x_2980 : vec2<f32> = ((vec2<f32>(x_2975.x, x_2975.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2978));
            let x_2981 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
            let x_2984 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2984) + vec2<f32>(1.0f, 1.0f));
            let x_2987 : vec2<f32> = u_xlat61;
            let x_2988 : vec2<f32> = min(x_2987, vec2<f32>(0.0f, 0.0f));
            let x_2989 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2988.x, x_2988.y, x_2989.z, x_2989.w);
            let x_2991 : vec4<f32> = u_xlat14;
            let x_2994 : vec4<f32> = u_xlat14;
            let x_2997 : vec2<f32> = u_xlat63;
            let x_2998 : vec2<f32> = ((-(vec2<f32>(x_2991.x, x_2991.y)) * vec2<f32>(x_2994.x, x_2994.y)) + x_2997);
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2998.x, x_2998.y, x_2999.z, x_2999.w);
            let x_3001 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3001, vec2<f32>(0.0f, 0.0f));
            let x_3003 : vec2<f32> = u_xlat61;
            let x_3005 : vec2<f32> = u_xlat61;
            let x_3007 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3003) * x_3005) + vec2<f32>(x_3007.y, x_3007.w));
            let x_3010 : vec4<f32> = u_xlat14;
            let x_3012 : vec2<f32> = (vec2<f32>(x_3010.x, x_3010.y) + vec2<f32>(1.0f, 1.0f));
            let x_3013 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3012.x, x_3012.y, x_3013.z, x_3013.w);
            let x_3015 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3015 + vec2<f32>(1.0f, 1.0f));
            let x_3017 : vec4<f32> = u_xlat13;
            let x_3019 : vec2<f32> = (vec2<f32>(x_3017.x, x_3017.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3020 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3019.x, x_3019.y, x_3020.z, x_3020.w);
            let x_3022 : vec2<f32> = u_xlat63;
            let x_3023 : vec2<f32> = (x_3022 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3024 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3023.x, x_3023.y, x_3024.z, x_3024.w);
            let x_3026 : vec4<f32> = u_xlat14;
            let x_3028 : vec2<f32> = (vec2<f32>(x_3026.x, x_3026.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3029 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3028.x, x_3028.y, x_3029.z, x_3029.w);
            let x_3031 : vec2<f32> = u_xlat61;
            let x_3032 : vec2<f32> = (x_3031 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3033 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3032.x, x_3032.y, x_3033.z, x_3033.w);
            let x_3035 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3035.y, x_3035.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3039 : f32 = u_xlat14.x;
            u_xlat15.z = x_3039;
            let x_3042 : f32 = u_xlat61.x;
            u_xlat15.w = x_3042;
            let x_3045 : f32 = u_xlat16.x;
            u_xlat13.z = x_3045;
            let x_3048 : f32 = u_xlat12.x;
            u_xlat13.w = x_3048;
            let x_3050 : vec4<f32> = u_xlat13;
            let x_3052 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3050.z, x_3050.w, x_3050.x, x_3050.z) + vec4<f32>(x_3052.z, x_3052.w, x_3052.x, x_3052.z));
            let x_3056 : f32 = u_xlat15.y;
            u_xlat14.z = x_3056;
            let x_3059 : f32 = u_xlat61.y;
            u_xlat14.w = x_3059;
            let x_3062 : f32 = u_xlat13.y;
            u_xlat16.z = x_3062;
            let x_3065 : f32 = u_xlat12.z;
            u_xlat16.w = x_3065;
            let x_3067 : vec4<f32> = u_xlat14;
            let x_3069 : vec4<f32> = u_xlat16;
            let x_3071 : vec3<f32> = (vec3<f32>(x_3067.z, x_3067.y, x_3067.w) + vec3<f32>(x_3069.z, x_3069.y, x_3069.w));
            let x_3072 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
            let x_3074 : vec4<f32> = u_xlat13;
            let x_3076 : vec4<f32> = u_xlat17;
            let x_3078 : vec3<f32> = (vec3<f32>(x_3074.x, x_3074.z, x_3074.w) / vec3<f32>(x_3076.z, x_3076.w, x_3076.y));
            let x_3079 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
            let x_3081 : vec4<f32> = u_xlat13;
            let x_3083 : vec3<f32> = (vec3<f32>(x_3081.x, x_3081.y, x_3081.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3084 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3083.x, x_3083.y, x_3083.z, x_3084.w);
            let x_3086 : vec4<f32> = u_xlat16;
            let x_3088 : vec4<f32> = u_xlat12;
            let x_3090 : vec3<f32> = (vec3<f32>(x_3086.z, x_3086.y, x_3086.w) / vec3<f32>(x_3088.x, x_3088.y, x_3088.z));
            let x_3091 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3090.x, x_3090.y, x_3090.z, x_3091.w);
            let x_3093 : vec4<f32> = u_xlat14;
            let x_3095 : vec3<f32> = (vec3<f32>(x_3093.x, x_3093.y, x_3093.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3096 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3095.x, x_3095.y, x_3095.z, x_3096.w);
            let x_3098 : vec4<f32> = u_xlat13;
            let x_3101 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3103 : vec3<f32> = (vec3<f32>(x_3098.y, x_3098.x, x_3098.z) * vec3<f32>(x_3101.x, x_3101.x, x_3101.x));
            let x_3104 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3104.w);
            let x_3106 : vec4<f32> = u_xlat14;
            let x_3109 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3111 : vec3<f32> = (vec3<f32>(x_3106.x, x_3106.y, x_3106.z) * vec3<f32>(x_3109.y, x_3109.y, x_3109.y));
            let x_3112 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3111.x, x_3111.y, x_3111.z, x_3112.w);
            let x_3115 : f32 = u_xlat14.x;
            u_xlat13.w = x_3115;
            let x_3117 : vec4<f32> = u_xlat11;
            let x_3120 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3123 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3117.x, x_3117.y, x_3117.x, x_3117.y) * vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y)) + vec4<f32>(x_3123.y, x_3123.w, x_3123.x, x_3123.w));
            let x_3126 : vec4<f32> = u_xlat11;
            let x_3129 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3132 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3126.x, x_3126.y) * vec2<f32>(x_3129.x, x_3129.y)) + vec2<f32>(x_3132.z, x_3132.w));
            let x_3136 : f32 = u_xlat13.y;
            u_xlat14.w = x_3136;
            let x_3138 : vec4<f32> = u_xlat14;
            let x_3139 : vec2<f32> = vec2<f32>(x_3138.y, x_3138.z);
            let x_3140 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3140.x, x_3139.x, x_3140.z, x_3139.y);
            let x_3142 : vec4<f32> = u_xlat11;
            let x_3145 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3148 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3142.x, x_3142.y, x_3142.x, x_3142.y) * vec4<f32>(x_3145.x, x_3145.y, x_3145.x, x_3145.y)) + vec4<f32>(x_3148.x, x_3148.y, x_3148.z, x_3148.y));
            let x_3151 : vec4<f32> = u_xlat11;
            let x_3154 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3157 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3151.x, x_3151.y, x_3151.x, x_3151.y) * vec4<f32>(x_3154.x, x_3154.y, x_3154.x, x_3154.y)) + vec4<f32>(x_3157.w, x_3157.y, x_3157.w, x_3157.z));
            let x_3160 : vec4<f32> = u_xlat11;
            let x_3163 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3166 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3160.x, x_3160.y, x_3160.x, x_3160.y) * vec4<f32>(x_3163.x, x_3163.y, x_3163.x, x_3163.y)) + vec4<f32>(x_3166.x, x_3166.w, x_3166.z, x_3166.w));
            let x_3169 : vec4<f32> = u_xlat12;
            let x_3171 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3169.x, x_3169.x, x_3169.x, x_3169.y) * vec4<f32>(x_3171.z, x_3171.w, x_3171.y, x_3171.z));
            let x_3174 : vec4<f32> = u_xlat12;
            let x_3176 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3174.y, x_3174.y, x_3174.z, x_3174.z) * x_3176);
            let x_3180 : f32 = u_xlat12.z;
            let x_3182 : f32 = u_xlat17.y;
            u_xlat85 = (x_3180 * x_3182);
            let x_3185 : vec4<f32> = u_xlat15;
            let x_3186 : vec2<f32> = vec2<f32>(x_3185.x, x_3185.y);
            let x_3188 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec34;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat11.x = x_3197;
            let x_3200 : vec4<f32> = u_xlat15;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.z, x_3200.w);
            let x_3203 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3211 : vec3<f32> = txVec35;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat36 = x_3213;
            let x_3214 : f32 = u_xlat36;
            let x_3216 : f32 = u_xlat18.y;
            u_xlat36 = (x_3214 * x_3216);
            let x_3219 : f32 = u_xlat18.x;
            let x_3221 : f32 = u_xlat11.x;
            let x_3223 : f32 = u_xlat36;
            u_xlat11.x = ((x_3219 * x_3221) + x_3223);
            let x_3227 : vec2<f32> = u_xlat61;
            let x_3229 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3227.x, x_3227.y, x_3229);
            let x_3236 : vec3<f32> = txVec36;
            let x_3238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3236.xy, x_3236.z);
            u_xlat36 = x_3238;
            let x_3240 : f32 = u_xlat18.z;
            let x_3241 : f32 = u_xlat36;
            let x_3244 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3240 * x_3241) + x_3244);
            let x_3248 : vec4<f32> = u_xlat14;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
            let x_3251 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec37;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat36 = x_3260;
            let x_3262 : f32 = u_xlat18.w;
            let x_3263 : f32 = u_xlat36;
            let x_3266 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3262 * x_3263) + x_3266);
            let x_3270 : vec4<f32> = u_xlat16;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.x, x_3270.y);
            let x_3273 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec38;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat36 = x_3282;
            let x_3284 : f32 = u_xlat19.x;
            let x_3285 : f32 = u_xlat36;
            let x_3288 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3284 * x_3285) + x_3288);
            let x_3292 : vec4<f32> = u_xlat16;
            let x_3293 : vec2<f32> = vec2<f32>(x_3292.z, x_3292.w);
            let x_3295 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec39;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat36 = x_3304;
            let x_3306 : f32 = u_xlat19.y;
            let x_3307 : f32 = u_xlat36;
            let x_3310 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3306 * x_3307) + x_3310);
            let x_3314 : vec4<f32> = u_xlat14;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec40;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat36 = x_3326;
            let x_3328 : f32 = u_xlat19.z;
            let x_3329 : f32 = u_xlat36;
            let x_3332 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3328 * x_3329) + x_3332);
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec41;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat36 = x_3348;
            let x_3350 : f32 = u_xlat19.w;
            let x_3351 : f32 = u_xlat36;
            let x_3354 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3350 * x_3351) + x_3354);
            let x_3358 : vec4<f32> = u_xlat13;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.z, x_3358.w);
            let x_3361 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec42;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat36 = x_3370;
            let x_3371 : f32 = u_xlat85;
            let x_3372 : f32 = u_xlat36;
            let x_3375 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3371 * x_3372) + x_3375);
          } else {
            let x_3378 : vec4<f32> = u_xlat10;
            let x_3381 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3384 : vec2<f32> = ((vec2<f32>(x_3378.x, x_3378.y) * vec2<f32>(x_3381.z, x_3381.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3385 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3384.x, x_3384.y, x_3385.z, x_3385.w);
            let x_3387 : vec4<f32> = u_xlat11;
            let x_3389 : vec2<f32> = floor(vec2<f32>(x_3387.x, x_3387.y));
            let x_3390 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3389.x, x_3389.y, x_3390.z, x_3390.w);
            let x_3392 : vec4<f32> = u_xlat10;
            let x_3395 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3398 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3392.x, x_3392.y) * vec2<f32>(x_3395.z, x_3395.w)) + -(vec2<f32>(x_3398.x, x_3398.y)));
            let x_3402 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3402.x, x_3402.x, x_3402.y, x_3402.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3405 : vec4<f32> = u_xlat12;
            let x_3407 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3405.x, x_3405.x, x_3405.z, x_3405.z) * vec4<f32>(x_3407.x, x_3407.x, x_3407.z, x_3407.z));
            let x_3410 : vec4<f32> = u_xlat13;
            let x_3412 : vec2<f32> = (vec2<f32>(x_3410.y, x_3410.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3413 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3413.x, x_3412.x, x_3413.z, x_3412.y);
            let x_3415 : vec4<f32> = u_xlat13;
            let x_3418 : vec2<f32> = u_xlat61;
            let x_3420 : vec2<f32> = ((vec2<f32>(x_3415.x, x_3415.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3418));
            let x_3421 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3420.x, x_3421.y, x_3420.y, x_3421.w);
            let x_3423 : vec2<f32> = u_xlat61;
            let x_3425 : vec2<f32> = (-(x_3423) + vec2<f32>(1.0f, 1.0f));
            let x_3426 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3425.x, x_3425.y, x_3426.z, x_3426.w);
            let x_3428 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3428, vec2<f32>(0.0f, 0.0f));
            let x_3430 : vec2<f32> = u_xlat63;
            let x_3432 : vec2<f32> = u_xlat63;
            let x_3434 : vec4<f32> = u_xlat13;
            let x_3436 : vec2<f32> = ((-(x_3430) * x_3432) + vec2<f32>(x_3434.x, x_3434.y));
            let x_3437 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3436.x, x_3436.y, x_3437.z, x_3437.w);
            let x_3439 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3439, vec2<f32>(0.0f, 0.0f));
            let x_3442 : vec2<f32> = u_xlat63;
            let x_3444 : vec2<f32> = u_xlat63;
            let x_3446 : vec4<f32> = u_xlat12;
            let x_3448 : vec2<f32> = ((-(x_3442) * x_3444) + vec2<f32>(x_3446.y, x_3446.w));
            let x_3449 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3448.x, x_3449.y, x_3448.y);
            let x_3451 : vec4<f32> = u_xlat13;
            let x_3453 : vec2<f32> = (vec2<f32>(x_3451.x, x_3451.y) + vec2<f32>(2.0f, 2.0f));
            let x_3454 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3453.x, x_3453.y, x_3454.z, x_3454.w);
            let x_3456 : vec3<f32> = u_xlat37;
            let x_3458 : vec2<f32> = (vec2<f32>(x_3456.x, x_3456.z) + vec2<f32>(2.0f, 2.0f));
            let x_3459 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3459.x, x_3458.x, x_3459.z, x_3458.y);
            let x_3462 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3462 * 0.08163200318813323975f);
            let x_3465 : vec4<f32> = u_xlat12;
            let x_3467 : vec3<f32> = (vec3<f32>(x_3465.z, x_3465.x, x_3465.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3468 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3468.w);
            let x_3470 : vec4<f32> = u_xlat13;
            let x_3472 : vec2<f32> = (vec2<f32>(x_3470.x, x_3470.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3473 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3472.x, x_3472.y, x_3473.z, x_3473.w);
            let x_3476 : f32 = u_xlat16.y;
            u_xlat15.x = x_3476;
            let x_3478 : vec2<f32> = u_xlat61;
            let x_3481 : vec2<f32> = ((vec2<f32>(x_3478.x, x_3478.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3482 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3482.x, x_3481.x, x_3482.z, x_3481.y);
            let x_3484 : vec2<f32> = u_xlat61;
            let x_3487 : vec2<f32> = ((vec2<f32>(x_3484.x, x_3484.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3488 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3487.x, x_3488.y, x_3487.y, x_3488.w);
            let x_3491 : f32 = u_xlat12.x;
            u_xlat13.y = x_3491;
            let x_3494 : f32 = u_xlat14.y;
            u_xlat13.w = x_3494;
            let x_3496 : vec4<f32> = u_xlat13;
            let x_3497 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3496 + x_3497);
            let x_3499 : vec2<f32> = u_xlat61;
            let x_3502 : vec2<f32> = ((vec2<f32>(x_3499.y, x_3499.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3503 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3503.x, x_3502.x, x_3503.z, x_3502.y);
            let x_3505 : vec2<f32> = u_xlat61;
            let x_3508 : vec2<f32> = ((vec2<f32>(x_3505.y, x_3505.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3509 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3508.x, x_3509.y, x_3508.y, x_3509.w);
            let x_3512 : f32 = u_xlat12.y;
            u_xlat14.y = x_3512;
            let x_3514 : vec4<f32> = u_xlat14;
            let x_3515 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3514 + x_3515);
            let x_3517 : vec4<f32> = u_xlat13;
            let x_3518 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3517 / x_3518);
            let x_3520 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3520 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3522 : vec4<f32> = u_xlat14;
            let x_3523 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3522 / x_3523);
            let x_3525 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3525 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3527 : vec4<f32> = u_xlat13;
            let x_3530 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3527.w, x_3527.x, x_3527.y, x_3527.z) * vec4<f32>(x_3530.x, x_3530.x, x_3530.x, x_3530.x));
            let x_3533 : vec4<f32> = u_xlat14;
            let x_3536 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3533.x, x_3533.w, x_3533.y, x_3533.z) * vec4<f32>(x_3536.y, x_3536.y, x_3536.y, x_3536.y));
            let x_3539 : vec4<f32> = u_xlat13;
            let x_3540 : vec3<f32> = vec3<f32>(x_3539.y, x_3539.z, x_3539.w);
            let x_3541 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3540.x, x_3541.y, x_3540.y, x_3540.z);
            let x_3544 : f32 = u_xlat14.x;
            u_xlat16.y = x_3544;
            let x_3546 : vec4<f32> = u_xlat11;
            let x_3549 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3552 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3546.x, x_3546.y, x_3546.x, x_3546.y) * vec4<f32>(x_3549.x, x_3549.y, x_3549.x, x_3549.y)) + vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3552.y));
            let x_3555 : vec4<f32> = u_xlat11;
            let x_3558 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3561 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3555.x, x_3555.y) * vec2<f32>(x_3558.x, x_3558.y)) + vec2<f32>(x_3561.w, x_3561.y));
            let x_3565 : f32 = u_xlat16.y;
            u_xlat13.y = x_3565;
            let x_3568 : f32 = u_xlat14.z;
            u_xlat16.y = x_3568;
            let x_3570 : vec4<f32> = u_xlat11;
            let x_3573 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3576 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3570.x, x_3570.y, x_3570.x, x_3570.y) * vec4<f32>(x_3573.x, x_3573.y, x_3573.x, x_3573.y)) + vec4<f32>(x_3576.x, x_3576.y, x_3576.z, x_3576.y));
            let x_3579 : vec4<f32> = u_xlat11;
            let x_3582 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3585 : vec4<f32> = u_xlat16;
            let x_3587 : vec2<f32> = ((vec2<f32>(x_3579.x, x_3579.y) * vec2<f32>(x_3582.x, x_3582.y)) + vec2<f32>(x_3585.w, x_3585.y));
            let x_3588 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3587.x, x_3587.y, x_3588.z, x_3588.w);
            let x_3591 : f32 = u_xlat16.y;
            u_xlat13.z = x_3591;
            let x_3593 : vec4<f32> = u_xlat11;
            let x_3596 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3599 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3593.x, x_3593.y, x_3593.x, x_3593.y) * vec4<f32>(x_3596.x, x_3596.y, x_3596.x, x_3596.y)) + vec4<f32>(x_3599.x, x_3599.y, x_3599.x, x_3599.z));
            let x_3603 : f32 = u_xlat14.w;
            u_xlat16.y = x_3603;
            let x_3606 : vec4<f32> = u_xlat11;
            let x_3609 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3612 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3606.x, x_3606.y, x_3606.x, x_3606.y) * vec4<f32>(x_3609.x, x_3609.y, x_3609.x, x_3609.y)) + vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3612.y));
            let x_3616 : vec4<f32> = u_xlat11;
            let x_3619 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3622 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3616.x, x_3616.y) * vec2<f32>(x_3619.x, x_3619.y)) + vec2<f32>(x_3622.w, x_3622.y));
            let x_3626 : f32 = u_xlat16.y;
            u_xlat13.w = x_3626;
            let x_3629 : vec4<f32> = u_xlat11;
            let x_3632 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3635 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3629.x, x_3629.y) * vec2<f32>(x_3632.x, x_3632.y)) + vec2<f32>(x_3635.x, x_3635.w));
            let x_3638 : vec4<f32> = u_xlat16;
            let x_3639 : vec3<f32> = vec3<f32>(x_3638.x, x_3638.z, x_3638.w);
            let x_3640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3639.x, x_3640.y, x_3639.y, x_3639.z);
            let x_3642 : vec4<f32> = u_xlat11;
            let x_3645 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3648 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3642.x, x_3642.y, x_3642.x, x_3642.y) * vec4<f32>(x_3645.x, x_3645.y, x_3645.x, x_3645.y)) + vec4<f32>(x_3648.x, x_3648.y, x_3648.z, x_3648.y));
            let x_3652 : vec4<f32> = u_xlat11;
            let x_3655 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3658 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3652.x, x_3652.y) * vec2<f32>(x_3655.x, x_3655.y)) + vec2<f32>(x_3658.w, x_3658.y));
            let x_3662 : f32 = u_xlat13.x;
            u_xlat14.x = x_3662;
            let x_3664 : vec4<f32> = u_xlat11;
            let x_3667 : vec4<f32> = x_592.x_AdditionalShadowmapSize;
            let x_3670 : vec4<f32> = u_xlat14;
            let x_3672 : vec2<f32> = ((vec2<f32>(x_3664.x, x_3664.y) * vec2<f32>(x_3667.x, x_3667.y)) + vec2<f32>(x_3670.x, x_3670.y));
            let x_3673 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3672.x, x_3672.y, x_3673.z, x_3673.w);
            let x_3676 : vec4<f32> = u_xlat12;
            let x_3678 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3676.x, x_3676.x, x_3676.x, x_3676.x) * x_3678);
            let x_3681 : vec4<f32> = u_xlat12;
            let x_3683 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3681.y, x_3681.y, x_3681.y, x_3681.y) * x_3683);
            let x_3686 : vec4<f32> = u_xlat12;
            let x_3688 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3686.z, x_3686.z, x_3686.z, x_3686.z) * x_3688);
            let x_3690 : vec4<f32> = u_xlat12;
            let x_3692 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3690.w, x_3690.w, x_3690.w, x_3690.w) * x_3692);
            let x_3695 : vec4<f32> = u_xlat17;
            let x_3696 : vec2<f32> = vec2<f32>(x_3695.x, x_3695.y);
            let x_3698 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3696.x, x_3696.y, x_3698);
            let x_3705 : vec3<f32> = txVec43;
            let x_3707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3705.xy, x_3705.z);
            u_xlat85 = x_3707;
            let x_3709 : vec4<f32> = u_xlat17;
            let x_3710 : vec2<f32> = vec2<f32>(x_3709.z, x_3709.w);
            let x_3712 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3710.x, x_3710.y, x_3712);
            let x_3719 : vec3<f32> = txVec44;
            let x_3721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3719.xy, x_3719.z);
            u_xlat13.x = x_3721;
            let x_3724 : f32 = u_xlat13.x;
            let x_3726 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3724 * x_3726);
            let x_3730 : f32 = u_xlat22.x;
            let x_3731 : f32 = u_xlat85;
            let x_3734 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3730 * x_3731) + x_3734);
            let x_3737 : vec2<f32> = u_xlat61;
            let x_3739 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3737.x, x_3737.y, x_3739);
            let x_3746 : vec3<f32> = txVec45;
            let x_3748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3746.xy, x_3746.z);
            u_xlat61.x = x_3748;
            let x_3751 : f32 = u_xlat22.z;
            let x_3753 : f32 = u_xlat61.x;
            let x_3755 : f32 = u_xlat85;
            u_xlat85 = ((x_3751 * x_3753) + x_3755);
            let x_3758 : vec4<f32> = u_xlat20;
            let x_3759 : vec2<f32> = vec2<f32>(x_3758.x, x_3758.y);
            let x_3761 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3759.x, x_3759.y, x_3761);
            let x_3768 : vec3<f32> = txVec46;
            let x_3770 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3768.xy, x_3768.z);
            u_xlat61.x = x_3770;
            let x_3773 : f32 = u_xlat22.w;
            let x_3775 : f32 = u_xlat61.x;
            let x_3777 : f32 = u_xlat85;
            u_xlat85 = ((x_3773 * x_3775) + x_3777);
            let x_3780 : vec4<f32> = u_xlat18;
            let x_3781 : vec2<f32> = vec2<f32>(x_3780.x, x_3780.y);
            let x_3783 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3781.x, x_3781.y, x_3783);
            let x_3790 : vec3<f32> = txVec47;
            let x_3792 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3790.xy, x_3790.z);
            u_xlat61.x = x_3792;
            let x_3795 : f32 = u_xlat23.x;
            let x_3797 : f32 = u_xlat61.x;
            let x_3799 : f32 = u_xlat85;
            u_xlat85 = ((x_3795 * x_3797) + x_3799);
            let x_3802 : vec4<f32> = u_xlat18;
            let x_3803 : vec2<f32> = vec2<f32>(x_3802.z, x_3802.w);
            let x_3805 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3803.x, x_3803.y, x_3805);
            let x_3812 : vec3<f32> = txVec48;
            let x_3814 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3812.xy, x_3812.z);
            u_xlat61.x = x_3814;
            let x_3817 : f32 = u_xlat23.y;
            let x_3819 : f32 = u_xlat61.x;
            let x_3821 : f32 = u_xlat85;
            u_xlat85 = ((x_3817 * x_3819) + x_3821);
            let x_3824 : vec4<f32> = u_xlat19;
            let x_3825 : vec2<f32> = vec2<f32>(x_3824.x, x_3824.y);
            let x_3827 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3825.x, x_3825.y, x_3827);
            let x_3834 : vec3<f32> = txVec49;
            let x_3836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3834.xy, x_3834.z);
            u_xlat61.x = x_3836;
            let x_3839 : f32 = u_xlat23.z;
            let x_3841 : f32 = u_xlat61.x;
            let x_3843 : f32 = u_xlat85;
            u_xlat85 = ((x_3839 * x_3841) + x_3843);
            let x_3846 : vec4<f32> = u_xlat20;
            let x_3847 : vec2<f32> = vec2<f32>(x_3846.z, x_3846.w);
            let x_3849 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3847.x, x_3847.y, x_3849);
            let x_3856 : vec3<f32> = txVec50;
            let x_3858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3856.xy, x_3856.z);
            u_xlat61.x = x_3858;
            let x_3861 : f32 = u_xlat23.w;
            let x_3863 : f32 = u_xlat61.x;
            let x_3865 : f32 = u_xlat85;
            u_xlat85 = ((x_3861 * x_3863) + x_3865);
            let x_3868 : vec4<f32> = u_xlat21;
            let x_3869 : vec2<f32> = vec2<f32>(x_3868.x, x_3868.y);
            let x_3871 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3869.x, x_3869.y, x_3871);
            let x_3878 : vec3<f32> = txVec51;
            let x_3880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3878.xy, x_3878.z);
            u_xlat61.x = x_3880;
            let x_3883 : f32 = u_xlat24.x;
            let x_3885 : f32 = u_xlat61.x;
            let x_3887 : f32 = u_xlat85;
            u_xlat85 = ((x_3883 * x_3885) + x_3887);
            let x_3890 : vec4<f32> = u_xlat21;
            let x_3891 : vec2<f32> = vec2<f32>(x_3890.z, x_3890.w);
            let x_3893 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3891.x, x_3891.y, x_3893);
            let x_3900 : vec3<f32> = txVec52;
            let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
            u_xlat61.x = x_3902;
            let x_3905 : f32 = u_xlat24.y;
            let x_3907 : f32 = u_xlat61.x;
            let x_3909 : f32 = u_xlat85;
            u_xlat85 = ((x_3905 * x_3907) + x_3909);
            let x_3912 : vec2<f32> = u_xlat38;
            let x_3914 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3912.x, x_3912.y, x_3914);
            let x_3921 : vec3<f32> = txVec53;
            let x_3923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3921.xy, x_3921.z);
            u_xlat61.x = x_3923;
            let x_3926 : f32 = u_xlat24.z;
            let x_3928 : f32 = u_xlat61.x;
            let x_3930 : f32 = u_xlat85;
            u_xlat85 = ((x_3926 * x_3928) + x_3930);
            let x_3933 : vec2<f32> = u_xlat69;
            let x_3935 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3933.x, x_3933.y, x_3935);
            let x_3942 : vec3<f32> = txVec54;
            let x_3944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3942.xy, x_3942.z);
            u_xlat61.x = x_3944;
            let x_3947 : f32 = u_xlat24.w;
            let x_3949 : f32 = u_xlat61.x;
            let x_3951 : f32 = u_xlat85;
            u_xlat85 = ((x_3947 * x_3949) + x_3951);
            let x_3954 : vec4<f32> = u_xlat16;
            let x_3955 : vec2<f32> = vec2<f32>(x_3954.x, x_3954.y);
            let x_3957 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3955.x, x_3955.y, x_3957);
            let x_3964 : vec3<f32> = txVec55;
            let x_3966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3964.xy, x_3964.z);
            u_xlat61.x = x_3966;
            let x_3969 : f32 = u_xlat12.x;
            let x_3971 : f32 = u_xlat61.x;
            let x_3973 : f32 = u_xlat85;
            u_xlat85 = ((x_3969 * x_3971) + x_3973);
            let x_3976 : vec4<f32> = u_xlat16;
            let x_3977 : vec2<f32> = vec2<f32>(x_3976.z, x_3976.w);
            let x_3979 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3977.x, x_3977.y, x_3979);
            let x_3986 : vec3<f32> = txVec56;
            let x_3988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3986.xy, x_3986.z);
            u_xlat61.x = x_3988;
            let x_3991 : f32 = u_xlat12.y;
            let x_3993 : f32 = u_xlat61.x;
            let x_3995 : f32 = u_xlat85;
            u_xlat85 = ((x_3991 * x_3993) + x_3995);
            let x_3998 : vec2<f32> = u_xlat64;
            let x_4000 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3998.x, x_3998.y, x_4000);
            let x_4007 : vec3<f32> = txVec57;
            let x_4009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4007.xy, x_4007.z);
            u_xlat61.x = x_4009;
            let x_4012 : f32 = u_xlat12.z;
            let x_4014 : f32 = u_xlat61.x;
            let x_4016 : f32 = u_xlat85;
            u_xlat85 = ((x_4012 * x_4014) + x_4016);
            let x_4019 : vec4<f32> = u_xlat11;
            let x_4020 : vec2<f32> = vec2<f32>(x_4019.x, x_4019.y);
            let x_4022 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4020.x, x_4020.y, x_4022);
            let x_4029 : vec3<f32> = txVec58;
            let x_4031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4029.xy, x_4029.z);
            u_xlat11.x = x_4031;
            let x_4034 : f32 = u_xlat12.w;
            let x_4036 : f32 = u_xlat11.x;
            let x_4038 : f32 = u_xlat85;
            u_xlat84 = ((x_4034 * x_4036) + x_4038);
          }
        }
      } else {
        let x_4042 : vec4<f32> = u_xlat10;
        let x_4043 : vec2<f32> = vec2<f32>(x_4042.x, x_4042.y);
        let x_4045 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4043.x, x_4043.y, x_4045);
        let x_4052 : vec3<f32> = txVec59;
        let x_4054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4052.xy, x_4052.z);
        u_xlat84 = x_4054;
      }
      let x_4055 : i32 = u_xlati80;
      let x_4057 : f32 = x_592.x_AdditionalShadowParams[x_4055].x;
      u_xlat10.x = (1.0f + -(x_4057));
      let x_4061 : f32 = u_xlat84;
      let x_4062 : i32 = u_xlati80;
      let x_4064 : f32 = x_592.x_AdditionalShadowParams[x_4062].x;
      let x_4067 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4061 * x_4064) + x_4067);
      let x_4070 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4070);
      let x_4075 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4075 >= 1.0f);
      let x_4077 : bool = u_xlatb35;
      let x_4079 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4077 | x_4079);
      let x_4083 : bool = u_xlatb10.x;
      let x_4084 : f32 = u_xlat84;
      u_xlat84 = select(x_4084, 1.0f, x_4083);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4087 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4087) + 1.0f);
    let x_4091 : f32 = u_xlat50;
    let x_4093 : f32 = u_xlat10.x;
    let x_4095 : f32 = u_xlat84;
    u_xlat84 = ((x_4091 * x_4093) + x_4095);
    let x_4097 : f32 = u_xlat81;
    let x_4098 : f32 = u_xlat84;
    u_xlat81 = (x_4097 * x_4098);
    let x_4100 : vec4<f32> = u_xlat2;
    let x_4102 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4100.x, x_4100.y, x_4100.z), vec3<f32>(x_4102.x, x_4102.y, x_4102.z));
    let x_4105 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4105, 0.0f, 1.0f);
    let x_4107 : f32 = u_xlat81;
    let x_4108 : f32 = u_xlat84;
    u_xlat81 = (x_4107 * x_4108);
    let x_4110 : f32 = u_xlat81;
    let x_4112 : i32 = u_xlati80;
    let x_4114 : vec4<f32> = x_2617.x_AdditionalLightsColor[x_4112];
    let x_4116 : vec3<f32> = (vec3<f32>(x_4110, x_4110, x_4110) * vec3<f32>(x_4114.x, x_4114.y, x_4114.z));
    let x_4117 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4116.x, x_4116.y, x_4116.z, x_4117.w);
    let x_4119 : vec3<f32> = u_xlat33;
    let x_4120 : f32 = u_xlat82;
    let x_4123 : vec4<f32> = u_xlat1;
    u_xlat33 = ((x_4119 * vec3<f32>(x_4120, x_4120, x_4120)) + vec3<f32>(x_4123.x, x_4123.y, x_4123.z));
    let x_4126 : vec3<f32> = u_xlat33;
    let x_4127 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_4126, x_4127);
    let x_4129 : f32 = u_xlat80;
    u_xlat80 = max(x_4129, 1.17549435e-38f);
    let x_4131 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4131);
    let x_4133 : f32 = u_xlat80;
    let x_4135 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4133, x_4133, x_4133) * x_4135);
    let x_4137 : vec4<f32> = u_xlat2;
    let x_4139 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4137.x, x_4137.y, x_4137.z), x_4139);
    let x_4141 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4141, 0.0f, 1.0f);
    let x_4143 : vec4<f32> = u_xlat9;
    let x_4145 : vec3<f32> = u_xlat33;
    u_xlat81 = dot(vec3<f32>(x_4143.x, x_4143.y, x_4143.z), x_4145);
    let x_4147 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4147, 0.0f, 1.0f);
    let x_4149 : f32 = u_xlat80;
    let x_4150 : f32 = u_xlat80;
    u_xlat80 = (x_4149 * x_4150);
    let x_4152 : f32 = u_xlat80;
    let x_4154 : f32 = u_xlat8.x;
    u_xlat80 = ((x_4152 * x_4154) + 1.00001001358032226562f);
    let x_4157 : f32 = u_xlat81;
    let x_4158 : f32 = u_xlat81;
    u_xlat81 = (x_4157 * x_4158);
    let x_4160 : f32 = u_xlat80;
    let x_4161 : f32 = u_xlat80;
    u_xlat80 = (x_4160 * x_4161);
    let x_4163 : f32 = u_xlat81;
    u_xlat81 = max(x_4163, 0.10000000149011611938f);
    let x_4165 : f32 = u_xlat80;
    let x_4166 : f32 = u_xlat81;
    u_xlat80 = (x_4165 * x_4166);
    let x_4168 : f32 = u_xlat78;
    let x_4169 : f32 = u_xlat80;
    u_xlat80 = (x_4168 * x_4169);
    let x_4171 : f32 = u_xlat79;
    let x_4172 : f32 = u_xlat80;
    u_xlat80 = (x_4171 / x_4172);
    let x_4174 : vec4<f32> = u_xlat5;
    let x_4176 : f32 = u_xlat80;
    let x_4179 : vec4<f32> = u_xlat6;
    u_xlat33 = ((vec3<f32>(x_4174.x, x_4174.y, x_4174.z) * vec3<f32>(x_4176, x_4176, x_4176)) + vec3<f32>(x_4179.x, x_4179.y, x_4179.z));
    let x_4182 : vec3<f32> = u_xlat33;
    let x_4183 : vec4<f32> = u_xlat10;
    let x_4186 : vec4<f32> = u_xlat3;
    let x_4188 : vec3<f32> = ((x_4182 * vec3<f32>(x_4183.x, x_4183.y, x_4183.z)) + vec3<f32>(x_4186.x, x_4186.y, x_4186.z));
    let x_4189 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_4188.x, x_4188.y, x_4188.z, x_4189.w);

    continuing {
      let x_4191 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4191 + bitcast<u32>(1i));
    }
  }
  let x_4193 : vec4<f32> = u_xlat4;
  let x_4195 : f32 = u_xlat25;
  let x_4198 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4193.x, x_4193.y, x_4193.z) * vec3<f32>(x_4195, x_4195, x_4195)) + vec3<f32>(x_4198.x, x_4198.y, x_4198.z));
  let x_4201 : vec4<f32> = u_xlat3;
  let x_4203 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4201.x, x_4201.y, x_4201.z) + x_4203);
  let x_4205 : f32 = u_xlat75;
  let x_4207 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4205, x_4205, x_4205) * x_4207);
  let x_4209 : f32 = u_xlat76;
  let x_4210 : f32 = u_xlat76;
  u_xlat75 = (x_4209 * -(x_4210));
  let x_4213 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4213);
  let x_4217 : vec3<f32> = u_xlat0;
  let x_4218 : f32 = u_xlat75;
  let x_4220 : vec3<f32> = (x_4217 * vec3<f32>(x_4218, x_4218, x_4218));
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


