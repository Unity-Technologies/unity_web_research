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

@group(1) @binding(2) var<uniform> x_876 : UnityPerDraw;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1014 : LightShadows;

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

@group(1) @binding(1) var<uniform> x_2706 : AdditionalLights;

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
  var x_2300 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2847 : f32;
  var x_2858 : f32;
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
  let x_277 : f32 = u_xlat76;
  u_xlat76 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat76;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_358 : vec4<f32> = vs_TEXCOORD1;
  let x_361 : f32 = x_111.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_358.x, x_358.y), x_361);
  let x_363 : vec3<f32> = vec3<f32>(x_362.x, x_362.y, x_362.w);
  let x_364 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = u_xlat6.x;
  let x_369 : f32 = u_xlat6.z;
  u_xlat6.x = (x_367 * x_369);
  let x_372 : vec4<f32> = u_xlat6;
  let x_377 : vec2<f32> = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat6;
  let x_382 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_380.x, x_380.y), vec2<f32>(x_382.x, x_382.y));
  let x_385 : f32 = u_xlat76;
  u_xlat76 = min(x_385, 1.0f);
  let x_387 : f32 = u_xlat76;
  u_xlat76 = (-(x_387) + 1.0f);
  let x_390 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_390);
  let x_392 : f32 = u_xlat76;
  u_xlat7.z = max(x_392, 0.0000000000000001f);
  let x_396 : vec4<f32> = u_xlat6;
  let x_399 : f32 = x_13.x_NormalScale0;
  let x_401 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_399, x_399));
  let x_402 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_408 : vec4<f32> = vs_TEXCOORD1;
  let x_411 : f32 = x_111.x_GlobalMipBias.x;
  let x_412 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_408.z, x_408.w), x_411);
  let x_413 : vec3<f32> = vec3<f32>(x_412.x, x_412.y, x_412.w);
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat6.x;
  let x_419 : f32 = u_xlat6.z;
  u_xlat6.x = (x_417 * x_419);
  let x_422 : vec4<f32> = u_xlat6;
  let x_425 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  let x_430 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_428.x, x_428.y), vec2<f32>(x_430.x, x_430.y));
  let x_433 : f32 = u_xlat76;
  u_xlat76 = min(x_433, 1.0f);
  let x_435 : f32 = u_xlat76;
  u_xlat76 = (-(x_435) + 1.0f);
  let x_438 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_438);
  let x_440 : f32 = u_xlat76;
  u_xlat8.z = max(x_440, 0.0000000000000001f);
  let x_443 : vec4<f32> = u_xlat6;
  let x_447 : f32 = x_13.x_NormalScale1;
  let x_449 : f32 = x_13.x_NormalScale1;
  let x_450 : vec2<f32> = vec2<f32>(x_447, x_449);
  let x_454 : vec2<f32> = (vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_450.x, x_450.y));
  let x_455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat8;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.y, x_457.y, x_457.y) * vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : vec4<f32> = u_xlat6;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.x, x_464.x) * vec3<f32>(x_466.x, x_466.y, x_466.z)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_478 : vec4<f32> = vs_TEXCOORD2;
  let x_481 : f32 = x_111.x_GlobalMipBias.x;
  let x_482 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_478.x, x_478.y), x_481);
  let x_483 : vec3<f32> = vec3<f32>(x_482.x, x_482.y, x_482.w);
  let x_484 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : f32 = u_xlat7.x;
  let x_489 : f32 = u_xlat7.z;
  u_xlat7.x = (x_487 * x_489);
  let x_492 : vec4<f32> = u_xlat7;
  let x_495 : vec2<f32> = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  let x_500 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_498.x, x_498.y), vec2<f32>(x_500.x, x_500.y));
  let x_503 : f32 = u_xlat76;
  u_xlat76 = min(x_503, 1.0f);
  let x_505 : f32 = u_xlat76;
  u_xlat76 = (-(x_505) + 1.0f);
  let x_508 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_508);
  let x_510 : f32 = u_xlat76;
  u_xlat8.z = max(x_510, 0.0000000000000001f);
  let x_513 : vec4<f32> = u_xlat7;
  let x_517 : f32 = x_13.x_NormalScale2;
  let x_519 : f32 = x_13.x_NormalScale2;
  let x_520 : vec2<f32> = vec2<f32>(x_517, x_519);
  let x_524 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_520.x, x_520.y));
  let x_525 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat8;
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527.z, x_527.z, x_527.z) * vec3<f32>(x_529.x, x_529.y, x_529.z)) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_541 : vec4<f32> = vs_TEXCOORD2;
  let x_544 : f32 = x_111.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_541.z, x_541.w), x_544);
  let x_546 : vec3<f32> = vec3<f32>(x_545.x, x_545.y, x_545.w);
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : f32 = u_xlat7.x;
  let x_552 : f32 = u_xlat7.z;
  u_xlat7.x = (x_550 * x_552);
  let x_555 : vec4<f32> = u_xlat7;
  let x_558 : vec2<f32> = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_561.x, x_561.y), vec2<f32>(x_563.x, x_563.y));
  let x_566 : f32 = u_xlat76;
  u_xlat76 = min(x_566, 1.0f);
  let x_568 : f32 = u_xlat76;
  u_xlat76 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_571);
  let x_573 : f32 = u_xlat76;
  u_xlat8.z = max(x_573, 0.0000000000000001f);
  let x_576 : vec4<f32> = u_xlat7;
  let x_580 : f32 = x_13.x_NormalScale3;
  let x_582 : f32 = x_13.x_NormalScale3;
  let x_583 : vec2<f32> = vec2<f32>(x_580, x_582);
  let x_587 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_583.x, x_583.y));
  let x_588 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat8;
  let x_595 : vec4<f32> = u_xlat6;
  let x_597 : vec3<f32> = ((vec3<f32>(x_590.w, x_590.w, x_590.w) * vec3<f32>(x_592.x, x_592.y, x_592.z)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_601 : f32 = u_xlat6.z;
  u_xlat6.w = (x_601 + 0.00000999999974737875f);
  let x_605 : vec4<f32> = u_xlat6;
  let x_607 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_605.x, x_605.y, x_605.w), vec3<f32>(x_607.x, x_607.y, x_607.w));
  let x_610 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_610);
  let x_612 : f32 = u_xlat76;
  let x_614 : vec4<f32> = u_xlat6;
  let x_616 : vec3<f32> = (vec3<f32>(x_612, x_612, x_612) * vec3<f32>(x_614.x, x_614.y, x_614.w));
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_620 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_620;
  let x_623 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_623;
  let x_626 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_626;
  let x_629 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_629;
  let x_632 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_632;
  let x_635 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_635;
  let x_638 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_638;
  let x_641 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_641;
  let x_643 : vec4<f32> = u_xlat7;
  let x_644 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_643 + x_644);
  let x_647 : f32 = u_xlat0.z;
  u_xlat8.x = x_647;
  let x_650 : f32 = u_xlat1.z;
  u_xlat8.y = x_650;
  let x_653 : f32 = u_xlat2.z;
  u_xlat8.z = x_653;
  let x_656 : f32 = u_xlat3.y;
  u_xlat8.w = x_656;
  let x_658 : vec4<f32> = u_xlat9;
  let x_661 : f32 = x_13.x_Smoothness0;
  let x_663 : f32 = x_13.x_Smoothness1;
  let x_665 : f32 = x_13.x_Smoothness2;
  let x_667 : f32 = x_13.x_Smoothness3;
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_658) * vec4<f32>(x_661, x_663, x_665, x_667)) + x_670);
  let x_674 : f32 = x_13.x_LayerHasMask0;
  let x_677 : f32 = x_13.x_LayerHasMask1;
  let x_680 : f32 = x_13.x_LayerHasMask2;
  let x_683 : f32 = x_13.x_LayerHasMask3;
  let x_685 : vec4<f32> = u_xlat8;
  let x_687 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_674, x_677, x_680, x_683) * x_685) + x_687);
  let x_690 : vec4<f32> = u_xlat4;
  let x_691 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_690, x_691);
  let x_694 : f32 = u_xlat0.x;
  u_xlat8.x = x_694;
  let x_697 : f32 = u_xlat1.x;
  u_xlat8.y = x_697;
  let x_700 : f32 = u_xlat2.x;
  u_xlat8.z = x_700;
  let x_703 : f32 = u_xlat3.x;
  u_xlat8.w = x_703;
  let x_705 : vec4<f32> = u_xlat8;
  let x_708 : f32 = x_13.x_Metallic0;
  let x_711 : f32 = x_13.x_Metallic1;
  let x_714 : f32 = x_13.x_Metallic2;
  let x_717 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_705 + -(vec4<f32>(x_708, x_711, x_714, x_717)));
  let x_722 : f32 = x_13.x_LayerHasMask0;
  let x_724 : f32 = x_13.x_LayerHasMask1;
  let x_726 : f32 = x_13.x_LayerHasMask2;
  let x_728 : f32 = x_13.x_LayerHasMask3;
  let x_730 : vec4<f32> = u_xlat8;
  let x_733 : f32 = x_13.x_Metallic0;
  let x_735 : f32 = x_13.x_Metallic1;
  let x_737 : f32 = x_13.x_Metallic2;
  let x_739 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_722, x_724, x_726, x_728) * x_730) + vec4<f32>(x_733, x_735, x_737, x_739));
  let x_742 : vec4<f32> = u_xlat4;
  let x_743 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_742, x_743);
  let x_747 : f32 = u_xlat0.y;
  u_xlat3.x = x_747;
  let x_750 : f32 = u_xlat1.y;
  u_xlat3.y = x_750;
  let x_753 : f32 = u_xlat2.y;
  u_xlat3.z = x_753;
  let x_755 : vec4<f32> = u_xlat7;
  let x_757 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_755) + x_757);
  let x_760 : f32 = x_13.x_LayerHasMask0;
  let x_762 : f32 = x_13.x_LayerHasMask1;
  let x_764 : f32 = x_13.x_LayerHasMask2;
  let x_766 : f32 = x_13.x_LayerHasMask3;
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_760, x_762, x_764, x_766) * x_768) + x_770);
  let x_773 : vec4<f32> = u_xlat4;
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_773, x_774);
  let x_776 : vec4<f32> = u_xlat6;
  let x_779 : vec4<f32> = vs_TEXCOORD5;
  let x_781 : vec3<f32> = (vec3<f32>(x_776.y, x_776.y, x_776.y) * vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat6;
  let x_787 : vec4<f32> = vs_TEXCOORD4;
  let x_791 : vec4<f32> = u_xlat1;
  let x_793 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.x, x_784.x) * -(vec3<f32>(x_787.x, x_787.y, x_787.z))) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD3;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_796.z, x_796.z, x_796.z) * vec3<f32>(x_799.x, x_799.y, x_799.z)) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat1;
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_812);
  let x_814 : f32 = u_xlat76;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = (vec3<f32>(x_814, x_814, x_814) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_825 : f32 = vs_TEXCOORD7.y;
  let x_827 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.x = (x_825 * x_827);
  let x_831 : f32 = x_111.unity_MatrixV[0i].z;
  let x_833 : f32 = vs_TEXCOORD7.x;
  let x_836 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_831 * x_833) + x_836);
  let x_840 : f32 = x_111.unity_MatrixV[2i].z;
  let x_842 : f32 = vs_TEXCOORD7.z;
  let x_845 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_840 * x_842) + x_845);
  let x_849 : f32 = u_xlat2.x;
  let x_851 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat2.x = (x_849 + x_851);
  let x_855 : f32 = u_xlat2.x;
  let x_858 : f32 = x_111.x_ProjectionParams.y;
  u_xlat2.x = (-(x_855) + -(x_858));
  let x_863 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_863, 0.0f);
  let x_867 : f32 = u_xlat2.x;
  let x_869 : f32 = x_111.unity_FogParams.x;
  u_xlat2.x = (x_867 * x_869);
  u_xlat1.w = 1.0f;
  let x_878 : vec4<f32> = x_876.unity_SHAr;
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_878, x_879);
  let x_883 : vec4<f32> = x_876.unity_SHAg;
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_883, x_884);
  let x_888 : vec4<f32> = x_876.unity_SHAb;
  let x_889 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_888, x_889);
  let x_892 : vec4<f32> = u_xlat1;
  let x_894 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_892.y, x_892.z, x_892.z, x_892.x) * vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.z));
  let x_898 : vec4<f32> = x_876.unity_SHBr;
  let x_899 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_898, x_899);
  let x_903 : vec4<f32> = x_876.unity_SHBg;
  let x_904 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_903, x_904);
  let x_908 : vec4<f32> = x_876.unity_SHBb;
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_908, x_909);
  let x_913 : f32 = u_xlat1.y;
  let x_915 : f32 = u_xlat1.y;
  u_xlat76 = (x_913 * x_915);
  let x_918 : f32 = u_xlat1.x;
  let x_920 : f32 = u_xlat1.x;
  let x_922 : f32 = u_xlat76;
  u_xlat76 = ((x_918 * x_920) + -(x_922));
  let x_928 : vec4<f32> = x_876.unity_SHC;
  let x_930 : f32 = u_xlat76;
  let x_933 : vec4<f32> = u_xlat6;
  u_xlat27 = ((vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_930, x_930, x_930)) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec3<f32> = u_xlat27;
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat27 = (x_936 + vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_940, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_944 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_944) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_949 : f32 = u_xlat50;
  let x_950 : f32 = u_xlat76;
  u_xlat3.x = (x_949 + -(x_950));
  let x_955 : f32 = u_xlat76;
  let x_957 : vec4<f32> = u_xlat5;
  u_xlat28 = (vec3<f32>(x_955, x_955, x_955) * vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat5;
  let x_964 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_965 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec3<f32> = u_xlat0;
  let x_969 : vec4<f32> = u_xlat4;
  let x_974 : vec3<f32> = ((vec3<f32>(x_967.x, x_967.x, x_967.x) * vec3<f32>(x_969.x, x_969.y, x_969.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_975 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : f32 = u_xlat50;
  u_xlat0.x = (-(x_977) + 1.0f);
  let x_982 : f32 = u_xlat0.x;
  let x_984 : f32 = u_xlat0.x;
  u_xlat50 = (x_982 * x_984);
  let x_986 : f32 = u_xlat50;
  u_xlat50 = max(x_986, 0.0078125f);
  let x_989 : f32 = u_xlat50;
  let x_990 : f32 = u_xlat50;
  u_xlat76 = (x_989 * x_990);
  let x_993 : f32 = u_xlat3.x;
  u_xlat3.x = (x_993 + 1.0f);
  let x_997 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_997, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat50;
  u_xlat79 = ((x_1001 * 4.0f) + 2.0f);
  let x_1004 : f32 = u_xlat25;
  u_xlat25 = min(x_1004, 1.0f);
  let x_1016 : f32 = x_1014.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1016);
  let x_1018 : bool = u_xlatb5;
  if (x_1018) {
    let x_1022 : f32 = x_1014.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1022 == 1.0f);
    let x_1024 : bool = u_xlatb5;
    if (x_1024) {
      let x_1028 : vec4<f32> = vs_TEXCOORD8;
      let x_1031 : vec4<f32> = x_1014.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y) + x_1031);
      let x_1035 : vec4<f32> = u_xlat5;
      let x_1036 : vec2<f32> = vec2<f32>(x_1035.x, x_1035.y);
      let x_1038 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
      let x_1050 : vec3<f32> = txVec0;
      let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1050.xy, x_1050.z);
      u_xlat6.x = x_1052;
      let x_1055 : vec4<f32> = u_xlat5;
      let x_1056 : vec2<f32> = vec2<f32>(x_1055.z, x_1055.w);
      let x_1058 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1056.x, x_1056.y, x_1058);
      let x_1065 : vec3<f32> = txVec1;
      let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1065.xy, x_1065.z);
      u_xlat6.y = x_1067;
      let x_1069 : vec4<f32> = vs_TEXCOORD8;
      let x_1072 : vec4<f32> = x_1014.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y) + x_1072);
      let x_1075 : vec4<f32> = u_xlat5;
      let x_1076 : vec2<f32> = vec2<f32>(x_1075.x, x_1075.y);
      let x_1078 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1076.x, x_1076.y, x_1078);
      let x_1085 : vec3<f32> = txVec2;
      let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1085.xy, x_1085.z);
      u_xlat6.z = x_1087;
      let x_1090 : vec4<f32> = u_xlat5;
      let x_1091 : vec2<f32> = vec2<f32>(x_1090.z, x_1090.w);
      let x_1093 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1091.x, x_1091.y, x_1093);
      let x_1100 : vec3<f32> = txVec3;
      let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
      u_xlat6.w = x_1102;
      let x_1104 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1104, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1112 : f32 = x_1014.x_MainLightShadowParams.y;
      u_xlatb30 = (x_1112 == 2.0f);
      let x_1114 : bool = u_xlatb30;
      if (x_1114) {
        let x_1118 : vec4<f32> = vs_TEXCOORD8;
        let x_1121 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.z, x_1121.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1125 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1124.x, x_1124.y, x_1125.z);
        let x_1127 : vec3<f32> = u_xlat30;
        let x_1129 : vec2<f32> = floor(vec2<f32>(x_1127.x, x_1127.y));
        let x_1130 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1129.x, x_1129.y, x_1130.z);
        let x_1132 : vec4<f32> = vs_TEXCOORD8;
        let x_1135 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1138 : vec3<f32> = u_xlat30;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.z, x_1135.w)) + -(vec2<f32>(x_1138.x, x_1138.y)));
        let x_1142 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1144.x, x_1144.x, x_1144.y, x_1144.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1148.x, x_1148.x, x_1148.z, x_1148.z) * vec4<f32>(x_1150.x, x_1150.x, x_1150.z, x_1150.z));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_1155.y, x_1155.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1163.x, x_1163.y)));
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat6;
        let x_1173 : vec2<f32> = (-(vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1174 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1177 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_1177.x, x_1177.y), vec2<f32>(0.0f, 0.0f));
        let x_1181 : vec2<f32> = u_xlat58;
        let x_1183 : vec2<f32> = u_xlat58;
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_1181) * x_1183) + vec2<f32>(x_1185.x, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1190 : vec2<f32> = max(vec2<f32>(x_1188.x, x_1188.y), vec2<f32>(0.0f, 0.0f));
        let x_1191 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat6;
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1201 : vec2<f32> = ((-(vec2<f32>(x_1193.x, x_1193.y)) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.y, x_1199.w));
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1204 + vec2<f32>(1.0f, 1.0f));
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.y) + vec2<f32>(1.0f, 1.0f));
        let x_1209 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1215 : vec2<f32> = (vec2<f32>(x_1211.x, x_1211.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1216 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1220 : vec2<f32> = (vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : vec2<f32> = u_xlat58;
        let x_1224 : vec2<f32> = (x_1223 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1225 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat6;
        let x_1229 : vec2<f32> = (vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1229.x, x_1229.y, x_1230.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1234 : vec2<f32> = (vec2<f32>(x_1232.y, x_1232.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1235 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1238 : f32 = u_xlat8.x;
        u_xlat9.z = x_1238;
        let x_1241 : f32 = u_xlat6.x;
        u_xlat9.w = x_1241;
        let x_1244 : f32 = u_xlat11.x;
        u_xlat10.z = x_1244;
        let x_1247 : f32 = u_xlat56.x;
        u_xlat10.w = x_1247;
        let x_1249 : vec4<f32> = u_xlat9;
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1249.z, x_1249.w, x_1249.x, x_1249.z) + vec4<f32>(x_1251.z, x_1251.w, x_1251.x, x_1251.z));
        let x_1255 : f32 = u_xlat9.y;
        u_xlat8.z = x_1255;
        let x_1258 : f32 = u_xlat6.y;
        u_xlat8.w = x_1258;
        let x_1261 : f32 = u_xlat10.y;
        u_xlat11.z = x_1261;
        let x_1264 : f32 = u_xlat56.y;
        u_xlat11.w = x_1264;
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1270 : vec3<f32> = (vec3<f32>(x_1266.z, x_1266.y, x_1266.w) + vec3<f32>(x_1268.z, x_1268.y, x_1268.w));
        let x_1271 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1275 : vec4<f32> = u_xlat7;
        let x_1277 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.z, x_1273.w) / vec3<f32>(x_1275.z, x_1275.w, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1286 : vec3<f32> = (vec3<f32>(x_1280.x, x_1280.y, x_1280.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1293 : vec3<f32> = (vec3<f32>(x_1289.z, x_1289.y, x_1289.w) / vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1298 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1304 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1306 : vec3<f32> = (vec3<f32>(x_1301.y, x_1301.x, x_1301.z) * vec3<f32>(x_1304.x, x_1304.x, x_1304.x));
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1312 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1314 : vec3<f32> = (vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(x_1312.y, x_1312.y, x_1312.y));
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
        let x_1318 : f32 = u_xlat9.x;
        u_xlat8.w = x_1318;
        let x_1320 : vec3<f32> = u_xlat30;
        let x_1323 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.y, x_1326.w, x_1326.x, x_1326.w));
        let x_1329 : vec3<f32> = u_xlat30;
        let x_1332 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat8;
        let x_1337 : vec2<f32> = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.z, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1341 : f32 = u_xlat8.y;
        u_xlat9.w = x_1341;
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.y, x_1343.z);
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1345.x, x_1344.x, x_1345.z, x_1344.y);
        let x_1347 : vec3<f32> = u_xlat30;
        let x_1350 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y) * vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y)) + vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1353.y));
        let x_1356 : vec3<f32> = u_xlat30;
        let x_1359 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y) * vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y)) + vec4<f32>(x_1362.w, x_1362.y, x_1362.w, x_1362.z));
        let x_1365 : vec3<f32> = u_xlat30;
        let x_1368 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y) * vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y)) + vec4<f32>(x_1371.x, x_1371.w, x_1371.z, x_1371.w));
        let x_1374 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1374.x, x_1374.x, x_1374.x, x_1374.y) * vec4<f32>(x_1376.z, x_1376.w, x_1376.y, x_1376.z));
        let x_1380 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1380.y, x_1380.y, x_1380.z, x_1380.z) * x_1382);
        let x_1385 : f32 = u_xlat6.z;
        let x_1387 : f32 = u_xlat7.y;
        u_xlat30.x = (x_1385 * x_1387);
        let x_1391 : vec4<f32> = u_xlat10;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1402 : vec3<f32> = txVec4;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
        u_xlat55 = x_1404;
        let x_1406 : vec4<f32> = u_xlat10;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.z, x_1406.w);
        let x_1409 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1417 : vec3<f32> = txVec5;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat80 = x_1419;
        let x_1420 : f32 = u_xlat80;
        let x_1422 : f32 = u_xlat13.y;
        u_xlat80 = (x_1420 * x_1422);
        let x_1425 : f32 = u_xlat13.x;
        let x_1426 : f32 = u_xlat55;
        let x_1428 : f32 = u_xlat80;
        u_xlat55 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat11;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec6;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat80 = x_1443;
        let x_1445 : f32 = u_xlat13.z;
        let x_1446 : f32 = u_xlat80;
        let x_1448 : f32 = u_xlat55;
        u_xlat55 = ((x_1445 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec7;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat80 = x_1463;
        let x_1465 : f32 = u_xlat13.w;
        let x_1466 : f32 = u_xlat80;
        let x_1468 : f32 = u_xlat55;
        u_xlat55 = ((x_1465 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat12;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.x, x_1471.y);
        let x_1474 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec8;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat80 = x_1483;
        let x_1485 : f32 = u_xlat14.x;
        let x_1486 : f32 = u_xlat80;
        let x_1488 : f32 = u_xlat55;
        u_xlat55 = ((x_1485 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat12;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.z, x_1491.w);
        let x_1494 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec9;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat80 = x_1503;
        let x_1505 : f32 = u_xlat14.y;
        let x_1506 : f32 = u_xlat80;
        let x_1508 : f32 = u_xlat55;
        u_xlat55 = ((x_1505 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat9;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec10;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat80 = x_1523;
        let x_1525 : f32 = u_xlat14.z;
        let x_1526 : f32 = u_xlat80;
        let x_1528 : f32 = u_xlat55;
        u_xlat55 = ((x_1525 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec11;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat80 = x_1543;
        let x_1545 : f32 = u_xlat14.w;
        let x_1546 : f32 = u_xlat80;
        let x_1548 : f32 = u_xlat55;
        u_xlat55 = ((x_1545 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.z, x_1551.w);
        let x_1554 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec12;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat80 = x_1563;
        let x_1565 : f32 = u_xlat30.x;
        let x_1566 : f32 = u_xlat80;
        let x_1568 : f32 = u_xlat55;
        u_xlat5.x = ((x_1565 * x_1566) + x_1568);
      } else {
        let x_1572 : vec4<f32> = vs_TEXCOORD8;
        let x_1575 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1578 : vec2<f32> = ((vec2<f32>(x_1572.x, x_1572.y) * vec2<f32>(x_1575.z, x_1575.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1579 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1578.x, x_1578.y, x_1579.z);
        let x_1581 : vec3<f32> = u_xlat30;
        let x_1583 : vec2<f32> = floor(vec2<f32>(x_1581.x, x_1581.y));
        let x_1584 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1583.x, x_1583.y, x_1584.z);
        let x_1586 : vec4<f32> = vs_TEXCOORD8;
        let x_1589 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1592 : vec3<f32> = u_xlat30;
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1589.z, x_1589.w)) + -(vec2<f32>(x_1592.x, x_1592.y)));
        let x_1596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
        let x_1598 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1598.x, x_1598.x, x_1598.y, x_1598.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1601 : vec4<f32> = u_xlat7;
        let x_1603 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1601.x, x_1601.x, x_1601.z, x_1601.z) * vec4<f32>(x_1603.x, x_1603.x, x_1603.z, x_1603.z));
        let x_1606 : vec4<f32> = u_xlat8;
        let x_1610 : vec2<f32> = (vec2<f32>(x_1606.y, x_1606.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1611 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1611.x, x_1610.x, x_1611.z, x_1610.y);
        let x_1613 : vec4<f32> = u_xlat8;
        let x_1616 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1613.x, x_1613.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1616.x, x_1616.y)));
        let x_1620 : vec4<f32> = u_xlat6;
        let x_1623 : vec2<f32> = (-(vec2<f32>(x_1620.x, x_1620.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1623.x, x_1624.y, x_1623.y, x_1624.w);
        let x_1626 : vec4<f32> = u_xlat6;
        let x_1628 : vec2<f32> = min(vec2<f32>(x_1626.x, x_1626.y), vec2<f32>(0.0f, 0.0f));
        let x_1629 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        let x_1631 : vec4<f32> = u_xlat8;
        let x_1634 : vec4<f32> = u_xlat8;
        let x_1637 : vec4<f32> = u_xlat7;
        let x_1639 : vec2<f32> = ((-(vec2<f32>(x_1631.x, x_1631.y)) * vec2<f32>(x_1634.x, x_1634.y)) + vec2<f32>(x_1637.x, x_1637.z));
        let x_1640 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1639.x, x_1640.y, x_1639.y, x_1640.w);
        let x_1642 : vec4<f32> = u_xlat6;
        let x_1644 : vec2<f32> = max(vec2<f32>(x_1642.x, x_1642.y), vec2<f32>(0.0f, 0.0f));
        let x_1645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1644.x, x_1644.y, x_1645.z, x_1645.w);
        let x_1647 : vec4<f32> = u_xlat8;
        let x_1650 : vec4<f32> = u_xlat8;
        let x_1653 : vec4<f32> = u_xlat7;
        let x_1655 : vec2<f32> = ((-(vec2<f32>(x_1647.x, x_1647.y)) * vec2<f32>(x_1650.x, x_1650.y)) + vec2<f32>(x_1653.y, x_1653.w));
        let x_1656 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1656.x, x_1655.x, x_1656.z, x_1655.y);
        let x_1658 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1658 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1662 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1662 * 0.08163200318813323975f);
        let x_1666 : vec2<f32> = u_xlat56;
        let x_1669 : vec2<f32> = (vec2<f32>(x_1666.y, x_1666.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1670 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1669.x, x_1669.y, x_1670.z, x_1670.w);
        let x_1672 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1672.x, x_1672.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1676 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1676 * 0.08163200318813323975f);
        let x_1680 : f32 = u_xlat10.y;
        u_xlat8.x = x_1680;
        let x_1682 : vec4<f32> = u_xlat6;
        let x_1689 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1690 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1690.x, x_1689.x, x_1690.z, x_1689.y);
        let x_1692 : vec4<f32> = u_xlat6;
        let x_1696 : vec2<f32> = ((vec2<f32>(x_1692.x, x_1692.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1696.x, x_1697.y, x_1696.y, x_1697.w);
        let x_1700 : f32 = u_xlat56.x;
        u_xlat7.y = x_1700;
        let x_1703 : f32 = u_xlat9.y;
        u_xlat7.w = x_1703;
        let x_1705 : vec4<f32> = u_xlat7;
        let x_1706 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1705 + x_1706);
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec2<f32> = ((vec2<f32>(x_1708.y, x_1708.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1712 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1712.x, x_1711.x, x_1712.z, x_1711.y);
        let x_1714 : vec4<f32> = u_xlat6;
        let x_1717 : vec2<f32> = ((vec2<f32>(x_1714.y, x_1714.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1718 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1717.x, x_1718.y, x_1717.y, x_1718.w);
        let x_1721 : f32 = u_xlat56.y;
        u_xlat9.y = x_1721;
        let x_1723 : vec4<f32> = u_xlat9;
        let x_1724 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1723 + x_1724);
        let x_1726 : vec4<f32> = u_xlat7;
        let x_1727 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1726 / x_1727);
        let x_1729 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1729 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1735 : vec4<f32> = u_xlat9;
        let x_1736 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1735 / x_1736);
        let x_1738 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1738 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1740 : vec4<f32> = u_xlat7;
        let x_1743 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1740.w, x_1740.x, x_1740.y, x_1740.z) * vec4<f32>(x_1743.x, x_1743.x, x_1743.x, x_1743.x));
        let x_1746 : vec4<f32> = u_xlat9;
        let x_1749 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1746.x, x_1746.w, x_1746.y, x_1746.z) * vec4<f32>(x_1749.y, x_1749.y, x_1749.y, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat7;
        let x_1753 : vec3<f32> = vec3<f32>(x_1752.y, x_1752.z, x_1752.w);
        let x_1754 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1753.x, x_1754.y, x_1753.y, x_1753.z);
        let x_1757 : f32 = u_xlat9.x;
        u_xlat10.y = x_1757;
        let x_1759 : vec3<f32> = u_xlat30;
        let x_1762 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1765 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1759.x, x_1759.y, x_1759.x, x_1759.y) * vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.y)) + vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1765.y));
        let x_1768 : vec3<f32> = u_xlat30;
        let x_1771 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1774 : vec4<f32> = u_xlat10;
        let x_1776 : vec2<f32> = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(x_1771.x, x_1771.y)) + vec2<f32>(x_1774.w, x_1774.y));
        let x_1777 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1776.x, x_1776.y, x_1777.z, x_1777.w);
        let x_1780 : f32 = u_xlat10.y;
        u_xlat7.y = x_1780;
        let x_1783 : f32 = u_xlat9.z;
        u_xlat10.y = x_1783;
        let x_1785 : vec3<f32> = u_xlat30;
        let x_1788 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1785.x, x_1785.y, x_1785.x, x_1785.y) * vec4<f32>(x_1788.x, x_1788.y, x_1788.x, x_1788.y)) + vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1791.y));
        let x_1795 : vec3<f32> = u_xlat30;
        let x_1798 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1801 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1795.x, x_1795.y) * vec2<f32>(x_1798.x, x_1798.y)) + vec2<f32>(x_1801.w, x_1801.y));
        let x_1805 : f32 = u_xlat10.y;
        u_xlat7.z = x_1805;
        let x_1807 : vec3<f32> = u_xlat30;
        let x_1810 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1813 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1807.x, x_1807.y, x_1807.x, x_1807.y) * vec4<f32>(x_1810.x, x_1810.y, x_1810.x, x_1810.y)) + vec4<f32>(x_1813.x, x_1813.y, x_1813.x, x_1813.z));
        let x_1817 : f32 = u_xlat9.w;
        u_xlat10.y = x_1817;
        let x_1820 : vec3<f32> = u_xlat30;
        let x_1823 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1826 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1820.x, x_1820.y, x_1820.x, x_1820.y) * vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.y)) + vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1826.y));
        let x_1830 : vec3<f32> = u_xlat30;
        let x_1833 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1833.x, x_1833.y)) + vec2<f32>(x_1836.w, x_1836.y));
        let x_1840 : f32 = u_xlat10.y;
        u_xlat7.w = x_1840;
        let x_1843 : vec3<f32> = u_xlat30;
        let x_1846 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1849 : vec4<f32> = u_xlat7;
        let x_1851 : vec2<f32> = ((vec2<f32>(x_1843.x, x_1843.y) * vec2<f32>(x_1846.x, x_1846.y)) + vec2<f32>(x_1849.x, x_1849.w));
        let x_1852 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1851.x, x_1851.y, x_1852.z, x_1852.w);
        let x_1854 : vec4<f32> = u_xlat10;
        let x_1855 : vec3<f32> = vec3<f32>(x_1854.x, x_1854.z, x_1854.w);
        let x_1856 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1855.x, x_1856.y, x_1855.y, x_1855.z);
        let x_1858 : vec3<f32> = u_xlat30;
        let x_1861 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1864 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1858.x, x_1858.y, x_1858.x, x_1858.y) * vec4<f32>(x_1861.x, x_1861.y, x_1861.x, x_1861.y)) + vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1864.y));
        let x_1868 : vec3<f32> = u_xlat30;
        let x_1871 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1874 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1868.x, x_1868.y) * vec2<f32>(x_1871.x, x_1871.y)) + vec2<f32>(x_1874.w, x_1874.y));
        let x_1878 : f32 = u_xlat7.x;
        u_xlat9.x = x_1878;
        let x_1880 : vec3<f32> = u_xlat30;
        let x_1883 : vec4<f32> = x_1014.x_MainLightShadowmapSize;
        let x_1886 : vec4<f32> = u_xlat9;
        let x_1888 : vec2<f32> = ((vec2<f32>(x_1880.x, x_1880.y) * vec2<f32>(x_1883.x, x_1883.y)) + vec2<f32>(x_1886.x, x_1886.y));
        let x_1889 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1888.x, x_1888.y, x_1889.z);
        let x_1892 : vec4<f32> = u_xlat6;
        let x_1894 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1892.x, x_1892.x, x_1892.x, x_1892.x) * x_1894);
        let x_1897 : vec4<f32> = u_xlat6;
        let x_1899 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1897.y, x_1897.y, x_1897.y, x_1897.y) * x_1899);
        let x_1902 : vec4<f32> = u_xlat6;
        let x_1904 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1902.z, x_1902.z, x_1902.z, x_1902.z) * x_1904);
        let x_1906 : vec4<f32> = u_xlat6;
        let x_1908 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1906.w, x_1906.w, x_1906.w, x_1906.w) * x_1908);
        let x_1911 : vec4<f32> = u_xlat11;
        let x_1912 : vec2<f32> = vec2<f32>(x_1911.x, x_1911.y);
        let x_1914 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
        let x_1921 : vec3<f32> = txVec13;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1921.xy, x_1921.z);
        u_xlat80 = x_1923;
        let x_1925 : vec4<f32> = u_xlat11;
        let x_1926 : vec2<f32> = vec2<f32>(x_1925.z, x_1925.w);
        let x_1928 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
        let x_1935 : vec3<f32> = txVec14;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1935.xy, x_1935.z);
        u_xlat7.x = x_1937;
        let x_1940 : f32 = u_xlat7.x;
        let x_1942 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1940 * x_1942);
        let x_1946 : f32 = u_xlat17.x;
        let x_1947 : f32 = u_xlat80;
        let x_1950 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1946 * x_1947) + x_1950);
        let x_1953 : vec4<f32> = u_xlat12;
        let x_1954 : vec2<f32> = vec2<f32>(x_1953.x, x_1953.y);
        let x_1956 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec15;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat7.x = x_1965;
        let x_1968 : f32 = u_xlat17.z;
        let x_1970 : f32 = u_xlat7.x;
        let x_1972 : f32 = u_xlat80;
        u_xlat80 = ((x_1968 * x_1970) + x_1972);
        let x_1975 : vec4<f32> = u_xlat14;
        let x_1976 : vec2<f32> = vec2<f32>(x_1975.x, x_1975.y);
        let x_1978 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec16;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1985.xy, x_1985.z);
        u_xlat7.x = x_1987;
        let x_1990 : f32 = u_xlat17.w;
        let x_1992 : f32 = u_xlat7.x;
        let x_1994 : f32 = u_xlat80;
        u_xlat80 = ((x_1990 * x_1992) + x_1994);
        let x_1997 : vec4<f32> = u_xlat13;
        let x_1998 : vec2<f32> = vec2<f32>(x_1997.x, x_1997.y);
        let x_2000 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec17;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2007.xy, x_2007.z);
        u_xlat7.x = x_2009;
        let x_2012 : f32 = u_xlat18.x;
        let x_2014 : f32 = u_xlat7.x;
        let x_2016 : f32 = u_xlat80;
        u_xlat80 = ((x_2012 * x_2014) + x_2016);
        let x_2019 : vec4<f32> = u_xlat13;
        let x_2020 : vec2<f32> = vec2<f32>(x_2019.z, x_2019.w);
        let x_2022 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec18;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2029.xy, x_2029.z);
        u_xlat7.x = x_2031;
        let x_2034 : f32 = u_xlat18.y;
        let x_2036 : f32 = u_xlat7.x;
        let x_2038 : f32 = u_xlat80;
        u_xlat80 = ((x_2034 * x_2036) + x_2038);
        let x_2041 : vec2<f32> = u_xlat62;
        let x_2043 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2041.x, x_2041.y, x_2043);
        let x_2050 : vec3<f32> = txVec19;
        let x_2052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2050.xy, x_2050.z);
        u_xlat7.x = x_2052;
        let x_2055 : f32 = u_xlat18.z;
        let x_2057 : f32 = u_xlat7.x;
        let x_2059 : f32 = u_xlat80;
        u_xlat80 = ((x_2055 * x_2057) + x_2059);
        let x_2062 : vec4<f32> = u_xlat14;
        let x_2063 : vec2<f32> = vec2<f32>(x_2062.z, x_2062.w);
        let x_2065 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2063.x, x_2063.y, x_2065);
        let x_2072 : vec3<f32> = txVec20;
        let x_2074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2072.xy, x_2072.z);
        u_xlat7.x = x_2074;
        let x_2077 : f32 = u_xlat18.w;
        let x_2079 : f32 = u_xlat7.x;
        let x_2081 : f32 = u_xlat80;
        u_xlat80 = ((x_2077 * x_2079) + x_2081);
        let x_2084 : vec4<f32> = u_xlat15;
        let x_2085 : vec2<f32> = vec2<f32>(x_2084.x, x_2084.y);
        let x_2087 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2085.x, x_2085.y, x_2087);
        let x_2094 : vec3<f32> = txVec21;
        let x_2096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2094.xy, x_2094.z);
        u_xlat7.x = x_2096;
        let x_2099 : f32 = u_xlat19.x;
        let x_2101 : f32 = u_xlat7.x;
        let x_2103 : f32 = u_xlat80;
        u_xlat80 = ((x_2099 * x_2101) + x_2103);
        let x_2106 : vec4<f32> = u_xlat15;
        let x_2107 : vec2<f32> = vec2<f32>(x_2106.z, x_2106.w);
        let x_2109 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2107.x, x_2107.y, x_2109);
        let x_2116 : vec3<f32> = txVec22;
        let x_2118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2116.xy, x_2116.z);
        u_xlat7.x = x_2118;
        let x_2121 : f32 = u_xlat19.y;
        let x_2123 : f32 = u_xlat7.x;
        let x_2125 : f32 = u_xlat80;
        u_xlat80 = ((x_2121 * x_2123) + x_2125);
        let x_2128 : vec2<f32> = u_xlat32;
        let x_2130 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
        let x_2137 : vec3<f32> = txVec23;
        let x_2139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
        u_xlat7.x = x_2139;
        let x_2142 : f32 = u_xlat19.z;
        let x_2144 : f32 = u_xlat7.x;
        let x_2146 : f32 = u_xlat80;
        u_xlat80 = ((x_2142 * x_2144) + x_2146);
        let x_2149 : vec4<f32> = u_xlat16;
        let x_2150 : vec2<f32> = vec2<f32>(x_2149.x, x_2149.y);
        let x_2152 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2150.x, x_2150.y, x_2152);
        let x_2159 : vec3<f32> = txVec24;
        let x_2161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2159.xy, x_2159.z);
        u_xlat7.x = x_2161;
        let x_2164 : f32 = u_xlat19.w;
        let x_2166 : f32 = u_xlat7.x;
        let x_2168 : f32 = u_xlat80;
        u_xlat80 = ((x_2164 * x_2166) + x_2168);
        let x_2171 : vec4<f32> = u_xlat10;
        let x_2172 : vec2<f32> = vec2<f32>(x_2171.x, x_2171.y);
        let x_2174 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2172.x, x_2172.y, x_2174);
        let x_2181 : vec3<f32> = txVec25;
        let x_2183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2181.xy, x_2181.z);
        u_xlat7.x = x_2183;
        let x_2186 : f32 = u_xlat6.x;
        let x_2188 : f32 = u_xlat7.x;
        let x_2190 : f32 = u_xlat80;
        u_xlat80 = ((x_2186 * x_2188) + x_2190);
        let x_2193 : vec4<f32> = u_xlat10;
        let x_2194 : vec2<f32> = vec2<f32>(x_2193.z, x_2193.w);
        let x_2196 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2194.x, x_2194.y, x_2196);
        let x_2203 : vec3<f32> = txVec26;
        let x_2205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2203.xy, x_2203.z);
        u_xlat6.x = x_2205;
        let x_2208 : f32 = u_xlat6.y;
        let x_2210 : f32 = u_xlat6.x;
        let x_2212 : f32 = u_xlat80;
        u_xlat80 = ((x_2208 * x_2210) + x_2212);
        let x_2215 : vec2<f32> = u_xlat59;
        let x_2217 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2215.x, x_2215.y, x_2217);
        let x_2224 : vec3<f32> = txVec27;
        let x_2226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2224.xy, x_2224.z);
        u_xlat6.x = x_2226;
        let x_2229 : f32 = u_xlat6.z;
        let x_2231 : f32 = u_xlat6.x;
        let x_2233 : f32 = u_xlat80;
        u_xlat80 = ((x_2229 * x_2231) + x_2233);
        let x_2236 : vec3<f32> = u_xlat30;
        let x_2237 : vec2<f32> = vec2<f32>(x_2236.x, x_2236.y);
        let x_2239 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2237.x, x_2237.y, x_2239);
        let x_2246 : vec3<f32> = txVec28;
        let x_2248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2246.xy, x_2246.z);
        u_xlat30.x = x_2248;
        let x_2251 : f32 = u_xlat6.w;
        let x_2253 : f32 = u_xlat30.x;
        let x_2255 : f32 = u_xlat80;
        u_xlat5.x = ((x_2251 * x_2253) + x_2255);
      }
    }
  } else {
    let x_2260 : vec4<f32> = vs_TEXCOORD8;
    let x_2261 : vec2<f32> = vec2<f32>(x_2260.x, x_2260.y);
    let x_2263 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2261.x, x_2261.y, x_2263);
    let x_2270 : vec3<f32> = txVec29;
    let x_2272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2270.xy, x_2270.z);
    u_xlat5.x = x_2272;
  }
  let x_2275 : f32 = x_1014.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_2275) + 1.0f);
  let x_2280 : f32 = u_xlat5.x;
  let x_2282 : f32 = x_1014.x_MainLightShadowParams.x;
  let x_2285 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_2280 * x_2282) + x_2285);
  let x_2289 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_2289);
  let x_2293 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_2293 >= 1.0f);
  let x_2295 : bool = u_xlatb55;
  let x_2296 : bool = u_xlatb30;
  u_xlatb30 = (x_2295 | x_2296);
  let x_2298 : bool = u_xlatb30;
  if (x_2298) {
    x_2300 = 1.0f;
  } else {
    let x_2305 : f32 = u_xlat5.x;
    x_2300 = x_2305;
  }
  let x_2306 : f32 = x_2300;
  u_xlat5.x = x_2306;
  let x_2308 : vec3<f32> = vs_TEXCOORD7;
  let x_2311 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2308 + -(x_2311));
  let x_2314 : vec3<f32> = u_xlat30;
  let x_2315 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2314, x_2315);
  let x_2319 : f32 = u_xlat30.x;
  let x_2321 : f32 = x_1014.x_MainLightShadowParams.z;
  let x_2324 : f32 = x_1014.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2319 * x_2321) + x_2324);
  let x_2326 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2326, 0.0f, 1.0f);
  let x_2329 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_2329) + 1.0f);
  let x_2332 : f32 = u_xlat55;
  let x_2333 : f32 = u_xlat80;
  let x_2336 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2332 * x_2333) + x_2336);
  let x_2340 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2340;
  let x_2343 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2343;
  let x_2346 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2346;
  let x_2348 : vec4<f32> = u_xlat6;
  let x_2351 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(vec3<f32>(x_2348.x, x_2348.y, x_2348.z)), vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
  let x_2354 : f32 = u_xlat55;
  let x_2355 : f32 = u_xlat55;
  u_xlat55 = (x_2354 + x_2355);
  let x_2357 : vec4<f32> = u_xlat1;
  let x_2359 : f32 = u_xlat55;
  let x_2363 : vec4<f32> = u_xlat6;
  let x_2366 : vec3<f32> = ((vec3<f32>(x_2357.x, x_2357.y, x_2357.z) * -(vec3<f32>(x_2359, x_2359, x_2359))) + -(vec3<f32>(x_2363.x, x_2363.y, x_2363.z)));
  let x_2367 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2367.w);
  let x_2369 : vec4<f32> = u_xlat1;
  let x_2371 : vec4<f32> = u_xlat6;
  u_xlat55 = dot(vec3<f32>(x_2369.x, x_2369.y, x_2369.z), vec3<f32>(x_2371.x, x_2371.y, x_2371.z));
  let x_2374 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2374, 0.0f, 1.0f);
  let x_2376 : f32 = u_xlat55;
  u_xlat55 = (-(x_2376) + 1.0f);
  let x_2379 : f32 = u_xlat55;
  let x_2380 : f32 = u_xlat55;
  u_xlat55 = (x_2379 * x_2380);
  let x_2382 : f32 = u_xlat55;
  let x_2383 : f32 = u_xlat55;
  u_xlat55 = (x_2382 * x_2383);
  let x_2386 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2386) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2393 : f32 = u_xlat0.x;
  let x_2394 : f32 = u_xlat80;
  u_xlat0.x = (x_2393 * x_2394);
  let x_2398 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2398 * 6.0f);
  let x_2410 : vec4<f32> = u_xlat7;
  let x_2413 : f32 = u_xlat0.x;
  let x_2414 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2410.x, x_2410.y, x_2410.z), x_2413);
  u_xlat7 = x_2414;
  let x_2416 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2416 + -1.0f);
  let x_2420 : f32 = x_876.unity_SpecCube0_HDR.w;
  let x_2422 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2420 * x_2422) + 1.0f);
  let x_2427 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2427, 0.0f);
  let x_2431 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2431);
  let x_2435 : f32 = u_xlat0.x;
  let x_2437 : f32 = x_876.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2435 * x_2437);
  let x_2441 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2441);
  let x_2445 : f32 = u_xlat0.x;
  let x_2447 : f32 = x_876.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2445 * x_2447);
  let x_2450 : vec4<f32> = u_xlat7;
  let x_2452 : vec3<f32> = u_xlat0;
  let x_2454 : vec3<f32> = (vec3<f32>(x_2450.x, x_2450.y, x_2450.z) * vec3<f32>(x_2452.x, x_2452.x, x_2452.x));
  let x_2455 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  let x_2457 : f32 = u_xlat50;
  let x_2459 : f32 = u_xlat50;
  let x_2463 : vec2<f32> = ((vec2<f32>(x_2457, x_2457) * vec2<f32>(x_2459, x_2459)) + vec2<f32>(-1.0f, 1.0f));
  let x_2464 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2463.x, x_2464.y, x_2463.y);
  let x_2467 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2467);
  let x_2469 : vec4<f32> = u_xlat4;
  let x_2472 : vec4<f32> = u_xlat3;
  let x_2474 : vec3<f32> = (-(vec3<f32>(x_2469.x, x_2469.y, x_2469.z)) + vec3<f32>(x_2472.x, x_2472.x, x_2472.x));
  let x_2475 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
  let x_2477 : f32 = u_xlat55;
  let x_2479 : vec4<f32> = u_xlat8;
  let x_2482 : vec4<f32> = u_xlat4;
  let x_2484 : vec3<f32> = ((vec3<f32>(x_2477, x_2477, x_2477) * vec3<f32>(x_2479.x, x_2479.y, x_2479.z)) + vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
  let x_2485 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
  let x_2487 : f32 = u_xlat50;
  let x_2489 : vec4<f32> = u_xlat8;
  let x_2491 : vec3<f32> = (vec3<f32>(x_2487, x_2487, x_2487) * vec3<f32>(x_2489.x, x_2489.y, x_2489.z));
  let x_2492 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
  let x_2494 : vec4<f32> = u_xlat7;
  let x_2496 : vec4<f32> = u_xlat8;
  let x_2498 : vec3<f32> = (vec3<f32>(x_2494.x, x_2494.y, x_2494.z) * vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
  let x_2499 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
  let x_2501 : vec3<f32> = u_xlat27;
  let x_2502 : vec3<f32> = u_xlat28;
  let x_2504 : vec4<f32> = u_xlat7;
  u_xlat27 = ((x_2501 * x_2502) + vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
  let x_2508 : f32 = u_xlat5.x;
  let x_2510 : f32 = x_876.unity_LightData.z;
  u_xlat50 = (x_2508 * x_2510);
  let x_2512 : vec4<f32> = u_xlat1;
  let x_2515 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2512.x, x_2512.y, x_2512.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2520 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2520, 0.0f, 1.0f);
  let x_2523 : f32 = u_xlat50;
  let x_2525 : f32 = u_xlat3.x;
  u_xlat50 = (x_2523 * x_2525);
  let x_2527 : f32 = u_xlat50;
  let x_2530 : vec4<f32> = x_111.x_MainLightColor;
  let x_2532 : vec3<f32> = (vec3<f32>(x_2527, x_2527, x_2527) * vec3<f32>(x_2530.x, x_2530.y, x_2530.z));
  let x_2533 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2532.x, x_2533.y, x_2532.y, x_2532.z);
  let x_2535 : vec4<f32> = u_xlat6;
  let x_2538 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2540 : vec3<f32> = (vec3<f32>(x_2535.x, x_2535.y, x_2535.z) + vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
  let x_2541 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
  let x_2543 : vec4<f32> = u_xlat7;
  let x_2545 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2543.x, x_2543.y, x_2543.z), vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
  let x_2548 : f32 = u_xlat50;
  u_xlat50 = max(x_2548, 1.17549435e-38f);
  let x_2551 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2551);
  let x_2553 : f32 = u_xlat50;
  let x_2555 : vec4<f32> = u_xlat7;
  let x_2557 : vec3<f32> = (vec3<f32>(x_2553, x_2553, x_2553) * vec3<f32>(x_2555.x, x_2555.y, x_2555.z));
  let x_2558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
  let x_2560 : vec4<f32> = u_xlat1;
  let x_2562 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2560.x, x_2560.y, x_2560.z), vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
  let x_2565 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2565, 0.0f, 1.0f);
  let x_2568 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2570 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2568.x, x_2568.y, x_2568.z), vec3<f32>(x_2570.x, x_2570.y, x_2570.z));
  let x_2575 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2575, 0.0f, 1.0f);
  let x_2578 : f32 = u_xlat50;
  let x_2579 : f32 = u_xlat50;
  u_xlat50 = (x_2578 * x_2579);
  let x_2581 : f32 = u_xlat50;
  let x_2583 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2581 * x_2583) + 1.00001001358032226562f);
  let x_2588 : f32 = u_xlat3.x;
  let x_2590 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2588 * x_2590);
  let x_2593 : f32 = u_xlat50;
  let x_2594 : f32 = u_xlat50;
  u_xlat50 = (x_2593 * x_2594);
  let x_2597 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2597, 0.10000000149011611938f);
  let x_2601 : f32 = u_xlat50;
  let x_2603 : f32 = u_xlat3.x;
  u_xlat50 = (x_2601 * x_2603);
  let x_2605 : f32 = u_xlat79;
  let x_2606 : f32 = u_xlat50;
  u_xlat50 = (x_2605 * x_2606);
  let x_2608 : f32 = u_xlat76;
  let x_2609 : f32 = u_xlat50;
  u_xlat50 = (x_2608 / x_2609);
  let x_2611 : vec4<f32> = u_xlat4;
  let x_2613 : f32 = u_xlat50;
  let x_2616 : vec3<f32> = u_xlat28;
  let x_2617 : vec3<f32> = ((vec3<f32>(x_2611.x, x_2611.y, x_2611.z) * vec3<f32>(x_2613, x_2613, x_2613)) + x_2616);
  let x_2618 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
  let x_2620 : vec4<f32> = u_xlat5;
  let x_2622 : vec4<f32> = u_xlat7;
  let x_2624 : vec3<f32> = (vec3<f32>(x_2620.x, x_2620.z, x_2620.w) * vec3<f32>(x_2622.x, x_2622.y, x_2622.z));
  let x_2625 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2624.x, x_2625.y, x_2624.y, x_2624.z);
  let x_2628 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2630 : f32 = x_876.unity_LightData.y;
  u_xlat50 = min(x_2628, x_2630);
  let x_2634 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2634));
  let x_2638 : f32 = u_xlat30.x;
  let x_2640 : f32 = x_1014.x_AdditionalShadowFadeParams.x;
  let x_2643 : f32 = x_1014.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2638 * x_2640) + x_2643);
  let x_2647 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2647, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2660 : u32 = u_xlatu_loop_1;
    let x_2661 : u32 = u_xlatu50;
    if ((x_2660 < x_2661)) {
    } else {
      break;
    }
    let x_2664 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2664 >> 2u);
    let x_2668 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2668 & 3u));
    let x_2672 : u32 = u_xlatu81;
    let x_2675 : vec4<f32> = x_876.unity_LightIndices[bitcast<i32>(x_2672)];
    let x_2685 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2690 : vec4<u32> = indexable[x_2685];
    u_xlat81 = dot(x_2675, bitcast<vec4<f32>>(x_2690));
    let x_2694 : f32 = u_xlat81;
    u_xlati81 = i32(x_2694);
    let x_2696 : vec3<f32> = vs_TEXCOORD7;
    let x_2707 : i32 = u_xlati81;
    let x_2709 : vec4<f32> = x_2706.x_AdditionalLightsPosition[x_2707];
    let x_2712 : i32 = u_xlati81;
    let x_2714 : vec4<f32> = x_2706.x_AdditionalLightsPosition[x_2712];
    let x_2716 : vec3<f32> = ((-(x_2696) * vec3<f32>(x_2709.w, x_2709.w, x_2709.w)) + vec3<f32>(x_2714.x, x_2714.y, x_2714.z));
    let x_2717 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2717.w);
    let x_2720 : vec4<f32> = u_xlat8;
    let x_2722 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2720.x, x_2720.y, x_2720.z), vec3<f32>(x_2722.x, x_2722.y, x_2722.z));
    let x_2725 : f32 = u_xlat82;
    u_xlat82 = max(x_2725, 0.00006103515625f);
    let x_2728 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2728);
    let x_2730 : f32 = u_xlat83;
    let x_2732 : vec4<f32> = u_xlat8;
    let x_2734 : vec3<f32> = (vec3<f32>(x_2730, x_2730, x_2730) * vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
    let x_2735 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
    let x_2738 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2738);
    let x_2740 : f32 = u_xlat82;
    let x_2741 : i32 = u_xlati81;
    let x_2743 : f32 = x_2706.x_AdditionalLightsAttenuation[x_2741].x;
    u_xlat82 = (x_2740 * x_2743);
    let x_2745 : f32 = u_xlat82;
    let x_2747 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2745) * x_2747) + 1.0f);
    let x_2750 : f32 = u_xlat82;
    u_xlat82 = max(x_2750, 0.0f);
    let x_2752 : f32 = u_xlat82;
    let x_2753 : f32 = u_xlat82;
    u_xlat82 = (x_2752 * x_2753);
    let x_2755 : f32 = u_xlat82;
    let x_2756 : f32 = u_xlat84;
    u_xlat82 = (x_2755 * x_2756);
    let x_2758 : i32 = u_xlati81;
    let x_2760 : vec4<f32> = x_2706.x_AdditionalLightsSpotDir[x_2758];
    let x_2762 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2760.x, x_2760.y, x_2760.z), vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : f32 = u_xlat84;
    let x_2766 : i32 = u_xlati81;
    let x_2768 : f32 = x_2706.x_AdditionalLightsAttenuation[x_2766].z;
    let x_2770 : i32 = u_xlati81;
    let x_2772 : f32 = x_2706.x_AdditionalLightsAttenuation[x_2770].w;
    u_xlat84 = ((x_2765 * x_2768) + x_2772);
    let x_2774 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2774, 0.0f, 1.0f);
    let x_2776 : f32 = u_xlat84;
    let x_2777 : f32 = u_xlat84;
    u_xlat84 = (x_2776 * x_2777);
    let x_2779 : f32 = u_xlat82;
    let x_2780 : f32 = u_xlat84;
    u_xlat82 = (x_2779 * x_2780);
    let x_2783 : i32 = u_xlati81;
    let x_2785 : f32 = x_1014.x_AdditionalShadowParams[x_2783].w;
    u_xlati84 = i32(x_2785);
    let x_2790 : i32 = u_xlati84;
    u_xlatb10.x = (x_2790 >= 0i);
    let x_2794 : bool = u_xlatb10.x;
    if (x_2794) {
      let x_2798 : i32 = u_xlati81;
      let x_2800 : f32 = x_1014.x_AdditionalShadowParams[x_2798].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2800, x_2800, x_2800, x_2800))));
      let x_2806 : bool = u_xlatb10.x;
      if (x_2806) {
        let x_2809 : vec4<f32> = u_xlat9;
        let x_2812 : vec4<f32> = u_xlat9;
        let x_2815 : vec4<bool> = (abs(vec4<f32>(x_2809.z, x_2809.z, x_2809.y, x_2809.z)) >= abs(vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.x)));
        u_xlatb10 = vec3<bool>(x_2815.x, x_2815.y, x_2815.z);
        let x_2818 : bool = u_xlatb10.y;
        let x_2820 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2818 & x_2820);
        let x_2824 : vec4<f32> = u_xlat9;
        let x_2827 : vec4<bool> = (-(vec4<f32>(x_2824.z, x_2824.y, x_2824.x, x_2824.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2827.x, x_2827.y, x_2827.z);
        let x_2831 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2831);
        let x_2836 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2836);
        let x_2841 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2841);
        let x_2846 : bool = u_xlatb10.z;
        if (x_2846) {
          let x_2851 : f32 = u_xlat35.z;
          x_2847 = x_2851;
        } else {
          let x_2854 : f32 = u_xlat11.x;
          x_2847 = x_2854;
        }
        let x_2855 : f32 = x_2847;
        u_xlat60 = x_2855;
        let x_2857 : bool = u_xlatb10.x;
        if (x_2857) {
          let x_2862 : f32 = u_xlat35.x;
          x_2858 = x_2862;
        } else {
          let x_2864 : f32 = u_xlat60;
          x_2858 = x_2864;
        }
        let x_2865 : f32 = x_2858;
        u_xlat10.x = x_2865;
        let x_2867 : i32 = u_xlati81;
        let x_2869 : f32 = x_1014.x_AdditionalShadowParams[x_2867].w;
        u_xlat35.x = trunc(x_2869);
        let x_2873 : f32 = u_xlat10.x;
        let x_2875 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2873 + x_2875);
        let x_2879 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2879);
      }
      let x_2881 : i32 = u_xlati84;
      u_xlati84 = (x_2881 << bitcast<u32>(2i));
      let x_2883 : vec3<f32> = vs_TEXCOORD7;
      let x_2885 : i32 = u_xlati84;
      let x_2888 : i32 = u_xlati84;
      let x_2892 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[((x_2885 + 1i) / 4i)][((x_2888 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2883.y, x_2883.y, x_2883.y, x_2883.y) * x_2892);
      let x_2894 : i32 = u_xlati84;
      let x_2896 : i32 = u_xlati84;
      let x_2899 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[(x_2894 / 4i)][(x_2896 % 4i)];
      let x_2900 : vec3<f32> = vs_TEXCOORD7;
      let x_2903 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2899 * vec4<f32>(x_2900.x, x_2900.x, x_2900.x, x_2900.x)) + x_2903);
      let x_2905 : i32 = u_xlati84;
      let x_2908 : i32 = u_xlati84;
      let x_2912 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[((x_2905 + 2i) / 4i)][((x_2908 + 2i) % 4i)];
      let x_2913 : vec3<f32> = vs_TEXCOORD7;
      let x_2916 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2912 * vec4<f32>(x_2913.z, x_2913.z, x_2913.z, x_2913.z)) + x_2916);
      let x_2918 : vec4<f32> = u_xlat10;
      let x_2919 : i32 = u_xlati84;
      let x_2922 : i32 = u_xlati84;
      let x_2926 : vec4<f32> = x_1014.x_AdditionalLightsWorldToShadow[((x_2919 + 3i) / 4i)][((x_2922 + 3i) % 4i)];
      u_xlat10 = (x_2918 + x_2926);
      let x_2928 : vec4<f32> = u_xlat10;
      let x_2930 : vec4<f32> = u_xlat10;
      let x_2932 : vec3<f32> = (vec3<f32>(x_2928.x, x_2928.y, x_2928.z) / vec3<f32>(x_2930.w, x_2930.w, x_2930.w));
      let x_2933 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2933.w);
      let x_2936 : i32 = u_xlati81;
      let x_2938 : f32 = x_1014.x_AdditionalShadowParams[x_2936].y;
      u_xlatb84 = (0.0f < x_2938);
      let x_2940 : bool = u_xlatb84;
      if (x_2940) {
        let x_2943 : i32 = u_xlati81;
        let x_2945 : f32 = x_1014.x_AdditionalShadowParams[x_2943].y;
        u_xlatb84 = (1.0f == x_2945);
        let x_2947 : bool = u_xlatb84;
        if (x_2947) {
          let x_2950 : vec4<f32> = u_xlat10;
          let x_2953 : vec4<f32> = x_1014.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y) + x_2953);
          let x_2956 : vec4<f32> = u_xlat11;
          let x_2957 : vec2<f32> = vec2<f32>(x_2956.x, x_2956.y);
          let x_2959 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2957.x, x_2957.y, x_2959);
          let x_2967 : vec3<f32> = txVec30;
          let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
          u_xlat12.x = x_2969;
          let x_2972 : vec4<f32> = u_xlat11;
          let x_2973 : vec2<f32> = vec2<f32>(x_2972.z, x_2972.w);
          let x_2975 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2973.x, x_2973.y, x_2975);
          let x_2982 : vec3<f32> = txVec31;
          let x_2984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2982.xy, x_2982.z);
          u_xlat12.y = x_2984;
          let x_2986 : vec4<f32> = u_xlat10;
          let x_2989 : vec4<f32> = x_1014.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2986.x, x_2986.y, x_2986.x, x_2986.y) + x_2989);
          let x_2992 : vec4<f32> = u_xlat11;
          let x_2993 : vec2<f32> = vec2<f32>(x_2992.x, x_2992.y);
          let x_2995 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2993.x, x_2993.y, x_2995);
          let x_3002 : vec3<f32> = txVec32;
          let x_3004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3002.xy, x_3002.z);
          u_xlat12.z = x_3004;
          let x_3007 : vec4<f32> = u_xlat11;
          let x_3008 : vec2<f32> = vec2<f32>(x_3007.z, x_3007.w);
          let x_3010 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
          let x_3017 : vec3<f32> = txVec33;
          let x_3019 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
          u_xlat12.w = x_3019;
          let x_3021 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3021, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3025 : i32 = u_xlati81;
          let x_3027 : f32 = x_1014.x_AdditionalShadowParams[x_3025].y;
          u_xlatb85 = (2.0f == x_3027);
          let x_3029 : bool = u_xlatb85;
          if (x_3029) {
            let x_3032 : vec4<f32> = u_xlat10;
            let x_3035 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3038 : vec2<f32> = ((vec2<f32>(x_3032.x, x_3032.y) * vec2<f32>(x_3035.z, x_3035.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3039 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3038.x, x_3038.y, x_3039.z, x_3039.w);
            let x_3041 : vec4<f32> = u_xlat11;
            let x_3043 : vec2<f32> = floor(vec2<f32>(x_3041.x, x_3041.y));
            let x_3044 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3043.x, x_3043.y, x_3044.z, x_3044.w);
            let x_3047 : vec4<f32> = u_xlat10;
            let x_3050 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3053 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3047.x, x_3047.y) * vec2<f32>(x_3050.z, x_3050.w)) + -(vec2<f32>(x_3053.x, x_3053.y)));
            let x_3057 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3057.x, x_3057.x, x_3057.y, x_3057.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3060.x, x_3060.x, x_3060.z, x_3060.z) * vec4<f32>(x_3062.x, x_3062.x, x_3062.z, x_3062.z));
            let x_3065 : vec4<f32> = u_xlat13;
            let x_3067 : vec2<f32> = (vec2<f32>(x_3065.y, x_3065.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3068 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3067.x, x_3068.y, x_3067.y, x_3068.w);
            let x_3070 : vec4<f32> = u_xlat13;
            let x_3073 : vec2<f32> = u_xlat61;
            let x_3075 : vec2<f32> = ((vec2<f32>(x_3070.x, x_3070.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3073));
            let x_3076 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3075.x, x_3075.y, x_3076.z, x_3076.w);
            let x_3079 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3079) + vec2<f32>(1.0f, 1.0f));
            let x_3082 : vec2<f32> = u_xlat61;
            let x_3083 : vec2<f32> = min(x_3082, vec2<f32>(0.0f, 0.0f));
            let x_3084 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3083.x, x_3083.y, x_3084.z, x_3084.w);
            let x_3086 : vec4<f32> = u_xlat14;
            let x_3089 : vec4<f32> = u_xlat14;
            let x_3092 : vec2<f32> = u_xlat63;
            let x_3093 : vec2<f32> = ((-(vec2<f32>(x_3086.x, x_3086.y)) * vec2<f32>(x_3089.x, x_3089.y)) + x_3092);
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3096 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3096, vec2<f32>(0.0f, 0.0f));
            let x_3098 : vec2<f32> = u_xlat61;
            let x_3100 : vec2<f32> = u_xlat61;
            let x_3102 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3098) * x_3100) + vec2<f32>(x_3102.y, x_3102.w));
            let x_3105 : vec4<f32> = u_xlat14;
            let x_3107 : vec2<f32> = (vec2<f32>(x_3105.x, x_3105.y) + vec2<f32>(1.0f, 1.0f));
            let x_3108 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3107.x, x_3107.y, x_3108.z, x_3108.w);
            let x_3110 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3110 + vec2<f32>(1.0f, 1.0f));
            let x_3112 : vec4<f32> = u_xlat13;
            let x_3114 : vec2<f32> = (vec2<f32>(x_3112.x, x_3112.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3115 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
            let x_3117 : vec2<f32> = u_xlat63;
            let x_3118 : vec2<f32> = (x_3117 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3119 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3118.x, x_3118.y, x_3119.z, x_3119.w);
            let x_3121 : vec4<f32> = u_xlat14;
            let x_3123 : vec2<f32> = (vec2<f32>(x_3121.x, x_3121.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3124 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3123.x, x_3123.y, x_3124.z, x_3124.w);
            let x_3126 : vec2<f32> = u_xlat61;
            let x_3127 : vec2<f32> = (x_3126 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3128 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3127.x, x_3127.y, x_3128.z, x_3128.w);
            let x_3130 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3130.y, x_3130.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3134 : f32 = u_xlat14.x;
            u_xlat15.z = x_3134;
            let x_3137 : f32 = u_xlat61.x;
            u_xlat15.w = x_3137;
            let x_3140 : f32 = u_xlat16.x;
            u_xlat13.z = x_3140;
            let x_3143 : f32 = u_xlat12.x;
            u_xlat13.w = x_3143;
            let x_3145 : vec4<f32> = u_xlat13;
            let x_3147 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3145.z, x_3145.w, x_3145.x, x_3145.z) + vec4<f32>(x_3147.z, x_3147.w, x_3147.x, x_3147.z));
            let x_3151 : f32 = u_xlat15.y;
            u_xlat14.z = x_3151;
            let x_3154 : f32 = u_xlat61.y;
            u_xlat14.w = x_3154;
            let x_3157 : f32 = u_xlat13.y;
            u_xlat16.z = x_3157;
            let x_3160 : f32 = u_xlat12.z;
            u_xlat16.w = x_3160;
            let x_3162 : vec4<f32> = u_xlat14;
            let x_3164 : vec4<f32> = u_xlat16;
            let x_3166 : vec3<f32> = (vec3<f32>(x_3162.z, x_3162.y, x_3162.w) + vec3<f32>(x_3164.z, x_3164.y, x_3164.w));
            let x_3167 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3167.w);
            let x_3169 : vec4<f32> = u_xlat13;
            let x_3171 : vec4<f32> = u_xlat17;
            let x_3173 : vec3<f32> = (vec3<f32>(x_3169.x, x_3169.z, x_3169.w) / vec3<f32>(x_3171.z, x_3171.w, x_3171.y));
            let x_3174 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3173.x, x_3173.y, x_3173.z, x_3174.w);
            let x_3176 : vec4<f32> = u_xlat13;
            let x_3178 : vec3<f32> = (vec3<f32>(x_3176.x, x_3176.y, x_3176.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3179 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3178.x, x_3178.y, x_3178.z, x_3179.w);
            let x_3181 : vec4<f32> = u_xlat16;
            let x_3183 : vec4<f32> = u_xlat12;
            let x_3185 : vec3<f32> = (vec3<f32>(x_3181.z, x_3181.y, x_3181.w) / vec3<f32>(x_3183.x, x_3183.y, x_3183.z));
            let x_3186 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3185.x, x_3185.y, x_3185.z, x_3186.w);
            let x_3188 : vec4<f32> = u_xlat14;
            let x_3190 : vec3<f32> = (vec3<f32>(x_3188.x, x_3188.y, x_3188.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3191 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3190.x, x_3190.y, x_3190.z, x_3191.w);
            let x_3193 : vec4<f32> = u_xlat13;
            let x_3196 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3198 : vec3<f32> = (vec3<f32>(x_3193.y, x_3193.x, x_3193.z) * vec3<f32>(x_3196.x, x_3196.x, x_3196.x));
            let x_3199 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3198.x, x_3198.y, x_3198.z, x_3199.w);
            let x_3201 : vec4<f32> = u_xlat14;
            let x_3204 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3206 : vec3<f32> = (vec3<f32>(x_3201.x, x_3201.y, x_3201.z) * vec3<f32>(x_3204.y, x_3204.y, x_3204.y));
            let x_3207 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3206.x, x_3206.y, x_3206.z, x_3207.w);
            let x_3210 : f32 = u_xlat14.x;
            u_xlat13.w = x_3210;
            let x_3212 : vec4<f32> = u_xlat11;
            let x_3215 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3218 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3212.x, x_3212.y, x_3212.x, x_3212.y) * vec4<f32>(x_3215.x, x_3215.y, x_3215.x, x_3215.y)) + vec4<f32>(x_3218.y, x_3218.w, x_3218.x, x_3218.w));
            let x_3221 : vec4<f32> = u_xlat11;
            let x_3224 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3227 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3221.x, x_3221.y) * vec2<f32>(x_3224.x, x_3224.y)) + vec2<f32>(x_3227.z, x_3227.w));
            let x_3231 : f32 = u_xlat13.y;
            u_xlat14.w = x_3231;
            let x_3233 : vec4<f32> = u_xlat14;
            let x_3234 : vec2<f32> = vec2<f32>(x_3233.y, x_3233.z);
            let x_3235 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3235.x, x_3234.x, x_3235.z, x_3234.y);
            let x_3237 : vec4<f32> = u_xlat11;
            let x_3240 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3243 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3237.x, x_3237.y, x_3237.x, x_3237.y) * vec4<f32>(x_3240.x, x_3240.y, x_3240.x, x_3240.y)) + vec4<f32>(x_3243.x, x_3243.y, x_3243.z, x_3243.y));
            let x_3246 : vec4<f32> = u_xlat11;
            let x_3249 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3252 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3246.x, x_3246.y, x_3246.x, x_3246.y) * vec4<f32>(x_3249.x, x_3249.y, x_3249.x, x_3249.y)) + vec4<f32>(x_3252.w, x_3252.y, x_3252.w, x_3252.z));
            let x_3255 : vec4<f32> = u_xlat11;
            let x_3258 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3261 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3255.x, x_3255.y, x_3255.x, x_3255.y) * vec4<f32>(x_3258.x, x_3258.y, x_3258.x, x_3258.y)) + vec4<f32>(x_3261.x, x_3261.w, x_3261.z, x_3261.w));
            let x_3264 : vec4<f32> = u_xlat12;
            let x_3266 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3264.x, x_3264.x, x_3264.x, x_3264.y) * vec4<f32>(x_3266.z, x_3266.w, x_3266.y, x_3266.z));
            let x_3269 : vec4<f32> = u_xlat12;
            let x_3271 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3269.y, x_3269.y, x_3269.z, x_3269.z) * x_3271);
            let x_3275 : f32 = u_xlat12.z;
            let x_3277 : f32 = u_xlat17.y;
            u_xlat85 = (x_3275 * x_3277);
            let x_3280 : vec4<f32> = u_xlat15;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
            let x_3283 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3290 : vec3<f32> = txVec34;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat11.x = x_3292;
            let x_3295 : vec4<f32> = u_xlat15;
            let x_3296 : vec2<f32> = vec2<f32>(x_3295.z, x_3295.w);
            let x_3298 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3296.x, x_3296.y, x_3298);
            let x_3306 : vec3<f32> = txVec35;
            let x_3308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
            u_xlat36 = x_3308;
            let x_3309 : f32 = u_xlat36;
            let x_3311 : f32 = u_xlat18.y;
            u_xlat36 = (x_3309 * x_3311);
            let x_3314 : f32 = u_xlat18.x;
            let x_3316 : f32 = u_xlat11.x;
            let x_3318 : f32 = u_xlat36;
            u_xlat11.x = ((x_3314 * x_3316) + x_3318);
            let x_3322 : vec2<f32> = u_xlat61;
            let x_3324 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec36;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat36 = x_3333;
            let x_3335 : f32 = u_xlat18.z;
            let x_3336 : f32 = u_xlat36;
            let x_3339 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3335 * x_3336) + x_3339);
            let x_3343 : vec4<f32> = u_xlat14;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.x, x_3343.y);
            let x_3346 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec37;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat36 = x_3355;
            let x_3357 : f32 = u_xlat18.w;
            let x_3358 : f32 = u_xlat36;
            let x_3361 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3357 * x_3358) + x_3361);
            let x_3365 : vec4<f32> = u_xlat16;
            let x_3366 : vec2<f32> = vec2<f32>(x_3365.x, x_3365.y);
            let x_3368 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3366.x, x_3366.y, x_3368);
            let x_3375 : vec3<f32> = txVec38;
            let x_3377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3375.xy, x_3375.z);
            u_xlat36 = x_3377;
            let x_3379 : f32 = u_xlat19.x;
            let x_3380 : f32 = u_xlat36;
            let x_3383 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3379 * x_3380) + x_3383);
            let x_3387 : vec4<f32> = u_xlat16;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.z, x_3387.w);
            let x_3390 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec39;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat36 = x_3399;
            let x_3401 : f32 = u_xlat19.y;
            let x_3402 : f32 = u_xlat36;
            let x_3405 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3401 * x_3402) + x_3405);
            let x_3409 : vec4<f32> = u_xlat14;
            let x_3410 : vec2<f32> = vec2<f32>(x_3409.z, x_3409.w);
            let x_3412 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec40;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat36 = x_3421;
            let x_3423 : f32 = u_xlat19.z;
            let x_3424 : f32 = u_xlat36;
            let x_3427 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3423 * x_3424) + x_3427);
            let x_3431 : vec4<f32> = u_xlat13;
            let x_3432 : vec2<f32> = vec2<f32>(x_3431.x, x_3431.y);
            let x_3434 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3432.x, x_3432.y, x_3434);
            let x_3441 : vec3<f32> = txVec41;
            let x_3443 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3441.xy, x_3441.z);
            u_xlat36 = x_3443;
            let x_3445 : f32 = u_xlat19.w;
            let x_3446 : f32 = u_xlat36;
            let x_3449 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3445 * x_3446) + x_3449);
            let x_3453 : vec4<f32> = u_xlat13;
            let x_3454 : vec2<f32> = vec2<f32>(x_3453.z, x_3453.w);
            let x_3456 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3454.x, x_3454.y, x_3456);
            let x_3463 : vec3<f32> = txVec42;
            let x_3465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3463.xy, x_3463.z);
            u_xlat36 = x_3465;
            let x_3466 : f32 = u_xlat85;
            let x_3467 : f32 = u_xlat36;
            let x_3470 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3466 * x_3467) + x_3470);
          } else {
            let x_3473 : vec4<f32> = u_xlat10;
            let x_3476 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3479 : vec2<f32> = ((vec2<f32>(x_3473.x, x_3473.y) * vec2<f32>(x_3476.z, x_3476.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3480 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3479.x, x_3479.y, x_3480.z, x_3480.w);
            let x_3482 : vec4<f32> = u_xlat11;
            let x_3484 : vec2<f32> = floor(vec2<f32>(x_3482.x, x_3482.y));
            let x_3485 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3484.x, x_3484.y, x_3485.z, x_3485.w);
            let x_3487 : vec4<f32> = u_xlat10;
            let x_3490 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3487.x, x_3487.y) * vec2<f32>(x_3490.z, x_3490.w)) + -(vec2<f32>(x_3493.x, x_3493.y)));
            let x_3497 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3497.x, x_3497.x, x_3497.y, x_3497.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3500 : vec4<f32> = u_xlat12;
            let x_3502 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3500.x, x_3500.x, x_3500.z, x_3500.z) * vec4<f32>(x_3502.x, x_3502.x, x_3502.z, x_3502.z));
            let x_3505 : vec4<f32> = u_xlat13;
            let x_3507 : vec2<f32> = (vec2<f32>(x_3505.y, x_3505.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3508 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3508.x, x_3507.x, x_3508.z, x_3507.y);
            let x_3510 : vec4<f32> = u_xlat13;
            let x_3513 : vec2<f32> = u_xlat61;
            let x_3515 : vec2<f32> = ((vec2<f32>(x_3510.x, x_3510.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3513));
            let x_3516 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3515.x, x_3516.y, x_3515.y, x_3516.w);
            let x_3518 : vec2<f32> = u_xlat61;
            let x_3520 : vec2<f32> = (-(x_3518) + vec2<f32>(1.0f, 1.0f));
            let x_3521 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3520.x, x_3520.y, x_3521.z, x_3521.w);
            let x_3523 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3523, vec2<f32>(0.0f, 0.0f));
            let x_3525 : vec2<f32> = u_xlat63;
            let x_3527 : vec2<f32> = u_xlat63;
            let x_3529 : vec4<f32> = u_xlat13;
            let x_3531 : vec2<f32> = ((-(x_3525) * x_3527) + vec2<f32>(x_3529.x, x_3529.y));
            let x_3532 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
            let x_3534 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3534, vec2<f32>(0.0f, 0.0f));
            let x_3537 : vec2<f32> = u_xlat63;
            let x_3539 : vec2<f32> = u_xlat63;
            let x_3541 : vec4<f32> = u_xlat12;
            let x_3543 : vec2<f32> = ((-(x_3537) * x_3539) + vec2<f32>(x_3541.y, x_3541.w));
            let x_3544 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3543.x, x_3544.y, x_3543.y);
            let x_3546 : vec4<f32> = u_xlat13;
            let x_3548 : vec2<f32> = (vec2<f32>(x_3546.x, x_3546.y) + vec2<f32>(2.0f, 2.0f));
            let x_3549 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3548.x, x_3548.y, x_3549.z, x_3549.w);
            let x_3551 : vec3<f32> = u_xlat37;
            let x_3553 : vec2<f32> = (vec2<f32>(x_3551.x, x_3551.z) + vec2<f32>(2.0f, 2.0f));
            let x_3554 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3554.x, x_3553.x, x_3554.z, x_3553.y);
            let x_3557 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3557 * 0.08163200318813323975f);
            let x_3560 : vec4<f32> = u_xlat12;
            let x_3563 : vec3<f32> = (vec3<f32>(x_3560.z, x_3560.x, x_3560.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3564 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3563.x, x_3563.y, x_3563.z, x_3564.w);
            let x_3566 : vec4<f32> = u_xlat13;
            let x_3568 : vec2<f32> = (vec2<f32>(x_3566.x, x_3566.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3569 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3568.x, x_3568.y, x_3569.z, x_3569.w);
            let x_3572 : f32 = u_xlat16.y;
            u_xlat15.x = x_3572;
            let x_3574 : vec2<f32> = u_xlat61;
            let x_3577 : vec2<f32> = ((vec2<f32>(x_3574.x, x_3574.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3578 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3578.x, x_3577.x, x_3578.z, x_3577.y);
            let x_3580 : vec2<f32> = u_xlat61;
            let x_3583 : vec2<f32> = ((vec2<f32>(x_3580.x, x_3580.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3584 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3583.x, x_3584.y, x_3583.y, x_3584.w);
            let x_3587 : f32 = u_xlat12.x;
            u_xlat13.y = x_3587;
            let x_3590 : f32 = u_xlat14.y;
            u_xlat13.w = x_3590;
            let x_3592 : vec4<f32> = u_xlat13;
            let x_3593 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3592 + x_3593);
            let x_3595 : vec2<f32> = u_xlat61;
            let x_3598 : vec2<f32> = ((vec2<f32>(x_3595.y, x_3595.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3599 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3599.x, x_3598.x, x_3599.z, x_3598.y);
            let x_3601 : vec2<f32> = u_xlat61;
            let x_3604 : vec2<f32> = ((vec2<f32>(x_3601.y, x_3601.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3605 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3604.x, x_3605.y, x_3604.y, x_3605.w);
            let x_3608 : f32 = u_xlat12.y;
            u_xlat14.y = x_3608;
            let x_3610 : vec4<f32> = u_xlat14;
            let x_3611 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3610 + x_3611);
            let x_3613 : vec4<f32> = u_xlat13;
            let x_3614 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3613 / x_3614);
            let x_3616 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3616 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3618 : vec4<f32> = u_xlat14;
            let x_3619 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3618 / x_3619);
            let x_3621 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3621 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3623 : vec4<f32> = u_xlat13;
            let x_3626 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3623.w, x_3623.x, x_3623.y, x_3623.z) * vec4<f32>(x_3626.x, x_3626.x, x_3626.x, x_3626.x));
            let x_3629 : vec4<f32> = u_xlat14;
            let x_3632 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3629.x, x_3629.w, x_3629.y, x_3629.z) * vec4<f32>(x_3632.y, x_3632.y, x_3632.y, x_3632.y));
            let x_3635 : vec4<f32> = u_xlat13;
            let x_3636 : vec3<f32> = vec3<f32>(x_3635.y, x_3635.z, x_3635.w);
            let x_3637 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3636.x, x_3637.y, x_3636.y, x_3636.z);
            let x_3640 : f32 = u_xlat14.x;
            u_xlat16.y = x_3640;
            let x_3642 : vec4<f32> = u_xlat11;
            let x_3645 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3648 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3642.x, x_3642.y, x_3642.x, x_3642.y) * vec4<f32>(x_3645.x, x_3645.y, x_3645.x, x_3645.y)) + vec4<f32>(x_3648.x, x_3648.y, x_3648.z, x_3648.y));
            let x_3651 : vec4<f32> = u_xlat11;
            let x_3654 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3657 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3651.x, x_3651.y) * vec2<f32>(x_3654.x, x_3654.y)) + vec2<f32>(x_3657.w, x_3657.y));
            let x_3661 : f32 = u_xlat16.y;
            u_xlat13.y = x_3661;
            let x_3664 : f32 = u_xlat14.z;
            u_xlat16.y = x_3664;
            let x_3666 : vec4<f32> = u_xlat11;
            let x_3669 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3672 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3666.x, x_3666.y, x_3666.x, x_3666.y) * vec4<f32>(x_3669.x, x_3669.y, x_3669.x, x_3669.y)) + vec4<f32>(x_3672.x, x_3672.y, x_3672.z, x_3672.y));
            let x_3675 : vec4<f32> = u_xlat11;
            let x_3678 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3681 : vec4<f32> = u_xlat16;
            let x_3683 : vec2<f32> = ((vec2<f32>(x_3675.x, x_3675.y) * vec2<f32>(x_3678.x, x_3678.y)) + vec2<f32>(x_3681.w, x_3681.y));
            let x_3684 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3683.x, x_3683.y, x_3684.z, x_3684.w);
            let x_3687 : f32 = u_xlat16.y;
            u_xlat13.z = x_3687;
            let x_3690 : vec4<f32> = u_xlat11;
            let x_3693 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3696 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3690.x, x_3690.y, x_3690.x, x_3690.y) * vec4<f32>(x_3693.x, x_3693.y, x_3693.x, x_3693.y)) + vec4<f32>(x_3696.x, x_3696.y, x_3696.x, x_3696.z));
            let x_3700 : f32 = u_xlat14.w;
            u_xlat16.y = x_3700;
            let x_3703 : vec4<f32> = u_xlat11;
            let x_3706 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3709 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3703.x, x_3703.y, x_3703.x, x_3703.y) * vec4<f32>(x_3706.x, x_3706.y, x_3706.x, x_3706.y)) + vec4<f32>(x_3709.x, x_3709.y, x_3709.z, x_3709.y));
            let x_3713 : vec4<f32> = u_xlat11;
            let x_3716 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3719 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3713.x, x_3713.y) * vec2<f32>(x_3716.x, x_3716.y)) + vec2<f32>(x_3719.w, x_3719.y));
            let x_3723 : f32 = u_xlat16.y;
            u_xlat13.w = x_3723;
            let x_3726 : vec4<f32> = u_xlat11;
            let x_3729 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3732 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3726.x, x_3726.y) * vec2<f32>(x_3729.x, x_3729.y)) + vec2<f32>(x_3732.x, x_3732.w));
            let x_3735 : vec4<f32> = u_xlat16;
            let x_3736 : vec3<f32> = vec3<f32>(x_3735.x, x_3735.z, x_3735.w);
            let x_3737 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3736.x, x_3737.y, x_3736.y, x_3736.z);
            let x_3739 : vec4<f32> = u_xlat11;
            let x_3742 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3745 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3739.x, x_3739.y, x_3739.x, x_3739.y) * vec4<f32>(x_3742.x, x_3742.y, x_3742.x, x_3742.y)) + vec4<f32>(x_3745.x, x_3745.y, x_3745.z, x_3745.y));
            let x_3749 : vec4<f32> = u_xlat11;
            let x_3752 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3755 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3749.x, x_3749.y) * vec2<f32>(x_3752.x, x_3752.y)) + vec2<f32>(x_3755.w, x_3755.y));
            let x_3759 : f32 = u_xlat13.x;
            u_xlat14.x = x_3759;
            let x_3761 : vec4<f32> = u_xlat11;
            let x_3764 : vec4<f32> = x_1014.x_AdditionalShadowmapSize;
            let x_3767 : vec4<f32> = u_xlat14;
            let x_3769 : vec2<f32> = ((vec2<f32>(x_3761.x, x_3761.y) * vec2<f32>(x_3764.x, x_3764.y)) + vec2<f32>(x_3767.x, x_3767.y));
            let x_3770 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3769.x, x_3769.y, x_3770.z, x_3770.w);
            let x_3773 : vec4<f32> = u_xlat12;
            let x_3775 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3773.x, x_3773.x, x_3773.x, x_3773.x) * x_3775);
            let x_3778 : vec4<f32> = u_xlat12;
            let x_3780 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3778.y, x_3778.y, x_3778.y, x_3778.y) * x_3780);
            let x_3783 : vec4<f32> = u_xlat12;
            let x_3785 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3783.z, x_3783.z, x_3783.z, x_3783.z) * x_3785);
            let x_3787 : vec4<f32> = u_xlat12;
            let x_3789 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3787.w, x_3787.w, x_3787.w, x_3787.w) * x_3789);
            let x_3792 : vec4<f32> = u_xlat17;
            let x_3793 : vec2<f32> = vec2<f32>(x_3792.x, x_3792.y);
            let x_3795 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
            let x_3802 : vec3<f32> = txVec43;
            let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
            u_xlat85 = x_3804;
            let x_3806 : vec4<f32> = u_xlat17;
            let x_3807 : vec2<f32> = vec2<f32>(x_3806.z, x_3806.w);
            let x_3809 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3807.x, x_3807.y, x_3809);
            let x_3816 : vec3<f32> = txVec44;
            let x_3818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3816.xy, x_3816.z);
            u_xlat13.x = x_3818;
            let x_3821 : f32 = u_xlat13.x;
            let x_3823 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3821 * x_3823);
            let x_3827 : f32 = u_xlat22.x;
            let x_3828 : f32 = u_xlat85;
            let x_3831 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3827 * x_3828) + x_3831);
            let x_3834 : vec2<f32> = u_xlat61;
            let x_3836 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3834.x, x_3834.y, x_3836);
            let x_3843 : vec3<f32> = txVec45;
            let x_3845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3843.xy, x_3843.z);
            u_xlat61.x = x_3845;
            let x_3848 : f32 = u_xlat22.z;
            let x_3850 : f32 = u_xlat61.x;
            let x_3852 : f32 = u_xlat85;
            u_xlat85 = ((x_3848 * x_3850) + x_3852);
            let x_3855 : vec4<f32> = u_xlat20;
            let x_3856 : vec2<f32> = vec2<f32>(x_3855.x, x_3855.y);
            let x_3858 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3856.x, x_3856.y, x_3858);
            let x_3865 : vec3<f32> = txVec46;
            let x_3867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3865.xy, x_3865.z);
            u_xlat61.x = x_3867;
            let x_3870 : f32 = u_xlat22.w;
            let x_3872 : f32 = u_xlat61.x;
            let x_3874 : f32 = u_xlat85;
            u_xlat85 = ((x_3870 * x_3872) + x_3874);
            let x_3877 : vec4<f32> = u_xlat18;
            let x_3878 : vec2<f32> = vec2<f32>(x_3877.x, x_3877.y);
            let x_3880 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3878.x, x_3878.y, x_3880);
            let x_3887 : vec3<f32> = txVec47;
            let x_3889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3887.xy, x_3887.z);
            u_xlat61.x = x_3889;
            let x_3892 : f32 = u_xlat23.x;
            let x_3894 : f32 = u_xlat61.x;
            let x_3896 : f32 = u_xlat85;
            u_xlat85 = ((x_3892 * x_3894) + x_3896);
            let x_3899 : vec4<f32> = u_xlat18;
            let x_3900 : vec2<f32> = vec2<f32>(x_3899.z, x_3899.w);
            let x_3902 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3900.x, x_3900.y, x_3902);
            let x_3909 : vec3<f32> = txVec48;
            let x_3911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3909.xy, x_3909.z);
            u_xlat61.x = x_3911;
            let x_3914 : f32 = u_xlat23.y;
            let x_3916 : f32 = u_xlat61.x;
            let x_3918 : f32 = u_xlat85;
            u_xlat85 = ((x_3914 * x_3916) + x_3918);
            let x_3921 : vec4<f32> = u_xlat19;
            let x_3922 : vec2<f32> = vec2<f32>(x_3921.x, x_3921.y);
            let x_3924 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3922.x, x_3922.y, x_3924);
            let x_3931 : vec3<f32> = txVec49;
            let x_3933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3931.xy, x_3931.z);
            u_xlat61.x = x_3933;
            let x_3936 : f32 = u_xlat23.z;
            let x_3938 : f32 = u_xlat61.x;
            let x_3940 : f32 = u_xlat85;
            u_xlat85 = ((x_3936 * x_3938) + x_3940);
            let x_3943 : vec4<f32> = u_xlat20;
            let x_3944 : vec2<f32> = vec2<f32>(x_3943.z, x_3943.w);
            let x_3946 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3944.x, x_3944.y, x_3946);
            let x_3953 : vec3<f32> = txVec50;
            let x_3955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3953.xy, x_3953.z);
            u_xlat61.x = x_3955;
            let x_3958 : f32 = u_xlat23.w;
            let x_3960 : f32 = u_xlat61.x;
            let x_3962 : f32 = u_xlat85;
            u_xlat85 = ((x_3958 * x_3960) + x_3962);
            let x_3965 : vec4<f32> = u_xlat21;
            let x_3966 : vec2<f32> = vec2<f32>(x_3965.x, x_3965.y);
            let x_3968 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3966.x, x_3966.y, x_3968);
            let x_3975 : vec3<f32> = txVec51;
            let x_3977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3975.xy, x_3975.z);
            u_xlat61.x = x_3977;
            let x_3980 : f32 = u_xlat24.x;
            let x_3982 : f32 = u_xlat61.x;
            let x_3984 : f32 = u_xlat85;
            u_xlat85 = ((x_3980 * x_3982) + x_3984);
            let x_3987 : vec4<f32> = u_xlat21;
            let x_3988 : vec2<f32> = vec2<f32>(x_3987.z, x_3987.w);
            let x_3990 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3988.x, x_3988.y, x_3990);
            let x_3997 : vec3<f32> = txVec52;
            let x_3999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3997.xy, x_3997.z);
            u_xlat61.x = x_3999;
            let x_4002 : f32 = u_xlat24.y;
            let x_4004 : f32 = u_xlat61.x;
            let x_4006 : f32 = u_xlat85;
            u_xlat85 = ((x_4002 * x_4004) + x_4006);
            let x_4009 : vec2<f32> = u_xlat38;
            let x_4011 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4009.x, x_4009.y, x_4011);
            let x_4018 : vec3<f32> = txVec53;
            let x_4020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4018.xy, x_4018.z);
            u_xlat61.x = x_4020;
            let x_4023 : f32 = u_xlat24.z;
            let x_4025 : f32 = u_xlat61.x;
            let x_4027 : f32 = u_xlat85;
            u_xlat85 = ((x_4023 * x_4025) + x_4027);
            let x_4030 : vec2<f32> = u_xlat69;
            let x_4032 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4030.x, x_4030.y, x_4032);
            let x_4039 : vec3<f32> = txVec54;
            let x_4041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4039.xy, x_4039.z);
            u_xlat61.x = x_4041;
            let x_4044 : f32 = u_xlat24.w;
            let x_4046 : f32 = u_xlat61.x;
            let x_4048 : f32 = u_xlat85;
            u_xlat85 = ((x_4044 * x_4046) + x_4048);
            let x_4051 : vec4<f32> = u_xlat16;
            let x_4052 : vec2<f32> = vec2<f32>(x_4051.x, x_4051.y);
            let x_4054 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4052.x, x_4052.y, x_4054);
            let x_4061 : vec3<f32> = txVec55;
            let x_4063 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4061.xy, x_4061.z);
            u_xlat61.x = x_4063;
            let x_4066 : f32 = u_xlat12.x;
            let x_4068 : f32 = u_xlat61.x;
            let x_4070 : f32 = u_xlat85;
            u_xlat85 = ((x_4066 * x_4068) + x_4070);
            let x_4073 : vec4<f32> = u_xlat16;
            let x_4074 : vec2<f32> = vec2<f32>(x_4073.z, x_4073.w);
            let x_4076 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4074.x, x_4074.y, x_4076);
            let x_4083 : vec3<f32> = txVec56;
            let x_4085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4083.xy, x_4083.z);
            u_xlat61.x = x_4085;
            let x_4088 : f32 = u_xlat12.y;
            let x_4090 : f32 = u_xlat61.x;
            let x_4092 : f32 = u_xlat85;
            u_xlat85 = ((x_4088 * x_4090) + x_4092);
            let x_4095 : vec2<f32> = u_xlat64;
            let x_4097 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4095.x, x_4095.y, x_4097);
            let x_4104 : vec3<f32> = txVec57;
            let x_4106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4104.xy, x_4104.z);
            u_xlat61.x = x_4106;
            let x_4109 : f32 = u_xlat12.z;
            let x_4111 : f32 = u_xlat61.x;
            let x_4113 : f32 = u_xlat85;
            u_xlat85 = ((x_4109 * x_4111) + x_4113);
            let x_4116 : vec4<f32> = u_xlat11;
            let x_4117 : vec2<f32> = vec2<f32>(x_4116.x, x_4116.y);
            let x_4119 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4117.x, x_4117.y, x_4119);
            let x_4126 : vec3<f32> = txVec58;
            let x_4128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4126.xy, x_4126.z);
            u_xlat11.x = x_4128;
            let x_4131 : f32 = u_xlat12.w;
            let x_4133 : f32 = u_xlat11.x;
            let x_4135 : f32 = u_xlat85;
            u_xlat84 = ((x_4131 * x_4133) + x_4135);
          }
        }
      } else {
        let x_4139 : vec4<f32> = u_xlat10;
        let x_4140 : vec2<f32> = vec2<f32>(x_4139.x, x_4139.y);
        let x_4142 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4140.x, x_4140.y, x_4142);
        let x_4149 : vec3<f32> = txVec59;
        let x_4151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4149.xy, x_4149.z);
        u_xlat84 = x_4151;
      }
      let x_4152 : i32 = u_xlati81;
      let x_4154 : f32 = x_1014.x_AdditionalShadowParams[x_4152].x;
      u_xlat10.x = (1.0f + -(x_4154));
      let x_4158 : f32 = u_xlat84;
      let x_4159 : i32 = u_xlati81;
      let x_4161 : f32 = x_1014.x_AdditionalShadowParams[x_4159].x;
      let x_4164 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4158 * x_4161) + x_4164);
      let x_4167 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4167);
      let x_4172 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4172 >= 1.0f);
      let x_4174 : bool = u_xlatb35;
      let x_4176 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4174 | x_4176);
      let x_4180 : bool = u_xlatb10.x;
      let x_4181 : f32 = u_xlat84;
      u_xlat84 = select(x_4181, 1.0f, x_4180);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4184 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4184) + 1.0f);
    let x_4189 : f32 = u_xlat3.x;
    let x_4191 : f32 = u_xlat10.x;
    let x_4193 : f32 = u_xlat84;
    u_xlat84 = ((x_4189 * x_4191) + x_4193);
    let x_4195 : f32 = u_xlat82;
    let x_4196 : f32 = u_xlat84;
    u_xlat82 = (x_4195 * x_4196);
    let x_4198 : vec4<f32> = u_xlat1;
    let x_4200 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4198.x, x_4198.y, x_4198.z), vec3<f32>(x_4200.x, x_4200.y, x_4200.z));
    let x_4203 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4203, 0.0f, 1.0f);
    let x_4205 : f32 = u_xlat82;
    let x_4206 : f32 = u_xlat84;
    u_xlat82 = (x_4205 * x_4206);
    let x_4208 : f32 = u_xlat82;
    let x_4210 : i32 = u_xlati81;
    let x_4212 : vec4<f32> = x_2706.x_AdditionalLightsColor[x_4210];
    let x_4214 : vec3<f32> = (vec3<f32>(x_4208, x_4208, x_4208) * vec3<f32>(x_4212.x, x_4212.y, x_4212.z));
    let x_4215 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4214.x, x_4214.y, x_4214.z, x_4215.w);
    let x_4217 : vec4<f32> = u_xlat8;
    let x_4219 : f32 = u_xlat83;
    let x_4222 : vec4<f32> = u_xlat6;
    let x_4224 : vec3<f32> = ((vec3<f32>(x_4217.x, x_4217.y, x_4217.z) * vec3<f32>(x_4219, x_4219, x_4219)) + vec3<f32>(x_4222.x, x_4222.y, x_4222.z));
    let x_4225 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4224.x, x_4224.y, x_4224.z, x_4225.w);
    let x_4227 : vec4<f32> = u_xlat8;
    let x_4229 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4227.x, x_4227.y, x_4227.z), vec3<f32>(x_4229.x, x_4229.y, x_4229.z));
    let x_4232 : f32 = u_xlat81;
    u_xlat81 = max(x_4232, 1.17549435e-38f);
    let x_4234 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4234);
    let x_4236 : f32 = u_xlat81;
    let x_4238 : vec4<f32> = u_xlat8;
    let x_4240 : vec3<f32> = (vec3<f32>(x_4236, x_4236, x_4236) * vec3<f32>(x_4238.x, x_4238.y, x_4238.z));
    let x_4241 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4240.x, x_4240.y, x_4240.z, x_4241.w);
    let x_4243 : vec4<f32> = u_xlat1;
    let x_4245 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4243.x, x_4243.y, x_4243.z), vec3<f32>(x_4245.x, x_4245.y, x_4245.z));
    let x_4248 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4248, 0.0f, 1.0f);
    let x_4250 : vec4<f32> = u_xlat9;
    let x_4252 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4250.x, x_4250.y, x_4250.z), vec3<f32>(x_4252.x, x_4252.y, x_4252.z));
    let x_4255 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4255, 0.0f, 1.0f);
    let x_4257 : f32 = u_xlat81;
    let x_4258 : f32 = u_xlat81;
    u_xlat81 = (x_4257 * x_4258);
    let x_4260 : f32 = u_xlat81;
    let x_4262 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4260 * x_4262) + 1.00001001358032226562f);
    let x_4265 : f32 = u_xlat82;
    let x_4266 : f32 = u_xlat82;
    u_xlat82 = (x_4265 * x_4266);
    let x_4268 : f32 = u_xlat81;
    let x_4269 : f32 = u_xlat81;
    u_xlat81 = (x_4268 * x_4269);
    let x_4271 : f32 = u_xlat82;
    u_xlat82 = max(x_4271, 0.10000000149011611938f);
    let x_4273 : f32 = u_xlat81;
    let x_4274 : f32 = u_xlat82;
    u_xlat81 = (x_4273 * x_4274);
    let x_4276 : f32 = u_xlat79;
    let x_4277 : f32 = u_xlat81;
    u_xlat81 = (x_4276 * x_4277);
    let x_4279 : f32 = u_xlat76;
    let x_4280 : f32 = u_xlat81;
    u_xlat81 = (x_4279 / x_4280);
    let x_4282 : vec4<f32> = u_xlat4;
    let x_4284 : f32 = u_xlat81;
    let x_4287 : vec3<f32> = u_xlat28;
    let x_4288 : vec3<f32> = ((vec3<f32>(x_4282.x, x_4282.y, x_4282.z) * vec3<f32>(x_4284, x_4284, x_4284)) + x_4287);
    let x_4289 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4288.x, x_4288.y, x_4288.z, x_4289.w);
    let x_4291 : vec4<f32> = u_xlat8;
    let x_4293 : vec4<f32> = u_xlat10;
    let x_4296 : vec4<f32> = u_xlat7;
    let x_4298 : vec3<f32> = ((vec3<f32>(x_4291.x, x_4291.y, x_4291.z) * vec3<f32>(x_4293.x, x_4293.y, x_4293.z)) + vec3<f32>(x_4296.x, x_4296.y, x_4296.z));
    let x_4299 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4298.x, x_4298.y, x_4298.z, x_4299.w);

    continuing {
      let x_4301 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4301 + bitcast<u32>(1i));
    }
  }
  let x_4303 : vec3<f32> = u_xlat27;
  let x_4304 : f32 = u_xlat25;
  let x_4307 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_4303 * vec3<f32>(x_4304, x_4304, x_4304)) + vec3<f32>(x_4307.x, x_4307.z, x_4307.w));
  let x_4310 : vec4<f32> = u_xlat7;
  let x_4312 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4310.x, x_4310.y, x_4310.z) + x_4312);
  let x_4315 : f32 = u_xlat2.x;
  let x_4317 : f32 = u_xlat2.x;
  u_xlat1.x = (x_4315 * -(x_4317));
  let x_4322 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4322);
  let x_4325 : vec3<f32> = u_xlat0;
  let x_4326 : f32 = u_xlat75;
  let x_4330 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_4325 * vec3<f32>(x_4326, x_4326, x_4326)) + -(vec3<f32>(x_4330.x, x_4330.y, x_4330.z)));
  let x_4336 : vec4<f32> = u_xlat1;
  let x_4338 : vec3<f32> = u_xlat0;
  let x_4341 : vec4<f32> = x_111.unity_FogColor;
  let x_4343 : vec3<f32> = ((vec3<f32>(x_4336.x, x_4336.x, x_4336.x) * x_4338) + vec3<f32>(x_4341.x, x_4341.y, x_4341.z));
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


