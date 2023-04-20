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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

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

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_727 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2145 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2406 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_548 : vec3<f32>;
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
  var x_2547 : f32;
  var x_2558 : f32;
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
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat26;
  let x_524 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat26;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat26 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_536 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_536;
  let x_540 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_540;
  let x_544 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_544;
  let x_546 : bool = u_xlatb1;
  if (x_546) {
    let x_551 : vec3<f32> = u_xlat26;
    x_548 = x_551;
  } else {
    let x_553 : vec3<f32> = u_xlat2;
    x_548 = x_553;
  }
  let x_554 : vec3<f32> = x_548;
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : vec3<f32> = vs_TEXCOORD3;
  let x_559 : vec3<f32> = vs_TEXCOORD3;
  u_xlat76 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_561);
  let x_563 : f32 = u_xlat76;
  let x_565 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_569 : f32 = vs_TEXCOORD7.y;
  let x_571 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat76 = (x_569 * x_571);
  let x_574 : f32 = x_111.unity_MatrixV[0i].z;
  let x_576 : f32 = vs_TEXCOORD7.x;
  let x_578 : f32 = u_xlat76;
  u_xlat76 = ((x_574 * x_576) + x_578);
  let x_581 : f32 = x_111.unity_MatrixV[2i].z;
  let x_583 : f32 = vs_TEXCOORD7.z;
  let x_585 : f32 = u_xlat76;
  u_xlat76 = ((x_581 * x_583) + x_585);
  let x_587 : f32 = u_xlat76;
  let x_590 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat76 = (x_587 + x_590);
  let x_592 : f32 = u_xlat76;
  let x_595 : f32 = x_111.x_ProjectionParams.y;
  u_xlat76 = (-(x_592) + -(x_595));
  let x_598 : f32 = u_xlat76;
  u_xlat76 = max(x_598, 0.0f);
  let x_600 : f32 = u_xlat76;
  let x_602 : f32 = x_111.unity_FogParams.x;
  u_xlat76 = (x_600 * x_602);
  let x_609 : vec4<f32> = vs_TEXCOORD0;
  let x_612 : f32 = x_111.x_GlobalMipBias.x;
  let x_613 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_609.z, x_609.w), x_612);
  u_xlat3 = x_613;
  let x_618 : vec4<f32> = vs_TEXCOORD0;
  let x_621 : f32 = x_111.x_GlobalMipBias.x;
  let x_622 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_618.z, x_618.w), x_621);
  let x_623 : vec3<f32> = vec3<f32>(x_622.x, x_622.y, x_622.z);
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat3;
  let x_630 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_631 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : vec3<f32> = u_xlat2;
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat77 = dot(x_634, vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : f32 = u_xlat77;
  u_xlat77 = (x_638 + 0.5f);
  let x_640 : f32 = u_xlat77;
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec3<f32> = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_648 : f32 = u_xlat3.w;
  u_xlat77 = max(x_648, 0.00009999999747378752f);
  let x_651 : vec4<f32> = u_xlat3;
  let x_653 : f32 = u_xlat77;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) / vec3<f32>(x_653, x_653, x_653));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_659) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_665 : f32 = u_xlat50;
  let x_666 : f32 = u_xlat77;
  u_xlat78 = (x_665 + -(x_666));
  let x_669 : f32 = u_xlat77;
  let x_671 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat5;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_681 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat0;
  let x_685 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_691 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : f32 = u_xlat50;
  u_xlat0.x = (-(x_693) + 1.0f);
  let x_698 : f32 = u_xlat0.x;
  let x_700 : f32 = u_xlat0.x;
  u_xlat50 = (x_698 * x_700);
  let x_702 : f32 = u_xlat50;
  u_xlat50 = max(x_702, 0.0078125f);
  let x_705 : f32 = u_xlat50;
  let x_706 : f32 = u_xlat50;
  u_xlat77 = (x_705 * x_706);
  let x_708 : f32 = u_xlat78;
  u_xlat78 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat78;
  u_xlat78 = clamp(x_710, 0.0f, 1.0f);
  let x_713 : f32 = u_xlat50;
  u_xlat79 = ((x_713 * 4.0f) + 2.0f);
  let x_717 : f32 = u_xlat25;
  u_xlat25 = min(x_717, 1.0f);
  let x_729 : f32 = x_727.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_729);
  let x_731 : bool = u_xlatb80;
  if (x_731) {
    let x_735 : f32 = x_727.x_MainLightShadowParams.y;
    u_xlatb80 = (x_735 == 1.0f);
    let x_737 : bool = u_xlatb80;
    if (x_737) {
      let x_741 : vec4<f32> = vs_TEXCOORD8;
      let x_744 : vec4<f32> = x_727.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y) + x_744);
      let x_747 : vec4<f32> = u_xlat6;
      let x_748 : vec2<f32> = vec2<f32>(x_747.x, x_747.y);
      let x_750 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_748.x, x_748.y, x_750);
      let x_762 : vec3<f32> = txVec0;
      let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
      u_xlat7.x = x_764;
      let x_767 : vec4<f32> = u_xlat6;
      let x_768 : vec2<f32> = vec2<f32>(x_767.z, x_767.w);
      let x_770 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_768.x, x_768.y, x_770);
      let x_777 : vec3<f32> = txVec1;
      let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
      u_xlat7.y = x_779;
      let x_781 : vec4<f32> = vs_TEXCOORD8;
      let x_784 : vec4<f32> = x_727.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_781.x, x_781.y, x_781.x, x_781.y) + x_784);
      let x_787 : vec4<f32> = u_xlat6;
      let x_788 : vec2<f32> = vec2<f32>(x_787.x, x_787.y);
      let x_790 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_788.x, x_788.y, x_790);
      let x_797 : vec3<f32> = txVec2;
      let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
      u_xlat7.z = x_799;
      let x_802 : vec4<f32> = u_xlat6;
      let x_803 : vec2<f32> = vec2<f32>(x_802.z, x_802.w);
      let x_805 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_803.x, x_803.y, x_805);
      let x_812 : vec3<f32> = txVec3;
      let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
      u_xlat7.w = x_814;
      let x_817 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_817, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_824 : f32 = x_727.x_MainLightShadowParams.y;
      u_xlatb6 = (x_824 == 2.0f);
      let x_826 : bool = u_xlatb6;
      if (x_826) {
        let x_829 : vec4<f32> = vs_TEXCOORD8;
        let x_832 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_835 : vec2<f32> = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.z, x_832.w)) + vec2<f32>(0.5f, 0.5f));
        let x_836 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat6;
        let x_840 : vec2<f32> = floor(vec2<f32>(x_838.x, x_838.y));
        let x_841 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_845 : vec4<f32> = vs_TEXCOORD8;
        let x_848 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_848.z, x_848.w)) + -(vec2<f32>(x_851.x, x_851.y)));
        let x_855 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_855.x, x_855.x, x_855.y, x_855.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_859 : vec4<f32> = u_xlat7;
        let x_861 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_859.x, x_859.x, x_859.z, x_859.z) * vec4<f32>(x_861.x, x_861.x, x_861.z, x_861.z));
        let x_864 : vec4<f32> = u_xlat8;
        let x_868 : vec2<f32> = (vec2<f32>(x_864.y, x_864.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_869 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_868.x, x_869.y, x_868.y, x_869.w);
        let x_871 : vec4<f32> = u_xlat8;
        let x_874 : vec2<f32> = u_xlat56;
        let x_876 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.z) * vec2<f32>(0.5f, 0.5f)) + -(x_874));
        let x_877 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_880 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_880) + vec2<f32>(1.0f, 1.0f));
        let x_884 : vec2<f32> = u_xlat56;
        let x_886 : vec2<f32> = min(x_884, vec2<f32>(0.0f, 0.0f));
        let x_887 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat9;
        let x_892 : vec4<f32> = u_xlat9;
        let x_895 : vec2<f32> = u_xlat58;
        let x_896 : vec2<f32> = ((-(vec2<f32>(x_889.x, x_889.y)) * vec2<f32>(x_892.x, x_892.y)) + x_895);
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_899 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_899, vec2<f32>(0.0f, 0.0f));
        let x_901 : vec2<f32> = u_xlat56;
        let x_903 : vec2<f32> = u_xlat56;
        let x_905 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_901) * x_903) + vec2<f32>(x_905.y, x_905.w));
        let x_908 : vec4<f32> = u_xlat9;
        let x_910 : vec2<f32> = (vec2<f32>(x_908.x, x_908.y) + vec2<f32>(1.0f, 1.0f));
        let x_911 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
        let x_913 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_913 + vec2<f32>(1.0f, 1.0f));
        let x_915 : vec4<f32> = u_xlat8;
        let x_919 : vec2<f32> = (vec2<f32>(x_915.x, x_915.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_920 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec2<f32> = u_xlat58;
        let x_923 : vec2<f32> = (x_922 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec4<f32> = u_xlat9;
        let x_928 : vec2<f32> = (vec2<f32>(x_926.x, x_926.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_929 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec2<f32> = u_xlat56;
        let x_932 : vec2<f32> = (x_931 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_933 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_935.y, x_935.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_939 : f32 = u_xlat9.x;
        u_xlat10.z = x_939;
        let x_942 : f32 = u_xlat56.x;
        u_xlat10.w = x_942;
        let x_945 : f32 = u_xlat11.x;
        u_xlat8.z = x_945;
        let x_948 : f32 = u_xlat7.x;
        u_xlat8.w = x_948;
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_950.z, x_950.w, x_950.x, x_950.z) + vec4<f32>(x_952.z, x_952.w, x_952.x, x_952.z));
        let x_956 : f32 = u_xlat10.y;
        u_xlat9.z = x_956;
        let x_959 : f32 = u_xlat56.y;
        u_xlat9.w = x_959;
        let x_962 : f32 = u_xlat8.y;
        u_xlat11.z = x_962;
        let x_965 : f32 = u_xlat7.z;
        u_xlat11.w = x_965;
        let x_967 : vec4<f32> = u_xlat9;
        let x_969 : vec4<f32> = u_xlat11;
        let x_971 : vec3<f32> = (vec3<f32>(x_967.z, x_967.y, x_967.w) + vec3<f32>(x_969.z, x_969.y, x_969.w));
        let x_972 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
        let x_974 : vec4<f32> = u_xlat8;
        let x_976 : vec4<f32> = u_xlat12;
        let x_978 : vec3<f32> = (vec3<f32>(x_974.x, x_974.z, x_974.w) / vec3<f32>(x_976.z, x_976.w, x_976.y));
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat8;
        let x_986 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_987 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat11;
        let x_991 : vec4<f32> = u_xlat7;
        let x_993 : vec3<f32> = (vec3<f32>(x_989.z, x_989.y, x_989.w) / vec3<f32>(x_991.x, x_991.y, x_991.z));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat9;
        let x_998 : vec3<f32> = (vec3<f32>(x_996.x, x_996.y, x_996.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1004 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1006 : vec3<f32> = (vec3<f32>(x_1001.y, x_1001.x, x_1001.z) * vec3<f32>(x_1004.x, x_1004.x, x_1004.x));
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat9;
        let x_1012 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1014 : vec3<f32> = (vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * vec3<f32>(x_1012.y, x_1012.y, x_1012.y));
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
        let x_1018 : f32 = u_xlat9.x;
        u_xlat8.w = x_1018;
        let x_1020 : vec4<f32> = u_xlat6;
        let x_1023 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) * vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y)) + vec4<f32>(x_1026.y, x_1026.w, x_1026.x, x_1026.w));
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.z, x_1035.w));
        let x_1039 : f32 = u_xlat8.y;
        u_xlat9.w = x_1039;
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1042 : vec2<f32> = vec2<f32>(x_1041.y, x_1041.z);
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1048 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) * vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y)) + vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.y));
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y) * vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.y)) + vec4<f32>(x_1060.w, x_1060.y, x_1060.w, x_1060.z));
        let x_1063 : vec4<f32> = u_xlat6;
        let x_1066 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1063.x, x_1063.y, x_1063.x, x_1063.y) * vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y)) + vec4<f32>(x_1069.x, x_1069.w, x_1069.z, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1074 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1072.x, x_1072.x, x_1072.x, x_1072.y) * vec4<f32>(x_1074.z, x_1074.w, x_1074.y, x_1074.z));
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1078.y, x_1078.y, x_1078.z, x_1078.z) * x_1080);
        let x_1083 : f32 = u_xlat7.z;
        let x_1085 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1083 * x_1085);
        let x_1089 : vec4<f32> = u_xlat10;
        let x_1090 : vec2<f32> = vec2<f32>(x_1089.x, x_1089.y);
        let x_1092 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1090.x, x_1090.y, x_1092);
        let x_1100 : vec3<f32> = txVec4;
        let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1100.xy, x_1100.z);
        u_xlat31.x = x_1102;
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.z, x_1105.w);
        let x_1108 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec5;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1115.xy, x_1115.z);
        u_xlat7.x = x_1117;
        let x_1120 : f32 = u_xlat7.x;
        let x_1122 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1120 * x_1122);
        let x_1126 : f32 = u_xlat13.x;
        let x_1128 : f32 = u_xlat31.x;
        let x_1131 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_1126 * x_1128) + x_1131);
        let x_1135 : vec2<f32> = u_xlat56;
        let x_1137 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec6;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
        u_xlat56.x = x_1146;
        let x_1149 : f32 = u_xlat13.z;
        let x_1151 : f32 = u_xlat56.x;
        let x_1154 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1149 * x_1151) + x_1154);
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1159 : vec2<f32> = vec2<f32>(x_1158.x, x_1158.y);
        let x_1161 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
        let x_1168 : vec3<f32> = txVec7;
        let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1168.xy, x_1168.z);
        u_xlat56.x = x_1170;
        let x_1173 : f32 = u_xlat13.w;
        let x_1175 : f32 = u_xlat56.x;
        let x_1178 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1173 * x_1175) + x_1178);
        let x_1182 : vec4<f32> = u_xlat11;
        let x_1183 : vec2<f32> = vec2<f32>(x_1182.x, x_1182.y);
        let x_1185 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1192 : vec3<f32> = txVec8;
        let x_1194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1192.xy, x_1192.z);
        u_xlat56.x = x_1194;
        let x_1197 : f32 = u_xlat14.x;
        let x_1199 : f32 = u_xlat56.x;
        let x_1202 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1197 * x_1199) + x_1202);
        let x_1206 : vec4<f32> = u_xlat11;
        let x_1207 : vec2<f32> = vec2<f32>(x_1206.z, x_1206.w);
        let x_1209 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1207.x, x_1207.y, x_1209);
        let x_1216 : vec3<f32> = txVec9;
        let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
        u_xlat56.x = x_1218;
        let x_1221 : f32 = u_xlat14.y;
        let x_1223 : f32 = u_xlat56.x;
        let x_1226 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1221 * x_1223) + x_1226);
        let x_1230 : vec4<f32> = u_xlat9;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.z, x_1230.w);
        let x_1233 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec10;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat56.x = x_1242;
        let x_1245 : f32 = u_xlat14.z;
        let x_1247 : f32 = u_xlat56.x;
        let x_1250 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1245 * x_1247) + x_1250);
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.x, x_1254.y);
        let x_1257 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec11;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1264.xy, x_1264.z);
        u_xlat56.x = x_1266;
        let x_1269 : f32 = u_xlat14.w;
        let x_1271 : f32 = u_xlat56.x;
        let x_1274 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1269 * x_1271) + x_1274);
        let x_1278 : vec4<f32> = u_xlat8;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.z, x_1278.w);
        let x_1281 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec12;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat56.x = x_1290;
        let x_1293 : f32 = u_xlat6.x;
        let x_1295 : f32 = u_xlat56.x;
        let x_1298 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1293 * x_1295) + x_1298);
      } else {
        let x_1301 : vec4<f32> = vs_TEXCOORD8;
        let x_1304 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.z, x_1304.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1308 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1312 : vec2<f32> = floor(vec2<f32>(x_1310.x, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1315 : vec4<f32> = vs_TEXCOORD8;
        let x_1318 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1318.z, x_1318.w)) + -(vec2<f32>(x_1321.x, x_1321.y)));
        let x_1325 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1325.x, x_1325.x, x_1325.y, x_1325.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1330 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1328.x, x_1328.x, x_1328.z, x_1328.z) * vec4<f32>(x_1330.x, x_1330.x, x_1330.z, x_1330.z));
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1333.y, x_1333.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1340 : vec4<f32> = u_xlat8;
        let x_1343 : vec2<f32> = u_xlat56;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1340.x, x_1340.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1343));
        let x_1346 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1345.x, x_1346.y, x_1345.y, x_1346.w);
        let x_1348 : vec2<f32> = u_xlat56;
        let x_1350 : vec2<f32> = (-(x_1348) + vec2<f32>(1.0f, 1.0f));
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1353, vec2<f32>(0.0f, 0.0f));
        let x_1355 : vec2<f32> = u_xlat58;
        let x_1357 : vec2<f32> = u_xlat58;
        let x_1359 : vec4<f32> = u_xlat8;
        let x_1361 : vec2<f32> = ((-(x_1355) * x_1357) + vec2<f32>(x_1359.x, x_1359.y));
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1364 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1364, vec2<f32>(0.0f, 0.0f));
        let x_1367 : vec2<f32> = u_xlat58;
        let x_1369 : vec2<f32> = u_xlat58;
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1373 : vec2<f32> = ((-(x_1367) * x_1369) + vec2<f32>(x_1371.y, x_1371.w));
        let x_1374 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1373.x, x_1374.y, x_1373.y);
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = (vec2<f32>(x_1376.x, x_1376.y) + vec2<f32>(2.0f, 2.0f));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec3<f32> = u_xlat32;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.z) + vec2<f32>(2.0f, 2.0f));
        let x_1385 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1385.x, x_1384.x, x_1385.z, x_1384.y);
        let x_1388 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1388 * 0.08163200318813323975f);
        let x_1392 : vec4<f32> = u_xlat7;
        let x_1395 : vec3<f32> = (vec3<f32>(x_1392.z, x_1392.x, x_1392.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat8;
        let x_1401 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1402 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1405 : f32 = u_xlat11.y;
        u_xlat10.x = x_1405;
        let x_1407 : vec2<f32> = u_xlat56;
        let x_1414 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1415 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1415.x, x_1414.x, x_1415.z, x_1414.y);
        let x_1417 : vec2<f32> = u_xlat56;
        let x_1421 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1422.y, x_1421.y, x_1422.w);
        let x_1425 : f32 = u_xlat7.x;
        u_xlat8.y = x_1425;
        let x_1428 : f32 = u_xlat9.y;
        u_xlat8.w = x_1428;
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1430 + x_1431);
        let x_1433 : vec2<f32> = u_xlat56;
        let x_1436 : vec2<f32> = ((vec2<f32>(x_1433.y, x_1433.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1437.x, x_1436.x, x_1437.z, x_1436.y);
        let x_1439 : vec2<f32> = u_xlat56;
        let x_1442 : vec2<f32> = ((vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1443.y, x_1442.y, x_1443.w);
        let x_1446 : f32 = u_xlat7.y;
        u_xlat9.y = x_1446;
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1449 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1448 + x_1449);
        let x_1451 : vec4<f32> = u_xlat8;
        let x_1452 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1451 / x_1452);
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1454 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1461 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1460 / x_1461);
        let x_1463 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1463 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1468 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1465.w, x_1465.x, x_1465.y, x_1465.z) * vec4<f32>(x_1468.x, x_1468.x, x_1468.x, x_1468.x));
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1471.x, x_1471.w, x_1471.y, x_1471.z) * vec4<f32>(x_1474.y, x_1474.y, x_1474.y, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat8;
        let x_1478 : vec3<f32> = vec3<f32>(x_1477.y, x_1477.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1478.z);
        let x_1482 : f32 = u_xlat9.x;
        u_xlat11.y = x_1482;
        let x_1484 : vec4<f32> = u_xlat6;
        let x_1487 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y) * vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y)) + vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1490.y));
        let x_1493 : vec4<f32> = u_xlat6;
        let x_1496 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat11.y;
        u_xlat8.y = x_1503;
        let x_1506 : f32 = u_xlat9.z;
        u_xlat11.y = x_1506;
        let x_1508 : vec4<f32> = u_xlat6;
        let x_1511 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y) * vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y)) + vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat6;
        let x_1520 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1523.w, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1529 : f32 = u_xlat11.y;
        u_xlat8.z = x_1529;
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.y) * vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y)) + vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.z));
        let x_1542 : f32 = u_xlat9.w;
        u_xlat11.y = x_1542;
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1551.y));
        let x_1555 : vec4<f32> = u_xlat6;
        let x_1558 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1565 : f32 = u_xlat11.y;
        u_xlat8.w = x_1565;
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.w));
        let x_1577 : vec4<f32> = u_xlat11;
        let x_1578 : vec3<f32> = vec3<f32>(x_1577.x, x_1577.z, x_1577.w);
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1578.x, x_1579.y, x_1578.y, x_1578.z);
        let x_1581 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y) * vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.y)) + vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1587.y));
        let x_1591 : vec4<f32> = u_xlat6;
        let x_1594 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.w, x_1597.y));
        let x_1601 : f32 = u_xlat8.x;
        u_xlat9.x = x_1601;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat9;
        let x_1611 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.x, x_1609.y));
        let x_1612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1615.x, x_1615.x, x_1615.x, x_1615.x) * x_1617);
        let x_1620 : vec4<f32> = u_xlat7;
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1620.y, x_1620.y, x_1620.y, x_1620.y) * x_1622);
        let x_1625 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1625.z, x_1625.z, x_1625.z, x_1625.z) * x_1627);
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1629.w, x_1629.w, x_1629.w, x_1629.w) * x_1631);
        let x_1634 : vec4<f32> = u_xlat12;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec13;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat8.x = x_1646;
        let x_1649 : vec4<f32> = u_xlat12;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.z, x_1649.w);
        let x_1652 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1660 : vec3<f32> = txVec14;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat83 = x_1662;
        let x_1663 : f32 = u_xlat83;
        let x_1665 : f32 = u_xlat17.y;
        u_xlat83 = (x_1663 * x_1665);
        let x_1668 : f32 = u_xlat17.x;
        let x_1670 : f32 = u_xlat8.x;
        let x_1672 : f32 = u_xlat83;
        u_xlat8.x = ((x_1668 * x_1670) + x_1672);
        let x_1676 : vec2<f32> = u_xlat56;
        let x_1678 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec15;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat56.x = x_1687;
        let x_1690 : f32 = u_xlat17.z;
        let x_1692 : f32 = u_xlat56.x;
        let x_1695 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1690 * x_1692) + x_1695);
        let x_1699 : vec4<f32> = u_xlat15;
        let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
        let x_1702 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1710 : vec3<f32> = txVec16;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat81 = x_1712;
        let x_1714 : f32 = u_xlat17.w;
        let x_1715 : f32 = u_xlat81;
        let x_1718 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1714 * x_1715) + x_1718);
        let x_1722 : vec4<f32> = u_xlat13;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec17;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat81 = x_1734;
        let x_1736 : f32 = u_xlat18.x;
        let x_1737 : f32 = u_xlat81;
        let x_1740 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1736 * x_1737) + x_1740);
        let x_1744 : vec4<f32> = u_xlat13;
        let x_1745 : vec2<f32> = vec2<f32>(x_1744.z, x_1744.w);
        let x_1747 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec18;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1754.xy, x_1754.z);
        u_xlat81 = x_1756;
        let x_1758 : f32 = u_xlat18.y;
        let x_1759 : f32 = u_xlat81;
        let x_1762 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1758 * x_1759) + x_1762);
        let x_1766 : vec4<f32> = u_xlat14;
        let x_1767 : vec2<f32> = vec2<f32>(x_1766.x, x_1766.y);
        let x_1769 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1767.x, x_1767.y, x_1769);
        let x_1776 : vec3<f32> = txVec19;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1776.xy, x_1776.z);
        u_xlat81 = x_1778;
        let x_1780 : f32 = u_xlat18.z;
        let x_1781 : f32 = u_xlat81;
        let x_1784 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1780 * x_1781) + x_1784);
        let x_1788 : vec4<f32> = u_xlat15;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.z, x_1788.w);
        let x_1791 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec20;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
        u_xlat81 = x_1800;
        let x_1802 : f32 = u_xlat18.w;
        let x_1803 : f32 = u_xlat81;
        let x_1806 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1802 * x_1803) + x_1806);
        let x_1810 : vec4<f32> = u_xlat16;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.x, x_1810.y);
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec21;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1820.xy, x_1820.z);
        u_xlat81 = x_1822;
        let x_1824 : f32 = u_xlat19.x;
        let x_1825 : f32 = u_xlat81;
        let x_1828 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1824 * x_1825) + x_1828);
        let x_1832 : vec4<f32> = u_xlat16;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.z, x_1832.w);
        let x_1835 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1842 : vec3<f32> = txVec22;
        let x_1844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
        u_xlat81 = x_1844;
        let x_1846 : f32 = u_xlat19.y;
        let x_1847 : f32 = u_xlat81;
        let x_1850 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1846 * x_1847) + x_1850);
        let x_1854 : vec2<f32> = u_xlat33;
        let x_1856 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
        let x_1863 : vec3<f32> = txVec23;
        let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
        u_xlat81 = x_1865;
        let x_1867 : f32 = u_xlat19.z;
        let x_1868 : f32 = u_xlat81;
        let x_1871 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1867 * x_1868) + x_1871);
        let x_1875 : vec2<f32> = u_xlat64;
        let x_1877 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1875.x, x_1875.y, x_1877);
        let x_1884 : vec3<f32> = txVec24;
        let x_1886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1884.xy, x_1884.z);
        u_xlat81 = x_1886;
        let x_1888 : f32 = u_xlat19.w;
        let x_1889 : f32 = u_xlat81;
        let x_1892 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1888 * x_1889) + x_1892);
        let x_1896 : vec4<f32> = u_xlat11;
        let x_1897 : vec2<f32> = vec2<f32>(x_1896.x, x_1896.y);
        let x_1899 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1897.x, x_1897.y, x_1899);
        let x_1906 : vec3<f32> = txVec25;
        let x_1908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1906.xy, x_1906.z);
        u_xlat81 = x_1908;
        let x_1910 : f32 = u_xlat7.x;
        let x_1911 : f32 = u_xlat81;
        let x_1914 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1910 * x_1911) + x_1914);
        let x_1918 : vec4<f32> = u_xlat11;
        let x_1919 : vec2<f32> = vec2<f32>(x_1918.z, x_1918.w);
        let x_1921 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec26;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat81 = x_1930;
        let x_1932 : f32 = u_xlat7.y;
        let x_1933 : f32 = u_xlat81;
        let x_1936 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1932 * x_1933) + x_1936);
        let x_1940 : vec2<f32> = u_xlat59;
        let x_1942 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec27;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1949.xy, x_1949.z);
        u_xlat81 = x_1951;
        let x_1953 : f32 = u_xlat7.z;
        let x_1954 : f32 = u_xlat81;
        let x_1957 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1953 * x_1954) + x_1957);
        let x_1961 : vec4<f32> = u_xlat6;
        let x_1962 : vec2<f32> = vec2<f32>(x_1961.x, x_1961.y);
        let x_1964 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
        let x_1971 : vec3<f32> = txVec28;
        let x_1973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1971.xy, x_1971.z);
        u_xlat6.x = x_1973;
        let x_1976 : f32 = u_xlat7.w;
        let x_1978 : f32 = u_xlat6.x;
        let x_1981 : f32 = u_xlat56.x;
        u_xlat80 = ((x_1976 * x_1978) + x_1981);
      }
    }
  } else {
    let x_1985 : vec4<f32> = vs_TEXCOORD8;
    let x_1986 : vec2<f32> = vec2<f32>(x_1985.x, x_1985.y);
    let x_1988 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1986.x, x_1986.y, x_1988);
    let x_1995 : vec3<f32> = txVec29;
    let x_1997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1995.xy, x_1995.z);
    u_xlat80 = x_1997;
  }
  let x_1999 : f32 = x_727.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1999) + 1.0f);
  let x_2003 : f32 = u_xlat80;
  let x_2005 : f32 = x_727.x_MainLightShadowParams.x;
  let x_2008 : f32 = u_xlat6.x;
  u_xlat80 = ((x_2003 * x_2005) + x_2008);
  let x_2011 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2011);
  let x_2015 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (x_2015 >= 1.0f);
  let x_2017 : bool = u_xlatb31;
  let x_2018 : bool = u_xlatb6;
  u_xlatb6 = (x_2017 | x_2018);
  let x_2020 : bool = u_xlatb6;
  let x_2021 : f32 = u_xlat80;
  u_xlat80 = select(x_2021, 1.0f, x_2020);
  let x_2023 : vec3<f32> = vs_TEXCOORD7;
  let x_2025 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2027 : vec3<f32> = (x_2023 + -(x_2025));
  let x_2028 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2030 : vec4<f32> = u_xlat6;
  let x_2032 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2030.x, x_2030.y, x_2030.z), vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
  let x_2037 : f32 = u_xlat6.x;
  let x_2039 : f32 = x_727.x_MainLightShadowParams.z;
  let x_2042 : f32 = x_727.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2037 * x_2039) + x_2042);
  let x_2046 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2046, 0.0f, 1.0f);
  let x_2049 : f32 = u_xlat80;
  u_xlat56.x = (-(x_2049) + 1.0f);
  let x_2054 : f32 = u_xlat31.x;
  let x_2056 : f32 = u_xlat56.x;
  let x_2058 : f32 = u_xlat80;
  u_xlat80 = ((x_2054 * x_2056) + x_2058);
  let x_2060 : vec4<f32> = u_xlat1;
  let x_2063 : vec3<f32> = u_xlat2;
  u_xlat31.x = dot(-(vec3<f32>(x_2060.x, x_2060.y, x_2060.z)), x_2063);
  let x_2067 : f32 = u_xlat31.x;
  let x_2069 : f32 = u_xlat31.x;
  u_xlat31.x = (x_2067 + x_2069);
  let x_2072 : vec3<f32> = u_xlat2;
  let x_2073 : vec3<f32> = u_xlat31;
  let x_2077 : vec4<f32> = u_xlat1;
  u_xlat31 = ((x_2072 * -(vec3<f32>(x_2073.x, x_2073.x, x_2073.x))) + -(vec3<f32>(x_2077.x, x_2077.y, x_2077.z)));
  let x_2081 : vec3<f32> = u_xlat2;
  let x_2082 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(x_2081, vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
  let x_2087 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_2087, 0.0f, 1.0f);
  let x_2091 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_2091) + 1.0f);
  let x_2096 : f32 = u_xlat7.x;
  let x_2098 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2096 * x_2098);
  let x_2102 : f32 = u_xlat7.x;
  let x_2104 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2102 * x_2104);
  let x_2108 : f32 = u_xlat0.x;
  u_xlat32.x = ((-(x_2108) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2116 : f32 = u_xlat0.x;
  let x_2118 : f32 = u_xlat32.x;
  u_xlat0.x = (x_2116 * x_2118);
  let x_2122 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2122 * 6.0f);
  let x_2134 : vec3<f32> = u_xlat31;
  let x_2136 : f32 = u_xlat0.x;
  let x_2137 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2134, x_2136);
  u_xlat8 = x_2137;
  let x_2139 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2139 + -1.0f);
  let x_2147 : f32 = x_2145.unity_SpecCube0_HDR.w;
  let x_2149 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2147 * x_2149) + 1.0f);
  let x_2154 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2154, 0.0f);
  let x_2158 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2158);
  let x_2162 : f32 = u_xlat0.x;
  let x_2164 : f32 = x_2145.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2162 * x_2164);
  let x_2168 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2168);
  let x_2172 : f32 = u_xlat0.x;
  let x_2174 : f32 = x_2145.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2172 * x_2174);
  let x_2177 : vec4<f32> = u_xlat8;
  let x_2179 : vec3<f32> = u_xlat0;
  u_xlat31 = (vec3<f32>(x_2177.x, x_2177.y, x_2177.z) * vec3<f32>(x_2179.x, x_2179.x, x_2179.x));
  let x_2182 : f32 = u_xlat50;
  let x_2184 : f32 = u_xlat50;
  let x_2188 : vec2<f32> = ((vec2<f32>(x_2182, x_2182) * vec2<f32>(x_2184, x_2184)) + vec2<f32>(-1.0f, 1.0f));
  let x_2189 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2188.x, x_2189.y, x_2188.y);
  let x_2192 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2192);
  let x_2194 : vec4<f32> = u_xlat5;
  let x_2197 : f32 = u_xlat78;
  u_xlat32 = (-(vec3<f32>(x_2194.x, x_2194.y, x_2194.z)) + vec3<f32>(x_2197, x_2197, x_2197));
  let x_2200 : vec4<f32> = u_xlat7;
  let x_2202 : vec3<f32> = u_xlat32;
  let x_2204 : vec4<f32> = u_xlat5;
  let x_2206 : vec3<f32> = ((vec3<f32>(x_2200.x, x_2200.x, x_2200.x) * x_2202) + vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
  let x_2207 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2207.w);
  let x_2209 : f32 = u_xlat50;
  let x_2211 : vec4<f32> = u_xlat7;
  let x_2213 : vec3<f32> = (vec3<f32>(x_2209, x_2209, x_2209) * vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
  let x_2214 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2213.x, x_2213.y, x_2213.z, x_2214.w);
  let x_2216 : vec3<f32> = u_xlat31;
  let x_2217 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2216 * vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
  let x_2220 : vec4<f32> = u_xlat3;
  let x_2222 : vec4<f32> = u_xlat4;
  let x_2225 : vec3<f32> = u_xlat31;
  let x_2226 : vec3<f32> = ((vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z)) + x_2225);
  let x_2227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
  let x_2229 : f32 = u_xlat80;
  let x_2231 : f32 = x_2145.unity_LightData.z;
  u_xlat50 = (x_2229 * x_2231);
  let x_2233 : vec3<f32> = u_xlat2;
  let x_2235 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat78 = dot(x_2233, vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
  let x_2238 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2238, 0.0f, 1.0f);
  let x_2240 : f32 = u_xlat50;
  let x_2241 : f32 = u_xlat78;
  u_xlat50 = (x_2240 * x_2241);
  let x_2243 : f32 = u_xlat50;
  let x_2246 : vec4<f32> = x_111.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2243, x_2243, x_2243) * vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : vec4<f32> = u_xlat1;
  let x_2252 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2254 : vec3<f32> = (vec3<f32>(x_2249.x, x_2249.y, x_2249.z) + vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
  let x_2255 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
  let x_2257 : vec4<f32> = u_xlat7;
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2257.x, x_2257.y, x_2257.z), vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
  let x_2262 : f32 = u_xlat50;
  u_xlat50 = max(x_2262, 1.17549435e-38f);
  let x_2265 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2265);
  let x_2267 : f32 = u_xlat50;
  let x_2269 : vec4<f32> = u_xlat7;
  let x_2271 : vec3<f32> = (vec3<f32>(x_2267, x_2267, x_2267) * vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : vec3<f32> = u_xlat2;
  let x_2275 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_2274, vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2278 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2278, 0.0f, 1.0f);
  let x_2281 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2283 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2281.x, x_2281.y, x_2281.z), vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
  let x_2286 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2286, 0.0f, 1.0f);
  let x_2288 : f32 = u_xlat50;
  let x_2289 : f32 = u_xlat50;
  u_xlat50 = (x_2288 * x_2289);
  let x_2291 : f32 = u_xlat50;
  let x_2293 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2291 * x_2293) + 1.00001001358032226562f);
  let x_2297 : f32 = u_xlat78;
  let x_2298 : f32 = u_xlat78;
  u_xlat78 = (x_2297 * x_2298);
  let x_2300 : f32 = u_xlat50;
  let x_2301 : f32 = u_xlat50;
  u_xlat50 = (x_2300 * x_2301);
  let x_2303 : f32 = u_xlat78;
  u_xlat78 = max(x_2303, 0.10000000149011611938f);
  let x_2306 : f32 = u_xlat50;
  let x_2307 : f32 = u_xlat78;
  u_xlat50 = (x_2306 * x_2307);
  let x_2309 : f32 = u_xlat79;
  let x_2310 : f32 = u_xlat50;
  u_xlat50 = (x_2309 * x_2310);
  let x_2312 : f32 = u_xlat77;
  let x_2313 : f32 = u_xlat50;
  u_xlat50 = (x_2312 / x_2313);
  let x_2315 : vec4<f32> = u_xlat5;
  let x_2317 : f32 = u_xlat50;
  let x_2320 : vec4<f32> = u_xlat4;
  let x_2322 : vec3<f32> = ((vec3<f32>(x_2315.x, x_2315.y, x_2315.z) * vec3<f32>(x_2317, x_2317, x_2317)) + vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
  let x_2323 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
  let x_2325 : vec3<f32> = u_xlat31;
  let x_2326 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2325 * vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
  let x_2330 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2332 : f32 = x_2145.unity_LightData.y;
  u_xlat50 = min(x_2330, x_2332);
  let x_2336 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2336));
  let x_2340 : f32 = u_xlat6.x;
  let x_2342 : f32 = x_727.x_AdditionalShadowFadeParams.x;
  let x_2345 : f32 = x_727.x_AdditionalShadowFadeParams.y;
  u_xlat78 = ((x_2340 * x_2342) + x_2345);
  let x_2347 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2347, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2359 : u32 = u_xlatu_loop_1;
    let x_2360 : u32 = u_xlatu50;
    if ((x_2359 < x_2360)) {
    } else {
      break;
    }
    let x_2363 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2363 >> 2u);
    let x_2367 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2367 & 3u));
    let x_2370 : u32 = u_xlatu6;
    let x_2373 : vec4<f32> = x_2145.unity_LightIndices[bitcast<i32>(x_2370)];
    let x_2383 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2388 : vec4<u32> = indexable[x_2383];
    u_xlat6.x = dot(x_2373, bitcast<vec4<f32>>(x_2388));
    let x_2394 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2394);
    let x_2396 : vec3<f32> = vs_TEXCOORD7;
    let x_2407 : i32 = u_xlati6;
    let x_2409 : vec4<f32> = x_2406.x_AdditionalLightsPosition[x_2407];
    let x_2412 : i32 = u_xlati6;
    let x_2414 : vec4<f32> = x_2406.x_AdditionalLightsPosition[x_2412];
    let x_2416 : vec3<f32> = ((-(x_2396) * vec3<f32>(x_2409.w, x_2409.w, x_2409.w)) + vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
    let x_2417 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
    let x_2420 : vec4<f32> = u_xlat8;
    let x_2422 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2420.x, x_2420.y, x_2420.z), vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
    let x_2425 : f32 = u_xlat82;
    u_xlat82 = max(x_2425, 0.00006103515625f);
    let x_2427 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2427);
    let x_2429 : f32 = u_xlat83;
    let x_2431 : vec4<f32> = u_xlat8;
    let x_2433 : vec3<f32> = (vec3<f32>(x_2429, x_2429, x_2429) * vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
    let x_2434 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
    let x_2437 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2437);
    let x_2439 : f32 = u_xlat82;
    let x_2440 : i32 = u_xlati6;
    let x_2442 : f32 = x_2406.x_AdditionalLightsAttenuation[x_2440].x;
    u_xlat82 = (x_2439 * x_2442);
    let x_2444 : f32 = u_xlat82;
    let x_2446 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2444) * x_2446) + 1.0f);
    let x_2449 : f32 = u_xlat82;
    u_xlat82 = max(x_2449, 0.0f);
    let x_2451 : f32 = u_xlat82;
    let x_2452 : f32 = u_xlat82;
    u_xlat82 = (x_2451 * x_2452);
    let x_2454 : f32 = u_xlat82;
    let x_2455 : f32 = u_xlat84;
    u_xlat82 = (x_2454 * x_2455);
    let x_2457 : i32 = u_xlati6;
    let x_2459 : vec4<f32> = x_2406.x_AdditionalLightsSpotDir[x_2457];
    let x_2461 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
    let x_2464 : f32 = u_xlat84;
    let x_2465 : i32 = u_xlati6;
    let x_2467 : f32 = x_2406.x_AdditionalLightsAttenuation[x_2465].z;
    let x_2469 : i32 = u_xlati6;
    let x_2471 : f32 = x_2406.x_AdditionalLightsAttenuation[x_2469].w;
    u_xlat84 = ((x_2464 * x_2467) + x_2471);
    let x_2473 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2473, 0.0f, 1.0f);
    let x_2475 : f32 = u_xlat84;
    let x_2476 : f32 = u_xlat84;
    u_xlat84 = (x_2475 * x_2476);
    let x_2478 : f32 = u_xlat82;
    let x_2479 : f32 = u_xlat84;
    u_xlat82 = (x_2478 * x_2479);
    let x_2482 : i32 = u_xlati6;
    let x_2484 : f32 = x_727.x_AdditionalShadowParams[x_2482].w;
    u_xlati84 = i32(x_2484);
    let x_2489 : i32 = u_xlati84;
    u_xlatb10.x = (x_2489 >= 0i);
    let x_2493 : bool = u_xlatb10.x;
    if (x_2493) {
      let x_2497 : i32 = u_xlati6;
      let x_2499 : f32 = x_727.x_AdditionalShadowParams[x_2497].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2499, x_2499, x_2499, x_2499))));
      let x_2505 : bool = u_xlatb10.x;
      if (x_2505) {
        let x_2508 : vec4<f32> = u_xlat9;
        let x_2511 : vec4<f32> = u_xlat9;
        let x_2514 : vec4<bool> = (abs(vec4<f32>(x_2508.z, x_2508.z, x_2508.y, x_2508.z)) >= abs(vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.x)));
        u_xlatb10 = vec3<bool>(x_2514.x, x_2514.y, x_2514.z);
        let x_2517 : bool = u_xlatb10.y;
        let x_2519 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2517 & x_2519);
        let x_2523 : vec4<f32> = u_xlat9;
        let x_2526 : vec4<bool> = (-(vec4<f32>(x_2523.z, x_2523.y, x_2523.x, x_2523.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2526.x, x_2526.y, x_2526.z);
        let x_2530 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2530);
        let x_2535 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2535);
        let x_2540 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2540);
        let x_2545 : bool = u_xlatb10.z;
        if (x_2545) {
          let x_2551 : f32 = u_xlat35.z;
          x_2547 = x_2551;
        } else {
          let x_2554 : f32 = u_xlat11.x;
          x_2547 = x_2554;
        }
        let x_2555 : f32 = x_2547;
        u_xlat60 = x_2555;
        let x_2557 : bool = u_xlatb10.x;
        if (x_2557) {
          let x_2562 : f32 = u_xlat35.x;
          x_2558 = x_2562;
        } else {
          let x_2564 : f32 = u_xlat60;
          x_2558 = x_2564;
        }
        let x_2565 : f32 = x_2558;
        u_xlat10.x = x_2565;
        let x_2567 : i32 = u_xlati6;
        let x_2569 : f32 = x_727.x_AdditionalShadowParams[x_2567].w;
        u_xlat35.x = trunc(x_2569);
        let x_2573 : f32 = u_xlat10.x;
        let x_2575 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2573 + x_2575);
        let x_2579 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2579);
      }
      let x_2581 : i32 = u_xlati84;
      u_xlati84 = (x_2581 << bitcast<u32>(2i));
      let x_2583 : vec3<f32> = vs_TEXCOORD7;
      let x_2585 : i32 = u_xlati84;
      let x_2588 : i32 = u_xlati84;
      let x_2592 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[((x_2585 + 1i) / 4i)][((x_2588 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2583.y, x_2583.y, x_2583.y, x_2583.y) * x_2592);
      let x_2594 : i32 = u_xlati84;
      let x_2596 : i32 = u_xlati84;
      let x_2599 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[(x_2594 / 4i)][(x_2596 % 4i)];
      let x_2600 : vec3<f32> = vs_TEXCOORD7;
      let x_2603 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2599 * vec4<f32>(x_2600.x, x_2600.x, x_2600.x, x_2600.x)) + x_2603);
      let x_2605 : i32 = u_xlati84;
      let x_2608 : i32 = u_xlati84;
      let x_2612 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[((x_2605 + 2i) / 4i)][((x_2608 + 2i) % 4i)];
      let x_2613 : vec3<f32> = vs_TEXCOORD7;
      let x_2616 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2612 * vec4<f32>(x_2613.z, x_2613.z, x_2613.z, x_2613.z)) + x_2616);
      let x_2618 : vec4<f32> = u_xlat10;
      let x_2619 : i32 = u_xlati84;
      let x_2622 : i32 = u_xlati84;
      let x_2626 : vec4<f32> = x_727.x_AdditionalLightsWorldToShadow[((x_2619 + 3i) / 4i)][((x_2622 + 3i) % 4i)];
      u_xlat10 = (x_2618 + x_2626);
      let x_2628 : vec4<f32> = u_xlat10;
      let x_2630 : vec4<f32> = u_xlat10;
      let x_2632 : vec3<f32> = (vec3<f32>(x_2628.x, x_2628.y, x_2628.z) / vec3<f32>(x_2630.w, x_2630.w, x_2630.w));
      let x_2633 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
      let x_2636 : i32 = u_xlati6;
      let x_2638 : f32 = x_727.x_AdditionalShadowParams[x_2636].y;
      u_xlatb84 = (0.0f < x_2638);
      let x_2640 : bool = u_xlatb84;
      if (x_2640) {
        let x_2643 : i32 = u_xlati6;
        let x_2645 : f32 = x_727.x_AdditionalShadowParams[x_2643].y;
        u_xlatb84 = (1.0f == x_2645);
        let x_2647 : bool = u_xlatb84;
        if (x_2647) {
          let x_2650 : vec4<f32> = u_xlat10;
          let x_2653 : vec4<f32> = x_727.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2650.x, x_2650.y, x_2650.x, x_2650.y) + x_2653);
          let x_2656 : vec4<f32> = u_xlat11;
          let x_2657 : vec2<f32> = vec2<f32>(x_2656.x, x_2656.y);
          let x_2659 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2657.x, x_2657.y, x_2659);
          let x_2667 : vec3<f32> = txVec30;
          let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
          u_xlat12.x = x_2669;
          let x_2672 : vec4<f32> = u_xlat11;
          let x_2673 : vec2<f32> = vec2<f32>(x_2672.z, x_2672.w);
          let x_2675 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2673.x, x_2673.y, x_2675);
          let x_2682 : vec3<f32> = txVec31;
          let x_2684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2682.xy, x_2682.z);
          u_xlat12.y = x_2684;
          let x_2686 : vec4<f32> = u_xlat10;
          let x_2689 : vec4<f32> = x_727.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2686.x, x_2686.y, x_2686.x, x_2686.y) + x_2689);
          let x_2692 : vec4<f32> = u_xlat11;
          let x_2693 : vec2<f32> = vec2<f32>(x_2692.x, x_2692.y);
          let x_2695 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2693.x, x_2693.y, x_2695);
          let x_2702 : vec3<f32> = txVec32;
          let x_2704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2702.xy, x_2702.z);
          u_xlat12.z = x_2704;
          let x_2707 : vec4<f32> = u_xlat11;
          let x_2708 : vec2<f32> = vec2<f32>(x_2707.z, x_2707.w);
          let x_2710 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
          let x_2717 : vec3<f32> = txVec33;
          let x_2719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2717.xy, x_2717.z);
          u_xlat12.w = x_2719;
          let x_2721 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2721, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2725 : i32 = u_xlati6;
          let x_2727 : f32 = x_727.x_AdditionalShadowParams[x_2725].y;
          u_xlatb85 = (2.0f == x_2727);
          let x_2729 : bool = u_xlatb85;
          if (x_2729) {
            let x_2732 : vec4<f32> = u_xlat10;
            let x_2735 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2738 : vec2<f32> = ((vec2<f32>(x_2732.x, x_2732.y) * vec2<f32>(x_2735.z, x_2735.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2739 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
            let x_2741 : vec4<f32> = u_xlat11;
            let x_2743 : vec2<f32> = floor(vec2<f32>(x_2741.x, x_2741.y));
            let x_2744 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2743.x, x_2743.y, x_2744.z, x_2744.w);
            let x_2747 : vec4<f32> = u_xlat10;
            let x_2750 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2753 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2747.x, x_2747.y) * vec2<f32>(x_2750.z, x_2750.w)) + -(vec2<f32>(x_2753.x, x_2753.y)));
            let x_2757 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2757.x, x_2757.x, x_2757.y, x_2757.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2760 : vec4<f32> = u_xlat12;
            let x_2762 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2760.x, x_2760.x, x_2760.z, x_2760.z) * vec4<f32>(x_2762.x, x_2762.x, x_2762.z, x_2762.z));
            let x_2765 : vec4<f32> = u_xlat13;
            let x_2767 : vec2<f32> = (vec2<f32>(x_2765.y, x_2765.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2768 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2767.x, x_2768.y, x_2767.y, x_2768.w);
            let x_2770 : vec4<f32> = u_xlat13;
            let x_2773 : vec2<f32> = u_xlat61;
            let x_2775 : vec2<f32> = ((vec2<f32>(x_2770.x, x_2770.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2773));
            let x_2776 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2779 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2779) + vec2<f32>(1.0f, 1.0f));
            let x_2782 : vec2<f32> = u_xlat61;
            let x_2783 : vec2<f32> = min(x_2782, vec2<f32>(0.0f, 0.0f));
            let x_2784 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2783.x, x_2783.y, x_2784.z, x_2784.w);
            let x_2786 : vec4<f32> = u_xlat14;
            let x_2789 : vec4<f32> = u_xlat14;
            let x_2792 : vec2<f32> = u_xlat63;
            let x_2793 : vec2<f32> = ((-(vec2<f32>(x_2786.x, x_2786.y)) * vec2<f32>(x_2789.x, x_2789.y)) + x_2792);
            let x_2794 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2793.x, x_2793.y, x_2794.z, x_2794.w);
            let x_2796 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2796, vec2<f32>(0.0f, 0.0f));
            let x_2798 : vec2<f32> = u_xlat61;
            let x_2800 : vec2<f32> = u_xlat61;
            let x_2802 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2798) * x_2800) + vec2<f32>(x_2802.y, x_2802.w));
            let x_2805 : vec4<f32> = u_xlat14;
            let x_2807 : vec2<f32> = (vec2<f32>(x_2805.x, x_2805.y) + vec2<f32>(1.0f, 1.0f));
            let x_2808 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2807.x, x_2807.y, x_2808.z, x_2808.w);
            let x_2810 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2810 + vec2<f32>(1.0f, 1.0f));
            let x_2812 : vec4<f32> = u_xlat13;
            let x_2814 : vec2<f32> = (vec2<f32>(x_2812.x, x_2812.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2815 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2814.x, x_2814.y, x_2815.z, x_2815.w);
            let x_2817 : vec2<f32> = u_xlat63;
            let x_2818 : vec2<f32> = (x_2817 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2819 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2818.x, x_2818.y, x_2819.z, x_2819.w);
            let x_2821 : vec4<f32> = u_xlat14;
            let x_2823 : vec2<f32> = (vec2<f32>(x_2821.x, x_2821.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2824 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2826 : vec2<f32> = u_xlat61;
            let x_2827 : vec2<f32> = (x_2826 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2828 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
            let x_2830 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2830.y, x_2830.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2834 : f32 = u_xlat14.x;
            u_xlat15.z = x_2834;
            let x_2837 : f32 = u_xlat61.x;
            u_xlat15.w = x_2837;
            let x_2840 : f32 = u_xlat16.x;
            u_xlat13.z = x_2840;
            let x_2843 : f32 = u_xlat12.x;
            u_xlat13.w = x_2843;
            let x_2845 : vec4<f32> = u_xlat13;
            let x_2847 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2845.z, x_2845.w, x_2845.x, x_2845.z) + vec4<f32>(x_2847.z, x_2847.w, x_2847.x, x_2847.z));
            let x_2851 : f32 = u_xlat15.y;
            u_xlat14.z = x_2851;
            let x_2854 : f32 = u_xlat61.y;
            u_xlat14.w = x_2854;
            let x_2857 : f32 = u_xlat13.y;
            u_xlat16.z = x_2857;
            let x_2860 : f32 = u_xlat12.z;
            u_xlat16.w = x_2860;
            let x_2862 : vec4<f32> = u_xlat14;
            let x_2864 : vec4<f32> = u_xlat16;
            let x_2866 : vec3<f32> = (vec3<f32>(x_2862.z, x_2862.y, x_2862.w) + vec3<f32>(x_2864.z, x_2864.y, x_2864.w));
            let x_2867 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2866.x, x_2866.y, x_2866.z, x_2867.w);
            let x_2869 : vec4<f32> = u_xlat13;
            let x_2871 : vec4<f32> = u_xlat17;
            let x_2873 : vec3<f32> = (vec3<f32>(x_2869.x, x_2869.z, x_2869.w) / vec3<f32>(x_2871.z, x_2871.w, x_2871.y));
            let x_2874 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2873.x, x_2873.y, x_2873.z, x_2874.w);
            let x_2876 : vec4<f32> = u_xlat13;
            let x_2878 : vec3<f32> = (vec3<f32>(x_2876.x, x_2876.y, x_2876.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2879 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
            let x_2881 : vec4<f32> = u_xlat16;
            let x_2883 : vec4<f32> = u_xlat12;
            let x_2885 : vec3<f32> = (vec3<f32>(x_2881.z, x_2881.y, x_2881.w) / vec3<f32>(x_2883.x, x_2883.y, x_2883.z));
            let x_2886 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2885.x, x_2885.y, x_2885.z, x_2886.w);
            let x_2888 : vec4<f32> = u_xlat14;
            let x_2890 : vec3<f32> = (vec3<f32>(x_2888.x, x_2888.y, x_2888.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2891 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
            let x_2893 : vec4<f32> = u_xlat13;
            let x_2896 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2898 : vec3<f32> = (vec3<f32>(x_2893.y, x_2893.x, x_2893.z) * vec3<f32>(x_2896.x, x_2896.x, x_2896.x));
            let x_2899 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2899.w);
            let x_2901 : vec4<f32> = u_xlat14;
            let x_2904 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2906 : vec3<f32> = (vec3<f32>(x_2901.x, x_2901.y, x_2901.z) * vec3<f32>(x_2904.y, x_2904.y, x_2904.y));
            let x_2907 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2907.w);
            let x_2910 : f32 = u_xlat14.x;
            u_xlat13.w = x_2910;
            let x_2912 : vec4<f32> = u_xlat11;
            let x_2915 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y) * vec4<f32>(x_2915.x, x_2915.y, x_2915.x, x_2915.y)) + vec4<f32>(x_2918.y, x_2918.w, x_2918.x, x_2918.w));
            let x_2921 : vec4<f32> = u_xlat11;
            let x_2924 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2927 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2921.x, x_2921.y) * vec2<f32>(x_2924.x, x_2924.y)) + vec2<f32>(x_2927.z, x_2927.w));
            let x_2931 : f32 = u_xlat13.y;
            u_xlat14.w = x_2931;
            let x_2933 : vec4<f32> = u_xlat14;
            let x_2934 : vec2<f32> = vec2<f32>(x_2933.y, x_2933.z);
            let x_2935 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2935.x, x_2934.x, x_2935.z, x_2934.y);
            let x_2937 : vec4<f32> = u_xlat11;
            let x_2940 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2937.x, x_2937.y, x_2937.x, x_2937.y) * vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y)) + vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2943.y));
            let x_2946 : vec4<f32> = u_xlat11;
            let x_2949 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2946.x, x_2946.y, x_2946.x, x_2946.y) * vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.y)) + vec4<f32>(x_2952.w, x_2952.y, x_2952.w, x_2952.z));
            let x_2955 : vec4<f32> = u_xlat11;
            let x_2958 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_2961 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2955.x, x_2955.y, x_2955.x, x_2955.y) * vec4<f32>(x_2958.x, x_2958.y, x_2958.x, x_2958.y)) + vec4<f32>(x_2961.x, x_2961.w, x_2961.z, x_2961.w));
            let x_2964 : vec4<f32> = u_xlat12;
            let x_2966 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2964.x, x_2964.x, x_2964.x, x_2964.y) * vec4<f32>(x_2966.z, x_2966.w, x_2966.y, x_2966.z));
            let x_2969 : vec4<f32> = u_xlat12;
            let x_2971 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2969.y, x_2969.y, x_2969.z, x_2969.z) * x_2971);
            let x_2975 : f32 = u_xlat12.z;
            let x_2977 : f32 = u_xlat17.y;
            u_xlat85 = (x_2975 * x_2977);
            let x_2980 : vec4<f32> = u_xlat15;
            let x_2981 : vec2<f32> = vec2<f32>(x_2980.x, x_2980.y);
            let x_2983 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
            let x_2990 : vec3<f32> = txVec34;
            let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
            u_xlat11.x = x_2992;
            let x_2995 : vec4<f32> = u_xlat15;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.z, x_2995.w);
            let x_2998 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3006 : vec3<f32> = txVec35;
            let x_3008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3006.xy, x_3006.z);
            u_xlat36 = x_3008;
            let x_3009 : f32 = u_xlat36;
            let x_3011 : f32 = u_xlat18.y;
            u_xlat36 = (x_3009 * x_3011);
            let x_3014 : f32 = u_xlat18.x;
            let x_3016 : f32 = u_xlat11.x;
            let x_3018 : f32 = u_xlat36;
            u_xlat11.x = ((x_3014 * x_3016) + x_3018);
            let x_3022 : vec2<f32> = u_xlat61;
            let x_3024 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3022.x, x_3022.y, x_3024);
            let x_3031 : vec3<f32> = txVec36;
            let x_3033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3031.xy, x_3031.z);
            u_xlat36 = x_3033;
            let x_3035 : f32 = u_xlat18.z;
            let x_3036 : f32 = u_xlat36;
            let x_3039 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3035 * x_3036) + x_3039);
            let x_3043 : vec4<f32> = u_xlat14;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.x, x_3043.y);
            let x_3046 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec37;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat36 = x_3055;
            let x_3057 : f32 = u_xlat18.w;
            let x_3058 : f32 = u_xlat36;
            let x_3061 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3057 * x_3058) + x_3061);
            let x_3065 : vec4<f32> = u_xlat16;
            let x_3066 : vec2<f32> = vec2<f32>(x_3065.x, x_3065.y);
            let x_3068 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec38;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat36 = x_3077;
            let x_3079 : f32 = u_xlat19.x;
            let x_3080 : f32 = u_xlat36;
            let x_3083 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3079 * x_3080) + x_3083);
            let x_3087 : vec4<f32> = u_xlat16;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.z, x_3087.w);
            let x_3090 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec39;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat36 = x_3099;
            let x_3101 : f32 = u_xlat19.y;
            let x_3102 : f32 = u_xlat36;
            let x_3105 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3101 * x_3102) + x_3105);
            let x_3109 : vec4<f32> = u_xlat14;
            let x_3110 : vec2<f32> = vec2<f32>(x_3109.z, x_3109.w);
            let x_3112 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec40;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat36 = x_3121;
            let x_3123 : f32 = u_xlat19.z;
            let x_3124 : f32 = u_xlat36;
            let x_3127 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3123 * x_3124) + x_3127);
            let x_3131 : vec4<f32> = u_xlat13;
            let x_3132 : vec2<f32> = vec2<f32>(x_3131.x, x_3131.y);
            let x_3134 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3132.x, x_3132.y, x_3134);
            let x_3141 : vec3<f32> = txVec41;
            let x_3143 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3141.xy, x_3141.z);
            u_xlat36 = x_3143;
            let x_3145 : f32 = u_xlat19.w;
            let x_3146 : f32 = u_xlat36;
            let x_3149 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3145 * x_3146) + x_3149);
            let x_3153 : vec4<f32> = u_xlat13;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec42;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat36 = x_3165;
            let x_3166 : f32 = u_xlat85;
            let x_3167 : f32 = u_xlat36;
            let x_3170 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3166 * x_3167) + x_3170);
          } else {
            let x_3173 : vec4<f32> = u_xlat10;
            let x_3176 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3179 : vec2<f32> = ((vec2<f32>(x_3173.x, x_3173.y) * vec2<f32>(x_3176.z, x_3176.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3180 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3179.x, x_3179.y, x_3180.z, x_3180.w);
            let x_3182 : vec4<f32> = u_xlat11;
            let x_3184 : vec2<f32> = floor(vec2<f32>(x_3182.x, x_3182.y));
            let x_3185 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3184.x, x_3184.y, x_3185.z, x_3185.w);
            let x_3187 : vec4<f32> = u_xlat10;
            let x_3190 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3187.x, x_3187.y) * vec2<f32>(x_3190.z, x_3190.w)) + -(vec2<f32>(x_3193.x, x_3193.y)));
            let x_3197 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3197.x, x_3197.x, x_3197.y, x_3197.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3200 : vec4<f32> = u_xlat12;
            let x_3202 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3200.x, x_3200.x, x_3200.z, x_3200.z) * vec4<f32>(x_3202.x, x_3202.x, x_3202.z, x_3202.z));
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3207 : vec2<f32> = (vec2<f32>(x_3205.y, x_3205.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3208 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3208.x, x_3207.x, x_3208.z, x_3207.y);
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3213 : vec2<f32> = u_xlat61;
            let x_3215 : vec2<f32> = ((vec2<f32>(x_3210.x, x_3210.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3213));
            let x_3216 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3215.x, x_3216.y, x_3215.y, x_3216.w);
            let x_3218 : vec2<f32> = u_xlat61;
            let x_3220 : vec2<f32> = (-(x_3218) + vec2<f32>(1.0f, 1.0f));
            let x_3221 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3220.x, x_3220.y, x_3221.z, x_3221.w);
            let x_3223 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3223, vec2<f32>(0.0f, 0.0f));
            let x_3225 : vec2<f32> = u_xlat63;
            let x_3227 : vec2<f32> = u_xlat63;
            let x_3229 : vec4<f32> = u_xlat13;
            let x_3231 : vec2<f32> = ((-(x_3225) * x_3227) + vec2<f32>(x_3229.x, x_3229.y));
            let x_3232 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3231.x, x_3231.y, x_3232.z, x_3232.w);
            let x_3234 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3234, vec2<f32>(0.0f, 0.0f));
            let x_3237 : vec2<f32> = u_xlat63;
            let x_3239 : vec2<f32> = u_xlat63;
            let x_3241 : vec4<f32> = u_xlat12;
            let x_3243 : vec2<f32> = ((-(x_3237) * x_3239) + vec2<f32>(x_3241.y, x_3241.w));
            let x_3244 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3243.x, x_3244.y, x_3243.y);
            let x_3246 : vec4<f32> = u_xlat13;
            let x_3248 : vec2<f32> = (vec2<f32>(x_3246.x, x_3246.y) + vec2<f32>(2.0f, 2.0f));
            let x_3249 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3248.x, x_3248.y, x_3249.z, x_3249.w);
            let x_3251 : vec3<f32> = u_xlat37;
            let x_3253 : vec2<f32> = (vec2<f32>(x_3251.x, x_3251.z) + vec2<f32>(2.0f, 2.0f));
            let x_3254 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3254.x, x_3253.x, x_3254.z, x_3253.y);
            let x_3257 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3257 * 0.08163200318813323975f);
            let x_3260 : vec4<f32> = u_xlat12;
            let x_3262 : vec3<f32> = (vec3<f32>(x_3260.z, x_3260.x, x_3260.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3263 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3263.w);
            let x_3265 : vec4<f32> = u_xlat13;
            let x_3267 : vec2<f32> = (vec2<f32>(x_3265.x, x_3265.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3268 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3267.x, x_3267.y, x_3268.z, x_3268.w);
            let x_3271 : f32 = u_xlat16.y;
            u_xlat15.x = x_3271;
            let x_3273 : vec2<f32> = u_xlat61;
            let x_3276 : vec2<f32> = ((vec2<f32>(x_3273.x, x_3273.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3277 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3277.x, x_3276.x, x_3277.z, x_3276.y);
            let x_3279 : vec2<f32> = u_xlat61;
            let x_3282 : vec2<f32> = ((vec2<f32>(x_3279.x, x_3279.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3283 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3282.x, x_3283.y, x_3282.y, x_3283.w);
            let x_3286 : f32 = u_xlat12.x;
            u_xlat13.y = x_3286;
            let x_3289 : f32 = u_xlat14.y;
            u_xlat13.w = x_3289;
            let x_3291 : vec4<f32> = u_xlat13;
            let x_3292 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3291 + x_3292);
            let x_3294 : vec2<f32> = u_xlat61;
            let x_3297 : vec2<f32> = ((vec2<f32>(x_3294.y, x_3294.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3298 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3298.x, x_3297.x, x_3298.z, x_3297.y);
            let x_3300 : vec2<f32> = u_xlat61;
            let x_3303 : vec2<f32> = ((vec2<f32>(x_3300.y, x_3300.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3304 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3303.x, x_3304.y, x_3303.y, x_3304.w);
            let x_3307 : f32 = u_xlat12.y;
            u_xlat14.y = x_3307;
            let x_3309 : vec4<f32> = u_xlat14;
            let x_3310 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3309 + x_3310);
            let x_3312 : vec4<f32> = u_xlat13;
            let x_3313 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3312 / x_3313);
            let x_3315 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3315 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3317 : vec4<f32> = u_xlat14;
            let x_3318 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3317 / x_3318);
            let x_3320 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3320 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3322 : vec4<f32> = u_xlat13;
            let x_3325 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3322.w, x_3322.x, x_3322.y, x_3322.z) * vec4<f32>(x_3325.x, x_3325.x, x_3325.x, x_3325.x));
            let x_3328 : vec4<f32> = u_xlat14;
            let x_3331 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3328.x, x_3328.w, x_3328.y, x_3328.z) * vec4<f32>(x_3331.y, x_3331.y, x_3331.y, x_3331.y));
            let x_3334 : vec4<f32> = u_xlat13;
            let x_3335 : vec3<f32> = vec3<f32>(x_3334.y, x_3334.z, x_3334.w);
            let x_3336 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3335.x, x_3336.y, x_3335.y, x_3335.z);
            let x_3339 : f32 = u_xlat14.x;
            u_xlat16.y = x_3339;
            let x_3341 : vec4<f32> = u_xlat11;
            let x_3344 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3347 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3341.x, x_3341.y, x_3341.x, x_3341.y) * vec4<f32>(x_3344.x, x_3344.y, x_3344.x, x_3344.y)) + vec4<f32>(x_3347.x, x_3347.y, x_3347.z, x_3347.y));
            let x_3350 : vec4<f32> = u_xlat11;
            let x_3353 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3356 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3350.x, x_3350.y) * vec2<f32>(x_3353.x, x_3353.y)) + vec2<f32>(x_3356.w, x_3356.y));
            let x_3360 : f32 = u_xlat16.y;
            u_xlat13.y = x_3360;
            let x_3363 : f32 = u_xlat14.z;
            u_xlat16.y = x_3363;
            let x_3365 : vec4<f32> = u_xlat11;
            let x_3368 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3371 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3365.x, x_3365.y, x_3365.x, x_3365.y) * vec4<f32>(x_3368.x, x_3368.y, x_3368.x, x_3368.y)) + vec4<f32>(x_3371.x, x_3371.y, x_3371.z, x_3371.y));
            let x_3374 : vec4<f32> = u_xlat11;
            let x_3377 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3380 : vec4<f32> = u_xlat16;
            let x_3382 : vec2<f32> = ((vec2<f32>(x_3374.x, x_3374.y) * vec2<f32>(x_3377.x, x_3377.y)) + vec2<f32>(x_3380.w, x_3380.y));
            let x_3383 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
            let x_3386 : f32 = u_xlat16.y;
            u_xlat13.z = x_3386;
            let x_3389 : vec4<f32> = u_xlat11;
            let x_3392 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3395 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3389.x, x_3389.y, x_3389.x, x_3389.y) * vec4<f32>(x_3392.x, x_3392.y, x_3392.x, x_3392.y)) + vec4<f32>(x_3395.x, x_3395.y, x_3395.x, x_3395.z));
            let x_3399 : f32 = u_xlat14.w;
            u_xlat16.y = x_3399;
            let x_3402 : vec4<f32> = u_xlat11;
            let x_3405 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3408 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3402.x, x_3402.y, x_3402.x, x_3402.y) * vec4<f32>(x_3405.x, x_3405.y, x_3405.x, x_3405.y)) + vec4<f32>(x_3408.x, x_3408.y, x_3408.z, x_3408.y));
            let x_3412 : vec4<f32> = u_xlat11;
            let x_3415 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3418 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3412.x, x_3412.y) * vec2<f32>(x_3415.x, x_3415.y)) + vec2<f32>(x_3418.w, x_3418.y));
            let x_3422 : f32 = u_xlat16.y;
            u_xlat13.w = x_3422;
            let x_3425 : vec4<f32> = u_xlat11;
            let x_3428 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3425.x, x_3425.y) * vec2<f32>(x_3428.x, x_3428.y)) + vec2<f32>(x_3431.x, x_3431.w));
            let x_3434 : vec4<f32> = u_xlat16;
            let x_3435 : vec3<f32> = vec3<f32>(x_3434.x, x_3434.z, x_3434.w);
            let x_3436 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3435.x, x_3436.y, x_3435.y, x_3435.z);
            let x_3438 : vec4<f32> = u_xlat11;
            let x_3441 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3444 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3438.x, x_3438.y, x_3438.x, x_3438.y) * vec4<f32>(x_3441.x, x_3441.y, x_3441.x, x_3441.y)) + vec4<f32>(x_3444.x, x_3444.y, x_3444.z, x_3444.y));
            let x_3447 : vec4<f32> = u_xlat11;
            let x_3450 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3453 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3447.x, x_3447.y) * vec2<f32>(x_3450.x, x_3450.y)) + vec2<f32>(x_3453.w, x_3453.y));
            let x_3457 : f32 = u_xlat13.x;
            u_xlat14.x = x_3457;
            let x_3459 : vec4<f32> = u_xlat11;
            let x_3462 : vec4<f32> = x_727.x_AdditionalShadowmapSize;
            let x_3465 : vec4<f32> = u_xlat14;
            let x_3467 : vec2<f32> = ((vec2<f32>(x_3459.x, x_3459.y) * vec2<f32>(x_3462.x, x_3462.y)) + vec2<f32>(x_3465.x, x_3465.y));
            let x_3468 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3467.x, x_3467.y, x_3468.z, x_3468.w);
            let x_3471 : vec4<f32> = u_xlat12;
            let x_3473 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3471.x, x_3471.x, x_3471.x, x_3471.x) * x_3473);
            let x_3476 : vec4<f32> = u_xlat12;
            let x_3478 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3476.y, x_3476.y, x_3476.y, x_3476.y) * x_3478);
            let x_3481 : vec4<f32> = u_xlat12;
            let x_3483 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3481.z, x_3481.z, x_3481.z, x_3481.z) * x_3483);
            let x_3485 : vec4<f32> = u_xlat12;
            let x_3487 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3485.w, x_3485.w, x_3485.w, x_3485.w) * x_3487);
            let x_3490 : vec4<f32> = u_xlat17;
            let x_3491 : vec2<f32> = vec2<f32>(x_3490.x, x_3490.y);
            let x_3493 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3491.x, x_3491.y, x_3493);
            let x_3500 : vec3<f32> = txVec43;
            let x_3502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3500.xy, x_3500.z);
            u_xlat85 = x_3502;
            let x_3504 : vec4<f32> = u_xlat17;
            let x_3505 : vec2<f32> = vec2<f32>(x_3504.z, x_3504.w);
            let x_3507 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3505.x, x_3505.y, x_3507);
            let x_3514 : vec3<f32> = txVec44;
            let x_3516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3514.xy, x_3514.z);
            u_xlat13.x = x_3516;
            let x_3519 : f32 = u_xlat13.x;
            let x_3521 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3519 * x_3521);
            let x_3525 : f32 = u_xlat22.x;
            let x_3526 : f32 = u_xlat85;
            let x_3529 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3525 * x_3526) + x_3529);
            let x_3532 : vec2<f32> = u_xlat61;
            let x_3534 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3532.x, x_3532.y, x_3534);
            let x_3541 : vec3<f32> = txVec45;
            let x_3543 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3541.xy, x_3541.z);
            u_xlat61.x = x_3543;
            let x_3546 : f32 = u_xlat22.z;
            let x_3548 : f32 = u_xlat61.x;
            let x_3550 : f32 = u_xlat85;
            u_xlat85 = ((x_3546 * x_3548) + x_3550);
            let x_3553 : vec4<f32> = u_xlat20;
            let x_3554 : vec2<f32> = vec2<f32>(x_3553.x, x_3553.y);
            let x_3556 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3554.x, x_3554.y, x_3556);
            let x_3563 : vec3<f32> = txVec46;
            let x_3565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3563.xy, x_3563.z);
            u_xlat61.x = x_3565;
            let x_3568 : f32 = u_xlat22.w;
            let x_3570 : f32 = u_xlat61.x;
            let x_3572 : f32 = u_xlat85;
            u_xlat85 = ((x_3568 * x_3570) + x_3572);
            let x_3575 : vec4<f32> = u_xlat18;
            let x_3576 : vec2<f32> = vec2<f32>(x_3575.x, x_3575.y);
            let x_3578 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec47;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat61.x = x_3587;
            let x_3590 : f32 = u_xlat23.x;
            let x_3592 : f32 = u_xlat61.x;
            let x_3594 : f32 = u_xlat85;
            u_xlat85 = ((x_3590 * x_3592) + x_3594);
            let x_3597 : vec4<f32> = u_xlat18;
            let x_3598 : vec2<f32> = vec2<f32>(x_3597.z, x_3597.w);
            let x_3600 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3598.x, x_3598.y, x_3600);
            let x_3607 : vec3<f32> = txVec48;
            let x_3609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3607.xy, x_3607.z);
            u_xlat61.x = x_3609;
            let x_3612 : f32 = u_xlat23.y;
            let x_3614 : f32 = u_xlat61.x;
            let x_3616 : f32 = u_xlat85;
            u_xlat85 = ((x_3612 * x_3614) + x_3616);
            let x_3619 : vec4<f32> = u_xlat19;
            let x_3620 : vec2<f32> = vec2<f32>(x_3619.x, x_3619.y);
            let x_3622 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3620.x, x_3620.y, x_3622);
            let x_3629 : vec3<f32> = txVec49;
            let x_3631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3629.xy, x_3629.z);
            u_xlat61.x = x_3631;
            let x_3634 : f32 = u_xlat23.z;
            let x_3636 : f32 = u_xlat61.x;
            let x_3638 : f32 = u_xlat85;
            u_xlat85 = ((x_3634 * x_3636) + x_3638);
            let x_3641 : vec4<f32> = u_xlat20;
            let x_3642 : vec2<f32> = vec2<f32>(x_3641.z, x_3641.w);
            let x_3644 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3642.x, x_3642.y, x_3644);
            let x_3651 : vec3<f32> = txVec50;
            let x_3653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3651.xy, x_3651.z);
            u_xlat61.x = x_3653;
            let x_3656 : f32 = u_xlat23.w;
            let x_3658 : f32 = u_xlat61.x;
            let x_3660 : f32 = u_xlat85;
            u_xlat85 = ((x_3656 * x_3658) + x_3660);
            let x_3663 : vec4<f32> = u_xlat21;
            let x_3664 : vec2<f32> = vec2<f32>(x_3663.x, x_3663.y);
            let x_3666 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3664.x, x_3664.y, x_3666);
            let x_3673 : vec3<f32> = txVec51;
            let x_3675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3673.xy, x_3673.z);
            u_xlat61.x = x_3675;
            let x_3678 : f32 = u_xlat24.x;
            let x_3680 : f32 = u_xlat61.x;
            let x_3682 : f32 = u_xlat85;
            u_xlat85 = ((x_3678 * x_3680) + x_3682);
            let x_3685 : vec4<f32> = u_xlat21;
            let x_3686 : vec2<f32> = vec2<f32>(x_3685.z, x_3685.w);
            let x_3688 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3686.x, x_3686.y, x_3688);
            let x_3695 : vec3<f32> = txVec52;
            let x_3697 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3695.xy, x_3695.z);
            u_xlat61.x = x_3697;
            let x_3700 : f32 = u_xlat24.y;
            let x_3702 : f32 = u_xlat61.x;
            let x_3704 : f32 = u_xlat85;
            u_xlat85 = ((x_3700 * x_3702) + x_3704);
            let x_3707 : vec2<f32> = u_xlat38;
            let x_3709 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3707.x, x_3707.y, x_3709);
            let x_3716 : vec3<f32> = txVec53;
            let x_3718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3716.xy, x_3716.z);
            u_xlat61.x = x_3718;
            let x_3721 : f32 = u_xlat24.z;
            let x_3723 : f32 = u_xlat61.x;
            let x_3725 : f32 = u_xlat85;
            u_xlat85 = ((x_3721 * x_3723) + x_3725);
            let x_3728 : vec2<f32> = u_xlat69;
            let x_3730 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3728.x, x_3728.y, x_3730);
            let x_3737 : vec3<f32> = txVec54;
            let x_3739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3737.xy, x_3737.z);
            u_xlat61.x = x_3739;
            let x_3742 : f32 = u_xlat24.w;
            let x_3744 : f32 = u_xlat61.x;
            let x_3746 : f32 = u_xlat85;
            u_xlat85 = ((x_3742 * x_3744) + x_3746);
            let x_3749 : vec4<f32> = u_xlat16;
            let x_3750 : vec2<f32> = vec2<f32>(x_3749.x, x_3749.y);
            let x_3752 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3750.x, x_3750.y, x_3752);
            let x_3759 : vec3<f32> = txVec55;
            let x_3761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3759.xy, x_3759.z);
            u_xlat61.x = x_3761;
            let x_3764 : f32 = u_xlat12.x;
            let x_3766 : f32 = u_xlat61.x;
            let x_3768 : f32 = u_xlat85;
            u_xlat85 = ((x_3764 * x_3766) + x_3768);
            let x_3771 : vec4<f32> = u_xlat16;
            let x_3772 : vec2<f32> = vec2<f32>(x_3771.z, x_3771.w);
            let x_3774 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3772.x, x_3772.y, x_3774);
            let x_3781 : vec3<f32> = txVec56;
            let x_3783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3781.xy, x_3781.z);
            u_xlat61.x = x_3783;
            let x_3786 : f32 = u_xlat12.y;
            let x_3788 : f32 = u_xlat61.x;
            let x_3790 : f32 = u_xlat85;
            u_xlat85 = ((x_3786 * x_3788) + x_3790);
            let x_3793 : vec2<f32> = u_xlat64;
            let x_3795 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
            let x_3802 : vec3<f32> = txVec57;
            let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
            u_xlat61.x = x_3804;
            let x_3807 : f32 = u_xlat12.z;
            let x_3809 : f32 = u_xlat61.x;
            let x_3811 : f32 = u_xlat85;
            u_xlat85 = ((x_3807 * x_3809) + x_3811);
            let x_3814 : vec4<f32> = u_xlat11;
            let x_3815 : vec2<f32> = vec2<f32>(x_3814.x, x_3814.y);
            let x_3817 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3815.x, x_3815.y, x_3817);
            let x_3824 : vec3<f32> = txVec58;
            let x_3826 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3824.xy, x_3824.z);
            u_xlat11.x = x_3826;
            let x_3829 : f32 = u_xlat12.w;
            let x_3831 : f32 = u_xlat11.x;
            let x_3833 : f32 = u_xlat85;
            u_xlat84 = ((x_3829 * x_3831) + x_3833);
          }
        }
      } else {
        let x_3837 : vec4<f32> = u_xlat10;
        let x_3838 : vec2<f32> = vec2<f32>(x_3837.x, x_3837.y);
        let x_3840 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3838.x, x_3838.y, x_3840);
        let x_3847 : vec3<f32> = txVec59;
        let x_3849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3847.xy, x_3847.z);
        u_xlat84 = x_3849;
      }
      let x_3850 : i32 = u_xlati6;
      let x_3852 : f32 = x_727.x_AdditionalShadowParams[x_3850].x;
      u_xlat10.x = (1.0f + -(x_3852));
      let x_3856 : f32 = u_xlat84;
      let x_3857 : i32 = u_xlati6;
      let x_3859 : f32 = x_727.x_AdditionalShadowParams[x_3857].x;
      let x_3862 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3856 * x_3859) + x_3862);
      let x_3865 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3865);
      let x_3870 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3870 >= 1.0f);
      let x_3872 : bool = u_xlatb35;
      let x_3874 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3872 | x_3874);
      let x_3878 : bool = u_xlatb10.x;
      let x_3879 : f32 = u_xlat84;
      u_xlat84 = select(x_3879, 1.0f, x_3878);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3882 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3882) + 1.0f);
    let x_3886 : f32 = u_xlat78;
    let x_3888 : f32 = u_xlat10.x;
    let x_3890 : f32 = u_xlat84;
    u_xlat84 = ((x_3886 * x_3888) + x_3890);
    let x_3892 : f32 = u_xlat82;
    let x_3893 : f32 = u_xlat84;
    u_xlat82 = (x_3892 * x_3893);
    let x_3895 : vec3<f32> = u_xlat2;
    let x_3896 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3895, vec3<f32>(x_3896.x, x_3896.y, x_3896.z));
    let x_3899 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3899, 0.0f, 1.0f);
    let x_3901 : f32 = u_xlat82;
    let x_3902 : f32 = u_xlat84;
    u_xlat82 = (x_3901 * x_3902);
    let x_3904 : f32 = u_xlat82;
    let x_3906 : i32 = u_xlati6;
    let x_3908 : vec4<f32> = x_2406.x_AdditionalLightsColor[x_3906];
    let x_3910 : vec3<f32> = (vec3<f32>(x_3904, x_3904, x_3904) * vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
    let x_3911 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3910.x, x_3910.y, x_3910.z, x_3911.w);
    let x_3913 : vec4<f32> = u_xlat8;
    let x_3915 : f32 = u_xlat83;
    let x_3918 : vec4<f32> = u_xlat1;
    let x_3920 : vec3<f32> = ((vec3<f32>(x_3913.x, x_3913.y, x_3913.z) * vec3<f32>(x_3915, x_3915, x_3915)) + vec3<f32>(x_3918.x, x_3918.y, x_3918.z));
    let x_3921 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3920.x, x_3920.y, x_3920.z, x_3921.w);
    let x_3923 : vec4<f32> = u_xlat8;
    let x_3925 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3923.x, x_3923.y, x_3923.z), vec3<f32>(x_3925.x, x_3925.y, x_3925.z));
    let x_3930 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3930, 1.17549435e-38f);
    let x_3934 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_3934);
    let x_3937 : vec4<f32> = u_xlat6;
    let x_3939 : vec4<f32> = u_xlat8;
    let x_3941 : vec3<f32> = (vec3<f32>(x_3937.x, x_3937.x, x_3937.x) * vec3<f32>(x_3939.x, x_3939.y, x_3939.z));
    let x_3942 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3941.x, x_3941.y, x_3941.z, x_3942.w);
    let x_3944 : vec3<f32> = u_xlat2;
    let x_3945 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_3944, vec3<f32>(x_3945.x, x_3945.y, x_3945.z));
    let x_3950 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_3950, 0.0f, 1.0f);
    let x_3953 : vec4<f32> = u_xlat9;
    let x_3955 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3953.x, x_3953.y, x_3953.z), vec3<f32>(x_3955.x, x_3955.y, x_3955.z));
    let x_3958 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3958, 0.0f, 1.0f);
    let x_3961 : f32 = u_xlat6.x;
    let x_3963 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3961 * x_3963);
    let x_3967 : f32 = u_xlat6.x;
    let x_3969 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_3967 * x_3969) + 1.00001001358032226562f);
    let x_3973 : f32 = u_xlat82;
    let x_3974 : f32 = u_xlat82;
    u_xlat82 = (x_3973 * x_3974);
    let x_3977 : f32 = u_xlat6.x;
    let x_3979 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3977 * x_3979);
    let x_3982 : f32 = u_xlat82;
    u_xlat82 = max(x_3982, 0.10000000149011611938f);
    let x_3985 : f32 = u_xlat6.x;
    let x_3986 : f32 = u_xlat82;
    u_xlat6.x = (x_3985 * x_3986);
    let x_3989 : f32 = u_xlat79;
    let x_3991 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3989 * x_3991);
    let x_3994 : f32 = u_xlat77;
    let x_3996 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3994 / x_3996);
    let x_3999 : vec4<f32> = u_xlat5;
    let x_4001 : vec4<f32> = u_xlat6;
    let x_4004 : vec4<f32> = u_xlat4;
    let x_4006 : vec3<f32> = ((vec3<f32>(x_3999.x, x_3999.y, x_3999.z) * vec3<f32>(x_4001.x, x_4001.x, x_4001.x)) + vec3<f32>(x_4004.x, x_4004.y, x_4004.z));
    let x_4007 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4006.x, x_4006.y, x_4006.z, x_4007.w);
    let x_4009 : vec4<f32> = u_xlat8;
    let x_4011 : vec4<f32> = u_xlat10;
    let x_4014 : vec4<f32> = u_xlat7;
    let x_4016 : vec3<f32> = ((vec3<f32>(x_4009.x, x_4009.y, x_4009.z) * vec3<f32>(x_4011.x, x_4011.y, x_4011.z)) + vec3<f32>(x_4014.x, x_4014.y, x_4014.z));
    let x_4017 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4016.x, x_4016.y, x_4016.z, x_4017.w);

    continuing {
      let x_4019 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4019 + bitcast<u32>(1i));
    }
  }
  let x_4021 : vec4<f32> = u_xlat3;
  let x_4023 : f32 = u_xlat25;
  let x_4026 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4021.x, x_4021.y, x_4021.z) * vec3<f32>(x_4023, x_4023, x_4023)) + x_4026);
  let x_4028 : vec4<f32> = u_xlat7;
  let x_4030 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4028.x, x_4028.y, x_4028.z) + x_4030);
  let x_4032 : f32 = u_xlat76;
  let x_4033 : f32 = u_xlat76;
  u_xlat1.x = (x_4032 * -(x_4033));
  let x_4038 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4038);
  let x_4041 : vec3<f32> = u_xlat0;
  let x_4042 : f32 = u_xlat75;
  let x_4046 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_4041 * vec3<f32>(x_4042, x_4042, x_4042)) + -(vec3<f32>(x_4046.x, x_4046.y, x_4046.z)));
  let x_4052 : vec4<f32> = u_xlat1;
  let x_4054 : vec3<f32> = u_xlat0;
  let x_4057 : vec4<f32> = x_111.unity_FogColor;
  let x_4059 : vec3<f32> = ((vec3<f32>(x_4052.x, x_4052.x, x_4052.x) * x_4054) + vec3<f32>(x_4057.x, x_4057.y, x_4057.z));
  let x_4060 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4059.x, x_4059.y, x_4059.z, x_4060.w);
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


