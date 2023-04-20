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

var<private> u_xlat75 : f32;

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

var<private> u_xlatb76 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat76 : f32;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_990 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb55 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2397 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2688 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu30 : u32;

var<private> u_xlatb81 : bool;

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
  var x_2275 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2829 : f32;
  var x_2840 : f32;
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
  let x_827 : f32 = vs_TEXCOORD7.y;
  let x_829 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat76 = (x_827 * x_829);
  let x_832 : f32 = x_113.unity_MatrixV[0i].z;
  let x_834 : f32 = vs_TEXCOORD7.x;
  let x_836 : f32 = u_xlat76;
  u_xlat76 = ((x_832 * x_834) + x_836);
  let x_839 : f32 = x_113.unity_MatrixV[2i].z;
  let x_841 : f32 = vs_TEXCOORD7.z;
  let x_843 : f32 = u_xlat76;
  u_xlat76 = ((x_839 * x_841) + x_843);
  let x_845 : f32 = u_xlat76;
  let x_847 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat76 = (x_845 + x_847);
  let x_849 : f32 = u_xlat76;
  let x_852 : f32 = x_113.x_ProjectionParams.y;
  u_xlat76 = (-(x_849) + -(x_852));
  let x_855 : f32 = u_xlat76;
  u_xlat76 = max(x_855, 0.0f);
  let x_857 : f32 = u_xlat76;
  let x_859 : f32 = x_113.unity_FogParams.x;
  u_xlat76 = (x_857 * x_859);
  let x_866 : vec4<f32> = vs_TEXCOORD0;
  let x_869 : f32 = x_113.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_866.z, x_866.w), x_869);
  u_xlat2 = x_870;
  let x_875 : vec4<f32> = vs_TEXCOORD0;
  let x_878 : f32 = x_113.x_GlobalMipBias.x;
  let x_879 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_875.z, x_875.w), x_878);
  let x_880 : vec3<f32> = vec3<f32>(x_879.x, x_879.y, x_879.z);
  let x_881 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat2;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat1;
  let x_892 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_897 : f32 = u_xlat2.x;
  u_xlat2.x = (x_897 + 0.5f);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat3;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.x, x_900.x) * vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_909 : f32 = u_xlat2.w;
  u_xlat77 = max(x_909, 0.00009999999747378752f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : f32 = u_xlat77;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) / vec3<f32>(x_914, x_914, x_914));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_920 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_920) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_925 : f32 = u_xlat50;
  let x_926 : f32 = u_xlat77;
  u_xlat3.x = (x_925 + -(x_926));
  let x_931 : f32 = u_xlat77;
  let x_933 : vec4<f32> = u_xlat5;
  u_xlat28 = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat5;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_941 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec3<f32> = u_xlat0;
  let x_945 : vec4<f32> = u_xlat4;
  let x_950 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.x, x_943.x) * vec3<f32>(x_945.x, x_945.y, x_945.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : f32 = u_xlat50;
  u_xlat0.x = (-(x_953) + 1.0f);
  let x_958 : f32 = u_xlat0.x;
  let x_960 : f32 = u_xlat0.x;
  u_xlat50 = (x_958 * x_960);
  let x_962 : f32 = u_xlat50;
  u_xlat50 = max(x_962, 0.0078125f);
  let x_965 : f32 = u_xlat50;
  let x_966 : f32 = u_xlat50;
  u_xlat77 = (x_965 * x_966);
  let x_969 : f32 = u_xlat3.x;
  u_xlat3.x = (x_969 + 1.0f);
  let x_973 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_973, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat50;
  u_xlat79 = ((x_977 * 4.0f) + 2.0f);
  let x_980 : f32 = u_xlat25;
  u_xlat25 = min(x_980, 1.0f);
  let x_992 : f32 = x_990.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_992);
  let x_994 : bool = u_xlatb5;
  if (x_994) {
    let x_998 : f32 = x_990.x_MainLightShadowParams.y;
    u_xlatb5 = (x_998 == 1.0f);
    let x_1000 : bool = u_xlatb5;
    if (x_1000) {
      let x_1004 : vec4<f32> = vs_TEXCOORD8;
      let x_1007 : vec4<f32> = x_990.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y) + x_1007);
      let x_1011 : vec4<f32> = u_xlat5;
      let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
      let x_1014 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
      let x_1026 : vec3<f32> = txVec0;
      let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
      u_xlat6.x = x_1028;
      let x_1031 : vec4<f32> = u_xlat5;
      let x_1032 : vec2<f32> = vec2<f32>(x_1031.z, x_1031.w);
      let x_1034 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
      let x_1041 : vec3<f32> = txVec1;
      let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1041.xy, x_1041.z);
      u_xlat6.y = x_1043;
      let x_1045 : vec4<f32> = vs_TEXCOORD8;
      let x_1048 : vec4<f32> = x_990.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) + x_1048);
      let x_1051 : vec4<f32> = u_xlat5;
      let x_1052 : vec2<f32> = vec2<f32>(x_1051.x, x_1051.y);
      let x_1054 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
      let x_1061 : vec3<f32> = txVec2;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1061.xy, x_1061.z);
      u_xlat6.z = x_1063;
      let x_1066 : vec4<f32> = u_xlat5;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
      let x_1069 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec3;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1076.xy, x_1076.z);
      u_xlat6.w = x_1078;
      let x_1080 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1080, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1088 : f32 = x_990.x_MainLightShadowParams.y;
      u_xlatb30 = (x_1088 == 2.0f);
      let x_1090 : bool = u_xlatb30;
      if (x_1090) {
        let x_1094 : vec4<f32> = vs_TEXCOORD8;
        let x_1097 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1100 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.z, x_1097.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1101 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1100.x, x_1100.y, x_1101.z);
        let x_1103 : vec3<f32> = u_xlat30;
        let x_1105 : vec2<f32> = floor(vec2<f32>(x_1103.x, x_1103.y));
        let x_1106 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1105.x, x_1105.y, x_1106.z);
        let x_1108 : vec4<f32> = vs_TEXCOORD8;
        let x_1111 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1114 : vec3<f32> = u_xlat30;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.z, x_1111.w)) + -(vec2<f32>(x_1114.x, x_1114.y)));
        let x_1118 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1120.x, x_1120.x, x_1120.y, x_1120.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1124.x, x_1124.x, x_1124.z, x_1124.z) * vec4<f32>(x_1126.x, x_1126.x, x_1126.z, x_1126.z));
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_1131.y, x_1131.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1139 : vec4<f32> = u_xlat6;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1139.x, x_1139.y)));
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1149 : vec2<f32> = (-(vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1153 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_1153.x, x_1153.y), vec2<f32>(0.0f, 0.0f));
        let x_1157 : vec2<f32> = u_xlat58;
        let x_1159 : vec2<f32> = u_xlat58;
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_1157) * x_1159) + vec2<f32>(x_1161.x, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1166 : vec2<f32> = max(vec2<f32>(x_1164.x, x_1164.y), vec2<f32>(0.0f, 0.0f));
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat6;
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1177 : vec2<f32> = ((-(vec2<f32>(x_1169.x, x_1169.y)) * vec2<f32>(x_1172.x, x_1172.y)) + vec2<f32>(x_1175.y, x_1175.w));
        let x_1178 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1180 + vec2<f32>(1.0f, 1.0f));
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1184 : vec2<f32> = (vec2<f32>(x_1182.x, x_1182.y) + vec2<f32>(1.0f, 1.0f));
        let x_1185 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1191 : vec2<f32> = (vec2<f32>(x_1187.x, x_1187.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat8;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec2<f32> = u_xlat58;
        let x_1200 : vec2<f32> = (x_1199 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat6;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1210 : vec2<f32> = (vec2<f32>(x_1208.y, x_1208.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1211 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
        let x_1214 : f32 = u_xlat8.x;
        u_xlat9.z = x_1214;
        let x_1217 : f32 = u_xlat6.x;
        u_xlat9.w = x_1217;
        let x_1220 : f32 = u_xlat11.x;
        u_xlat10.z = x_1220;
        let x_1223 : f32 = u_xlat56.x;
        u_xlat10.w = x_1223;
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1225.z, x_1225.w, x_1225.x, x_1225.z) + vec4<f32>(x_1227.z, x_1227.w, x_1227.x, x_1227.z));
        let x_1231 : f32 = u_xlat9.y;
        u_xlat8.z = x_1231;
        let x_1234 : f32 = u_xlat6.y;
        u_xlat8.w = x_1234;
        let x_1237 : f32 = u_xlat10.y;
        u_xlat11.z = x_1237;
        let x_1240 : f32 = u_xlat56.y;
        u_xlat11.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1246 : vec3<f32> = (vec3<f32>(x_1242.z, x_1242.y, x_1242.w) + vec3<f32>(x_1244.z, x_1244.y, x_1244.w));
        let x_1247 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat10;
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1253 : vec3<f32> = (vec3<f32>(x_1249.x, x_1249.z, x_1249.w) / vec3<f32>(x_1251.z, x_1251.w, x_1251.y));
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1256.x, x_1256.y, x_1256.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1262 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1268 : vec3<f32> = (vec3<f32>(x_1264.z, x_1264.y, x_1264.w) / vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
        let x_1271 : vec4<f32> = u_xlat9;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.y, x_1271.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1279 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1281 : vec3<f32> = (vec3<f32>(x_1276.y, x_1276.x, x_1276.z) * vec3<f32>(x_1279.x, x_1279.x, x_1279.x));
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1287 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1289 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1287.y, x_1287.y, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
        let x_1293 : f32 = u_xlat9.x;
        u_xlat8.w = x_1293;
        let x_1295 : vec3<f32> = u_xlat30;
        let x_1298 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y) * vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y)) + vec4<f32>(x_1301.y, x_1301.w, x_1301.x, x_1301.w));
        let x_1304 : vec3<f32> = u_xlat30;
        let x_1307 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat8;
        let x_1312 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1307.x, x_1307.y)) + vec2<f32>(x_1310.z, x_1310.w));
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1316 : f32 = u_xlat8.y;
        u_xlat9.w = x_1316;
        let x_1318 : vec4<f32> = u_xlat9;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.y, x_1318.z);
        let x_1320 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1320.x, x_1319.x, x_1320.z, x_1319.y);
        let x_1322 : vec3<f32> = u_xlat30;
        let x_1325 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1331 : vec3<f32> = u_xlat30;
        let x_1334 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.w, x_1337.y, x_1337.w, x_1337.z));
        let x_1340 : vec3<f32> = u_xlat30;
        let x_1343 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y) * vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.x, x_1346.w, x_1346.z, x_1346.w));
        let x_1349 : vec4<f32> = u_xlat6;
        let x_1351 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1349.x, x_1349.x, x_1349.x, x_1349.y) * vec4<f32>(x_1351.z, x_1351.w, x_1351.y, x_1351.z));
        let x_1355 : vec4<f32> = u_xlat6;
        let x_1357 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1355.y, x_1355.y, x_1355.z, x_1355.z) * x_1357);
        let x_1360 : f32 = u_xlat6.z;
        let x_1362 : f32 = u_xlat7.y;
        u_xlat30.x = (x_1360 * x_1362);
        let x_1366 : vec4<f32> = u_xlat10;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1377 : vec3<f32> = txVec4;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat55 = x_1379;
        let x_1381 : vec4<f32> = u_xlat10;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.z, x_1381.w);
        let x_1384 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1392 : vec3<f32> = txVec5;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat80 = x_1394;
        let x_1395 : f32 = u_xlat80;
        let x_1397 : f32 = u_xlat13.y;
        u_xlat80 = (x_1395 * x_1397);
        let x_1400 : f32 = u_xlat13.x;
        let x_1401 : f32 = u_xlat55;
        let x_1403 : f32 = u_xlat80;
        u_xlat55 = ((x_1400 * x_1401) + x_1403);
        let x_1406 : vec4<f32> = u_xlat11;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
        let x_1409 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec6;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat80 = x_1418;
        let x_1420 : f32 = u_xlat13.z;
        let x_1421 : f32 = u_xlat80;
        let x_1423 : f32 = u_xlat55;
        u_xlat55 = ((x_1420 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat9;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec7;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat80 = x_1438;
        let x_1440 : f32 = u_xlat13.w;
        let x_1441 : f32 = u_xlat80;
        let x_1443 : f32 = u_xlat55;
        u_xlat55 = ((x_1440 * x_1441) + x_1443);
        let x_1446 : vec4<f32> = u_xlat12;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec8;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat80 = x_1458;
        let x_1460 : f32 = u_xlat14.x;
        let x_1461 : f32 = u_xlat80;
        let x_1463 : f32 = u_xlat55;
        u_xlat55 = ((x_1460 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat12;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.z, x_1466.w);
        let x_1469 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec9;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat80 = x_1478;
        let x_1480 : f32 = u_xlat14.y;
        let x_1481 : f32 = u_xlat80;
        let x_1483 : f32 = u_xlat55;
        u_xlat55 = ((x_1480 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec10;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat80 = x_1498;
        let x_1500 : f32 = u_xlat14.z;
        let x_1501 : f32 = u_xlat80;
        let x_1503 : f32 = u_xlat55;
        u_xlat55 = ((x_1500 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat8;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec11;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat80 = x_1518;
        let x_1520 : f32 = u_xlat14.w;
        let x_1521 : f32 = u_xlat80;
        let x_1523 : f32 = u_xlat55;
        u_xlat55 = ((x_1520 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat8;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec12;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat80 = x_1538;
        let x_1540 : f32 = u_xlat30.x;
        let x_1541 : f32 = u_xlat80;
        let x_1543 : f32 = u_xlat55;
        u_xlat5.x = ((x_1540 * x_1541) + x_1543);
      } else {
        let x_1547 : vec4<f32> = vs_TEXCOORD8;
        let x_1550 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1553 : vec2<f32> = ((vec2<f32>(x_1547.x, x_1547.y) * vec2<f32>(x_1550.z, x_1550.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1554 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1553.x, x_1553.y, x_1554.z);
        let x_1556 : vec3<f32> = u_xlat30;
        let x_1558 : vec2<f32> = floor(vec2<f32>(x_1556.x, x_1556.y));
        let x_1559 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1558.x, x_1558.y, x_1559.z);
        let x_1561 : vec4<f32> = vs_TEXCOORD8;
        let x_1564 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1567 : vec3<f32> = u_xlat30;
        let x_1570 : vec2<f32> = ((vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(x_1564.z, x_1564.w)) + -(vec2<f32>(x_1567.x, x_1567.y)));
        let x_1571 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1570.x, x_1570.y, x_1571.z, x_1571.w);
        let x_1573 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1573.x, x_1573.x, x_1573.y, x_1573.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1576 : vec4<f32> = u_xlat7;
        let x_1578 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1576.x, x_1576.x, x_1576.z, x_1576.z) * vec4<f32>(x_1578.x, x_1578.x, x_1578.z, x_1578.z));
        let x_1581 : vec4<f32> = u_xlat8;
        let x_1585 : vec2<f32> = (vec2<f32>(x_1581.y, x_1581.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1586.x, x_1585.x, x_1586.z, x_1585.y);
        let x_1588 : vec4<f32> = u_xlat8;
        let x_1591 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1588.x, x_1588.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1591.x, x_1591.y)));
        let x_1595 : vec4<f32> = u_xlat6;
        let x_1598 : vec2<f32> = (-(vec2<f32>(x_1595.x, x_1595.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1598.x, x_1599.y, x_1598.y, x_1599.w);
        let x_1601 : vec4<f32> = u_xlat6;
        let x_1603 : vec2<f32> = min(vec2<f32>(x_1601.x, x_1601.y), vec2<f32>(0.0f, 0.0f));
        let x_1604 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1603.x, x_1603.y, x_1604.z, x_1604.w);
        let x_1606 : vec4<f32> = u_xlat8;
        let x_1609 : vec4<f32> = u_xlat8;
        let x_1612 : vec4<f32> = u_xlat7;
        let x_1614 : vec2<f32> = ((-(vec2<f32>(x_1606.x, x_1606.y)) * vec2<f32>(x_1609.x, x_1609.y)) + vec2<f32>(x_1612.x, x_1612.z));
        let x_1615 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1614.x, x_1615.y, x_1614.y, x_1615.w);
        let x_1617 : vec4<f32> = u_xlat6;
        let x_1619 : vec2<f32> = max(vec2<f32>(x_1617.x, x_1617.y), vec2<f32>(0.0f, 0.0f));
        let x_1620 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1619.x, x_1619.y, x_1620.z, x_1620.w);
        let x_1622 : vec4<f32> = u_xlat8;
        let x_1625 : vec4<f32> = u_xlat8;
        let x_1628 : vec4<f32> = u_xlat7;
        let x_1630 : vec2<f32> = ((-(vec2<f32>(x_1622.x, x_1622.y)) * vec2<f32>(x_1625.x, x_1625.y)) + vec2<f32>(x_1628.y, x_1628.w));
        let x_1631 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1631.x, x_1630.x, x_1631.z, x_1630.y);
        let x_1633 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1633 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1637 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1637 * 0.08163200318813323975f);
        let x_1641 : vec2<f32> = u_xlat56;
        let x_1644 : vec2<f32> = (vec2<f32>(x_1641.y, x_1641.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1645 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1644.x, x_1644.y, x_1645.z, x_1645.w);
        let x_1647 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1647.x, x_1647.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1651 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1651 * 0.08163200318813323975f);
        let x_1655 : f32 = u_xlat10.y;
        u_xlat8.x = x_1655;
        let x_1657 : vec4<f32> = u_xlat6;
        let x_1664 : vec2<f32> = ((vec2<f32>(x_1657.x, x_1657.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1665 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1665.x, x_1664.x, x_1665.z, x_1664.y);
        let x_1667 : vec4<f32> = u_xlat6;
        let x_1671 : vec2<f32> = ((vec2<f32>(x_1667.x, x_1667.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1672 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1671.x, x_1672.y, x_1671.y, x_1672.w);
        let x_1675 : f32 = u_xlat56.x;
        u_xlat7.y = x_1675;
        let x_1678 : f32 = u_xlat9.y;
        u_xlat7.w = x_1678;
        let x_1680 : vec4<f32> = u_xlat7;
        let x_1681 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1680 + x_1681);
        let x_1683 : vec4<f32> = u_xlat6;
        let x_1686 : vec2<f32> = ((vec2<f32>(x_1683.y, x_1683.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1687 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1687.x, x_1686.x, x_1687.z, x_1686.y);
        let x_1689 : vec4<f32> = u_xlat6;
        let x_1692 : vec2<f32> = ((vec2<f32>(x_1689.y, x_1689.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1693 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1692.x, x_1693.y, x_1692.y, x_1693.w);
        let x_1696 : f32 = u_xlat56.y;
        u_xlat9.y = x_1696;
        let x_1698 : vec4<f32> = u_xlat9;
        let x_1699 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1698 + x_1699);
        let x_1701 : vec4<f32> = u_xlat7;
        let x_1702 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1701 / x_1702);
        let x_1704 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1704 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1710 : vec4<f32> = u_xlat9;
        let x_1711 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1710 / x_1711);
        let x_1713 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1713 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1715 : vec4<f32> = u_xlat7;
        let x_1718 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1715.w, x_1715.x, x_1715.y, x_1715.z) * vec4<f32>(x_1718.x, x_1718.x, x_1718.x, x_1718.x));
        let x_1721 : vec4<f32> = u_xlat9;
        let x_1724 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1721.x, x_1721.w, x_1721.y, x_1721.z) * vec4<f32>(x_1724.y, x_1724.y, x_1724.y, x_1724.y));
        let x_1727 : vec4<f32> = u_xlat7;
        let x_1728 : vec3<f32> = vec3<f32>(x_1727.y, x_1727.z, x_1727.w);
        let x_1729 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1728.x, x_1729.y, x_1728.y, x_1728.z);
        let x_1732 : f32 = u_xlat9.x;
        u_xlat10.y = x_1732;
        let x_1734 : vec3<f32> = u_xlat30;
        let x_1737 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1740 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1734.x, x_1734.y, x_1734.x, x_1734.y) * vec4<f32>(x_1737.x, x_1737.y, x_1737.x, x_1737.y)) + vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1740.y));
        let x_1743 : vec3<f32> = u_xlat30;
        let x_1746 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1749 : vec4<f32> = u_xlat10;
        let x_1751 : vec2<f32> = ((vec2<f32>(x_1743.x, x_1743.y) * vec2<f32>(x_1746.x, x_1746.y)) + vec2<f32>(x_1749.w, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
        let x_1755 : f32 = u_xlat10.y;
        u_xlat7.y = x_1755;
        let x_1758 : f32 = u_xlat9.z;
        u_xlat10.y = x_1758;
        let x_1760 : vec3<f32> = u_xlat30;
        let x_1763 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1766 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1760.x, x_1760.y, x_1760.x, x_1760.y) * vec4<f32>(x_1763.x, x_1763.y, x_1763.x, x_1763.y)) + vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1766.y));
        let x_1770 : vec3<f32> = u_xlat30;
        let x_1773 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1776 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1770.x, x_1770.y) * vec2<f32>(x_1773.x, x_1773.y)) + vec2<f32>(x_1776.w, x_1776.y));
        let x_1780 : f32 = u_xlat10.y;
        u_xlat7.z = x_1780;
        let x_1782 : vec3<f32> = u_xlat30;
        let x_1785 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1788 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1782.x, x_1782.y, x_1782.x, x_1782.y) * vec4<f32>(x_1785.x, x_1785.y, x_1785.x, x_1785.y)) + vec4<f32>(x_1788.x, x_1788.y, x_1788.x, x_1788.z));
        let x_1792 : f32 = u_xlat9.w;
        u_xlat10.y = x_1792;
        let x_1795 : vec3<f32> = u_xlat30;
        let x_1798 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1801 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1795.x, x_1795.y, x_1795.x, x_1795.y) * vec4<f32>(x_1798.x, x_1798.y, x_1798.x, x_1798.y)) + vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1801.y));
        let x_1805 : vec3<f32> = u_xlat30;
        let x_1808 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1811 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1805.x, x_1805.y) * vec2<f32>(x_1808.x, x_1808.y)) + vec2<f32>(x_1811.w, x_1811.y));
        let x_1815 : f32 = u_xlat10.y;
        u_xlat7.w = x_1815;
        let x_1818 : vec3<f32> = u_xlat30;
        let x_1821 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1824 : vec4<f32> = u_xlat7;
        let x_1826 : vec2<f32> = ((vec2<f32>(x_1818.x, x_1818.y) * vec2<f32>(x_1821.x, x_1821.y)) + vec2<f32>(x_1824.x, x_1824.w));
        let x_1827 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1826.x, x_1826.y, x_1827.z, x_1827.w);
        let x_1829 : vec4<f32> = u_xlat10;
        let x_1830 : vec3<f32> = vec3<f32>(x_1829.x, x_1829.z, x_1829.w);
        let x_1831 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1830.x, x_1831.y, x_1830.y, x_1830.z);
        let x_1833 : vec3<f32> = u_xlat30;
        let x_1836 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1839 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1833.x, x_1833.y, x_1833.x, x_1833.y) * vec4<f32>(x_1836.x, x_1836.y, x_1836.x, x_1836.y)) + vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1839.y));
        let x_1843 : vec3<f32> = u_xlat30;
        let x_1846 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1849 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1843.x, x_1843.y) * vec2<f32>(x_1846.x, x_1846.y)) + vec2<f32>(x_1849.w, x_1849.y));
        let x_1853 : f32 = u_xlat7.x;
        u_xlat9.x = x_1853;
        let x_1855 : vec3<f32> = u_xlat30;
        let x_1858 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1861 : vec4<f32> = u_xlat9;
        let x_1863 : vec2<f32> = ((vec2<f32>(x_1855.x, x_1855.y) * vec2<f32>(x_1858.x, x_1858.y)) + vec2<f32>(x_1861.x, x_1861.y));
        let x_1864 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1863.x, x_1863.y, x_1864.z);
        let x_1867 : vec4<f32> = u_xlat6;
        let x_1869 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1867.x, x_1867.x, x_1867.x, x_1867.x) * x_1869);
        let x_1872 : vec4<f32> = u_xlat6;
        let x_1874 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1872.y, x_1872.y, x_1872.y, x_1872.y) * x_1874);
        let x_1877 : vec4<f32> = u_xlat6;
        let x_1879 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1877.z, x_1877.z, x_1877.z, x_1877.z) * x_1879);
        let x_1881 : vec4<f32> = u_xlat6;
        let x_1883 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1881.w, x_1881.w, x_1881.w, x_1881.w) * x_1883);
        let x_1886 : vec4<f32> = u_xlat11;
        let x_1887 : vec2<f32> = vec2<f32>(x_1886.x, x_1886.y);
        let x_1889 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1887.x, x_1887.y, x_1889);
        let x_1896 : vec3<f32> = txVec13;
        let x_1898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1896.xy, x_1896.z);
        u_xlat80 = x_1898;
        let x_1900 : vec4<f32> = u_xlat11;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.z, x_1900.w);
        let x_1903 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec14;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1910.xy, x_1910.z);
        u_xlat7.x = x_1912;
        let x_1915 : f32 = u_xlat7.x;
        let x_1917 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1915 * x_1917);
        let x_1921 : f32 = u_xlat17.x;
        let x_1922 : f32 = u_xlat80;
        let x_1925 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1921 * x_1922) + x_1925);
        let x_1928 : vec4<f32> = u_xlat12;
        let x_1929 : vec2<f32> = vec2<f32>(x_1928.x, x_1928.y);
        let x_1931 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1929.x, x_1929.y, x_1931);
        let x_1938 : vec3<f32> = txVec15;
        let x_1940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1938.xy, x_1938.z);
        u_xlat7.x = x_1940;
        let x_1943 : f32 = u_xlat17.z;
        let x_1945 : f32 = u_xlat7.x;
        let x_1947 : f32 = u_xlat80;
        u_xlat80 = ((x_1943 * x_1945) + x_1947);
        let x_1950 : vec4<f32> = u_xlat14;
        let x_1951 : vec2<f32> = vec2<f32>(x_1950.x, x_1950.y);
        let x_1953 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1951.x, x_1951.y, x_1953);
        let x_1960 : vec3<f32> = txVec16;
        let x_1962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1960.xy, x_1960.z);
        u_xlat7.x = x_1962;
        let x_1965 : f32 = u_xlat17.w;
        let x_1967 : f32 = u_xlat7.x;
        let x_1969 : f32 = u_xlat80;
        u_xlat80 = ((x_1965 * x_1967) + x_1969);
        let x_1972 : vec4<f32> = u_xlat13;
        let x_1973 : vec2<f32> = vec2<f32>(x_1972.x, x_1972.y);
        let x_1975 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec17;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1982.xy, x_1982.z);
        u_xlat7.x = x_1984;
        let x_1987 : f32 = u_xlat18.x;
        let x_1989 : f32 = u_xlat7.x;
        let x_1991 : f32 = u_xlat80;
        u_xlat80 = ((x_1987 * x_1989) + x_1991);
        let x_1994 : vec4<f32> = u_xlat13;
        let x_1995 : vec2<f32> = vec2<f32>(x_1994.z, x_1994.w);
        let x_1997 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1995.x, x_1995.y, x_1997);
        let x_2004 : vec3<f32> = txVec18;
        let x_2006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2004.xy, x_2004.z);
        u_xlat7.x = x_2006;
        let x_2009 : f32 = u_xlat18.y;
        let x_2011 : f32 = u_xlat7.x;
        let x_2013 : f32 = u_xlat80;
        u_xlat80 = ((x_2009 * x_2011) + x_2013);
        let x_2016 : vec2<f32> = u_xlat62;
        let x_2018 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2016.x, x_2016.y, x_2018);
        let x_2025 : vec3<f32> = txVec19;
        let x_2027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2025.xy, x_2025.z);
        u_xlat7.x = x_2027;
        let x_2030 : f32 = u_xlat18.z;
        let x_2032 : f32 = u_xlat7.x;
        let x_2034 : f32 = u_xlat80;
        u_xlat80 = ((x_2030 * x_2032) + x_2034);
        let x_2037 : vec4<f32> = u_xlat14;
        let x_2038 : vec2<f32> = vec2<f32>(x_2037.z, x_2037.w);
        let x_2040 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2038.x, x_2038.y, x_2040);
        let x_2047 : vec3<f32> = txVec20;
        let x_2049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2047.xy, x_2047.z);
        u_xlat7.x = x_2049;
        let x_2052 : f32 = u_xlat18.w;
        let x_2054 : f32 = u_xlat7.x;
        let x_2056 : f32 = u_xlat80;
        u_xlat80 = ((x_2052 * x_2054) + x_2056);
        let x_2059 : vec4<f32> = u_xlat15;
        let x_2060 : vec2<f32> = vec2<f32>(x_2059.x, x_2059.y);
        let x_2062 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
        let x_2069 : vec3<f32> = txVec21;
        let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
        u_xlat7.x = x_2071;
        let x_2074 : f32 = u_xlat19.x;
        let x_2076 : f32 = u_xlat7.x;
        let x_2078 : f32 = u_xlat80;
        u_xlat80 = ((x_2074 * x_2076) + x_2078);
        let x_2081 : vec4<f32> = u_xlat15;
        let x_2082 : vec2<f32> = vec2<f32>(x_2081.z, x_2081.w);
        let x_2084 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2082.x, x_2082.y, x_2084);
        let x_2091 : vec3<f32> = txVec22;
        let x_2093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2091.xy, x_2091.z);
        u_xlat7.x = x_2093;
        let x_2096 : f32 = u_xlat19.y;
        let x_2098 : f32 = u_xlat7.x;
        let x_2100 : f32 = u_xlat80;
        u_xlat80 = ((x_2096 * x_2098) + x_2100);
        let x_2103 : vec2<f32> = u_xlat32;
        let x_2105 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2103.x, x_2103.y, x_2105);
        let x_2112 : vec3<f32> = txVec23;
        let x_2114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2112.xy, x_2112.z);
        u_xlat7.x = x_2114;
        let x_2117 : f32 = u_xlat19.z;
        let x_2119 : f32 = u_xlat7.x;
        let x_2121 : f32 = u_xlat80;
        u_xlat80 = ((x_2117 * x_2119) + x_2121);
        let x_2124 : vec4<f32> = u_xlat16;
        let x_2125 : vec2<f32> = vec2<f32>(x_2124.x, x_2124.y);
        let x_2127 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2125.x, x_2125.y, x_2127);
        let x_2134 : vec3<f32> = txVec24;
        let x_2136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2134.xy, x_2134.z);
        u_xlat7.x = x_2136;
        let x_2139 : f32 = u_xlat19.w;
        let x_2141 : f32 = u_xlat7.x;
        let x_2143 : f32 = u_xlat80;
        u_xlat80 = ((x_2139 * x_2141) + x_2143);
        let x_2146 : vec4<f32> = u_xlat10;
        let x_2147 : vec2<f32> = vec2<f32>(x_2146.x, x_2146.y);
        let x_2149 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2147.x, x_2147.y, x_2149);
        let x_2156 : vec3<f32> = txVec25;
        let x_2158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2156.xy, x_2156.z);
        u_xlat7.x = x_2158;
        let x_2161 : f32 = u_xlat6.x;
        let x_2163 : f32 = u_xlat7.x;
        let x_2165 : f32 = u_xlat80;
        u_xlat80 = ((x_2161 * x_2163) + x_2165);
        let x_2168 : vec4<f32> = u_xlat10;
        let x_2169 : vec2<f32> = vec2<f32>(x_2168.z, x_2168.w);
        let x_2171 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2169.x, x_2169.y, x_2171);
        let x_2178 : vec3<f32> = txVec26;
        let x_2180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2178.xy, x_2178.z);
        u_xlat6.x = x_2180;
        let x_2183 : f32 = u_xlat6.y;
        let x_2185 : f32 = u_xlat6.x;
        let x_2187 : f32 = u_xlat80;
        u_xlat80 = ((x_2183 * x_2185) + x_2187);
        let x_2190 : vec2<f32> = u_xlat59;
        let x_2192 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2190.x, x_2190.y, x_2192);
        let x_2199 : vec3<f32> = txVec27;
        let x_2201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2199.xy, x_2199.z);
        u_xlat6.x = x_2201;
        let x_2204 : f32 = u_xlat6.z;
        let x_2206 : f32 = u_xlat6.x;
        let x_2208 : f32 = u_xlat80;
        u_xlat80 = ((x_2204 * x_2206) + x_2208);
        let x_2211 : vec3<f32> = u_xlat30;
        let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
        let x_2214 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
        let x_2221 : vec3<f32> = txVec28;
        let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2221.xy, x_2221.z);
        u_xlat30.x = x_2223;
        let x_2226 : f32 = u_xlat6.w;
        let x_2228 : f32 = u_xlat30.x;
        let x_2230 : f32 = u_xlat80;
        u_xlat5.x = ((x_2226 * x_2228) + x_2230);
      }
    }
  } else {
    let x_2235 : vec4<f32> = vs_TEXCOORD8;
    let x_2236 : vec2<f32> = vec2<f32>(x_2235.x, x_2235.y);
    let x_2238 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2236.x, x_2236.y, x_2238);
    let x_2245 : vec3<f32> = txVec29;
    let x_2247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2245.xy, x_2245.z);
    u_xlat5.x = x_2247;
  }
  let x_2250 : f32 = x_990.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_2250) + 1.0f);
  let x_2255 : f32 = u_xlat5.x;
  let x_2257 : f32 = x_990.x_MainLightShadowParams.x;
  let x_2260 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_2255 * x_2257) + x_2260);
  let x_2264 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_2264);
  let x_2268 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_2268 >= 1.0f);
  let x_2270 : bool = u_xlatb55;
  let x_2271 : bool = u_xlatb30;
  u_xlatb30 = (x_2270 | x_2271);
  let x_2273 : bool = u_xlatb30;
  if (x_2273) {
    x_2275 = 1.0f;
  } else {
    let x_2280 : f32 = u_xlat5.x;
    x_2275 = x_2280;
  }
  let x_2281 : f32 = x_2275;
  u_xlat5.x = x_2281;
  let x_2283 : vec3<f32> = vs_TEXCOORD7;
  let x_2286 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2283 + -(x_2286));
  let x_2289 : vec3<f32> = u_xlat30;
  let x_2290 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2289, x_2290);
  let x_2294 : f32 = u_xlat30.x;
  let x_2296 : f32 = x_990.x_MainLightShadowParams.z;
  let x_2299 : f32 = x_990.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2294 * x_2296) + x_2299);
  let x_2301 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2301, 0.0f, 1.0f);
  let x_2304 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_2304) + 1.0f);
  let x_2307 : f32 = u_xlat55;
  let x_2308 : f32 = u_xlat80;
  let x_2311 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2307 * x_2308) + x_2311);
  let x_2315 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2315;
  let x_2318 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2318;
  let x_2321 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2321;
  let x_2323 : vec4<f32> = u_xlat6;
  let x_2326 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(vec3<f32>(x_2323.x, x_2323.y, x_2323.z)), vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
  let x_2329 : f32 = u_xlat55;
  let x_2330 : f32 = u_xlat55;
  u_xlat55 = (x_2329 + x_2330);
  let x_2332 : vec4<f32> = u_xlat1;
  let x_2334 : f32 = u_xlat55;
  let x_2338 : vec4<f32> = u_xlat6;
  let x_2341 : vec3<f32> = ((vec3<f32>(x_2332.x, x_2332.y, x_2332.z) * -(vec3<f32>(x_2334, x_2334, x_2334))) + -(vec3<f32>(x_2338.x, x_2338.y, x_2338.z)));
  let x_2342 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  let x_2344 : vec4<f32> = u_xlat1;
  let x_2346 : vec4<f32> = u_xlat6;
  u_xlat55 = dot(vec3<f32>(x_2344.x, x_2344.y, x_2344.z), vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
  let x_2349 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2349, 0.0f, 1.0f);
  let x_2351 : f32 = u_xlat55;
  u_xlat55 = (-(x_2351) + 1.0f);
  let x_2354 : f32 = u_xlat55;
  let x_2355 : f32 = u_xlat55;
  u_xlat55 = (x_2354 * x_2355);
  let x_2357 : f32 = u_xlat55;
  let x_2358 : f32 = u_xlat55;
  u_xlat55 = (x_2357 * x_2358);
  let x_2361 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2361) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2368 : f32 = u_xlat0.x;
  let x_2369 : f32 = u_xlat80;
  u_xlat0.x = (x_2368 * x_2369);
  let x_2373 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2373 * 6.0f);
  let x_2385 : vec4<f32> = u_xlat7;
  let x_2388 : f32 = u_xlat0.x;
  let x_2389 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2385.x, x_2385.y, x_2385.z), x_2388);
  u_xlat7 = x_2389;
  let x_2391 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2391 + -1.0f);
  let x_2399 : f32 = x_2397.unity_SpecCube0_HDR.w;
  let x_2401 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2399 * x_2401) + 1.0f);
  let x_2406 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2406, 0.0f);
  let x_2410 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2410);
  let x_2414 : f32 = u_xlat0.x;
  let x_2416 : f32 = x_2397.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2414 * x_2416);
  let x_2420 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2420);
  let x_2424 : f32 = u_xlat0.x;
  let x_2426 : f32 = x_2397.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2424 * x_2426);
  let x_2429 : vec4<f32> = u_xlat7;
  let x_2431 : vec3<f32> = u_xlat0;
  let x_2433 : vec3<f32> = (vec3<f32>(x_2429.x, x_2429.y, x_2429.z) * vec3<f32>(x_2431.x, x_2431.x, x_2431.x));
  let x_2434 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
  let x_2436 : f32 = u_xlat50;
  let x_2438 : f32 = u_xlat50;
  let x_2442 : vec2<f32> = ((vec2<f32>(x_2436, x_2436) * vec2<f32>(x_2438, x_2438)) + vec2<f32>(-1.0f, 1.0f));
  let x_2443 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2442.x, x_2443.y, x_2442.y);
  let x_2446 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2446);
  let x_2448 : vec4<f32> = u_xlat4;
  let x_2451 : vec4<f32> = u_xlat3;
  let x_2453 : vec3<f32> = (-(vec3<f32>(x_2448.x, x_2448.y, x_2448.z)) + vec3<f32>(x_2451.x, x_2451.x, x_2451.x));
  let x_2454 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
  let x_2456 : f32 = u_xlat55;
  let x_2458 : vec4<f32> = u_xlat8;
  let x_2461 : vec4<f32> = u_xlat4;
  let x_2463 : vec3<f32> = ((vec3<f32>(x_2456, x_2456, x_2456) * vec3<f32>(x_2458.x, x_2458.y, x_2458.z)) + vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2464 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
  let x_2466 : f32 = u_xlat50;
  let x_2468 : vec4<f32> = u_xlat8;
  let x_2470 : vec3<f32> = (vec3<f32>(x_2466, x_2466, x_2466) * vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
  let x_2471 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
  let x_2473 : vec4<f32> = u_xlat7;
  let x_2475 : vec4<f32> = u_xlat8;
  let x_2477 : vec3<f32> = (vec3<f32>(x_2473.x, x_2473.y, x_2473.z) * vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2478 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
  let x_2480 : vec4<f32> = u_xlat2;
  let x_2482 : vec3<f32> = u_xlat28;
  let x_2484 : vec4<f32> = u_xlat7;
  let x_2486 : vec3<f32> = ((vec3<f32>(x_2480.x, x_2480.y, x_2480.z) * x_2482) + vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
  let x_2487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
  let x_2490 : f32 = u_xlat5.x;
  let x_2492 : f32 = x_2397.unity_LightData.z;
  u_xlat50 = (x_2490 * x_2492);
  let x_2494 : vec4<f32> = u_xlat1;
  let x_2497 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2494.x, x_2494.y, x_2494.z), vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
  let x_2502 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2502, 0.0f, 1.0f);
  let x_2505 : f32 = u_xlat50;
  let x_2507 : f32 = u_xlat3.x;
  u_xlat50 = (x_2505 * x_2507);
  let x_2509 : f32 = u_xlat50;
  let x_2512 : vec4<f32> = x_113.x_MainLightColor;
  let x_2514 : vec3<f32> = (vec3<f32>(x_2509, x_2509, x_2509) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
  let x_2515 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2514.x, x_2515.y, x_2514.y, x_2514.z);
  let x_2517 : vec4<f32> = u_xlat6;
  let x_2520 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2522 : vec3<f32> = (vec3<f32>(x_2517.x, x_2517.y, x_2517.z) + vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
  let x_2523 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
  let x_2525 : vec4<f32> = u_xlat7;
  let x_2527 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2525.x, x_2525.y, x_2525.z), vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
  let x_2530 : f32 = u_xlat50;
  u_xlat50 = max(x_2530, 1.17549435e-38f);
  let x_2533 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2533);
  let x_2535 : f32 = u_xlat50;
  let x_2537 : vec4<f32> = u_xlat7;
  let x_2539 : vec3<f32> = (vec3<f32>(x_2535, x_2535, x_2535) * vec3<f32>(x_2537.x, x_2537.y, x_2537.z));
  let x_2540 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
  let x_2542 : vec4<f32> = u_xlat1;
  let x_2544 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2542.x, x_2542.y, x_2542.z), vec3<f32>(x_2544.x, x_2544.y, x_2544.z));
  let x_2547 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2547, 0.0f, 1.0f);
  let x_2550 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2552 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2550.x, x_2550.y, x_2550.z), vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
  let x_2557 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2557, 0.0f, 1.0f);
  let x_2560 : f32 = u_xlat50;
  let x_2561 : f32 = u_xlat50;
  u_xlat50 = (x_2560 * x_2561);
  let x_2563 : f32 = u_xlat50;
  let x_2565 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2563 * x_2565) + 1.00001001358032226562f);
  let x_2570 : f32 = u_xlat3.x;
  let x_2572 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2570 * x_2572);
  let x_2575 : f32 = u_xlat50;
  let x_2576 : f32 = u_xlat50;
  u_xlat50 = (x_2575 * x_2576);
  let x_2579 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2579, 0.10000000149011611938f);
  let x_2583 : f32 = u_xlat50;
  let x_2585 : f32 = u_xlat3.x;
  u_xlat50 = (x_2583 * x_2585);
  let x_2587 : f32 = u_xlat79;
  let x_2588 : f32 = u_xlat50;
  u_xlat50 = (x_2587 * x_2588);
  let x_2590 : f32 = u_xlat77;
  let x_2591 : f32 = u_xlat50;
  u_xlat50 = (x_2590 / x_2591);
  let x_2593 : vec4<f32> = u_xlat4;
  let x_2595 : f32 = u_xlat50;
  let x_2598 : vec3<f32> = u_xlat28;
  let x_2599 : vec3<f32> = ((vec3<f32>(x_2593.x, x_2593.y, x_2593.z) * vec3<f32>(x_2595, x_2595, x_2595)) + x_2598);
  let x_2600 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
  let x_2602 : vec4<f32> = u_xlat5;
  let x_2604 : vec4<f32> = u_xlat7;
  let x_2606 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.z, x_2602.w) * vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
  let x_2607 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2606.x, x_2607.y, x_2606.y, x_2606.z);
  let x_2610 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2612 : f32 = x_2397.unity_LightData.y;
  u_xlat50 = min(x_2610, x_2612);
  let x_2616 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2616));
  let x_2620 : f32 = u_xlat30.x;
  let x_2622 : f32 = x_990.x_AdditionalShadowFadeParams.x;
  let x_2625 : f32 = x_990.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2620 * x_2622) + x_2625);
  let x_2629 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2629, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2642 : u32 = u_xlatu_loop_1;
    let x_2643 : u32 = u_xlatu50;
    if ((x_2642 < x_2643)) {
    } else {
      break;
    }
    let x_2646 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2646 >> 2u);
    let x_2650 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2650 & 3u));
    let x_2654 : u32 = u_xlatu81;
    let x_2657 : vec4<f32> = x_2397.unity_LightIndices[bitcast<i32>(x_2654)];
    let x_2667 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2672 : vec4<u32> = indexable[x_2667];
    u_xlat81 = dot(x_2657, bitcast<vec4<f32>>(x_2672));
    let x_2676 : f32 = u_xlat81;
    u_xlati81 = i32(x_2676);
    let x_2678 : vec3<f32> = vs_TEXCOORD7;
    let x_2689 : i32 = u_xlati81;
    let x_2691 : vec4<f32> = x_2688.x_AdditionalLightsPosition[x_2689];
    let x_2694 : i32 = u_xlati81;
    let x_2696 : vec4<f32> = x_2688.x_AdditionalLightsPosition[x_2694];
    let x_2698 : vec3<f32> = ((-(x_2678) * vec3<f32>(x_2691.w, x_2691.w, x_2691.w)) + vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
    let x_2699 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
    let x_2702 : vec4<f32> = u_xlat8;
    let x_2704 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2702.x, x_2702.y, x_2702.z), vec3<f32>(x_2704.x, x_2704.y, x_2704.z));
    let x_2707 : f32 = u_xlat82;
    u_xlat82 = max(x_2707, 0.00006103515625f);
    let x_2710 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2710);
    let x_2712 : f32 = u_xlat83;
    let x_2714 : vec4<f32> = u_xlat8;
    let x_2716 : vec3<f32> = (vec3<f32>(x_2712, x_2712, x_2712) * vec3<f32>(x_2714.x, x_2714.y, x_2714.z));
    let x_2717 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2717.w);
    let x_2720 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2720);
    let x_2722 : f32 = u_xlat82;
    let x_2723 : i32 = u_xlati81;
    let x_2725 : f32 = x_2688.x_AdditionalLightsAttenuation[x_2723].x;
    u_xlat82 = (x_2722 * x_2725);
    let x_2727 : f32 = u_xlat82;
    let x_2729 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2727) * x_2729) + 1.0f);
    let x_2732 : f32 = u_xlat82;
    u_xlat82 = max(x_2732, 0.0f);
    let x_2734 : f32 = u_xlat82;
    let x_2735 : f32 = u_xlat82;
    u_xlat82 = (x_2734 * x_2735);
    let x_2737 : f32 = u_xlat82;
    let x_2738 : f32 = u_xlat84;
    u_xlat82 = (x_2737 * x_2738);
    let x_2740 : i32 = u_xlati81;
    let x_2742 : vec4<f32> = x_2688.x_AdditionalLightsSpotDir[x_2740];
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2742.x, x_2742.y, x_2742.z), vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : f32 = u_xlat84;
    let x_2748 : i32 = u_xlati81;
    let x_2750 : f32 = x_2688.x_AdditionalLightsAttenuation[x_2748].z;
    let x_2752 : i32 = u_xlati81;
    let x_2754 : f32 = x_2688.x_AdditionalLightsAttenuation[x_2752].w;
    u_xlat84 = ((x_2747 * x_2750) + x_2754);
    let x_2756 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2756, 0.0f, 1.0f);
    let x_2758 : f32 = u_xlat84;
    let x_2759 : f32 = u_xlat84;
    u_xlat84 = (x_2758 * x_2759);
    let x_2761 : f32 = u_xlat82;
    let x_2762 : f32 = u_xlat84;
    u_xlat82 = (x_2761 * x_2762);
    let x_2765 : i32 = u_xlati81;
    let x_2767 : f32 = x_990.x_AdditionalShadowParams[x_2765].w;
    u_xlati84 = i32(x_2767);
    let x_2772 : i32 = u_xlati84;
    u_xlatb10.x = (x_2772 >= 0i);
    let x_2776 : bool = u_xlatb10.x;
    if (x_2776) {
      let x_2780 : i32 = u_xlati81;
      let x_2782 : f32 = x_990.x_AdditionalShadowParams[x_2780].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2782, x_2782, x_2782, x_2782))));
      let x_2788 : bool = u_xlatb10.x;
      if (x_2788) {
        let x_2791 : vec4<f32> = u_xlat9;
        let x_2794 : vec4<f32> = u_xlat9;
        let x_2797 : vec4<bool> = (abs(vec4<f32>(x_2791.z, x_2791.z, x_2791.y, x_2791.z)) >= abs(vec4<f32>(x_2794.x, x_2794.y, x_2794.x, x_2794.x)));
        u_xlatb10 = vec3<bool>(x_2797.x, x_2797.y, x_2797.z);
        let x_2800 : bool = u_xlatb10.y;
        let x_2802 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2800 & x_2802);
        let x_2806 : vec4<f32> = u_xlat9;
        let x_2809 : vec4<bool> = (-(vec4<f32>(x_2806.z, x_2806.y, x_2806.x, x_2806.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2809.x, x_2809.y, x_2809.z);
        let x_2813 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2813);
        let x_2818 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2818);
        let x_2823 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2823);
        let x_2828 : bool = u_xlatb10.z;
        if (x_2828) {
          let x_2833 : f32 = u_xlat35.z;
          x_2829 = x_2833;
        } else {
          let x_2836 : f32 = u_xlat11.x;
          x_2829 = x_2836;
        }
        let x_2837 : f32 = x_2829;
        u_xlat60 = x_2837;
        let x_2839 : bool = u_xlatb10.x;
        if (x_2839) {
          let x_2844 : f32 = u_xlat35.x;
          x_2840 = x_2844;
        } else {
          let x_2846 : f32 = u_xlat60;
          x_2840 = x_2846;
        }
        let x_2847 : f32 = x_2840;
        u_xlat10.x = x_2847;
        let x_2849 : i32 = u_xlati81;
        let x_2851 : f32 = x_990.x_AdditionalShadowParams[x_2849].w;
        u_xlat35.x = trunc(x_2851);
        let x_2855 : f32 = u_xlat10.x;
        let x_2857 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2855 + x_2857);
        let x_2861 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2861);
      }
      let x_2863 : i32 = u_xlati84;
      u_xlati84 = (x_2863 << bitcast<u32>(2i));
      let x_2865 : vec3<f32> = vs_TEXCOORD7;
      let x_2867 : i32 = u_xlati84;
      let x_2870 : i32 = u_xlati84;
      let x_2874 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[((x_2867 + 1i) / 4i)][((x_2870 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2865.y, x_2865.y, x_2865.y, x_2865.y) * x_2874);
      let x_2876 : i32 = u_xlati84;
      let x_2878 : i32 = u_xlati84;
      let x_2881 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[(x_2876 / 4i)][(x_2878 % 4i)];
      let x_2882 : vec3<f32> = vs_TEXCOORD7;
      let x_2885 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2881 * vec4<f32>(x_2882.x, x_2882.x, x_2882.x, x_2882.x)) + x_2885);
      let x_2887 : i32 = u_xlati84;
      let x_2890 : i32 = u_xlati84;
      let x_2894 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[((x_2887 + 2i) / 4i)][((x_2890 + 2i) % 4i)];
      let x_2895 : vec3<f32> = vs_TEXCOORD7;
      let x_2898 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2894 * vec4<f32>(x_2895.z, x_2895.z, x_2895.z, x_2895.z)) + x_2898);
      let x_2900 : vec4<f32> = u_xlat10;
      let x_2901 : i32 = u_xlati84;
      let x_2904 : i32 = u_xlati84;
      let x_2908 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[((x_2901 + 3i) / 4i)][((x_2904 + 3i) % 4i)];
      u_xlat10 = (x_2900 + x_2908);
      let x_2910 : vec4<f32> = u_xlat10;
      let x_2912 : vec4<f32> = u_xlat10;
      let x_2914 : vec3<f32> = (vec3<f32>(x_2910.x, x_2910.y, x_2910.z) / vec3<f32>(x_2912.w, x_2912.w, x_2912.w));
      let x_2915 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
      let x_2918 : i32 = u_xlati81;
      let x_2920 : f32 = x_990.x_AdditionalShadowParams[x_2918].y;
      u_xlatb84 = (0.0f < x_2920);
      let x_2922 : bool = u_xlatb84;
      if (x_2922) {
        let x_2925 : i32 = u_xlati81;
        let x_2927 : f32 = x_990.x_AdditionalShadowParams[x_2925].y;
        u_xlatb84 = (1.0f == x_2927);
        let x_2929 : bool = u_xlatb84;
        if (x_2929) {
          let x_2932 : vec4<f32> = u_xlat10;
          let x_2935 : vec4<f32> = x_990.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2932.x, x_2932.y, x_2932.x, x_2932.y) + x_2935);
          let x_2938 : vec4<f32> = u_xlat11;
          let x_2939 : vec2<f32> = vec2<f32>(x_2938.x, x_2938.y);
          let x_2941 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
          let x_2949 : vec3<f32> = txVec30;
          let x_2951 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2949.xy, x_2949.z);
          u_xlat12.x = x_2951;
          let x_2954 : vec4<f32> = u_xlat11;
          let x_2955 : vec2<f32> = vec2<f32>(x_2954.z, x_2954.w);
          let x_2957 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2955.x, x_2955.y, x_2957);
          let x_2964 : vec3<f32> = txVec31;
          let x_2966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2964.xy, x_2964.z);
          u_xlat12.y = x_2966;
          let x_2968 : vec4<f32> = u_xlat10;
          let x_2971 : vec4<f32> = x_990.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2968.x, x_2968.y, x_2968.x, x_2968.y) + x_2971);
          let x_2974 : vec4<f32> = u_xlat11;
          let x_2975 : vec2<f32> = vec2<f32>(x_2974.x, x_2974.y);
          let x_2977 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
          let x_2984 : vec3<f32> = txVec32;
          let x_2986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
          u_xlat12.z = x_2986;
          let x_2989 : vec4<f32> = u_xlat11;
          let x_2990 : vec2<f32> = vec2<f32>(x_2989.z, x_2989.w);
          let x_2992 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
          let x_2999 : vec3<f32> = txVec33;
          let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
          u_xlat12.w = x_3001;
          let x_3003 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3003, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3007 : i32 = u_xlati81;
          let x_3009 : f32 = x_990.x_AdditionalShadowParams[x_3007].y;
          u_xlatb85 = (2.0f == x_3009);
          let x_3011 : bool = u_xlatb85;
          if (x_3011) {
            let x_3014 : vec4<f32> = u_xlat10;
            let x_3017 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3020 : vec2<f32> = ((vec2<f32>(x_3014.x, x_3014.y) * vec2<f32>(x_3017.z, x_3017.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3021 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3020.x, x_3020.y, x_3021.z, x_3021.w);
            let x_3023 : vec4<f32> = u_xlat11;
            let x_3025 : vec2<f32> = floor(vec2<f32>(x_3023.x, x_3023.y));
            let x_3026 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
            let x_3029 : vec4<f32> = u_xlat10;
            let x_3032 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3035 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3029.x, x_3029.y) * vec2<f32>(x_3032.z, x_3032.w)) + -(vec2<f32>(x_3035.x, x_3035.y)));
            let x_3039 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3039.x, x_3039.x, x_3039.y, x_3039.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3042 : vec4<f32> = u_xlat12;
            let x_3044 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3042.x, x_3042.x, x_3042.z, x_3042.z) * vec4<f32>(x_3044.x, x_3044.x, x_3044.z, x_3044.z));
            let x_3047 : vec4<f32> = u_xlat13;
            let x_3049 : vec2<f32> = (vec2<f32>(x_3047.y, x_3047.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3050 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3049.x, x_3050.y, x_3049.y, x_3050.w);
            let x_3052 : vec4<f32> = u_xlat13;
            let x_3055 : vec2<f32> = u_xlat61;
            let x_3057 : vec2<f32> = ((vec2<f32>(x_3052.x, x_3052.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3055));
            let x_3058 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3057.x, x_3057.y, x_3058.z, x_3058.w);
            let x_3061 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3061) + vec2<f32>(1.0f, 1.0f));
            let x_3064 : vec2<f32> = u_xlat61;
            let x_3065 : vec2<f32> = min(x_3064, vec2<f32>(0.0f, 0.0f));
            let x_3066 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3065.x, x_3065.y, x_3066.z, x_3066.w);
            let x_3068 : vec4<f32> = u_xlat14;
            let x_3071 : vec4<f32> = u_xlat14;
            let x_3074 : vec2<f32> = u_xlat63;
            let x_3075 : vec2<f32> = ((-(vec2<f32>(x_3068.x, x_3068.y)) * vec2<f32>(x_3071.x, x_3071.y)) + x_3074);
            let x_3076 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3075.x, x_3075.y, x_3076.z, x_3076.w);
            let x_3078 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3078, vec2<f32>(0.0f, 0.0f));
            let x_3080 : vec2<f32> = u_xlat61;
            let x_3082 : vec2<f32> = u_xlat61;
            let x_3084 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3080) * x_3082) + vec2<f32>(x_3084.y, x_3084.w));
            let x_3087 : vec4<f32> = u_xlat14;
            let x_3089 : vec2<f32> = (vec2<f32>(x_3087.x, x_3087.y) + vec2<f32>(1.0f, 1.0f));
            let x_3090 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3089.x, x_3089.y, x_3090.z, x_3090.w);
            let x_3092 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3092 + vec2<f32>(1.0f, 1.0f));
            let x_3094 : vec4<f32> = u_xlat13;
            let x_3096 : vec2<f32> = (vec2<f32>(x_3094.x, x_3094.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3097 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3096.x, x_3096.y, x_3097.z, x_3097.w);
            let x_3099 : vec2<f32> = u_xlat63;
            let x_3100 : vec2<f32> = (x_3099 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3101 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3100.x, x_3100.y, x_3101.z, x_3101.w);
            let x_3103 : vec4<f32> = u_xlat14;
            let x_3105 : vec2<f32> = (vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3106 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3105.x, x_3105.y, x_3106.z, x_3106.w);
            let x_3108 : vec2<f32> = u_xlat61;
            let x_3109 : vec2<f32> = (x_3108 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3110 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3109.x, x_3109.y, x_3110.z, x_3110.w);
            let x_3112 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3112.y, x_3112.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3116 : f32 = u_xlat14.x;
            u_xlat15.z = x_3116;
            let x_3119 : f32 = u_xlat61.x;
            u_xlat15.w = x_3119;
            let x_3122 : f32 = u_xlat16.x;
            u_xlat13.z = x_3122;
            let x_3125 : f32 = u_xlat12.x;
            u_xlat13.w = x_3125;
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3129 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3127.z, x_3127.w, x_3127.x, x_3127.z) + vec4<f32>(x_3129.z, x_3129.w, x_3129.x, x_3129.z));
            let x_3133 : f32 = u_xlat15.y;
            u_xlat14.z = x_3133;
            let x_3136 : f32 = u_xlat61.y;
            u_xlat14.w = x_3136;
            let x_3139 : f32 = u_xlat13.y;
            u_xlat16.z = x_3139;
            let x_3142 : f32 = u_xlat12.z;
            u_xlat16.w = x_3142;
            let x_3144 : vec4<f32> = u_xlat14;
            let x_3146 : vec4<f32> = u_xlat16;
            let x_3148 : vec3<f32> = (vec3<f32>(x_3144.z, x_3144.y, x_3144.w) + vec3<f32>(x_3146.z, x_3146.y, x_3146.w));
            let x_3149 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3148.x, x_3148.y, x_3148.z, x_3149.w);
            let x_3151 : vec4<f32> = u_xlat13;
            let x_3153 : vec4<f32> = u_xlat17;
            let x_3155 : vec3<f32> = (vec3<f32>(x_3151.x, x_3151.z, x_3151.w) / vec3<f32>(x_3153.z, x_3153.w, x_3153.y));
            let x_3156 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3156.w);
            let x_3158 : vec4<f32> = u_xlat13;
            let x_3160 : vec3<f32> = (vec3<f32>(x_3158.x, x_3158.y, x_3158.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3161 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3160.x, x_3160.y, x_3160.z, x_3161.w);
            let x_3163 : vec4<f32> = u_xlat16;
            let x_3165 : vec4<f32> = u_xlat12;
            let x_3167 : vec3<f32> = (vec3<f32>(x_3163.z, x_3163.y, x_3163.w) / vec3<f32>(x_3165.x, x_3165.y, x_3165.z));
            let x_3168 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3167.x, x_3167.y, x_3167.z, x_3168.w);
            let x_3170 : vec4<f32> = u_xlat14;
            let x_3172 : vec3<f32> = (vec3<f32>(x_3170.x, x_3170.y, x_3170.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3173 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
            let x_3175 : vec4<f32> = u_xlat13;
            let x_3178 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3180 : vec3<f32> = (vec3<f32>(x_3175.y, x_3175.x, x_3175.z) * vec3<f32>(x_3178.x, x_3178.x, x_3178.x));
            let x_3181 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3181.w);
            let x_3183 : vec4<f32> = u_xlat14;
            let x_3186 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3188 : vec3<f32> = (vec3<f32>(x_3183.x, x_3183.y, x_3183.z) * vec3<f32>(x_3186.y, x_3186.y, x_3186.y));
            let x_3189 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3188.x, x_3188.y, x_3188.z, x_3189.w);
            let x_3192 : f32 = u_xlat14.x;
            u_xlat13.w = x_3192;
            let x_3194 : vec4<f32> = u_xlat11;
            let x_3197 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3200 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3194.x, x_3194.y, x_3194.x, x_3194.y) * vec4<f32>(x_3197.x, x_3197.y, x_3197.x, x_3197.y)) + vec4<f32>(x_3200.y, x_3200.w, x_3200.x, x_3200.w));
            let x_3203 : vec4<f32> = u_xlat11;
            let x_3206 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3209 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3203.x, x_3203.y) * vec2<f32>(x_3206.x, x_3206.y)) + vec2<f32>(x_3209.z, x_3209.w));
            let x_3213 : f32 = u_xlat13.y;
            u_xlat14.w = x_3213;
            let x_3215 : vec4<f32> = u_xlat14;
            let x_3216 : vec2<f32> = vec2<f32>(x_3215.y, x_3215.z);
            let x_3217 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3217.x, x_3216.x, x_3217.z, x_3216.y);
            let x_3219 : vec4<f32> = u_xlat11;
            let x_3222 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3225 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3219.x, x_3219.y, x_3219.x, x_3219.y) * vec4<f32>(x_3222.x, x_3222.y, x_3222.x, x_3222.y)) + vec4<f32>(x_3225.x, x_3225.y, x_3225.z, x_3225.y));
            let x_3228 : vec4<f32> = u_xlat11;
            let x_3231 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3234 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3228.x, x_3228.y, x_3228.x, x_3228.y) * vec4<f32>(x_3231.x, x_3231.y, x_3231.x, x_3231.y)) + vec4<f32>(x_3234.w, x_3234.y, x_3234.w, x_3234.z));
            let x_3237 : vec4<f32> = u_xlat11;
            let x_3240 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3243 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3237.x, x_3237.y, x_3237.x, x_3237.y) * vec4<f32>(x_3240.x, x_3240.y, x_3240.x, x_3240.y)) + vec4<f32>(x_3243.x, x_3243.w, x_3243.z, x_3243.w));
            let x_3246 : vec4<f32> = u_xlat12;
            let x_3248 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3246.x, x_3246.x, x_3246.x, x_3246.y) * vec4<f32>(x_3248.z, x_3248.w, x_3248.y, x_3248.z));
            let x_3251 : vec4<f32> = u_xlat12;
            let x_3253 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3251.y, x_3251.y, x_3251.z, x_3251.z) * x_3253);
            let x_3257 : f32 = u_xlat12.z;
            let x_3259 : f32 = u_xlat17.y;
            u_xlat85 = (x_3257 * x_3259);
            let x_3262 : vec4<f32> = u_xlat15;
            let x_3263 : vec2<f32> = vec2<f32>(x_3262.x, x_3262.y);
            let x_3265 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3263.x, x_3263.y, x_3265);
            let x_3272 : vec3<f32> = txVec34;
            let x_3274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3272.xy, x_3272.z);
            u_xlat11.x = x_3274;
            let x_3277 : vec4<f32> = u_xlat15;
            let x_3278 : vec2<f32> = vec2<f32>(x_3277.z, x_3277.w);
            let x_3280 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3278.x, x_3278.y, x_3280);
            let x_3288 : vec3<f32> = txVec35;
            let x_3290 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3288.xy, x_3288.z);
            u_xlat36 = x_3290;
            let x_3291 : f32 = u_xlat36;
            let x_3293 : f32 = u_xlat18.y;
            u_xlat36 = (x_3291 * x_3293);
            let x_3296 : f32 = u_xlat18.x;
            let x_3298 : f32 = u_xlat11.x;
            let x_3300 : f32 = u_xlat36;
            u_xlat11.x = ((x_3296 * x_3298) + x_3300);
            let x_3304 : vec2<f32> = u_xlat61;
            let x_3306 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec36;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat36 = x_3315;
            let x_3317 : f32 = u_xlat18.z;
            let x_3318 : f32 = u_xlat36;
            let x_3321 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3317 * x_3318) + x_3321);
            let x_3325 : vec4<f32> = u_xlat14;
            let x_3326 : vec2<f32> = vec2<f32>(x_3325.x, x_3325.y);
            let x_3328 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3326.x, x_3326.y, x_3328);
            let x_3335 : vec3<f32> = txVec37;
            let x_3337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3335.xy, x_3335.z);
            u_xlat36 = x_3337;
            let x_3339 : f32 = u_xlat18.w;
            let x_3340 : f32 = u_xlat36;
            let x_3343 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3339 * x_3340) + x_3343);
            let x_3347 : vec4<f32> = u_xlat16;
            let x_3348 : vec2<f32> = vec2<f32>(x_3347.x, x_3347.y);
            let x_3350 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec38;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat36 = x_3359;
            let x_3361 : f32 = u_xlat19.x;
            let x_3362 : f32 = u_xlat36;
            let x_3365 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3361 * x_3362) + x_3365);
            let x_3369 : vec4<f32> = u_xlat16;
            let x_3370 : vec2<f32> = vec2<f32>(x_3369.z, x_3369.w);
            let x_3372 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3370.x, x_3370.y, x_3372);
            let x_3379 : vec3<f32> = txVec39;
            let x_3381 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3379.xy, x_3379.z);
            u_xlat36 = x_3381;
            let x_3383 : f32 = u_xlat19.y;
            let x_3384 : f32 = u_xlat36;
            let x_3387 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3383 * x_3384) + x_3387);
            let x_3391 : vec4<f32> = u_xlat14;
            let x_3392 : vec2<f32> = vec2<f32>(x_3391.z, x_3391.w);
            let x_3394 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3392.x, x_3392.y, x_3394);
            let x_3401 : vec3<f32> = txVec40;
            let x_3403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3401.xy, x_3401.z);
            u_xlat36 = x_3403;
            let x_3405 : f32 = u_xlat19.z;
            let x_3406 : f32 = u_xlat36;
            let x_3409 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3405 * x_3406) + x_3409);
            let x_3413 : vec4<f32> = u_xlat13;
            let x_3414 : vec2<f32> = vec2<f32>(x_3413.x, x_3413.y);
            let x_3416 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec41;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat36 = x_3425;
            let x_3427 : f32 = u_xlat19.w;
            let x_3428 : f32 = u_xlat36;
            let x_3431 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3427 * x_3428) + x_3431);
            let x_3435 : vec4<f32> = u_xlat13;
            let x_3436 : vec2<f32> = vec2<f32>(x_3435.z, x_3435.w);
            let x_3438 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec42;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat36 = x_3447;
            let x_3448 : f32 = u_xlat85;
            let x_3449 : f32 = u_xlat36;
            let x_3452 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3448 * x_3449) + x_3452);
          } else {
            let x_3455 : vec4<f32> = u_xlat10;
            let x_3458 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3461 : vec2<f32> = ((vec2<f32>(x_3455.x, x_3455.y) * vec2<f32>(x_3458.z, x_3458.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3462 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3461.x, x_3461.y, x_3462.z, x_3462.w);
            let x_3464 : vec4<f32> = u_xlat11;
            let x_3466 : vec2<f32> = floor(vec2<f32>(x_3464.x, x_3464.y));
            let x_3467 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3466.x, x_3466.y, x_3467.z, x_3467.w);
            let x_3469 : vec4<f32> = u_xlat10;
            let x_3472 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3475 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3469.x, x_3469.y) * vec2<f32>(x_3472.z, x_3472.w)) + -(vec2<f32>(x_3475.x, x_3475.y)));
            let x_3479 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3479.x, x_3479.x, x_3479.y, x_3479.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3482 : vec4<f32> = u_xlat12;
            let x_3484 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3482.x, x_3482.x, x_3482.z, x_3482.z) * vec4<f32>(x_3484.x, x_3484.x, x_3484.z, x_3484.z));
            let x_3487 : vec4<f32> = u_xlat13;
            let x_3489 : vec2<f32> = (vec2<f32>(x_3487.y, x_3487.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3490.x, x_3489.x, x_3490.z, x_3489.y);
            let x_3492 : vec4<f32> = u_xlat13;
            let x_3495 : vec2<f32> = u_xlat61;
            let x_3497 : vec2<f32> = ((vec2<f32>(x_3492.x, x_3492.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3495));
            let x_3498 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3497.x, x_3498.y, x_3497.y, x_3498.w);
            let x_3500 : vec2<f32> = u_xlat61;
            let x_3502 : vec2<f32> = (-(x_3500) + vec2<f32>(1.0f, 1.0f));
            let x_3503 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3502.x, x_3502.y, x_3503.z, x_3503.w);
            let x_3505 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3505, vec2<f32>(0.0f, 0.0f));
            let x_3507 : vec2<f32> = u_xlat63;
            let x_3509 : vec2<f32> = u_xlat63;
            let x_3511 : vec4<f32> = u_xlat13;
            let x_3513 : vec2<f32> = ((-(x_3507) * x_3509) + vec2<f32>(x_3511.x, x_3511.y));
            let x_3514 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3513.x, x_3513.y, x_3514.z, x_3514.w);
            let x_3516 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3516, vec2<f32>(0.0f, 0.0f));
            let x_3519 : vec2<f32> = u_xlat63;
            let x_3521 : vec2<f32> = u_xlat63;
            let x_3523 : vec4<f32> = u_xlat12;
            let x_3525 : vec2<f32> = ((-(x_3519) * x_3521) + vec2<f32>(x_3523.y, x_3523.w));
            let x_3526 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3525.x, x_3526.y, x_3525.y);
            let x_3528 : vec4<f32> = u_xlat13;
            let x_3530 : vec2<f32> = (vec2<f32>(x_3528.x, x_3528.y) + vec2<f32>(2.0f, 2.0f));
            let x_3531 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3530.x, x_3530.y, x_3531.z, x_3531.w);
            let x_3533 : vec3<f32> = u_xlat37;
            let x_3535 : vec2<f32> = (vec2<f32>(x_3533.x, x_3533.z) + vec2<f32>(2.0f, 2.0f));
            let x_3536 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3536.x, x_3535.x, x_3536.z, x_3535.y);
            let x_3539 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3539 * 0.08163200318813323975f);
            let x_3542 : vec4<f32> = u_xlat12;
            let x_3545 : vec3<f32> = (vec3<f32>(x_3542.z, x_3542.x, x_3542.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3546 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3545.x, x_3545.y, x_3545.z, x_3546.w);
            let x_3548 : vec4<f32> = u_xlat13;
            let x_3550 : vec2<f32> = (vec2<f32>(x_3548.x, x_3548.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3551 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3550.x, x_3550.y, x_3551.z, x_3551.w);
            let x_3554 : f32 = u_xlat16.y;
            u_xlat15.x = x_3554;
            let x_3556 : vec2<f32> = u_xlat61;
            let x_3559 : vec2<f32> = ((vec2<f32>(x_3556.x, x_3556.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3560 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3560.x, x_3559.x, x_3560.z, x_3559.y);
            let x_3562 : vec2<f32> = u_xlat61;
            let x_3565 : vec2<f32> = ((vec2<f32>(x_3562.x, x_3562.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3566 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3565.x, x_3566.y, x_3565.y, x_3566.w);
            let x_3569 : f32 = u_xlat12.x;
            u_xlat13.y = x_3569;
            let x_3572 : f32 = u_xlat14.y;
            u_xlat13.w = x_3572;
            let x_3574 : vec4<f32> = u_xlat13;
            let x_3575 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3574 + x_3575);
            let x_3577 : vec2<f32> = u_xlat61;
            let x_3580 : vec2<f32> = ((vec2<f32>(x_3577.y, x_3577.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3581 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3581.x, x_3580.x, x_3581.z, x_3580.y);
            let x_3583 : vec2<f32> = u_xlat61;
            let x_3586 : vec2<f32> = ((vec2<f32>(x_3583.y, x_3583.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3587 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3586.x, x_3587.y, x_3586.y, x_3587.w);
            let x_3590 : f32 = u_xlat12.y;
            u_xlat14.y = x_3590;
            let x_3592 : vec4<f32> = u_xlat14;
            let x_3593 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3592 + x_3593);
            let x_3595 : vec4<f32> = u_xlat13;
            let x_3596 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3595 / x_3596);
            let x_3598 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3598 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3600 : vec4<f32> = u_xlat14;
            let x_3601 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3600 / x_3601);
            let x_3603 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3603 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3605 : vec4<f32> = u_xlat13;
            let x_3608 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3605.w, x_3605.x, x_3605.y, x_3605.z) * vec4<f32>(x_3608.x, x_3608.x, x_3608.x, x_3608.x));
            let x_3611 : vec4<f32> = u_xlat14;
            let x_3614 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3611.x, x_3611.w, x_3611.y, x_3611.z) * vec4<f32>(x_3614.y, x_3614.y, x_3614.y, x_3614.y));
            let x_3617 : vec4<f32> = u_xlat13;
            let x_3618 : vec3<f32> = vec3<f32>(x_3617.y, x_3617.z, x_3617.w);
            let x_3619 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3618.x, x_3619.y, x_3618.y, x_3618.z);
            let x_3622 : f32 = u_xlat14.x;
            u_xlat16.y = x_3622;
            let x_3624 : vec4<f32> = u_xlat11;
            let x_3627 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3630 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3624.x, x_3624.y, x_3624.x, x_3624.y) * vec4<f32>(x_3627.x, x_3627.y, x_3627.x, x_3627.y)) + vec4<f32>(x_3630.x, x_3630.y, x_3630.z, x_3630.y));
            let x_3633 : vec4<f32> = u_xlat11;
            let x_3636 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3639 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3633.x, x_3633.y) * vec2<f32>(x_3636.x, x_3636.y)) + vec2<f32>(x_3639.w, x_3639.y));
            let x_3643 : f32 = u_xlat16.y;
            u_xlat13.y = x_3643;
            let x_3646 : f32 = u_xlat14.z;
            u_xlat16.y = x_3646;
            let x_3648 : vec4<f32> = u_xlat11;
            let x_3651 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3654 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3648.x, x_3648.y, x_3648.x, x_3648.y) * vec4<f32>(x_3651.x, x_3651.y, x_3651.x, x_3651.y)) + vec4<f32>(x_3654.x, x_3654.y, x_3654.z, x_3654.y));
            let x_3657 : vec4<f32> = u_xlat11;
            let x_3660 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3663 : vec4<f32> = u_xlat16;
            let x_3665 : vec2<f32> = ((vec2<f32>(x_3657.x, x_3657.y) * vec2<f32>(x_3660.x, x_3660.y)) + vec2<f32>(x_3663.w, x_3663.y));
            let x_3666 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3665.x, x_3665.y, x_3666.z, x_3666.w);
            let x_3669 : f32 = u_xlat16.y;
            u_xlat13.z = x_3669;
            let x_3672 : vec4<f32> = u_xlat11;
            let x_3675 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3678 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3672.x, x_3672.y, x_3672.x, x_3672.y) * vec4<f32>(x_3675.x, x_3675.y, x_3675.x, x_3675.y)) + vec4<f32>(x_3678.x, x_3678.y, x_3678.x, x_3678.z));
            let x_3682 : f32 = u_xlat14.w;
            u_xlat16.y = x_3682;
            let x_3685 : vec4<f32> = u_xlat11;
            let x_3688 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3691 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3685.x, x_3685.y, x_3685.x, x_3685.y) * vec4<f32>(x_3688.x, x_3688.y, x_3688.x, x_3688.y)) + vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3691.y));
            let x_3695 : vec4<f32> = u_xlat11;
            let x_3698 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3701 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3695.x, x_3695.y) * vec2<f32>(x_3698.x, x_3698.y)) + vec2<f32>(x_3701.w, x_3701.y));
            let x_3705 : f32 = u_xlat16.y;
            u_xlat13.w = x_3705;
            let x_3708 : vec4<f32> = u_xlat11;
            let x_3711 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3714 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3708.x, x_3708.y) * vec2<f32>(x_3711.x, x_3711.y)) + vec2<f32>(x_3714.x, x_3714.w));
            let x_3717 : vec4<f32> = u_xlat16;
            let x_3718 : vec3<f32> = vec3<f32>(x_3717.x, x_3717.z, x_3717.w);
            let x_3719 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3718.x, x_3719.y, x_3718.y, x_3718.z);
            let x_3721 : vec4<f32> = u_xlat11;
            let x_3724 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3727 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3721.x, x_3721.y, x_3721.x, x_3721.y) * vec4<f32>(x_3724.x, x_3724.y, x_3724.x, x_3724.y)) + vec4<f32>(x_3727.x, x_3727.y, x_3727.z, x_3727.y));
            let x_3731 : vec4<f32> = u_xlat11;
            let x_3734 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3737 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3731.x, x_3731.y) * vec2<f32>(x_3734.x, x_3734.y)) + vec2<f32>(x_3737.w, x_3737.y));
            let x_3741 : f32 = u_xlat13.x;
            u_xlat14.x = x_3741;
            let x_3743 : vec4<f32> = u_xlat11;
            let x_3746 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3749 : vec4<f32> = u_xlat14;
            let x_3751 : vec2<f32> = ((vec2<f32>(x_3743.x, x_3743.y) * vec2<f32>(x_3746.x, x_3746.y)) + vec2<f32>(x_3749.x, x_3749.y));
            let x_3752 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3751.x, x_3751.y, x_3752.z, x_3752.w);
            let x_3755 : vec4<f32> = u_xlat12;
            let x_3757 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3755.x, x_3755.x, x_3755.x, x_3755.x) * x_3757);
            let x_3760 : vec4<f32> = u_xlat12;
            let x_3762 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3760.y, x_3760.y, x_3760.y, x_3760.y) * x_3762);
            let x_3765 : vec4<f32> = u_xlat12;
            let x_3767 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3765.z, x_3765.z, x_3765.z, x_3765.z) * x_3767);
            let x_3769 : vec4<f32> = u_xlat12;
            let x_3771 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3769.w, x_3769.w, x_3769.w, x_3769.w) * x_3771);
            let x_3774 : vec4<f32> = u_xlat17;
            let x_3775 : vec2<f32> = vec2<f32>(x_3774.x, x_3774.y);
            let x_3777 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3775.x, x_3775.y, x_3777);
            let x_3784 : vec3<f32> = txVec43;
            let x_3786 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3784.xy, x_3784.z);
            u_xlat85 = x_3786;
            let x_3788 : vec4<f32> = u_xlat17;
            let x_3789 : vec2<f32> = vec2<f32>(x_3788.z, x_3788.w);
            let x_3791 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3789.x, x_3789.y, x_3791);
            let x_3798 : vec3<f32> = txVec44;
            let x_3800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3798.xy, x_3798.z);
            u_xlat13.x = x_3800;
            let x_3803 : f32 = u_xlat13.x;
            let x_3805 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3803 * x_3805);
            let x_3809 : f32 = u_xlat22.x;
            let x_3810 : f32 = u_xlat85;
            let x_3813 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3809 * x_3810) + x_3813);
            let x_3816 : vec2<f32> = u_xlat61;
            let x_3818 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3816.x, x_3816.y, x_3818);
            let x_3825 : vec3<f32> = txVec45;
            let x_3827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3825.xy, x_3825.z);
            u_xlat61.x = x_3827;
            let x_3830 : f32 = u_xlat22.z;
            let x_3832 : f32 = u_xlat61.x;
            let x_3834 : f32 = u_xlat85;
            u_xlat85 = ((x_3830 * x_3832) + x_3834);
            let x_3837 : vec4<f32> = u_xlat20;
            let x_3838 : vec2<f32> = vec2<f32>(x_3837.x, x_3837.y);
            let x_3840 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3838.x, x_3838.y, x_3840);
            let x_3847 : vec3<f32> = txVec46;
            let x_3849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3847.xy, x_3847.z);
            u_xlat61.x = x_3849;
            let x_3852 : f32 = u_xlat22.w;
            let x_3854 : f32 = u_xlat61.x;
            let x_3856 : f32 = u_xlat85;
            u_xlat85 = ((x_3852 * x_3854) + x_3856);
            let x_3859 : vec4<f32> = u_xlat18;
            let x_3860 : vec2<f32> = vec2<f32>(x_3859.x, x_3859.y);
            let x_3862 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
            let x_3869 : vec3<f32> = txVec47;
            let x_3871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3869.xy, x_3869.z);
            u_xlat61.x = x_3871;
            let x_3874 : f32 = u_xlat23.x;
            let x_3876 : f32 = u_xlat61.x;
            let x_3878 : f32 = u_xlat85;
            u_xlat85 = ((x_3874 * x_3876) + x_3878);
            let x_3881 : vec4<f32> = u_xlat18;
            let x_3882 : vec2<f32> = vec2<f32>(x_3881.z, x_3881.w);
            let x_3884 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3882.x, x_3882.y, x_3884);
            let x_3891 : vec3<f32> = txVec48;
            let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
            u_xlat61.x = x_3893;
            let x_3896 : f32 = u_xlat23.y;
            let x_3898 : f32 = u_xlat61.x;
            let x_3900 : f32 = u_xlat85;
            u_xlat85 = ((x_3896 * x_3898) + x_3900);
            let x_3903 : vec4<f32> = u_xlat19;
            let x_3904 : vec2<f32> = vec2<f32>(x_3903.x, x_3903.y);
            let x_3906 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3904.x, x_3904.y, x_3906);
            let x_3913 : vec3<f32> = txVec49;
            let x_3915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3913.xy, x_3913.z);
            u_xlat61.x = x_3915;
            let x_3918 : f32 = u_xlat23.z;
            let x_3920 : f32 = u_xlat61.x;
            let x_3922 : f32 = u_xlat85;
            u_xlat85 = ((x_3918 * x_3920) + x_3922);
            let x_3925 : vec4<f32> = u_xlat20;
            let x_3926 : vec2<f32> = vec2<f32>(x_3925.z, x_3925.w);
            let x_3928 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3926.x, x_3926.y, x_3928);
            let x_3935 : vec3<f32> = txVec50;
            let x_3937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3935.xy, x_3935.z);
            u_xlat61.x = x_3937;
            let x_3940 : f32 = u_xlat23.w;
            let x_3942 : f32 = u_xlat61.x;
            let x_3944 : f32 = u_xlat85;
            u_xlat85 = ((x_3940 * x_3942) + x_3944);
            let x_3947 : vec4<f32> = u_xlat21;
            let x_3948 : vec2<f32> = vec2<f32>(x_3947.x, x_3947.y);
            let x_3950 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
            let x_3957 : vec3<f32> = txVec51;
            let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
            u_xlat61.x = x_3959;
            let x_3962 : f32 = u_xlat24.x;
            let x_3964 : f32 = u_xlat61.x;
            let x_3966 : f32 = u_xlat85;
            u_xlat85 = ((x_3962 * x_3964) + x_3966);
            let x_3969 : vec4<f32> = u_xlat21;
            let x_3970 : vec2<f32> = vec2<f32>(x_3969.z, x_3969.w);
            let x_3972 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3970.x, x_3970.y, x_3972);
            let x_3979 : vec3<f32> = txVec52;
            let x_3981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3979.xy, x_3979.z);
            u_xlat61.x = x_3981;
            let x_3984 : f32 = u_xlat24.y;
            let x_3986 : f32 = u_xlat61.x;
            let x_3988 : f32 = u_xlat85;
            u_xlat85 = ((x_3984 * x_3986) + x_3988);
            let x_3991 : vec2<f32> = u_xlat38;
            let x_3993 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3991.x, x_3991.y, x_3993);
            let x_4000 : vec3<f32> = txVec53;
            let x_4002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4000.xy, x_4000.z);
            u_xlat61.x = x_4002;
            let x_4005 : f32 = u_xlat24.z;
            let x_4007 : f32 = u_xlat61.x;
            let x_4009 : f32 = u_xlat85;
            u_xlat85 = ((x_4005 * x_4007) + x_4009);
            let x_4012 : vec2<f32> = u_xlat69;
            let x_4014 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4012.x, x_4012.y, x_4014);
            let x_4021 : vec3<f32> = txVec54;
            let x_4023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4021.xy, x_4021.z);
            u_xlat61.x = x_4023;
            let x_4026 : f32 = u_xlat24.w;
            let x_4028 : f32 = u_xlat61.x;
            let x_4030 : f32 = u_xlat85;
            u_xlat85 = ((x_4026 * x_4028) + x_4030);
            let x_4033 : vec4<f32> = u_xlat16;
            let x_4034 : vec2<f32> = vec2<f32>(x_4033.x, x_4033.y);
            let x_4036 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4034.x, x_4034.y, x_4036);
            let x_4043 : vec3<f32> = txVec55;
            let x_4045 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4043.xy, x_4043.z);
            u_xlat61.x = x_4045;
            let x_4048 : f32 = u_xlat12.x;
            let x_4050 : f32 = u_xlat61.x;
            let x_4052 : f32 = u_xlat85;
            u_xlat85 = ((x_4048 * x_4050) + x_4052);
            let x_4055 : vec4<f32> = u_xlat16;
            let x_4056 : vec2<f32> = vec2<f32>(x_4055.z, x_4055.w);
            let x_4058 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4056.x, x_4056.y, x_4058);
            let x_4065 : vec3<f32> = txVec56;
            let x_4067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4065.xy, x_4065.z);
            u_xlat61.x = x_4067;
            let x_4070 : f32 = u_xlat12.y;
            let x_4072 : f32 = u_xlat61.x;
            let x_4074 : f32 = u_xlat85;
            u_xlat85 = ((x_4070 * x_4072) + x_4074);
            let x_4077 : vec2<f32> = u_xlat64;
            let x_4079 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4077.x, x_4077.y, x_4079);
            let x_4086 : vec3<f32> = txVec57;
            let x_4088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4086.xy, x_4086.z);
            u_xlat61.x = x_4088;
            let x_4091 : f32 = u_xlat12.z;
            let x_4093 : f32 = u_xlat61.x;
            let x_4095 : f32 = u_xlat85;
            u_xlat85 = ((x_4091 * x_4093) + x_4095);
            let x_4098 : vec4<f32> = u_xlat11;
            let x_4099 : vec2<f32> = vec2<f32>(x_4098.x, x_4098.y);
            let x_4101 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4099.x, x_4099.y, x_4101);
            let x_4108 : vec3<f32> = txVec58;
            let x_4110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4108.xy, x_4108.z);
            u_xlat11.x = x_4110;
            let x_4113 : f32 = u_xlat12.w;
            let x_4115 : f32 = u_xlat11.x;
            let x_4117 : f32 = u_xlat85;
            u_xlat84 = ((x_4113 * x_4115) + x_4117);
          }
        }
      } else {
        let x_4121 : vec4<f32> = u_xlat10;
        let x_4122 : vec2<f32> = vec2<f32>(x_4121.x, x_4121.y);
        let x_4124 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4122.x, x_4122.y, x_4124);
        let x_4131 : vec3<f32> = txVec59;
        let x_4133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4131.xy, x_4131.z);
        u_xlat84 = x_4133;
      }
      let x_4134 : i32 = u_xlati81;
      let x_4136 : f32 = x_990.x_AdditionalShadowParams[x_4134].x;
      u_xlat10.x = (1.0f + -(x_4136));
      let x_4140 : f32 = u_xlat84;
      let x_4141 : i32 = u_xlati81;
      let x_4143 : f32 = x_990.x_AdditionalShadowParams[x_4141].x;
      let x_4146 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4140 * x_4143) + x_4146);
      let x_4149 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4149);
      let x_4154 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4154 >= 1.0f);
      let x_4156 : bool = u_xlatb35;
      let x_4158 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4156 | x_4158);
      let x_4162 : bool = u_xlatb10.x;
      let x_4163 : f32 = u_xlat84;
      u_xlat84 = select(x_4163, 1.0f, x_4162);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4166 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4166) + 1.0f);
    let x_4171 : f32 = u_xlat3.x;
    let x_4173 : f32 = u_xlat10.x;
    let x_4175 : f32 = u_xlat84;
    u_xlat84 = ((x_4171 * x_4173) + x_4175);
    let x_4177 : f32 = u_xlat82;
    let x_4178 : f32 = u_xlat84;
    u_xlat82 = (x_4177 * x_4178);
    let x_4180 : vec4<f32> = u_xlat1;
    let x_4182 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4180.x, x_4180.y, x_4180.z), vec3<f32>(x_4182.x, x_4182.y, x_4182.z));
    let x_4185 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4185, 0.0f, 1.0f);
    let x_4187 : f32 = u_xlat82;
    let x_4188 : f32 = u_xlat84;
    u_xlat82 = (x_4187 * x_4188);
    let x_4190 : f32 = u_xlat82;
    let x_4192 : i32 = u_xlati81;
    let x_4194 : vec4<f32> = x_2688.x_AdditionalLightsColor[x_4192];
    let x_4196 : vec3<f32> = (vec3<f32>(x_4190, x_4190, x_4190) * vec3<f32>(x_4194.x, x_4194.y, x_4194.z));
    let x_4197 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4196.x, x_4196.y, x_4196.z, x_4197.w);
    let x_4199 : vec4<f32> = u_xlat8;
    let x_4201 : f32 = u_xlat83;
    let x_4204 : vec4<f32> = u_xlat6;
    let x_4206 : vec3<f32> = ((vec3<f32>(x_4199.x, x_4199.y, x_4199.z) * vec3<f32>(x_4201, x_4201, x_4201)) + vec3<f32>(x_4204.x, x_4204.y, x_4204.z));
    let x_4207 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4206.x, x_4206.y, x_4206.z, x_4207.w);
    let x_4209 : vec4<f32> = u_xlat8;
    let x_4211 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4209.x, x_4209.y, x_4209.z), vec3<f32>(x_4211.x, x_4211.y, x_4211.z));
    let x_4214 : f32 = u_xlat81;
    u_xlat81 = max(x_4214, 1.17549435e-38f);
    let x_4216 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4216);
    let x_4218 : f32 = u_xlat81;
    let x_4220 : vec4<f32> = u_xlat8;
    let x_4222 : vec3<f32> = (vec3<f32>(x_4218, x_4218, x_4218) * vec3<f32>(x_4220.x, x_4220.y, x_4220.z));
    let x_4223 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4222.x, x_4222.y, x_4222.z, x_4223.w);
    let x_4225 : vec4<f32> = u_xlat1;
    let x_4227 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4225.x, x_4225.y, x_4225.z), vec3<f32>(x_4227.x, x_4227.y, x_4227.z));
    let x_4230 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4230, 0.0f, 1.0f);
    let x_4232 : vec4<f32> = u_xlat9;
    let x_4234 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4232.x, x_4232.y, x_4232.z), vec3<f32>(x_4234.x, x_4234.y, x_4234.z));
    let x_4237 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4237, 0.0f, 1.0f);
    let x_4239 : f32 = u_xlat81;
    let x_4240 : f32 = u_xlat81;
    u_xlat81 = (x_4239 * x_4240);
    let x_4242 : f32 = u_xlat81;
    let x_4244 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4242 * x_4244) + 1.00001001358032226562f);
    let x_4247 : f32 = u_xlat82;
    let x_4248 : f32 = u_xlat82;
    u_xlat82 = (x_4247 * x_4248);
    let x_4250 : f32 = u_xlat81;
    let x_4251 : f32 = u_xlat81;
    u_xlat81 = (x_4250 * x_4251);
    let x_4253 : f32 = u_xlat82;
    u_xlat82 = max(x_4253, 0.10000000149011611938f);
    let x_4255 : f32 = u_xlat81;
    let x_4256 : f32 = u_xlat82;
    u_xlat81 = (x_4255 * x_4256);
    let x_4258 : f32 = u_xlat79;
    let x_4259 : f32 = u_xlat81;
    u_xlat81 = (x_4258 * x_4259);
    let x_4261 : f32 = u_xlat77;
    let x_4262 : f32 = u_xlat81;
    u_xlat81 = (x_4261 / x_4262);
    let x_4264 : vec4<f32> = u_xlat4;
    let x_4266 : f32 = u_xlat81;
    let x_4269 : vec3<f32> = u_xlat28;
    let x_4270 : vec3<f32> = ((vec3<f32>(x_4264.x, x_4264.y, x_4264.z) * vec3<f32>(x_4266, x_4266, x_4266)) + x_4269);
    let x_4271 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4270.x, x_4270.y, x_4270.z, x_4271.w);
    let x_4273 : vec4<f32> = u_xlat8;
    let x_4275 : vec4<f32> = u_xlat10;
    let x_4278 : vec4<f32> = u_xlat7;
    let x_4280 : vec3<f32> = ((vec3<f32>(x_4273.x, x_4273.y, x_4273.z) * vec3<f32>(x_4275.x, x_4275.y, x_4275.z)) + vec3<f32>(x_4278.x, x_4278.y, x_4278.z));
    let x_4281 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4280.x, x_4280.y, x_4280.z, x_4281.w);

    continuing {
      let x_4283 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4283 + bitcast<u32>(1i));
    }
  }
  let x_4285 : vec4<f32> = u_xlat2;
  let x_4287 : f32 = u_xlat25;
  let x_4290 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_4285.x, x_4285.y, x_4285.z) * vec3<f32>(x_4287, x_4287, x_4287)) + vec3<f32>(x_4290.x, x_4290.z, x_4290.w));
  let x_4293 : vec4<f32> = u_xlat7;
  let x_4295 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4293.x, x_4293.y, x_4293.z) + x_4295);
  let x_4297 : f32 = u_xlat76;
  let x_4298 : f32 = u_xlat76;
  u_xlat1.x = (x_4297 * -(x_4298));
  let x_4303 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4303);
  let x_4306 : vec3<f32> = u_xlat0;
  let x_4307 : f32 = u_xlat75;
  let x_4311 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4306 * vec3<f32>(x_4307, x_4307, x_4307)) + -(vec3<f32>(x_4311.x, x_4311.y, x_4311.z)));
  let x_4317 : vec4<f32> = u_xlat1;
  let x_4319 : vec3<f32> = u_xlat0;
  let x_4322 : vec4<f32> = x_113.unity_FogColor;
  let x_4324 : vec3<f32> = ((vec3<f32>(x_4317.x, x_4317.x, x_4317.x) * x_4319) + vec3<f32>(x_4322.x, x_4322.y, x_4322.z));
  let x_4325 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4324.x, x_4324.y, x_4324.z, x_4325.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


