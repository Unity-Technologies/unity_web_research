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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

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

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2582 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu54 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati54 : i32;

@group(1) @binding(1) var<uniform> x_2871 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb86 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

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
  var x_2456 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3003 : f32;
  var x_3013 : f32;
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
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat79;
  u_xlat79 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat79;
  u_xlat79 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_405);
  let x_407 : f32 = u_xlat79;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat79;
  u_xlat79 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat79;
  u_xlat79 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_453);
  let x_455 : f32 = u_xlat79;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat79;
  u_xlat79 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat79;
  u_xlat79 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_522);
  let x_524 : f32 = u_xlat79;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat79;
  u_xlat79 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat79;
  u_xlat79 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_585);
  let x_587 : f32 = u_xlat79;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat79;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat79;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_837 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_837 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_953 : f32 = u_xlat79;
  u_xlat79 = (-(x_953) + 4.0f);
  let x_958 : f32 = u_xlat79;
  u_xlatu79 = u32(x_958);
  let x_962 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_962) << bitcast<u32>(2i));
  let x_965 : vec3<f32> = vs_TEXCOORD7;
  let x_967 : i32 = u_xlati79;
  let x_970 : i32 = u_xlati79;
  let x_974 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_967 + 1i) / 4i)][((x_970 + 1i) % 4i)];
  let x_976 : vec3<f32> = (vec3<f32>(x_965.y, x_965.y, x_965.y) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : i32 = u_xlati79;
  let x_981 : i32 = u_xlati79;
  let x_984 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : i32 = u_xlati79;
  let x_997 : i32 = u_xlati79;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : i32 = u_xlati79;
  let x_1016 : i32 = u_xlati79;
  let x_1020 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
  let x_1022 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1027 : f32 = vs_TEXCOORD7.y;
  let x_1029 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_1027 * x_1029);
  let x_1032 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1034 : f32 = vs_TEXCOORD7.x;
  let x_1036 : f32 = u_xlat79;
  u_xlat79 = ((x_1032 * x_1034) + x_1036);
  let x_1039 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1041 : f32 = vs_TEXCOORD7.z;
  let x_1043 : f32 = u_xlat79;
  u_xlat79 = ((x_1039 * x_1041) + x_1043);
  let x_1045 : f32 = u_xlat79;
  let x_1047 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_1045 + x_1047);
  let x_1049 : f32 = u_xlat79;
  let x_1052 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_1049) + -(x_1052));
  let x_1055 : f32 = u_xlat79;
  u_xlat79 = max(x_1055, 0.0f);
  let x_1057 : f32 = u_xlat79;
  let x_1059 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_1057 * x_1059);
  let x_1066 : vec4<f32> = vs_TEXCOORD0;
  let x_1069 : f32 = x_113.x_GlobalMipBias.x;
  let x_1070 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1066.z, x_1066.w), x_1069);
  u_xlat3 = x_1070;
  let x_1075 : vec4<f32> = vs_TEXCOORD0;
  let x_1078 : f32 = x_113.x_GlobalMipBias.x;
  let x_1079 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1075.z, x_1075.w), x_1078);
  let x_1080 : vec3<f32> = vec3<f32>(x_1079.x, x_1079.y, x_1079.z);
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat3;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1088 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1091 : vec4<f32> = u_xlat1;
  let x_1093 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : f32 = u_xlat80;
  u_xlat80 = (x_1096 + 0.5f);
  let x_1098 : f32 = u_xlat80;
  let x_1100 : vec4<f32> = u_xlat4;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098, x_1098, x_1098) * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1106 : f32 = u_xlat3.w;
  u_xlat80 = max(x_1106, 0.00009999999747378752f);
  let x_1109 : vec4<f32> = u_xlat3;
  let x_1111 : f32 = u_xlat80;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) / vec3<f32>(x_1111, x_1111, x_1111));
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1117 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_1117) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1123 : f32 = u_xlat52;
  let x_1124 : f32 = u_xlat80;
  u_xlat81 = (x_1123 + -(x_1124));
  let x_1127 : f32 = u_xlat80;
  let x_1129 : vec4<f32> = u_xlat5;
  let x_1131 : vec3<f32> = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec4<f32> = u_xlat5;
  let x_1138 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1139 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec3<f32> = u_xlat0;
  let x_1143 : vec4<f32> = u_xlat5;
  let x_1148 : vec3<f32> = ((vec3<f32>(x_1141.x, x_1141.x, x_1141.x) * vec3<f32>(x_1143.x, x_1143.y, x_1143.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1149 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1151 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1151) + 1.0f);
  let x_1156 : f32 = u_xlat0.x;
  let x_1158 : f32 = u_xlat0.x;
  u_xlat52 = (x_1156 * x_1158);
  let x_1160 : f32 = u_xlat52;
  u_xlat52 = max(x_1160, 0.0078125f);
  let x_1163 : f32 = u_xlat52;
  let x_1164 : f32 = u_xlat52;
  u_xlat80 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat81;
  u_xlat81 = (x_1166 + 1.0f);
  let x_1168 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1168, 0.0f, 1.0f);
  let x_1171 : f32 = u_xlat52;
  u_xlat82 = ((x_1171 * 4.0f) + 2.0f);
  let x_1174 : f32 = u_xlat26;
  u_xlat26 = min(x_1174, 1.0f);
  let x_1178 : f32 = x_845.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_1178);
  let x_1180 : bool = u_xlatb83;
  if (x_1180) {
    let x_1184 : f32 = x_845.x_MainLightShadowParams.y;
    u_xlatb83 = (x_1184 == 1.0f);
    let x_1186 : bool = u_xlatb83;
    if (x_1186) {
      let x_1189 : vec4<f32> = u_xlat2;
      let x_1192 : vec4<f32> = x_845.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y) + x_1192);
      let x_1196 : vec4<f32> = u_xlat6;
      let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
      let x_1199 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
      let x_1211 : vec3<f32> = txVec0;
      let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1211.xy, x_1211.z);
      u_xlat7.x = x_1213;
      let x_1216 : vec4<f32> = u_xlat6;
      let x_1217 : vec2<f32> = vec2<f32>(x_1216.z, x_1216.w);
      let x_1219 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
      let x_1226 : vec3<f32> = txVec1;
      let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1226.xy, x_1226.z);
      u_xlat7.y = x_1228;
      let x_1230 : vec4<f32> = u_xlat2;
      let x_1233 : vec4<f32> = x_845.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) + x_1233);
      let x_1236 : vec4<f32> = u_xlat6;
      let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
      let x_1239 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
      let x_1246 : vec3<f32> = txVec2;
      let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1246.xy, x_1246.z);
      u_xlat7.z = x_1248;
      let x_1251 : vec4<f32> = u_xlat6;
      let x_1252 : vec2<f32> = vec2<f32>(x_1251.z, x_1251.w);
      let x_1254 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
      let x_1261 : vec3<f32> = txVec3;
      let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1261.xy, x_1261.z);
      u_xlat7.w = x_1263;
      let x_1266 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_1266, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1273 : f32 = x_845.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1273 == 2.0f);
      let x_1275 : bool = u_xlatb6;
      if (x_1275) {
        let x_1278 : vec4<f32> = u_xlat2;
        let x_1281 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.z, x_1281.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1285 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1289 : vec2<f32> = floor(vec2<f32>(x_1287.x, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1294 : vec4<f32> = u_xlat2;
        let x_1297 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1297.z, x_1297.w)) + -(vec2<f32>(x_1300.x, x_1300.y)));
        let x_1304 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1304.x, x_1304.x, x_1304.y, x_1304.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1308 : vec4<f32> = u_xlat7;
        let x_1310 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1308.x, x_1308.x, x_1308.z, x_1308.z) * vec4<f32>(x_1310.x, x_1310.x, x_1310.z, x_1310.z));
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1317 : vec2<f32> = (vec2<f32>(x_1313.y, x_1313.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1318 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1318.w);
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1323 : vec2<f32> = u_xlat58;
        let x_1325 : vec2<f32> = ((vec2<f32>(x_1320.x, x_1320.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1323));
        let x_1326 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1325.x, x_1325.y, x_1326.z, x_1326.w);
        let x_1329 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1329) + vec2<f32>(1.0f, 1.0f));
        let x_1333 : vec2<f32> = u_xlat58;
        let x_1335 : vec2<f32> = min(x_1333, vec2<f32>(0.0f, 0.0f));
        let x_1336 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat9;
        let x_1341 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = u_xlat60;
        let x_1345 : vec2<f32> = ((-(vec2<f32>(x_1338.x, x_1338.y)) * vec2<f32>(x_1341.x, x_1341.y)) + x_1344);
        let x_1346 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1348 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1348, vec2<f32>(0.0f, 0.0f));
        let x_1350 : vec2<f32> = u_xlat58;
        let x_1352 : vec2<f32> = u_xlat58;
        let x_1354 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1350) * x_1352) + vec2<f32>(x_1354.y, x_1354.w));
        let x_1357 : vec4<f32> = u_xlat9;
        let x_1359 : vec2<f32> = (vec2<f32>(x_1357.x, x_1357.y) + vec2<f32>(1.0f, 1.0f));
        let x_1360 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
        let x_1362 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1362 + vec2<f32>(1.0f, 1.0f));
        let x_1364 : vec4<f32> = u_xlat8;
        let x_1368 : vec2<f32> = (vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1369 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1371 : vec2<f32> = u_xlat60;
        let x_1372 : vec2<f32> = (x_1371 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1373 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat9;
        let x_1377 : vec2<f32> = (vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1378 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
        let x_1380 : vec2<f32> = u_xlat58;
        let x_1381 : vec2<f32> = (x_1380 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1382 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1384.y, x_1384.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1388 : f32 = u_xlat9.x;
        u_xlat10.z = x_1388;
        let x_1391 : f32 = u_xlat58.x;
        u_xlat10.w = x_1391;
        let x_1394 : f32 = u_xlat11.x;
        u_xlat8.z = x_1394;
        let x_1397 : f32 = u_xlat7.x;
        u_xlat8.w = x_1397;
        let x_1399 : vec4<f32> = u_xlat8;
        let x_1401 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1399.z, x_1399.w, x_1399.x, x_1399.z) + vec4<f32>(x_1401.z, x_1401.w, x_1401.x, x_1401.z));
        let x_1405 : f32 = u_xlat10.y;
        u_xlat9.z = x_1405;
        let x_1408 : f32 = u_xlat58.y;
        u_xlat9.w = x_1408;
        let x_1411 : f32 = u_xlat8.y;
        u_xlat11.z = x_1411;
        let x_1414 : f32 = u_xlat7.z;
        u_xlat11.w = x_1414;
        let x_1416 : vec4<f32> = u_xlat9;
        let x_1418 : vec4<f32> = u_xlat11;
        let x_1420 : vec3<f32> = (vec3<f32>(x_1416.z, x_1416.y, x_1416.w) + vec3<f32>(x_1418.z, x_1418.y, x_1418.w));
        let x_1421 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
        let x_1423 : vec4<f32> = u_xlat8;
        let x_1425 : vec4<f32> = u_xlat12;
        let x_1427 : vec3<f32> = (vec3<f32>(x_1423.x, x_1423.z, x_1423.w) / vec3<f32>(x_1425.z, x_1425.w, x_1425.y));
        let x_1428 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1435 : vec3<f32> = (vec3<f32>(x_1430.x, x_1430.y, x_1430.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1436 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
        let x_1438 : vec4<f32> = u_xlat11;
        let x_1440 : vec4<f32> = u_xlat7;
        let x_1442 : vec3<f32> = (vec3<f32>(x_1438.z, x_1438.y, x_1438.w) / vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
        let x_1445 : vec4<f32> = u_xlat9;
        let x_1447 : vec3<f32> = (vec3<f32>(x_1445.x, x_1445.y, x_1445.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1448 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
        let x_1450 : vec4<f32> = u_xlat8;
        let x_1453 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1455 : vec3<f32> = (vec3<f32>(x_1450.y, x_1450.x, x_1450.z) * vec3<f32>(x_1453.x, x_1453.x, x_1453.x));
        let x_1456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat9;
        let x_1461 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1463 : vec3<f32> = (vec3<f32>(x_1458.x, x_1458.y, x_1458.z) * vec3<f32>(x_1461.y, x_1461.y, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
        let x_1467 : f32 = u_xlat9.x;
        u_xlat8.w = x_1467;
        let x_1469 : vec4<f32> = u_xlat6;
        let x_1472 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1475 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1469.x, x_1469.y, x_1469.x, x_1469.y) * vec4<f32>(x_1472.x, x_1472.y, x_1472.x, x_1472.y)) + vec4<f32>(x_1475.y, x_1475.w, x_1475.x, x_1475.w));
        let x_1478 : vec4<f32> = u_xlat6;
        let x_1481 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1484 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1478.x, x_1478.y) * vec2<f32>(x_1481.x, x_1481.y)) + vec2<f32>(x_1484.z, x_1484.w));
        let x_1488 : f32 = u_xlat8.y;
        u_xlat9.w = x_1488;
        let x_1490 : vec4<f32> = u_xlat9;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.y, x_1490.z);
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1492.x, x_1491.x, x_1492.z, x_1491.y);
        let x_1494 : vec4<f32> = u_xlat6;
        let x_1497 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1494.x, x_1494.y, x_1494.x, x_1494.y) * vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.y)) + vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1500.y));
        let x_1503 : vec4<f32> = u_xlat6;
        let x_1506 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y) * vec4<f32>(x_1506.x, x_1506.y, x_1506.x, x_1506.y)) + vec4<f32>(x_1509.w, x_1509.y, x_1509.w, x_1509.z));
        let x_1512 : vec4<f32> = u_xlat6;
        let x_1515 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1518 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y) * vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.y)) + vec4<f32>(x_1518.x, x_1518.w, x_1518.z, x_1518.w));
        let x_1521 : vec4<f32> = u_xlat7;
        let x_1523 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1521.x, x_1521.x, x_1521.x, x_1521.y) * vec4<f32>(x_1523.z, x_1523.w, x_1523.y, x_1523.z));
        let x_1527 : vec4<f32> = u_xlat7;
        let x_1529 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1527.y, x_1527.y, x_1527.z, x_1527.z) * x_1529);
        let x_1532 : f32 = u_xlat7.z;
        let x_1534 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1532 * x_1534);
        let x_1538 : vec4<f32> = u_xlat10;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.x, x_1538.y);
        let x_1541 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1549 : vec3<f32> = txVec4;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1549.xy, x_1549.z);
        u_xlat32 = x_1551;
        let x_1553 : vec4<f32> = u_xlat10;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec5;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1563.xy, x_1563.z);
        u_xlat7.x = x_1565;
        let x_1568 : f32 = u_xlat7.x;
        let x_1570 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1568 * x_1570);
        let x_1574 : f32 = u_xlat13.x;
        let x_1575 : f32 = u_xlat32;
        let x_1578 : f32 = u_xlat7.x;
        u_xlat32 = ((x_1574 * x_1575) + x_1578);
        let x_1581 : vec2<f32> = u_xlat58;
        let x_1583 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec6;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1590.xy, x_1590.z);
        u_xlat58.x = x_1592;
        let x_1595 : f32 = u_xlat13.z;
        let x_1597 : f32 = u_xlat58.x;
        let x_1599 : f32 = u_xlat32;
        u_xlat32 = ((x_1595 * x_1597) + x_1599);
        let x_1602 : vec4<f32> = u_xlat9;
        let x_1603 : vec2<f32> = vec2<f32>(x_1602.x, x_1602.y);
        let x_1605 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec7;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1612.xy, x_1612.z);
        u_xlat58.x = x_1614;
        let x_1617 : f32 = u_xlat13.w;
        let x_1619 : f32 = u_xlat58.x;
        let x_1621 : f32 = u_xlat32;
        u_xlat32 = ((x_1617 * x_1619) + x_1621);
        let x_1624 : vec4<f32> = u_xlat11;
        let x_1625 : vec2<f32> = vec2<f32>(x_1624.x, x_1624.y);
        let x_1627 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec8;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1634.xy, x_1634.z);
        u_xlat58.x = x_1636;
        let x_1639 : f32 = u_xlat14.x;
        let x_1641 : f32 = u_xlat58.x;
        let x_1643 : f32 = u_xlat32;
        u_xlat32 = ((x_1639 * x_1641) + x_1643);
        let x_1646 : vec4<f32> = u_xlat11;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.z, x_1646.w);
        let x_1649 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec9;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1656.xy, x_1656.z);
        u_xlat58.x = x_1658;
        let x_1661 : f32 = u_xlat14.y;
        let x_1663 : f32 = u_xlat58.x;
        let x_1665 : f32 = u_xlat32;
        u_xlat32 = ((x_1661 * x_1663) + x_1665);
        let x_1668 : vec4<f32> = u_xlat9;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.z, x_1668.w);
        let x_1671 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec10;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1678.xy, x_1678.z);
        u_xlat58.x = x_1680;
        let x_1683 : f32 = u_xlat14.z;
        let x_1685 : f32 = u_xlat58.x;
        let x_1687 : f32 = u_xlat32;
        u_xlat32 = ((x_1683 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat8;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
        let x_1693 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec11;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1700.xy, x_1700.z);
        u_xlat58.x = x_1702;
        let x_1705 : f32 = u_xlat14.w;
        let x_1707 : f32 = u_xlat58.x;
        let x_1709 : f32 = u_xlat32;
        u_xlat32 = ((x_1705 * x_1707) + x_1709);
        let x_1712 : vec4<f32> = u_xlat8;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.z, x_1712.w);
        let x_1715 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec12;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1722.xy, x_1722.z);
        u_xlat58.x = x_1724;
        let x_1727 : f32 = u_xlat6.x;
        let x_1729 : f32 = u_xlat58.x;
        let x_1731 : f32 = u_xlat32;
        u_xlat83 = ((x_1727 * x_1729) + x_1731);
      } else {
        let x_1734 : vec4<f32> = u_xlat2;
        let x_1737 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1740 : vec2<f32> = ((vec2<f32>(x_1734.x, x_1734.y) * vec2<f32>(x_1737.z, x_1737.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1741 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
        let x_1743 : vec4<f32> = u_xlat6;
        let x_1745 : vec2<f32> = floor(vec2<f32>(x_1743.x, x_1743.y));
        let x_1746 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1745.x, x_1745.y, x_1746.z, x_1746.w);
        let x_1748 : vec4<f32> = u_xlat2;
        let x_1751 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1754 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1748.x, x_1748.y) * vec2<f32>(x_1751.z, x_1751.w)) + -(vec2<f32>(x_1754.x, x_1754.y)));
        let x_1758 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1758.x, x_1758.x, x_1758.y, x_1758.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1761 : vec4<f32> = u_xlat7;
        let x_1763 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1761.x, x_1761.x, x_1761.z, x_1761.z) * vec4<f32>(x_1763.x, x_1763.x, x_1763.z, x_1763.z));
        let x_1766 : vec4<f32> = u_xlat8;
        let x_1770 : vec2<f32> = (vec2<f32>(x_1766.y, x_1766.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1771 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1771.x, x_1770.x, x_1771.z, x_1770.y);
        let x_1773 : vec4<f32> = u_xlat8;
        let x_1776 : vec2<f32> = u_xlat58;
        let x_1778 : vec2<f32> = ((vec2<f32>(x_1773.x, x_1773.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1776));
        let x_1779 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1778.x, x_1779.y, x_1778.y, x_1779.w);
        let x_1781 : vec2<f32> = u_xlat58;
        let x_1783 : vec2<f32> = (-(x_1781) + vec2<f32>(1.0f, 1.0f));
        let x_1784 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1783.x, x_1783.y, x_1784.z, x_1784.w);
        let x_1786 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1786, vec2<f32>(0.0f, 0.0f));
        let x_1788 : vec2<f32> = u_xlat60;
        let x_1790 : vec2<f32> = u_xlat60;
        let x_1792 : vec4<f32> = u_xlat8;
        let x_1794 : vec2<f32> = ((-(x_1788) * x_1790) + vec2<f32>(x_1792.x, x_1792.y));
        let x_1795 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1794.x, x_1794.y, x_1795.z, x_1795.w);
        let x_1797 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1797, vec2<f32>(0.0f, 0.0f));
        let x_1800 : vec2<f32> = u_xlat60;
        let x_1802 : vec2<f32> = u_xlat60;
        let x_1804 : vec4<f32> = u_xlat7;
        let x_1806 : vec2<f32> = ((-(x_1800) * x_1802) + vec2<f32>(x_1804.y, x_1804.w));
        let x_1807 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1806.x, x_1807.y, x_1806.y);
        let x_1809 : vec4<f32> = u_xlat8;
        let x_1811 : vec2<f32> = (vec2<f32>(x_1809.x, x_1809.y) + vec2<f32>(2.0f, 2.0f));
        let x_1812 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
        let x_1814 : vec3<f32> = u_xlat33;
        let x_1816 : vec2<f32> = (vec2<f32>(x_1814.x, x_1814.z) + vec2<f32>(2.0f, 2.0f));
        let x_1817 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1817.x, x_1816.x, x_1817.z, x_1816.y);
        let x_1820 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1820 * 0.08163200318813323975f);
        let x_1824 : vec4<f32> = u_xlat7;
        let x_1827 : vec3<f32> = (vec3<f32>(x_1824.z, x_1824.x, x_1824.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1828 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
        let x_1830 : vec4<f32> = u_xlat8;
        let x_1833 : vec2<f32> = (vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1834 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
        let x_1837 : f32 = u_xlat11.y;
        u_xlat10.x = x_1837;
        let x_1839 : vec2<f32> = u_xlat58;
        let x_1846 : vec2<f32> = ((vec2<f32>(x_1839.x, x_1839.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1847 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1847.x, x_1846.x, x_1847.z, x_1846.y);
        let x_1849 : vec2<f32> = u_xlat58;
        let x_1853 : vec2<f32> = ((vec2<f32>(x_1849.x, x_1849.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1854 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1853.x, x_1854.y, x_1853.y, x_1854.w);
        let x_1857 : f32 = u_xlat7.x;
        u_xlat8.y = x_1857;
        let x_1860 : f32 = u_xlat9.y;
        u_xlat8.w = x_1860;
        let x_1862 : vec4<f32> = u_xlat8;
        let x_1863 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1862 + x_1863);
        let x_1865 : vec2<f32> = u_xlat58;
        let x_1868 : vec2<f32> = ((vec2<f32>(x_1865.y, x_1865.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1869 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1869.x, x_1868.x, x_1869.z, x_1868.y);
        let x_1871 : vec2<f32> = u_xlat58;
        let x_1874 : vec2<f32> = ((vec2<f32>(x_1871.y, x_1871.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1875 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1874.x, x_1875.y, x_1874.y, x_1875.w);
        let x_1878 : f32 = u_xlat7.y;
        u_xlat9.y = x_1878;
        let x_1880 : vec4<f32> = u_xlat9;
        let x_1881 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1880 + x_1881);
        let x_1883 : vec4<f32> = u_xlat8;
        let x_1884 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1883 / x_1884);
        let x_1886 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1886 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1892 : vec4<f32> = u_xlat9;
        let x_1893 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1892 / x_1893);
        let x_1895 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1895 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1897 : vec4<f32> = u_xlat8;
        let x_1900 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1897.w, x_1897.x, x_1897.y, x_1897.z) * vec4<f32>(x_1900.x, x_1900.x, x_1900.x, x_1900.x));
        let x_1903 : vec4<f32> = u_xlat9;
        let x_1906 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1903.x, x_1903.w, x_1903.y, x_1903.z) * vec4<f32>(x_1906.y, x_1906.y, x_1906.y, x_1906.y));
        let x_1909 : vec4<f32> = u_xlat8;
        let x_1910 : vec3<f32> = vec3<f32>(x_1909.y, x_1909.z, x_1909.w);
        let x_1911 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1910.x, x_1911.y, x_1910.y, x_1910.z);
        let x_1914 : f32 = u_xlat9.x;
        u_xlat11.y = x_1914;
        let x_1916 : vec4<f32> = u_xlat6;
        let x_1919 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1922 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1916.x, x_1916.y, x_1916.x, x_1916.y) * vec4<f32>(x_1919.x, x_1919.y, x_1919.x, x_1919.y)) + vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1922.y));
        let x_1925 : vec4<f32> = u_xlat6;
        let x_1928 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1931 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1925.x, x_1925.y) * vec2<f32>(x_1928.x, x_1928.y)) + vec2<f32>(x_1931.w, x_1931.y));
        let x_1935 : f32 = u_xlat11.y;
        u_xlat8.y = x_1935;
        let x_1938 : f32 = u_xlat9.z;
        u_xlat11.y = x_1938;
        let x_1940 : vec4<f32> = u_xlat6;
        let x_1943 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1946 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1940.x, x_1940.y, x_1940.x, x_1940.y) * vec4<f32>(x_1943.x, x_1943.y, x_1943.x, x_1943.y)) + vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1946.y));
        let x_1949 : vec4<f32> = u_xlat6;
        let x_1952 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1955 : vec4<f32> = u_xlat11;
        let x_1957 : vec2<f32> = ((vec2<f32>(x_1949.x, x_1949.y) * vec2<f32>(x_1952.x, x_1952.y)) + vec2<f32>(x_1955.w, x_1955.y));
        let x_1958 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1957.x, x_1957.y, x_1958.z, x_1958.w);
        let x_1961 : f32 = u_xlat11.y;
        u_xlat8.z = x_1961;
        let x_1964 : vec4<f32> = u_xlat6;
        let x_1967 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1970 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1964.x, x_1964.y, x_1964.x, x_1964.y) * vec4<f32>(x_1967.x, x_1967.y, x_1967.x, x_1967.y)) + vec4<f32>(x_1970.x, x_1970.y, x_1970.x, x_1970.z));
        let x_1974 : f32 = u_xlat9.w;
        u_xlat11.y = x_1974;
        let x_1977 : vec4<f32> = u_xlat6;
        let x_1980 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1983 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1977.x, x_1977.y, x_1977.x, x_1977.y) * vec4<f32>(x_1980.x, x_1980.y, x_1980.x, x_1980.y)) + vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1983.y));
        let x_1987 : vec4<f32> = u_xlat6;
        let x_1990 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_1993 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1987.x, x_1987.y) * vec2<f32>(x_1990.x, x_1990.y)) + vec2<f32>(x_1993.w, x_1993.y));
        let x_1997 : f32 = u_xlat11.y;
        u_xlat8.w = x_1997;
        let x_2000 : vec4<f32> = u_xlat6;
        let x_2003 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2006 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_2000.x, x_2000.y) * vec2<f32>(x_2003.x, x_2003.y)) + vec2<f32>(x_2006.x, x_2006.w));
        let x_2009 : vec4<f32> = u_xlat11;
        let x_2010 : vec3<f32> = vec3<f32>(x_2009.x, x_2009.z, x_2009.w);
        let x_2011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2010.x, x_2011.y, x_2010.y, x_2010.z);
        let x_2013 : vec4<f32> = u_xlat6;
        let x_2016 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2019 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2013.x, x_2013.y, x_2013.x, x_2013.y) * vec4<f32>(x_2016.x, x_2016.y, x_2016.x, x_2016.y)) + vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2019.y));
        let x_2023 : vec4<f32> = u_xlat6;
        let x_2026 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2029 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2023.x, x_2023.y) * vec2<f32>(x_2026.x, x_2026.y)) + vec2<f32>(x_2029.w, x_2029.y));
        let x_2033 : f32 = u_xlat8.x;
        u_xlat9.x = x_2033;
        let x_2035 : vec4<f32> = u_xlat6;
        let x_2038 : vec4<f32> = x_845.x_MainLightShadowmapSize;
        let x_2041 : vec4<f32> = u_xlat9;
        let x_2043 : vec2<f32> = ((vec2<f32>(x_2035.x, x_2035.y) * vec2<f32>(x_2038.x, x_2038.y)) + vec2<f32>(x_2041.x, x_2041.y));
        let x_2044 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2043.x, x_2043.y, x_2044.z, x_2044.w);
        let x_2047 : vec4<f32> = u_xlat7;
        let x_2049 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2047.x, x_2047.x, x_2047.x, x_2047.x) * x_2049);
        let x_2052 : vec4<f32> = u_xlat7;
        let x_2054 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2052.y, x_2052.y, x_2052.y, x_2052.y) * x_2054);
        let x_2057 : vec4<f32> = u_xlat7;
        let x_2059 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2057.z, x_2057.z, x_2057.z, x_2057.z) * x_2059);
        let x_2061 : vec4<f32> = u_xlat7;
        let x_2063 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2061.w, x_2061.w, x_2061.w, x_2061.w) * x_2063);
        let x_2066 : vec4<f32> = u_xlat12;
        let x_2067 : vec2<f32> = vec2<f32>(x_2066.x, x_2066.y);
        let x_2069 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec13;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2076.xy, x_2076.z);
        u_xlat8.x = x_2078;
        let x_2081 : vec4<f32> = u_xlat12;
        let x_2082 : vec2<f32> = vec2<f32>(x_2081.z, x_2081.w);
        let x_2084 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2082.x, x_2082.y, x_2084);
        let x_2092 : vec3<f32> = txVec14;
        let x_2094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2092.xy, x_2092.z);
        u_xlat86 = x_2094;
        let x_2095 : f32 = u_xlat86;
        let x_2097 : f32 = u_xlat17.y;
        u_xlat86 = (x_2095 * x_2097);
        let x_2100 : f32 = u_xlat17.x;
        let x_2102 : f32 = u_xlat8.x;
        let x_2104 : f32 = u_xlat86;
        u_xlat8.x = ((x_2100 * x_2102) + x_2104);
        let x_2108 : vec2<f32> = u_xlat58;
        let x_2110 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2108.x, x_2108.y, x_2110);
        let x_2117 : vec3<f32> = txVec15;
        let x_2119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2117.xy, x_2117.z);
        u_xlat58.x = x_2119;
        let x_2122 : f32 = u_xlat17.z;
        let x_2124 : f32 = u_xlat58.x;
        let x_2127 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_2122 * x_2124) + x_2127);
        let x_2131 : vec4<f32> = u_xlat15;
        let x_2132 : vec2<f32> = vec2<f32>(x_2131.x, x_2131.y);
        let x_2134 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2132.x, x_2132.y, x_2134);
        let x_2142 : vec3<f32> = txVec16;
        let x_2144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2142.xy, x_2142.z);
        u_xlat84 = x_2144;
        let x_2146 : f32 = u_xlat17.w;
        let x_2147 : f32 = u_xlat84;
        let x_2150 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2146 * x_2147) + x_2150);
        let x_2154 : vec4<f32> = u_xlat13;
        let x_2155 : vec2<f32> = vec2<f32>(x_2154.x, x_2154.y);
        let x_2157 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2164 : vec3<f32> = txVec17;
        let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2164.xy, x_2164.z);
        u_xlat84 = x_2166;
        let x_2168 : f32 = u_xlat18.x;
        let x_2169 : f32 = u_xlat84;
        let x_2172 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2168 * x_2169) + x_2172);
        let x_2176 : vec4<f32> = u_xlat13;
        let x_2177 : vec2<f32> = vec2<f32>(x_2176.z, x_2176.w);
        let x_2179 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
        let x_2186 : vec3<f32> = txVec18;
        let x_2188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2186.xy, x_2186.z);
        u_xlat84 = x_2188;
        let x_2190 : f32 = u_xlat18.y;
        let x_2191 : f32 = u_xlat84;
        let x_2194 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2190 * x_2191) + x_2194);
        let x_2198 : vec4<f32> = u_xlat14;
        let x_2199 : vec2<f32> = vec2<f32>(x_2198.x, x_2198.y);
        let x_2201 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2199.x, x_2199.y, x_2201);
        let x_2208 : vec3<f32> = txVec19;
        let x_2210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2208.xy, x_2208.z);
        u_xlat84 = x_2210;
        let x_2212 : f32 = u_xlat18.z;
        let x_2213 : f32 = u_xlat84;
        let x_2216 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2212 * x_2213) + x_2216);
        let x_2220 : vec4<f32> = u_xlat15;
        let x_2221 : vec2<f32> = vec2<f32>(x_2220.z, x_2220.w);
        let x_2223 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
        let x_2230 : vec3<f32> = txVec20;
        let x_2232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2230.xy, x_2230.z);
        u_xlat84 = x_2232;
        let x_2234 : f32 = u_xlat18.w;
        let x_2235 : f32 = u_xlat84;
        let x_2238 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2234 * x_2235) + x_2238);
        let x_2242 : vec4<f32> = u_xlat16;
        let x_2243 : vec2<f32> = vec2<f32>(x_2242.x, x_2242.y);
        let x_2245 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2243.x, x_2243.y, x_2245);
        let x_2252 : vec3<f32> = txVec21;
        let x_2254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2252.xy, x_2252.z);
        u_xlat84 = x_2254;
        let x_2256 : f32 = u_xlat19.x;
        let x_2257 : f32 = u_xlat84;
        let x_2260 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2256 * x_2257) + x_2260);
        let x_2264 : vec4<f32> = u_xlat16;
        let x_2265 : vec2<f32> = vec2<f32>(x_2264.z, x_2264.w);
        let x_2267 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2265.x, x_2265.y, x_2267);
        let x_2274 : vec3<f32> = txVec22;
        let x_2276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2274.xy, x_2274.z);
        u_xlat84 = x_2276;
        let x_2278 : f32 = u_xlat19.y;
        let x_2279 : f32 = u_xlat84;
        let x_2282 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2278 * x_2279) + x_2282);
        let x_2286 : vec2<f32> = u_xlat34;
        let x_2288 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2286.x, x_2286.y, x_2288);
        let x_2295 : vec3<f32> = txVec23;
        let x_2297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2295.xy, x_2295.z);
        u_xlat84 = x_2297;
        let x_2299 : f32 = u_xlat19.z;
        let x_2300 : f32 = u_xlat84;
        let x_2303 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2299 * x_2300) + x_2303);
        let x_2307 : vec2<f32> = u_xlat66;
        let x_2309 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2307.x, x_2307.y, x_2309);
        let x_2316 : vec3<f32> = txVec24;
        let x_2318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2316.xy, x_2316.z);
        u_xlat84 = x_2318;
        let x_2320 : f32 = u_xlat19.w;
        let x_2321 : f32 = u_xlat84;
        let x_2324 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2320 * x_2321) + x_2324);
        let x_2328 : vec4<f32> = u_xlat11;
        let x_2329 : vec2<f32> = vec2<f32>(x_2328.x, x_2328.y);
        let x_2331 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
        let x_2338 : vec3<f32> = txVec25;
        let x_2340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
        u_xlat84 = x_2340;
        let x_2342 : f32 = u_xlat7.x;
        let x_2343 : f32 = u_xlat84;
        let x_2346 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2342 * x_2343) + x_2346);
        let x_2350 : vec4<f32> = u_xlat11;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.z, x_2350.w);
        let x_2353 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
        let x_2360 : vec3<f32> = txVec26;
        let x_2362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2360.xy, x_2360.z);
        u_xlat84 = x_2362;
        let x_2364 : f32 = u_xlat7.y;
        let x_2365 : f32 = u_xlat84;
        let x_2368 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2364 * x_2365) + x_2368);
        let x_2372 : vec2<f32> = u_xlat61;
        let x_2374 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2372.x, x_2372.y, x_2374);
        let x_2381 : vec3<f32> = txVec27;
        let x_2383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2381.xy, x_2381.z);
        u_xlat84 = x_2383;
        let x_2385 : f32 = u_xlat7.z;
        let x_2386 : f32 = u_xlat84;
        let x_2389 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2385 * x_2386) + x_2389);
        let x_2393 : vec4<f32> = u_xlat6;
        let x_2394 : vec2<f32> = vec2<f32>(x_2393.x, x_2393.y);
        let x_2396 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2394.x, x_2394.y, x_2396);
        let x_2403 : vec3<f32> = txVec28;
        let x_2405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2403.xy, x_2403.z);
        u_xlat6.x = x_2405;
        let x_2408 : f32 = u_xlat7.w;
        let x_2410 : f32 = u_xlat6.x;
        let x_2413 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2408 * x_2410) + x_2413);
      }
    }
  } else {
    let x_2417 : vec4<f32> = u_xlat2;
    let x_2418 : vec2<f32> = vec2<f32>(x_2417.x, x_2417.y);
    let x_2420 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
    let x_2427 : vec3<f32> = txVec29;
    let x_2429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
    u_xlat83 = x_2429;
  }
  let x_2431 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2431) + 1.0f);
  let x_2435 : f32 = u_xlat83;
  let x_2437 : f32 = x_845.x_MainLightShadowParams.x;
  let x_2440 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2435 * x_2437) + x_2440);
  let x_2445 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2445);
  let x_2449 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2449 >= 1.0f);
  let x_2451 : bool = u_xlatb54;
  let x_2452 : bool = u_xlatb28;
  u_xlatb28 = (x_2451 | x_2452);
  let x_2454 : bool = u_xlatb28;
  if (x_2454) {
    x_2456 = 1.0f;
  } else {
    let x_2461 : f32 = u_xlat2.x;
    x_2456 = x_2461;
  }
  let x_2462 : f32 = x_2456;
  u_xlat2.x = x_2462;
  let x_2464 : vec3<f32> = vs_TEXCOORD7;
  let x_2467 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2469 : vec3<f32> = (x_2464 + -(x_2467));
  let x_2470 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2470.w);
  let x_2473 : vec4<f32> = u_xlat6;
  let x_2475 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_2473.x, x_2473.y, x_2473.z), vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2479 : f32 = u_xlat28;
  let x_2481 : f32 = x_845.x_MainLightShadowParams.z;
  let x_2484 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2479 * x_2481) + x_2484);
  let x_2486 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2486, 0.0f, 1.0f);
  let x_2489 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_2489) + 1.0f);
  let x_2492 : f32 = u_xlat54;
  let x_2493 : f32 = u_xlat83;
  let x_2496 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2492 * x_2493) + x_2496);
  let x_2500 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2500;
  let x_2503 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2503;
  let x_2506 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2506;
  let x_2508 : vec4<f32> = u_xlat6;
  let x_2511 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2508.x, x_2508.y, x_2508.z)), vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
  let x_2514 : f32 = u_xlat54;
  let x_2515 : f32 = u_xlat54;
  u_xlat54 = (x_2514 + x_2515);
  let x_2517 : vec4<f32> = u_xlat1;
  let x_2519 : f32 = u_xlat54;
  let x_2523 : vec4<f32> = u_xlat6;
  let x_2526 : vec3<f32> = ((vec3<f32>(x_2517.x, x_2517.y, x_2517.z) * -(vec3<f32>(x_2519, x_2519, x_2519))) + -(vec3<f32>(x_2523.x, x_2523.y, x_2523.z)));
  let x_2527 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
  let x_2529 : vec4<f32> = u_xlat1;
  let x_2531 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(vec3<f32>(x_2529.x, x_2529.y, x_2529.z), vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
  let x_2534 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2534, 0.0f, 1.0f);
  let x_2536 : f32 = u_xlat54;
  u_xlat54 = (-(x_2536) + 1.0f);
  let x_2539 : f32 = u_xlat54;
  let x_2540 : f32 = u_xlat54;
  u_xlat54 = (x_2539 * x_2540);
  let x_2542 : f32 = u_xlat54;
  let x_2543 : f32 = u_xlat54;
  u_xlat54 = (x_2542 * x_2543);
  let x_2546 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2546) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2553 : f32 = u_xlat0.x;
  let x_2554 : f32 = u_xlat83;
  u_xlat0.x = (x_2553 * x_2554);
  let x_2558 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2558 * 6.0f);
  let x_2570 : vec4<f32> = u_xlat7;
  let x_2573 : f32 = u_xlat0.x;
  let x_2574 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2570.x, x_2570.y, x_2570.z), x_2573);
  u_xlat7 = x_2574;
  let x_2576 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2576 + -1.0f);
  let x_2584 : f32 = x_2582.unity_SpecCube0_HDR.w;
  let x_2586 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2584 * x_2586) + 1.0f);
  let x_2591 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2591, 0.0f);
  let x_2595 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2595);
  let x_2599 : f32 = u_xlat0.x;
  let x_2601 : f32 = x_2582.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2599 * x_2601);
  let x_2605 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2605);
  let x_2609 : f32 = u_xlat0.x;
  let x_2611 : f32 = x_2582.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2609 * x_2611);
  let x_2614 : vec4<f32> = u_xlat7;
  let x_2616 : vec3<f32> = u_xlat0;
  let x_2618 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.y, x_2614.z) * vec3<f32>(x_2616.x, x_2616.x, x_2616.x));
  let x_2619 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
  let x_2621 : f32 = u_xlat52;
  let x_2623 : f32 = u_xlat52;
  let x_2627 : vec2<f32> = ((vec2<f32>(x_2621, x_2621) * vec2<f32>(x_2623, x_2623)) + vec2<f32>(-1.0f, 1.0f));
  let x_2628 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2627.x, x_2628.y, x_2627.y);
  let x_2631 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2631);
  let x_2633 : vec4<f32> = u_xlat5;
  let x_2636 : f32 = u_xlat81;
  let x_2638 : vec3<f32> = (-(vec3<f32>(x_2633.x, x_2633.y, x_2633.z)) + vec3<f32>(x_2636, x_2636, x_2636));
  let x_2639 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
  let x_2641 : f32 = u_xlat54;
  let x_2643 : vec4<f32> = u_xlat8;
  let x_2646 : vec4<f32> = u_xlat5;
  let x_2648 : vec3<f32> = ((vec3<f32>(x_2641, x_2641, x_2641) * vec3<f32>(x_2643.x, x_2643.y, x_2643.z)) + vec3<f32>(x_2646.x, x_2646.y, x_2646.z));
  let x_2649 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2648.x, x_2648.y, x_2648.z, x_2649.w);
  let x_2651 : f32 = u_xlat52;
  let x_2653 : vec4<f32> = u_xlat8;
  let x_2655 : vec3<f32> = (vec3<f32>(x_2651, x_2651, x_2651) * vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
  let x_2656 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
  let x_2658 : vec4<f32> = u_xlat7;
  let x_2660 : vec4<f32> = u_xlat8;
  let x_2662 : vec3<f32> = (vec3<f32>(x_2658.x, x_2658.y, x_2658.z) * vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
  let x_2663 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
  let x_2665 : vec4<f32> = u_xlat3;
  let x_2667 : vec4<f32> = u_xlat4;
  let x_2670 : vec4<f32> = u_xlat7;
  let x_2672 : vec3<f32> = ((vec3<f32>(x_2665.x, x_2665.y, x_2665.z) * vec3<f32>(x_2667.x, x_2667.y, x_2667.z)) + vec3<f32>(x_2670.x, x_2670.y, x_2670.z));
  let x_2673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2673.w);
  let x_2676 : f32 = u_xlat2.x;
  let x_2678 : f32 = x_2582.unity_LightData.z;
  u_xlat52 = (x_2676 * x_2678);
  let x_2680 : vec4<f32> = u_xlat1;
  let x_2683 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2680.x, x_2680.y, x_2680.z), vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
  let x_2688 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2688, 0.0f, 1.0f);
  let x_2691 : f32 = u_xlat52;
  let x_2693 : f32 = u_xlat2.x;
  u_xlat52 = (x_2691 * x_2693);
  let x_2695 : f32 = u_xlat52;
  let x_2698 : vec4<f32> = x_113.x_MainLightColor;
  let x_2700 : vec3<f32> = (vec3<f32>(x_2695, x_2695, x_2695) * vec3<f32>(x_2698.x, x_2698.y, x_2698.z));
  let x_2701 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2700.x, x_2700.y, x_2700.z, x_2701.w);
  let x_2703 : vec4<f32> = u_xlat6;
  let x_2706 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2708 : vec3<f32> = (vec3<f32>(x_2703.x, x_2703.y, x_2703.z) + vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
  let x_2709 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
  let x_2711 : vec4<f32> = u_xlat8;
  let x_2713 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2711.x, x_2711.y, x_2711.z), vec3<f32>(x_2713.x, x_2713.y, x_2713.z));
  let x_2716 : f32 = u_xlat52;
  u_xlat52 = max(x_2716, 1.17549435e-38f);
  let x_2719 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2719);
  let x_2721 : f32 = u_xlat52;
  let x_2723 : vec4<f32> = u_xlat8;
  let x_2725 : vec3<f32> = (vec3<f32>(x_2721, x_2721, x_2721) * vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
  let x_2726 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);
  let x_2728 : vec4<f32> = u_xlat1;
  let x_2730 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2728.x, x_2728.y, x_2728.z), vec3<f32>(x_2730.x, x_2730.y, x_2730.z));
  let x_2733 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2733, 0.0f, 1.0f);
  let x_2736 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2738 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_2736.x, x_2736.y, x_2736.z), vec3<f32>(x_2738.x, x_2738.y, x_2738.z));
  let x_2743 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2743, 0.0f, 1.0f);
  let x_2746 : f32 = u_xlat52;
  let x_2747 : f32 = u_xlat52;
  u_xlat52 = (x_2746 * x_2747);
  let x_2749 : f32 = u_xlat52;
  let x_2751 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2749 * x_2751) + 1.00001001358032226562f);
  let x_2756 : f32 = u_xlat2.x;
  let x_2758 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2756 * x_2758);
  let x_2761 : f32 = u_xlat52;
  let x_2762 : f32 = u_xlat52;
  u_xlat52 = (x_2761 * x_2762);
  let x_2765 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2765, 0.10000000149011611938f);
  let x_2769 : f32 = u_xlat52;
  let x_2771 : f32 = u_xlat2.x;
  u_xlat52 = (x_2769 * x_2771);
  let x_2773 : f32 = u_xlat82;
  let x_2774 : f32 = u_xlat52;
  u_xlat52 = (x_2773 * x_2774);
  let x_2776 : f32 = u_xlat80;
  let x_2777 : f32 = u_xlat52;
  u_xlat52 = (x_2776 / x_2777);
  let x_2779 : vec4<f32> = u_xlat5;
  let x_2781 : f32 = u_xlat52;
  let x_2784 : vec4<f32> = u_xlat4;
  let x_2786 : vec3<f32> = ((vec3<f32>(x_2779.x, x_2779.y, x_2779.z) * vec3<f32>(x_2781, x_2781, x_2781)) + vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
  let x_2787 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);
  let x_2789 : vec4<f32> = u_xlat7;
  let x_2791 : vec4<f32> = u_xlat8;
  let x_2793 : vec3<f32> = (vec3<f32>(x_2789.x, x_2789.y, x_2789.z) * vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
  let x_2794 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
  let x_2797 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2799 : f32 = x_2582.unity_LightData.y;
  u_xlat52 = min(x_2797, x_2799);
  let x_2802 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2802));
  let x_2805 : f32 = u_xlat28;
  let x_2807 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_2810 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2805 * x_2807) + x_2810);
  let x_2814 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2814, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2827 : u32 = u_xlatu_loop_1;
    let x_2828 : u32 = u_xlatu52;
    if ((x_2827 < x_2828)) {
    } else {
      break;
    }
    let x_2831 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2831 >> 2u);
    let x_2834 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2834 & 3u));
    let x_2837 : u32 = u_xlatu54;
    let x_2840 : vec4<f32> = x_2582.unity_LightIndices[bitcast<i32>(x_2837)];
    let x_2850 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2855 : vec4<u32> = indexable[x_2850];
    u_xlat54 = dot(x_2840, bitcast<vec4<f32>>(x_2855));
    let x_2859 : f32 = u_xlat54;
    u_xlati54 = i32(x_2859);
    let x_2861 : vec3<f32> = vs_TEXCOORD7;
    let x_2872 : i32 = u_xlati54;
    let x_2874 : vec4<f32> = x_2871.x_AdditionalLightsPosition[x_2872];
    let x_2877 : i32 = u_xlati54;
    let x_2879 : vec4<f32> = x_2871.x_AdditionalLightsPosition[x_2877];
    let x_2881 : vec3<f32> = ((-(x_2861) * vec3<f32>(x_2874.w, x_2874.w, x_2874.w)) + vec3<f32>(x_2879.x, x_2879.y, x_2879.z));
    let x_2882 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
    let x_2884 : vec4<f32> = u_xlat9;
    let x_2886 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_2884.x, x_2884.y, x_2884.z), vec3<f32>(x_2886.x, x_2886.y, x_2886.z));
    let x_2889 : f32 = u_xlat81;
    u_xlat81 = max(x_2889, 0.00006103515625f);
    let x_2891 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2891);
    let x_2893 : f32 = u_xlat83;
    let x_2895 : vec4<f32> = u_xlat9;
    let x_2897 : vec3<f32> = (vec3<f32>(x_2893, x_2893, x_2893) * vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
    let x_2898 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2897.x, x_2897.y, x_2897.z, x_2898.w);
    let x_2900 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2900);
    let x_2902 : f32 = u_xlat81;
    let x_2903 : i32 = u_xlati54;
    let x_2905 : f32 = x_2871.x_AdditionalLightsAttenuation[x_2903].x;
    u_xlat81 = (x_2902 * x_2905);
    let x_2907 : f32 = u_xlat81;
    let x_2909 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2907) * x_2909) + 1.0f);
    let x_2912 : f32 = u_xlat81;
    u_xlat81 = max(x_2912, 0.0f);
    let x_2914 : f32 = u_xlat81;
    let x_2915 : f32 = u_xlat81;
    u_xlat81 = (x_2914 * x_2915);
    let x_2917 : f32 = u_xlat81;
    let x_2918 : f32 = u_xlat84;
    u_xlat81 = (x_2917 * x_2918);
    let x_2920 : i32 = u_xlati54;
    let x_2922 : vec4<f32> = x_2871.x_AdditionalLightsSpotDir[x_2920];
    let x_2924 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2922.x, x_2922.y, x_2922.z), vec3<f32>(x_2924.x, x_2924.y, x_2924.z));
    let x_2927 : f32 = u_xlat84;
    let x_2928 : i32 = u_xlati54;
    let x_2930 : f32 = x_2871.x_AdditionalLightsAttenuation[x_2928].z;
    let x_2932 : i32 = u_xlati54;
    let x_2934 : f32 = x_2871.x_AdditionalLightsAttenuation[x_2932].w;
    u_xlat84 = ((x_2927 * x_2930) + x_2934);
    let x_2936 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2936, 0.0f, 1.0f);
    let x_2938 : f32 = u_xlat84;
    let x_2939 : f32 = u_xlat84;
    u_xlat84 = (x_2938 * x_2939);
    let x_2941 : f32 = u_xlat81;
    let x_2942 : f32 = u_xlat84;
    u_xlat81 = (x_2941 * x_2942);
    let x_2945 : i32 = u_xlati54;
    let x_2947 : f32 = x_845.x_AdditionalShadowParams[x_2945].w;
    u_xlati84 = i32(x_2947);
    let x_2950 : i32 = u_xlati84;
    u_xlatb85 = (x_2950 >= 0i);
    let x_2952 : bool = u_xlatb85;
    if (x_2952) {
      let x_2956 : i32 = u_xlati54;
      let x_2958 : f32 = x_845.x_AdditionalShadowParams[x_2956].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2958, x_2958, x_2958, x_2958))));
      let x_2962 : bool = u_xlatb85;
      if (x_2962) {
        let x_2966 : vec4<f32> = u_xlat10;
        let x_2969 : vec4<f32> = u_xlat10;
        let x_2972 : vec4<bool> = (abs(vec4<f32>(x_2966.z, x_2966.z, x_2966.y, x_2966.z)) >= abs(vec4<f32>(x_2969.x, x_2969.y, x_2969.x, x_2969.x)));
        let x_2974 : vec3<bool> = vec3<bool>(x_2972.x, x_2972.y, x_2972.z);
        let x_2975 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2974.x, x_2974.y, x_2974.z, x_2975.w);
        let x_2978 : bool = u_xlatb11.y;
        let x_2980 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2978 & x_2980);
        let x_2982 : vec4<f32> = u_xlat10;
        let x_2985 : vec4<bool> = (-(vec4<f32>(x_2982.z, x_2982.y, x_2982.z, x_2982.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2986 : vec3<bool> = vec3<bool>(x_2985.x, x_2985.y, x_2985.w);
        let x_2987 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2986.x, x_2986.y, x_2987.z, x_2986.z);
        let x_2990 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2990);
        let x_2995 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2995);
        let x_2999 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2999);
        let x_3002 : bool = u_xlatb11.z;
        if (x_3002) {
          let x_3007 : f32 = u_xlat11.y;
          x_3003 = x_3007;
        } else {
          let x_3009 : f32 = u_xlat86;
          x_3003 = x_3009;
        }
        let x_3010 : f32 = x_3003;
        u_xlat86 = x_3010;
        let x_3012 : bool = u_xlatb85;
        if (x_3012) {
          let x_3017 : f32 = u_xlat11.x;
          x_3013 = x_3017;
        } else {
          let x_3019 : f32 = u_xlat86;
          x_3013 = x_3019;
        }
        let x_3020 : f32 = x_3013;
        u_xlat85 = x_3020;
        let x_3021 : i32 = u_xlati54;
        let x_3023 : f32 = x_845.x_AdditionalShadowParams[x_3021].w;
        u_xlat86 = trunc(x_3023);
        let x_3025 : f32 = u_xlat85;
        let x_3026 : f32 = u_xlat86;
        u_xlat85 = (x_3025 + x_3026);
        let x_3028 : f32 = u_xlat85;
        u_xlati84 = i32(x_3028);
      }
      let x_3030 : i32 = u_xlati84;
      u_xlati84 = (x_3030 << bitcast<u32>(2i));
      let x_3032 : vec3<f32> = vs_TEXCOORD7;
      let x_3034 : i32 = u_xlati84;
      let x_3037 : i32 = u_xlati84;
      let x_3041 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3034 + 1i) / 4i)][((x_3037 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3032.y, x_3032.y, x_3032.y, x_3032.y) * x_3041);
      let x_3043 : i32 = u_xlati84;
      let x_3045 : i32 = u_xlati84;
      let x_3048 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_3043 / 4i)][(x_3045 % 4i)];
      let x_3049 : vec3<f32> = vs_TEXCOORD7;
      let x_3052 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3048 * vec4<f32>(x_3049.x, x_3049.x, x_3049.x, x_3049.x)) + x_3052);
      let x_3054 : i32 = u_xlati84;
      let x_3057 : i32 = u_xlati84;
      let x_3061 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3054 + 2i) / 4i)][((x_3057 + 2i) % 4i)];
      let x_3062 : vec3<f32> = vs_TEXCOORD7;
      let x_3065 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3061 * vec4<f32>(x_3062.z, x_3062.z, x_3062.z, x_3062.z)) + x_3065);
      let x_3067 : vec4<f32> = u_xlat11;
      let x_3068 : i32 = u_xlati84;
      let x_3071 : i32 = u_xlati84;
      let x_3075 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_3068 + 3i) / 4i)][((x_3071 + 3i) % 4i)];
      u_xlat11 = (x_3067 + x_3075);
      let x_3077 : vec4<f32> = u_xlat11;
      let x_3079 : vec4<f32> = u_xlat11;
      let x_3081 : vec3<f32> = (vec3<f32>(x_3077.x, x_3077.y, x_3077.z) / vec3<f32>(x_3079.w, x_3079.w, x_3079.w));
      let x_3082 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3082.w);
      let x_3085 : i32 = u_xlati54;
      let x_3087 : f32 = x_845.x_AdditionalShadowParams[x_3085].y;
      u_xlatb84 = (0.0f < x_3087);
      let x_3089 : bool = u_xlatb84;
      if (x_3089) {
        let x_3092 : i32 = u_xlati54;
        let x_3094 : f32 = x_845.x_AdditionalShadowParams[x_3092].y;
        u_xlatb84 = (1.0f == x_3094);
        let x_3096 : bool = u_xlatb84;
        if (x_3096) {
          let x_3099 : vec4<f32> = u_xlat11;
          let x_3102 : vec4<f32> = x_845.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y) + x_3102);
          let x_3105 : vec4<f32> = u_xlat12;
          let x_3106 : vec2<f32> = vec2<f32>(x_3105.x, x_3105.y);
          let x_3108 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3106.x, x_3106.y, x_3108);
          let x_3116 : vec3<f32> = txVec30;
          let x_3118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
          u_xlat13.x = x_3118;
          let x_3121 : vec4<f32> = u_xlat12;
          let x_3122 : vec2<f32> = vec2<f32>(x_3121.z, x_3121.w);
          let x_3124 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
          let x_3131 : vec3<f32> = txVec31;
          let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
          u_xlat13.y = x_3133;
          let x_3135 : vec4<f32> = u_xlat11;
          let x_3138 : vec4<f32> = x_845.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3135.x, x_3135.y, x_3135.x, x_3135.y) + x_3138);
          let x_3141 : vec4<f32> = u_xlat12;
          let x_3142 : vec2<f32> = vec2<f32>(x_3141.x, x_3141.y);
          let x_3144 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
          let x_3151 : vec3<f32> = txVec32;
          let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
          u_xlat13.z = x_3153;
          let x_3156 : vec4<f32> = u_xlat12;
          let x_3157 : vec2<f32> = vec2<f32>(x_3156.z, x_3156.w);
          let x_3159 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
          let x_3166 : vec3<f32> = txVec33;
          let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
          u_xlat13.w = x_3168;
          let x_3170 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3170, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3173 : i32 = u_xlati54;
          let x_3175 : f32 = x_845.x_AdditionalShadowParams[x_3173].y;
          u_xlatb85 = (2.0f == x_3175);
          let x_3177 : bool = u_xlatb85;
          if (x_3177) {
            let x_3180 : vec4<f32> = u_xlat11;
            let x_3183 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3186 : vec2<f32> = ((vec2<f32>(x_3180.x, x_3180.y) * vec2<f32>(x_3183.z, x_3183.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3187 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3186.x, x_3186.y, x_3187.z, x_3187.w);
            let x_3189 : vec4<f32> = u_xlat12;
            let x_3191 : vec2<f32> = floor(vec2<f32>(x_3189.x, x_3189.y));
            let x_3192 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3191.x, x_3191.y, x_3192.z, x_3192.w);
            let x_3195 : vec4<f32> = u_xlat11;
            let x_3198 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3195.x, x_3195.y) * vec2<f32>(x_3198.z, x_3198.w)) + -(vec2<f32>(x_3201.x, x_3201.y)));
            let x_3205 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3205.x, x_3205.x, x_3205.y, x_3205.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3208 : vec4<f32> = u_xlat13;
            let x_3210 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3208.x, x_3208.x, x_3208.z, x_3208.z) * vec4<f32>(x_3210.x, x_3210.x, x_3210.z, x_3210.z));
            let x_3213 : vec4<f32> = u_xlat14;
            let x_3215 : vec2<f32> = (vec2<f32>(x_3213.y, x_3213.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3216 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3215.x, x_3216.y, x_3215.y, x_3216.w);
            let x_3218 : vec4<f32> = u_xlat14;
            let x_3221 : vec2<f32> = u_xlat64;
            let x_3223 : vec2<f32> = ((vec2<f32>(x_3218.x, x_3218.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3221));
            let x_3224 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3223.x, x_3223.y, x_3224.z, x_3224.w);
            let x_3226 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3226) + vec2<f32>(1.0f, 1.0f));
            let x_3229 : vec2<f32> = u_xlat64;
            let x_3230 : vec2<f32> = min(x_3229, vec2<f32>(0.0f, 0.0f));
            let x_3231 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3230.x, x_3230.y, x_3231.z, x_3231.w);
            let x_3233 : vec4<f32> = u_xlat15;
            let x_3236 : vec4<f32> = u_xlat15;
            let x_3239 : vec2<f32> = u_xlat66;
            let x_3240 : vec2<f32> = ((-(vec2<f32>(x_3233.x, x_3233.y)) * vec2<f32>(x_3236.x, x_3236.y)) + x_3239);
            let x_3241 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3240.x, x_3240.y, x_3241.z, x_3241.w);
            let x_3243 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3243, vec2<f32>(0.0f, 0.0f));
            let x_3245 : vec2<f32> = u_xlat64;
            let x_3247 : vec2<f32> = u_xlat64;
            let x_3249 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3245) * x_3247) + vec2<f32>(x_3249.y, x_3249.w));
            let x_3252 : vec4<f32> = u_xlat15;
            let x_3254 : vec2<f32> = (vec2<f32>(x_3252.x, x_3252.y) + vec2<f32>(1.0f, 1.0f));
            let x_3255 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3254.x, x_3254.y, x_3255.z, x_3255.w);
            let x_3257 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3257 + vec2<f32>(1.0f, 1.0f));
            let x_3259 : vec4<f32> = u_xlat14;
            let x_3261 : vec2<f32> = (vec2<f32>(x_3259.x, x_3259.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3262 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3261.x, x_3261.y, x_3262.z, x_3262.w);
            let x_3264 : vec2<f32> = u_xlat66;
            let x_3265 : vec2<f32> = (x_3264 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3266 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3265.x, x_3265.y, x_3266.z, x_3266.w);
            let x_3268 : vec4<f32> = u_xlat15;
            let x_3270 : vec2<f32> = (vec2<f32>(x_3268.x, x_3268.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3271 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3270.x, x_3270.y, x_3271.z, x_3271.w);
            let x_3273 : vec2<f32> = u_xlat64;
            let x_3274 : vec2<f32> = (x_3273 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3275 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3274.x, x_3274.y, x_3275.z, x_3275.w);
            let x_3277 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3277.y, x_3277.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3281 : f32 = u_xlat15.x;
            u_xlat16.z = x_3281;
            let x_3284 : f32 = u_xlat64.x;
            u_xlat16.w = x_3284;
            let x_3287 : f32 = u_xlat17.x;
            u_xlat14.z = x_3287;
            let x_3290 : f32 = u_xlat13.x;
            u_xlat14.w = x_3290;
            let x_3292 : vec4<f32> = u_xlat14;
            let x_3294 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3292.z, x_3292.w, x_3292.x, x_3292.z) + vec4<f32>(x_3294.z, x_3294.w, x_3294.x, x_3294.z));
            let x_3298 : f32 = u_xlat16.y;
            u_xlat15.z = x_3298;
            let x_3301 : f32 = u_xlat64.y;
            u_xlat15.w = x_3301;
            let x_3304 : f32 = u_xlat14.y;
            u_xlat17.z = x_3304;
            let x_3307 : f32 = u_xlat13.z;
            u_xlat17.w = x_3307;
            let x_3309 : vec4<f32> = u_xlat15;
            let x_3311 : vec4<f32> = u_xlat17;
            let x_3313 : vec3<f32> = (vec3<f32>(x_3309.z, x_3309.y, x_3309.w) + vec3<f32>(x_3311.z, x_3311.y, x_3311.w));
            let x_3314 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3314.w);
            let x_3316 : vec4<f32> = u_xlat14;
            let x_3318 : vec4<f32> = u_xlat18;
            let x_3320 : vec3<f32> = (vec3<f32>(x_3316.x, x_3316.z, x_3316.w) / vec3<f32>(x_3318.z, x_3318.w, x_3318.y));
            let x_3321 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3320.x, x_3320.y, x_3320.z, x_3321.w);
            let x_3323 : vec4<f32> = u_xlat14;
            let x_3325 : vec3<f32> = (vec3<f32>(x_3323.x, x_3323.y, x_3323.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3326 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
            let x_3328 : vec4<f32> = u_xlat17;
            let x_3330 : vec4<f32> = u_xlat13;
            let x_3332 : vec3<f32> = (vec3<f32>(x_3328.z, x_3328.y, x_3328.w) / vec3<f32>(x_3330.x, x_3330.y, x_3330.z));
            let x_3333 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3332.x, x_3332.y, x_3332.z, x_3333.w);
            let x_3335 : vec4<f32> = u_xlat15;
            let x_3337 : vec3<f32> = (vec3<f32>(x_3335.x, x_3335.y, x_3335.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3338 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
            let x_3340 : vec4<f32> = u_xlat14;
            let x_3343 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3345 : vec3<f32> = (vec3<f32>(x_3340.y, x_3340.x, x_3340.z) * vec3<f32>(x_3343.x, x_3343.x, x_3343.x));
            let x_3346 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3345.x, x_3345.y, x_3345.z, x_3346.w);
            let x_3348 : vec4<f32> = u_xlat15;
            let x_3351 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3353 : vec3<f32> = (vec3<f32>(x_3348.x, x_3348.y, x_3348.z) * vec3<f32>(x_3351.y, x_3351.y, x_3351.y));
            let x_3354 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3353.x, x_3353.y, x_3353.z, x_3354.w);
            let x_3357 : f32 = u_xlat15.x;
            u_xlat14.w = x_3357;
            let x_3359 : vec4<f32> = u_xlat12;
            let x_3362 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3365 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3359.x, x_3359.y, x_3359.x, x_3359.y) * vec4<f32>(x_3362.x, x_3362.y, x_3362.x, x_3362.y)) + vec4<f32>(x_3365.y, x_3365.w, x_3365.x, x_3365.w));
            let x_3368 : vec4<f32> = u_xlat12;
            let x_3371 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3374 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3368.x, x_3368.y) * vec2<f32>(x_3371.x, x_3371.y)) + vec2<f32>(x_3374.z, x_3374.w));
            let x_3378 : f32 = u_xlat14.y;
            u_xlat15.w = x_3378;
            let x_3380 : vec4<f32> = u_xlat15;
            let x_3381 : vec2<f32> = vec2<f32>(x_3380.y, x_3380.z);
            let x_3382 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3382.x, x_3381.x, x_3382.z, x_3381.y);
            let x_3384 : vec4<f32> = u_xlat12;
            let x_3387 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3390 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3384.x, x_3384.y, x_3384.x, x_3384.y) * vec4<f32>(x_3387.x, x_3387.y, x_3387.x, x_3387.y)) + vec4<f32>(x_3390.x, x_3390.y, x_3390.z, x_3390.y));
            let x_3393 : vec4<f32> = u_xlat12;
            let x_3396 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3399 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3393.x, x_3393.y, x_3393.x, x_3393.y) * vec4<f32>(x_3396.x, x_3396.y, x_3396.x, x_3396.y)) + vec4<f32>(x_3399.w, x_3399.y, x_3399.w, x_3399.z));
            let x_3402 : vec4<f32> = u_xlat12;
            let x_3405 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3408 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3402.x, x_3402.y, x_3402.x, x_3402.y) * vec4<f32>(x_3405.x, x_3405.y, x_3405.x, x_3405.y)) + vec4<f32>(x_3408.x, x_3408.w, x_3408.z, x_3408.w));
            let x_3411 : vec4<f32> = u_xlat13;
            let x_3413 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3411.x, x_3411.x, x_3411.x, x_3411.y) * vec4<f32>(x_3413.z, x_3413.w, x_3413.y, x_3413.z));
            let x_3417 : vec4<f32> = u_xlat13;
            let x_3419 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3417.y, x_3417.y, x_3417.z, x_3417.z) * x_3419);
            let x_3422 : f32 = u_xlat13.z;
            let x_3424 : f32 = u_xlat18.y;
            u_xlat85 = (x_3422 * x_3424);
            let x_3427 : vec4<f32> = u_xlat16;
            let x_3428 : vec2<f32> = vec2<f32>(x_3427.x, x_3427.y);
            let x_3430 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
            let x_3437 : vec3<f32> = txVec34;
            let x_3439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3437.xy, x_3437.z);
            u_xlat86 = x_3439;
            let x_3441 : vec4<f32> = u_xlat16;
            let x_3442 : vec2<f32> = vec2<f32>(x_3441.z, x_3441.w);
            let x_3444 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3452 : vec3<f32> = txVec35;
            let x_3454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3452.xy, x_3452.z);
            u_xlat87 = x_3454;
            let x_3455 : f32 = u_xlat87;
            let x_3457 : f32 = u_xlat19.y;
            u_xlat87 = (x_3455 * x_3457);
            let x_3460 : f32 = u_xlat19.x;
            let x_3461 : f32 = u_xlat86;
            let x_3463 : f32 = u_xlat87;
            u_xlat86 = ((x_3460 * x_3461) + x_3463);
            let x_3466 : vec2<f32> = u_xlat64;
            let x_3468 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec36;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat87 = x_3477;
            let x_3479 : f32 = u_xlat19.z;
            let x_3480 : f32 = u_xlat87;
            let x_3482 : f32 = u_xlat86;
            u_xlat86 = ((x_3479 * x_3480) + x_3482);
            let x_3485 : vec4<f32> = u_xlat15;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.x, x_3485.y);
            let x_3488 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec37;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat87 = x_3497;
            let x_3499 : f32 = u_xlat19.w;
            let x_3500 : f32 = u_xlat87;
            let x_3502 : f32 = u_xlat86;
            u_xlat86 = ((x_3499 * x_3500) + x_3502);
            let x_3505 : vec4<f32> = u_xlat17;
            let x_3506 : vec2<f32> = vec2<f32>(x_3505.x, x_3505.y);
            let x_3508 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3506.x, x_3506.y, x_3508);
            let x_3515 : vec3<f32> = txVec38;
            let x_3517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3515.xy, x_3515.z);
            u_xlat87 = x_3517;
            let x_3519 : f32 = u_xlat20.x;
            let x_3520 : f32 = u_xlat87;
            let x_3522 : f32 = u_xlat86;
            u_xlat86 = ((x_3519 * x_3520) + x_3522);
            let x_3525 : vec4<f32> = u_xlat17;
            let x_3526 : vec2<f32> = vec2<f32>(x_3525.z, x_3525.w);
            let x_3528 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3526.x, x_3526.y, x_3528);
            let x_3535 : vec3<f32> = txVec39;
            let x_3537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3535.xy, x_3535.z);
            u_xlat87 = x_3537;
            let x_3539 : f32 = u_xlat20.y;
            let x_3540 : f32 = u_xlat87;
            let x_3542 : f32 = u_xlat86;
            u_xlat86 = ((x_3539 * x_3540) + x_3542);
            let x_3545 : vec4<f32> = u_xlat15;
            let x_3546 : vec2<f32> = vec2<f32>(x_3545.z, x_3545.w);
            let x_3548 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3546.x, x_3546.y, x_3548);
            let x_3555 : vec3<f32> = txVec40;
            let x_3557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3555.xy, x_3555.z);
            u_xlat87 = x_3557;
            let x_3559 : f32 = u_xlat20.z;
            let x_3560 : f32 = u_xlat87;
            let x_3562 : f32 = u_xlat86;
            u_xlat86 = ((x_3559 * x_3560) + x_3562);
            let x_3565 : vec4<f32> = u_xlat14;
            let x_3566 : vec2<f32> = vec2<f32>(x_3565.x, x_3565.y);
            let x_3568 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3566.x, x_3566.y, x_3568);
            let x_3575 : vec3<f32> = txVec41;
            let x_3577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3575.xy, x_3575.z);
            u_xlat87 = x_3577;
            let x_3579 : f32 = u_xlat20.w;
            let x_3580 : f32 = u_xlat87;
            let x_3582 : f32 = u_xlat86;
            u_xlat86 = ((x_3579 * x_3580) + x_3582);
            let x_3585 : vec4<f32> = u_xlat14;
            let x_3586 : vec2<f32> = vec2<f32>(x_3585.z, x_3585.w);
            let x_3588 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3586.x, x_3586.y, x_3588);
            let x_3595 : vec3<f32> = txVec42;
            let x_3597 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3595.xy, x_3595.z);
            u_xlat87 = x_3597;
            let x_3598 : f32 = u_xlat85;
            let x_3599 : f32 = u_xlat87;
            let x_3601 : f32 = u_xlat86;
            u_xlat84 = ((x_3598 * x_3599) + x_3601);
          } else {
            let x_3604 : vec4<f32> = u_xlat11;
            let x_3607 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3610 : vec2<f32> = ((vec2<f32>(x_3604.x, x_3604.y) * vec2<f32>(x_3607.z, x_3607.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3611 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3610.x, x_3610.y, x_3611.z, x_3611.w);
            let x_3613 : vec4<f32> = u_xlat12;
            let x_3615 : vec2<f32> = floor(vec2<f32>(x_3613.x, x_3613.y));
            let x_3616 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3615.x, x_3615.y, x_3616.z, x_3616.w);
            let x_3618 : vec4<f32> = u_xlat11;
            let x_3621 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3624 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3618.x, x_3618.y) * vec2<f32>(x_3621.z, x_3621.w)) + -(vec2<f32>(x_3624.x, x_3624.y)));
            let x_3628 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3628.x, x_3628.x, x_3628.y, x_3628.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3631 : vec4<f32> = u_xlat13;
            let x_3633 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3631.x, x_3631.x, x_3631.z, x_3631.z) * vec4<f32>(x_3633.x, x_3633.x, x_3633.z, x_3633.z));
            let x_3636 : vec4<f32> = u_xlat14;
            let x_3638 : vec2<f32> = (vec2<f32>(x_3636.y, x_3636.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3639 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3639.x, x_3638.x, x_3639.z, x_3638.y);
            let x_3641 : vec4<f32> = u_xlat14;
            let x_3644 : vec2<f32> = u_xlat64;
            let x_3646 : vec2<f32> = ((vec2<f32>(x_3641.x, x_3641.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3644));
            let x_3647 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3646.x, x_3647.y, x_3646.y, x_3647.w);
            let x_3649 : vec2<f32> = u_xlat64;
            let x_3651 : vec2<f32> = (-(x_3649) + vec2<f32>(1.0f, 1.0f));
            let x_3652 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3651.x, x_3651.y, x_3652.z, x_3652.w);
            let x_3654 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3654, vec2<f32>(0.0f, 0.0f));
            let x_3656 : vec2<f32> = u_xlat66;
            let x_3658 : vec2<f32> = u_xlat66;
            let x_3660 : vec4<f32> = u_xlat14;
            let x_3662 : vec2<f32> = ((-(x_3656) * x_3658) + vec2<f32>(x_3660.x, x_3660.y));
            let x_3663 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3662.x, x_3662.y, x_3663.z, x_3663.w);
            let x_3665 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3665, vec2<f32>(0.0f, 0.0f));
            let x_3668 : vec2<f32> = u_xlat66;
            let x_3670 : vec2<f32> = u_xlat66;
            let x_3672 : vec4<f32> = u_xlat13;
            let x_3674 : vec2<f32> = ((-(x_3668) * x_3670) + vec2<f32>(x_3672.y, x_3672.w));
            let x_3675 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3674.x, x_3675.y, x_3674.y);
            let x_3677 : vec4<f32> = u_xlat14;
            let x_3679 : vec2<f32> = (vec2<f32>(x_3677.x, x_3677.y) + vec2<f32>(2.0f, 2.0f));
            let x_3680 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3679.x, x_3679.y, x_3680.z, x_3680.w);
            let x_3682 : vec3<f32> = u_xlat39;
            let x_3684 : vec2<f32> = (vec2<f32>(x_3682.x, x_3682.z) + vec2<f32>(2.0f, 2.0f));
            let x_3685 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3685.x, x_3684.x, x_3685.z, x_3684.y);
            let x_3688 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3688 * 0.08163200318813323975f);
            let x_3691 : vec4<f32> = u_xlat13;
            let x_3693 : vec3<f32> = (vec3<f32>(x_3691.z, x_3691.x, x_3691.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3694 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3693.x, x_3693.y, x_3693.z, x_3694.w);
            let x_3696 : vec4<f32> = u_xlat14;
            let x_3698 : vec2<f32> = (vec2<f32>(x_3696.x, x_3696.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3699 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3698.x, x_3698.y, x_3699.z, x_3699.w);
            let x_3702 : f32 = u_xlat17.y;
            u_xlat16.x = x_3702;
            let x_3704 : vec2<f32> = u_xlat64;
            let x_3707 : vec2<f32> = ((vec2<f32>(x_3704.x, x_3704.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3708 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3708.x, x_3707.x, x_3708.z, x_3707.y);
            let x_3710 : vec2<f32> = u_xlat64;
            let x_3713 : vec2<f32> = ((vec2<f32>(x_3710.x, x_3710.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3714 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3713.x, x_3714.y, x_3713.y, x_3714.w);
            let x_3717 : f32 = u_xlat13.x;
            u_xlat14.y = x_3717;
            let x_3720 : f32 = u_xlat15.y;
            u_xlat14.w = x_3720;
            let x_3722 : vec4<f32> = u_xlat14;
            let x_3723 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3722 + x_3723);
            let x_3725 : vec2<f32> = u_xlat64;
            let x_3728 : vec2<f32> = ((vec2<f32>(x_3725.y, x_3725.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3729 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3729.x, x_3728.x, x_3729.z, x_3728.y);
            let x_3731 : vec2<f32> = u_xlat64;
            let x_3734 : vec2<f32> = ((vec2<f32>(x_3731.y, x_3731.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3735 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3734.x, x_3735.y, x_3734.y, x_3735.w);
            let x_3738 : f32 = u_xlat13.y;
            u_xlat15.y = x_3738;
            let x_3740 : vec4<f32> = u_xlat15;
            let x_3741 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3740 + x_3741);
            let x_3743 : vec4<f32> = u_xlat14;
            let x_3744 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3743 / x_3744);
            let x_3746 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3746 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3748 : vec4<f32> = u_xlat15;
            let x_3749 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3748 / x_3749);
            let x_3751 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3751 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3753 : vec4<f32> = u_xlat14;
            let x_3756 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3753.w, x_3753.x, x_3753.y, x_3753.z) * vec4<f32>(x_3756.x, x_3756.x, x_3756.x, x_3756.x));
            let x_3759 : vec4<f32> = u_xlat15;
            let x_3762 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3759.x, x_3759.w, x_3759.y, x_3759.z) * vec4<f32>(x_3762.y, x_3762.y, x_3762.y, x_3762.y));
            let x_3765 : vec4<f32> = u_xlat14;
            let x_3766 : vec3<f32> = vec3<f32>(x_3765.y, x_3765.z, x_3765.w);
            let x_3767 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3766.x, x_3767.y, x_3766.y, x_3766.z);
            let x_3770 : f32 = u_xlat15.x;
            u_xlat17.y = x_3770;
            let x_3772 : vec4<f32> = u_xlat12;
            let x_3775 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3778 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3772.x, x_3772.y, x_3772.x, x_3772.y) * vec4<f32>(x_3775.x, x_3775.y, x_3775.x, x_3775.y)) + vec4<f32>(x_3778.x, x_3778.y, x_3778.z, x_3778.y));
            let x_3781 : vec4<f32> = u_xlat12;
            let x_3784 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3787 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3781.x, x_3781.y) * vec2<f32>(x_3784.x, x_3784.y)) + vec2<f32>(x_3787.w, x_3787.y));
            let x_3791 : f32 = u_xlat17.y;
            u_xlat14.y = x_3791;
            let x_3794 : f32 = u_xlat15.z;
            u_xlat17.y = x_3794;
            let x_3796 : vec4<f32> = u_xlat12;
            let x_3799 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3802 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3796.x, x_3796.y, x_3796.x, x_3796.y) * vec4<f32>(x_3799.x, x_3799.y, x_3799.x, x_3799.y)) + vec4<f32>(x_3802.x, x_3802.y, x_3802.z, x_3802.y));
            let x_3805 : vec4<f32> = u_xlat12;
            let x_3808 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3811 : vec4<f32> = u_xlat17;
            let x_3813 : vec2<f32> = ((vec2<f32>(x_3805.x, x_3805.y) * vec2<f32>(x_3808.x, x_3808.y)) + vec2<f32>(x_3811.w, x_3811.y));
            let x_3814 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3813.x, x_3813.y, x_3814.z, x_3814.w);
            let x_3817 : f32 = u_xlat17.y;
            u_xlat14.z = x_3817;
            let x_3820 : vec4<f32> = u_xlat12;
            let x_3823 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3826 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3820.x, x_3820.y, x_3820.x, x_3820.y) * vec4<f32>(x_3823.x, x_3823.y, x_3823.x, x_3823.y)) + vec4<f32>(x_3826.x, x_3826.y, x_3826.x, x_3826.z));
            let x_3830 : f32 = u_xlat15.w;
            u_xlat17.y = x_3830;
            let x_3833 : vec4<f32> = u_xlat12;
            let x_3836 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3839 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3833.x, x_3833.y, x_3833.x, x_3833.y) * vec4<f32>(x_3836.x, x_3836.y, x_3836.x, x_3836.y)) + vec4<f32>(x_3839.x, x_3839.y, x_3839.z, x_3839.y));
            let x_3843 : vec4<f32> = u_xlat12;
            let x_3846 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3849 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3843.x, x_3843.y) * vec2<f32>(x_3846.x, x_3846.y)) + vec2<f32>(x_3849.w, x_3849.y));
            let x_3853 : f32 = u_xlat17.y;
            u_xlat14.w = x_3853;
            let x_3856 : vec4<f32> = u_xlat12;
            let x_3859 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3862 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3856.x, x_3856.y) * vec2<f32>(x_3859.x, x_3859.y)) + vec2<f32>(x_3862.x, x_3862.w));
            let x_3865 : vec4<f32> = u_xlat17;
            let x_3866 : vec3<f32> = vec3<f32>(x_3865.x, x_3865.z, x_3865.w);
            let x_3867 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3866.x, x_3867.y, x_3866.y, x_3866.z);
            let x_3869 : vec4<f32> = u_xlat12;
            let x_3872 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3875 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3869.x, x_3869.y, x_3869.x, x_3869.y) * vec4<f32>(x_3872.x, x_3872.y, x_3872.x, x_3872.y)) + vec4<f32>(x_3875.x, x_3875.y, x_3875.z, x_3875.y));
            let x_3879 : vec4<f32> = u_xlat12;
            let x_3882 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3885 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3879.x, x_3879.y) * vec2<f32>(x_3882.x, x_3882.y)) + vec2<f32>(x_3885.w, x_3885.y));
            let x_3889 : f32 = u_xlat14.x;
            u_xlat15.x = x_3889;
            let x_3891 : vec4<f32> = u_xlat12;
            let x_3894 : vec4<f32> = x_845.x_AdditionalShadowmapSize;
            let x_3897 : vec4<f32> = u_xlat15;
            let x_3899 : vec2<f32> = ((vec2<f32>(x_3891.x, x_3891.y) * vec2<f32>(x_3894.x, x_3894.y)) + vec2<f32>(x_3897.x, x_3897.y));
            let x_3900 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3899.x, x_3899.y, x_3900.z, x_3900.w);
            let x_3903 : vec4<f32> = u_xlat13;
            let x_3905 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3903.x, x_3903.x, x_3903.x, x_3903.x) * x_3905);
            let x_3908 : vec4<f32> = u_xlat13;
            let x_3910 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3908.y, x_3908.y, x_3908.y, x_3908.y) * x_3910);
            let x_3913 : vec4<f32> = u_xlat13;
            let x_3915 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3913.z, x_3913.z, x_3913.z, x_3913.z) * x_3915);
            let x_3917 : vec4<f32> = u_xlat13;
            let x_3919 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3917.w, x_3917.w, x_3917.w, x_3917.w) * x_3919);
            let x_3922 : vec4<f32> = u_xlat18;
            let x_3923 : vec2<f32> = vec2<f32>(x_3922.x, x_3922.y);
            let x_3925 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3923.x, x_3923.y, x_3925);
            let x_3932 : vec3<f32> = txVec43;
            let x_3934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3932.xy, x_3932.z);
            u_xlat85 = x_3934;
            let x_3936 : vec4<f32> = u_xlat18;
            let x_3937 : vec2<f32> = vec2<f32>(x_3936.z, x_3936.w);
            let x_3939 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3937.x, x_3937.y, x_3939);
            let x_3946 : vec3<f32> = txVec44;
            let x_3948 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3946.xy, x_3946.z);
            u_xlat86 = x_3948;
            let x_3949 : f32 = u_xlat86;
            let x_3951 : f32 = u_xlat23.y;
            u_xlat86 = (x_3949 * x_3951);
            let x_3954 : f32 = u_xlat23.x;
            let x_3955 : f32 = u_xlat85;
            let x_3957 : f32 = u_xlat86;
            u_xlat85 = ((x_3954 * x_3955) + x_3957);
            let x_3960 : vec2<f32> = u_xlat64;
            let x_3962 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3960.x, x_3960.y, x_3962);
            let x_3969 : vec3<f32> = txVec45;
            let x_3971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3969.xy, x_3969.z);
            u_xlat86 = x_3971;
            let x_3973 : f32 = u_xlat23.z;
            let x_3974 : f32 = u_xlat86;
            let x_3976 : f32 = u_xlat85;
            u_xlat85 = ((x_3973 * x_3974) + x_3976);
            let x_3979 : vec4<f32> = u_xlat21;
            let x_3980 : vec2<f32> = vec2<f32>(x_3979.x, x_3979.y);
            let x_3982 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3980.x, x_3980.y, x_3982);
            let x_3989 : vec3<f32> = txVec46;
            let x_3991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3989.xy, x_3989.z);
            u_xlat86 = x_3991;
            let x_3993 : f32 = u_xlat23.w;
            let x_3994 : f32 = u_xlat86;
            let x_3996 : f32 = u_xlat85;
            u_xlat85 = ((x_3993 * x_3994) + x_3996);
            let x_3999 : vec4<f32> = u_xlat19;
            let x_4000 : vec2<f32> = vec2<f32>(x_3999.x, x_3999.y);
            let x_4002 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4000.x, x_4000.y, x_4002);
            let x_4009 : vec3<f32> = txVec47;
            let x_4011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4009.xy, x_4009.z);
            u_xlat86 = x_4011;
            let x_4013 : f32 = u_xlat24.x;
            let x_4014 : f32 = u_xlat86;
            let x_4016 : f32 = u_xlat85;
            u_xlat85 = ((x_4013 * x_4014) + x_4016);
            let x_4019 : vec4<f32> = u_xlat19;
            let x_4020 : vec2<f32> = vec2<f32>(x_4019.z, x_4019.w);
            let x_4022 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4020.x, x_4020.y, x_4022);
            let x_4029 : vec3<f32> = txVec48;
            let x_4031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4029.xy, x_4029.z);
            u_xlat86 = x_4031;
            let x_4033 : f32 = u_xlat24.y;
            let x_4034 : f32 = u_xlat86;
            let x_4036 : f32 = u_xlat85;
            u_xlat85 = ((x_4033 * x_4034) + x_4036);
            let x_4039 : vec4<f32> = u_xlat20;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.x, x_4039.y);
            let x_4042 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec49;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat86 = x_4051;
            let x_4053 : f32 = u_xlat24.z;
            let x_4054 : f32 = u_xlat86;
            let x_4056 : f32 = u_xlat85;
            u_xlat85 = ((x_4053 * x_4054) + x_4056);
            let x_4059 : vec4<f32> = u_xlat21;
            let x_4060 : vec2<f32> = vec2<f32>(x_4059.z, x_4059.w);
            let x_4062 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4060.x, x_4060.y, x_4062);
            let x_4069 : vec3<f32> = txVec50;
            let x_4071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4069.xy, x_4069.z);
            u_xlat86 = x_4071;
            let x_4073 : f32 = u_xlat24.w;
            let x_4074 : f32 = u_xlat86;
            let x_4076 : f32 = u_xlat85;
            u_xlat85 = ((x_4073 * x_4074) + x_4076);
            let x_4079 : vec4<f32> = u_xlat22;
            let x_4080 : vec2<f32> = vec2<f32>(x_4079.x, x_4079.y);
            let x_4082 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4080.x, x_4080.y, x_4082);
            let x_4089 : vec3<f32> = txVec51;
            let x_4091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4089.xy, x_4089.z);
            u_xlat86 = x_4091;
            let x_4093 : f32 = u_xlat25.x;
            let x_4094 : f32 = u_xlat86;
            let x_4096 : f32 = u_xlat85;
            u_xlat85 = ((x_4093 * x_4094) + x_4096);
            let x_4099 : vec4<f32> = u_xlat22;
            let x_4100 : vec2<f32> = vec2<f32>(x_4099.z, x_4099.w);
            let x_4102 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4100.x, x_4100.y, x_4102);
            let x_4109 : vec3<f32> = txVec52;
            let x_4111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4109.xy, x_4109.z);
            u_xlat86 = x_4111;
            let x_4113 : f32 = u_xlat25.y;
            let x_4114 : f32 = u_xlat86;
            let x_4116 : f32 = u_xlat85;
            u_xlat85 = ((x_4113 * x_4114) + x_4116);
            let x_4119 : vec2<f32> = u_xlat40;
            let x_4121 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4119.x, x_4119.y, x_4121);
            let x_4128 : vec3<f32> = txVec53;
            let x_4130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4128.xy, x_4128.z);
            u_xlat86 = x_4130;
            let x_4132 : f32 = u_xlat25.z;
            let x_4133 : f32 = u_xlat86;
            let x_4135 : f32 = u_xlat85;
            u_xlat85 = ((x_4132 * x_4133) + x_4135);
            let x_4138 : vec2<f32> = u_xlat72;
            let x_4140 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4138.x, x_4138.y, x_4140);
            let x_4147 : vec3<f32> = txVec54;
            let x_4149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4147.xy, x_4147.z);
            u_xlat86 = x_4149;
            let x_4151 : f32 = u_xlat25.w;
            let x_4152 : f32 = u_xlat86;
            let x_4154 : f32 = u_xlat85;
            u_xlat85 = ((x_4151 * x_4152) + x_4154);
            let x_4157 : vec4<f32> = u_xlat17;
            let x_4158 : vec2<f32> = vec2<f32>(x_4157.x, x_4157.y);
            let x_4160 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4158.x, x_4158.y, x_4160);
            let x_4167 : vec3<f32> = txVec55;
            let x_4169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4167.xy, x_4167.z);
            u_xlat86 = x_4169;
            let x_4171 : f32 = u_xlat13.x;
            let x_4172 : f32 = u_xlat86;
            let x_4174 : f32 = u_xlat85;
            u_xlat85 = ((x_4171 * x_4172) + x_4174);
            let x_4177 : vec4<f32> = u_xlat17;
            let x_4178 : vec2<f32> = vec2<f32>(x_4177.z, x_4177.w);
            let x_4180 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4178.x, x_4178.y, x_4180);
            let x_4187 : vec3<f32> = txVec56;
            let x_4189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4187.xy, x_4187.z);
            u_xlat86 = x_4189;
            let x_4191 : f32 = u_xlat13.y;
            let x_4192 : f32 = u_xlat86;
            let x_4194 : f32 = u_xlat85;
            u_xlat85 = ((x_4191 * x_4192) + x_4194);
            let x_4197 : vec2<f32> = u_xlat67;
            let x_4199 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4197.x, x_4197.y, x_4199);
            let x_4206 : vec3<f32> = txVec57;
            let x_4208 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4206.xy, x_4206.z);
            u_xlat86 = x_4208;
            let x_4210 : f32 = u_xlat13.z;
            let x_4211 : f32 = u_xlat86;
            let x_4213 : f32 = u_xlat85;
            u_xlat85 = ((x_4210 * x_4211) + x_4213);
            let x_4216 : vec4<f32> = u_xlat12;
            let x_4217 : vec2<f32> = vec2<f32>(x_4216.x, x_4216.y);
            let x_4219 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4217.x, x_4217.y, x_4219);
            let x_4226 : vec3<f32> = txVec58;
            let x_4228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4226.xy, x_4226.z);
            u_xlat86 = x_4228;
            let x_4230 : f32 = u_xlat13.w;
            let x_4231 : f32 = u_xlat86;
            let x_4233 : f32 = u_xlat85;
            u_xlat84 = ((x_4230 * x_4231) + x_4233);
          }
        }
      } else {
        let x_4237 : vec4<f32> = u_xlat11;
        let x_4238 : vec2<f32> = vec2<f32>(x_4237.x, x_4237.y);
        let x_4240 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4238.x, x_4238.y, x_4240);
        let x_4247 : vec3<f32> = txVec59;
        let x_4249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4247.xy, x_4247.z);
        u_xlat84 = x_4249;
      }
      let x_4250 : i32 = u_xlati54;
      let x_4252 : f32 = x_845.x_AdditionalShadowParams[x_4250].x;
      u_xlat85 = (1.0f + -(x_4252));
      let x_4255 : f32 = u_xlat84;
      let x_4256 : i32 = u_xlati54;
      let x_4258 : f32 = x_845.x_AdditionalShadowParams[x_4256].x;
      let x_4260 : f32 = u_xlat85;
      u_xlat84 = ((x_4255 * x_4258) + x_4260);
      let x_4263 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4263);
      let x_4267 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4267 >= 1.0f);
      let x_4269 : bool = u_xlatb85;
      let x_4270 : bool = u_xlatb86;
      u_xlatb85 = (x_4269 | x_4270);
      let x_4272 : bool = u_xlatb85;
      let x_4273 : f32 = u_xlat84;
      u_xlat84 = select(x_4273, 1.0f, x_4272);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4276 : f32 = u_xlat84;
    u_xlat85 = (-(x_4276) + 1.0f);
    let x_4280 : f32 = u_xlat2.x;
    let x_4281 : f32 = u_xlat85;
    let x_4283 : f32 = u_xlat84;
    u_xlat84 = ((x_4280 * x_4281) + x_4283);
    let x_4285 : f32 = u_xlat81;
    let x_4286 : f32 = u_xlat84;
    u_xlat81 = (x_4285 * x_4286);
    let x_4288 : vec4<f32> = u_xlat1;
    let x_4290 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4288.x, x_4288.y, x_4288.z), vec3<f32>(x_4290.x, x_4290.y, x_4290.z));
    let x_4293 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4293, 0.0f, 1.0f);
    let x_4295 : f32 = u_xlat81;
    let x_4296 : f32 = u_xlat84;
    u_xlat81 = (x_4295 * x_4296);
    let x_4298 : f32 = u_xlat81;
    let x_4300 : i32 = u_xlati54;
    let x_4302 : vec4<f32> = x_2871.x_AdditionalLightsColor[x_4300];
    let x_4304 : vec3<f32> = (vec3<f32>(x_4298, x_4298, x_4298) * vec3<f32>(x_4302.x, x_4302.y, x_4302.z));
    let x_4305 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4304.x, x_4304.y, x_4304.z, x_4305.w);
    let x_4307 : vec4<f32> = u_xlat9;
    let x_4309 : f32 = u_xlat83;
    let x_4312 : vec4<f32> = u_xlat6;
    let x_4314 : vec3<f32> = ((vec3<f32>(x_4307.x, x_4307.y, x_4307.z) * vec3<f32>(x_4309, x_4309, x_4309)) + vec3<f32>(x_4312.x, x_4312.y, x_4312.z));
    let x_4315 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4314.x, x_4314.y, x_4314.z, x_4315.w);
    let x_4317 : vec4<f32> = u_xlat9;
    let x_4319 : vec4<f32> = u_xlat9;
    u_xlat54 = dot(vec3<f32>(x_4317.x, x_4317.y, x_4317.z), vec3<f32>(x_4319.x, x_4319.y, x_4319.z));
    let x_4322 : f32 = u_xlat54;
    u_xlat54 = max(x_4322, 1.17549435e-38f);
    let x_4324 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4324);
    let x_4326 : f32 = u_xlat54;
    let x_4328 : vec4<f32> = u_xlat9;
    let x_4330 : vec3<f32> = (vec3<f32>(x_4326, x_4326, x_4326) * vec3<f32>(x_4328.x, x_4328.y, x_4328.z));
    let x_4331 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4330.x, x_4330.y, x_4330.z, x_4331.w);
    let x_4333 : vec4<f32> = u_xlat1;
    let x_4335 : vec4<f32> = u_xlat9;
    u_xlat54 = dot(vec3<f32>(x_4333.x, x_4333.y, x_4333.z), vec3<f32>(x_4335.x, x_4335.y, x_4335.z));
    let x_4338 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4338, 0.0f, 1.0f);
    let x_4340 : vec4<f32> = u_xlat10;
    let x_4342 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4340.x, x_4340.y, x_4340.z), vec3<f32>(x_4342.x, x_4342.y, x_4342.z));
    let x_4345 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4345, 0.0f, 1.0f);
    let x_4347 : f32 = u_xlat54;
    let x_4348 : f32 = u_xlat54;
    u_xlat54 = (x_4347 * x_4348);
    let x_4350 : f32 = u_xlat54;
    let x_4352 : f32 = u_xlat0.x;
    u_xlat54 = ((x_4350 * x_4352) + 1.00001001358032226562f);
    let x_4355 : f32 = u_xlat81;
    let x_4356 : f32 = u_xlat81;
    u_xlat81 = (x_4355 * x_4356);
    let x_4358 : f32 = u_xlat54;
    let x_4359 : f32 = u_xlat54;
    u_xlat54 = (x_4358 * x_4359);
    let x_4361 : f32 = u_xlat81;
    u_xlat81 = max(x_4361, 0.10000000149011611938f);
    let x_4363 : f32 = u_xlat54;
    let x_4364 : f32 = u_xlat81;
    u_xlat54 = (x_4363 * x_4364);
    let x_4366 : f32 = u_xlat82;
    let x_4367 : f32 = u_xlat54;
    u_xlat54 = (x_4366 * x_4367);
    let x_4369 : f32 = u_xlat80;
    let x_4370 : f32 = u_xlat54;
    u_xlat54 = (x_4369 / x_4370);
    let x_4372 : vec4<f32> = u_xlat5;
    let x_4374 : f32 = u_xlat54;
    let x_4377 : vec4<f32> = u_xlat4;
    let x_4379 : vec3<f32> = ((vec3<f32>(x_4372.x, x_4372.y, x_4372.z) * vec3<f32>(x_4374, x_4374, x_4374)) + vec3<f32>(x_4377.x, x_4377.y, x_4377.z));
    let x_4380 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4379.x, x_4379.y, x_4379.z, x_4380.w);
    let x_4382 : vec4<f32> = u_xlat9;
    let x_4384 : vec4<f32> = u_xlat11;
    let x_4387 : vec4<f32> = u_xlat8;
    let x_4389 : vec3<f32> = ((vec3<f32>(x_4382.x, x_4382.y, x_4382.z) * vec3<f32>(x_4384.x, x_4384.y, x_4384.z)) + vec3<f32>(x_4387.x, x_4387.y, x_4387.z));
    let x_4390 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4389.x, x_4389.y, x_4389.z, x_4390.w);

    continuing {
      let x_4392 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4392 + bitcast<u32>(1i));
    }
  }
  let x_4394 : vec4<f32> = u_xlat3;
  let x_4396 : f32 = u_xlat26;
  let x_4399 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4394.x, x_4394.y, x_4394.z) * vec3<f32>(x_4396, x_4396, x_4396)) + vec3<f32>(x_4399.x, x_4399.y, x_4399.z));
  let x_4402 : vec4<f32> = u_xlat8;
  let x_4404 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4402.x, x_4402.y, x_4402.z) + x_4404);
  let x_4406 : f32 = u_xlat78;
  let x_4408 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4406, x_4406, x_4406) * x_4408);
  let x_4410 : f32 = u_xlat79;
  let x_4411 : f32 = u_xlat79;
  u_xlat78 = (x_4410 * -(x_4411));
  let x_4414 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4414);
  let x_4418 : vec3<f32> = u_xlat0;
  let x_4419 : f32 = u_xlat78;
  let x_4421 : vec3<f32> = (x_4418 * vec3<f32>(x_4419, x_4419, x_4419));
  let x_4422 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4421.x, x_4421.y, x_4421.z, x_4422.w);
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


