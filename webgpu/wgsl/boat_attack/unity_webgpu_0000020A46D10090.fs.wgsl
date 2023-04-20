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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

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

var<private> u_xlatb77 : bool;

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

@group(1) @binding(2) var<uniform> x_888 : UnityPerDraw;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1026 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu50 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2718 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

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
  var x_2312 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2859 : f32;
  var x_2870 : f32;
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
  u_xlat75 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb76 = (4.0f >= x_206);
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
  let x_268 : bool = u_xlatb76;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_279);
  let x_281 : bool = u_xlatb77;
  if (((select(0i, 1i, x_281) * -1i) != 0i)) {
    discard;
  }
  let x_290 : f32 = u_xlat76;
  u_xlat76 = (x_290 + 0.00006103515625f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat76;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_371 : vec4<f32> = vs_TEXCOORD1;
  let x_374 : f32 = x_111.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_371.x, x_371.y), x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat6.x;
  let x_382 : f32 = u_xlat6.z;
  u_xlat6.x = (x_380 * x_382);
  let x_385 : vec4<f32> = u_xlat6;
  let x_390 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat76;
  u_xlat76 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat76;
  u_xlat76 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_403);
  let x_405 : f32 = u_xlat76;
  u_xlat7.z = max(x_405, 0.0000000000000001f);
  let x_409 : vec4<f32> = u_xlat6;
  let x_412 : f32 = x_13.x_NormalScale0;
  let x_414 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_424 : f32 = x_111.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_421.z, x_421.w), x_424);
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat6.z;
  u_xlat6.x = (x_430 * x_432);
  let x_435 : vec4<f32> = u_xlat6;
  let x_438 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
  let x_446 : f32 = u_xlat76;
  u_xlat76 = min(x_446, 1.0f);
  let x_448 : f32 = u_xlat76;
  u_xlat76 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_451);
  let x_453 : f32 = u_xlat76;
  u_xlat8.z = max(x_453, 0.0000000000000001f);
  let x_456 : vec4<f32> = u_xlat6;
  let x_459 : f32 = x_13.x_NormalScale1;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_462 : vec2<f32> = vec2<f32>(x_459, x_461);
  let x_466 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.y, x_469.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_490 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : f32 = x_111.x_GlobalMipBias.x;
  let x_494 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_490.x, x_490.y), x_493);
  let x_495 : vec3<f32> = vec3<f32>(x_494.x, x_494.y, x_494.w);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat7.z;
  u_xlat7.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_510.x, x_510.y), vec2<f32>(x_512.x, x_512.y));
  let x_515 : f32 = u_xlat76;
  u_xlat76 = min(x_515, 1.0f);
  let x_517 : f32 = u_xlat76;
  u_xlat76 = (-(x_517) + 1.0f);
  let x_520 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_520);
  let x_522 : f32 = u_xlat76;
  u_xlat8.z = max(x_522, 0.0000000000000001f);
  let x_525 : vec4<f32> = u_xlat7;
  let x_529 : f32 = x_13.x_NormalScale2;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_532 : vec2<f32> = vec2<f32>(x_529, x_531);
  let x_536 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_532.x, x_532.y));
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.z, x_539.z, x_539.z) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_553 : vec4<f32> = vs_TEXCOORD2;
  let x_556 : f32 = x_111.x_GlobalMipBias.x;
  let x_557 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_553.z, x_553.w), x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.w);
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat7.z;
  u_xlat7.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat7;
  let x_570 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_573.x, x_573.y), vec2<f32>(x_575.x, x_575.y));
  let x_578 : f32 = u_xlat76;
  u_xlat76 = min(x_578, 1.0f);
  let x_580 : f32 = u_xlat76;
  u_xlat76 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_583);
  let x_585 : f32 = u_xlat76;
  u_xlat8.z = max(x_585, 0.0000000000000001f);
  let x_588 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_13.x_NormalScale3;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_595 : vec2<f32> = vec2<f32>(x_592, x_594);
  let x_599 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.w, x_602.w, x_602.w) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.z;
  u_xlat6.w = (x_613 + 0.00000999999974737875f);
  let x_617 : vec4<f32> = u_xlat6;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_617.x, x_617.y, x_617.w), vec3<f32>(x_619.x, x_619.y, x_619.w));
  let x_622 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat76;
  let x_626 : vec4<f32> = u_xlat6;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.w));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_632;
  let x_635 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_635;
  let x_638 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_638;
  let x_641 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_641;
  let x_644 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_644;
  let x_647 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_647;
  let x_650 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_650;
  let x_653 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_653;
  let x_655 : vec4<f32> = u_xlat7;
  let x_656 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_655 + x_656);
  let x_659 : f32 = u_xlat0.z;
  u_xlat8.x = x_659;
  let x_662 : f32 = u_xlat1.z;
  u_xlat8.y = x_662;
  let x_665 : f32 = u_xlat2.z;
  u_xlat8.z = x_665;
  let x_668 : f32 = u_xlat3.y;
  u_xlat8.w = x_668;
  let x_670 : vec4<f32> = u_xlat9;
  let x_673 : f32 = x_13.x_Smoothness0;
  let x_675 : f32 = x_13.x_Smoothness1;
  let x_677 : f32 = x_13.x_Smoothness2;
  let x_679 : f32 = x_13.x_Smoothness3;
  let x_682 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_670) * vec4<f32>(x_673, x_675, x_677, x_679)) + x_682);
  let x_686 : f32 = x_13.x_LayerHasMask0;
  let x_689 : f32 = x_13.x_LayerHasMask1;
  let x_692 : f32 = x_13.x_LayerHasMask2;
  let x_695 : f32 = x_13.x_LayerHasMask3;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_686, x_689, x_692, x_695) * x_697) + x_699);
  let x_702 : vec4<f32> = u_xlat4;
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat0.x;
  u_xlat8.x = x_706;
  let x_709 : f32 = u_xlat1.x;
  u_xlat8.y = x_709;
  let x_712 : f32 = u_xlat2.x;
  u_xlat8.z = x_712;
  let x_715 : f32 = u_xlat3.x;
  u_xlat8.w = x_715;
  let x_717 : vec4<f32> = u_xlat8;
  let x_720 : f32 = x_13.x_Metallic0;
  let x_723 : f32 = x_13.x_Metallic1;
  let x_726 : f32 = x_13.x_Metallic2;
  let x_729 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_717 + -(vec4<f32>(x_720, x_723, x_726, x_729)));
  let x_734 : f32 = x_13.x_LayerHasMask0;
  let x_736 : f32 = x_13.x_LayerHasMask1;
  let x_738 : f32 = x_13.x_LayerHasMask2;
  let x_740 : f32 = x_13.x_LayerHasMask3;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_13.x_Metallic0;
  let x_747 : f32 = x_13.x_Metallic1;
  let x_749 : f32 = x_13.x_Metallic2;
  let x_751 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_734, x_736, x_738, x_740) * x_742) + vec4<f32>(x_745, x_747, x_749, x_751));
  let x_754 : vec4<f32> = u_xlat4;
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat0.y;
  u_xlat3.x = x_759;
  let x_762 : f32 = u_xlat1.y;
  u_xlat3.y = x_762;
  let x_765 : f32 = u_xlat2.y;
  u_xlat3.z = x_765;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_767) + x_769);
  let x_772 : f32 = x_13.x_LayerHasMask0;
  let x_774 : f32 = x_13.x_LayerHasMask1;
  let x_776 : f32 = x_13.x_LayerHasMask2;
  let x_778 : f32 = x_13.x_LayerHasMask3;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_772, x_774, x_776, x_778) * x_780) + x_782);
  let x_785 : vec4<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_785, x_786);
  let x_788 : vec4<f32> = u_xlat6;
  let x_791 : vec4<f32> = vs_TEXCOORD5;
  let x_793 : vec3<f32> = (vec3<f32>(x_788.y, x_788.y, x_788.y) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * -(vec3<f32>(x_799.x, x_799.y, x_799.z))) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD3;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_808.z, x_808.z, x_808.z) * vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat76;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_837 : f32 = vs_TEXCOORD7.y;
  let x_839 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.x = (x_837 * x_839);
  let x_843 : f32 = x_111.unity_MatrixV[0i].z;
  let x_845 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_843 * x_845) + x_848);
  let x_852 : f32 = x_111.unity_MatrixV[2i].z;
  let x_854 : f32 = vs_TEXCOORD7.z;
  let x_857 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_852 * x_854) + x_857);
  let x_861 : f32 = u_xlat2.x;
  let x_863 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat2.x = (x_861 + x_863);
  let x_867 : f32 = u_xlat2.x;
  let x_870 : f32 = x_111.x_ProjectionParams.y;
  u_xlat2.x = (-(x_867) + -(x_870));
  let x_875 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_875, 0.0f);
  let x_879 : f32 = u_xlat2.x;
  let x_881 : f32 = x_111.unity_FogParams.x;
  u_xlat2.x = (x_879 * x_881);
  u_xlat1.w = 1.0f;
  let x_890 : vec4<f32> = x_888.unity_SHAr;
  let x_891 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_890, x_891);
  let x_895 : vec4<f32> = x_888.unity_SHAg;
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_895, x_896);
  let x_900 : vec4<f32> = x_888.unity_SHAb;
  let x_901 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_900, x_901);
  let x_904 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_904.y, x_904.z, x_904.z, x_904.x) * vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.z));
  let x_910 : vec4<f32> = x_888.unity_SHBr;
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_910, x_911);
  let x_915 : vec4<f32> = x_888.unity_SHBg;
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_915, x_916);
  let x_920 : vec4<f32> = x_888.unity_SHBb;
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_920, x_921);
  let x_925 : f32 = u_xlat1.y;
  let x_927 : f32 = u_xlat1.y;
  u_xlat76 = (x_925 * x_927);
  let x_930 : f32 = u_xlat1.x;
  let x_932 : f32 = u_xlat1.x;
  let x_934 : f32 = u_xlat76;
  u_xlat76 = ((x_930 * x_932) + -(x_934));
  let x_940 : vec4<f32> = x_888.unity_SHC;
  let x_942 : f32 = u_xlat76;
  let x_945 : vec4<f32> = u_xlat6;
  u_xlat27 = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec3<f32> = u_xlat27;
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat27 = (x_948 + vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_952, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_956) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_961 : f32 = u_xlat50;
  let x_962 : f32 = u_xlat76;
  u_xlat3.x = (x_961 + -(x_962));
  let x_967 : f32 = u_xlat76;
  let x_969 : vec4<f32> = u_xlat5;
  u_xlat28 = (vec3<f32>(x_967, x_967, x_967) * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat5;
  let x_976 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_977 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec3<f32> = u_xlat0;
  let x_981 : vec4<f32> = u_xlat4;
  let x_986 : vec3<f32> = ((vec3<f32>(x_979.x, x_979.x, x_979.x) * vec3<f32>(x_981.x, x_981.y, x_981.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_987 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : f32 = u_xlat50;
  u_xlat0.x = (-(x_989) + 1.0f);
  let x_994 : f32 = u_xlat0.x;
  let x_996 : f32 = u_xlat0.x;
  u_xlat50 = (x_994 * x_996);
  let x_998 : f32 = u_xlat50;
  u_xlat50 = max(x_998, 0.0078125f);
  let x_1001 : f32 = u_xlat50;
  let x_1002 : f32 = u_xlat50;
  u_xlat76 = (x_1001 * x_1002);
  let x_1005 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1005 + 1.0f);
  let x_1009 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1009, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat50;
  u_xlat79 = ((x_1013 * 4.0f) + 2.0f);
  let x_1016 : f32 = u_xlat25;
  u_xlat25 = min(x_1016, 1.0f);
  let x_1028 : f32 = x_1026.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1028);
  let x_1030 : bool = u_xlatb5;
  if (x_1030) {
    let x_1034 : f32 = x_1026.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1034 == 1.0f);
    let x_1036 : bool = u_xlatb5;
    if (x_1036) {
      let x_1040 : vec4<f32> = vs_TEXCOORD8;
      let x_1043 : vec4<f32> = x_1026.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y) + x_1043);
      let x_1047 : vec4<f32> = u_xlat5;
      let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
      let x_1050 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
      let x_1062 : vec3<f32> = txVec0;
      let x_1064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1062.xy, x_1062.z);
      u_xlat6.x = x_1064;
      let x_1067 : vec4<f32> = u_xlat5;
      let x_1068 : vec2<f32> = vec2<f32>(x_1067.z, x_1067.w);
      let x_1070 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1068.x, x_1068.y, x_1070);
      let x_1077 : vec3<f32> = txVec1;
      let x_1079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1077.xy, x_1077.z);
      u_xlat6.y = x_1079;
      let x_1081 : vec4<f32> = vs_TEXCOORD8;
      let x_1084 : vec4<f32> = x_1026.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) + x_1084);
      let x_1087 : vec4<f32> = u_xlat5;
      let x_1088 : vec2<f32> = vec2<f32>(x_1087.x, x_1087.y);
      let x_1090 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
      let x_1097 : vec3<f32> = txVec2;
      let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
      u_xlat6.z = x_1099;
      let x_1102 : vec4<f32> = u_xlat5;
      let x_1103 : vec2<f32> = vec2<f32>(x_1102.z, x_1102.w);
      let x_1105 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1103.x, x_1103.y, x_1105);
      let x_1112 : vec3<f32> = txVec3;
      let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1112.xy, x_1112.z);
      u_xlat6.w = x_1114;
      let x_1116 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1116, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1124 : f32 = x_1026.x_MainLightShadowParams.y;
      u_xlatb30 = (x_1124 == 2.0f);
      let x_1126 : bool = u_xlatb30;
      if (x_1126) {
        let x_1130 : vec4<f32> = vs_TEXCOORD8;
        let x_1133 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.z, x_1133.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1137 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1136.x, x_1136.y, x_1137.z);
        let x_1139 : vec3<f32> = u_xlat30;
        let x_1141 : vec2<f32> = floor(vec2<f32>(x_1139.x, x_1139.y));
        let x_1142 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1141.x, x_1141.y, x_1142.z);
        let x_1144 : vec4<f32> = vs_TEXCOORD8;
        let x_1147 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1150 : vec3<f32> = u_xlat30;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.z, x_1147.w)) + -(vec2<f32>(x_1150.x, x_1150.y)));
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1156.x, x_1156.x, x_1156.y, x_1156.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1160 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1160.x, x_1160.x, x_1160.z, x_1160.z) * vec4<f32>(x_1162.x, x_1162.x, x_1162.z, x_1162.z));
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_1167.y, x_1167.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1172 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = u_xlat6;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1172.x, x_1172.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1175.x, x_1175.y)));
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1185 : vec2<f32> = (-(vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1189 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_1189.x, x_1189.y), vec2<f32>(0.0f, 0.0f));
        let x_1193 : vec2<f32> = u_xlat58;
        let x_1195 : vec2<f32> = u_xlat58;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_1193) * x_1195) + vec2<f32>(x_1197.x, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat6;
        let x_1202 : vec2<f32> = max(vec2<f32>(x_1200.x, x_1200.y), vec2<f32>(0.0f, 0.0f));
        let x_1203 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = u_xlat6;
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1213 : vec2<f32> = ((-(vec2<f32>(x_1205.x, x_1205.y)) * vec2<f32>(x_1208.x, x_1208.y)) + vec2<f32>(x_1211.y, x_1211.w));
        let x_1214 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1216 + vec2<f32>(1.0f, 1.0f));
        let x_1218 : vec4<f32> = u_xlat6;
        let x_1220 : vec2<f32> = (vec2<f32>(x_1218.x, x_1218.y) + vec2<f32>(1.0f, 1.0f));
        let x_1221 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat7;
        let x_1227 : vec2<f32> = (vec2<f32>(x_1223.x, x_1223.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat8;
        let x_1232 : vec2<f32> = (vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1233 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1235 : vec2<f32> = u_xlat58;
        let x_1236 : vec2<f32> = (x_1235 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1237 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1241 : vec2<f32> = (vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1246 : vec2<f32> = (vec2<f32>(x_1244.y, x_1244.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1247 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1250 : f32 = u_xlat8.x;
        u_xlat9.z = x_1250;
        let x_1253 : f32 = u_xlat6.x;
        u_xlat9.w = x_1253;
        let x_1256 : f32 = u_xlat11.x;
        u_xlat10.z = x_1256;
        let x_1259 : f32 = u_xlat56.x;
        u_xlat10.w = x_1259;
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1261.z, x_1261.w, x_1261.x, x_1261.z) + vec4<f32>(x_1263.z, x_1263.w, x_1263.x, x_1263.z));
        let x_1267 : f32 = u_xlat9.y;
        u_xlat8.z = x_1267;
        let x_1270 : f32 = u_xlat6.y;
        u_xlat8.w = x_1270;
        let x_1273 : f32 = u_xlat10.y;
        u_xlat11.z = x_1273;
        let x_1276 : f32 = u_xlat56.y;
        u_xlat11.w = x_1276;
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec3<f32> = (vec3<f32>(x_1278.z, x_1278.y, x_1278.w) + vec3<f32>(x_1280.z, x_1280.y, x_1280.w));
        let x_1283 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1287 : vec4<f32> = u_xlat7;
        let x_1289 : vec3<f32> = (vec3<f32>(x_1285.x, x_1285.z, x_1285.w) / vec3<f32>(x_1287.z, x_1287.w, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat8;
        let x_1298 : vec3<f32> = (vec3<f32>(x_1292.x, x_1292.y, x_1292.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1299 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat11;
        let x_1303 : vec4<f32> = u_xlat6;
        let x_1305 : vec3<f32> = (vec3<f32>(x_1301.z, x_1301.y, x_1301.w) / vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1310 : vec3<f32> = (vec3<f32>(x_1308.x, x_1308.y, x_1308.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1311 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1316 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1318 : vec3<f32> = (vec3<f32>(x_1313.y, x_1313.x, x_1313.z) * vec3<f32>(x_1316.x, x_1316.x, x_1316.x));
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat9;
        let x_1324 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1326 : vec3<f32> = (vec3<f32>(x_1321.x, x_1321.y, x_1321.z) * vec3<f32>(x_1324.y, x_1324.y, x_1324.y));
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
        let x_1330 : f32 = u_xlat9.x;
        u_xlat8.w = x_1330;
        let x_1332 : vec3<f32> = u_xlat30;
        let x_1335 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.y, x_1338.w, x_1338.x, x_1338.w));
        let x_1341 : vec3<f32> = u_xlat30;
        let x_1344 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat8;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.z, x_1347.w));
        let x_1350 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1353 : f32 = u_xlat8.y;
        u_xlat9.w = x_1353;
        let x_1355 : vec4<f32> = u_xlat9;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.y, x_1355.z);
        let x_1357 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1357.x, x_1356.x, x_1357.z, x_1356.y);
        let x_1359 : vec3<f32> = u_xlat30;
        let x_1362 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1365.y));
        let x_1368 : vec3<f32> = u_xlat30;
        let x_1371 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1374 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y) * vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y)) + vec4<f32>(x_1374.w, x_1374.y, x_1374.w, x_1374.z));
        let x_1377 : vec3<f32> = u_xlat30;
        let x_1380 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1377.x, x_1377.y, x_1377.x, x_1377.y) * vec4<f32>(x_1380.x, x_1380.y, x_1380.x, x_1380.y)) + vec4<f32>(x_1383.x, x_1383.w, x_1383.z, x_1383.w));
        let x_1386 : vec4<f32> = u_xlat6;
        let x_1388 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1386.x, x_1386.x, x_1386.x, x_1386.y) * vec4<f32>(x_1388.z, x_1388.w, x_1388.y, x_1388.z));
        let x_1392 : vec4<f32> = u_xlat6;
        let x_1394 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1392.y, x_1392.y, x_1392.z, x_1392.z) * x_1394);
        let x_1397 : f32 = u_xlat6.z;
        let x_1399 : f32 = u_xlat7.y;
        u_xlat30.x = (x_1397 * x_1399);
        let x_1403 : vec4<f32> = u_xlat10;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1414 : vec3<f32> = txVec4;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat55 = x_1416;
        let x_1418 : vec4<f32> = u_xlat10;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1429 : vec3<f32> = txVec5;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat80 = x_1431;
        let x_1432 : f32 = u_xlat80;
        let x_1434 : f32 = u_xlat13.y;
        u_xlat80 = (x_1432 * x_1434);
        let x_1437 : f32 = u_xlat13.x;
        let x_1438 : f32 = u_xlat55;
        let x_1440 : f32 = u_xlat80;
        u_xlat55 = ((x_1437 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat11;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec6;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat80 = x_1455;
        let x_1457 : f32 = u_xlat13.z;
        let x_1458 : f32 = u_xlat80;
        let x_1460 : f32 = u_xlat55;
        u_xlat55 = ((x_1457 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat9;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec7;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat80 = x_1475;
        let x_1477 : f32 = u_xlat13.w;
        let x_1478 : f32 = u_xlat80;
        let x_1480 : f32 = u_xlat55;
        u_xlat55 = ((x_1477 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat12;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.x, x_1483.y);
        let x_1486 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec8;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat80 = x_1495;
        let x_1497 : f32 = u_xlat14.x;
        let x_1498 : f32 = u_xlat80;
        let x_1500 : f32 = u_xlat55;
        u_xlat55 = ((x_1497 * x_1498) + x_1500);
        let x_1503 : vec4<f32> = u_xlat12;
        let x_1504 : vec2<f32> = vec2<f32>(x_1503.z, x_1503.w);
        let x_1506 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec9;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat80 = x_1515;
        let x_1517 : f32 = u_xlat14.y;
        let x_1518 : f32 = u_xlat80;
        let x_1520 : f32 = u_xlat55;
        u_xlat55 = ((x_1517 * x_1518) + x_1520);
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.z, x_1523.w);
        let x_1526 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec10;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat80 = x_1535;
        let x_1537 : f32 = u_xlat14.z;
        let x_1538 : f32 = u_xlat80;
        let x_1540 : f32 = u_xlat55;
        u_xlat55 = ((x_1537 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat8;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
        let x_1546 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec11;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1553.xy, x_1553.z);
        u_xlat80 = x_1555;
        let x_1557 : f32 = u_xlat14.w;
        let x_1558 : f32 = u_xlat80;
        let x_1560 : f32 = u_xlat55;
        u_xlat55 = ((x_1557 * x_1558) + x_1560);
        let x_1563 : vec4<f32> = u_xlat8;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.z, x_1563.w);
        let x_1566 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec12;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1573.xy, x_1573.z);
        u_xlat80 = x_1575;
        let x_1577 : f32 = u_xlat30.x;
        let x_1578 : f32 = u_xlat80;
        let x_1580 : f32 = u_xlat55;
        u_xlat5.x = ((x_1577 * x_1578) + x_1580);
      } else {
        let x_1584 : vec4<f32> = vs_TEXCOORD8;
        let x_1587 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1590 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(x_1587.z, x_1587.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1591 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1590.x, x_1590.y, x_1591.z);
        let x_1593 : vec3<f32> = u_xlat30;
        let x_1595 : vec2<f32> = floor(vec2<f32>(x_1593.x, x_1593.y));
        let x_1596 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1595.x, x_1595.y, x_1596.z);
        let x_1598 : vec4<f32> = vs_TEXCOORD8;
        let x_1601 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1604 : vec3<f32> = u_xlat30;
        let x_1607 : vec2<f32> = ((vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(x_1601.z, x_1601.w)) + -(vec2<f32>(x_1604.x, x_1604.y)));
        let x_1608 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1610.x, x_1610.x, x_1610.y, x_1610.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1613 : vec4<f32> = u_xlat7;
        let x_1615 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1613.x, x_1613.x, x_1613.z, x_1613.z) * vec4<f32>(x_1615.x, x_1615.x, x_1615.z, x_1615.z));
        let x_1618 : vec4<f32> = u_xlat8;
        let x_1622 : vec2<f32> = (vec2<f32>(x_1618.y, x_1618.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1623 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1623.x, x_1622.x, x_1623.z, x_1622.y);
        let x_1625 : vec4<f32> = u_xlat8;
        let x_1628 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1625.x, x_1625.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1628.x, x_1628.y)));
        let x_1632 : vec4<f32> = u_xlat6;
        let x_1635 : vec2<f32> = (-(vec2<f32>(x_1632.x, x_1632.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1636 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1635.x, x_1636.y, x_1635.y, x_1636.w);
        let x_1638 : vec4<f32> = u_xlat6;
        let x_1640 : vec2<f32> = min(vec2<f32>(x_1638.x, x_1638.y), vec2<f32>(0.0f, 0.0f));
        let x_1641 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
        let x_1643 : vec4<f32> = u_xlat8;
        let x_1646 : vec4<f32> = u_xlat8;
        let x_1649 : vec4<f32> = u_xlat7;
        let x_1651 : vec2<f32> = ((-(vec2<f32>(x_1643.x, x_1643.y)) * vec2<f32>(x_1646.x, x_1646.y)) + vec2<f32>(x_1649.x, x_1649.z));
        let x_1652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1651.x, x_1652.y, x_1651.y, x_1652.w);
        let x_1654 : vec4<f32> = u_xlat6;
        let x_1656 : vec2<f32> = max(vec2<f32>(x_1654.x, x_1654.y), vec2<f32>(0.0f, 0.0f));
        let x_1657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
        let x_1659 : vec4<f32> = u_xlat8;
        let x_1662 : vec4<f32> = u_xlat8;
        let x_1665 : vec4<f32> = u_xlat7;
        let x_1667 : vec2<f32> = ((-(vec2<f32>(x_1659.x, x_1659.y)) * vec2<f32>(x_1662.x, x_1662.y)) + vec2<f32>(x_1665.y, x_1665.w));
        let x_1668 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1668.x, x_1667.x, x_1668.z, x_1667.y);
        let x_1670 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1670 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1674 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1674 * 0.08163200318813323975f);
        let x_1678 : vec2<f32> = u_xlat56;
        let x_1681 : vec2<f32> = (vec2<f32>(x_1678.y, x_1678.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1682 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1681.x, x_1681.y, x_1682.z, x_1682.w);
        let x_1684 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1684.x, x_1684.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1688 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1688 * 0.08163200318813323975f);
        let x_1692 : f32 = u_xlat10.y;
        u_xlat8.x = x_1692;
        let x_1694 : vec4<f32> = u_xlat6;
        let x_1701 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1702 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1702.x, x_1701.x, x_1702.z, x_1701.y);
        let x_1704 : vec4<f32> = u_xlat6;
        let x_1708 : vec2<f32> = ((vec2<f32>(x_1704.x, x_1704.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1709 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1708.x, x_1709.y, x_1708.y, x_1709.w);
        let x_1712 : f32 = u_xlat56.x;
        u_xlat7.y = x_1712;
        let x_1715 : f32 = u_xlat9.y;
        u_xlat7.w = x_1715;
        let x_1717 : vec4<f32> = u_xlat7;
        let x_1718 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1717 + x_1718);
        let x_1720 : vec4<f32> = u_xlat6;
        let x_1723 : vec2<f32> = ((vec2<f32>(x_1720.y, x_1720.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1724 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1724.x, x_1723.x, x_1724.z, x_1723.y);
        let x_1726 : vec4<f32> = u_xlat6;
        let x_1729 : vec2<f32> = ((vec2<f32>(x_1726.y, x_1726.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1730 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1729.x, x_1730.y, x_1729.y, x_1730.w);
        let x_1733 : f32 = u_xlat56.y;
        u_xlat9.y = x_1733;
        let x_1735 : vec4<f32> = u_xlat9;
        let x_1736 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1735 + x_1736);
        let x_1738 : vec4<f32> = u_xlat7;
        let x_1739 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1738 / x_1739);
        let x_1741 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1741 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1747 : vec4<f32> = u_xlat9;
        let x_1748 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1747 / x_1748);
        let x_1750 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1750 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1752 : vec4<f32> = u_xlat7;
        let x_1755 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1752.w, x_1752.x, x_1752.y, x_1752.z) * vec4<f32>(x_1755.x, x_1755.x, x_1755.x, x_1755.x));
        let x_1758 : vec4<f32> = u_xlat9;
        let x_1761 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1758.x, x_1758.w, x_1758.y, x_1758.z) * vec4<f32>(x_1761.y, x_1761.y, x_1761.y, x_1761.y));
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1765 : vec3<f32> = vec3<f32>(x_1764.y, x_1764.z, x_1764.w);
        let x_1766 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1765.x, x_1766.y, x_1765.y, x_1765.z);
        let x_1769 : f32 = u_xlat9.x;
        u_xlat10.y = x_1769;
        let x_1771 : vec3<f32> = u_xlat30;
        let x_1774 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1771.x, x_1771.y, x_1771.x, x_1771.y) * vec4<f32>(x_1774.x, x_1774.y, x_1774.x, x_1774.y)) + vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1777.y));
        let x_1780 : vec3<f32> = u_xlat30;
        let x_1783 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1786 : vec4<f32> = u_xlat10;
        let x_1788 : vec2<f32> = ((vec2<f32>(x_1780.x, x_1780.y) * vec2<f32>(x_1783.x, x_1783.y)) + vec2<f32>(x_1786.w, x_1786.y));
        let x_1789 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
        let x_1792 : f32 = u_xlat10.y;
        u_xlat7.y = x_1792;
        let x_1795 : f32 = u_xlat9.z;
        u_xlat10.y = x_1795;
        let x_1797 : vec3<f32> = u_xlat30;
        let x_1800 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1803 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y) * vec4<f32>(x_1800.x, x_1800.y, x_1800.x, x_1800.y)) + vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1803.y));
        let x_1807 : vec3<f32> = u_xlat30;
        let x_1810 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1813 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1807.x, x_1807.y) * vec2<f32>(x_1810.x, x_1810.y)) + vec2<f32>(x_1813.w, x_1813.y));
        let x_1817 : f32 = u_xlat10.y;
        u_xlat7.z = x_1817;
        let x_1819 : vec3<f32> = u_xlat30;
        let x_1822 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1825 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1819.x, x_1819.y, x_1819.x, x_1819.y) * vec4<f32>(x_1822.x, x_1822.y, x_1822.x, x_1822.y)) + vec4<f32>(x_1825.x, x_1825.y, x_1825.x, x_1825.z));
        let x_1829 : f32 = u_xlat9.w;
        u_xlat10.y = x_1829;
        let x_1832 : vec3<f32> = u_xlat30;
        let x_1835 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1838 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1832.x, x_1832.y, x_1832.x, x_1832.y) * vec4<f32>(x_1835.x, x_1835.y, x_1835.x, x_1835.y)) + vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1838.y));
        let x_1842 : vec3<f32> = u_xlat30;
        let x_1845 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1848 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1842.x, x_1842.y) * vec2<f32>(x_1845.x, x_1845.y)) + vec2<f32>(x_1848.w, x_1848.y));
        let x_1852 : f32 = u_xlat10.y;
        u_xlat7.w = x_1852;
        let x_1855 : vec3<f32> = u_xlat30;
        let x_1858 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1861 : vec4<f32> = u_xlat7;
        let x_1863 : vec2<f32> = ((vec2<f32>(x_1855.x, x_1855.y) * vec2<f32>(x_1858.x, x_1858.y)) + vec2<f32>(x_1861.x, x_1861.w));
        let x_1864 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1863.x, x_1863.y, x_1864.z, x_1864.w);
        let x_1866 : vec4<f32> = u_xlat10;
        let x_1867 : vec3<f32> = vec3<f32>(x_1866.x, x_1866.z, x_1866.w);
        let x_1868 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1867.x, x_1868.y, x_1867.y, x_1867.z);
        let x_1870 : vec3<f32> = u_xlat30;
        let x_1873 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1876 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1870.x, x_1870.y, x_1870.x, x_1870.y) * vec4<f32>(x_1873.x, x_1873.y, x_1873.x, x_1873.y)) + vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1876.y));
        let x_1880 : vec3<f32> = u_xlat30;
        let x_1883 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1886 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1880.x, x_1880.y) * vec2<f32>(x_1883.x, x_1883.y)) + vec2<f32>(x_1886.w, x_1886.y));
        let x_1890 : f32 = u_xlat7.x;
        u_xlat9.x = x_1890;
        let x_1892 : vec3<f32> = u_xlat30;
        let x_1895 : vec4<f32> = x_1026.x_MainLightShadowmapSize;
        let x_1898 : vec4<f32> = u_xlat9;
        let x_1900 : vec2<f32> = ((vec2<f32>(x_1892.x, x_1892.y) * vec2<f32>(x_1895.x, x_1895.y)) + vec2<f32>(x_1898.x, x_1898.y));
        let x_1901 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1900.x, x_1900.y, x_1901.z);
        let x_1904 : vec4<f32> = u_xlat6;
        let x_1906 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1904.x, x_1904.x, x_1904.x, x_1904.x) * x_1906);
        let x_1909 : vec4<f32> = u_xlat6;
        let x_1911 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1909.y, x_1909.y, x_1909.y, x_1909.y) * x_1911);
        let x_1914 : vec4<f32> = u_xlat6;
        let x_1916 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1914.z, x_1914.z, x_1914.z, x_1914.z) * x_1916);
        let x_1918 : vec4<f32> = u_xlat6;
        let x_1920 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1918.w, x_1918.w, x_1918.w, x_1918.w) * x_1920);
        let x_1923 : vec4<f32> = u_xlat11;
        let x_1924 : vec2<f32> = vec2<f32>(x_1923.x, x_1923.y);
        let x_1926 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1924.x, x_1924.y, x_1926);
        let x_1933 : vec3<f32> = txVec13;
        let x_1935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1933.xy, x_1933.z);
        u_xlat80 = x_1935;
        let x_1937 : vec4<f32> = u_xlat11;
        let x_1938 : vec2<f32> = vec2<f32>(x_1937.z, x_1937.w);
        let x_1940 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec14;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
        u_xlat7.x = x_1949;
        let x_1952 : f32 = u_xlat7.x;
        let x_1954 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1952 * x_1954);
        let x_1958 : f32 = u_xlat17.x;
        let x_1959 : f32 = u_xlat80;
        let x_1962 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1958 * x_1959) + x_1962);
        let x_1965 : vec4<f32> = u_xlat12;
        let x_1966 : vec2<f32> = vec2<f32>(x_1965.x, x_1965.y);
        let x_1968 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1966.x, x_1966.y, x_1968);
        let x_1975 : vec3<f32> = txVec15;
        let x_1977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1975.xy, x_1975.z);
        u_xlat7.x = x_1977;
        let x_1980 : f32 = u_xlat17.z;
        let x_1982 : f32 = u_xlat7.x;
        let x_1984 : f32 = u_xlat80;
        u_xlat80 = ((x_1980 * x_1982) + x_1984);
        let x_1987 : vec4<f32> = u_xlat14;
        let x_1988 : vec2<f32> = vec2<f32>(x_1987.x, x_1987.y);
        let x_1990 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1988.x, x_1988.y, x_1990);
        let x_1997 : vec3<f32> = txVec16;
        let x_1999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1997.xy, x_1997.z);
        u_xlat7.x = x_1999;
        let x_2002 : f32 = u_xlat17.w;
        let x_2004 : f32 = u_xlat7.x;
        let x_2006 : f32 = u_xlat80;
        u_xlat80 = ((x_2002 * x_2004) + x_2006);
        let x_2009 : vec4<f32> = u_xlat13;
        let x_2010 : vec2<f32> = vec2<f32>(x_2009.x, x_2009.y);
        let x_2012 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2010.x, x_2010.y, x_2012);
        let x_2019 : vec3<f32> = txVec17;
        let x_2021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2019.xy, x_2019.z);
        u_xlat7.x = x_2021;
        let x_2024 : f32 = u_xlat18.x;
        let x_2026 : f32 = u_xlat7.x;
        let x_2028 : f32 = u_xlat80;
        u_xlat80 = ((x_2024 * x_2026) + x_2028);
        let x_2031 : vec4<f32> = u_xlat13;
        let x_2032 : vec2<f32> = vec2<f32>(x_2031.z, x_2031.w);
        let x_2034 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec18;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2041.xy, x_2041.z);
        u_xlat7.x = x_2043;
        let x_2046 : f32 = u_xlat18.y;
        let x_2048 : f32 = u_xlat7.x;
        let x_2050 : f32 = u_xlat80;
        u_xlat80 = ((x_2046 * x_2048) + x_2050);
        let x_2053 : vec2<f32> = u_xlat62;
        let x_2055 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
        let x_2062 : vec3<f32> = txVec19;
        let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2062.xy, x_2062.z);
        u_xlat7.x = x_2064;
        let x_2067 : f32 = u_xlat18.z;
        let x_2069 : f32 = u_xlat7.x;
        let x_2071 : f32 = u_xlat80;
        u_xlat80 = ((x_2067 * x_2069) + x_2071);
        let x_2074 : vec4<f32> = u_xlat14;
        let x_2075 : vec2<f32> = vec2<f32>(x_2074.z, x_2074.w);
        let x_2077 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
        let x_2084 : vec3<f32> = txVec20;
        let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2084.xy, x_2084.z);
        u_xlat7.x = x_2086;
        let x_2089 : f32 = u_xlat18.w;
        let x_2091 : f32 = u_xlat7.x;
        let x_2093 : f32 = u_xlat80;
        u_xlat80 = ((x_2089 * x_2091) + x_2093);
        let x_2096 : vec4<f32> = u_xlat15;
        let x_2097 : vec2<f32> = vec2<f32>(x_2096.x, x_2096.y);
        let x_2099 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
        let x_2106 : vec3<f32> = txVec21;
        let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2106.xy, x_2106.z);
        u_xlat7.x = x_2108;
        let x_2111 : f32 = u_xlat19.x;
        let x_2113 : f32 = u_xlat7.x;
        let x_2115 : f32 = u_xlat80;
        u_xlat80 = ((x_2111 * x_2113) + x_2115);
        let x_2118 : vec4<f32> = u_xlat15;
        let x_2119 : vec2<f32> = vec2<f32>(x_2118.z, x_2118.w);
        let x_2121 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
        let x_2128 : vec3<f32> = txVec22;
        let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2128.xy, x_2128.z);
        u_xlat7.x = x_2130;
        let x_2133 : f32 = u_xlat19.y;
        let x_2135 : f32 = u_xlat7.x;
        let x_2137 : f32 = u_xlat80;
        u_xlat80 = ((x_2133 * x_2135) + x_2137);
        let x_2140 : vec2<f32> = u_xlat32;
        let x_2142 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2140.x, x_2140.y, x_2142);
        let x_2149 : vec3<f32> = txVec23;
        let x_2151 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2149.xy, x_2149.z);
        u_xlat7.x = x_2151;
        let x_2154 : f32 = u_xlat19.z;
        let x_2156 : f32 = u_xlat7.x;
        let x_2158 : f32 = u_xlat80;
        u_xlat80 = ((x_2154 * x_2156) + x_2158);
        let x_2161 : vec4<f32> = u_xlat16;
        let x_2162 : vec2<f32> = vec2<f32>(x_2161.x, x_2161.y);
        let x_2164 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2162.x, x_2162.y, x_2164);
        let x_2171 : vec3<f32> = txVec24;
        let x_2173 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2171.xy, x_2171.z);
        u_xlat7.x = x_2173;
        let x_2176 : f32 = u_xlat19.w;
        let x_2178 : f32 = u_xlat7.x;
        let x_2180 : f32 = u_xlat80;
        u_xlat80 = ((x_2176 * x_2178) + x_2180);
        let x_2183 : vec4<f32> = u_xlat10;
        let x_2184 : vec2<f32> = vec2<f32>(x_2183.x, x_2183.y);
        let x_2186 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2184.x, x_2184.y, x_2186);
        let x_2193 : vec3<f32> = txVec25;
        let x_2195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2193.xy, x_2193.z);
        u_xlat7.x = x_2195;
        let x_2198 : f32 = u_xlat6.x;
        let x_2200 : f32 = u_xlat7.x;
        let x_2202 : f32 = u_xlat80;
        u_xlat80 = ((x_2198 * x_2200) + x_2202);
        let x_2205 : vec4<f32> = u_xlat10;
        let x_2206 : vec2<f32> = vec2<f32>(x_2205.z, x_2205.w);
        let x_2208 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
        let x_2215 : vec3<f32> = txVec26;
        let x_2217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2215.xy, x_2215.z);
        u_xlat6.x = x_2217;
        let x_2220 : f32 = u_xlat6.y;
        let x_2222 : f32 = u_xlat6.x;
        let x_2224 : f32 = u_xlat80;
        u_xlat80 = ((x_2220 * x_2222) + x_2224);
        let x_2227 : vec2<f32> = u_xlat59;
        let x_2229 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2227.x, x_2227.y, x_2229);
        let x_2236 : vec3<f32> = txVec27;
        let x_2238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2236.xy, x_2236.z);
        u_xlat6.x = x_2238;
        let x_2241 : f32 = u_xlat6.z;
        let x_2243 : f32 = u_xlat6.x;
        let x_2245 : f32 = u_xlat80;
        u_xlat80 = ((x_2241 * x_2243) + x_2245);
        let x_2248 : vec3<f32> = u_xlat30;
        let x_2249 : vec2<f32> = vec2<f32>(x_2248.x, x_2248.y);
        let x_2251 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2249.x, x_2249.y, x_2251);
        let x_2258 : vec3<f32> = txVec28;
        let x_2260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2258.xy, x_2258.z);
        u_xlat30.x = x_2260;
        let x_2263 : f32 = u_xlat6.w;
        let x_2265 : f32 = u_xlat30.x;
        let x_2267 : f32 = u_xlat80;
        u_xlat5.x = ((x_2263 * x_2265) + x_2267);
      }
    }
  } else {
    let x_2272 : vec4<f32> = vs_TEXCOORD8;
    let x_2273 : vec2<f32> = vec2<f32>(x_2272.x, x_2272.y);
    let x_2275 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2273.x, x_2273.y, x_2275);
    let x_2282 : vec3<f32> = txVec29;
    let x_2284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2282.xy, x_2282.z);
    u_xlat5.x = x_2284;
  }
  let x_2287 : f32 = x_1026.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_2287) + 1.0f);
  let x_2292 : f32 = u_xlat5.x;
  let x_2294 : f32 = x_1026.x_MainLightShadowParams.x;
  let x_2297 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_2292 * x_2294) + x_2297);
  let x_2301 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_2301);
  let x_2305 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_2305 >= 1.0f);
  let x_2307 : bool = u_xlatb55;
  let x_2308 : bool = u_xlatb30;
  u_xlatb30 = (x_2307 | x_2308);
  let x_2310 : bool = u_xlatb30;
  if (x_2310) {
    x_2312 = 1.0f;
  } else {
    let x_2317 : f32 = u_xlat5.x;
    x_2312 = x_2317;
  }
  let x_2318 : f32 = x_2312;
  u_xlat5.x = x_2318;
  let x_2320 : vec3<f32> = vs_TEXCOORD7;
  let x_2323 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2320 + -(x_2323));
  let x_2326 : vec3<f32> = u_xlat30;
  let x_2327 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2326, x_2327);
  let x_2331 : f32 = u_xlat30.x;
  let x_2333 : f32 = x_1026.x_MainLightShadowParams.z;
  let x_2336 : f32 = x_1026.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2331 * x_2333) + x_2336);
  let x_2338 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2338, 0.0f, 1.0f);
  let x_2341 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_2341) + 1.0f);
  let x_2344 : f32 = u_xlat55;
  let x_2345 : f32 = u_xlat80;
  let x_2348 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2344 * x_2345) + x_2348);
  let x_2352 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2352;
  let x_2355 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2355;
  let x_2358 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2358;
  let x_2360 : vec4<f32> = u_xlat6;
  let x_2363 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(vec3<f32>(x_2360.x, x_2360.y, x_2360.z)), vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
  let x_2366 : f32 = u_xlat55;
  let x_2367 : f32 = u_xlat55;
  u_xlat55 = (x_2366 + x_2367);
  let x_2369 : vec4<f32> = u_xlat1;
  let x_2371 : f32 = u_xlat55;
  let x_2375 : vec4<f32> = u_xlat6;
  let x_2378 : vec3<f32> = ((vec3<f32>(x_2369.x, x_2369.y, x_2369.z) * -(vec3<f32>(x_2371, x_2371, x_2371))) + -(vec3<f32>(x_2375.x, x_2375.y, x_2375.z)));
  let x_2379 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
  let x_2381 : vec4<f32> = u_xlat1;
  let x_2383 : vec4<f32> = u_xlat6;
  u_xlat55 = dot(vec3<f32>(x_2381.x, x_2381.y, x_2381.z), vec3<f32>(x_2383.x, x_2383.y, x_2383.z));
  let x_2386 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2386, 0.0f, 1.0f);
  let x_2388 : f32 = u_xlat55;
  u_xlat55 = (-(x_2388) + 1.0f);
  let x_2391 : f32 = u_xlat55;
  let x_2392 : f32 = u_xlat55;
  u_xlat55 = (x_2391 * x_2392);
  let x_2394 : f32 = u_xlat55;
  let x_2395 : f32 = u_xlat55;
  u_xlat55 = (x_2394 * x_2395);
  let x_2398 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2398) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2405 : f32 = u_xlat0.x;
  let x_2406 : f32 = u_xlat80;
  u_xlat0.x = (x_2405 * x_2406);
  let x_2410 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2410 * 6.0f);
  let x_2422 : vec4<f32> = u_xlat7;
  let x_2425 : f32 = u_xlat0.x;
  let x_2426 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2422.x, x_2422.y, x_2422.z), x_2425);
  u_xlat7 = x_2426;
  let x_2428 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2428 + -1.0f);
  let x_2432 : f32 = x_888.unity_SpecCube0_HDR.w;
  let x_2434 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2432 * x_2434) + 1.0f);
  let x_2439 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2439, 0.0f);
  let x_2443 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2443);
  let x_2447 : f32 = u_xlat0.x;
  let x_2449 : f32 = x_888.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2447 * x_2449);
  let x_2453 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2453);
  let x_2457 : f32 = u_xlat0.x;
  let x_2459 : f32 = x_888.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2457 * x_2459);
  let x_2462 : vec4<f32> = u_xlat7;
  let x_2464 : vec3<f32> = u_xlat0;
  let x_2466 : vec3<f32> = (vec3<f32>(x_2462.x, x_2462.y, x_2462.z) * vec3<f32>(x_2464.x, x_2464.x, x_2464.x));
  let x_2467 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
  let x_2469 : f32 = u_xlat50;
  let x_2471 : f32 = u_xlat50;
  let x_2475 : vec2<f32> = ((vec2<f32>(x_2469, x_2469) * vec2<f32>(x_2471, x_2471)) + vec2<f32>(-1.0f, 1.0f));
  let x_2476 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2475.x, x_2476.y, x_2475.y);
  let x_2479 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2479);
  let x_2481 : vec4<f32> = u_xlat4;
  let x_2484 : vec4<f32> = u_xlat3;
  let x_2486 : vec3<f32> = (-(vec3<f32>(x_2481.x, x_2481.y, x_2481.z)) + vec3<f32>(x_2484.x, x_2484.x, x_2484.x));
  let x_2487 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
  let x_2489 : f32 = u_xlat55;
  let x_2491 : vec4<f32> = u_xlat8;
  let x_2494 : vec4<f32> = u_xlat4;
  let x_2496 : vec3<f32> = ((vec3<f32>(x_2489, x_2489, x_2489) * vec3<f32>(x_2491.x, x_2491.y, x_2491.z)) + vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
  let x_2497 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
  let x_2499 : f32 = u_xlat50;
  let x_2501 : vec4<f32> = u_xlat8;
  let x_2503 : vec3<f32> = (vec3<f32>(x_2499, x_2499, x_2499) * vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
  let x_2504 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
  let x_2506 : vec4<f32> = u_xlat7;
  let x_2508 : vec4<f32> = u_xlat8;
  let x_2510 : vec3<f32> = (vec3<f32>(x_2506.x, x_2506.y, x_2506.z) * vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
  let x_2511 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
  let x_2513 : vec3<f32> = u_xlat27;
  let x_2514 : vec3<f32> = u_xlat28;
  let x_2516 : vec4<f32> = u_xlat7;
  u_xlat27 = ((x_2513 * x_2514) + vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
  let x_2520 : f32 = u_xlat5.x;
  let x_2522 : f32 = x_888.unity_LightData.z;
  u_xlat50 = (x_2520 * x_2522);
  let x_2524 : vec4<f32> = u_xlat1;
  let x_2527 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2524.x, x_2524.y, x_2524.z), vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
  let x_2532 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2532, 0.0f, 1.0f);
  let x_2535 : f32 = u_xlat50;
  let x_2537 : f32 = u_xlat3.x;
  u_xlat50 = (x_2535 * x_2537);
  let x_2539 : f32 = u_xlat50;
  let x_2542 : vec4<f32> = x_111.x_MainLightColor;
  let x_2544 : vec3<f32> = (vec3<f32>(x_2539, x_2539, x_2539) * vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
  let x_2545 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2544.x, x_2545.y, x_2544.y, x_2544.z);
  let x_2547 : vec4<f32> = u_xlat6;
  let x_2550 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2552 : vec3<f32> = (vec3<f32>(x_2547.x, x_2547.y, x_2547.z) + vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
  let x_2553 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
  let x_2555 : vec4<f32> = u_xlat7;
  let x_2557 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2555.x, x_2555.y, x_2555.z), vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
  let x_2560 : f32 = u_xlat50;
  u_xlat50 = max(x_2560, 1.17549435e-38f);
  let x_2563 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2563);
  let x_2565 : f32 = u_xlat50;
  let x_2567 : vec4<f32> = u_xlat7;
  let x_2569 : vec3<f32> = (vec3<f32>(x_2565, x_2565, x_2565) * vec3<f32>(x_2567.x, x_2567.y, x_2567.z));
  let x_2570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2570.w);
  let x_2572 : vec4<f32> = u_xlat1;
  let x_2574 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2572.x, x_2572.y, x_2572.z), vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2577 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2577, 0.0f, 1.0f);
  let x_2580 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2582 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2580.x, x_2580.y, x_2580.z), vec3<f32>(x_2582.x, x_2582.y, x_2582.z));
  let x_2587 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2587, 0.0f, 1.0f);
  let x_2590 : f32 = u_xlat50;
  let x_2591 : f32 = u_xlat50;
  u_xlat50 = (x_2590 * x_2591);
  let x_2593 : f32 = u_xlat50;
  let x_2595 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2593 * x_2595) + 1.00001001358032226562f);
  let x_2600 : f32 = u_xlat3.x;
  let x_2602 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2600 * x_2602);
  let x_2605 : f32 = u_xlat50;
  let x_2606 : f32 = u_xlat50;
  u_xlat50 = (x_2605 * x_2606);
  let x_2609 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2609, 0.10000000149011611938f);
  let x_2613 : f32 = u_xlat50;
  let x_2615 : f32 = u_xlat3.x;
  u_xlat50 = (x_2613 * x_2615);
  let x_2617 : f32 = u_xlat79;
  let x_2618 : f32 = u_xlat50;
  u_xlat50 = (x_2617 * x_2618);
  let x_2620 : f32 = u_xlat76;
  let x_2621 : f32 = u_xlat50;
  u_xlat50 = (x_2620 / x_2621);
  let x_2623 : vec4<f32> = u_xlat4;
  let x_2625 : f32 = u_xlat50;
  let x_2628 : vec3<f32> = u_xlat28;
  let x_2629 : vec3<f32> = ((vec3<f32>(x_2623.x, x_2623.y, x_2623.z) * vec3<f32>(x_2625, x_2625, x_2625)) + x_2628);
  let x_2630 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
  let x_2632 : vec4<f32> = u_xlat5;
  let x_2634 : vec4<f32> = u_xlat7;
  let x_2636 : vec3<f32> = (vec3<f32>(x_2632.x, x_2632.z, x_2632.w) * vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
  let x_2637 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2636.x, x_2637.y, x_2636.y, x_2636.z);
  let x_2640 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2642 : f32 = x_888.unity_LightData.y;
  u_xlat50 = min(x_2640, x_2642);
  let x_2646 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2646));
  let x_2650 : f32 = u_xlat30.x;
  let x_2652 : f32 = x_1026.x_AdditionalShadowFadeParams.x;
  let x_2655 : f32 = x_1026.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2650 * x_2652) + x_2655);
  let x_2659 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2659, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2672 : u32 = u_xlatu_loop_1;
    let x_2673 : u32 = u_xlatu50;
    if ((x_2672 < x_2673)) {
    } else {
      break;
    }
    let x_2676 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2676 >> 2u);
    let x_2680 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2680 & 3u));
    let x_2684 : u32 = u_xlatu81;
    let x_2687 : vec4<f32> = x_888.unity_LightIndices[bitcast<i32>(x_2684)];
    let x_2697 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2702 : vec4<u32> = indexable[x_2697];
    u_xlat81 = dot(x_2687, bitcast<vec4<f32>>(x_2702));
    let x_2706 : f32 = u_xlat81;
    u_xlati81 = i32(x_2706);
    let x_2708 : vec3<f32> = vs_TEXCOORD7;
    let x_2719 : i32 = u_xlati81;
    let x_2721 : vec4<f32> = x_2718.x_AdditionalLightsPosition[x_2719];
    let x_2724 : i32 = u_xlati81;
    let x_2726 : vec4<f32> = x_2718.x_AdditionalLightsPosition[x_2724];
    let x_2728 : vec3<f32> = ((-(x_2708) * vec3<f32>(x_2721.w, x_2721.w, x_2721.w)) + vec3<f32>(x_2726.x, x_2726.y, x_2726.z));
    let x_2729 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2728.x, x_2728.y, x_2728.z, x_2729.w);
    let x_2732 : vec4<f32> = u_xlat8;
    let x_2734 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2732.x, x_2732.y, x_2732.z), vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2737 : f32 = u_xlat82;
    u_xlat82 = max(x_2737, 0.00006103515625f);
    let x_2740 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2740);
    let x_2742 : f32 = u_xlat83;
    let x_2744 : vec4<f32> = u_xlat8;
    let x_2746 : vec3<f32> = (vec3<f32>(x_2742, x_2742, x_2742) * vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
    let x_2750 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2750);
    let x_2752 : f32 = u_xlat82;
    let x_2753 : i32 = u_xlati81;
    let x_2755 : f32 = x_2718.x_AdditionalLightsAttenuation[x_2753].x;
    u_xlat82 = (x_2752 * x_2755);
    let x_2757 : f32 = u_xlat82;
    let x_2759 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2757) * x_2759) + 1.0f);
    let x_2762 : f32 = u_xlat82;
    u_xlat82 = max(x_2762, 0.0f);
    let x_2764 : f32 = u_xlat82;
    let x_2765 : f32 = u_xlat82;
    u_xlat82 = (x_2764 * x_2765);
    let x_2767 : f32 = u_xlat82;
    let x_2768 : f32 = u_xlat84;
    u_xlat82 = (x_2767 * x_2768);
    let x_2770 : i32 = u_xlati81;
    let x_2772 : vec4<f32> = x_2718.x_AdditionalLightsSpotDir[x_2770];
    let x_2774 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2772.x, x_2772.y, x_2772.z), vec3<f32>(x_2774.x, x_2774.y, x_2774.z));
    let x_2777 : f32 = u_xlat84;
    let x_2778 : i32 = u_xlati81;
    let x_2780 : f32 = x_2718.x_AdditionalLightsAttenuation[x_2778].z;
    let x_2782 : i32 = u_xlati81;
    let x_2784 : f32 = x_2718.x_AdditionalLightsAttenuation[x_2782].w;
    u_xlat84 = ((x_2777 * x_2780) + x_2784);
    let x_2786 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2786, 0.0f, 1.0f);
    let x_2788 : f32 = u_xlat84;
    let x_2789 : f32 = u_xlat84;
    u_xlat84 = (x_2788 * x_2789);
    let x_2791 : f32 = u_xlat82;
    let x_2792 : f32 = u_xlat84;
    u_xlat82 = (x_2791 * x_2792);
    let x_2795 : i32 = u_xlati81;
    let x_2797 : f32 = x_1026.x_AdditionalShadowParams[x_2795].w;
    u_xlati84 = i32(x_2797);
    let x_2802 : i32 = u_xlati84;
    u_xlatb10.x = (x_2802 >= 0i);
    let x_2806 : bool = u_xlatb10.x;
    if (x_2806) {
      let x_2810 : i32 = u_xlati81;
      let x_2812 : f32 = x_1026.x_AdditionalShadowParams[x_2810].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2812, x_2812, x_2812, x_2812))));
      let x_2818 : bool = u_xlatb10.x;
      if (x_2818) {
        let x_2821 : vec4<f32> = u_xlat9;
        let x_2824 : vec4<f32> = u_xlat9;
        let x_2827 : vec4<bool> = (abs(vec4<f32>(x_2821.z, x_2821.z, x_2821.y, x_2821.z)) >= abs(vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.x)));
        u_xlatb10 = vec3<bool>(x_2827.x, x_2827.y, x_2827.z);
        let x_2830 : bool = u_xlatb10.y;
        let x_2832 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2830 & x_2832);
        let x_2836 : vec4<f32> = u_xlat9;
        let x_2839 : vec4<bool> = (-(vec4<f32>(x_2836.z, x_2836.y, x_2836.x, x_2836.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2839.x, x_2839.y, x_2839.z);
        let x_2843 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2843);
        let x_2848 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2848);
        let x_2853 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2853);
        let x_2858 : bool = u_xlatb10.z;
        if (x_2858) {
          let x_2863 : f32 = u_xlat35.z;
          x_2859 = x_2863;
        } else {
          let x_2866 : f32 = u_xlat11.x;
          x_2859 = x_2866;
        }
        let x_2867 : f32 = x_2859;
        u_xlat60 = x_2867;
        let x_2869 : bool = u_xlatb10.x;
        if (x_2869) {
          let x_2874 : f32 = u_xlat35.x;
          x_2870 = x_2874;
        } else {
          let x_2876 : f32 = u_xlat60;
          x_2870 = x_2876;
        }
        let x_2877 : f32 = x_2870;
        u_xlat10.x = x_2877;
        let x_2879 : i32 = u_xlati81;
        let x_2881 : f32 = x_1026.x_AdditionalShadowParams[x_2879].w;
        u_xlat35.x = trunc(x_2881);
        let x_2885 : f32 = u_xlat10.x;
        let x_2887 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2885 + x_2887);
        let x_2891 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2891);
      }
      let x_2893 : i32 = u_xlati84;
      u_xlati84 = (x_2893 << bitcast<u32>(2i));
      let x_2895 : vec3<f32> = vs_TEXCOORD7;
      let x_2897 : i32 = u_xlati84;
      let x_2900 : i32 = u_xlati84;
      let x_2904 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[((x_2897 + 1i) / 4i)][((x_2900 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2895.y, x_2895.y, x_2895.y, x_2895.y) * x_2904);
      let x_2906 : i32 = u_xlati84;
      let x_2908 : i32 = u_xlati84;
      let x_2911 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[(x_2906 / 4i)][(x_2908 % 4i)];
      let x_2912 : vec3<f32> = vs_TEXCOORD7;
      let x_2915 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2911 * vec4<f32>(x_2912.x, x_2912.x, x_2912.x, x_2912.x)) + x_2915);
      let x_2917 : i32 = u_xlati84;
      let x_2920 : i32 = u_xlati84;
      let x_2924 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[((x_2917 + 2i) / 4i)][((x_2920 + 2i) % 4i)];
      let x_2925 : vec3<f32> = vs_TEXCOORD7;
      let x_2928 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2924 * vec4<f32>(x_2925.z, x_2925.z, x_2925.z, x_2925.z)) + x_2928);
      let x_2930 : vec4<f32> = u_xlat10;
      let x_2931 : i32 = u_xlati84;
      let x_2934 : i32 = u_xlati84;
      let x_2938 : vec4<f32> = x_1026.x_AdditionalLightsWorldToShadow[((x_2931 + 3i) / 4i)][((x_2934 + 3i) % 4i)];
      u_xlat10 = (x_2930 + x_2938);
      let x_2940 : vec4<f32> = u_xlat10;
      let x_2942 : vec4<f32> = u_xlat10;
      let x_2944 : vec3<f32> = (vec3<f32>(x_2940.x, x_2940.y, x_2940.z) / vec3<f32>(x_2942.w, x_2942.w, x_2942.w));
      let x_2945 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2944.x, x_2944.y, x_2944.z, x_2945.w);
      let x_2948 : i32 = u_xlati81;
      let x_2950 : f32 = x_1026.x_AdditionalShadowParams[x_2948].y;
      u_xlatb84 = (0.0f < x_2950);
      let x_2952 : bool = u_xlatb84;
      if (x_2952) {
        let x_2955 : i32 = u_xlati81;
        let x_2957 : f32 = x_1026.x_AdditionalShadowParams[x_2955].y;
        u_xlatb84 = (1.0f == x_2957);
        let x_2959 : bool = u_xlatb84;
        if (x_2959) {
          let x_2962 : vec4<f32> = u_xlat10;
          let x_2965 : vec4<f32> = x_1026.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y) + x_2965);
          let x_2968 : vec4<f32> = u_xlat11;
          let x_2969 : vec2<f32> = vec2<f32>(x_2968.x, x_2968.y);
          let x_2971 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
          let x_2979 : vec3<f32> = txVec30;
          let x_2981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2979.xy, x_2979.z);
          u_xlat12.x = x_2981;
          let x_2984 : vec4<f32> = u_xlat11;
          let x_2985 : vec2<f32> = vec2<f32>(x_2984.z, x_2984.w);
          let x_2987 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
          let x_2994 : vec3<f32> = txVec31;
          let x_2996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
          u_xlat12.y = x_2996;
          let x_2998 : vec4<f32> = u_xlat10;
          let x_3001 : vec4<f32> = x_1026.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2998.x, x_2998.y, x_2998.x, x_2998.y) + x_3001);
          let x_3004 : vec4<f32> = u_xlat11;
          let x_3005 : vec2<f32> = vec2<f32>(x_3004.x, x_3004.y);
          let x_3007 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
          let x_3014 : vec3<f32> = txVec32;
          let x_3016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
          u_xlat12.z = x_3016;
          let x_3019 : vec4<f32> = u_xlat11;
          let x_3020 : vec2<f32> = vec2<f32>(x_3019.z, x_3019.w);
          let x_3022 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3020.x, x_3020.y, x_3022);
          let x_3029 : vec3<f32> = txVec33;
          let x_3031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3029.xy, x_3029.z);
          u_xlat12.w = x_3031;
          let x_3033 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3033, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3037 : i32 = u_xlati81;
          let x_3039 : f32 = x_1026.x_AdditionalShadowParams[x_3037].y;
          u_xlatb85 = (2.0f == x_3039);
          let x_3041 : bool = u_xlatb85;
          if (x_3041) {
            let x_3044 : vec4<f32> = u_xlat10;
            let x_3047 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3050 : vec2<f32> = ((vec2<f32>(x_3044.x, x_3044.y) * vec2<f32>(x_3047.z, x_3047.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3051 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3050.x, x_3050.y, x_3051.z, x_3051.w);
            let x_3053 : vec4<f32> = u_xlat11;
            let x_3055 : vec2<f32> = floor(vec2<f32>(x_3053.x, x_3053.y));
            let x_3056 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3059 : vec4<f32> = u_xlat10;
            let x_3062 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3065 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3059.x, x_3059.y) * vec2<f32>(x_3062.z, x_3062.w)) + -(vec2<f32>(x_3065.x, x_3065.y)));
            let x_3069 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3069.x, x_3069.x, x_3069.y, x_3069.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3072 : vec4<f32> = u_xlat12;
            let x_3074 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3072.x, x_3072.x, x_3072.z, x_3072.z) * vec4<f32>(x_3074.x, x_3074.x, x_3074.z, x_3074.z));
            let x_3077 : vec4<f32> = u_xlat13;
            let x_3079 : vec2<f32> = (vec2<f32>(x_3077.y, x_3077.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3080 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3079.x, x_3080.y, x_3079.y, x_3080.w);
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3085 : vec2<f32> = u_xlat61;
            let x_3087 : vec2<f32> = ((vec2<f32>(x_3082.x, x_3082.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3085));
            let x_3088 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3087.x, x_3087.y, x_3088.z, x_3088.w);
            let x_3091 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3091) + vec2<f32>(1.0f, 1.0f));
            let x_3094 : vec2<f32> = u_xlat61;
            let x_3095 : vec2<f32> = min(x_3094, vec2<f32>(0.0f, 0.0f));
            let x_3096 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3095.x, x_3095.y, x_3096.z, x_3096.w);
            let x_3098 : vec4<f32> = u_xlat14;
            let x_3101 : vec4<f32> = u_xlat14;
            let x_3104 : vec2<f32> = u_xlat63;
            let x_3105 : vec2<f32> = ((-(vec2<f32>(x_3098.x, x_3098.y)) * vec2<f32>(x_3101.x, x_3101.y)) + x_3104);
            let x_3106 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3105.x, x_3105.y, x_3106.z, x_3106.w);
            let x_3108 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3108, vec2<f32>(0.0f, 0.0f));
            let x_3110 : vec2<f32> = u_xlat61;
            let x_3112 : vec2<f32> = u_xlat61;
            let x_3114 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3110) * x_3112) + vec2<f32>(x_3114.y, x_3114.w));
            let x_3117 : vec4<f32> = u_xlat14;
            let x_3119 : vec2<f32> = (vec2<f32>(x_3117.x, x_3117.y) + vec2<f32>(1.0f, 1.0f));
            let x_3120 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3119.x, x_3119.y, x_3120.z, x_3120.w);
            let x_3122 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3122 + vec2<f32>(1.0f, 1.0f));
            let x_3124 : vec4<f32> = u_xlat13;
            let x_3126 : vec2<f32> = (vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3127 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3126.x, x_3126.y, x_3127.z, x_3127.w);
            let x_3129 : vec2<f32> = u_xlat63;
            let x_3130 : vec2<f32> = (x_3129 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3131 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3130.x, x_3130.y, x_3131.z, x_3131.w);
            let x_3133 : vec4<f32> = u_xlat14;
            let x_3135 : vec2<f32> = (vec2<f32>(x_3133.x, x_3133.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3136 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3135.x, x_3135.y, x_3136.z, x_3136.w);
            let x_3138 : vec2<f32> = u_xlat61;
            let x_3139 : vec2<f32> = (x_3138 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3140 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3139.x, x_3139.y, x_3140.z, x_3140.w);
            let x_3142 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3142.y, x_3142.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3146 : f32 = u_xlat14.x;
            u_xlat15.z = x_3146;
            let x_3149 : f32 = u_xlat61.x;
            u_xlat15.w = x_3149;
            let x_3152 : f32 = u_xlat16.x;
            u_xlat13.z = x_3152;
            let x_3155 : f32 = u_xlat12.x;
            u_xlat13.w = x_3155;
            let x_3157 : vec4<f32> = u_xlat13;
            let x_3159 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3157.z, x_3157.w, x_3157.x, x_3157.z) + vec4<f32>(x_3159.z, x_3159.w, x_3159.x, x_3159.z));
            let x_3163 : f32 = u_xlat15.y;
            u_xlat14.z = x_3163;
            let x_3166 : f32 = u_xlat61.y;
            u_xlat14.w = x_3166;
            let x_3169 : f32 = u_xlat13.y;
            u_xlat16.z = x_3169;
            let x_3172 : f32 = u_xlat12.z;
            u_xlat16.w = x_3172;
            let x_3174 : vec4<f32> = u_xlat14;
            let x_3176 : vec4<f32> = u_xlat16;
            let x_3178 : vec3<f32> = (vec3<f32>(x_3174.z, x_3174.y, x_3174.w) + vec3<f32>(x_3176.z, x_3176.y, x_3176.w));
            let x_3179 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3179.w);
            let x_3181 : vec4<f32> = u_xlat13;
            let x_3183 : vec4<f32> = u_xlat17;
            let x_3185 : vec3<f32> = (vec3<f32>(x_3181.x, x_3181.z, x_3181.w) / vec3<f32>(x_3183.z, x_3183.w, x_3183.y));
            let x_3186 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3185.x, x_3185.y, x_3185.z, x_3186.w);
            let x_3188 : vec4<f32> = u_xlat13;
            let x_3190 : vec3<f32> = (vec3<f32>(x_3188.x, x_3188.y, x_3188.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3191 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3190.x, x_3190.y, x_3190.z, x_3191.w);
            let x_3193 : vec4<f32> = u_xlat16;
            let x_3195 : vec4<f32> = u_xlat12;
            let x_3197 : vec3<f32> = (vec3<f32>(x_3193.z, x_3193.y, x_3193.w) / vec3<f32>(x_3195.x, x_3195.y, x_3195.z));
            let x_3198 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3197.x, x_3197.y, x_3197.z, x_3198.w);
            let x_3200 : vec4<f32> = u_xlat14;
            let x_3202 : vec3<f32> = (vec3<f32>(x_3200.x, x_3200.y, x_3200.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3203 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3202.x, x_3202.y, x_3202.z, x_3203.w);
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3208 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3210 : vec3<f32> = (vec3<f32>(x_3205.y, x_3205.x, x_3205.z) * vec3<f32>(x_3208.x, x_3208.x, x_3208.x));
            let x_3211 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3210.x, x_3210.y, x_3210.z, x_3211.w);
            let x_3213 : vec4<f32> = u_xlat14;
            let x_3216 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3218 : vec3<f32> = (vec3<f32>(x_3213.x, x_3213.y, x_3213.z) * vec3<f32>(x_3216.y, x_3216.y, x_3216.y));
            let x_3219 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3219.w);
            let x_3222 : f32 = u_xlat14.x;
            u_xlat13.w = x_3222;
            let x_3224 : vec4<f32> = u_xlat11;
            let x_3227 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3230 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3224.x, x_3224.y, x_3224.x, x_3224.y) * vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y)) + vec4<f32>(x_3230.y, x_3230.w, x_3230.x, x_3230.w));
            let x_3233 : vec4<f32> = u_xlat11;
            let x_3236 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3233.x, x_3233.y) * vec2<f32>(x_3236.x, x_3236.y)) + vec2<f32>(x_3239.z, x_3239.w));
            let x_3243 : f32 = u_xlat13.y;
            u_xlat14.w = x_3243;
            let x_3245 : vec4<f32> = u_xlat14;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.y, x_3245.z);
            let x_3247 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3247.x, x_3246.x, x_3247.z, x_3246.y);
            let x_3249 : vec4<f32> = u_xlat11;
            let x_3252 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3255 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3249.x, x_3249.y, x_3249.x, x_3249.y) * vec4<f32>(x_3252.x, x_3252.y, x_3252.x, x_3252.y)) + vec4<f32>(x_3255.x, x_3255.y, x_3255.z, x_3255.y));
            let x_3258 : vec4<f32> = u_xlat11;
            let x_3261 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3264 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3258.x, x_3258.y, x_3258.x, x_3258.y) * vec4<f32>(x_3261.x, x_3261.y, x_3261.x, x_3261.y)) + vec4<f32>(x_3264.w, x_3264.y, x_3264.w, x_3264.z));
            let x_3267 : vec4<f32> = u_xlat11;
            let x_3270 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3273 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3267.x, x_3267.y, x_3267.x, x_3267.y) * vec4<f32>(x_3270.x, x_3270.y, x_3270.x, x_3270.y)) + vec4<f32>(x_3273.x, x_3273.w, x_3273.z, x_3273.w));
            let x_3276 : vec4<f32> = u_xlat12;
            let x_3278 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3276.x, x_3276.x, x_3276.x, x_3276.y) * vec4<f32>(x_3278.z, x_3278.w, x_3278.y, x_3278.z));
            let x_3281 : vec4<f32> = u_xlat12;
            let x_3283 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3281.y, x_3281.y, x_3281.z, x_3281.z) * x_3283);
            let x_3287 : f32 = u_xlat12.z;
            let x_3289 : f32 = u_xlat17.y;
            u_xlat85 = (x_3287 * x_3289);
            let x_3292 : vec4<f32> = u_xlat15;
            let x_3293 : vec2<f32> = vec2<f32>(x_3292.x, x_3292.y);
            let x_3295 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec34;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat11.x = x_3304;
            let x_3307 : vec4<f32> = u_xlat15;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.z, x_3307.w);
            let x_3310 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3318 : vec3<f32> = txVec35;
            let x_3320 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3318.xy, x_3318.z);
            u_xlat36 = x_3320;
            let x_3321 : f32 = u_xlat36;
            let x_3323 : f32 = u_xlat18.y;
            u_xlat36 = (x_3321 * x_3323);
            let x_3326 : f32 = u_xlat18.x;
            let x_3328 : f32 = u_xlat11.x;
            let x_3330 : f32 = u_xlat36;
            u_xlat11.x = ((x_3326 * x_3328) + x_3330);
            let x_3334 : vec2<f32> = u_xlat61;
            let x_3336 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3334.x, x_3334.y, x_3336);
            let x_3343 : vec3<f32> = txVec36;
            let x_3345 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3343.xy, x_3343.z);
            u_xlat36 = x_3345;
            let x_3347 : f32 = u_xlat18.z;
            let x_3348 : f32 = u_xlat36;
            let x_3351 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3347 * x_3348) + x_3351);
            let x_3355 : vec4<f32> = u_xlat14;
            let x_3356 : vec2<f32> = vec2<f32>(x_3355.x, x_3355.y);
            let x_3358 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
            let x_3365 : vec3<f32> = txVec37;
            let x_3367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
            u_xlat36 = x_3367;
            let x_3369 : f32 = u_xlat18.w;
            let x_3370 : f32 = u_xlat36;
            let x_3373 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3369 * x_3370) + x_3373);
            let x_3377 : vec4<f32> = u_xlat16;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.x, x_3377.y);
            let x_3380 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec38;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat36 = x_3389;
            let x_3391 : f32 = u_xlat19.x;
            let x_3392 : f32 = u_xlat36;
            let x_3395 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3391 * x_3392) + x_3395);
            let x_3399 : vec4<f32> = u_xlat16;
            let x_3400 : vec2<f32> = vec2<f32>(x_3399.z, x_3399.w);
            let x_3402 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
            let x_3409 : vec3<f32> = txVec39;
            let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
            u_xlat36 = x_3411;
            let x_3413 : f32 = u_xlat19.y;
            let x_3414 : f32 = u_xlat36;
            let x_3417 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3413 * x_3414) + x_3417);
            let x_3421 : vec4<f32> = u_xlat14;
            let x_3422 : vec2<f32> = vec2<f32>(x_3421.z, x_3421.w);
            let x_3424 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3422.x, x_3422.y, x_3424);
            let x_3431 : vec3<f32> = txVec40;
            let x_3433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3431.xy, x_3431.z);
            u_xlat36 = x_3433;
            let x_3435 : f32 = u_xlat19.z;
            let x_3436 : f32 = u_xlat36;
            let x_3439 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3435 * x_3436) + x_3439);
            let x_3443 : vec4<f32> = u_xlat13;
            let x_3444 : vec2<f32> = vec2<f32>(x_3443.x, x_3443.y);
            let x_3446 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec41;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat36 = x_3455;
            let x_3457 : f32 = u_xlat19.w;
            let x_3458 : f32 = u_xlat36;
            let x_3461 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3457 * x_3458) + x_3461);
            let x_3465 : vec4<f32> = u_xlat13;
            let x_3466 : vec2<f32> = vec2<f32>(x_3465.z, x_3465.w);
            let x_3468 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec42;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat36 = x_3477;
            let x_3478 : f32 = u_xlat85;
            let x_3479 : f32 = u_xlat36;
            let x_3482 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3478 * x_3479) + x_3482);
          } else {
            let x_3485 : vec4<f32> = u_xlat10;
            let x_3488 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3491 : vec2<f32> = ((vec2<f32>(x_3485.x, x_3485.y) * vec2<f32>(x_3488.z, x_3488.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3492 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3491.x, x_3491.y, x_3492.z, x_3492.w);
            let x_3494 : vec4<f32> = u_xlat11;
            let x_3496 : vec2<f32> = floor(vec2<f32>(x_3494.x, x_3494.y));
            let x_3497 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3496.x, x_3496.y, x_3497.z, x_3497.w);
            let x_3499 : vec4<f32> = u_xlat10;
            let x_3502 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3505 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3499.x, x_3499.y) * vec2<f32>(x_3502.z, x_3502.w)) + -(vec2<f32>(x_3505.x, x_3505.y)));
            let x_3509 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3509.x, x_3509.x, x_3509.y, x_3509.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3512 : vec4<f32> = u_xlat12;
            let x_3514 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3512.x, x_3512.x, x_3512.z, x_3512.z) * vec4<f32>(x_3514.x, x_3514.x, x_3514.z, x_3514.z));
            let x_3517 : vec4<f32> = u_xlat13;
            let x_3519 : vec2<f32> = (vec2<f32>(x_3517.y, x_3517.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3520 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3520.x, x_3519.x, x_3520.z, x_3519.y);
            let x_3522 : vec4<f32> = u_xlat13;
            let x_3525 : vec2<f32> = u_xlat61;
            let x_3527 : vec2<f32> = ((vec2<f32>(x_3522.x, x_3522.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3525));
            let x_3528 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3527.x, x_3528.y, x_3527.y, x_3528.w);
            let x_3530 : vec2<f32> = u_xlat61;
            let x_3532 : vec2<f32> = (-(x_3530) + vec2<f32>(1.0f, 1.0f));
            let x_3533 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3532.x, x_3532.y, x_3533.z, x_3533.w);
            let x_3535 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3535, vec2<f32>(0.0f, 0.0f));
            let x_3537 : vec2<f32> = u_xlat63;
            let x_3539 : vec2<f32> = u_xlat63;
            let x_3541 : vec4<f32> = u_xlat13;
            let x_3543 : vec2<f32> = ((-(x_3537) * x_3539) + vec2<f32>(x_3541.x, x_3541.y));
            let x_3544 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3543.x, x_3543.y, x_3544.z, x_3544.w);
            let x_3546 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3546, vec2<f32>(0.0f, 0.0f));
            let x_3549 : vec2<f32> = u_xlat63;
            let x_3551 : vec2<f32> = u_xlat63;
            let x_3553 : vec4<f32> = u_xlat12;
            let x_3555 : vec2<f32> = ((-(x_3549) * x_3551) + vec2<f32>(x_3553.y, x_3553.w));
            let x_3556 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3555.x, x_3556.y, x_3555.y);
            let x_3558 : vec4<f32> = u_xlat13;
            let x_3560 : vec2<f32> = (vec2<f32>(x_3558.x, x_3558.y) + vec2<f32>(2.0f, 2.0f));
            let x_3561 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3560.x, x_3560.y, x_3561.z, x_3561.w);
            let x_3563 : vec3<f32> = u_xlat37;
            let x_3565 : vec2<f32> = (vec2<f32>(x_3563.x, x_3563.z) + vec2<f32>(2.0f, 2.0f));
            let x_3566 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3566.x, x_3565.x, x_3566.z, x_3565.y);
            let x_3569 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3569 * 0.08163200318813323975f);
            let x_3572 : vec4<f32> = u_xlat12;
            let x_3575 : vec3<f32> = (vec3<f32>(x_3572.z, x_3572.x, x_3572.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3576 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
            let x_3578 : vec4<f32> = u_xlat13;
            let x_3580 : vec2<f32> = (vec2<f32>(x_3578.x, x_3578.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3581 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3580.x, x_3580.y, x_3581.z, x_3581.w);
            let x_3584 : f32 = u_xlat16.y;
            u_xlat15.x = x_3584;
            let x_3586 : vec2<f32> = u_xlat61;
            let x_3589 : vec2<f32> = ((vec2<f32>(x_3586.x, x_3586.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3590 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3590.x, x_3589.x, x_3590.z, x_3589.y);
            let x_3592 : vec2<f32> = u_xlat61;
            let x_3595 : vec2<f32> = ((vec2<f32>(x_3592.x, x_3592.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3596 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3595.x, x_3596.y, x_3595.y, x_3596.w);
            let x_3599 : f32 = u_xlat12.x;
            u_xlat13.y = x_3599;
            let x_3602 : f32 = u_xlat14.y;
            u_xlat13.w = x_3602;
            let x_3604 : vec4<f32> = u_xlat13;
            let x_3605 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3604 + x_3605);
            let x_3607 : vec2<f32> = u_xlat61;
            let x_3610 : vec2<f32> = ((vec2<f32>(x_3607.y, x_3607.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3611 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3611.x, x_3610.x, x_3611.z, x_3610.y);
            let x_3613 : vec2<f32> = u_xlat61;
            let x_3616 : vec2<f32> = ((vec2<f32>(x_3613.y, x_3613.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3617 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3616.x, x_3617.y, x_3616.y, x_3617.w);
            let x_3620 : f32 = u_xlat12.y;
            u_xlat14.y = x_3620;
            let x_3622 : vec4<f32> = u_xlat14;
            let x_3623 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3622 + x_3623);
            let x_3625 : vec4<f32> = u_xlat13;
            let x_3626 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3625 / x_3626);
            let x_3628 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3628 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3630 : vec4<f32> = u_xlat14;
            let x_3631 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3630 / x_3631);
            let x_3633 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3633 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3635 : vec4<f32> = u_xlat13;
            let x_3638 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3635.w, x_3635.x, x_3635.y, x_3635.z) * vec4<f32>(x_3638.x, x_3638.x, x_3638.x, x_3638.x));
            let x_3641 : vec4<f32> = u_xlat14;
            let x_3644 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3641.x, x_3641.w, x_3641.y, x_3641.z) * vec4<f32>(x_3644.y, x_3644.y, x_3644.y, x_3644.y));
            let x_3647 : vec4<f32> = u_xlat13;
            let x_3648 : vec3<f32> = vec3<f32>(x_3647.y, x_3647.z, x_3647.w);
            let x_3649 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3648.x, x_3649.y, x_3648.y, x_3648.z);
            let x_3652 : f32 = u_xlat14.x;
            u_xlat16.y = x_3652;
            let x_3654 : vec4<f32> = u_xlat11;
            let x_3657 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3660 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3654.x, x_3654.y, x_3654.x, x_3654.y) * vec4<f32>(x_3657.x, x_3657.y, x_3657.x, x_3657.y)) + vec4<f32>(x_3660.x, x_3660.y, x_3660.z, x_3660.y));
            let x_3663 : vec4<f32> = u_xlat11;
            let x_3666 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3669 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3663.x, x_3663.y) * vec2<f32>(x_3666.x, x_3666.y)) + vec2<f32>(x_3669.w, x_3669.y));
            let x_3673 : f32 = u_xlat16.y;
            u_xlat13.y = x_3673;
            let x_3676 : f32 = u_xlat14.z;
            u_xlat16.y = x_3676;
            let x_3678 : vec4<f32> = u_xlat11;
            let x_3681 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3684 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3678.x, x_3678.y, x_3678.x, x_3678.y) * vec4<f32>(x_3681.x, x_3681.y, x_3681.x, x_3681.y)) + vec4<f32>(x_3684.x, x_3684.y, x_3684.z, x_3684.y));
            let x_3687 : vec4<f32> = u_xlat11;
            let x_3690 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3693 : vec4<f32> = u_xlat16;
            let x_3695 : vec2<f32> = ((vec2<f32>(x_3687.x, x_3687.y) * vec2<f32>(x_3690.x, x_3690.y)) + vec2<f32>(x_3693.w, x_3693.y));
            let x_3696 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3695.x, x_3695.y, x_3696.z, x_3696.w);
            let x_3699 : f32 = u_xlat16.y;
            u_xlat13.z = x_3699;
            let x_3702 : vec4<f32> = u_xlat11;
            let x_3705 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3708 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3702.x, x_3702.y, x_3702.x, x_3702.y) * vec4<f32>(x_3705.x, x_3705.y, x_3705.x, x_3705.y)) + vec4<f32>(x_3708.x, x_3708.y, x_3708.x, x_3708.z));
            let x_3712 : f32 = u_xlat14.w;
            u_xlat16.y = x_3712;
            let x_3715 : vec4<f32> = u_xlat11;
            let x_3718 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3721 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3715.x, x_3715.y, x_3715.x, x_3715.y) * vec4<f32>(x_3718.x, x_3718.y, x_3718.x, x_3718.y)) + vec4<f32>(x_3721.x, x_3721.y, x_3721.z, x_3721.y));
            let x_3725 : vec4<f32> = u_xlat11;
            let x_3728 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3731 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3725.x, x_3725.y) * vec2<f32>(x_3728.x, x_3728.y)) + vec2<f32>(x_3731.w, x_3731.y));
            let x_3735 : f32 = u_xlat16.y;
            u_xlat13.w = x_3735;
            let x_3738 : vec4<f32> = u_xlat11;
            let x_3741 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3744 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3738.x, x_3738.y) * vec2<f32>(x_3741.x, x_3741.y)) + vec2<f32>(x_3744.x, x_3744.w));
            let x_3747 : vec4<f32> = u_xlat16;
            let x_3748 : vec3<f32> = vec3<f32>(x_3747.x, x_3747.z, x_3747.w);
            let x_3749 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3748.x, x_3749.y, x_3748.y, x_3748.z);
            let x_3751 : vec4<f32> = u_xlat11;
            let x_3754 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3757 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3751.x, x_3751.y, x_3751.x, x_3751.y) * vec4<f32>(x_3754.x, x_3754.y, x_3754.x, x_3754.y)) + vec4<f32>(x_3757.x, x_3757.y, x_3757.z, x_3757.y));
            let x_3761 : vec4<f32> = u_xlat11;
            let x_3764 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3767 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3761.x, x_3761.y) * vec2<f32>(x_3764.x, x_3764.y)) + vec2<f32>(x_3767.w, x_3767.y));
            let x_3771 : f32 = u_xlat13.x;
            u_xlat14.x = x_3771;
            let x_3773 : vec4<f32> = u_xlat11;
            let x_3776 : vec4<f32> = x_1026.x_AdditionalShadowmapSize;
            let x_3779 : vec4<f32> = u_xlat14;
            let x_3781 : vec2<f32> = ((vec2<f32>(x_3773.x, x_3773.y) * vec2<f32>(x_3776.x, x_3776.y)) + vec2<f32>(x_3779.x, x_3779.y));
            let x_3782 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3781.x, x_3781.y, x_3782.z, x_3782.w);
            let x_3785 : vec4<f32> = u_xlat12;
            let x_3787 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3785.x, x_3785.x, x_3785.x, x_3785.x) * x_3787);
            let x_3790 : vec4<f32> = u_xlat12;
            let x_3792 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3790.y, x_3790.y, x_3790.y, x_3790.y) * x_3792);
            let x_3795 : vec4<f32> = u_xlat12;
            let x_3797 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3795.z, x_3795.z, x_3795.z, x_3795.z) * x_3797);
            let x_3799 : vec4<f32> = u_xlat12;
            let x_3801 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3799.w, x_3799.w, x_3799.w, x_3799.w) * x_3801);
            let x_3804 : vec4<f32> = u_xlat17;
            let x_3805 : vec2<f32> = vec2<f32>(x_3804.x, x_3804.y);
            let x_3807 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3805.x, x_3805.y, x_3807);
            let x_3814 : vec3<f32> = txVec43;
            let x_3816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3814.xy, x_3814.z);
            u_xlat85 = x_3816;
            let x_3818 : vec4<f32> = u_xlat17;
            let x_3819 : vec2<f32> = vec2<f32>(x_3818.z, x_3818.w);
            let x_3821 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3819.x, x_3819.y, x_3821);
            let x_3828 : vec3<f32> = txVec44;
            let x_3830 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3828.xy, x_3828.z);
            u_xlat13.x = x_3830;
            let x_3833 : f32 = u_xlat13.x;
            let x_3835 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3833 * x_3835);
            let x_3839 : f32 = u_xlat22.x;
            let x_3840 : f32 = u_xlat85;
            let x_3843 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3839 * x_3840) + x_3843);
            let x_3846 : vec2<f32> = u_xlat61;
            let x_3848 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3846.x, x_3846.y, x_3848);
            let x_3855 : vec3<f32> = txVec45;
            let x_3857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3855.xy, x_3855.z);
            u_xlat61.x = x_3857;
            let x_3860 : f32 = u_xlat22.z;
            let x_3862 : f32 = u_xlat61.x;
            let x_3864 : f32 = u_xlat85;
            u_xlat85 = ((x_3860 * x_3862) + x_3864);
            let x_3867 : vec4<f32> = u_xlat20;
            let x_3868 : vec2<f32> = vec2<f32>(x_3867.x, x_3867.y);
            let x_3870 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3868.x, x_3868.y, x_3870);
            let x_3877 : vec3<f32> = txVec46;
            let x_3879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3877.xy, x_3877.z);
            u_xlat61.x = x_3879;
            let x_3882 : f32 = u_xlat22.w;
            let x_3884 : f32 = u_xlat61.x;
            let x_3886 : f32 = u_xlat85;
            u_xlat85 = ((x_3882 * x_3884) + x_3886);
            let x_3889 : vec4<f32> = u_xlat18;
            let x_3890 : vec2<f32> = vec2<f32>(x_3889.x, x_3889.y);
            let x_3892 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3890.x, x_3890.y, x_3892);
            let x_3899 : vec3<f32> = txVec47;
            let x_3901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3899.xy, x_3899.z);
            u_xlat61.x = x_3901;
            let x_3904 : f32 = u_xlat23.x;
            let x_3906 : f32 = u_xlat61.x;
            let x_3908 : f32 = u_xlat85;
            u_xlat85 = ((x_3904 * x_3906) + x_3908);
            let x_3911 : vec4<f32> = u_xlat18;
            let x_3912 : vec2<f32> = vec2<f32>(x_3911.z, x_3911.w);
            let x_3914 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3912.x, x_3912.y, x_3914);
            let x_3921 : vec3<f32> = txVec48;
            let x_3923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3921.xy, x_3921.z);
            u_xlat61.x = x_3923;
            let x_3926 : f32 = u_xlat23.y;
            let x_3928 : f32 = u_xlat61.x;
            let x_3930 : f32 = u_xlat85;
            u_xlat85 = ((x_3926 * x_3928) + x_3930);
            let x_3933 : vec4<f32> = u_xlat19;
            let x_3934 : vec2<f32> = vec2<f32>(x_3933.x, x_3933.y);
            let x_3936 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3934.x, x_3934.y, x_3936);
            let x_3943 : vec3<f32> = txVec49;
            let x_3945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3943.xy, x_3943.z);
            u_xlat61.x = x_3945;
            let x_3948 : f32 = u_xlat23.z;
            let x_3950 : f32 = u_xlat61.x;
            let x_3952 : f32 = u_xlat85;
            u_xlat85 = ((x_3948 * x_3950) + x_3952);
            let x_3955 : vec4<f32> = u_xlat20;
            let x_3956 : vec2<f32> = vec2<f32>(x_3955.z, x_3955.w);
            let x_3958 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3956.x, x_3956.y, x_3958);
            let x_3965 : vec3<f32> = txVec50;
            let x_3967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3965.xy, x_3965.z);
            u_xlat61.x = x_3967;
            let x_3970 : f32 = u_xlat23.w;
            let x_3972 : f32 = u_xlat61.x;
            let x_3974 : f32 = u_xlat85;
            u_xlat85 = ((x_3970 * x_3972) + x_3974);
            let x_3977 : vec4<f32> = u_xlat21;
            let x_3978 : vec2<f32> = vec2<f32>(x_3977.x, x_3977.y);
            let x_3980 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3978.x, x_3978.y, x_3980);
            let x_3987 : vec3<f32> = txVec51;
            let x_3989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3987.xy, x_3987.z);
            u_xlat61.x = x_3989;
            let x_3992 : f32 = u_xlat24.x;
            let x_3994 : f32 = u_xlat61.x;
            let x_3996 : f32 = u_xlat85;
            u_xlat85 = ((x_3992 * x_3994) + x_3996);
            let x_3999 : vec4<f32> = u_xlat21;
            let x_4000 : vec2<f32> = vec2<f32>(x_3999.z, x_3999.w);
            let x_4002 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4000.x, x_4000.y, x_4002);
            let x_4009 : vec3<f32> = txVec52;
            let x_4011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4009.xy, x_4009.z);
            u_xlat61.x = x_4011;
            let x_4014 : f32 = u_xlat24.y;
            let x_4016 : f32 = u_xlat61.x;
            let x_4018 : f32 = u_xlat85;
            u_xlat85 = ((x_4014 * x_4016) + x_4018);
            let x_4021 : vec2<f32> = u_xlat38;
            let x_4023 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4021.x, x_4021.y, x_4023);
            let x_4030 : vec3<f32> = txVec53;
            let x_4032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4030.xy, x_4030.z);
            u_xlat61.x = x_4032;
            let x_4035 : f32 = u_xlat24.z;
            let x_4037 : f32 = u_xlat61.x;
            let x_4039 : f32 = u_xlat85;
            u_xlat85 = ((x_4035 * x_4037) + x_4039);
            let x_4042 : vec2<f32> = u_xlat69;
            let x_4044 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4042.x, x_4042.y, x_4044);
            let x_4051 : vec3<f32> = txVec54;
            let x_4053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4051.xy, x_4051.z);
            u_xlat61.x = x_4053;
            let x_4056 : f32 = u_xlat24.w;
            let x_4058 : f32 = u_xlat61.x;
            let x_4060 : f32 = u_xlat85;
            u_xlat85 = ((x_4056 * x_4058) + x_4060);
            let x_4063 : vec4<f32> = u_xlat16;
            let x_4064 : vec2<f32> = vec2<f32>(x_4063.x, x_4063.y);
            let x_4066 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4064.x, x_4064.y, x_4066);
            let x_4073 : vec3<f32> = txVec55;
            let x_4075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4073.xy, x_4073.z);
            u_xlat61.x = x_4075;
            let x_4078 : f32 = u_xlat12.x;
            let x_4080 : f32 = u_xlat61.x;
            let x_4082 : f32 = u_xlat85;
            u_xlat85 = ((x_4078 * x_4080) + x_4082);
            let x_4085 : vec4<f32> = u_xlat16;
            let x_4086 : vec2<f32> = vec2<f32>(x_4085.z, x_4085.w);
            let x_4088 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4086.x, x_4086.y, x_4088);
            let x_4095 : vec3<f32> = txVec56;
            let x_4097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4095.xy, x_4095.z);
            u_xlat61.x = x_4097;
            let x_4100 : f32 = u_xlat12.y;
            let x_4102 : f32 = u_xlat61.x;
            let x_4104 : f32 = u_xlat85;
            u_xlat85 = ((x_4100 * x_4102) + x_4104);
            let x_4107 : vec2<f32> = u_xlat64;
            let x_4109 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4107.x, x_4107.y, x_4109);
            let x_4116 : vec3<f32> = txVec57;
            let x_4118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4116.xy, x_4116.z);
            u_xlat61.x = x_4118;
            let x_4121 : f32 = u_xlat12.z;
            let x_4123 : f32 = u_xlat61.x;
            let x_4125 : f32 = u_xlat85;
            u_xlat85 = ((x_4121 * x_4123) + x_4125);
            let x_4128 : vec4<f32> = u_xlat11;
            let x_4129 : vec2<f32> = vec2<f32>(x_4128.x, x_4128.y);
            let x_4131 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4129.x, x_4129.y, x_4131);
            let x_4138 : vec3<f32> = txVec58;
            let x_4140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4138.xy, x_4138.z);
            u_xlat11.x = x_4140;
            let x_4143 : f32 = u_xlat12.w;
            let x_4145 : f32 = u_xlat11.x;
            let x_4147 : f32 = u_xlat85;
            u_xlat84 = ((x_4143 * x_4145) + x_4147);
          }
        }
      } else {
        let x_4151 : vec4<f32> = u_xlat10;
        let x_4152 : vec2<f32> = vec2<f32>(x_4151.x, x_4151.y);
        let x_4154 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4152.x, x_4152.y, x_4154);
        let x_4161 : vec3<f32> = txVec59;
        let x_4163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4161.xy, x_4161.z);
        u_xlat84 = x_4163;
      }
      let x_4164 : i32 = u_xlati81;
      let x_4166 : f32 = x_1026.x_AdditionalShadowParams[x_4164].x;
      u_xlat10.x = (1.0f + -(x_4166));
      let x_4170 : f32 = u_xlat84;
      let x_4171 : i32 = u_xlati81;
      let x_4173 : f32 = x_1026.x_AdditionalShadowParams[x_4171].x;
      let x_4176 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4170 * x_4173) + x_4176);
      let x_4179 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4179);
      let x_4184 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4184 >= 1.0f);
      let x_4186 : bool = u_xlatb35;
      let x_4188 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4186 | x_4188);
      let x_4192 : bool = u_xlatb10.x;
      let x_4193 : f32 = u_xlat84;
      u_xlat84 = select(x_4193, 1.0f, x_4192);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4196 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4196) + 1.0f);
    let x_4201 : f32 = u_xlat3.x;
    let x_4203 : f32 = u_xlat10.x;
    let x_4205 : f32 = u_xlat84;
    u_xlat84 = ((x_4201 * x_4203) + x_4205);
    let x_4207 : f32 = u_xlat82;
    let x_4208 : f32 = u_xlat84;
    u_xlat82 = (x_4207 * x_4208);
    let x_4210 : vec4<f32> = u_xlat1;
    let x_4212 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4210.x, x_4210.y, x_4210.z), vec3<f32>(x_4212.x, x_4212.y, x_4212.z));
    let x_4215 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4215, 0.0f, 1.0f);
    let x_4217 : f32 = u_xlat82;
    let x_4218 : f32 = u_xlat84;
    u_xlat82 = (x_4217 * x_4218);
    let x_4220 : f32 = u_xlat82;
    let x_4222 : i32 = u_xlati81;
    let x_4224 : vec4<f32> = x_2718.x_AdditionalLightsColor[x_4222];
    let x_4226 : vec3<f32> = (vec3<f32>(x_4220, x_4220, x_4220) * vec3<f32>(x_4224.x, x_4224.y, x_4224.z));
    let x_4227 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4226.x, x_4226.y, x_4226.z, x_4227.w);
    let x_4229 : vec4<f32> = u_xlat8;
    let x_4231 : f32 = u_xlat83;
    let x_4234 : vec4<f32> = u_xlat6;
    let x_4236 : vec3<f32> = ((vec3<f32>(x_4229.x, x_4229.y, x_4229.z) * vec3<f32>(x_4231, x_4231, x_4231)) + vec3<f32>(x_4234.x, x_4234.y, x_4234.z));
    let x_4237 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4236.x, x_4236.y, x_4236.z, x_4237.w);
    let x_4239 : vec4<f32> = u_xlat8;
    let x_4241 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4239.x, x_4239.y, x_4239.z), vec3<f32>(x_4241.x, x_4241.y, x_4241.z));
    let x_4244 : f32 = u_xlat81;
    u_xlat81 = max(x_4244, 1.17549435e-38f);
    let x_4246 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4246);
    let x_4248 : f32 = u_xlat81;
    let x_4250 : vec4<f32> = u_xlat8;
    let x_4252 : vec3<f32> = (vec3<f32>(x_4248, x_4248, x_4248) * vec3<f32>(x_4250.x, x_4250.y, x_4250.z));
    let x_4253 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4252.x, x_4252.y, x_4252.z, x_4253.w);
    let x_4255 : vec4<f32> = u_xlat1;
    let x_4257 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4255.x, x_4255.y, x_4255.z), vec3<f32>(x_4257.x, x_4257.y, x_4257.z));
    let x_4260 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4260, 0.0f, 1.0f);
    let x_4262 : vec4<f32> = u_xlat9;
    let x_4264 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4262.x, x_4262.y, x_4262.z), vec3<f32>(x_4264.x, x_4264.y, x_4264.z));
    let x_4267 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4267, 0.0f, 1.0f);
    let x_4269 : f32 = u_xlat81;
    let x_4270 : f32 = u_xlat81;
    u_xlat81 = (x_4269 * x_4270);
    let x_4272 : f32 = u_xlat81;
    let x_4274 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4272 * x_4274) + 1.00001001358032226562f);
    let x_4277 : f32 = u_xlat82;
    let x_4278 : f32 = u_xlat82;
    u_xlat82 = (x_4277 * x_4278);
    let x_4280 : f32 = u_xlat81;
    let x_4281 : f32 = u_xlat81;
    u_xlat81 = (x_4280 * x_4281);
    let x_4283 : f32 = u_xlat82;
    u_xlat82 = max(x_4283, 0.10000000149011611938f);
    let x_4285 : f32 = u_xlat81;
    let x_4286 : f32 = u_xlat82;
    u_xlat81 = (x_4285 * x_4286);
    let x_4288 : f32 = u_xlat79;
    let x_4289 : f32 = u_xlat81;
    u_xlat81 = (x_4288 * x_4289);
    let x_4291 : f32 = u_xlat76;
    let x_4292 : f32 = u_xlat81;
    u_xlat81 = (x_4291 / x_4292);
    let x_4294 : vec4<f32> = u_xlat4;
    let x_4296 : f32 = u_xlat81;
    let x_4299 : vec3<f32> = u_xlat28;
    let x_4300 : vec3<f32> = ((vec3<f32>(x_4294.x, x_4294.y, x_4294.z) * vec3<f32>(x_4296, x_4296, x_4296)) + x_4299);
    let x_4301 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4300.x, x_4300.y, x_4300.z, x_4301.w);
    let x_4303 : vec4<f32> = u_xlat8;
    let x_4305 : vec4<f32> = u_xlat10;
    let x_4308 : vec4<f32> = u_xlat7;
    let x_4310 : vec3<f32> = ((vec3<f32>(x_4303.x, x_4303.y, x_4303.z) * vec3<f32>(x_4305.x, x_4305.y, x_4305.z)) + vec3<f32>(x_4308.x, x_4308.y, x_4308.z));
    let x_4311 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4310.x, x_4310.y, x_4310.z, x_4311.w);

    continuing {
      let x_4313 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4313 + bitcast<u32>(1i));
    }
  }
  let x_4315 : vec3<f32> = u_xlat27;
  let x_4316 : f32 = u_xlat25;
  let x_4319 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_4315 * vec3<f32>(x_4316, x_4316, x_4316)) + vec3<f32>(x_4319.x, x_4319.z, x_4319.w));
  let x_4322 : vec4<f32> = u_xlat7;
  let x_4324 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4322.x, x_4322.y, x_4322.z) + x_4324);
  let x_4326 : f32 = u_xlat75;
  let x_4328 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4326, x_4326, x_4326) * x_4328);
  let x_4331 : f32 = u_xlat2.x;
  let x_4333 : f32 = u_xlat2.x;
  u_xlat75 = (x_4331 * -(x_4333));
  let x_4336 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4336);
  let x_4340 : vec3<f32> = u_xlat0;
  let x_4341 : f32 = u_xlat75;
  let x_4343 : vec3<f32> = (x_4340 * vec3<f32>(x_4341, x_4341, x_4341));
  let x_4344 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4343.x, x_4343.y, x_4343.z, x_4344.w);
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


