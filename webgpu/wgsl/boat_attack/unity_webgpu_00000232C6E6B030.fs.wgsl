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
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_613 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_757 : LightShadows;

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

@group(1) @binding(1) var<uniform> x_2438 : AdditionalLights;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2579 : f32;
  var x_2590 : f32;
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
  let x_574 : f32 = vs_TEXCOORD7.y;
  let x_576 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat76 = (x_574 * x_576);
  let x_579 : f32 = x_113.unity_MatrixV[0i].z;
  let x_581 : f32 = vs_TEXCOORD7.x;
  let x_583 : f32 = u_xlat76;
  u_xlat76 = ((x_579 * x_581) + x_583);
  let x_586 : f32 = x_113.unity_MatrixV[2i].z;
  let x_588 : f32 = vs_TEXCOORD7.z;
  let x_590 : f32 = u_xlat76;
  u_xlat76 = ((x_586 * x_588) + x_590);
  let x_592 : f32 = u_xlat76;
  let x_595 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat76 = (x_592 + x_595);
  let x_597 : f32 = u_xlat76;
  let x_600 : f32 = x_113.x_ProjectionParams.y;
  u_xlat76 = (-(x_597) + -(x_600));
  let x_603 : f32 = u_xlat76;
  u_xlat76 = max(x_603, 0.0f);
  let x_605 : f32 = u_xlat76;
  let x_607 : f32 = x_113.unity_FogParams.x;
  u_xlat76 = (x_605 * x_607);
  u_xlat2.w = 1.0f;
  let x_615 : vec4<f32> = x_613.unity_SHAr;
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_615, x_616);
  let x_620 : vec4<f32> = x_613.unity_SHAg;
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_620, x_621);
  let x_625 : vec4<f32> = x_613.unity_SHAb;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_625, x_626);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_629.y, x_629.z, x_629.z, x_629.x) * vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.z));
  let x_635 : vec4<f32> = x_613.unity_SHBr;
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_635, x_636);
  let x_640 : vec4<f32> = x_613.unity_SHBg;
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_640, x_641);
  let x_645 : vec4<f32> = x_613.unity_SHBb;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_645, x_646);
  let x_651 : f32 = u_xlat2.y;
  let x_653 : f32 = u_xlat2.y;
  u_xlat77 = (x_651 * x_653);
  let x_656 : f32 = u_xlat2.x;
  let x_658 : f32 = u_xlat2.x;
  let x_660 : f32 = u_xlat77;
  u_xlat77 = ((x_656 * x_658) + -(x_660));
  let x_665 : vec4<f32> = x_613.unity_SHC;
  let x_667 : f32 = u_xlat77;
  let x_670 : vec4<f32> = u_xlat6;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_667, x_667, x_667)) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = max(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_689) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_695 : f32 = u_xlat50;
  let x_696 : f32 = u_xlat77;
  u_xlat78 = (x_695 + -(x_696));
  let x_699 : f32 = u_xlat77;
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat5;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_711 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec3<f32> = u_xlat0;
  let x_715 : vec4<f32> = u_xlat5;
  let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.x, x_713.x) * vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_721 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : f32 = u_xlat50;
  u_xlat0.x = (-(x_723) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  let x_730 : f32 = u_xlat0.x;
  u_xlat50 = (x_728 * x_730);
  let x_732 : f32 = u_xlat50;
  u_xlat50 = max(x_732, 0.0078125f);
  let x_735 : f32 = u_xlat50;
  let x_736 : f32 = u_xlat50;
  u_xlat77 = (x_735 * x_736);
  let x_738 : f32 = u_xlat78;
  u_xlat78 = (x_738 + 1.0f);
  let x_740 : f32 = u_xlat78;
  u_xlat78 = clamp(x_740, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat50;
  u_xlat79 = ((x_743 * 4.0f) + 2.0f);
  let x_747 : f32 = u_xlat25;
  u_xlat25 = min(x_747, 1.0f);
  let x_759 : f32 = x_757.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_759);
  let x_761 : bool = u_xlatb80;
  if (x_761) {
    let x_765 : f32 = x_757.x_MainLightShadowParams.y;
    u_xlatb80 = (x_765 == 1.0f);
    let x_767 : bool = u_xlatb80;
    if (x_767) {
      let x_771 : vec4<f32> = vs_TEXCOORD8;
      let x_774 : vec4<f32> = x_757.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y) + x_774);
      let x_777 : vec4<f32> = u_xlat6;
      let x_778 : vec2<f32> = vec2<f32>(x_777.x, x_777.y);
      let x_780 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_778.x, x_778.y, x_780);
      let x_792 : vec3<f32> = txVec0;
      let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_792.xy, x_792.z);
      u_xlat7.x = x_794;
      let x_797 : vec4<f32> = u_xlat6;
      let x_798 : vec2<f32> = vec2<f32>(x_797.z, x_797.w);
      let x_800 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_798.x, x_798.y, x_800);
      let x_807 : vec3<f32> = txVec1;
      let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_807.xy, x_807.z);
      u_xlat7.y = x_809;
      let x_811 : vec4<f32> = vs_TEXCOORD8;
      let x_814 : vec4<f32> = x_757.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) + x_814);
      let x_817 : vec4<f32> = u_xlat6;
      let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
      let x_820 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_818.x, x_818.y, x_820);
      let x_827 : vec3<f32> = txVec2;
      let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
      u_xlat7.z = x_829;
      let x_832 : vec4<f32> = u_xlat6;
      let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
      let x_835 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_833.x, x_833.y, x_835);
      let x_842 : vec3<f32> = txVec3;
      let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
      u_xlat7.w = x_844;
      let x_847 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_847, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_854 : f32 = x_757.x_MainLightShadowParams.y;
      u_xlatb6 = (x_854 == 2.0f);
      let x_856 : bool = u_xlatb6;
      if (x_856) {
        let x_859 : vec4<f32> = vs_TEXCOORD8;
        let x_862 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_865 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_862.z, x_862.w)) + vec2<f32>(0.5f, 0.5f));
        let x_866 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat6;
        let x_870 : vec2<f32> = floor(vec2<f32>(x_868.x, x_868.y));
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_875 : vec4<f32> = vs_TEXCOORD8;
        let x_878 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_881 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_875.x, x_875.y) * vec2<f32>(x_878.z, x_878.w)) + -(vec2<f32>(x_881.x, x_881.y)));
        let x_885 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_885.x, x_885.x, x_885.y, x_885.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_889 : vec4<f32> = u_xlat7;
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_889.x, x_889.x, x_889.z, x_889.z) * vec4<f32>(x_891.x, x_891.x, x_891.z, x_891.z));
        let x_894 : vec4<f32> = u_xlat8;
        let x_898 : vec2<f32> = (vec2<f32>(x_894.y, x_894.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_898.x, x_899.y, x_898.y, x_899.w);
        let x_901 : vec4<f32> = u_xlat8;
        let x_904 : vec2<f32> = u_xlat56;
        let x_906 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.z) * vec2<f32>(0.5f, 0.5f)) + -(x_904));
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_910 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_910) + vec2<f32>(1.0f, 1.0f));
        let x_914 : vec2<f32> = u_xlat56;
        let x_916 : vec2<f32> = min(x_914, vec2<f32>(0.0f, 0.0f));
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat9;
        let x_922 : vec4<f32> = u_xlat9;
        let x_925 : vec2<f32> = u_xlat58;
        let x_926 : vec2<f32> = ((-(vec2<f32>(x_919.x, x_919.y)) * vec2<f32>(x_922.x, x_922.y)) + x_925);
        let x_927 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_929, vec2<f32>(0.0f, 0.0f));
        let x_931 : vec2<f32> = u_xlat56;
        let x_933 : vec2<f32> = u_xlat56;
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_931) * x_933) + vec2<f32>(x_935.y, x_935.w));
        let x_938 : vec4<f32> = u_xlat9;
        let x_940 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) + vec2<f32>(1.0f, 1.0f));
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_943 + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec4<f32> = u_xlat8;
        let x_949 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_950 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec2<f32> = u_xlat58;
        let x_953 : vec2<f32> = (x_952 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat9;
        let x_958 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_959 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec2<f32> = u_xlat56;
        let x_962 : vec2<f32> = (x_961 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_963 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_965.y, x_965.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_969 : f32 = u_xlat9.x;
        u_xlat10.z = x_969;
        let x_972 : f32 = u_xlat56.x;
        u_xlat10.w = x_972;
        let x_975 : f32 = u_xlat11.x;
        u_xlat8.z = x_975;
        let x_978 : f32 = u_xlat7.x;
        u_xlat8.w = x_978;
        let x_980 : vec4<f32> = u_xlat8;
        let x_982 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_980.z, x_980.w, x_980.x, x_980.z) + vec4<f32>(x_982.z, x_982.w, x_982.x, x_982.z));
        let x_986 : f32 = u_xlat10.y;
        u_xlat9.z = x_986;
        let x_989 : f32 = u_xlat56.y;
        u_xlat9.w = x_989;
        let x_992 : f32 = u_xlat8.y;
        u_xlat11.z = x_992;
        let x_995 : f32 = u_xlat7.z;
        u_xlat11.w = x_995;
        let x_997 : vec4<f32> = u_xlat9;
        let x_999 : vec4<f32> = u_xlat11;
        let x_1001 : vec3<f32> = (vec3<f32>(x_997.z, x_997.y, x_997.w) + vec3<f32>(x_999.z, x_999.y, x_999.w));
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1006 : vec4<f32> = u_xlat12;
        let x_1008 : vec3<f32> = (vec3<f32>(x_1004.x, x_1004.z, x_1004.w) / vec3<f32>(x_1006.z, x_1006.w, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat11;
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1024 : vec3<f32> = (vec3<f32>(x_1020.z, x_1020.y, x_1020.w) / vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1029 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1035 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1037 : vec3<f32> = (vec3<f32>(x_1032.y, x_1032.x, x_1032.z) * vec3<f32>(x_1035.x, x_1035.x, x_1035.x));
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat9;
        let x_1043 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1045 : vec3<f32> = (vec3<f32>(x_1040.x, x_1040.y, x_1040.z) * vec3<f32>(x_1043.y, x_1043.y, x_1043.y));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
        let x_1049 : f32 = u_xlat9.x;
        u_xlat8.w = x_1049;
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y) * vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y)) + vec4<f32>(x_1057.y, x_1057.w, x_1057.x, x_1057.w));
        let x_1060 : vec4<f32> = u_xlat6;
        let x_1063 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.z, x_1066.w));
        let x_1070 : f32 = u_xlat8.y;
        u_xlat9.w = x_1070;
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1073 : vec2<f32> = vec2<f32>(x_1072.y, x_1072.z);
        let x_1074 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1074.x, x_1073.x, x_1074.z, x_1073.y);
        let x_1076 : vec4<f32> = u_xlat6;
        let x_1079 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y) * vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y)) + vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat6;
        let x_1088 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.w, x_1091.y, x_1091.w, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat6;
        let x_1097 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.w, x_1100.z, x_1100.w));
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1105 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1103.x, x_1103.x, x_1103.x, x_1103.y) * vec4<f32>(x_1105.z, x_1105.w, x_1105.y, x_1105.z));
        let x_1109 : vec4<f32> = u_xlat7;
        let x_1111 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1109.y, x_1109.y, x_1109.z, x_1109.z) * x_1111);
        let x_1114 : f32 = u_xlat7.z;
        let x_1116 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1114 * x_1116);
        let x_1120 : vec4<f32> = u_xlat10;
        let x_1121 : vec2<f32> = vec2<f32>(x_1120.x, x_1120.y);
        let x_1123 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1131 : vec3<f32> = txVec4;
        let x_1133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1131.xy, x_1131.z);
        u_xlat31.x = x_1133;
        let x_1136 : vec4<f32> = u_xlat10;
        let x_1137 : vec2<f32> = vec2<f32>(x_1136.z, x_1136.w);
        let x_1139 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1137.x, x_1137.y, x_1139);
        let x_1146 : vec3<f32> = txVec5;
        let x_1148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1146.xy, x_1146.z);
        u_xlat7.x = x_1148;
        let x_1151 : f32 = u_xlat7.x;
        let x_1153 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1151 * x_1153);
        let x_1157 : f32 = u_xlat13.x;
        let x_1159 : f32 = u_xlat31.x;
        let x_1162 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_1157 * x_1159) + x_1162);
        let x_1166 : vec2<f32> = u_xlat56;
        let x_1168 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1166.x, x_1166.y, x_1168);
        let x_1175 : vec3<f32> = txVec6;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
        u_xlat56.x = x_1177;
        let x_1180 : f32 = u_xlat13.z;
        let x_1182 : f32 = u_xlat56.x;
        let x_1185 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1180 * x_1182) + x_1185);
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.x, x_1189.y);
        let x_1192 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec7;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1199.xy, x_1199.z);
        u_xlat56.x = x_1201;
        let x_1204 : f32 = u_xlat13.w;
        let x_1206 : f32 = u_xlat56.x;
        let x_1209 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1204 * x_1206) + x_1209);
        let x_1213 : vec4<f32> = u_xlat11;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
        let x_1216 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec8;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat56.x = x_1225;
        let x_1228 : f32 = u_xlat14.x;
        let x_1230 : f32 = u_xlat56.x;
        let x_1233 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1228 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec9;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat56.x = x_1249;
        let x_1252 : f32 = u_xlat14.y;
        let x_1254 : f32 = u_xlat56.x;
        let x_1257 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1252 * x_1254) + x_1257);
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.z, x_1261.w);
        let x_1264 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec10;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat56.x = x_1273;
        let x_1276 : f32 = u_xlat14.z;
        let x_1278 : f32 = u_xlat56.x;
        let x_1281 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1276 * x_1278) + x_1281);
        let x_1285 : vec4<f32> = u_xlat8;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec11;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat56.x = x_1297;
        let x_1300 : f32 = u_xlat14.w;
        let x_1302 : f32 = u_xlat56.x;
        let x_1305 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1300 * x_1302) + x_1305);
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec12;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat56.x = x_1321;
        let x_1324 : f32 = u_xlat6.x;
        let x_1326 : f32 = u_xlat56.x;
        let x_1329 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1324 * x_1326) + x_1329);
      } else {
        let x_1332 : vec4<f32> = vs_TEXCOORD8;
        let x_1335 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.z, x_1335.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1339 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1343 : vec2<f32> = floor(vec2<f32>(x_1341.x, x_1341.y));
        let x_1344 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1343.x, x_1343.y, x_1344.z, x_1344.w);
        let x_1346 : vec4<f32> = vs_TEXCOORD8;
        let x_1349 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1349.z, x_1349.w)) + -(vec2<f32>(x_1352.x, x_1352.y)));
        let x_1356 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1356.x, x_1356.x, x_1356.y, x_1356.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1359 : vec4<f32> = u_xlat7;
        let x_1361 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1359.x, x_1359.x, x_1359.z, x_1359.z) * vec4<f32>(x_1361.x, x_1361.x, x_1361.z, x_1361.z));
        let x_1364 : vec4<f32> = u_xlat8;
        let x_1368 : vec2<f32> = (vec2<f32>(x_1364.y, x_1364.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1369.x, x_1368.x, x_1369.z, x_1368.y);
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1374 : vec2<f32> = u_xlat56;
        let x_1376 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1374));
        let x_1377 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1376.x, x_1377.y, x_1376.y, x_1377.w);
        let x_1379 : vec2<f32> = u_xlat56;
        let x_1381 : vec2<f32> = (-(x_1379) + vec2<f32>(1.0f, 1.0f));
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1384, vec2<f32>(0.0f, 0.0f));
        let x_1386 : vec2<f32> = u_xlat58;
        let x_1388 : vec2<f32> = u_xlat58;
        let x_1390 : vec4<f32> = u_xlat8;
        let x_1392 : vec2<f32> = ((-(x_1386) * x_1388) + vec2<f32>(x_1390.x, x_1390.y));
        let x_1393 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
        let x_1395 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1395, vec2<f32>(0.0f, 0.0f));
        let x_1398 : vec2<f32> = u_xlat58;
        let x_1400 : vec2<f32> = u_xlat58;
        let x_1402 : vec4<f32> = u_xlat7;
        let x_1404 : vec2<f32> = ((-(x_1398) * x_1400) + vec2<f32>(x_1402.y, x_1402.w));
        let x_1405 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1404.x, x_1405.y, x_1404.y);
        let x_1407 : vec4<f32> = u_xlat8;
        let x_1410 : vec2<f32> = (vec2<f32>(x_1407.x, x_1407.y) + vec2<f32>(2.0f, 2.0f));
        let x_1411 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1413 : vec3<f32> = u_xlat32;
        let x_1415 : vec2<f32> = (vec2<f32>(x_1413.x, x_1413.z) + vec2<f32>(2.0f, 2.0f));
        let x_1416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1416.x, x_1415.x, x_1416.z, x_1415.y);
        let x_1419 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1419 * 0.08163200318813323975f);
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1426 : vec3<f32> = (vec3<f32>(x_1423.z, x_1423.x, x_1423.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1432 : vec2<f32> = (vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1433 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1432.x, x_1432.y, x_1433.z, x_1433.w);
        let x_1436 : f32 = u_xlat11.y;
        u_xlat10.x = x_1436;
        let x_1438 : vec2<f32> = u_xlat56;
        let x_1445 : vec2<f32> = ((vec2<f32>(x_1438.x, x_1438.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1446.x, x_1445.x, x_1446.z, x_1445.y);
        let x_1448 : vec2<f32> = u_xlat56;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1453 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1452.x, x_1453.y, x_1452.y, x_1453.w);
        let x_1456 : f32 = u_xlat7.x;
        u_xlat8.y = x_1456;
        let x_1459 : f32 = u_xlat9.y;
        u_xlat8.w = x_1459;
        let x_1461 : vec4<f32> = u_xlat8;
        let x_1462 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1461 + x_1462);
        let x_1464 : vec2<f32> = u_xlat56;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.y, x_1464.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1468 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1468.x, x_1467.x, x_1468.z, x_1467.y);
        let x_1470 : vec2<f32> = u_xlat56;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1470.y, x_1470.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1474 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1474.w);
        let x_1477 : f32 = u_xlat7.y;
        u_xlat9.y = x_1477;
        let x_1479 : vec4<f32> = u_xlat9;
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1479 + x_1480);
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1483 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1482 / x_1483);
        let x_1485 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1485 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1491 / x_1492);
        let x_1494 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1494 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1499 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1496.w, x_1496.x, x_1496.y, x_1496.z) * vec4<f32>(x_1499.x, x_1499.x, x_1499.x, x_1499.x));
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1505 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1502.x, x_1502.w, x_1502.y, x_1502.z) * vec4<f32>(x_1505.y, x_1505.y, x_1505.y, x_1505.y));
        let x_1508 : vec4<f32> = u_xlat8;
        let x_1509 : vec3<f32> = vec3<f32>(x_1508.y, x_1508.z, x_1508.w);
        let x_1510 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1509.x, x_1510.y, x_1509.y, x_1509.z);
        let x_1513 : f32 = u_xlat9.x;
        u_xlat11.y = x_1513;
        let x_1515 : vec4<f32> = u_xlat6;
        let x_1518 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1521 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.y) * vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y)) + vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1521.y));
        let x_1524 : vec4<f32> = u_xlat6;
        let x_1527 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1530 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1527.x, x_1527.y)) + vec2<f32>(x_1530.w, x_1530.y));
        let x_1534 : f32 = u_xlat11.y;
        u_xlat8.y = x_1534;
        let x_1537 : f32 = u_xlat9.z;
        u_xlat11.y = x_1537;
        let x_1539 : vec4<f32> = u_xlat6;
        let x_1542 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y) * vec4<f32>(x_1542.x, x_1542.y, x_1542.x, x_1542.y)) + vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1545.y));
        let x_1548 : vec4<f32> = u_xlat6;
        let x_1551 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1556 : vec2<f32> = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1551.x, x_1551.y)) + vec2<f32>(x_1554.w, x_1554.y));
        let x_1557 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1556.x, x_1556.y, x_1557.z, x_1557.w);
        let x_1560 : f32 = u_xlat11.y;
        u_xlat8.z = x_1560;
        let x_1563 : vec4<f32> = u_xlat6;
        let x_1566 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1569 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.y) * vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.y)) + vec4<f32>(x_1569.x, x_1569.y, x_1569.x, x_1569.z));
        let x_1573 : f32 = u_xlat9.w;
        u_xlat11.y = x_1573;
        let x_1576 : vec4<f32> = u_xlat6;
        let x_1579 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1582.y));
        let x_1586 : vec4<f32> = u_xlat6;
        let x_1589 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1592 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1589.x, x_1589.y)) + vec2<f32>(x_1592.w, x_1592.y));
        let x_1596 : f32 = u_xlat11.y;
        u_xlat8.w = x_1596;
        let x_1599 : vec4<f32> = u_xlat6;
        let x_1602 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1605 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1605.x, x_1605.w));
        let x_1608 : vec4<f32> = u_xlat11;
        let x_1609 : vec3<f32> = vec3<f32>(x_1608.x, x_1608.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1609.x, x_1610.y, x_1609.y, x_1609.z);
        let x_1612 : vec4<f32> = u_xlat6;
        let x_1615 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1612.x, x_1612.y, x_1612.x, x_1612.y) * vec4<f32>(x_1615.x, x_1615.y, x_1615.x, x_1615.y)) + vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1618.y));
        let x_1622 : vec4<f32> = u_xlat6;
        let x_1625 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1628 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1622.x, x_1622.y) * vec2<f32>(x_1625.x, x_1625.y)) + vec2<f32>(x_1628.w, x_1628.y));
        let x_1632 : f32 = u_xlat8.x;
        u_xlat9.x = x_1632;
        let x_1634 : vec4<f32> = u_xlat6;
        let x_1637 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat9;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.x, x_1640.y));
        let x_1643 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1642.x, x_1642.y, x_1643.z, x_1643.w);
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1648 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1646.x, x_1646.x, x_1646.x, x_1646.x) * x_1648);
        let x_1651 : vec4<f32> = u_xlat7;
        let x_1653 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1651.y, x_1651.y, x_1651.y, x_1651.y) * x_1653);
        let x_1656 : vec4<f32> = u_xlat7;
        let x_1658 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1656.z, x_1656.z, x_1656.z, x_1656.z) * x_1658);
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1662 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1660.w, x_1660.w, x_1660.w, x_1660.w) * x_1662);
        let x_1665 : vec4<f32> = u_xlat12;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
        let x_1668 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec13;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat8.x = x_1677;
        let x_1680 : vec4<f32> = u_xlat12;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.z, x_1680.w);
        let x_1683 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1691 : vec3<f32> = txVec14;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1691.xy, x_1691.z);
        u_xlat83 = x_1693;
        let x_1694 : f32 = u_xlat83;
        let x_1696 : f32 = u_xlat17.y;
        u_xlat83 = (x_1694 * x_1696);
        let x_1699 : f32 = u_xlat17.x;
        let x_1701 : f32 = u_xlat8.x;
        let x_1703 : f32 = u_xlat83;
        u_xlat8.x = ((x_1699 * x_1701) + x_1703);
        let x_1707 : vec2<f32> = u_xlat56;
        let x_1709 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec15;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1716.xy, x_1716.z);
        u_xlat56.x = x_1718;
        let x_1721 : f32 = u_xlat17.z;
        let x_1723 : f32 = u_xlat56.x;
        let x_1726 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1721 * x_1723) + x_1726);
        let x_1730 : vec4<f32> = u_xlat15;
        let x_1731 : vec2<f32> = vec2<f32>(x_1730.x, x_1730.y);
        let x_1733 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1741 : vec3<f32> = txVec16;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1741.xy, x_1741.z);
        u_xlat81 = x_1743;
        let x_1745 : f32 = u_xlat17.w;
        let x_1746 : f32 = u_xlat81;
        let x_1749 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1745 * x_1746) + x_1749);
        let x_1753 : vec4<f32> = u_xlat13;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec17;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1763.xy, x_1763.z);
        u_xlat81 = x_1765;
        let x_1767 : f32 = u_xlat18.x;
        let x_1768 : f32 = u_xlat81;
        let x_1771 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1767 * x_1768) + x_1771);
        let x_1775 : vec4<f32> = u_xlat13;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.z, x_1775.w);
        let x_1778 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec18;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1785.xy, x_1785.z);
        u_xlat81 = x_1787;
        let x_1789 : f32 = u_xlat18.y;
        let x_1790 : f32 = u_xlat81;
        let x_1793 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1789 * x_1790) + x_1793);
        let x_1797 : vec4<f32> = u_xlat14;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
        let x_1800 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec19;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1807.xy, x_1807.z);
        u_xlat81 = x_1809;
        let x_1811 : f32 = u_xlat18.z;
        let x_1812 : f32 = u_xlat81;
        let x_1815 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1811 * x_1812) + x_1815);
        let x_1819 : vec4<f32> = u_xlat15;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec20;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat81 = x_1831;
        let x_1833 : f32 = u_xlat18.w;
        let x_1834 : f32 = u_xlat81;
        let x_1837 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1833 * x_1834) + x_1837);
        let x_1841 : vec4<f32> = u_xlat16;
        let x_1842 : vec2<f32> = vec2<f32>(x_1841.x, x_1841.y);
        let x_1844 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
        let x_1851 : vec3<f32> = txVec21;
        let x_1853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1851.xy, x_1851.z);
        u_xlat81 = x_1853;
        let x_1855 : f32 = u_xlat19.x;
        let x_1856 : f32 = u_xlat81;
        let x_1859 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1855 * x_1856) + x_1859);
        let x_1863 : vec4<f32> = u_xlat16;
        let x_1864 : vec2<f32> = vec2<f32>(x_1863.z, x_1863.w);
        let x_1866 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
        let x_1873 : vec3<f32> = txVec22;
        let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1873.xy, x_1873.z);
        u_xlat81 = x_1875;
        let x_1877 : f32 = u_xlat19.y;
        let x_1878 : f32 = u_xlat81;
        let x_1881 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1877 * x_1878) + x_1881);
        let x_1885 : vec2<f32> = u_xlat33;
        let x_1887 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1894 : vec3<f32> = txVec23;
        let x_1896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1894.xy, x_1894.z);
        u_xlat81 = x_1896;
        let x_1898 : f32 = u_xlat19.z;
        let x_1899 : f32 = u_xlat81;
        let x_1902 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1898 * x_1899) + x_1902);
        let x_1906 : vec2<f32> = u_xlat64;
        let x_1908 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec24;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat81 = x_1917;
        let x_1919 : f32 = u_xlat19.w;
        let x_1920 : f32 = u_xlat81;
        let x_1923 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1919 * x_1920) + x_1923);
        let x_1927 : vec4<f32> = u_xlat11;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
        let x_1930 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec25;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1937.xy, x_1937.z);
        u_xlat81 = x_1939;
        let x_1941 : f32 = u_xlat7.x;
        let x_1942 : f32 = u_xlat81;
        let x_1945 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1941 * x_1942) + x_1945);
        let x_1949 : vec4<f32> = u_xlat11;
        let x_1950 : vec2<f32> = vec2<f32>(x_1949.z, x_1949.w);
        let x_1952 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
        let x_1959 : vec3<f32> = txVec26;
        let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1959.xy, x_1959.z);
        u_xlat81 = x_1961;
        let x_1963 : f32 = u_xlat7.y;
        let x_1964 : f32 = u_xlat81;
        let x_1967 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1963 * x_1964) + x_1967);
        let x_1971 : vec2<f32> = u_xlat59;
        let x_1973 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
        let x_1980 : vec3<f32> = txVec27;
        let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1980.xy, x_1980.z);
        u_xlat81 = x_1982;
        let x_1984 : f32 = u_xlat7.z;
        let x_1985 : f32 = u_xlat81;
        let x_1988 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1984 * x_1985) + x_1988);
        let x_1992 : vec4<f32> = u_xlat6;
        let x_1993 : vec2<f32> = vec2<f32>(x_1992.x, x_1992.y);
        let x_1995 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec28;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2002.xy, x_2002.z);
        u_xlat6.x = x_2004;
        let x_2007 : f32 = u_xlat7.w;
        let x_2009 : f32 = u_xlat6.x;
        let x_2012 : f32 = u_xlat56.x;
        u_xlat80 = ((x_2007 * x_2009) + x_2012);
      }
    }
  } else {
    let x_2016 : vec4<f32> = vs_TEXCOORD8;
    let x_2017 : vec2<f32> = vec2<f32>(x_2016.x, x_2016.y);
    let x_2019 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2017.x, x_2017.y, x_2019);
    let x_2026 : vec3<f32> = txVec29;
    let x_2028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2026.xy, x_2026.z);
    u_xlat80 = x_2028;
  }
  let x_2030 : f32 = x_757.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2030) + 1.0f);
  let x_2034 : f32 = u_xlat80;
  let x_2036 : f32 = x_757.x_MainLightShadowParams.x;
  let x_2039 : f32 = u_xlat6.x;
  u_xlat80 = ((x_2034 * x_2036) + x_2039);
  let x_2042 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2042);
  let x_2046 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (x_2046 >= 1.0f);
  let x_2048 : bool = u_xlatb31;
  let x_2049 : bool = u_xlatb6;
  u_xlatb6 = (x_2048 | x_2049);
  let x_2051 : bool = u_xlatb6;
  let x_2052 : f32 = u_xlat80;
  u_xlat80 = select(x_2052, 1.0f, x_2051);
  let x_2054 : vec3<f32> = vs_TEXCOORD7;
  let x_2056 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2058 : vec3<f32> = (x_2054 + -(x_2056));
  let x_2059 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
  let x_2061 : vec4<f32> = u_xlat6;
  let x_2063 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2061.x, x_2061.y, x_2061.z), vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
  let x_2068 : f32 = u_xlat6.x;
  let x_2070 : f32 = x_757.x_MainLightShadowParams.z;
  let x_2073 : f32 = x_757.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2068 * x_2070) + x_2073);
  let x_2077 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2077, 0.0f, 1.0f);
  let x_2080 : f32 = u_xlat80;
  u_xlat56.x = (-(x_2080) + 1.0f);
  let x_2085 : f32 = u_xlat31.x;
  let x_2087 : f32 = u_xlat56.x;
  let x_2089 : f32 = u_xlat80;
  u_xlat80 = ((x_2085 * x_2087) + x_2089);
  let x_2091 : vec4<f32> = u_xlat1;
  let x_2094 : vec4<f32> = u_xlat2;
  u_xlat31.x = dot(-(vec3<f32>(x_2091.x, x_2091.y, x_2091.z)), vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
  let x_2099 : f32 = u_xlat31.x;
  let x_2101 : f32 = u_xlat31.x;
  u_xlat31.x = (x_2099 + x_2101);
  let x_2104 : vec4<f32> = u_xlat2;
  let x_2106 : vec3<f32> = u_xlat31;
  let x_2110 : vec4<f32> = u_xlat1;
  u_xlat31 = ((vec3<f32>(x_2104.x, x_2104.y, x_2104.z) * -(vec3<f32>(x_2106.x, x_2106.x, x_2106.x))) + -(vec3<f32>(x_2110.x, x_2110.y, x_2110.z)));
  let x_2114 : vec4<f32> = u_xlat2;
  let x_2116 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec3<f32>(x_2114.x, x_2114.y, x_2114.z), vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
  let x_2121 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_2121, 0.0f, 1.0f);
  let x_2125 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_2125) + 1.0f);
  let x_2130 : f32 = u_xlat7.x;
  let x_2132 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2130 * x_2132);
  let x_2136 : f32 = u_xlat7.x;
  let x_2138 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2136 * x_2138);
  let x_2142 : f32 = u_xlat0.x;
  u_xlat32.x = ((-(x_2142) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2150 : f32 = u_xlat0.x;
  let x_2152 : f32 = u_xlat32.x;
  u_xlat0.x = (x_2150 * x_2152);
  let x_2156 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2156 * 6.0f);
  let x_2168 : vec3<f32> = u_xlat31;
  let x_2170 : f32 = u_xlat0.x;
  let x_2171 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2168, x_2170);
  u_xlat8 = x_2171;
  let x_2173 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2173 + -1.0f);
  let x_2177 : f32 = x_613.unity_SpecCube0_HDR.w;
  let x_2179 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2177 * x_2179) + 1.0f);
  let x_2184 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2184, 0.0f);
  let x_2188 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2188);
  let x_2192 : f32 = u_xlat0.x;
  let x_2194 : f32 = x_613.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2192 * x_2194);
  let x_2198 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2198);
  let x_2202 : f32 = u_xlat0.x;
  let x_2204 : f32 = x_613.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2202 * x_2204);
  let x_2207 : vec4<f32> = u_xlat8;
  let x_2209 : vec3<f32> = u_xlat0;
  u_xlat31 = (vec3<f32>(x_2207.x, x_2207.y, x_2207.z) * vec3<f32>(x_2209.x, x_2209.x, x_2209.x));
  let x_2212 : f32 = u_xlat50;
  let x_2214 : f32 = u_xlat50;
  let x_2218 : vec2<f32> = ((vec2<f32>(x_2212, x_2212) * vec2<f32>(x_2214, x_2214)) + vec2<f32>(-1.0f, 1.0f));
  let x_2219 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2218.x, x_2219.y, x_2218.y);
  let x_2222 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2222);
  let x_2224 : vec4<f32> = u_xlat5;
  let x_2227 : f32 = u_xlat78;
  u_xlat32 = (-(vec3<f32>(x_2224.x, x_2224.y, x_2224.z)) + vec3<f32>(x_2227, x_2227, x_2227));
  let x_2230 : vec4<f32> = u_xlat7;
  let x_2232 : vec3<f32> = u_xlat32;
  let x_2234 : vec4<f32> = u_xlat5;
  let x_2236 : vec3<f32> = ((vec3<f32>(x_2230.x, x_2230.x, x_2230.x) * x_2232) + vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2237 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
  let x_2239 : f32 = u_xlat50;
  let x_2241 : vec4<f32> = u_xlat7;
  let x_2243 : vec3<f32> = (vec3<f32>(x_2239, x_2239, x_2239) * vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2244 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2243.x, x_2243.y, x_2243.z, x_2244.w);
  let x_2246 : vec3<f32> = u_xlat31;
  let x_2247 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2246 * vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
  let x_2250 : vec4<f32> = u_xlat3;
  let x_2252 : vec4<f32> = u_xlat4;
  let x_2255 : vec3<f32> = u_xlat31;
  let x_2256 : vec3<f32> = ((vec3<f32>(x_2250.x, x_2250.y, x_2250.z) * vec3<f32>(x_2252.x, x_2252.y, x_2252.z)) + x_2255);
  let x_2257 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2259 : f32 = u_xlat80;
  let x_2261 : f32 = x_613.unity_LightData.z;
  u_xlat50 = (x_2259 * x_2261);
  let x_2263 : vec4<f32> = u_xlat2;
  let x_2266 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat78 = dot(vec3<f32>(x_2263.x, x_2263.y, x_2263.z), vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
  let x_2269 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2269, 0.0f, 1.0f);
  let x_2271 : f32 = u_xlat50;
  let x_2272 : f32 = u_xlat78;
  u_xlat50 = (x_2271 * x_2272);
  let x_2274 : f32 = u_xlat50;
  let x_2277 : vec4<f32> = x_113.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2274, x_2274, x_2274) * vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
  let x_2280 : vec4<f32> = u_xlat1;
  let x_2283 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2285 : vec3<f32> = (vec3<f32>(x_2280.x, x_2280.y, x_2280.z) + vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
  let x_2286 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
  let x_2288 : vec4<f32> = u_xlat7;
  let x_2290 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2288.x, x_2288.y, x_2288.z), vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
  let x_2293 : f32 = u_xlat50;
  u_xlat50 = max(x_2293, 1.17549435e-38f);
  let x_2296 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2296);
  let x_2298 : f32 = u_xlat50;
  let x_2300 : vec4<f32> = u_xlat7;
  let x_2302 : vec3<f32> = (vec3<f32>(x_2298, x_2298, x_2298) * vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
  let x_2303 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
  let x_2305 : vec4<f32> = u_xlat2;
  let x_2307 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2305.x, x_2305.y, x_2305.z), vec3<f32>(x_2307.x, x_2307.y, x_2307.z));
  let x_2310 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2310, 0.0f, 1.0f);
  let x_2313 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2315 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2313.x, x_2313.y, x_2313.z), vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
  let x_2318 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2318, 0.0f, 1.0f);
  let x_2320 : f32 = u_xlat50;
  let x_2321 : f32 = u_xlat50;
  u_xlat50 = (x_2320 * x_2321);
  let x_2323 : f32 = u_xlat50;
  let x_2325 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2323 * x_2325) + 1.00001001358032226562f);
  let x_2329 : f32 = u_xlat78;
  let x_2330 : f32 = u_xlat78;
  u_xlat78 = (x_2329 * x_2330);
  let x_2332 : f32 = u_xlat50;
  let x_2333 : f32 = u_xlat50;
  u_xlat50 = (x_2332 * x_2333);
  let x_2335 : f32 = u_xlat78;
  u_xlat78 = max(x_2335, 0.10000000149011611938f);
  let x_2338 : f32 = u_xlat50;
  let x_2339 : f32 = u_xlat78;
  u_xlat50 = (x_2338 * x_2339);
  let x_2341 : f32 = u_xlat79;
  let x_2342 : f32 = u_xlat50;
  u_xlat50 = (x_2341 * x_2342);
  let x_2344 : f32 = u_xlat77;
  let x_2345 : f32 = u_xlat50;
  u_xlat50 = (x_2344 / x_2345);
  let x_2347 : vec4<f32> = u_xlat5;
  let x_2349 : f32 = u_xlat50;
  let x_2352 : vec4<f32> = u_xlat4;
  let x_2354 : vec3<f32> = ((vec3<f32>(x_2347.x, x_2347.y, x_2347.z) * vec3<f32>(x_2349, x_2349, x_2349)) + vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
  let x_2355 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
  let x_2357 : vec3<f32> = u_xlat31;
  let x_2358 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2357 * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2362 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2364 : f32 = x_613.unity_LightData.y;
  u_xlat50 = min(x_2362, x_2364);
  let x_2368 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2368));
  let x_2372 : f32 = u_xlat6.x;
  let x_2374 : f32 = x_757.x_AdditionalShadowFadeParams.x;
  let x_2377 : f32 = x_757.x_AdditionalShadowFadeParams.y;
  u_xlat78 = ((x_2372 * x_2374) + x_2377);
  let x_2379 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2379, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2391 : u32 = u_xlatu_loop_1;
    let x_2392 : u32 = u_xlatu50;
    if ((x_2391 < x_2392)) {
    } else {
      break;
    }
    let x_2395 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2395 >> 2u);
    let x_2399 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2399 & 3u));
    let x_2402 : u32 = u_xlatu6;
    let x_2405 : vec4<f32> = x_613.unity_LightIndices[bitcast<i32>(x_2402)];
    let x_2415 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2420 : vec4<u32> = indexable[x_2415];
    u_xlat6.x = dot(x_2405, bitcast<vec4<f32>>(x_2420));
    let x_2426 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2426);
    let x_2428 : vec3<f32> = vs_TEXCOORD7;
    let x_2439 : i32 = u_xlati6;
    let x_2441 : vec4<f32> = x_2438.x_AdditionalLightsPosition[x_2439];
    let x_2444 : i32 = u_xlati6;
    let x_2446 : vec4<f32> = x_2438.x_AdditionalLightsPosition[x_2444];
    let x_2448 : vec3<f32> = ((-(x_2428) * vec3<f32>(x_2441.w, x_2441.w, x_2441.w)) + vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
    let x_2449 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
    let x_2452 : vec4<f32> = u_xlat8;
    let x_2454 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2452.x, x_2452.y, x_2452.z), vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
    let x_2457 : f32 = u_xlat82;
    u_xlat82 = max(x_2457, 0.00006103515625f);
    let x_2459 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2459);
    let x_2461 : f32 = u_xlat83;
    let x_2463 : vec4<f32> = u_xlat8;
    let x_2465 : vec3<f32> = (vec3<f32>(x_2461, x_2461, x_2461) * vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
    let x_2466 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
    let x_2469 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2469);
    let x_2471 : f32 = u_xlat82;
    let x_2472 : i32 = u_xlati6;
    let x_2474 : f32 = x_2438.x_AdditionalLightsAttenuation[x_2472].x;
    u_xlat82 = (x_2471 * x_2474);
    let x_2476 : f32 = u_xlat82;
    let x_2478 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2476) * x_2478) + 1.0f);
    let x_2481 : f32 = u_xlat82;
    u_xlat82 = max(x_2481, 0.0f);
    let x_2483 : f32 = u_xlat82;
    let x_2484 : f32 = u_xlat82;
    u_xlat82 = (x_2483 * x_2484);
    let x_2486 : f32 = u_xlat82;
    let x_2487 : f32 = u_xlat84;
    u_xlat82 = (x_2486 * x_2487);
    let x_2489 : i32 = u_xlati6;
    let x_2491 : vec4<f32> = x_2438.x_AdditionalLightsSpotDir[x_2489];
    let x_2493 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2491.x, x_2491.y, x_2491.z), vec3<f32>(x_2493.x, x_2493.y, x_2493.z));
    let x_2496 : f32 = u_xlat84;
    let x_2497 : i32 = u_xlati6;
    let x_2499 : f32 = x_2438.x_AdditionalLightsAttenuation[x_2497].z;
    let x_2501 : i32 = u_xlati6;
    let x_2503 : f32 = x_2438.x_AdditionalLightsAttenuation[x_2501].w;
    u_xlat84 = ((x_2496 * x_2499) + x_2503);
    let x_2505 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2505, 0.0f, 1.0f);
    let x_2507 : f32 = u_xlat84;
    let x_2508 : f32 = u_xlat84;
    u_xlat84 = (x_2507 * x_2508);
    let x_2510 : f32 = u_xlat82;
    let x_2511 : f32 = u_xlat84;
    u_xlat82 = (x_2510 * x_2511);
    let x_2514 : i32 = u_xlati6;
    let x_2516 : f32 = x_757.x_AdditionalShadowParams[x_2514].w;
    u_xlati84 = i32(x_2516);
    let x_2521 : i32 = u_xlati84;
    u_xlatb10.x = (x_2521 >= 0i);
    let x_2525 : bool = u_xlatb10.x;
    if (x_2525) {
      let x_2529 : i32 = u_xlati6;
      let x_2531 : f32 = x_757.x_AdditionalShadowParams[x_2529].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2531, x_2531, x_2531, x_2531))));
      let x_2537 : bool = u_xlatb10.x;
      if (x_2537) {
        let x_2540 : vec4<f32> = u_xlat9;
        let x_2543 : vec4<f32> = u_xlat9;
        let x_2546 : vec4<bool> = (abs(vec4<f32>(x_2540.z, x_2540.z, x_2540.y, x_2540.z)) >= abs(vec4<f32>(x_2543.x, x_2543.y, x_2543.x, x_2543.x)));
        u_xlatb10 = vec3<bool>(x_2546.x, x_2546.y, x_2546.z);
        let x_2549 : bool = u_xlatb10.y;
        let x_2551 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2549 & x_2551);
        let x_2555 : vec4<f32> = u_xlat9;
        let x_2558 : vec4<bool> = (-(vec4<f32>(x_2555.z, x_2555.y, x_2555.x, x_2555.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2558.x, x_2558.y, x_2558.z);
        let x_2562 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2562);
        let x_2567 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2567);
        let x_2572 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2572);
        let x_2577 : bool = u_xlatb10.z;
        if (x_2577) {
          let x_2583 : f32 = u_xlat35.z;
          x_2579 = x_2583;
        } else {
          let x_2586 : f32 = u_xlat11.x;
          x_2579 = x_2586;
        }
        let x_2587 : f32 = x_2579;
        u_xlat60 = x_2587;
        let x_2589 : bool = u_xlatb10.x;
        if (x_2589) {
          let x_2594 : f32 = u_xlat35.x;
          x_2590 = x_2594;
        } else {
          let x_2596 : f32 = u_xlat60;
          x_2590 = x_2596;
        }
        let x_2597 : f32 = x_2590;
        u_xlat10.x = x_2597;
        let x_2599 : i32 = u_xlati6;
        let x_2601 : f32 = x_757.x_AdditionalShadowParams[x_2599].w;
        u_xlat35.x = trunc(x_2601);
        let x_2605 : f32 = u_xlat10.x;
        let x_2607 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2605 + x_2607);
        let x_2611 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2611);
      }
      let x_2613 : i32 = u_xlati84;
      u_xlati84 = (x_2613 << bitcast<u32>(2i));
      let x_2615 : vec3<f32> = vs_TEXCOORD7;
      let x_2617 : i32 = u_xlati84;
      let x_2620 : i32 = u_xlati84;
      let x_2624 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[((x_2617 + 1i) / 4i)][((x_2620 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2615.y, x_2615.y, x_2615.y, x_2615.y) * x_2624);
      let x_2626 : i32 = u_xlati84;
      let x_2628 : i32 = u_xlati84;
      let x_2631 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[(x_2626 / 4i)][(x_2628 % 4i)];
      let x_2632 : vec3<f32> = vs_TEXCOORD7;
      let x_2635 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2631 * vec4<f32>(x_2632.x, x_2632.x, x_2632.x, x_2632.x)) + x_2635);
      let x_2637 : i32 = u_xlati84;
      let x_2640 : i32 = u_xlati84;
      let x_2644 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[((x_2637 + 2i) / 4i)][((x_2640 + 2i) % 4i)];
      let x_2645 : vec3<f32> = vs_TEXCOORD7;
      let x_2648 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2644 * vec4<f32>(x_2645.z, x_2645.z, x_2645.z, x_2645.z)) + x_2648);
      let x_2650 : vec4<f32> = u_xlat10;
      let x_2651 : i32 = u_xlati84;
      let x_2654 : i32 = u_xlati84;
      let x_2658 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[((x_2651 + 3i) / 4i)][((x_2654 + 3i) % 4i)];
      u_xlat10 = (x_2650 + x_2658);
      let x_2660 : vec4<f32> = u_xlat10;
      let x_2662 : vec4<f32> = u_xlat10;
      let x_2664 : vec3<f32> = (vec3<f32>(x_2660.x, x_2660.y, x_2660.z) / vec3<f32>(x_2662.w, x_2662.w, x_2662.w));
      let x_2665 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
      let x_2668 : i32 = u_xlati6;
      let x_2670 : f32 = x_757.x_AdditionalShadowParams[x_2668].y;
      u_xlatb84 = (0.0f < x_2670);
      let x_2672 : bool = u_xlatb84;
      if (x_2672) {
        let x_2675 : i32 = u_xlati6;
        let x_2677 : f32 = x_757.x_AdditionalShadowParams[x_2675].y;
        u_xlatb84 = (1.0f == x_2677);
        let x_2679 : bool = u_xlatb84;
        if (x_2679) {
          let x_2682 : vec4<f32> = u_xlat10;
          let x_2685 : vec4<f32> = x_757.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2682.x, x_2682.y, x_2682.x, x_2682.y) + x_2685);
          let x_2688 : vec4<f32> = u_xlat11;
          let x_2689 : vec2<f32> = vec2<f32>(x_2688.x, x_2688.y);
          let x_2691 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
          let x_2699 : vec3<f32> = txVec30;
          let x_2701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2699.xy, x_2699.z);
          u_xlat12.x = x_2701;
          let x_2704 : vec4<f32> = u_xlat11;
          let x_2705 : vec2<f32> = vec2<f32>(x_2704.z, x_2704.w);
          let x_2707 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
          let x_2714 : vec3<f32> = txVec31;
          let x_2716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2714.xy, x_2714.z);
          u_xlat12.y = x_2716;
          let x_2718 : vec4<f32> = u_xlat10;
          let x_2721 : vec4<f32> = x_757.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2718.x, x_2718.y, x_2718.x, x_2718.y) + x_2721);
          let x_2724 : vec4<f32> = u_xlat11;
          let x_2725 : vec2<f32> = vec2<f32>(x_2724.x, x_2724.y);
          let x_2727 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2725.x, x_2725.y, x_2727);
          let x_2734 : vec3<f32> = txVec32;
          let x_2736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2734.xy, x_2734.z);
          u_xlat12.z = x_2736;
          let x_2739 : vec4<f32> = u_xlat11;
          let x_2740 : vec2<f32> = vec2<f32>(x_2739.z, x_2739.w);
          let x_2742 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
          let x_2749 : vec3<f32> = txVec33;
          let x_2751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2749.xy, x_2749.z);
          u_xlat12.w = x_2751;
          let x_2753 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2753, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2757 : i32 = u_xlati6;
          let x_2759 : f32 = x_757.x_AdditionalShadowParams[x_2757].y;
          u_xlatb85 = (2.0f == x_2759);
          let x_2761 : bool = u_xlatb85;
          if (x_2761) {
            let x_2764 : vec4<f32> = u_xlat10;
            let x_2767 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2770 : vec2<f32> = ((vec2<f32>(x_2764.x, x_2764.y) * vec2<f32>(x_2767.z, x_2767.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2771 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat11;
            let x_2775 : vec2<f32> = floor(vec2<f32>(x_2773.x, x_2773.y));
            let x_2776 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2779 : vec4<f32> = u_xlat10;
            let x_2782 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2785 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(x_2782.z, x_2782.w)) + -(vec2<f32>(x_2785.x, x_2785.y)));
            let x_2789 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2789.x, x_2789.x, x_2789.y, x_2789.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2792 : vec4<f32> = u_xlat12;
            let x_2794 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2792.x, x_2792.x, x_2792.z, x_2792.z) * vec4<f32>(x_2794.x, x_2794.x, x_2794.z, x_2794.z));
            let x_2797 : vec4<f32> = u_xlat13;
            let x_2799 : vec2<f32> = (vec2<f32>(x_2797.y, x_2797.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2800 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2799.x, x_2800.y, x_2799.y, x_2800.w);
            let x_2802 : vec4<f32> = u_xlat13;
            let x_2805 : vec2<f32> = u_xlat61;
            let x_2807 : vec2<f32> = ((vec2<f32>(x_2802.x, x_2802.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2805));
            let x_2808 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2807.x, x_2807.y, x_2808.z, x_2808.w);
            let x_2811 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2811) + vec2<f32>(1.0f, 1.0f));
            let x_2814 : vec2<f32> = u_xlat61;
            let x_2815 : vec2<f32> = min(x_2814, vec2<f32>(0.0f, 0.0f));
            let x_2816 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2815.x, x_2815.y, x_2816.z, x_2816.w);
            let x_2818 : vec4<f32> = u_xlat14;
            let x_2821 : vec4<f32> = u_xlat14;
            let x_2824 : vec2<f32> = u_xlat63;
            let x_2825 : vec2<f32> = ((-(vec2<f32>(x_2818.x, x_2818.y)) * vec2<f32>(x_2821.x, x_2821.y)) + x_2824);
            let x_2826 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
            let x_2828 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2828, vec2<f32>(0.0f, 0.0f));
            let x_2830 : vec2<f32> = u_xlat61;
            let x_2832 : vec2<f32> = u_xlat61;
            let x_2834 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2830) * x_2832) + vec2<f32>(x_2834.y, x_2834.w));
            let x_2837 : vec4<f32> = u_xlat14;
            let x_2839 : vec2<f32> = (vec2<f32>(x_2837.x, x_2837.y) + vec2<f32>(1.0f, 1.0f));
            let x_2840 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
            let x_2842 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2842 + vec2<f32>(1.0f, 1.0f));
            let x_2844 : vec4<f32> = u_xlat13;
            let x_2846 : vec2<f32> = (vec2<f32>(x_2844.x, x_2844.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2847 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2846.x, x_2846.y, x_2847.z, x_2847.w);
            let x_2849 : vec2<f32> = u_xlat63;
            let x_2850 : vec2<f32> = (x_2849 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2851 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2850.x, x_2850.y, x_2851.z, x_2851.w);
            let x_2853 : vec4<f32> = u_xlat14;
            let x_2855 : vec2<f32> = (vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2856 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2855.x, x_2855.y, x_2856.z, x_2856.w);
            let x_2858 : vec2<f32> = u_xlat61;
            let x_2859 : vec2<f32> = (x_2858 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2860 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2859.x, x_2859.y, x_2860.z, x_2860.w);
            let x_2862 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2862.y, x_2862.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2866 : f32 = u_xlat14.x;
            u_xlat15.z = x_2866;
            let x_2869 : f32 = u_xlat61.x;
            u_xlat15.w = x_2869;
            let x_2872 : f32 = u_xlat16.x;
            u_xlat13.z = x_2872;
            let x_2875 : f32 = u_xlat12.x;
            u_xlat13.w = x_2875;
            let x_2877 : vec4<f32> = u_xlat13;
            let x_2879 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2877.z, x_2877.w, x_2877.x, x_2877.z) + vec4<f32>(x_2879.z, x_2879.w, x_2879.x, x_2879.z));
            let x_2883 : f32 = u_xlat15.y;
            u_xlat14.z = x_2883;
            let x_2886 : f32 = u_xlat61.y;
            u_xlat14.w = x_2886;
            let x_2889 : f32 = u_xlat13.y;
            u_xlat16.z = x_2889;
            let x_2892 : f32 = u_xlat12.z;
            u_xlat16.w = x_2892;
            let x_2894 : vec4<f32> = u_xlat14;
            let x_2896 : vec4<f32> = u_xlat16;
            let x_2898 : vec3<f32> = (vec3<f32>(x_2894.z, x_2894.y, x_2894.w) + vec3<f32>(x_2896.z, x_2896.y, x_2896.w));
            let x_2899 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2899.w);
            let x_2901 : vec4<f32> = u_xlat13;
            let x_2903 : vec4<f32> = u_xlat17;
            let x_2905 : vec3<f32> = (vec3<f32>(x_2901.x, x_2901.z, x_2901.w) / vec3<f32>(x_2903.z, x_2903.w, x_2903.y));
            let x_2906 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2905.x, x_2905.y, x_2905.z, x_2906.w);
            let x_2908 : vec4<f32> = u_xlat13;
            let x_2910 : vec3<f32> = (vec3<f32>(x_2908.x, x_2908.y, x_2908.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2911 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat16;
            let x_2915 : vec4<f32> = u_xlat12;
            let x_2917 : vec3<f32> = (vec3<f32>(x_2913.z, x_2913.y, x_2913.w) / vec3<f32>(x_2915.x, x_2915.y, x_2915.z));
            let x_2918 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
            let x_2920 : vec4<f32> = u_xlat14;
            let x_2922 : vec3<f32> = (vec3<f32>(x_2920.x, x_2920.y, x_2920.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2923 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
            let x_2925 : vec4<f32> = u_xlat13;
            let x_2928 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2930 : vec3<f32> = (vec3<f32>(x_2925.y, x_2925.x, x_2925.z) * vec3<f32>(x_2928.x, x_2928.x, x_2928.x));
            let x_2931 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2930.x, x_2930.y, x_2930.z, x_2931.w);
            let x_2933 : vec4<f32> = u_xlat14;
            let x_2936 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2938 : vec3<f32> = (vec3<f32>(x_2933.x, x_2933.y, x_2933.z) * vec3<f32>(x_2936.y, x_2936.y, x_2936.y));
            let x_2939 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2939.w);
            let x_2942 : f32 = u_xlat14.x;
            u_xlat13.w = x_2942;
            let x_2944 : vec4<f32> = u_xlat11;
            let x_2947 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2950 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2944.x, x_2944.y, x_2944.x, x_2944.y) * vec4<f32>(x_2947.x, x_2947.y, x_2947.x, x_2947.y)) + vec4<f32>(x_2950.y, x_2950.w, x_2950.x, x_2950.w));
            let x_2953 : vec4<f32> = u_xlat11;
            let x_2956 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2959 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2953.x, x_2953.y) * vec2<f32>(x_2956.x, x_2956.y)) + vec2<f32>(x_2959.z, x_2959.w));
            let x_2963 : f32 = u_xlat13.y;
            u_xlat14.w = x_2963;
            let x_2965 : vec4<f32> = u_xlat14;
            let x_2966 : vec2<f32> = vec2<f32>(x_2965.y, x_2965.z);
            let x_2967 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2967.x, x_2966.x, x_2967.z, x_2966.y);
            let x_2969 : vec4<f32> = u_xlat11;
            let x_2972 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2975 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2969.x, x_2969.y, x_2969.x, x_2969.y) * vec4<f32>(x_2972.x, x_2972.y, x_2972.x, x_2972.y)) + vec4<f32>(x_2975.x, x_2975.y, x_2975.z, x_2975.y));
            let x_2978 : vec4<f32> = u_xlat11;
            let x_2981 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2984 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2978.x, x_2978.y, x_2978.x, x_2978.y) * vec4<f32>(x_2981.x, x_2981.y, x_2981.x, x_2981.y)) + vec4<f32>(x_2984.w, x_2984.y, x_2984.w, x_2984.z));
            let x_2987 : vec4<f32> = u_xlat11;
            let x_2990 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2987.x, x_2987.y, x_2987.x, x_2987.y) * vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.y)) + vec4<f32>(x_2993.x, x_2993.w, x_2993.z, x_2993.w));
            let x_2996 : vec4<f32> = u_xlat12;
            let x_2998 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2996.x, x_2996.x, x_2996.x, x_2996.y) * vec4<f32>(x_2998.z, x_2998.w, x_2998.y, x_2998.z));
            let x_3001 : vec4<f32> = u_xlat12;
            let x_3003 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3001.y, x_3001.y, x_3001.z, x_3001.z) * x_3003);
            let x_3007 : f32 = u_xlat12.z;
            let x_3009 : f32 = u_xlat17.y;
            u_xlat85 = (x_3007 * x_3009);
            let x_3012 : vec4<f32> = u_xlat15;
            let x_3013 : vec2<f32> = vec2<f32>(x_3012.x, x_3012.y);
            let x_3015 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3013.x, x_3013.y, x_3015);
            let x_3022 : vec3<f32> = txVec34;
            let x_3024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3022.xy, x_3022.z);
            u_xlat11.x = x_3024;
            let x_3027 : vec4<f32> = u_xlat15;
            let x_3028 : vec2<f32> = vec2<f32>(x_3027.z, x_3027.w);
            let x_3030 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
            let x_3038 : vec3<f32> = txVec35;
            let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
            u_xlat36 = x_3040;
            let x_3041 : f32 = u_xlat36;
            let x_3043 : f32 = u_xlat18.y;
            u_xlat36 = (x_3041 * x_3043);
            let x_3046 : f32 = u_xlat18.x;
            let x_3048 : f32 = u_xlat11.x;
            let x_3050 : f32 = u_xlat36;
            u_xlat11.x = ((x_3046 * x_3048) + x_3050);
            let x_3054 : vec2<f32> = u_xlat61;
            let x_3056 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3054.x, x_3054.y, x_3056);
            let x_3063 : vec3<f32> = txVec36;
            let x_3065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3063.xy, x_3063.z);
            u_xlat36 = x_3065;
            let x_3067 : f32 = u_xlat18.z;
            let x_3068 : f32 = u_xlat36;
            let x_3071 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3067 * x_3068) + x_3071);
            let x_3075 : vec4<f32> = u_xlat14;
            let x_3076 : vec2<f32> = vec2<f32>(x_3075.x, x_3075.y);
            let x_3078 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3076.x, x_3076.y, x_3078);
            let x_3085 : vec3<f32> = txVec37;
            let x_3087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3085.xy, x_3085.z);
            u_xlat36 = x_3087;
            let x_3089 : f32 = u_xlat18.w;
            let x_3090 : f32 = u_xlat36;
            let x_3093 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3089 * x_3090) + x_3093);
            let x_3097 : vec4<f32> = u_xlat16;
            let x_3098 : vec2<f32> = vec2<f32>(x_3097.x, x_3097.y);
            let x_3100 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3098.x, x_3098.y, x_3100);
            let x_3107 : vec3<f32> = txVec38;
            let x_3109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3107.xy, x_3107.z);
            u_xlat36 = x_3109;
            let x_3111 : f32 = u_xlat19.x;
            let x_3112 : f32 = u_xlat36;
            let x_3115 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3111 * x_3112) + x_3115);
            let x_3119 : vec4<f32> = u_xlat16;
            let x_3120 : vec2<f32> = vec2<f32>(x_3119.z, x_3119.w);
            let x_3122 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3120.x, x_3120.y, x_3122);
            let x_3129 : vec3<f32> = txVec39;
            let x_3131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3129.xy, x_3129.z);
            u_xlat36 = x_3131;
            let x_3133 : f32 = u_xlat19.y;
            let x_3134 : f32 = u_xlat36;
            let x_3137 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3133 * x_3134) + x_3137);
            let x_3141 : vec4<f32> = u_xlat14;
            let x_3142 : vec2<f32> = vec2<f32>(x_3141.z, x_3141.w);
            let x_3144 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec40;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat36 = x_3153;
            let x_3155 : f32 = u_xlat19.z;
            let x_3156 : f32 = u_xlat36;
            let x_3159 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3155 * x_3156) + x_3159);
            let x_3163 : vec4<f32> = u_xlat13;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.x, x_3163.y);
            let x_3166 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec41;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat36 = x_3175;
            let x_3177 : f32 = u_xlat19.w;
            let x_3178 : f32 = u_xlat36;
            let x_3181 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3177 * x_3178) + x_3181);
            let x_3185 : vec4<f32> = u_xlat13;
            let x_3186 : vec2<f32> = vec2<f32>(x_3185.z, x_3185.w);
            let x_3188 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec42;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat36 = x_3197;
            let x_3198 : f32 = u_xlat85;
            let x_3199 : f32 = u_xlat36;
            let x_3202 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3198 * x_3199) + x_3202);
          } else {
            let x_3205 : vec4<f32> = u_xlat10;
            let x_3208 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3211 : vec2<f32> = ((vec2<f32>(x_3205.x, x_3205.y) * vec2<f32>(x_3208.z, x_3208.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3212 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3211.x, x_3211.y, x_3212.z, x_3212.w);
            let x_3214 : vec4<f32> = u_xlat11;
            let x_3216 : vec2<f32> = floor(vec2<f32>(x_3214.x, x_3214.y));
            let x_3217 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3216.x, x_3216.y, x_3217.z, x_3217.w);
            let x_3219 : vec4<f32> = u_xlat10;
            let x_3222 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3225 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3219.x, x_3219.y) * vec2<f32>(x_3222.z, x_3222.w)) + -(vec2<f32>(x_3225.x, x_3225.y)));
            let x_3229 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3229.x, x_3229.x, x_3229.y, x_3229.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3232 : vec4<f32> = u_xlat12;
            let x_3234 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3232.x, x_3232.x, x_3232.z, x_3232.z) * vec4<f32>(x_3234.x, x_3234.x, x_3234.z, x_3234.z));
            let x_3237 : vec4<f32> = u_xlat13;
            let x_3239 : vec2<f32> = (vec2<f32>(x_3237.y, x_3237.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3240 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3240.x, x_3239.x, x_3240.z, x_3239.y);
            let x_3242 : vec4<f32> = u_xlat13;
            let x_3245 : vec2<f32> = u_xlat61;
            let x_3247 : vec2<f32> = ((vec2<f32>(x_3242.x, x_3242.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3245));
            let x_3248 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3247.x, x_3248.y, x_3247.y, x_3248.w);
            let x_3250 : vec2<f32> = u_xlat61;
            let x_3252 : vec2<f32> = (-(x_3250) + vec2<f32>(1.0f, 1.0f));
            let x_3253 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3252.x, x_3252.y, x_3253.z, x_3253.w);
            let x_3255 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3255, vec2<f32>(0.0f, 0.0f));
            let x_3257 : vec2<f32> = u_xlat63;
            let x_3259 : vec2<f32> = u_xlat63;
            let x_3261 : vec4<f32> = u_xlat13;
            let x_3263 : vec2<f32> = ((-(x_3257) * x_3259) + vec2<f32>(x_3261.x, x_3261.y));
            let x_3264 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3263.x, x_3263.y, x_3264.z, x_3264.w);
            let x_3266 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3266, vec2<f32>(0.0f, 0.0f));
            let x_3269 : vec2<f32> = u_xlat63;
            let x_3271 : vec2<f32> = u_xlat63;
            let x_3273 : vec4<f32> = u_xlat12;
            let x_3275 : vec2<f32> = ((-(x_3269) * x_3271) + vec2<f32>(x_3273.y, x_3273.w));
            let x_3276 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3275.x, x_3276.y, x_3275.y);
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3280 : vec2<f32> = (vec2<f32>(x_3278.x, x_3278.y) + vec2<f32>(2.0f, 2.0f));
            let x_3281 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3280.x, x_3280.y, x_3281.z, x_3281.w);
            let x_3283 : vec3<f32> = u_xlat37;
            let x_3285 : vec2<f32> = (vec2<f32>(x_3283.x, x_3283.z) + vec2<f32>(2.0f, 2.0f));
            let x_3286 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3286.x, x_3285.x, x_3286.z, x_3285.y);
            let x_3289 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3289 * 0.08163200318813323975f);
            let x_3292 : vec4<f32> = u_xlat12;
            let x_3294 : vec3<f32> = (vec3<f32>(x_3292.z, x_3292.x, x_3292.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3295 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3294.x, x_3294.y, x_3294.z, x_3295.w);
            let x_3297 : vec4<f32> = u_xlat13;
            let x_3299 : vec2<f32> = (vec2<f32>(x_3297.x, x_3297.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3300 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3299.x, x_3299.y, x_3300.z, x_3300.w);
            let x_3303 : f32 = u_xlat16.y;
            u_xlat15.x = x_3303;
            let x_3305 : vec2<f32> = u_xlat61;
            let x_3308 : vec2<f32> = ((vec2<f32>(x_3305.x, x_3305.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3309 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3309.x, x_3308.x, x_3309.z, x_3308.y);
            let x_3311 : vec2<f32> = u_xlat61;
            let x_3314 : vec2<f32> = ((vec2<f32>(x_3311.x, x_3311.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3315 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3314.x, x_3315.y, x_3314.y, x_3315.w);
            let x_3318 : f32 = u_xlat12.x;
            u_xlat13.y = x_3318;
            let x_3321 : f32 = u_xlat14.y;
            u_xlat13.w = x_3321;
            let x_3323 : vec4<f32> = u_xlat13;
            let x_3324 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3323 + x_3324);
            let x_3326 : vec2<f32> = u_xlat61;
            let x_3329 : vec2<f32> = ((vec2<f32>(x_3326.y, x_3326.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3330 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3330.x, x_3329.x, x_3330.z, x_3329.y);
            let x_3332 : vec2<f32> = u_xlat61;
            let x_3335 : vec2<f32> = ((vec2<f32>(x_3332.y, x_3332.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3336 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3335.x, x_3336.y, x_3335.y, x_3336.w);
            let x_3339 : f32 = u_xlat12.y;
            u_xlat14.y = x_3339;
            let x_3341 : vec4<f32> = u_xlat14;
            let x_3342 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3341 + x_3342);
            let x_3344 : vec4<f32> = u_xlat13;
            let x_3345 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3344 / x_3345);
            let x_3347 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3347 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3349 : vec4<f32> = u_xlat14;
            let x_3350 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3349 / x_3350);
            let x_3352 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3352 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3354 : vec4<f32> = u_xlat13;
            let x_3357 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3354.w, x_3354.x, x_3354.y, x_3354.z) * vec4<f32>(x_3357.x, x_3357.x, x_3357.x, x_3357.x));
            let x_3360 : vec4<f32> = u_xlat14;
            let x_3363 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3360.x, x_3360.w, x_3360.y, x_3360.z) * vec4<f32>(x_3363.y, x_3363.y, x_3363.y, x_3363.y));
            let x_3366 : vec4<f32> = u_xlat13;
            let x_3367 : vec3<f32> = vec3<f32>(x_3366.y, x_3366.z, x_3366.w);
            let x_3368 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3367.x, x_3368.y, x_3367.y, x_3367.z);
            let x_3371 : f32 = u_xlat14.x;
            u_xlat16.y = x_3371;
            let x_3373 : vec4<f32> = u_xlat11;
            let x_3376 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3379 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3373.x, x_3373.y, x_3373.x, x_3373.y) * vec4<f32>(x_3376.x, x_3376.y, x_3376.x, x_3376.y)) + vec4<f32>(x_3379.x, x_3379.y, x_3379.z, x_3379.y));
            let x_3382 : vec4<f32> = u_xlat11;
            let x_3385 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3388 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3382.x, x_3382.y) * vec2<f32>(x_3385.x, x_3385.y)) + vec2<f32>(x_3388.w, x_3388.y));
            let x_3392 : f32 = u_xlat16.y;
            u_xlat13.y = x_3392;
            let x_3395 : f32 = u_xlat14.z;
            u_xlat16.y = x_3395;
            let x_3397 : vec4<f32> = u_xlat11;
            let x_3400 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3403 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3397.x, x_3397.y, x_3397.x, x_3397.y) * vec4<f32>(x_3400.x, x_3400.y, x_3400.x, x_3400.y)) + vec4<f32>(x_3403.x, x_3403.y, x_3403.z, x_3403.y));
            let x_3406 : vec4<f32> = u_xlat11;
            let x_3409 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3412 : vec4<f32> = u_xlat16;
            let x_3414 : vec2<f32> = ((vec2<f32>(x_3406.x, x_3406.y) * vec2<f32>(x_3409.x, x_3409.y)) + vec2<f32>(x_3412.w, x_3412.y));
            let x_3415 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3414.x, x_3414.y, x_3415.z, x_3415.w);
            let x_3418 : f32 = u_xlat16.y;
            u_xlat13.z = x_3418;
            let x_3421 : vec4<f32> = u_xlat11;
            let x_3424 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3427 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3421.x, x_3421.y, x_3421.x, x_3421.y) * vec4<f32>(x_3424.x, x_3424.y, x_3424.x, x_3424.y)) + vec4<f32>(x_3427.x, x_3427.y, x_3427.x, x_3427.z));
            let x_3431 : f32 = u_xlat14.w;
            u_xlat16.y = x_3431;
            let x_3434 : vec4<f32> = u_xlat11;
            let x_3437 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3440 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3434.x, x_3434.y, x_3434.x, x_3434.y) * vec4<f32>(x_3437.x, x_3437.y, x_3437.x, x_3437.y)) + vec4<f32>(x_3440.x, x_3440.y, x_3440.z, x_3440.y));
            let x_3444 : vec4<f32> = u_xlat11;
            let x_3447 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3450 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3444.x, x_3444.y) * vec2<f32>(x_3447.x, x_3447.y)) + vec2<f32>(x_3450.w, x_3450.y));
            let x_3454 : f32 = u_xlat16.y;
            u_xlat13.w = x_3454;
            let x_3457 : vec4<f32> = u_xlat11;
            let x_3460 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3463 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3457.x, x_3457.y) * vec2<f32>(x_3460.x, x_3460.y)) + vec2<f32>(x_3463.x, x_3463.w));
            let x_3466 : vec4<f32> = u_xlat16;
            let x_3467 : vec3<f32> = vec3<f32>(x_3466.x, x_3466.z, x_3466.w);
            let x_3468 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3467.x, x_3468.y, x_3467.y, x_3467.z);
            let x_3470 : vec4<f32> = u_xlat11;
            let x_3473 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3476 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3470.x, x_3470.y, x_3470.x, x_3470.y) * vec4<f32>(x_3473.x, x_3473.y, x_3473.x, x_3473.y)) + vec4<f32>(x_3476.x, x_3476.y, x_3476.z, x_3476.y));
            let x_3479 : vec4<f32> = u_xlat11;
            let x_3482 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3485 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3479.x, x_3479.y) * vec2<f32>(x_3482.x, x_3482.y)) + vec2<f32>(x_3485.w, x_3485.y));
            let x_3489 : f32 = u_xlat13.x;
            u_xlat14.x = x_3489;
            let x_3491 : vec4<f32> = u_xlat11;
            let x_3494 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3497 : vec4<f32> = u_xlat14;
            let x_3499 : vec2<f32> = ((vec2<f32>(x_3491.x, x_3491.y) * vec2<f32>(x_3494.x, x_3494.y)) + vec2<f32>(x_3497.x, x_3497.y));
            let x_3500 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3499.x, x_3499.y, x_3500.z, x_3500.w);
            let x_3503 : vec4<f32> = u_xlat12;
            let x_3505 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3503.x, x_3503.x, x_3503.x, x_3503.x) * x_3505);
            let x_3508 : vec4<f32> = u_xlat12;
            let x_3510 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3508.y, x_3508.y, x_3508.y, x_3508.y) * x_3510);
            let x_3513 : vec4<f32> = u_xlat12;
            let x_3515 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3513.z, x_3513.z, x_3513.z, x_3513.z) * x_3515);
            let x_3517 : vec4<f32> = u_xlat12;
            let x_3519 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3517.w, x_3517.w, x_3517.w, x_3517.w) * x_3519);
            let x_3522 : vec4<f32> = u_xlat17;
            let x_3523 : vec2<f32> = vec2<f32>(x_3522.x, x_3522.y);
            let x_3525 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3523.x, x_3523.y, x_3525);
            let x_3532 : vec3<f32> = txVec43;
            let x_3534 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3532.xy, x_3532.z);
            u_xlat85 = x_3534;
            let x_3536 : vec4<f32> = u_xlat17;
            let x_3537 : vec2<f32> = vec2<f32>(x_3536.z, x_3536.w);
            let x_3539 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3537.x, x_3537.y, x_3539);
            let x_3546 : vec3<f32> = txVec44;
            let x_3548 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3546.xy, x_3546.z);
            u_xlat13.x = x_3548;
            let x_3551 : f32 = u_xlat13.x;
            let x_3553 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3551 * x_3553);
            let x_3557 : f32 = u_xlat22.x;
            let x_3558 : f32 = u_xlat85;
            let x_3561 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3557 * x_3558) + x_3561);
            let x_3564 : vec2<f32> = u_xlat61;
            let x_3566 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3564.x, x_3564.y, x_3566);
            let x_3573 : vec3<f32> = txVec45;
            let x_3575 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3573.xy, x_3573.z);
            u_xlat61.x = x_3575;
            let x_3578 : f32 = u_xlat22.z;
            let x_3580 : f32 = u_xlat61.x;
            let x_3582 : f32 = u_xlat85;
            u_xlat85 = ((x_3578 * x_3580) + x_3582);
            let x_3585 : vec4<f32> = u_xlat20;
            let x_3586 : vec2<f32> = vec2<f32>(x_3585.x, x_3585.y);
            let x_3588 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3586.x, x_3586.y, x_3588);
            let x_3595 : vec3<f32> = txVec46;
            let x_3597 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3595.xy, x_3595.z);
            u_xlat61.x = x_3597;
            let x_3600 : f32 = u_xlat22.w;
            let x_3602 : f32 = u_xlat61.x;
            let x_3604 : f32 = u_xlat85;
            u_xlat85 = ((x_3600 * x_3602) + x_3604);
            let x_3607 : vec4<f32> = u_xlat18;
            let x_3608 : vec2<f32> = vec2<f32>(x_3607.x, x_3607.y);
            let x_3610 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3608.x, x_3608.y, x_3610);
            let x_3617 : vec3<f32> = txVec47;
            let x_3619 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3617.xy, x_3617.z);
            u_xlat61.x = x_3619;
            let x_3622 : f32 = u_xlat23.x;
            let x_3624 : f32 = u_xlat61.x;
            let x_3626 : f32 = u_xlat85;
            u_xlat85 = ((x_3622 * x_3624) + x_3626);
            let x_3629 : vec4<f32> = u_xlat18;
            let x_3630 : vec2<f32> = vec2<f32>(x_3629.z, x_3629.w);
            let x_3632 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3630.x, x_3630.y, x_3632);
            let x_3639 : vec3<f32> = txVec48;
            let x_3641 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3639.xy, x_3639.z);
            u_xlat61.x = x_3641;
            let x_3644 : f32 = u_xlat23.y;
            let x_3646 : f32 = u_xlat61.x;
            let x_3648 : f32 = u_xlat85;
            u_xlat85 = ((x_3644 * x_3646) + x_3648);
            let x_3651 : vec4<f32> = u_xlat19;
            let x_3652 : vec2<f32> = vec2<f32>(x_3651.x, x_3651.y);
            let x_3654 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3652.x, x_3652.y, x_3654);
            let x_3661 : vec3<f32> = txVec49;
            let x_3663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3661.xy, x_3661.z);
            u_xlat61.x = x_3663;
            let x_3666 : f32 = u_xlat23.z;
            let x_3668 : f32 = u_xlat61.x;
            let x_3670 : f32 = u_xlat85;
            u_xlat85 = ((x_3666 * x_3668) + x_3670);
            let x_3673 : vec4<f32> = u_xlat20;
            let x_3674 : vec2<f32> = vec2<f32>(x_3673.z, x_3673.w);
            let x_3676 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3674.x, x_3674.y, x_3676);
            let x_3683 : vec3<f32> = txVec50;
            let x_3685 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3683.xy, x_3683.z);
            u_xlat61.x = x_3685;
            let x_3688 : f32 = u_xlat23.w;
            let x_3690 : f32 = u_xlat61.x;
            let x_3692 : f32 = u_xlat85;
            u_xlat85 = ((x_3688 * x_3690) + x_3692);
            let x_3695 : vec4<f32> = u_xlat21;
            let x_3696 : vec2<f32> = vec2<f32>(x_3695.x, x_3695.y);
            let x_3698 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3696.x, x_3696.y, x_3698);
            let x_3705 : vec3<f32> = txVec51;
            let x_3707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3705.xy, x_3705.z);
            u_xlat61.x = x_3707;
            let x_3710 : f32 = u_xlat24.x;
            let x_3712 : f32 = u_xlat61.x;
            let x_3714 : f32 = u_xlat85;
            u_xlat85 = ((x_3710 * x_3712) + x_3714);
            let x_3717 : vec4<f32> = u_xlat21;
            let x_3718 : vec2<f32> = vec2<f32>(x_3717.z, x_3717.w);
            let x_3720 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3718.x, x_3718.y, x_3720);
            let x_3727 : vec3<f32> = txVec52;
            let x_3729 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3727.xy, x_3727.z);
            u_xlat61.x = x_3729;
            let x_3732 : f32 = u_xlat24.y;
            let x_3734 : f32 = u_xlat61.x;
            let x_3736 : f32 = u_xlat85;
            u_xlat85 = ((x_3732 * x_3734) + x_3736);
            let x_3739 : vec2<f32> = u_xlat38;
            let x_3741 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3739.x, x_3739.y, x_3741);
            let x_3748 : vec3<f32> = txVec53;
            let x_3750 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3748.xy, x_3748.z);
            u_xlat61.x = x_3750;
            let x_3753 : f32 = u_xlat24.z;
            let x_3755 : f32 = u_xlat61.x;
            let x_3757 : f32 = u_xlat85;
            u_xlat85 = ((x_3753 * x_3755) + x_3757);
            let x_3760 : vec2<f32> = u_xlat69;
            let x_3762 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3760.x, x_3760.y, x_3762);
            let x_3769 : vec3<f32> = txVec54;
            let x_3771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3769.xy, x_3769.z);
            u_xlat61.x = x_3771;
            let x_3774 : f32 = u_xlat24.w;
            let x_3776 : f32 = u_xlat61.x;
            let x_3778 : f32 = u_xlat85;
            u_xlat85 = ((x_3774 * x_3776) + x_3778);
            let x_3781 : vec4<f32> = u_xlat16;
            let x_3782 : vec2<f32> = vec2<f32>(x_3781.x, x_3781.y);
            let x_3784 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3782.x, x_3782.y, x_3784);
            let x_3791 : vec3<f32> = txVec55;
            let x_3793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3791.xy, x_3791.z);
            u_xlat61.x = x_3793;
            let x_3796 : f32 = u_xlat12.x;
            let x_3798 : f32 = u_xlat61.x;
            let x_3800 : f32 = u_xlat85;
            u_xlat85 = ((x_3796 * x_3798) + x_3800);
            let x_3803 : vec4<f32> = u_xlat16;
            let x_3804 : vec2<f32> = vec2<f32>(x_3803.z, x_3803.w);
            let x_3806 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3804.x, x_3804.y, x_3806);
            let x_3813 : vec3<f32> = txVec56;
            let x_3815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3813.xy, x_3813.z);
            u_xlat61.x = x_3815;
            let x_3818 : f32 = u_xlat12.y;
            let x_3820 : f32 = u_xlat61.x;
            let x_3822 : f32 = u_xlat85;
            u_xlat85 = ((x_3818 * x_3820) + x_3822);
            let x_3825 : vec2<f32> = u_xlat64;
            let x_3827 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3825.x, x_3825.y, x_3827);
            let x_3834 : vec3<f32> = txVec57;
            let x_3836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3834.xy, x_3834.z);
            u_xlat61.x = x_3836;
            let x_3839 : f32 = u_xlat12.z;
            let x_3841 : f32 = u_xlat61.x;
            let x_3843 : f32 = u_xlat85;
            u_xlat85 = ((x_3839 * x_3841) + x_3843);
            let x_3846 : vec4<f32> = u_xlat11;
            let x_3847 : vec2<f32> = vec2<f32>(x_3846.x, x_3846.y);
            let x_3849 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3847.x, x_3847.y, x_3849);
            let x_3856 : vec3<f32> = txVec58;
            let x_3858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3856.xy, x_3856.z);
            u_xlat11.x = x_3858;
            let x_3861 : f32 = u_xlat12.w;
            let x_3863 : f32 = u_xlat11.x;
            let x_3865 : f32 = u_xlat85;
            u_xlat84 = ((x_3861 * x_3863) + x_3865);
          }
        }
      } else {
        let x_3869 : vec4<f32> = u_xlat10;
        let x_3870 : vec2<f32> = vec2<f32>(x_3869.x, x_3869.y);
        let x_3872 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3870.x, x_3870.y, x_3872);
        let x_3879 : vec3<f32> = txVec59;
        let x_3881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3879.xy, x_3879.z);
        u_xlat84 = x_3881;
      }
      let x_3882 : i32 = u_xlati6;
      let x_3884 : f32 = x_757.x_AdditionalShadowParams[x_3882].x;
      u_xlat10.x = (1.0f + -(x_3884));
      let x_3888 : f32 = u_xlat84;
      let x_3889 : i32 = u_xlati6;
      let x_3891 : f32 = x_757.x_AdditionalShadowParams[x_3889].x;
      let x_3894 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3888 * x_3891) + x_3894);
      let x_3897 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3897);
      let x_3902 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3902 >= 1.0f);
      let x_3904 : bool = u_xlatb35;
      let x_3906 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3904 | x_3906);
      let x_3910 : bool = u_xlatb10.x;
      let x_3911 : f32 = u_xlat84;
      u_xlat84 = select(x_3911, 1.0f, x_3910);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3914 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3914) + 1.0f);
    let x_3918 : f32 = u_xlat78;
    let x_3920 : f32 = u_xlat10.x;
    let x_3922 : f32 = u_xlat84;
    u_xlat84 = ((x_3918 * x_3920) + x_3922);
    let x_3924 : f32 = u_xlat82;
    let x_3925 : f32 = u_xlat84;
    u_xlat82 = (x_3924 * x_3925);
    let x_3927 : vec4<f32> = u_xlat2;
    let x_3929 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3927.x, x_3927.y, x_3927.z), vec3<f32>(x_3929.x, x_3929.y, x_3929.z));
    let x_3932 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3932, 0.0f, 1.0f);
    let x_3934 : f32 = u_xlat82;
    let x_3935 : f32 = u_xlat84;
    u_xlat82 = (x_3934 * x_3935);
    let x_3937 : f32 = u_xlat82;
    let x_3939 : i32 = u_xlati6;
    let x_3941 : vec4<f32> = x_2438.x_AdditionalLightsColor[x_3939];
    let x_3943 : vec3<f32> = (vec3<f32>(x_3937, x_3937, x_3937) * vec3<f32>(x_3941.x, x_3941.y, x_3941.z));
    let x_3944 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3943.x, x_3943.y, x_3943.z, x_3944.w);
    let x_3946 : vec4<f32> = u_xlat8;
    let x_3948 : f32 = u_xlat83;
    let x_3951 : vec4<f32> = u_xlat1;
    let x_3953 : vec3<f32> = ((vec3<f32>(x_3946.x, x_3946.y, x_3946.z) * vec3<f32>(x_3948, x_3948, x_3948)) + vec3<f32>(x_3951.x, x_3951.y, x_3951.z));
    let x_3954 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3953.x, x_3953.y, x_3953.z, x_3954.w);
    let x_3956 : vec4<f32> = u_xlat8;
    let x_3958 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3956.x, x_3956.y, x_3956.z), vec3<f32>(x_3958.x, x_3958.y, x_3958.z));
    let x_3963 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3963, 1.17549435e-38f);
    let x_3967 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_3967);
    let x_3970 : vec4<f32> = u_xlat6;
    let x_3972 : vec4<f32> = u_xlat8;
    let x_3974 : vec3<f32> = (vec3<f32>(x_3970.x, x_3970.x, x_3970.x) * vec3<f32>(x_3972.x, x_3972.y, x_3972.z));
    let x_3975 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3974.x, x_3974.y, x_3974.z, x_3975.w);
    let x_3977 : vec4<f32> = u_xlat2;
    let x_3979 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3977.x, x_3977.y, x_3977.z), vec3<f32>(x_3979.x, x_3979.y, x_3979.z));
    let x_3984 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3984, 0.0f, 1.0f);
    let x_3987 : vec4<f32> = u_xlat9;
    let x_3989 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3987.x, x_3987.y, x_3987.z), vec3<f32>(x_3989.x, x_3989.y, x_3989.z));
    let x_3992 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3992, 0.0f, 1.0f);
    let x_3995 : f32 = u_xlat6.x;
    let x_3997 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3995 * x_3997);
    let x_4001 : f32 = u_xlat6.x;
    let x_4003 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4001 * x_4003) + 1.00001001358032226562f);
    let x_4007 : f32 = u_xlat82;
    let x_4008 : f32 = u_xlat82;
    u_xlat82 = (x_4007 * x_4008);
    let x_4011 : f32 = u_xlat6.x;
    let x_4013 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4011 * x_4013);
    let x_4016 : f32 = u_xlat82;
    u_xlat82 = max(x_4016, 0.10000000149011611938f);
    let x_4019 : f32 = u_xlat6.x;
    let x_4020 : f32 = u_xlat82;
    u_xlat6.x = (x_4019 * x_4020);
    let x_4023 : f32 = u_xlat79;
    let x_4025 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4023 * x_4025);
    let x_4028 : f32 = u_xlat77;
    let x_4030 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4028 / x_4030);
    let x_4033 : vec4<f32> = u_xlat5;
    let x_4035 : vec4<f32> = u_xlat6;
    let x_4038 : vec4<f32> = u_xlat4;
    let x_4040 : vec3<f32> = ((vec3<f32>(x_4033.x, x_4033.y, x_4033.z) * vec3<f32>(x_4035.x, x_4035.x, x_4035.x)) + vec3<f32>(x_4038.x, x_4038.y, x_4038.z));
    let x_4041 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4040.x, x_4040.y, x_4040.z, x_4041.w);
    let x_4043 : vec4<f32> = u_xlat8;
    let x_4045 : vec4<f32> = u_xlat10;
    let x_4048 : vec4<f32> = u_xlat7;
    let x_4050 : vec3<f32> = ((vec3<f32>(x_4043.x, x_4043.y, x_4043.z) * vec3<f32>(x_4045.x, x_4045.y, x_4045.z)) + vec3<f32>(x_4048.x, x_4048.y, x_4048.z));
    let x_4051 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4050.x, x_4050.y, x_4050.z, x_4051.w);

    continuing {
      let x_4053 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4053 + bitcast<u32>(1i));
    }
  }
  let x_4055 : vec4<f32> = u_xlat3;
  let x_4057 : f32 = u_xlat25;
  let x_4060 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4055.x, x_4055.y, x_4055.z) * vec3<f32>(x_4057, x_4057, x_4057)) + x_4060);
  let x_4062 : vec4<f32> = u_xlat7;
  let x_4064 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4062.x, x_4062.y, x_4062.z) + x_4064);
  let x_4066 : f32 = u_xlat76;
  let x_4067 : f32 = u_xlat76;
  u_xlat1.x = (x_4066 * -(x_4067));
  let x_4072 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4072);
  let x_4075 : vec3<f32> = u_xlat0;
  let x_4076 : f32 = u_xlat75;
  let x_4080 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4075 * vec3<f32>(x_4076, x_4076, x_4076)) + -(vec3<f32>(x_4080.x, x_4080.y, x_4080.z)));
  let x_4086 : vec4<f32> = u_xlat1;
  let x_4088 : vec3<f32> = u_xlat0;
  let x_4091 : vec4<f32> = x_113.unity_FogColor;
  let x_4093 : vec3<f32> = ((vec3<f32>(x_4086.x, x_4086.x, x_4086.x) * x_4088) + vec3<f32>(x_4091.x, x_4091.y, x_4091.z));
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


