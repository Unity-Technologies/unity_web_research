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

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

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

@group(1) @binding(2) var<uniform> x_2570 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu54 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati54 : i32;

@group(1) @binding(1) var<uniform> x_2859 : AdditionalLights;

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
  var x_2444 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2991 : f32;
  var x_3001 : f32;
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
  let x_279 : f32 = u_xlat79;
  u_xlat79 = (x_279 + 0.00006103515625f);
  let x_282 : vec4<f32> = u_xlat4;
  let x_283 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec2<f32>(x_382.x, x_382.y), vec2<f32>(x_384.x, x_384.y));
  let x_387 : f32 = u_xlat79;
  u_xlat79 = min(x_387, 1.0f);
  let x_389 : f32 = u_xlat79;
  u_xlat79 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_392);
  let x_394 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec2<f32>(x_430.x, x_430.y), vec2<f32>(x_432.x, x_432.y));
  let x_435 : f32 = u_xlat79;
  u_xlat79 = min(x_435, 1.0f);
  let x_437 : f32 = u_xlat79;
  u_xlat79 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_440);
  let x_442 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec2<f32>(x_500.x, x_500.y), vec2<f32>(x_502.x, x_502.y));
  let x_505 : f32 = u_xlat79;
  u_xlat79 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat79;
  u_xlat79 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_510);
  let x_512 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec2<f32>(x_563.x, x_563.y), vec2<f32>(x_565.x, x_565.y));
  let x_568 : f32 = u_xlat79;
  u_xlat79 = min(x_568, 1.0f);
  let x_570 : f32 = u_xlat79;
  u_xlat79 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_573);
  let x_575 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec3<f32>(x_607.x, x_607.y, x_607.w), vec3<f32>(x_609.x, x_609.y, x_609.w));
  let x_612 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_612);
  let x_614 : f32 = u_xlat79;
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
  u_xlat52 = dot(x_692, x_693);
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
  u_xlat26 = dot(x_775, x_776);
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
  u_xlat79 = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat79;
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
  u_xlat79 = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_941 : f32 = u_xlat79;
  u_xlat79 = (-(x_941) + 4.0f);
  let x_946 : f32 = u_xlat79;
  u_xlatu79 = u32(x_946);
  let x_950 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_950) << bitcast<u32>(2i));
  let x_953 : vec3<f32> = vs_TEXCOORD7;
  let x_955 : i32 = u_xlati79;
  let x_958 : i32 = u_xlati79;
  let x_962 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_955 + 1i) / 4i)][((x_958 + 1i) % 4i)];
  let x_964 : vec3<f32> = (vec3<f32>(x_953.y, x_953.y, x_953.y) * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : i32 = u_xlati79;
  let x_969 : i32 = u_xlati79;
  let x_972 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_967 / 4i)][(x_969 % 4i)];
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_977 : vec4<f32> = u_xlat2;
  let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(x_974.x, x_974.x, x_974.x)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : i32 = u_xlati79;
  let x_985 : i32 = u_xlati79;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1001 : i32 = u_xlati79;
  let x_1004 : i32 = u_xlati79;
  let x_1008 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_1001 + 3i) / 4i)][((x_1004 + 3i) % 4i)];
  let x_1010 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1015 : f32 = vs_TEXCOORD7.y;
  let x_1017 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_1015 * x_1017);
  let x_1020 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1022 : f32 = vs_TEXCOORD7.x;
  let x_1024 : f32 = u_xlat79;
  u_xlat79 = ((x_1020 * x_1022) + x_1024);
  let x_1027 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1029 : f32 = vs_TEXCOORD7.z;
  let x_1031 : f32 = u_xlat79;
  u_xlat79 = ((x_1027 * x_1029) + x_1031);
  let x_1033 : f32 = u_xlat79;
  let x_1035 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_1033 + x_1035);
  let x_1037 : f32 = u_xlat79;
  let x_1040 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_1037) + -(x_1040));
  let x_1043 : f32 = u_xlat79;
  u_xlat79 = max(x_1043, 0.0f);
  let x_1045 : f32 = u_xlat79;
  let x_1047 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_1045 * x_1047);
  let x_1054 : vec4<f32> = vs_TEXCOORD0;
  let x_1057 : f32 = x_113.x_GlobalMipBias.x;
  let x_1058 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1054.z, x_1054.w), x_1057);
  u_xlat3 = x_1058;
  let x_1063 : vec4<f32> = vs_TEXCOORD0;
  let x_1066 : f32 = x_113.x_GlobalMipBias.x;
  let x_1067 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1063.z, x_1063.w), x_1066);
  let x_1068 : vec3<f32> = vec3<f32>(x_1067.x, x_1067.y, x_1067.z);
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat3;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1076 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1079 : vec4<f32> = u_xlat1;
  let x_1081 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat80;
  u_xlat80 = (x_1084 + 0.5f);
  let x_1086 : f32 = u_xlat80;
  let x_1088 : vec4<f32> = u_xlat4;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1094 : f32 = u_xlat3.w;
  u_xlat80 = max(x_1094, 0.00009999999747378752f);
  let x_1097 : vec4<f32> = u_xlat3;
  let x_1099 : f32 = u_xlat80;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) / vec3<f32>(x_1099, x_1099, x_1099));
  let x_1102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1105 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_1105) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1111 : f32 = u_xlat52;
  let x_1112 : f32 = u_xlat80;
  u_xlat81 = (x_1111 + -(x_1112));
  let x_1115 : f32 = u_xlat80;
  let x_1117 : vec4<f32> = u_xlat5;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115, x_1115, x_1115) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat5;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1127 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec3<f32> = u_xlat0;
  let x_1131 : vec4<f32> = u_xlat5;
  let x_1136 : vec3<f32> = ((vec3<f32>(x_1129.x, x_1129.x, x_1129.x) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1137 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1139) + 1.0f);
  let x_1144 : f32 = u_xlat0.x;
  let x_1146 : f32 = u_xlat0.x;
  u_xlat52 = (x_1144 * x_1146);
  let x_1148 : f32 = u_xlat52;
  u_xlat52 = max(x_1148, 0.0078125f);
  let x_1151 : f32 = u_xlat52;
  let x_1152 : f32 = u_xlat52;
  u_xlat80 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat81;
  u_xlat81 = (x_1154 + 1.0f);
  let x_1156 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1156, 0.0f, 1.0f);
  let x_1159 : f32 = u_xlat52;
  u_xlat82 = ((x_1159 * 4.0f) + 2.0f);
  let x_1162 : f32 = u_xlat26;
  u_xlat26 = min(x_1162, 1.0f);
  let x_1166 : f32 = x_833.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_1166);
  let x_1168 : bool = u_xlatb83;
  if (x_1168) {
    let x_1172 : f32 = x_833.x_MainLightShadowParams.y;
    u_xlatb83 = (x_1172 == 1.0f);
    let x_1174 : bool = u_xlatb83;
    if (x_1174) {
      let x_1177 : vec4<f32> = u_xlat2;
      let x_1180 : vec4<f32> = x_833.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y) + x_1180);
      let x_1184 : vec4<f32> = u_xlat6;
      let x_1185 : vec2<f32> = vec2<f32>(x_1184.x, x_1184.y);
      let x_1187 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1185.x, x_1185.y, x_1187);
      let x_1199 : vec3<f32> = txVec0;
      let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1199.xy, x_1199.z);
      u_xlat7.x = x_1201;
      let x_1204 : vec4<f32> = u_xlat6;
      let x_1205 : vec2<f32> = vec2<f32>(x_1204.z, x_1204.w);
      let x_1207 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1205.x, x_1205.y, x_1207);
      let x_1214 : vec3<f32> = txVec1;
      let x_1216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1214.xy, x_1214.z);
      u_xlat7.y = x_1216;
      let x_1218 : vec4<f32> = u_xlat2;
      let x_1221 : vec4<f32> = x_833.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) + x_1221);
      let x_1224 : vec4<f32> = u_xlat6;
      let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
      let x_1227 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
      let x_1234 : vec3<f32> = txVec2;
      let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
      u_xlat7.z = x_1236;
      let x_1239 : vec4<f32> = u_xlat6;
      let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
      let x_1242 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
      let x_1249 : vec3<f32> = txVec3;
      let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
      u_xlat7.w = x_1251;
      let x_1254 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_1254, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1261 : f32 = x_833.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1261 == 2.0f);
      let x_1263 : bool = u_xlatb6;
      if (x_1263) {
        let x_1266 : vec4<f32> = u_xlat2;
        let x_1269 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.z, x_1269.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1273 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1277 : vec2<f32> = floor(vec2<f32>(x_1275.x, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1282 : vec4<f32> = u_xlat2;
        let x_1285 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1285.z, x_1285.w)) + -(vec2<f32>(x_1288.x, x_1288.y)));
        let x_1292 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1292.x, x_1292.x, x_1292.y, x_1292.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1296 : vec4<f32> = u_xlat7;
        let x_1298 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1296.x, x_1296.x, x_1296.z, x_1296.z) * vec4<f32>(x_1298.x, x_1298.x, x_1298.z, x_1298.z));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1305 : vec2<f32> = (vec2<f32>(x_1301.y, x_1301.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1306 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1305.x, x_1306.y, x_1305.y, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat8;
        let x_1311 : vec2<f32> = u_xlat58;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1308.x, x_1308.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1311));
        let x_1314 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1317 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1317) + vec2<f32>(1.0f, 1.0f));
        let x_1321 : vec2<f32> = u_xlat58;
        let x_1323 : vec2<f32> = min(x_1321, vec2<f32>(0.0f, 0.0f));
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1332 : vec2<f32> = u_xlat60;
        let x_1333 : vec2<f32> = ((-(vec2<f32>(x_1326.x, x_1326.y)) * vec2<f32>(x_1329.x, x_1329.y)) + x_1332);
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1336, vec2<f32>(0.0f, 0.0f));
        let x_1338 : vec2<f32> = u_xlat58;
        let x_1340 : vec2<f32> = u_xlat58;
        let x_1342 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1338) * x_1340) + vec2<f32>(x_1342.y, x_1342.w));
        let x_1345 : vec4<f32> = u_xlat9;
        let x_1347 : vec2<f32> = (vec2<f32>(x_1345.x, x_1345.y) + vec2<f32>(1.0f, 1.0f));
        let x_1348 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1350 + vec2<f32>(1.0f, 1.0f));
        let x_1352 : vec4<f32> = u_xlat8;
        let x_1356 : vec2<f32> = (vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1359 : vec2<f32> = u_xlat60;
        let x_1360 : vec2<f32> = (x_1359 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1361 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
        let x_1363 : vec4<f32> = u_xlat9;
        let x_1365 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1366 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
        let x_1368 : vec2<f32> = u_xlat58;
        let x_1369 : vec2<f32> = (x_1368 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1372 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1372.y, x_1372.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1376 : f32 = u_xlat9.x;
        u_xlat10.z = x_1376;
        let x_1379 : f32 = u_xlat58.x;
        u_xlat10.w = x_1379;
        let x_1382 : f32 = u_xlat11.x;
        u_xlat8.z = x_1382;
        let x_1385 : f32 = u_xlat7.x;
        u_xlat8.w = x_1385;
        let x_1387 : vec4<f32> = u_xlat8;
        let x_1389 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1387.z, x_1387.w, x_1387.x, x_1387.z) + vec4<f32>(x_1389.z, x_1389.w, x_1389.x, x_1389.z));
        let x_1393 : f32 = u_xlat10.y;
        u_xlat9.z = x_1393;
        let x_1396 : f32 = u_xlat58.y;
        u_xlat9.w = x_1396;
        let x_1399 : f32 = u_xlat8.y;
        u_xlat11.z = x_1399;
        let x_1402 : f32 = u_xlat7.z;
        u_xlat11.w = x_1402;
        let x_1404 : vec4<f32> = u_xlat9;
        let x_1406 : vec4<f32> = u_xlat11;
        let x_1408 : vec3<f32> = (vec3<f32>(x_1404.z, x_1404.y, x_1404.w) + vec3<f32>(x_1406.z, x_1406.y, x_1406.w));
        let x_1409 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
        let x_1411 : vec4<f32> = u_xlat8;
        let x_1413 : vec4<f32> = u_xlat12;
        let x_1415 : vec3<f32> = (vec3<f32>(x_1411.x, x_1411.z, x_1411.w) / vec3<f32>(x_1413.z, x_1413.w, x_1413.y));
        let x_1416 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
        let x_1418 : vec4<f32> = u_xlat8;
        let x_1423 : vec3<f32> = (vec3<f32>(x_1418.x, x_1418.y, x_1418.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
        let x_1426 : vec4<f32> = u_xlat11;
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1430 : vec3<f32> = (vec3<f32>(x_1426.z, x_1426.y, x_1426.w) / vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
        let x_1431 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1435 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1436 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1441 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1443 : vec3<f32> = (vec3<f32>(x_1438.y, x_1438.x, x_1438.z) * vec3<f32>(x_1441.x, x_1441.x, x_1441.x));
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
        let x_1446 : vec4<f32> = u_xlat9;
        let x_1449 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1451 : vec3<f32> = (vec3<f32>(x_1446.x, x_1446.y, x_1446.z) * vec3<f32>(x_1449.y, x_1449.y, x_1449.y));
        let x_1452 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
        let x_1455 : f32 = u_xlat9.x;
        u_xlat8.w = x_1455;
        let x_1457 : vec4<f32> = u_xlat6;
        let x_1460 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1463 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1457.x, x_1457.y, x_1457.x, x_1457.y) * vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.y)) + vec4<f32>(x_1463.y, x_1463.w, x_1463.x, x_1463.w));
        let x_1466 : vec4<f32> = u_xlat6;
        let x_1469 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1472 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1466.x, x_1466.y) * vec2<f32>(x_1469.x, x_1469.y)) + vec2<f32>(x_1472.z, x_1472.w));
        let x_1476 : f32 = u_xlat8.y;
        u_xlat9.w = x_1476;
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.y, x_1478.z);
        let x_1480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1480.x, x_1479.x, x_1480.z, x_1479.y);
        let x_1482 : vec4<f32> = u_xlat6;
        let x_1485 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1482.x, x_1482.y, x_1482.x, x_1482.y) * vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y)) + vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1488.y));
        let x_1491 : vec4<f32> = u_xlat6;
        let x_1494 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1491.x, x_1491.y, x_1491.x, x_1491.y) * vec4<f32>(x_1494.x, x_1494.y, x_1494.x, x_1494.y)) + vec4<f32>(x_1497.w, x_1497.y, x_1497.w, x_1497.z));
        let x_1500 : vec4<f32> = u_xlat6;
        let x_1503 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1506 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y) * vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y)) + vec4<f32>(x_1506.x, x_1506.w, x_1506.z, x_1506.w));
        let x_1509 : vec4<f32> = u_xlat7;
        let x_1511 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1509.x, x_1509.x, x_1509.x, x_1509.y) * vec4<f32>(x_1511.z, x_1511.w, x_1511.y, x_1511.z));
        let x_1515 : vec4<f32> = u_xlat7;
        let x_1517 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1515.y, x_1515.y, x_1515.z, x_1515.z) * x_1517);
        let x_1520 : f32 = u_xlat7.z;
        let x_1522 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1520 * x_1522);
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1537 : vec3<f32> = txVec4;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat32 = x_1539;
        let x_1541 : vec4<f32> = u_xlat10;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec5;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat7.x = x_1553;
        let x_1556 : f32 = u_xlat7.x;
        let x_1558 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1556 * x_1558);
        let x_1562 : f32 = u_xlat13.x;
        let x_1563 : f32 = u_xlat32;
        let x_1566 : f32 = u_xlat7.x;
        u_xlat32 = ((x_1562 * x_1563) + x_1566);
        let x_1569 : vec2<f32> = u_xlat58;
        let x_1571 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec6;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat58.x = x_1580;
        let x_1583 : f32 = u_xlat13.z;
        let x_1585 : f32 = u_xlat58.x;
        let x_1587 : f32 = u_xlat32;
        u_xlat32 = ((x_1583 * x_1585) + x_1587);
        let x_1590 : vec4<f32> = u_xlat9;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec7;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
        u_xlat58.x = x_1602;
        let x_1605 : f32 = u_xlat13.w;
        let x_1607 : f32 = u_xlat58.x;
        let x_1609 : f32 = u_xlat32;
        u_xlat32 = ((x_1605 * x_1607) + x_1609);
        let x_1612 : vec4<f32> = u_xlat11;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
        let x_1615 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec8;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1622.xy, x_1622.z);
        u_xlat58.x = x_1624;
        let x_1627 : f32 = u_xlat14.x;
        let x_1629 : f32 = u_xlat58.x;
        let x_1631 : f32 = u_xlat32;
        u_xlat32 = ((x_1627 * x_1629) + x_1631);
        let x_1634 : vec4<f32> = u_xlat11;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.z, x_1634.w);
        let x_1637 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec9;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat58.x = x_1646;
        let x_1649 : f32 = u_xlat14.y;
        let x_1651 : f32 = u_xlat58.x;
        let x_1653 : f32 = u_xlat32;
        u_xlat32 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat9;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.z, x_1656.w);
        let x_1659 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec10;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat58.x = x_1668;
        let x_1671 : f32 = u_xlat14.z;
        let x_1673 : f32 = u_xlat58.x;
        let x_1675 : f32 = u_xlat32;
        u_xlat32 = ((x_1671 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat8;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec11;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat58.x = x_1690;
        let x_1693 : f32 = u_xlat14.w;
        let x_1695 : f32 = u_xlat58.x;
        let x_1697 : f32 = u_xlat32;
        u_xlat32 = ((x_1693 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat8;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec12;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat58.x = x_1712;
        let x_1715 : f32 = u_xlat6.x;
        let x_1717 : f32 = u_xlat58.x;
        let x_1719 : f32 = u_xlat32;
        u_xlat83 = ((x_1715 * x_1717) + x_1719);
      } else {
        let x_1722 : vec4<f32> = u_xlat2;
        let x_1725 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1728 : vec2<f32> = ((vec2<f32>(x_1722.x, x_1722.y) * vec2<f32>(x_1725.z, x_1725.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1729 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1731 : vec4<f32> = u_xlat6;
        let x_1733 : vec2<f32> = floor(vec2<f32>(x_1731.x, x_1731.y));
        let x_1734 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1733.x, x_1733.y, x_1734.z, x_1734.w);
        let x_1736 : vec4<f32> = u_xlat2;
        let x_1739 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1742 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1736.x, x_1736.y) * vec2<f32>(x_1739.z, x_1739.w)) + -(vec2<f32>(x_1742.x, x_1742.y)));
        let x_1746 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1746.x, x_1746.x, x_1746.y, x_1746.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1749 : vec4<f32> = u_xlat7;
        let x_1751 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1749.x, x_1749.x, x_1749.z, x_1749.z) * vec4<f32>(x_1751.x, x_1751.x, x_1751.z, x_1751.z));
        let x_1754 : vec4<f32> = u_xlat8;
        let x_1758 : vec2<f32> = (vec2<f32>(x_1754.y, x_1754.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1759.x, x_1758.x, x_1759.z, x_1758.y);
        let x_1761 : vec4<f32> = u_xlat8;
        let x_1764 : vec2<f32> = u_xlat58;
        let x_1766 : vec2<f32> = ((vec2<f32>(x_1761.x, x_1761.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1764));
        let x_1767 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1766.x, x_1767.y, x_1766.y, x_1767.w);
        let x_1769 : vec2<f32> = u_xlat58;
        let x_1771 : vec2<f32> = (-(x_1769) + vec2<f32>(1.0f, 1.0f));
        let x_1772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
        let x_1774 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1774, vec2<f32>(0.0f, 0.0f));
        let x_1776 : vec2<f32> = u_xlat60;
        let x_1778 : vec2<f32> = u_xlat60;
        let x_1780 : vec4<f32> = u_xlat8;
        let x_1782 : vec2<f32> = ((-(x_1776) * x_1778) + vec2<f32>(x_1780.x, x_1780.y));
        let x_1783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1782.x, x_1782.y, x_1783.z, x_1783.w);
        let x_1785 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1785, vec2<f32>(0.0f, 0.0f));
        let x_1788 : vec2<f32> = u_xlat60;
        let x_1790 : vec2<f32> = u_xlat60;
        let x_1792 : vec4<f32> = u_xlat7;
        let x_1794 : vec2<f32> = ((-(x_1788) * x_1790) + vec2<f32>(x_1792.y, x_1792.w));
        let x_1795 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1794.x, x_1795.y, x_1794.y);
        let x_1797 : vec4<f32> = u_xlat8;
        let x_1799 : vec2<f32> = (vec2<f32>(x_1797.x, x_1797.y) + vec2<f32>(2.0f, 2.0f));
        let x_1800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1799.x, x_1799.y, x_1800.z, x_1800.w);
        let x_1802 : vec3<f32> = u_xlat33;
        let x_1804 : vec2<f32> = (vec2<f32>(x_1802.x, x_1802.z) + vec2<f32>(2.0f, 2.0f));
        let x_1805 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1805.x, x_1804.x, x_1805.z, x_1804.y);
        let x_1808 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1808 * 0.08163200318813323975f);
        let x_1812 : vec4<f32> = u_xlat7;
        let x_1815 : vec3<f32> = (vec3<f32>(x_1812.z, x_1812.x, x_1812.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1816 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
        let x_1818 : vec4<f32> = u_xlat8;
        let x_1821 : vec2<f32> = (vec2<f32>(x_1818.x, x_1818.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1822 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1821.x, x_1821.y, x_1822.z, x_1822.w);
        let x_1825 : f32 = u_xlat11.y;
        u_xlat10.x = x_1825;
        let x_1827 : vec2<f32> = u_xlat58;
        let x_1834 : vec2<f32> = ((vec2<f32>(x_1827.x, x_1827.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1835 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1835.x, x_1834.x, x_1835.z, x_1834.y);
        let x_1837 : vec2<f32> = u_xlat58;
        let x_1841 : vec2<f32> = ((vec2<f32>(x_1837.x, x_1837.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1842 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1841.x, x_1842.y, x_1841.y, x_1842.w);
        let x_1845 : f32 = u_xlat7.x;
        u_xlat8.y = x_1845;
        let x_1848 : f32 = u_xlat9.y;
        u_xlat8.w = x_1848;
        let x_1850 : vec4<f32> = u_xlat8;
        let x_1851 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1850 + x_1851);
        let x_1853 : vec2<f32> = u_xlat58;
        let x_1856 : vec2<f32> = ((vec2<f32>(x_1853.y, x_1853.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1857 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1857.x, x_1856.x, x_1857.z, x_1856.y);
        let x_1859 : vec2<f32> = u_xlat58;
        let x_1862 : vec2<f32> = ((vec2<f32>(x_1859.y, x_1859.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1863 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1862.x, x_1863.y, x_1862.y, x_1863.w);
        let x_1866 : f32 = u_xlat7.y;
        u_xlat9.y = x_1866;
        let x_1868 : vec4<f32> = u_xlat9;
        let x_1869 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1868 + x_1869);
        let x_1871 : vec4<f32> = u_xlat8;
        let x_1872 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1871 / x_1872);
        let x_1874 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1874 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1880 : vec4<f32> = u_xlat9;
        let x_1881 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1880 / x_1881);
        let x_1883 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1883 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1885 : vec4<f32> = u_xlat8;
        let x_1888 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1885.w, x_1885.x, x_1885.y, x_1885.z) * vec4<f32>(x_1888.x, x_1888.x, x_1888.x, x_1888.x));
        let x_1891 : vec4<f32> = u_xlat9;
        let x_1894 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1891.x, x_1891.w, x_1891.y, x_1891.z) * vec4<f32>(x_1894.y, x_1894.y, x_1894.y, x_1894.y));
        let x_1897 : vec4<f32> = u_xlat8;
        let x_1898 : vec3<f32> = vec3<f32>(x_1897.y, x_1897.z, x_1897.w);
        let x_1899 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1898.x, x_1899.y, x_1898.y, x_1898.z);
        let x_1902 : f32 = u_xlat9.x;
        u_xlat11.y = x_1902;
        let x_1904 : vec4<f32> = u_xlat6;
        let x_1907 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1910 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1904.x, x_1904.y, x_1904.x, x_1904.y) * vec4<f32>(x_1907.x, x_1907.y, x_1907.x, x_1907.y)) + vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1910.y));
        let x_1913 : vec4<f32> = u_xlat6;
        let x_1916 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1919 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1913.x, x_1913.y) * vec2<f32>(x_1916.x, x_1916.y)) + vec2<f32>(x_1919.w, x_1919.y));
        let x_1923 : f32 = u_xlat11.y;
        u_xlat8.y = x_1923;
        let x_1926 : f32 = u_xlat9.z;
        u_xlat11.y = x_1926;
        let x_1928 : vec4<f32> = u_xlat6;
        let x_1931 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1934 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1928.x, x_1928.y, x_1928.x, x_1928.y) * vec4<f32>(x_1931.x, x_1931.y, x_1931.x, x_1931.y)) + vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1934.y));
        let x_1937 : vec4<f32> = u_xlat6;
        let x_1940 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1943 : vec4<f32> = u_xlat11;
        let x_1945 : vec2<f32> = ((vec2<f32>(x_1937.x, x_1937.y) * vec2<f32>(x_1940.x, x_1940.y)) + vec2<f32>(x_1943.w, x_1943.y));
        let x_1946 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1945.x, x_1945.y, x_1946.z, x_1946.w);
        let x_1949 : f32 = u_xlat11.y;
        u_xlat8.z = x_1949;
        let x_1952 : vec4<f32> = u_xlat6;
        let x_1955 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1958 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1952.x, x_1952.y, x_1952.x, x_1952.y) * vec4<f32>(x_1955.x, x_1955.y, x_1955.x, x_1955.y)) + vec4<f32>(x_1958.x, x_1958.y, x_1958.x, x_1958.z));
        let x_1962 : f32 = u_xlat9.w;
        u_xlat11.y = x_1962;
        let x_1965 : vec4<f32> = u_xlat6;
        let x_1968 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1971 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1965.x, x_1965.y, x_1965.x, x_1965.y) * vec4<f32>(x_1968.x, x_1968.y, x_1968.x, x_1968.y)) + vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1971.y));
        let x_1975 : vec4<f32> = u_xlat6;
        let x_1978 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1981 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1975.x, x_1975.y) * vec2<f32>(x_1978.x, x_1978.y)) + vec2<f32>(x_1981.w, x_1981.y));
        let x_1985 : f32 = u_xlat11.y;
        u_xlat8.w = x_1985;
        let x_1988 : vec4<f32> = u_xlat6;
        let x_1991 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_1994 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1988.x, x_1988.y) * vec2<f32>(x_1991.x, x_1991.y)) + vec2<f32>(x_1994.x, x_1994.w));
        let x_1997 : vec4<f32> = u_xlat11;
        let x_1998 : vec3<f32> = vec3<f32>(x_1997.x, x_1997.z, x_1997.w);
        let x_1999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1998.x, x_1999.y, x_1998.y, x_1998.z);
        let x_2001 : vec4<f32> = u_xlat6;
        let x_2004 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2007 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2001.x, x_2001.y, x_2001.x, x_2001.y) * vec4<f32>(x_2004.x, x_2004.y, x_2004.x, x_2004.y)) + vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2007.y));
        let x_2011 : vec4<f32> = u_xlat6;
        let x_2014 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2017 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2011.x, x_2011.y) * vec2<f32>(x_2014.x, x_2014.y)) + vec2<f32>(x_2017.w, x_2017.y));
        let x_2021 : f32 = u_xlat8.x;
        u_xlat9.x = x_2021;
        let x_2023 : vec4<f32> = u_xlat6;
        let x_2026 : vec4<f32> = x_833.x_MainLightShadowmapSize;
        let x_2029 : vec4<f32> = u_xlat9;
        let x_2031 : vec2<f32> = ((vec2<f32>(x_2023.x, x_2023.y) * vec2<f32>(x_2026.x, x_2026.y)) + vec2<f32>(x_2029.x, x_2029.y));
        let x_2032 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2031.x, x_2031.y, x_2032.z, x_2032.w);
        let x_2035 : vec4<f32> = u_xlat7;
        let x_2037 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2035.x, x_2035.x, x_2035.x, x_2035.x) * x_2037);
        let x_2040 : vec4<f32> = u_xlat7;
        let x_2042 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2040.y, x_2040.y, x_2040.y, x_2040.y) * x_2042);
        let x_2045 : vec4<f32> = u_xlat7;
        let x_2047 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2045.z, x_2045.z, x_2045.z, x_2045.z) * x_2047);
        let x_2049 : vec4<f32> = u_xlat7;
        let x_2051 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2049.w, x_2049.w, x_2049.w, x_2049.w) * x_2051);
        let x_2054 : vec4<f32> = u_xlat12;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.x, x_2054.y);
        let x_2057 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec13;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2064.xy, x_2064.z);
        u_xlat8.x = x_2066;
        let x_2069 : vec4<f32> = u_xlat12;
        let x_2070 : vec2<f32> = vec2<f32>(x_2069.z, x_2069.w);
        let x_2072 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2070.x, x_2070.y, x_2072);
        let x_2080 : vec3<f32> = txVec14;
        let x_2082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2080.xy, x_2080.z);
        u_xlat86 = x_2082;
        let x_2083 : f32 = u_xlat86;
        let x_2085 : f32 = u_xlat17.y;
        u_xlat86 = (x_2083 * x_2085);
        let x_2088 : f32 = u_xlat17.x;
        let x_2090 : f32 = u_xlat8.x;
        let x_2092 : f32 = u_xlat86;
        u_xlat8.x = ((x_2088 * x_2090) + x_2092);
        let x_2096 : vec2<f32> = u_xlat58;
        let x_2098 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2096.x, x_2096.y, x_2098);
        let x_2105 : vec3<f32> = txVec15;
        let x_2107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2105.xy, x_2105.z);
        u_xlat58.x = x_2107;
        let x_2110 : f32 = u_xlat17.z;
        let x_2112 : f32 = u_xlat58.x;
        let x_2115 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_2110 * x_2112) + x_2115);
        let x_2119 : vec4<f32> = u_xlat15;
        let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
        let x_2122 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2130 : vec3<f32> = txVec16;
        let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2130.xy, x_2130.z);
        u_xlat84 = x_2132;
        let x_2134 : f32 = u_xlat17.w;
        let x_2135 : f32 = u_xlat84;
        let x_2138 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2134 * x_2135) + x_2138);
        let x_2142 : vec4<f32> = u_xlat13;
        let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
        let x_2145 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
        let x_2152 : vec3<f32> = txVec17;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
        u_xlat84 = x_2154;
        let x_2156 : f32 = u_xlat18.x;
        let x_2157 : f32 = u_xlat84;
        let x_2160 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2156 * x_2157) + x_2160);
        let x_2164 : vec4<f32> = u_xlat13;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.z, x_2164.w);
        let x_2167 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec18;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2174.xy, x_2174.z);
        u_xlat84 = x_2176;
        let x_2178 : f32 = u_xlat18.y;
        let x_2179 : f32 = u_xlat84;
        let x_2182 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2178 * x_2179) + x_2182);
        let x_2186 : vec4<f32> = u_xlat14;
        let x_2187 : vec2<f32> = vec2<f32>(x_2186.x, x_2186.y);
        let x_2189 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2187.x, x_2187.y, x_2189);
        let x_2196 : vec3<f32> = txVec19;
        let x_2198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2196.xy, x_2196.z);
        u_xlat84 = x_2198;
        let x_2200 : f32 = u_xlat18.z;
        let x_2201 : f32 = u_xlat84;
        let x_2204 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2200 * x_2201) + x_2204);
        let x_2208 : vec4<f32> = u_xlat15;
        let x_2209 : vec2<f32> = vec2<f32>(x_2208.z, x_2208.w);
        let x_2211 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2209.x, x_2209.y, x_2211);
        let x_2218 : vec3<f32> = txVec20;
        let x_2220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2218.xy, x_2218.z);
        u_xlat84 = x_2220;
        let x_2222 : f32 = u_xlat18.w;
        let x_2223 : f32 = u_xlat84;
        let x_2226 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2222 * x_2223) + x_2226);
        let x_2230 : vec4<f32> = u_xlat16;
        let x_2231 : vec2<f32> = vec2<f32>(x_2230.x, x_2230.y);
        let x_2233 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
        let x_2240 : vec3<f32> = txVec21;
        let x_2242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
        u_xlat84 = x_2242;
        let x_2244 : f32 = u_xlat19.x;
        let x_2245 : f32 = u_xlat84;
        let x_2248 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2244 * x_2245) + x_2248);
        let x_2252 : vec4<f32> = u_xlat16;
        let x_2253 : vec2<f32> = vec2<f32>(x_2252.z, x_2252.w);
        let x_2255 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2253.x, x_2253.y, x_2255);
        let x_2262 : vec3<f32> = txVec22;
        let x_2264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2262.xy, x_2262.z);
        u_xlat84 = x_2264;
        let x_2266 : f32 = u_xlat19.y;
        let x_2267 : f32 = u_xlat84;
        let x_2270 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2266 * x_2267) + x_2270);
        let x_2274 : vec2<f32> = u_xlat34;
        let x_2276 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
        let x_2283 : vec3<f32> = txVec23;
        let x_2285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2283.xy, x_2283.z);
        u_xlat84 = x_2285;
        let x_2287 : f32 = u_xlat19.z;
        let x_2288 : f32 = u_xlat84;
        let x_2291 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2287 * x_2288) + x_2291);
        let x_2295 : vec2<f32> = u_xlat66;
        let x_2297 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
        let x_2304 : vec3<f32> = txVec24;
        let x_2306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2304.xy, x_2304.z);
        u_xlat84 = x_2306;
        let x_2308 : f32 = u_xlat19.w;
        let x_2309 : f32 = u_xlat84;
        let x_2312 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2308 * x_2309) + x_2312);
        let x_2316 : vec4<f32> = u_xlat11;
        let x_2317 : vec2<f32> = vec2<f32>(x_2316.x, x_2316.y);
        let x_2319 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
        let x_2326 : vec3<f32> = txVec25;
        let x_2328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2326.xy, x_2326.z);
        u_xlat84 = x_2328;
        let x_2330 : f32 = u_xlat7.x;
        let x_2331 : f32 = u_xlat84;
        let x_2334 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2330 * x_2331) + x_2334);
        let x_2338 : vec4<f32> = u_xlat11;
        let x_2339 : vec2<f32> = vec2<f32>(x_2338.z, x_2338.w);
        let x_2341 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2339.x, x_2339.y, x_2341);
        let x_2348 : vec3<f32> = txVec26;
        let x_2350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2348.xy, x_2348.z);
        u_xlat84 = x_2350;
        let x_2352 : f32 = u_xlat7.y;
        let x_2353 : f32 = u_xlat84;
        let x_2356 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2352 * x_2353) + x_2356);
        let x_2360 : vec2<f32> = u_xlat61;
        let x_2362 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2360.x, x_2360.y, x_2362);
        let x_2369 : vec3<f32> = txVec27;
        let x_2371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2369.xy, x_2369.z);
        u_xlat84 = x_2371;
        let x_2373 : f32 = u_xlat7.z;
        let x_2374 : f32 = u_xlat84;
        let x_2377 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2373 * x_2374) + x_2377);
        let x_2381 : vec4<f32> = u_xlat6;
        let x_2382 : vec2<f32> = vec2<f32>(x_2381.x, x_2381.y);
        let x_2384 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
        let x_2391 : vec3<f32> = txVec28;
        let x_2393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2391.xy, x_2391.z);
        u_xlat6.x = x_2393;
        let x_2396 : f32 = u_xlat7.w;
        let x_2398 : f32 = u_xlat6.x;
        let x_2401 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2396 * x_2398) + x_2401);
      }
    }
  } else {
    let x_2405 : vec4<f32> = u_xlat2;
    let x_2406 : vec2<f32> = vec2<f32>(x_2405.x, x_2405.y);
    let x_2408 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2406.x, x_2406.y, x_2408);
    let x_2415 : vec3<f32> = txVec29;
    let x_2417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2415.xy, x_2415.z);
    u_xlat83 = x_2417;
  }
  let x_2419 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2419) + 1.0f);
  let x_2423 : f32 = u_xlat83;
  let x_2425 : f32 = x_833.x_MainLightShadowParams.x;
  let x_2428 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2423 * x_2425) + x_2428);
  let x_2433 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2433);
  let x_2437 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2437 >= 1.0f);
  let x_2439 : bool = u_xlatb54;
  let x_2440 : bool = u_xlatb28;
  u_xlatb28 = (x_2439 | x_2440);
  let x_2442 : bool = u_xlatb28;
  if (x_2442) {
    x_2444 = 1.0f;
  } else {
    let x_2449 : f32 = u_xlat2.x;
    x_2444 = x_2449;
  }
  let x_2450 : f32 = x_2444;
  u_xlat2.x = x_2450;
  let x_2452 : vec3<f32> = vs_TEXCOORD7;
  let x_2455 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2457 : vec3<f32> = (x_2452 + -(x_2455));
  let x_2458 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2458.w);
  let x_2461 : vec4<f32> = u_xlat6;
  let x_2463 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_2461.x, x_2461.y, x_2461.z), vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
  let x_2467 : f32 = u_xlat28;
  let x_2469 : f32 = x_833.x_MainLightShadowParams.z;
  let x_2472 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2467 * x_2469) + x_2472);
  let x_2474 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2474, 0.0f, 1.0f);
  let x_2477 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_2477) + 1.0f);
  let x_2480 : f32 = u_xlat54;
  let x_2481 : f32 = u_xlat83;
  let x_2484 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2480 * x_2481) + x_2484);
  let x_2488 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2488;
  let x_2491 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2491;
  let x_2494 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2494;
  let x_2496 : vec4<f32> = u_xlat6;
  let x_2499 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2496.x, x_2496.y, x_2496.z)), vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
  let x_2502 : f32 = u_xlat54;
  let x_2503 : f32 = u_xlat54;
  u_xlat54 = (x_2502 + x_2503);
  let x_2505 : vec4<f32> = u_xlat1;
  let x_2507 : f32 = u_xlat54;
  let x_2511 : vec4<f32> = u_xlat6;
  let x_2514 : vec3<f32> = ((vec3<f32>(x_2505.x, x_2505.y, x_2505.z) * -(vec3<f32>(x_2507, x_2507, x_2507))) + -(vec3<f32>(x_2511.x, x_2511.y, x_2511.z)));
  let x_2515 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
  let x_2517 : vec4<f32> = u_xlat1;
  let x_2519 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(vec3<f32>(x_2517.x, x_2517.y, x_2517.z), vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
  let x_2522 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2522, 0.0f, 1.0f);
  let x_2524 : f32 = u_xlat54;
  u_xlat54 = (-(x_2524) + 1.0f);
  let x_2527 : f32 = u_xlat54;
  let x_2528 : f32 = u_xlat54;
  u_xlat54 = (x_2527 * x_2528);
  let x_2530 : f32 = u_xlat54;
  let x_2531 : f32 = u_xlat54;
  u_xlat54 = (x_2530 * x_2531);
  let x_2534 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2534) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2541 : f32 = u_xlat0.x;
  let x_2542 : f32 = u_xlat83;
  u_xlat0.x = (x_2541 * x_2542);
  let x_2546 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2546 * 6.0f);
  let x_2558 : vec4<f32> = u_xlat7;
  let x_2561 : f32 = u_xlat0.x;
  let x_2562 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2558.x, x_2558.y, x_2558.z), x_2561);
  u_xlat7 = x_2562;
  let x_2564 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2564 + -1.0f);
  let x_2572 : f32 = x_2570.unity_SpecCube0_HDR.w;
  let x_2574 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2572 * x_2574) + 1.0f);
  let x_2579 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2579, 0.0f);
  let x_2583 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2583);
  let x_2587 : f32 = u_xlat0.x;
  let x_2589 : f32 = x_2570.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2587 * x_2589);
  let x_2593 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2593);
  let x_2597 : f32 = u_xlat0.x;
  let x_2599 : f32 = x_2570.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2597 * x_2599);
  let x_2602 : vec4<f32> = u_xlat7;
  let x_2604 : vec3<f32> = u_xlat0;
  let x_2606 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.y, x_2602.z) * vec3<f32>(x_2604.x, x_2604.x, x_2604.x));
  let x_2607 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
  let x_2609 : f32 = u_xlat52;
  let x_2611 : f32 = u_xlat52;
  let x_2615 : vec2<f32> = ((vec2<f32>(x_2609, x_2609) * vec2<f32>(x_2611, x_2611)) + vec2<f32>(-1.0f, 1.0f));
  let x_2616 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2615.x, x_2616.y, x_2615.y);
  let x_2619 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2619);
  let x_2621 : vec4<f32> = u_xlat5;
  let x_2624 : f32 = u_xlat81;
  let x_2626 : vec3<f32> = (-(vec3<f32>(x_2621.x, x_2621.y, x_2621.z)) + vec3<f32>(x_2624, x_2624, x_2624));
  let x_2627 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
  let x_2629 : f32 = u_xlat54;
  let x_2631 : vec4<f32> = u_xlat8;
  let x_2634 : vec4<f32> = u_xlat5;
  let x_2636 : vec3<f32> = ((vec3<f32>(x_2629, x_2629, x_2629) * vec3<f32>(x_2631.x, x_2631.y, x_2631.z)) + vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
  let x_2637 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
  let x_2639 : f32 = u_xlat52;
  let x_2641 : vec4<f32> = u_xlat8;
  let x_2643 : vec3<f32> = (vec3<f32>(x_2639, x_2639, x_2639) * vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
  let x_2644 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
  let x_2646 : vec4<f32> = u_xlat7;
  let x_2648 : vec4<f32> = u_xlat8;
  let x_2650 : vec3<f32> = (vec3<f32>(x_2646.x, x_2646.y, x_2646.z) * vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
  let x_2651 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
  let x_2653 : vec4<f32> = u_xlat3;
  let x_2655 : vec4<f32> = u_xlat4;
  let x_2658 : vec4<f32> = u_xlat7;
  let x_2660 : vec3<f32> = ((vec3<f32>(x_2653.x, x_2653.y, x_2653.z) * vec3<f32>(x_2655.x, x_2655.y, x_2655.z)) + vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
  let x_2661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
  let x_2664 : f32 = u_xlat2.x;
  let x_2666 : f32 = x_2570.unity_LightData.z;
  u_xlat52 = (x_2664 * x_2666);
  let x_2668 : vec4<f32> = u_xlat1;
  let x_2671 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2668.x, x_2668.y, x_2668.z), vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
  let x_2676 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2676, 0.0f, 1.0f);
  let x_2679 : f32 = u_xlat52;
  let x_2681 : f32 = u_xlat2.x;
  u_xlat52 = (x_2679 * x_2681);
  let x_2683 : f32 = u_xlat52;
  let x_2686 : vec4<f32> = x_113.x_MainLightColor;
  let x_2688 : vec3<f32> = (vec3<f32>(x_2683, x_2683, x_2683) * vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
  let x_2689 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
  let x_2691 : vec4<f32> = u_xlat6;
  let x_2694 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2696 : vec3<f32> = (vec3<f32>(x_2691.x, x_2691.y, x_2691.z) + vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
  let x_2697 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
  let x_2699 : vec4<f32> = u_xlat8;
  let x_2701 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2699.x, x_2699.y, x_2699.z), vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
  let x_2704 : f32 = u_xlat52;
  u_xlat52 = max(x_2704, 1.17549435e-38f);
  let x_2707 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2707);
  let x_2709 : f32 = u_xlat52;
  let x_2711 : vec4<f32> = u_xlat8;
  let x_2713 : vec3<f32> = (vec3<f32>(x_2709, x_2709, x_2709) * vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
  let x_2714 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
  let x_2716 : vec4<f32> = u_xlat1;
  let x_2718 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2716.x, x_2716.y, x_2716.z), vec3<f32>(x_2718.x, x_2718.y, x_2718.z));
  let x_2721 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2721, 0.0f, 1.0f);
  let x_2724 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2726 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_2724.x, x_2724.y, x_2724.z), vec3<f32>(x_2726.x, x_2726.y, x_2726.z));
  let x_2731 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2731, 0.0f, 1.0f);
  let x_2734 : f32 = u_xlat52;
  let x_2735 : f32 = u_xlat52;
  u_xlat52 = (x_2734 * x_2735);
  let x_2737 : f32 = u_xlat52;
  let x_2739 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2737 * x_2739) + 1.00001001358032226562f);
  let x_2744 : f32 = u_xlat2.x;
  let x_2746 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2744 * x_2746);
  let x_2749 : f32 = u_xlat52;
  let x_2750 : f32 = u_xlat52;
  u_xlat52 = (x_2749 * x_2750);
  let x_2753 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2753, 0.10000000149011611938f);
  let x_2757 : f32 = u_xlat52;
  let x_2759 : f32 = u_xlat2.x;
  u_xlat52 = (x_2757 * x_2759);
  let x_2761 : f32 = u_xlat82;
  let x_2762 : f32 = u_xlat52;
  u_xlat52 = (x_2761 * x_2762);
  let x_2764 : f32 = u_xlat80;
  let x_2765 : f32 = u_xlat52;
  u_xlat52 = (x_2764 / x_2765);
  let x_2767 : vec4<f32> = u_xlat5;
  let x_2769 : f32 = u_xlat52;
  let x_2772 : vec4<f32> = u_xlat4;
  let x_2774 : vec3<f32> = ((vec3<f32>(x_2767.x, x_2767.y, x_2767.z) * vec3<f32>(x_2769, x_2769, x_2769)) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
  let x_2775 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
  let x_2777 : vec4<f32> = u_xlat7;
  let x_2779 : vec4<f32> = u_xlat8;
  let x_2781 : vec3<f32> = (vec3<f32>(x_2777.x, x_2777.y, x_2777.z) * vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
  let x_2782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2781.x, x_2781.y, x_2781.z, x_2782.w);
  let x_2785 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2787 : f32 = x_2570.unity_LightData.y;
  u_xlat52 = min(x_2785, x_2787);
  let x_2790 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2790));
  let x_2793 : f32 = u_xlat28;
  let x_2795 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_2798 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2793 * x_2795) + x_2798);
  let x_2802 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2802, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2815 : u32 = u_xlatu_loop_1;
    let x_2816 : u32 = u_xlatu52;
    if ((x_2815 < x_2816)) {
    } else {
      break;
    }
    let x_2819 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2819 >> 2u);
    let x_2822 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2822 & 3u));
    let x_2825 : u32 = u_xlatu54;
    let x_2828 : vec4<f32> = x_2570.unity_LightIndices[bitcast<i32>(x_2825)];
    let x_2838 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2843 : vec4<u32> = indexable[x_2838];
    u_xlat54 = dot(x_2828, bitcast<vec4<f32>>(x_2843));
    let x_2847 : f32 = u_xlat54;
    u_xlati54 = i32(x_2847);
    let x_2849 : vec3<f32> = vs_TEXCOORD7;
    let x_2860 : i32 = u_xlati54;
    let x_2862 : vec4<f32> = x_2859.x_AdditionalLightsPosition[x_2860];
    let x_2865 : i32 = u_xlati54;
    let x_2867 : vec4<f32> = x_2859.x_AdditionalLightsPosition[x_2865];
    let x_2869 : vec3<f32> = ((-(x_2849) * vec3<f32>(x_2862.w, x_2862.w, x_2862.w)) + vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
    let x_2872 : vec4<f32> = u_xlat9;
    let x_2874 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_2872.x, x_2872.y, x_2872.z), vec3<f32>(x_2874.x, x_2874.y, x_2874.z));
    let x_2877 : f32 = u_xlat81;
    u_xlat81 = max(x_2877, 0.00006103515625f);
    let x_2879 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2879);
    let x_2881 : f32 = u_xlat83;
    let x_2883 : vec4<f32> = u_xlat9;
    let x_2885 : vec3<f32> = (vec3<f32>(x_2881, x_2881, x_2881) * vec3<f32>(x_2883.x, x_2883.y, x_2883.z));
    let x_2886 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2885.x, x_2885.y, x_2885.z, x_2886.w);
    let x_2888 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2888);
    let x_2890 : f32 = u_xlat81;
    let x_2891 : i32 = u_xlati54;
    let x_2893 : f32 = x_2859.x_AdditionalLightsAttenuation[x_2891].x;
    u_xlat81 = (x_2890 * x_2893);
    let x_2895 : f32 = u_xlat81;
    let x_2897 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2895) * x_2897) + 1.0f);
    let x_2900 : f32 = u_xlat81;
    u_xlat81 = max(x_2900, 0.0f);
    let x_2902 : f32 = u_xlat81;
    let x_2903 : f32 = u_xlat81;
    u_xlat81 = (x_2902 * x_2903);
    let x_2905 : f32 = u_xlat81;
    let x_2906 : f32 = u_xlat84;
    u_xlat81 = (x_2905 * x_2906);
    let x_2908 : i32 = u_xlati54;
    let x_2910 : vec4<f32> = x_2859.x_AdditionalLightsSpotDir[x_2908];
    let x_2912 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2910.x, x_2910.y, x_2910.z), vec3<f32>(x_2912.x, x_2912.y, x_2912.z));
    let x_2915 : f32 = u_xlat84;
    let x_2916 : i32 = u_xlati54;
    let x_2918 : f32 = x_2859.x_AdditionalLightsAttenuation[x_2916].z;
    let x_2920 : i32 = u_xlati54;
    let x_2922 : f32 = x_2859.x_AdditionalLightsAttenuation[x_2920].w;
    u_xlat84 = ((x_2915 * x_2918) + x_2922);
    let x_2924 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2924, 0.0f, 1.0f);
    let x_2926 : f32 = u_xlat84;
    let x_2927 : f32 = u_xlat84;
    u_xlat84 = (x_2926 * x_2927);
    let x_2929 : f32 = u_xlat81;
    let x_2930 : f32 = u_xlat84;
    u_xlat81 = (x_2929 * x_2930);
    let x_2933 : i32 = u_xlati54;
    let x_2935 : f32 = x_833.x_AdditionalShadowParams[x_2933].w;
    u_xlati84 = i32(x_2935);
    let x_2938 : i32 = u_xlati84;
    u_xlatb85 = (x_2938 >= 0i);
    let x_2940 : bool = u_xlatb85;
    if (x_2940) {
      let x_2944 : i32 = u_xlati54;
      let x_2946 : f32 = x_833.x_AdditionalShadowParams[x_2944].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2946, x_2946, x_2946, x_2946))));
      let x_2950 : bool = u_xlatb85;
      if (x_2950) {
        let x_2954 : vec4<f32> = u_xlat10;
        let x_2957 : vec4<f32> = u_xlat10;
        let x_2960 : vec4<bool> = (abs(vec4<f32>(x_2954.z, x_2954.z, x_2954.y, x_2954.z)) >= abs(vec4<f32>(x_2957.x, x_2957.y, x_2957.x, x_2957.x)));
        let x_2962 : vec3<bool> = vec3<bool>(x_2960.x, x_2960.y, x_2960.z);
        let x_2963 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2962.x, x_2962.y, x_2962.z, x_2963.w);
        let x_2966 : bool = u_xlatb11.y;
        let x_2968 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2966 & x_2968);
        let x_2970 : vec4<f32> = u_xlat10;
        let x_2973 : vec4<bool> = (-(vec4<f32>(x_2970.z, x_2970.y, x_2970.z, x_2970.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2974 : vec3<bool> = vec3<bool>(x_2973.x, x_2973.y, x_2973.w);
        let x_2975 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2974.x, x_2974.y, x_2975.z, x_2974.z);
        let x_2978 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2978);
        let x_2983 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2983);
        let x_2987 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2987);
        let x_2990 : bool = u_xlatb11.z;
        if (x_2990) {
          let x_2995 : f32 = u_xlat11.y;
          x_2991 = x_2995;
        } else {
          let x_2997 : f32 = u_xlat86;
          x_2991 = x_2997;
        }
        let x_2998 : f32 = x_2991;
        u_xlat86 = x_2998;
        let x_3000 : bool = u_xlatb85;
        if (x_3000) {
          let x_3005 : f32 = u_xlat11.x;
          x_3001 = x_3005;
        } else {
          let x_3007 : f32 = u_xlat86;
          x_3001 = x_3007;
        }
        let x_3008 : f32 = x_3001;
        u_xlat85 = x_3008;
        let x_3009 : i32 = u_xlati54;
        let x_3011 : f32 = x_833.x_AdditionalShadowParams[x_3009].w;
        u_xlat86 = trunc(x_3011);
        let x_3013 : f32 = u_xlat85;
        let x_3014 : f32 = u_xlat86;
        u_xlat85 = (x_3013 + x_3014);
        let x_3016 : f32 = u_xlat85;
        u_xlati84 = i32(x_3016);
      }
      let x_3018 : i32 = u_xlati84;
      u_xlati84 = (x_3018 << bitcast<u32>(2i));
      let x_3020 : vec3<f32> = vs_TEXCOORD7;
      let x_3022 : i32 = u_xlati84;
      let x_3025 : i32 = u_xlati84;
      let x_3029 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3022 + 1i) / 4i)][((x_3025 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3020.y, x_3020.y, x_3020.y, x_3020.y) * x_3029);
      let x_3031 : i32 = u_xlati84;
      let x_3033 : i32 = u_xlati84;
      let x_3036 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_3031 / 4i)][(x_3033 % 4i)];
      let x_3037 : vec3<f32> = vs_TEXCOORD7;
      let x_3040 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3036 * vec4<f32>(x_3037.x, x_3037.x, x_3037.x, x_3037.x)) + x_3040);
      let x_3042 : i32 = u_xlati84;
      let x_3045 : i32 = u_xlati84;
      let x_3049 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3042 + 2i) / 4i)][((x_3045 + 2i) % 4i)];
      let x_3050 : vec3<f32> = vs_TEXCOORD7;
      let x_3053 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3049 * vec4<f32>(x_3050.z, x_3050.z, x_3050.z, x_3050.z)) + x_3053);
      let x_3055 : vec4<f32> = u_xlat11;
      let x_3056 : i32 = u_xlati84;
      let x_3059 : i32 = u_xlati84;
      let x_3063 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_3056 + 3i) / 4i)][((x_3059 + 3i) % 4i)];
      u_xlat11 = (x_3055 + x_3063);
      let x_3065 : vec4<f32> = u_xlat11;
      let x_3067 : vec4<f32> = u_xlat11;
      let x_3069 : vec3<f32> = (vec3<f32>(x_3065.x, x_3065.y, x_3065.z) / vec3<f32>(x_3067.w, x_3067.w, x_3067.w));
      let x_3070 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3069.x, x_3069.y, x_3069.z, x_3070.w);
      let x_3073 : i32 = u_xlati54;
      let x_3075 : f32 = x_833.x_AdditionalShadowParams[x_3073].y;
      u_xlatb84 = (0.0f < x_3075);
      let x_3077 : bool = u_xlatb84;
      if (x_3077) {
        let x_3080 : i32 = u_xlati54;
        let x_3082 : f32 = x_833.x_AdditionalShadowParams[x_3080].y;
        u_xlatb84 = (1.0f == x_3082);
        let x_3084 : bool = u_xlatb84;
        if (x_3084) {
          let x_3087 : vec4<f32> = u_xlat11;
          let x_3090 : vec4<f32> = x_833.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3087.x, x_3087.y, x_3087.x, x_3087.y) + x_3090);
          let x_3093 : vec4<f32> = u_xlat12;
          let x_3094 : vec2<f32> = vec2<f32>(x_3093.x, x_3093.y);
          let x_3096 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
          let x_3104 : vec3<f32> = txVec30;
          let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
          u_xlat13.x = x_3106;
          let x_3109 : vec4<f32> = u_xlat12;
          let x_3110 : vec2<f32> = vec2<f32>(x_3109.z, x_3109.w);
          let x_3112 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
          let x_3119 : vec3<f32> = txVec31;
          let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
          u_xlat13.y = x_3121;
          let x_3123 : vec4<f32> = u_xlat11;
          let x_3126 : vec4<f32> = x_833.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.y) + x_3126);
          let x_3129 : vec4<f32> = u_xlat12;
          let x_3130 : vec2<f32> = vec2<f32>(x_3129.x, x_3129.y);
          let x_3132 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
          let x_3139 : vec3<f32> = txVec32;
          let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
          u_xlat13.z = x_3141;
          let x_3144 : vec4<f32> = u_xlat12;
          let x_3145 : vec2<f32> = vec2<f32>(x_3144.z, x_3144.w);
          let x_3147 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
          let x_3154 : vec3<f32> = txVec33;
          let x_3156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3154.xy, x_3154.z);
          u_xlat13.w = x_3156;
          let x_3158 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3158, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3161 : i32 = u_xlati54;
          let x_3163 : f32 = x_833.x_AdditionalShadowParams[x_3161].y;
          u_xlatb85 = (2.0f == x_3163);
          let x_3165 : bool = u_xlatb85;
          if (x_3165) {
            let x_3168 : vec4<f32> = u_xlat11;
            let x_3171 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3174 : vec2<f32> = ((vec2<f32>(x_3168.x, x_3168.y) * vec2<f32>(x_3171.z, x_3171.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3175 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3177 : vec4<f32> = u_xlat12;
            let x_3179 : vec2<f32> = floor(vec2<f32>(x_3177.x, x_3177.y));
            let x_3180 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3179.x, x_3179.y, x_3180.z, x_3180.w);
            let x_3183 : vec4<f32> = u_xlat11;
            let x_3186 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3189 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3183.x, x_3183.y) * vec2<f32>(x_3186.z, x_3186.w)) + -(vec2<f32>(x_3189.x, x_3189.y)));
            let x_3193 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3193.x, x_3193.x, x_3193.y, x_3193.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3196 : vec4<f32> = u_xlat13;
            let x_3198 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3196.x, x_3196.x, x_3196.z, x_3196.z) * vec4<f32>(x_3198.x, x_3198.x, x_3198.z, x_3198.z));
            let x_3201 : vec4<f32> = u_xlat14;
            let x_3203 : vec2<f32> = (vec2<f32>(x_3201.y, x_3201.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3204 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3203.x, x_3204.y, x_3203.y, x_3204.w);
            let x_3206 : vec4<f32> = u_xlat14;
            let x_3209 : vec2<f32> = u_xlat64;
            let x_3211 : vec2<f32> = ((vec2<f32>(x_3206.x, x_3206.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3209));
            let x_3212 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3211.x, x_3211.y, x_3212.z, x_3212.w);
            let x_3214 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3214) + vec2<f32>(1.0f, 1.0f));
            let x_3217 : vec2<f32> = u_xlat64;
            let x_3218 : vec2<f32> = min(x_3217, vec2<f32>(0.0f, 0.0f));
            let x_3219 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3218.x, x_3218.y, x_3219.z, x_3219.w);
            let x_3221 : vec4<f32> = u_xlat15;
            let x_3224 : vec4<f32> = u_xlat15;
            let x_3227 : vec2<f32> = u_xlat66;
            let x_3228 : vec2<f32> = ((-(vec2<f32>(x_3221.x, x_3221.y)) * vec2<f32>(x_3224.x, x_3224.y)) + x_3227);
            let x_3229 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3228.x, x_3228.y, x_3229.z, x_3229.w);
            let x_3231 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3231, vec2<f32>(0.0f, 0.0f));
            let x_3233 : vec2<f32> = u_xlat64;
            let x_3235 : vec2<f32> = u_xlat64;
            let x_3237 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3233) * x_3235) + vec2<f32>(x_3237.y, x_3237.w));
            let x_3240 : vec4<f32> = u_xlat15;
            let x_3242 : vec2<f32> = (vec2<f32>(x_3240.x, x_3240.y) + vec2<f32>(1.0f, 1.0f));
            let x_3243 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3242.x, x_3242.y, x_3243.z, x_3243.w);
            let x_3245 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3245 + vec2<f32>(1.0f, 1.0f));
            let x_3247 : vec4<f32> = u_xlat14;
            let x_3249 : vec2<f32> = (vec2<f32>(x_3247.x, x_3247.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3250 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3249.x, x_3249.y, x_3250.z, x_3250.w);
            let x_3252 : vec2<f32> = u_xlat66;
            let x_3253 : vec2<f32> = (x_3252 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3254 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3253.x, x_3253.y, x_3254.z, x_3254.w);
            let x_3256 : vec4<f32> = u_xlat15;
            let x_3258 : vec2<f32> = (vec2<f32>(x_3256.x, x_3256.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3259 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3258.x, x_3258.y, x_3259.z, x_3259.w);
            let x_3261 : vec2<f32> = u_xlat64;
            let x_3262 : vec2<f32> = (x_3261 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3263 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3262.x, x_3262.y, x_3263.z, x_3263.w);
            let x_3265 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3265.y, x_3265.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3269 : f32 = u_xlat15.x;
            u_xlat16.z = x_3269;
            let x_3272 : f32 = u_xlat64.x;
            u_xlat16.w = x_3272;
            let x_3275 : f32 = u_xlat17.x;
            u_xlat14.z = x_3275;
            let x_3278 : f32 = u_xlat13.x;
            u_xlat14.w = x_3278;
            let x_3280 : vec4<f32> = u_xlat14;
            let x_3282 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3280.z, x_3280.w, x_3280.x, x_3280.z) + vec4<f32>(x_3282.z, x_3282.w, x_3282.x, x_3282.z));
            let x_3286 : f32 = u_xlat16.y;
            u_xlat15.z = x_3286;
            let x_3289 : f32 = u_xlat64.y;
            u_xlat15.w = x_3289;
            let x_3292 : f32 = u_xlat14.y;
            u_xlat17.z = x_3292;
            let x_3295 : f32 = u_xlat13.z;
            u_xlat17.w = x_3295;
            let x_3297 : vec4<f32> = u_xlat15;
            let x_3299 : vec4<f32> = u_xlat17;
            let x_3301 : vec3<f32> = (vec3<f32>(x_3297.z, x_3297.y, x_3297.w) + vec3<f32>(x_3299.z, x_3299.y, x_3299.w));
            let x_3302 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3301.x, x_3301.y, x_3301.z, x_3302.w);
            let x_3304 : vec4<f32> = u_xlat14;
            let x_3306 : vec4<f32> = u_xlat18;
            let x_3308 : vec3<f32> = (vec3<f32>(x_3304.x, x_3304.z, x_3304.w) / vec3<f32>(x_3306.z, x_3306.w, x_3306.y));
            let x_3309 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3309.w);
            let x_3311 : vec4<f32> = u_xlat14;
            let x_3313 : vec3<f32> = (vec3<f32>(x_3311.x, x_3311.y, x_3311.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3314 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3314.w);
            let x_3316 : vec4<f32> = u_xlat17;
            let x_3318 : vec4<f32> = u_xlat13;
            let x_3320 : vec3<f32> = (vec3<f32>(x_3316.z, x_3316.y, x_3316.w) / vec3<f32>(x_3318.x, x_3318.y, x_3318.z));
            let x_3321 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3320.x, x_3320.y, x_3320.z, x_3321.w);
            let x_3323 : vec4<f32> = u_xlat15;
            let x_3325 : vec3<f32> = (vec3<f32>(x_3323.x, x_3323.y, x_3323.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3326 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
            let x_3328 : vec4<f32> = u_xlat14;
            let x_3331 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3333 : vec3<f32> = (vec3<f32>(x_3328.y, x_3328.x, x_3328.z) * vec3<f32>(x_3331.x, x_3331.x, x_3331.x));
            let x_3334 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3334.w);
            let x_3336 : vec4<f32> = u_xlat15;
            let x_3339 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3341 : vec3<f32> = (vec3<f32>(x_3336.x, x_3336.y, x_3336.z) * vec3<f32>(x_3339.y, x_3339.y, x_3339.y));
            let x_3342 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
            let x_3345 : f32 = u_xlat15.x;
            u_xlat14.w = x_3345;
            let x_3347 : vec4<f32> = u_xlat12;
            let x_3350 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3353 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3347.x, x_3347.y, x_3347.x, x_3347.y) * vec4<f32>(x_3350.x, x_3350.y, x_3350.x, x_3350.y)) + vec4<f32>(x_3353.y, x_3353.w, x_3353.x, x_3353.w));
            let x_3356 : vec4<f32> = u_xlat12;
            let x_3359 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3362 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3356.x, x_3356.y) * vec2<f32>(x_3359.x, x_3359.y)) + vec2<f32>(x_3362.z, x_3362.w));
            let x_3366 : f32 = u_xlat14.y;
            u_xlat15.w = x_3366;
            let x_3368 : vec4<f32> = u_xlat15;
            let x_3369 : vec2<f32> = vec2<f32>(x_3368.y, x_3368.z);
            let x_3370 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3370.x, x_3369.x, x_3370.z, x_3369.y);
            let x_3372 : vec4<f32> = u_xlat12;
            let x_3375 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3378 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3372.x, x_3372.y, x_3372.x, x_3372.y) * vec4<f32>(x_3375.x, x_3375.y, x_3375.x, x_3375.y)) + vec4<f32>(x_3378.x, x_3378.y, x_3378.z, x_3378.y));
            let x_3381 : vec4<f32> = u_xlat12;
            let x_3384 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3387 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3381.x, x_3381.y, x_3381.x, x_3381.y) * vec4<f32>(x_3384.x, x_3384.y, x_3384.x, x_3384.y)) + vec4<f32>(x_3387.w, x_3387.y, x_3387.w, x_3387.z));
            let x_3390 : vec4<f32> = u_xlat12;
            let x_3393 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3396 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3390.x, x_3390.y, x_3390.x, x_3390.y) * vec4<f32>(x_3393.x, x_3393.y, x_3393.x, x_3393.y)) + vec4<f32>(x_3396.x, x_3396.w, x_3396.z, x_3396.w));
            let x_3399 : vec4<f32> = u_xlat13;
            let x_3401 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3399.x, x_3399.x, x_3399.x, x_3399.y) * vec4<f32>(x_3401.z, x_3401.w, x_3401.y, x_3401.z));
            let x_3405 : vec4<f32> = u_xlat13;
            let x_3407 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3405.y, x_3405.y, x_3405.z, x_3405.z) * x_3407);
            let x_3410 : f32 = u_xlat13.z;
            let x_3412 : f32 = u_xlat18.y;
            u_xlat85 = (x_3410 * x_3412);
            let x_3415 : vec4<f32> = u_xlat16;
            let x_3416 : vec2<f32> = vec2<f32>(x_3415.x, x_3415.y);
            let x_3418 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3416.x, x_3416.y, x_3418);
            let x_3425 : vec3<f32> = txVec34;
            let x_3427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3425.xy, x_3425.z);
            u_xlat86 = x_3427;
            let x_3429 : vec4<f32> = u_xlat16;
            let x_3430 : vec2<f32> = vec2<f32>(x_3429.z, x_3429.w);
            let x_3432 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3440 : vec3<f32> = txVec35;
            let x_3442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3440.xy, x_3440.z);
            u_xlat87 = x_3442;
            let x_3443 : f32 = u_xlat87;
            let x_3445 : f32 = u_xlat19.y;
            u_xlat87 = (x_3443 * x_3445);
            let x_3448 : f32 = u_xlat19.x;
            let x_3449 : f32 = u_xlat86;
            let x_3451 : f32 = u_xlat87;
            u_xlat86 = ((x_3448 * x_3449) + x_3451);
            let x_3454 : vec2<f32> = u_xlat64;
            let x_3456 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3454.x, x_3454.y, x_3456);
            let x_3463 : vec3<f32> = txVec36;
            let x_3465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3463.xy, x_3463.z);
            u_xlat87 = x_3465;
            let x_3467 : f32 = u_xlat19.z;
            let x_3468 : f32 = u_xlat87;
            let x_3470 : f32 = u_xlat86;
            u_xlat86 = ((x_3467 * x_3468) + x_3470);
            let x_3473 : vec4<f32> = u_xlat15;
            let x_3474 : vec2<f32> = vec2<f32>(x_3473.x, x_3473.y);
            let x_3476 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3474.x, x_3474.y, x_3476);
            let x_3483 : vec3<f32> = txVec37;
            let x_3485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3483.xy, x_3483.z);
            u_xlat87 = x_3485;
            let x_3487 : f32 = u_xlat19.w;
            let x_3488 : f32 = u_xlat87;
            let x_3490 : f32 = u_xlat86;
            u_xlat86 = ((x_3487 * x_3488) + x_3490);
            let x_3493 : vec4<f32> = u_xlat17;
            let x_3494 : vec2<f32> = vec2<f32>(x_3493.x, x_3493.y);
            let x_3496 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
            let x_3503 : vec3<f32> = txVec38;
            let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
            u_xlat87 = x_3505;
            let x_3507 : f32 = u_xlat20.x;
            let x_3508 : f32 = u_xlat87;
            let x_3510 : f32 = u_xlat86;
            u_xlat86 = ((x_3507 * x_3508) + x_3510);
            let x_3513 : vec4<f32> = u_xlat17;
            let x_3514 : vec2<f32> = vec2<f32>(x_3513.z, x_3513.w);
            let x_3516 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec39;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat87 = x_3525;
            let x_3527 : f32 = u_xlat20.y;
            let x_3528 : f32 = u_xlat87;
            let x_3530 : f32 = u_xlat86;
            u_xlat86 = ((x_3527 * x_3528) + x_3530);
            let x_3533 : vec4<f32> = u_xlat15;
            let x_3534 : vec2<f32> = vec2<f32>(x_3533.z, x_3533.w);
            let x_3536 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3534.x, x_3534.y, x_3536);
            let x_3543 : vec3<f32> = txVec40;
            let x_3545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3543.xy, x_3543.z);
            u_xlat87 = x_3545;
            let x_3547 : f32 = u_xlat20.z;
            let x_3548 : f32 = u_xlat87;
            let x_3550 : f32 = u_xlat86;
            u_xlat86 = ((x_3547 * x_3548) + x_3550);
            let x_3553 : vec4<f32> = u_xlat14;
            let x_3554 : vec2<f32> = vec2<f32>(x_3553.x, x_3553.y);
            let x_3556 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3554.x, x_3554.y, x_3556);
            let x_3563 : vec3<f32> = txVec41;
            let x_3565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3563.xy, x_3563.z);
            u_xlat87 = x_3565;
            let x_3567 : f32 = u_xlat20.w;
            let x_3568 : f32 = u_xlat87;
            let x_3570 : f32 = u_xlat86;
            u_xlat86 = ((x_3567 * x_3568) + x_3570);
            let x_3573 : vec4<f32> = u_xlat14;
            let x_3574 : vec2<f32> = vec2<f32>(x_3573.z, x_3573.w);
            let x_3576 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3574.x, x_3574.y, x_3576);
            let x_3583 : vec3<f32> = txVec42;
            let x_3585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3583.xy, x_3583.z);
            u_xlat87 = x_3585;
            let x_3586 : f32 = u_xlat85;
            let x_3587 : f32 = u_xlat87;
            let x_3589 : f32 = u_xlat86;
            u_xlat84 = ((x_3586 * x_3587) + x_3589);
          } else {
            let x_3592 : vec4<f32> = u_xlat11;
            let x_3595 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3598 : vec2<f32> = ((vec2<f32>(x_3592.x, x_3592.y) * vec2<f32>(x_3595.z, x_3595.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3599 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3598.x, x_3598.y, x_3599.z, x_3599.w);
            let x_3601 : vec4<f32> = u_xlat12;
            let x_3603 : vec2<f32> = floor(vec2<f32>(x_3601.x, x_3601.y));
            let x_3604 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3603.x, x_3603.y, x_3604.z, x_3604.w);
            let x_3606 : vec4<f32> = u_xlat11;
            let x_3609 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3612 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3606.x, x_3606.y) * vec2<f32>(x_3609.z, x_3609.w)) + -(vec2<f32>(x_3612.x, x_3612.y)));
            let x_3616 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3616.x, x_3616.x, x_3616.y, x_3616.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3619 : vec4<f32> = u_xlat13;
            let x_3621 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3619.x, x_3619.x, x_3619.z, x_3619.z) * vec4<f32>(x_3621.x, x_3621.x, x_3621.z, x_3621.z));
            let x_3624 : vec4<f32> = u_xlat14;
            let x_3626 : vec2<f32> = (vec2<f32>(x_3624.y, x_3624.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3627 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3627.x, x_3626.x, x_3627.z, x_3626.y);
            let x_3629 : vec4<f32> = u_xlat14;
            let x_3632 : vec2<f32> = u_xlat64;
            let x_3634 : vec2<f32> = ((vec2<f32>(x_3629.x, x_3629.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3632));
            let x_3635 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3634.x, x_3635.y, x_3634.y, x_3635.w);
            let x_3637 : vec2<f32> = u_xlat64;
            let x_3639 : vec2<f32> = (-(x_3637) + vec2<f32>(1.0f, 1.0f));
            let x_3640 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3639.x, x_3639.y, x_3640.z, x_3640.w);
            let x_3642 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3642, vec2<f32>(0.0f, 0.0f));
            let x_3644 : vec2<f32> = u_xlat66;
            let x_3646 : vec2<f32> = u_xlat66;
            let x_3648 : vec4<f32> = u_xlat14;
            let x_3650 : vec2<f32> = ((-(x_3644) * x_3646) + vec2<f32>(x_3648.x, x_3648.y));
            let x_3651 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3650.x, x_3650.y, x_3651.z, x_3651.w);
            let x_3653 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3653, vec2<f32>(0.0f, 0.0f));
            let x_3656 : vec2<f32> = u_xlat66;
            let x_3658 : vec2<f32> = u_xlat66;
            let x_3660 : vec4<f32> = u_xlat13;
            let x_3662 : vec2<f32> = ((-(x_3656) * x_3658) + vec2<f32>(x_3660.y, x_3660.w));
            let x_3663 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3662.x, x_3663.y, x_3662.y);
            let x_3665 : vec4<f32> = u_xlat14;
            let x_3667 : vec2<f32> = (vec2<f32>(x_3665.x, x_3665.y) + vec2<f32>(2.0f, 2.0f));
            let x_3668 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3667.x, x_3667.y, x_3668.z, x_3668.w);
            let x_3670 : vec3<f32> = u_xlat39;
            let x_3672 : vec2<f32> = (vec2<f32>(x_3670.x, x_3670.z) + vec2<f32>(2.0f, 2.0f));
            let x_3673 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3673.x, x_3672.x, x_3673.z, x_3672.y);
            let x_3676 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3676 * 0.08163200318813323975f);
            let x_3679 : vec4<f32> = u_xlat13;
            let x_3681 : vec3<f32> = (vec3<f32>(x_3679.z, x_3679.x, x_3679.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3682 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
            let x_3684 : vec4<f32> = u_xlat14;
            let x_3686 : vec2<f32> = (vec2<f32>(x_3684.x, x_3684.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3687 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3686.x, x_3686.y, x_3687.z, x_3687.w);
            let x_3690 : f32 = u_xlat17.y;
            u_xlat16.x = x_3690;
            let x_3692 : vec2<f32> = u_xlat64;
            let x_3695 : vec2<f32> = ((vec2<f32>(x_3692.x, x_3692.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3696 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3696.x, x_3695.x, x_3696.z, x_3695.y);
            let x_3698 : vec2<f32> = u_xlat64;
            let x_3701 : vec2<f32> = ((vec2<f32>(x_3698.x, x_3698.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3702 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3701.x, x_3702.y, x_3701.y, x_3702.w);
            let x_3705 : f32 = u_xlat13.x;
            u_xlat14.y = x_3705;
            let x_3708 : f32 = u_xlat15.y;
            u_xlat14.w = x_3708;
            let x_3710 : vec4<f32> = u_xlat14;
            let x_3711 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3710 + x_3711);
            let x_3713 : vec2<f32> = u_xlat64;
            let x_3716 : vec2<f32> = ((vec2<f32>(x_3713.y, x_3713.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3717 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3717.x, x_3716.x, x_3717.z, x_3716.y);
            let x_3719 : vec2<f32> = u_xlat64;
            let x_3722 : vec2<f32> = ((vec2<f32>(x_3719.y, x_3719.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3723 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3722.x, x_3723.y, x_3722.y, x_3723.w);
            let x_3726 : f32 = u_xlat13.y;
            u_xlat15.y = x_3726;
            let x_3728 : vec4<f32> = u_xlat15;
            let x_3729 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3728 + x_3729);
            let x_3731 : vec4<f32> = u_xlat14;
            let x_3732 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3731 / x_3732);
            let x_3734 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3734 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3736 : vec4<f32> = u_xlat15;
            let x_3737 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3736 / x_3737);
            let x_3739 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3739 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3741 : vec4<f32> = u_xlat14;
            let x_3744 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3741.w, x_3741.x, x_3741.y, x_3741.z) * vec4<f32>(x_3744.x, x_3744.x, x_3744.x, x_3744.x));
            let x_3747 : vec4<f32> = u_xlat15;
            let x_3750 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3747.x, x_3747.w, x_3747.y, x_3747.z) * vec4<f32>(x_3750.y, x_3750.y, x_3750.y, x_3750.y));
            let x_3753 : vec4<f32> = u_xlat14;
            let x_3754 : vec3<f32> = vec3<f32>(x_3753.y, x_3753.z, x_3753.w);
            let x_3755 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3754.x, x_3755.y, x_3754.y, x_3754.z);
            let x_3758 : f32 = u_xlat15.x;
            u_xlat17.y = x_3758;
            let x_3760 : vec4<f32> = u_xlat12;
            let x_3763 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3766 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3760.x, x_3760.y, x_3760.x, x_3760.y) * vec4<f32>(x_3763.x, x_3763.y, x_3763.x, x_3763.y)) + vec4<f32>(x_3766.x, x_3766.y, x_3766.z, x_3766.y));
            let x_3769 : vec4<f32> = u_xlat12;
            let x_3772 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3775 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3769.x, x_3769.y) * vec2<f32>(x_3772.x, x_3772.y)) + vec2<f32>(x_3775.w, x_3775.y));
            let x_3779 : f32 = u_xlat17.y;
            u_xlat14.y = x_3779;
            let x_3782 : f32 = u_xlat15.z;
            u_xlat17.y = x_3782;
            let x_3784 : vec4<f32> = u_xlat12;
            let x_3787 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3790 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3784.x, x_3784.y, x_3784.x, x_3784.y) * vec4<f32>(x_3787.x, x_3787.y, x_3787.x, x_3787.y)) + vec4<f32>(x_3790.x, x_3790.y, x_3790.z, x_3790.y));
            let x_3793 : vec4<f32> = u_xlat12;
            let x_3796 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3799 : vec4<f32> = u_xlat17;
            let x_3801 : vec2<f32> = ((vec2<f32>(x_3793.x, x_3793.y) * vec2<f32>(x_3796.x, x_3796.y)) + vec2<f32>(x_3799.w, x_3799.y));
            let x_3802 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3801.x, x_3801.y, x_3802.z, x_3802.w);
            let x_3805 : f32 = u_xlat17.y;
            u_xlat14.z = x_3805;
            let x_3808 : vec4<f32> = u_xlat12;
            let x_3811 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3814 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3808.x, x_3808.y, x_3808.x, x_3808.y) * vec4<f32>(x_3811.x, x_3811.y, x_3811.x, x_3811.y)) + vec4<f32>(x_3814.x, x_3814.y, x_3814.x, x_3814.z));
            let x_3818 : f32 = u_xlat15.w;
            u_xlat17.y = x_3818;
            let x_3821 : vec4<f32> = u_xlat12;
            let x_3824 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3827 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3821.x, x_3821.y, x_3821.x, x_3821.y) * vec4<f32>(x_3824.x, x_3824.y, x_3824.x, x_3824.y)) + vec4<f32>(x_3827.x, x_3827.y, x_3827.z, x_3827.y));
            let x_3831 : vec4<f32> = u_xlat12;
            let x_3834 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3837 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3831.x, x_3831.y) * vec2<f32>(x_3834.x, x_3834.y)) + vec2<f32>(x_3837.w, x_3837.y));
            let x_3841 : f32 = u_xlat17.y;
            u_xlat14.w = x_3841;
            let x_3844 : vec4<f32> = u_xlat12;
            let x_3847 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3850 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3844.x, x_3844.y) * vec2<f32>(x_3847.x, x_3847.y)) + vec2<f32>(x_3850.x, x_3850.w));
            let x_3853 : vec4<f32> = u_xlat17;
            let x_3854 : vec3<f32> = vec3<f32>(x_3853.x, x_3853.z, x_3853.w);
            let x_3855 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3854.x, x_3855.y, x_3854.y, x_3854.z);
            let x_3857 : vec4<f32> = u_xlat12;
            let x_3860 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3863 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3857.x, x_3857.y, x_3857.x, x_3857.y) * vec4<f32>(x_3860.x, x_3860.y, x_3860.x, x_3860.y)) + vec4<f32>(x_3863.x, x_3863.y, x_3863.z, x_3863.y));
            let x_3867 : vec4<f32> = u_xlat12;
            let x_3870 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3873 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3867.x, x_3867.y) * vec2<f32>(x_3870.x, x_3870.y)) + vec2<f32>(x_3873.w, x_3873.y));
            let x_3877 : f32 = u_xlat14.x;
            u_xlat15.x = x_3877;
            let x_3879 : vec4<f32> = u_xlat12;
            let x_3882 : vec4<f32> = x_833.x_AdditionalShadowmapSize;
            let x_3885 : vec4<f32> = u_xlat15;
            let x_3887 : vec2<f32> = ((vec2<f32>(x_3879.x, x_3879.y) * vec2<f32>(x_3882.x, x_3882.y)) + vec2<f32>(x_3885.x, x_3885.y));
            let x_3888 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3887.x, x_3887.y, x_3888.z, x_3888.w);
            let x_3891 : vec4<f32> = u_xlat13;
            let x_3893 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3891.x, x_3891.x, x_3891.x, x_3891.x) * x_3893);
            let x_3896 : vec4<f32> = u_xlat13;
            let x_3898 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3896.y, x_3896.y, x_3896.y, x_3896.y) * x_3898);
            let x_3901 : vec4<f32> = u_xlat13;
            let x_3903 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3901.z, x_3901.z, x_3901.z, x_3901.z) * x_3903);
            let x_3905 : vec4<f32> = u_xlat13;
            let x_3907 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3905.w, x_3905.w, x_3905.w, x_3905.w) * x_3907);
            let x_3910 : vec4<f32> = u_xlat18;
            let x_3911 : vec2<f32> = vec2<f32>(x_3910.x, x_3910.y);
            let x_3913 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3911.x, x_3911.y, x_3913);
            let x_3920 : vec3<f32> = txVec43;
            let x_3922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3920.xy, x_3920.z);
            u_xlat85 = x_3922;
            let x_3924 : vec4<f32> = u_xlat18;
            let x_3925 : vec2<f32> = vec2<f32>(x_3924.z, x_3924.w);
            let x_3927 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3925.x, x_3925.y, x_3927);
            let x_3934 : vec3<f32> = txVec44;
            let x_3936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3934.xy, x_3934.z);
            u_xlat86 = x_3936;
            let x_3937 : f32 = u_xlat86;
            let x_3939 : f32 = u_xlat23.y;
            u_xlat86 = (x_3937 * x_3939);
            let x_3942 : f32 = u_xlat23.x;
            let x_3943 : f32 = u_xlat85;
            let x_3945 : f32 = u_xlat86;
            u_xlat85 = ((x_3942 * x_3943) + x_3945);
            let x_3948 : vec2<f32> = u_xlat64;
            let x_3950 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
            let x_3957 : vec3<f32> = txVec45;
            let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
            u_xlat86 = x_3959;
            let x_3961 : f32 = u_xlat23.z;
            let x_3962 : f32 = u_xlat86;
            let x_3964 : f32 = u_xlat85;
            u_xlat85 = ((x_3961 * x_3962) + x_3964);
            let x_3967 : vec4<f32> = u_xlat21;
            let x_3968 : vec2<f32> = vec2<f32>(x_3967.x, x_3967.y);
            let x_3970 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3968.x, x_3968.y, x_3970);
            let x_3977 : vec3<f32> = txVec46;
            let x_3979 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3977.xy, x_3977.z);
            u_xlat86 = x_3979;
            let x_3981 : f32 = u_xlat23.w;
            let x_3982 : f32 = u_xlat86;
            let x_3984 : f32 = u_xlat85;
            u_xlat85 = ((x_3981 * x_3982) + x_3984);
            let x_3987 : vec4<f32> = u_xlat19;
            let x_3988 : vec2<f32> = vec2<f32>(x_3987.x, x_3987.y);
            let x_3990 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3988.x, x_3988.y, x_3990);
            let x_3997 : vec3<f32> = txVec47;
            let x_3999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3997.xy, x_3997.z);
            u_xlat86 = x_3999;
            let x_4001 : f32 = u_xlat24.x;
            let x_4002 : f32 = u_xlat86;
            let x_4004 : f32 = u_xlat85;
            u_xlat85 = ((x_4001 * x_4002) + x_4004);
            let x_4007 : vec4<f32> = u_xlat19;
            let x_4008 : vec2<f32> = vec2<f32>(x_4007.z, x_4007.w);
            let x_4010 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4008.x, x_4008.y, x_4010);
            let x_4017 : vec3<f32> = txVec48;
            let x_4019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4017.xy, x_4017.z);
            u_xlat86 = x_4019;
            let x_4021 : f32 = u_xlat24.y;
            let x_4022 : f32 = u_xlat86;
            let x_4024 : f32 = u_xlat85;
            u_xlat85 = ((x_4021 * x_4022) + x_4024);
            let x_4027 : vec4<f32> = u_xlat20;
            let x_4028 : vec2<f32> = vec2<f32>(x_4027.x, x_4027.y);
            let x_4030 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4028.x, x_4028.y, x_4030);
            let x_4037 : vec3<f32> = txVec49;
            let x_4039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4037.xy, x_4037.z);
            u_xlat86 = x_4039;
            let x_4041 : f32 = u_xlat24.z;
            let x_4042 : f32 = u_xlat86;
            let x_4044 : f32 = u_xlat85;
            u_xlat85 = ((x_4041 * x_4042) + x_4044);
            let x_4047 : vec4<f32> = u_xlat21;
            let x_4048 : vec2<f32> = vec2<f32>(x_4047.z, x_4047.w);
            let x_4050 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4048.x, x_4048.y, x_4050);
            let x_4057 : vec3<f32> = txVec50;
            let x_4059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4057.xy, x_4057.z);
            u_xlat86 = x_4059;
            let x_4061 : f32 = u_xlat24.w;
            let x_4062 : f32 = u_xlat86;
            let x_4064 : f32 = u_xlat85;
            u_xlat85 = ((x_4061 * x_4062) + x_4064);
            let x_4067 : vec4<f32> = u_xlat22;
            let x_4068 : vec2<f32> = vec2<f32>(x_4067.x, x_4067.y);
            let x_4070 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4068.x, x_4068.y, x_4070);
            let x_4077 : vec3<f32> = txVec51;
            let x_4079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4077.xy, x_4077.z);
            u_xlat86 = x_4079;
            let x_4081 : f32 = u_xlat25.x;
            let x_4082 : f32 = u_xlat86;
            let x_4084 : f32 = u_xlat85;
            u_xlat85 = ((x_4081 * x_4082) + x_4084);
            let x_4087 : vec4<f32> = u_xlat22;
            let x_4088 : vec2<f32> = vec2<f32>(x_4087.z, x_4087.w);
            let x_4090 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4088.x, x_4088.y, x_4090);
            let x_4097 : vec3<f32> = txVec52;
            let x_4099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4097.xy, x_4097.z);
            u_xlat86 = x_4099;
            let x_4101 : f32 = u_xlat25.y;
            let x_4102 : f32 = u_xlat86;
            let x_4104 : f32 = u_xlat85;
            u_xlat85 = ((x_4101 * x_4102) + x_4104);
            let x_4107 : vec2<f32> = u_xlat40;
            let x_4109 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4107.x, x_4107.y, x_4109);
            let x_4116 : vec3<f32> = txVec53;
            let x_4118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4116.xy, x_4116.z);
            u_xlat86 = x_4118;
            let x_4120 : f32 = u_xlat25.z;
            let x_4121 : f32 = u_xlat86;
            let x_4123 : f32 = u_xlat85;
            u_xlat85 = ((x_4120 * x_4121) + x_4123);
            let x_4126 : vec2<f32> = u_xlat72;
            let x_4128 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4126.x, x_4126.y, x_4128);
            let x_4135 : vec3<f32> = txVec54;
            let x_4137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4135.xy, x_4135.z);
            u_xlat86 = x_4137;
            let x_4139 : f32 = u_xlat25.w;
            let x_4140 : f32 = u_xlat86;
            let x_4142 : f32 = u_xlat85;
            u_xlat85 = ((x_4139 * x_4140) + x_4142);
            let x_4145 : vec4<f32> = u_xlat17;
            let x_4146 : vec2<f32> = vec2<f32>(x_4145.x, x_4145.y);
            let x_4148 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4146.x, x_4146.y, x_4148);
            let x_4155 : vec3<f32> = txVec55;
            let x_4157 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4155.xy, x_4155.z);
            u_xlat86 = x_4157;
            let x_4159 : f32 = u_xlat13.x;
            let x_4160 : f32 = u_xlat86;
            let x_4162 : f32 = u_xlat85;
            u_xlat85 = ((x_4159 * x_4160) + x_4162);
            let x_4165 : vec4<f32> = u_xlat17;
            let x_4166 : vec2<f32> = vec2<f32>(x_4165.z, x_4165.w);
            let x_4168 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4166.x, x_4166.y, x_4168);
            let x_4175 : vec3<f32> = txVec56;
            let x_4177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4175.xy, x_4175.z);
            u_xlat86 = x_4177;
            let x_4179 : f32 = u_xlat13.y;
            let x_4180 : f32 = u_xlat86;
            let x_4182 : f32 = u_xlat85;
            u_xlat85 = ((x_4179 * x_4180) + x_4182);
            let x_4185 : vec2<f32> = u_xlat67;
            let x_4187 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec57;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat86 = x_4196;
            let x_4198 : f32 = u_xlat13.z;
            let x_4199 : f32 = u_xlat86;
            let x_4201 : f32 = u_xlat85;
            u_xlat85 = ((x_4198 * x_4199) + x_4201);
            let x_4204 : vec4<f32> = u_xlat12;
            let x_4205 : vec2<f32> = vec2<f32>(x_4204.x, x_4204.y);
            let x_4207 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4205.x, x_4205.y, x_4207);
            let x_4214 : vec3<f32> = txVec58;
            let x_4216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4214.xy, x_4214.z);
            u_xlat86 = x_4216;
            let x_4218 : f32 = u_xlat13.w;
            let x_4219 : f32 = u_xlat86;
            let x_4221 : f32 = u_xlat85;
            u_xlat84 = ((x_4218 * x_4219) + x_4221);
          }
        }
      } else {
        let x_4225 : vec4<f32> = u_xlat11;
        let x_4226 : vec2<f32> = vec2<f32>(x_4225.x, x_4225.y);
        let x_4228 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4226.x, x_4226.y, x_4228);
        let x_4235 : vec3<f32> = txVec59;
        let x_4237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4235.xy, x_4235.z);
        u_xlat84 = x_4237;
      }
      let x_4238 : i32 = u_xlati54;
      let x_4240 : f32 = x_833.x_AdditionalShadowParams[x_4238].x;
      u_xlat85 = (1.0f + -(x_4240));
      let x_4243 : f32 = u_xlat84;
      let x_4244 : i32 = u_xlati54;
      let x_4246 : f32 = x_833.x_AdditionalShadowParams[x_4244].x;
      let x_4248 : f32 = u_xlat85;
      u_xlat84 = ((x_4243 * x_4246) + x_4248);
      let x_4251 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4251);
      let x_4255 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4255 >= 1.0f);
      let x_4257 : bool = u_xlatb85;
      let x_4258 : bool = u_xlatb86;
      u_xlatb85 = (x_4257 | x_4258);
      let x_4260 : bool = u_xlatb85;
      let x_4261 : f32 = u_xlat84;
      u_xlat84 = select(x_4261, 1.0f, x_4260);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4264 : f32 = u_xlat84;
    u_xlat85 = (-(x_4264) + 1.0f);
    let x_4268 : f32 = u_xlat2.x;
    let x_4269 : f32 = u_xlat85;
    let x_4271 : f32 = u_xlat84;
    u_xlat84 = ((x_4268 * x_4269) + x_4271);
    let x_4273 : f32 = u_xlat81;
    let x_4274 : f32 = u_xlat84;
    u_xlat81 = (x_4273 * x_4274);
    let x_4276 : vec4<f32> = u_xlat1;
    let x_4278 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4276.x, x_4276.y, x_4276.z), vec3<f32>(x_4278.x, x_4278.y, x_4278.z));
    let x_4281 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4281, 0.0f, 1.0f);
    let x_4283 : f32 = u_xlat81;
    let x_4284 : f32 = u_xlat84;
    u_xlat81 = (x_4283 * x_4284);
    let x_4286 : f32 = u_xlat81;
    let x_4288 : i32 = u_xlati54;
    let x_4290 : vec4<f32> = x_2859.x_AdditionalLightsColor[x_4288];
    let x_4292 : vec3<f32> = (vec3<f32>(x_4286, x_4286, x_4286) * vec3<f32>(x_4290.x, x_4290.y, x_4290.z));
    let x_4293 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4292.x, x_4292.y, x_4292.z, x_4293.w);
    let x_4295 : vec4<f32> = u_xlat9;
    let x_4297 : f32 = u_xlat83;
    let x_4300 : vec4<f32> = u_xlat6;
    let x_4302 : vec3<f32> = ((vec3<f32>(x_4295.x, x_4295.y, x_4295.z) * vec3<f32>(x_4297, x_4297, x_4297)) + vec3<f32>(x_4300.x, x_4300.y, x_4300.z));
    let x_4303 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4302.x, x_4302.y, x_4302.z, x_4303.w);
    let x_4305 : vec4<f32> = u_xlat9;
    let x_4307 : vec4<f32> = u_xlat9;
    u_xlat54 = dot(vec3<f32>(x_4305.x, x_4305.y, x_4305.z), vec3<f32>(x_4307.x, x_4307.y, x_4307.z));
    let x_4310 : f32 = u_xlat54;
    u_xlat54 = max(x_4310, 1.17549435e-38f);
    let x_4312 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4312);
    let x_4314 : f32 = u_xlat54;
    let x_4316 : vec4<f32> = u_xlat9;
    let x_4318 : vec3<f32> = (vec3<f32>(x_4314, x_4314, x_4314) * vec3<f32>(x_4316.x, x_4316.y, x_4316.z));
    let x_4319 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4318.x, x_4318.y, x_4318.z, x_4319.w);
    let x_4321 : vec4<f32> = u_xlat1;
    let x_4323 : vec4<f32> = u_xlat9;
    u_xlat54 = dot(vec3<f32>(x_4321.x, x_4321.y, x_4321.z), vec3<f32>(x_4323.x, x_4323.y, x_4323.z));
    let x_4326 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4326, 0.0f, 1.0f);
    let x_4328 : vec4<f32> = u_xlat10;
    let x_4330 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4328.x, x_4328.y, x_4328.z), vec3<f32>(x_4330.x, x_4330.y, x_4330.z));
    let x_4333 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4333, 0.0f, 1.0f);
    let x_4335 : f32 = u_xlat54;
    let x_4336 : f32 = u_xlat54;
    u_xlat54 = (x_4335 * x_4336);
    let x_4338 : f32 = u_xlat54;
    let x_4340 : f32 = u_xlat0.x;
    u_xlat54 = ((x_4338 * x_4340) + 1.00001001358032226562f);
    let x_4343 : f32 = u_xlat81;
    let x_4344 : f32 = u_xlat81;
    u_xlat81 = (x_4343 * x_4344);
    let x_4346 : f32 = u_xlat54;
    let x_4347 : f32 = u_xlat54;
    u_xlat54 = (x_4346 * x_4347);
    let x_4349 : f32 = u_xlat81;
    u_xlat81 = max(x_4349, 0.10000000149011611938f);
    let x_4351 : f32 = u_xlat54;
    let x_4352 : f32 = u_xlat81;
    u_xlat54 = (x_4351 * x_4352);
    let x_4354 : f32 = u_xlat82;
    let x_4355 : f32 = u_xlat54;
    u_xlat54 = (x_4354 * x_4355);
    let x_4357 : f32 = u_xlat80;
    let x_4358 : f32 = u_xlat54;
    u_xlat54 = (x_4357 / x_4358);
    let x_4360 : vec4<f32> = u_xlat5;
    let x_4362 : f32 = u_xlat54;
    let x_4365 : vec4<f32> = u_xlat4;
    let x_4367 : vec3<f32> = ((vec3<f32>(x_4360.x, x_4360.y, x_4360.z) * vec3<f32>(x_4362, x_4362, x_4362)) + vec3<f32>(x_4365.x, x_4365.y, x_4365.z));
    let x_4368 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4367.x, x_4367.y, x_4367.z, x_4368.w);
    let x_4370 : vec4<f32> = u_xlat9;
    let x_4372 : vec4<f32> = u_xlat11;
    let x_4375 : vec4<f32> = u_xlat8;
    let x_4377 : vec3<f32> = ((vec3<f32>(x_4370.x, x_4370.y, x_4370.z) * vec3<f32>(x_4372.x, x_4372.y, x_4372.z)) + vec3<f32>(x_4375.x, x_4375.y, x_4375.z));
    let x_4378 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4377.x, x_4377.y, x_4377.z, x_4378.w);

    continuing {
      let x_4380 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4380 + bitcast<u32>(1i));
    }
  }
  let x_4382 : vec4<f32> = u_xlat3;
  let x_4384 : f32 = u_xlat26;
  let x_4387 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4382.x, x_4382.y, x_4382.z) * vec3<f32>(x_4384, x_4384, x_4384)) + vec3<f32>(x_4387.x, x_4387.y, x_4387.z));
  let x_4390 : vec4<f32> = u_xlat8;
  let x_4392 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4390.x, x_4390.y, x_4390.z) + x_4392);
  let x_4394 : f32 = u_xlat79;
  let x_4395 : f32 = u_xlat79;
  u_xlat1.x = (x_4394 * -(x_4395));
  let x_4400 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4400);
  let x_4403 : vec3<f32> = u_xlat0;
  let x_4404 : f32 = u_xlat78;
  let x_4408 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4403 * vec3<f32>(x_4404, x_4404, x_4404)) + -(vec3<f32>(x_4408.x, x_4408.y, x_4408.z)));
  let x_4414 : vec4<f32> = u_xlat1;
  let x_4416 : vec3<f32> = u_xlat0;
  let x_4419 : vec4<f32> = x_113.unity_FogColor;
  let x_4421 : vec3<f32> = ((vec3<f32>(x_4414.x, x_4414.x, x_4414.x) * x_4416) + vec3<f32>(x_4419.x, x_4419.y, x_4419.z));
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


