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

@group(1) @binding(4) var<uniform> x_575 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2294 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2569 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2181 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2708 : f32;
  var x_2720 : f32;
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
  let x_567 : vec3<f32> = vs_TEXCOORD7;
  let x_577 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres0;
  let x_580 : vec3<f32> = (x_567 + -(vec3<f32>(x_577.x, x_577.y, x_577.z)));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres1;
  let x_588 : vec3<f32> = (x_583 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres2;
  let x_597 : vec3<f32> = (x_591 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres3;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_620 : vec4<f32> = u_xlat6;
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : vec4<f32> = u_xlat7;
  let x_628 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = x_575.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_634 < x_636);
  let x_639 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_639);
  let x_643 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_643);
  let x_647 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_655);
  let x_660 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_664);
  let x_667 : vec4<f32> = u_xlat3;
  let x_669 : vec4<f32> = u_xlat4;
  let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.y, x_667.z) + vec3<f32>(x_669.y, x_669.z, x_669.w));
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = max(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_678.x, x_677.x, x_677.y, x_677.z);
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_680, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_685 : f32 = u_xlat76;
  u_xlat76 = (-(x_685) + 4.0f);
  let x_690 : f32 = u_xlat76;
  u_xlatu76 = u32(x_690);
  let x_694 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_694) << bitcast<u32>(2i));
  let x_697 : vec3<f32> = vs_TEXCOORD7;
  let x_699 : i32 = u_xlati76;
  let x_702 : i32 = u_xlati76;
  let x_706 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_699 + 1i) / 4i)][((x_702 + 1i) % 4i)];
  let x_708 : vec3<f32> = (vec3<f32>(x_697.y, x_697.y, x_697.y) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : i32 = u_xlati76;
  let x_713 : i32 = u_xlati76;
  let x_716 : vec4<f32> = x_575.x_MainLightWorldToShadow[(x_711 / 4i)][(x_713 % 4i)];
  let x_718 : vec3<f32> = vs_TEXCOORD7;
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec3<f32> = ((vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.x, x_718.x)) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : i32 = u_xlati76;
  let x_729 : i32 = u_xlati76;
  let x_733 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_726 + 2i) / 4i)][((x_729 + 2i) % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.z, x_735.z, x_735.z)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : i32 = u_xlati76;
  let x_748 : i32 = u_xlati76;
  let x_752 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_745 + 3i) / 4i)][((x_748 + 3i) % 4i)];
  let x_754 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_759 : f32 = vs_TEXCOORD7.y;
  let x_761 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat76 = (x_759 * x_761);
  let x_764 : f32 = x_111.unity_MatrixV[0i].z;
  let x_766 : f32 = vs_TEXCOORD7.x;
  let x_768 : f32 = u_xlat76;
  u_xlat76 = ((x_764 * x_766) + x_768);
  let x_771 : f32 = x_111.unity_MatrixV[2i].z;
  let x_773 : f32 = vs_TEXCOORD7.z;
  let x_775 : f32 = u_xlat76;
  u_xlat76 = ((x_771 * x_773) + x_775);
  let x_777 : f32 = u_xlat76;
  let x_779 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat76 = (x_777 + x_779);
  let x_781 : f32 = u_xlat76;
  let x_784 : f32 = x_111.x_ProjectionParams.y;
  u_xlat76 = (-(x_781) + -(x_784));
  let x_787 : f32 = u_xlat76;
  u_xlat76 = max(x_787, 0.0f);
  let x_789 : f32 = u_xlat76;
  let x_791 : f32 = x_111.unity_FogParams.x;
  u_xlat76 = (x_789 * x_791);
  let x_798 : vec4<f32> = vs_TEXCOORD0;
  let x_801 : f32 = x_111.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_798.z, x_798.w), x_801);
  u_xlat4 = x_802;
  let x_807 : vec4<f32> = vs_TEXCOORD0;
  let x_810 : f32 = x_111.x_GlobalMipBias.x;
  let x_811 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_807.z, x_807.w), x_810);
  let x_812 : vec3<f32> = vec3<f32>(x_811.x, x_811.y, x_811.z);
  let x_813 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat4;
  let x_819 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_823 : vec3<f32> = u_xlat2;
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat77 = dot(x_823, vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat77;
  u_xlat77 = (x_827 + 0.5f);
  let x_829 : f32 = u_xlat77;
  let x_831 : vec4<f32> = u_xlat6;
  let x_833 : vec3<f32> = (vec3<f32>(x_829, x_829, x_829) * vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_837 : f32 = u_xlat4.w;
  u_xlat77 = max(x_837, 0.00009999999747378752f);
  let x_840 : vec4<f32> = u_xlat4;
  let x_842 : f32 = u_xlat77;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) / vec3<f32>(x_842, x_842, x_842));
  let x_845 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_848) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_854 : f32 = u_xlat50;
  let x_855 : f32 = u_xlat77;
  u_xlat78 = (x_854 + -(x_855));
  let x_858 : f32 = u_xlat77;
  let x_860 : vec4<f32> = u_xlat5;
  let x_862 : vec3<f32> = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat5;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_870 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec3<f32> = u_xlat0;
  let x_874 : vec4<f32> = u_xlat5;
  let x_879 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_880 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : f32 = u_xlat50;
  u_xlat0.x = (-(x_882) + 1.0f);
  let x_887 : f32 = u_xlat0.x;
  let x_889 : f32 = u_xlat0.x;
  u_xlat50 = (x_887 * x_889);
  let x_891 : f32 = u_xlat50;
  u_xlat50 = max(x_891, 0.0078125f);
  let x_894 : f32 = u_xlat50;
  let x_895 : f32 = u_xlat50;
  u_xlat77 = (x_894 * x_895);
  let x_897 : f32 = u_xlat78;
  u_xlat78 = (x_897 + 1.0f);
  let x_899 : f32 = u_xlat78;
  u_xlat78 = clamp(x_899, 0.0f, 1.0f);
  let x_902 : f32 = u_xlat50;
  u_xlat79 = ((x_902 * 4.0f) + 2.0f);
  let x_905 : f32 = u_xlat25;
  u_xlat25 = min(x_905, 1.0f);
  let x_909 : f32 = x_575.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_909);
  let x_911 : bool = u_xlatb80;
  if (x_911) {
    let x_915 : f32 = x_575.x_MainLightShadowParams.y;
    u_xlatb80 = (x_915 == 1.0f);
    let x_917 : bool = u_xlatb80;
    if (x_917) {
      let x_920 : vec4<f32> = u_xlat3;
      let x_923 : vec4<f32> = x_575.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y) + x_923);
      let x_926 : vec4<f32> = u_xlat7;
      let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
      let x_929 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_927.x, x_927.y, x_929);
      let x_941 : vec3<f32> = txVec0;
      let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
      u_xlat8.x = x_943;
      let x_946 : vec4<f32> = u_xlat7;
      let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
      let x_949 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_947.x, x_947.y, x_949);
      let x_956 : vec3<f32> = txVec1;
      let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
      u_xlat8.y = x_958;
      let x_960 : vec4<f32> = u_xlat3;
      let x_963 : vec4<f32> = x_575.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) + x_963);
      let x_966 : vec4<f32> = u_xlat7;
      let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
      let x_969 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_967.x, x_967.y, x_969);
      let x_976 : vec3<f32> = txVec2;
      let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
      u_xlat8.z = x_978;
      let x_981 : vec4<f32> = u_xlat7;
      let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
      let x_984 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_982.x, x_982.y, x_984);
      let x_991 : vec3<f32> = txVec3;
      let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
      u_xlat8.w = x_993;
      let x_996 : vec4<f32> = u_xlat8;
      u_xlat80 = dot(x_996, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1003 : f32 = x_575.x_MainLightShadowParams.y;
      u_xlatb81 = (x_1003 == 2.0f);
      let x_1005 : bool = u_xlatb81;
      if (x_1005) {
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat7;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1024 : vec4<f32> = u_xlat3;
        let x_1027 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(x_1027.z, x_1027.w)) + -(vec2<f32>(x_1030.x, x_1030.y)));
        let x_1034 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1034.x, x_1034.x, x_1034.y, x_1034.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1038 : vec4<f32> = u_xlat8;
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1038.x, x_1038.x, x_1038.z, x_1038.z) * vec4<f32>(x_1040.x, x_1040.x, x_1040.z, x_1040.z));
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1043.y, x_1043.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1047.x, x_1048.y, x_1047.y, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1053 : vec2<f32> = u_xlat57;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1053));
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1059 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1059) + vec2<f32>(1.0f, 1.0f));
        let x_1063 : vec2<f32> = u_xlat57;
        let x_1065 : vec2<f32> = min(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat10;
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1074 : vec2<f32> = u_xlat59;
        let x_1075 : vec2<f32> = ((-(vec2<f32>(x_1068.x, x_1068.y)) * vec2<f32>(x_1071.x, x_1071.y)) + x_1074);
        let x_1076 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1078, vec2<f32>(0.0f, 0.0f));
        let x_1080 : vec2<f32> = u_xlat57;
        let x_1082 : vec2<f32> = u_xlat57;
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1080) * x_1082) + vec2<f32>(x_1084.y, x_1084.w));
        let x_1087 : vec4<f32> = u_xlat10;
        let x_1089 : vec2<f32> = (vec2<f32>(x_1087.x, x_1087.y) + vec2<f32>(1.0f, 1.0f));
        let x_1090 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1092 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1092 + vec2<f32>(1.0f, 1.0f));
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec2<f32> = u_xlat59;
        let x_1102 : vec2<f32> = (x_1101 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1107 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec2<f32> = u_xlat57;
        let x_1111 : vec2<f32> = (x_1110 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1112 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1114.y, x_1114.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1118 : f32 = u_xlat10.x;
        u_xlat11.z = x_1118;
        let x_1121 : f32 = u_xlat57.x;
        u_xlat11.w = x_1121;
        let x_1124 : f32 = u_xlat12.x;
        u_xlat9.z = x_1124;
        let x_1127 : f32 = u_xlat8.x;
        u_xlat9.w = x_1127;
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1131 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1129.z, x_1129.w, x_1129.x, x_1129.z) + vec4<f32>(x_1131.z, x_1131.w, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat11.y;
        u_xlat10.z = x_1135;
        let x_1138 : f32 = u_xlat57.y;
        u_xlat10.w = x_1138;
        let x_1141 : f32 = u_xlat9.y;
        u_xlat12.z = x_1141;
        let x_1144 : f32 = u_xlat8.z;
        u_xlat12.w = x_1144;
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1148 : vec4<f32> = u_xlat12;
        let x_1150 : vec3<f32> = (vec3<f32>(x_1146.z, x_1146.y, x_1146.w) + vec3<f32>(x_1148.z, x_1148.y, x_1148.w));
        let x_1151 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1155 : vec4<f32> = u_xlat13;
        let x_1157 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.z, x_1153.w) / vec3<f32>(x_1155.z, x_1155.w, x_1155.y));
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1165 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat12;
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1172 : vec3<f32> = (vec3<f32>(x_1168.z, x_1168.y, x_1168.w) / vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
        let x_1173 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1175.x, x_1175.y, x_1175.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat9;
        let x_1183 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1180.y, x_1180.x, x_1180.z) * vec3<f32>(x_1183.x, x_1183.x, x_1183.x));
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat10;
        let x_1191 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1193 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) * vec3<f32>(x_1191.y, x_1191.y, x_1191.y));
        let x_1194 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
        let x_1197 : f32 = u_xlat10.x;
        u_xlat9.w = x_1197;
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1202 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y) * vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y)) + vec4<f32>(x_1205.y, x_1205.w, x_1205.x, x_1205.w));
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1211 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1211.x, x_1211.y)) + vec2<f32>(x_1214.z, x_1214.w));
        let x_1218 : f32 = u_xlat9.y;
        u_xlat10.w = x_1218;
        let x_1220 : vec4<f32> = u_xlat10;
        let x_1221 : vec2<f32> = vec2<f32>(x_1220.y, x_1220.z);
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1227 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.y) * vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) + vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1236 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y) * vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.y)) + vec4<f32>(x_1239.w, x_1239.y, x_1239.w, x_1239.z));
        let x_1242 : vec4<f32> = u_xlat7;
        let x_1245 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.w, x_1248.z, x_1248.w));
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1254 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1252.x, x_1252.x, x_1252.x, x_1252.y) * vec4<f32>(x_1254.z, x_1254.w, x_1254.y, x_1254.z));
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1260 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1258.y, x_1258.y, x_1258.z, x_1258.z) * x_1260);
        let x_1264 : f32 = u_xlat8.z;
        let x_1266 : f32 = u_xlat13.y;
        u_xlat81 = (x_1264 * x_1266);
        let x_1269 : vec4<f32> = u_xlat11;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec4;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1279.xy, x_1279.z);
        u_xlat7.x = x_1281;
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1295 : vec3<f32> = txVec5;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat32 = x_1297;
        let x_1298 : f32 = u_xlat32;
        let x_1300 : f32 = u_xlat14.y;
        u_xlat32 = (x_1298 * x_1300);
        let x_1303 : f32 = u_xlat14.x;
        let x_1305 : f32 = u_xlat7.x;
        let x_1307 : f32 = u_xlat32;
        u_xlat7.x = ((x_1303 * x_1305) + x_1307);
        let x_1311 : vec2<f32> = u_xlat57;
        let x_1313 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec6;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat32 = x_1322;
        let x_1324 : f32 = u_xlat14.z;
        let x_1325 : f32 = u_xlat32;
        let x_1328 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1324 * x_1325) + x_1328);
        let x_1332 : vec4<f32> = u_xlat10;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec7;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat32 = x_1344;
        let x_1346 : f32 = u_xlat14.w;
        let x_1347 : f32 = u_xlat32;
        let x_1350 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1346 * x_1347) + x_1350);
        let x_1354 : vec4<f32> = u_xlat12;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.x, x_1354.y);
        let x_1357 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec8;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat32 = x_1366;
        let x_1368 : f32 = u_xlat15.x;
        let x_1369 : f32 = u_xlat32;
        let x_1372 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1368 * x_1369) + x_1372);
        let x_1376 : vec4<f32> = u_xlat12;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.z, x_1376.w);
        let x_1379 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec9;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat32 = x_1388;
        let x_1390 : f32 = u_xlat15.y;
        let x_1391 : f32 = u_xlat32;
        let x_1394 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1390 * x_1391) + x_1394);
        let x_1398 : vec4<f32> = u_xlat10;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.z, x_1398.w);
        let x_1401 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec10;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat32 = x_1410;
        let x_1412 : f32 = u_xlat15.z;
        let x_1413 : f32 = u_xlat32;
        let x_1416 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1412 * x_1413) + x_1416);
        let x_1420 : vec4<f32> = u_xlat9;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.x, x_1420.y);
        let x_1423 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec11;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat32 = x_1432;
        let x_1434 : f32 = u_xlat15.w;
        let x_1435 : f32 = u_xlat32;
        let x_1438 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1434 * x_1435) + x_1438);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec12;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat32 = x_1454;
        let x_1455 : f32 = u_xlat81;
        let x_1456 : f32 = u_xlat32;
        let x_1459 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1455 * x_1456) + x_1459);
      } else {
        let x_1462 : vec4<f32> = u_xlat3;
        let x_1465 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1468 : vec2<f32> = ((vec2<f32>(x_1462.x, x_1462.y) * vec2<f32>(x_1465.z, x_1465.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1469 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1468.x, x_1468.y, x_1469.z, x_1469.w);
        let x_1471 : vec4<f32> = u_xlat7;
        let x_1473 : vec2<f32> = floor(vec2<f32>(x_1471.x, x_1471.y));
        let x_1474 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1473.x, x_1473.y, x_1474.z, x_1474.w);
        let x_1476 : vec4<f32> = u_xlat3;
        let x_1479 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1482 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1476.x, x_1476.y) * vec2<f32>(x_1479.z, x_1479.w)) + -(vec2<f32>(x_1482.x, x_1482.y)));
        let x_1486 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1486.x, x_1486.x, x_1486.y, x_1486.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1489 : vec4<f32> = u_xlat8;
        let x_1491 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1489.x, x_1489.x, x_1489.z, x_1489.z) * vec4<f32>(x_1491.x, x_1491.x, x_1491.z, x_1491.z));
        let x_1494 : vec4<f32> = u_xlat9;
        let x_1498 : vec2<f32> = (vec2<f32>(x_1494.y, x_1494.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1499 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1499.x, x_1498.x, x_1499.z, x_1498.y);
        let x_1501 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = u_xlat57;
        let x_1506 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1504));
        let x_1507 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1506.x, x_1507.y, x_1506.y, x_1507.w);
        let x_1509 : vec2<f32> = u_xlat57;
        let x_1511 : vec2<f32> = (-(x_1509) + vec2<f32>(1.0f, 1.0f));
        let x_1512 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
        let x_1514 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1514, vec2<f32>(0.0f, 0.0f));
        let x_1516 : vec2<f32> = u_xlat59;
        let x_1518 : vec2<f32> = u_xlat59;
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1522 : vec2<f32> = ((-(x_1516) * x_1518) + vec2<f32>(x_1520.x, x_1520.y));
        let x_1523 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1523.w);
        let x_1525 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1525, vec2<f32>(0.0f, 0.0f));
        let x_1528 : vec2<f32> = u_xlat59;
        let x_1530 : vec2<f32> = u_xlat59;
        let x_1532 : vec4<f32> = u_xlat8;
        let x_1534 : vec2<f32> = ((-(x_1528) * x_1530) + vec2<f32>(x_1532.y, x_1532.w));
        let x_1535 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1534.x, x_1535.y, x_1534.y);
        let x_1537 : vec4<f32> = u_xlat9;
        let x_1540 : vec2<f32> = (vec2<f32>(x_1537.x, x_1537.y) + vec2<f32>(2.0f, 2.0f));
        let x_1541 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
        let x_1543 : vec3<f32> = u_xlat33;
        let x_1545 : vec2<f32> = (vec2<f32>(x_1543.x, x_1543.z) + vec2<f32>(2.0f, 2.0f));
        let x_1546 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1546.x, x_1545.x, x_1546.z, x_1545.y);
        let x_1549 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1549 * 0.08163200318813323975f);
        let x_1553 : vec4<f32> = u_xlat8;
        let x_1556 : vec3<f32> = (vec3<f32>(x_1553.z, x_1553.x, x_1553.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1557 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
        let x_1559 : vec4<f32> = u_xlat9;
        let x_1562 : vec2<f32> = (vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1563 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
        let x_1566 : f32 = u_xlat12.y;
        u_xlat11.x = x_1566;
        let x_1568 : vec2<f32> = u_xlat57;
        let x_1575 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1576 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1576.x, x_1575.x, x_1576.z, x_1575.y);
        let x_1578 : vec2<f32> = u_xlat57;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1578.x, x_1578.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1583 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1582.x, x_1583.y, x_1582.y, x_1583.w);
        let x_1586 : f32 = u_xlat8.x;
        u_xlat9.y = x_1586;
        let x_1589 : f32 = u_xlat10.y;
        u_xlat9.w = x_1589;
        let x_1591 : vec4<f32> = u_xlat9;
        let x_1592 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1591 + x_1592);
        let x_1594 : vec2<f32> = u_xlat57;
        let x_1597 : vec2<f32> = ((vec2<f32>(x_1594.y, x_1594.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1598 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1598.x, x_1597.x, x_1598.z, x_1597.y);
        let x_1600 : vec2<f32> = u_xlat57;
        let x_1603 : vec2<f32> = ((vec2<f32>(x_1600.y, x_1600.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1604 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1604.w);
        let x_1607 : f32 = u_xlat8.y;
        u_xlat10.y = x_1607;
        let x_1609 : vec4<f32> = u_xlat10;
        let x_1610 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1609 + x_1610);
        let x_1612 : vec4<f32> = u_xlat9;
        let x_1613 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1612 / x_1613);
        let x_1615 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1615 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1621 : vec4<f32> = u_xlat10;
        let x_1622 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1621 / x_1622);
        let x_1624 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1624 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1626 : vec4<f32> = u_xlat9;
        let x_1629 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1626.w, x_1626.x, x_1626.y, x_1626.z) * vec4<f32>(x_1629.x, x_1629.x, x_1629.x, x_1629.x));
        let x_1632 : vec4<f32> = u_xlat10;
        let x_1635 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1632.x, x_1632.w, x_1632.y, x_1632.z) * vec4<f32>(x_1635.y, x_1635.y, x_1635.y, x_1635.y));
        let x_1638 : vec4<f32> = u_xlat9;
        let x_1639 : vec3<f32> = vec3<f32>(x_1638.y, x_1638.z, x_1638.w);
        let x_1640 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1639.x, x_1640.y, x_1639.y, x_1639.z);
        let x_1643 : f32 = u_xlat10.x;
        u_xlat12.y = x_1643;
        let x_1645 : vec4<f32> = u_xlat7;
        let x_1648 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1651 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1645.x, x_1645.y, x_1645.x, x_1645.y) * vec4<f32>(x_1648.x, x_1648.y, x_1648.x, x_1648.y)) + vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1651.y));
        let x_1654 : vec4<f32> = u_xlat7;
        let x_1657 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1660 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1654.x, x_1654.y) * vec2<f32>(x_1657.x, x_1657.y)) + vec2<f32>(x_1660.w, x_1660.y));
        let x_1664 : f32 = u_xlat12.y;
        u_xlat9.y = x_1664;
        let x_1667 : f32 = u_xlat10.z;
        u_xlat12.y = x_1667;
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1672 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1675 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1669.x, x_1669.y, x_1669.x, x_1669.y) * vec4<f32>(x_1672.x, x_1672.y, x_1672.x, x_1672.y)) + vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1675.y));
        let x_1678 : vec4<f32> = u_xlat7;
        let x_1681 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1684 : vec4<f32> = u_xlat12;
        let x_1686 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(x_1681.x, x_1681.y)) + vec2<f32>(x_1684.w, x_1684.y));
        let x_1687 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1686.x, x_1686.y, x_1687.z, x_1687.w);
        let x_1690 : f32 = u_xlat12.y;
        u_xlat9.z = x_1690;
        let x_1693 : vec4<f32> = u_xlat7;
        let x_1696 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1699 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1693.x, x_1693.y, x_1693.x, x_1693.y) * vec4<f32>(x_1696.x, x_1696.y, x_1696.x, x_1696.y)) + vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.z));
        let x_1703 : f32 = u_xlat10.w;
        u_xlat12.y = x_1703;
        let x_1706 : vec4<f32> = u_xlat7;
        let x_1709 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1712 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1706.x, x_1706.y, x_1706.x, x_1706.y) * vec4<f32>(x_1709.x, x_1709.y, x_1709.x, x_1709.y)) + vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1712.y));
        let x_1716 : vec4<f32> = u_xlat7;
        let x_1719 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1719.x, x_1719.y)) + vec2<f32>(x_1722.w, x_1722.y));
        let x_1726 : f32 = u_xlat12.y;
        u_xlat9.w = x_1726;
        let x_1729 : vec4<f32> = u_xlat7;
        let x_1732 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1735 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1732.x, x_1732.y)) + vec2<f32>(x_1735.x, x_1735.w));
        let x_1738 : vec4<f32> = u_xlat12;
        let x_1739 : vec3<f32> = vec3<f32>(x_1738.x, x_1738.z, x_1738.w);
        let x_1740 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1739.x, x_1740.y, x_1739.y, x_1739.z);
        let x_1742 : vec4<f32> = u_xlat7;
        let x_1745 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1748 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1742.x, x_1742.y, x_1742.x, x_1742.y) * vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y)) + vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1748.y));
        let x_1752 : vec4<f32> = u_xlat7;
        let x_1755 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1758 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1752.x, x_1752.y) * vec2<f32>(x_1755.x, x_1755.y)) + vec2<f32>(x_1758.w, x_1758.y));
        let x_1762 : f32 = u_xlat9.x;
        u_xlat10.x = x_1762;
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1767 : vec4<f32> = x_575.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat10;
        let x_1772 : vec2<f32> = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.x, x_1770.y));
        let x_1773 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
        let x_1776 : vec4<f32> = u_xlat8;
        let x_1778 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1776.x, x_1776.x, x_1776.x, x_1776.x) * x_1778);
        let x_1781 : vec4<f32> = u_xlat8;
        let x_1783 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1781.y, x_1781.y, x_1781.y, x_1781.y) * x_1783);
        let x_1786 : vec4<f32> = u_xlat8;
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1786.z, x_1786.z, x_1786.z, x_1786.z) * x_1788);
        let x_1790 : vec4<f32> = u_xlat8;
        let x_1792 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1790.w, x_1790.w, x_1790.w, x_1790.w) * x_1792);
        let x_1795 : vec4<f32> = u_xlat13;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.x, x_1795.y);
        let x_1798 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec13;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1805.xy, x_1805.z);
        u_xlat81 = x_1807;
        let x_1809 : vec4<f32> = u_xlat13;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.z, x_1809.w);
        let x_1812 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec14;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1819.xy, x_1819.z);
        u_xlat9.x = x_1821;
        let x_1824 : f32 = u_xlat9.x;
        let x_1826 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1824 * x_1826);
        let x_1830 : f32 = u_xlat18.x;
        let x_1831 : f32 = u_xlat81;
        let x_1834 : f32 = u_xlat9.x;
        u_xlat81 = ((x_1830 * x_1831) + x_1834);
        let x_1837 : vec2<f32> = u_xlat57;
        let x_1839 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec15;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1846.xy, x_1846.z);
        u_xlat57.x = x_1848;
        let x_1851 : f32 = u_xlat18.z;
        let x_1853 : f32 = u_xlat57.x;
        let x_1855 : f32 = u_xlat81;
        u_xlat81 = ((x_1851 * x_1853) + x_1855);
        let x_1858 : vec4<f32> = u_xlat16;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec16;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
        u_xlat57.x = x_1870;
        let x_1873 : f32 = u_xlat18.w;
        let x_1875 : f32 = u_xlat57.x;
        let x_1877 : f32 = u_xlat81;
        u_xlat81 = ((x_1873 * x_1875) + x_1877);
        let x_1880 : vec4<f32> = u_xlat14;
        let x_1881 : vec2<f32> = vec2<f32>(x_1880.x, x_1880.y);
        let x_1883 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec17;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat57.x = x_1892;
        let x_1895 : f32 = u_xlat19.x;
        let x_1897 : f32 = u_xlat57.x;
        let x_1899 : f32 = u_xlat81;
        u_xlat81 = ((x_1895 * x_1897) + x_1899);
        let x_1902 : vec4<f32> = u_xlat14;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
        let x_1905 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec18;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
        u_xlat57.x = x_1914;
        let x_1917 : f32 = u_xlat19.y;
        let x_1919 : f32 = u_xlat57.x;
        let x_1921 : f32 = u_xlat81;
        u_xlat81 = ((x_1917 * x_1919) + x_1921);
        let x_1924 : vec4<f32> = u_xlat15;
        let x_1925 : vec2<f32> = vec2<f32>(x_1924.x, x_1924.y);
        let x_1927 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1925.x, x_1925.y, x_1927);
        let x_1934 : vec3<f32> = txVec19;
        let x_1936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1934.xy, x_1934.z);
        u_xlat57.x = x_1936;
        let x_1939 : f32 = u_xlat19.z;
        let x_1941 : f32 = u_xlat57.x;
        let x_1943 : f32 = u_xlat81;
        u_xlat81 = ((x_1939 * x_1941) + x_1943);
        let x_1946 : vec4<f32> = u_xlat16;
        let x_1947 : vec2<f32> = vec2<f32>(x_1946.z, x_1946.w);
        let x_1949 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec20;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1956.xy, x_1956.z);
        u_xlat57.x = x_1958;
        let x_1961 : f32 = u_xlat19.w;
        let x_1963 : f32 = u_xlat57.x;
        let x_1965 : f32 = u_xlat81;
        u_xlat81 = ((x_1961 * x_1963) + x_1965);
        let x_1968 : vec4<f32> = u_xlat17;
        let x_1969 : vec2<f32> = vec2<f32>(x_1968.x, x_1968.y);
        let x_1971 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
        let x_1978 : vec3<f32> = txVec21;
        let x_1980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1978.xy, x_1978.z);
        u_xlat57.x = x_1980;
        let x_1983 : f32 = u_xlat20.x;
        let x_1985 : f32 = u_xlat57.x;
        let x_1987 : f32 = u_xlat81;
        u_xlat81 = ((x_1983 * x_1985) + x_1987);
        let x_1990 : vec4<f32> = u_xlat17;
        let x_1991 : vec2<f32> = vec2<f32>(x_1990.z, x_1990.w);
        let x_1993 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1991.x, x_1991.y, x_1993);
        let x_2000 : vec3<f32> = txVec22;
        let x_2002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2000.xy, x_2000.z);
        u_xlat57.x = x_2002;
        let x_2005 : f32 = u_xlat20.y;
        let x_2007 : f32 = u_xlat57.x;
        let x_2009 : f32 = u_xlat81;
        u_xlat81 = ((x_2005 * x_2007) + x_2009);
        let x_2012 : vec2<f32> = u_xlat34;
        let x_2014 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec23;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2021.xy, x_2021.z);
        u_xlat57.x = x_2023;
        let x_2026 : f32 = u_xlat20.z;
        let x_2028 : f32 = u_xlat57.x;
        let x_2030 : f32 = u_xlat81;
        u_xlat81 = ((x_2026 * x_2028) + x_2030);
        let x_2033 : vec2<f32> = u_xlat65;
        let x_2035 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec24;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
        u_xlat57.x = x_2044;
        let x_2047 : f32 = u_xlat20.w;
        let x_2049 : f32 = u_xlat57.x;
        let x_2051 : f32 = u_xlat81;
        u_xlat81 = ((x_2047 * x_2049) + x_2051);
        let x_2054 : vec4<f32> = u_xlat12;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.x, x_2054.y);
        let x_2057 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec25;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2064.xy, x_2064.z);
        u_xlat57.x = x_2066;
        let x_2069 : f32 = u_xlat8.x;
        let x_2071 : f32 = u_xlat57.x;
        let x_2073 : f32 = u_xlat81;
        u_xlat81 = ((x_2069 * x_2071) + x_2073);
        let x_2076 : vec4<f32> = u_xlat12;
        let x_2077 : vec2<f32> = vec2<f32>(x_2076.z, x_2076.w);
        let x_2079 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
        let x_2086 : vec3<f32> = txVec26;
        let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
        u_xlat57.x = x_2088;
        let x_2091 : f32 = u_xlat8.y;
        let x_2093 : f32 = u_xlat57.x;
        let x_2095 : f32 = u_xlat81;
        u_xlat81 = ((x_2091 * x_2093) + x_2095);
        let x_2098 : vec2<f32> = u_xlat60;
        let x_2100 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec27;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
        u_xlat57.x = x_2109;
        let x_2112 : f32 = u_xlat8.z;
        let x_2114 : f32 = u_xlat57.x;
        let x_2116 : f32 = u_xlat81;
        u_xlat81 = ((x_2112 * x_2114) + x_2116);
        let x_2119 : vec4<f32> = u_xlat7;
        let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
        let x_2122 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
        let x_2129 : vec3<f32> = txVec28;
        let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
        u_xlat7.x = x_2131;
        let x_2134 : f32 = u_xlat8.w;
        let x_2136 : f32 = u_xlat7.x;
        let x_2138 : f32 = u_xlat81;
        u_xlat80 = ((x_2134 * x_2136) + x_2138);
      }
    }
  } else {
    let x_2142 : vec4<f32> = u_xlat3;
    let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
    let x_2145 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
    let x_2152 : vec3<f32> = txVec29;
    let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
    u_xlat80 = x_2154;
  }
  let x_2156 : f32 = x_575.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2156) + 1.0f);
  let x_2160 : f32 = u_xlat80;
  let x_2162 : f32 = x_575.x_MainLightShadowParams.x;
  let x_2165 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2160 * x_2162) + x_2165);
  let x_2170 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2170);
  let x_2174 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2174 >= 1.0f);
  let x_2176 : bool = u_xlatb53;
  let x_2177 : bool = u_xlatb28;
  u_xlatb28 = (x_2176 | x_2177);
  let x_2179 : bool = u_xlatb28;
  if (x_2179) {
    x_2181 = 1.0f;
  } else {
    let x_2186 : f32 = u_xlat3.x;
    x_2181 = x_2186;
  }
  let x_2187 : f32 = x_2181;
  u_xlat3.x = x_2187;
  let x_2189 : vec3<f32> = vs_TEXCOORD7;
  let x_2191 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2193 : vec3<f32> = (x_2189 + -(x_2191));
  let x_2194 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
  let x_2197 : vec4<f32> = u_xlat7;
  let x_2199 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2197.x, x_2197.y, x_2197.z), vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2203 : f32 = u_xlat28;
  let x_2205 : f32 = x_575.x_MainLightShadowParams.z;
  let x_2208 : f32 = x_575.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2203 * x_2205) + x_2208);
  let x_2210 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2210, 0.0f, 1.0f);
  let x_2213 : f32 = u_xlat3.x;
  u_xlat80 = (-(x_2213) + 1.0f);
  let x_2216 : f32 = u_xlat53;
  let x_2217 : f32 = u_xlat80;
  let x_2220 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2216 * x_2217) + x_2220);
  let x_2223 : vec4<f32> = u_xlat1;
  let x_2226 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(-(vec3<f32>(x_2223.x, x_2223.y, x_2223.z)), x_2226);
  let x_2228 : f32 = u_xlat53;
  let x_2229 : f32 = u_xlat53;
  u_xlat53 = (x_2228 + x_2229);
  let x_2231 : vec3<f32> = u_xlat2;
  let x_2232 : f32 = u_xlat53;
  let x_2236 : vec4<f32> = u_xlat1;
  let x_2239 : vec3<f32> = ((x_2231 * -(vec3<f32>(x_2232, x_2232, x_2232))) + -(vec3<f32>(x_2236.x, x_2236.y, x_2236.z)));
  let x_2240 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
  let x_2242 : vec3<f32> = u_xlat2;
  let x_2243 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(x_2242, vec3<f32>(x_2243.x, x_2243.y, x_2243.z));
  let x_2246 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2246, 0.0f, 1.0f);
  let x_2248 : f32 = u_xlat53;
  u_xlat53 = (-(x_2248) + 1.0f);
  let x_2251 : f32 = u_xlat53;
  let x_2252 : f32 = u_xlat53;
  u_xlat53 = (x_2251 * x_2252);
  let x_2254 : f32 = u_xlat53;
  let x_2255 : f32 = u_xlat53;
  u_xlat53 = (x_2254 * x_2255);
  let x_2258 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2258) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2265 : f32 = u_xlat0.x;
  let x_2266 : f32 = u_xlat80;
  u_xlat0.x = (x_2265 * x_2266);
  let x_2270 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2270 * 6.0f);
  let x_2282 : vec4<f32> = u_xlat7;
  let x_2285 : f32 = u_xlat0.x;
  let x_2286 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2282.x, x_2282.y, x_2282.z), x_2285);
  u_xlat7 = x_2286;
  let x_2288 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2288 + -1.0f);
  let x_2296 : f32 = x_2294.unity_SpecCube0_HDR.w;
  let x_2298 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2296 * x_2298) + 1.0f);
  let x_2303 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2303, 0.0f);
  let x_2307 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2307);
  let x_2311 : f32 = u_xlat0.x;
  let x_2313 : f32 = x_2294.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2311 * x_2313);
  let x_2317 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2317);
  let x_2321 : f32 = u_xlat0.x;
  let x_2323 : f32 = x_2294.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2321 * x_2323);
  let x_2326 : vec4<f32> = u_xlat7;
  let x_2328 : vec3<f32> = u_xlat0;
  let x_2330 : vec3<f32> = (vec3<f32>(x_2326.x, x_2326.y, x_2326.z) * vec3<f32>(x_2328.x, x_2328.x, x_2328.x));
  let x_2331 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
  let x_2333 : f32 = u_xlat50;
  let x_2335 : f32 = u_xlat50;
  let x_2339 : vec2<f32> = ((vec2<f32>(x_2333, x_2333) * vec2<f32>(x_2335, x_2335)) + vec2<f32>(-1.0f, 1.0f));
  let x_2340 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2339.x, x_2340.y, x_2339.y);
  let x_2343 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2343);
  let x_2345 : vec4<f32> = u_xlat5;
  let x_2348 : f32 = u_xlat78;
  let x_2350 : vec3<f32> = (-(vec3<f32>(x_2345.x, x_2345.y, x_2345.z)) + vec3<f32>(x_2348, x_2348, x_2348));
  let x_2351 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
  let x_2353 : f32 = u_xlat53;
  let x_2355 : vec4<f32> = u_xlat8;
  let x_2358 : vec4<f32> = u_xlat5;
  let x_2360 : vec3<f32> = ((vec3<f32>(x_2353, x_2353, x_2353) * vec3<f32>(x_2355.x, x_2355.y, x_2355.z)) + vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
  let x_2363 : f32 = u_xlat50;
  let x_2365 : vec4<f32> = u_xlat8;
  let x_2367 : vec3<f32> = (vec3<f32>(x_2363, x_2363, x_2363) * vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
  let x_2368 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2367.x, x_2367.y, x_2367.z, x_2368.w);
  let x_2370 : vec4<f32> = u_xlat7;
  let x_2372 : vec4<f32> = u_xlat8;
  let x_2374 : vec3<f32> = (vec3<f32>(x_2370.x, x_2370.y, x_2370.z) * vec3<f32>(x_2372.x, x_2372.y, x_2372.z));
  let x_2375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
  let x_2377 : vec4<f32> = u_xlat4;
  let x_2379 : vec4<f32> = u_xlat6;
  let x_2382 : vec4<f32> = u_xlat7;
  let x_2384 : vec3<f32> = ((vec3<f32>(x_2377.x, x_2377.y, x_2377.z) * vec3<f32>(x_2379.x, x_2379.y, x_2379.z)) + vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
  let x_2385 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
  let x_2388 : f32 = u_xlat3.x;
  let x_2390 : f32 = x_2294.unity_LightData.z;
  u_xlat50 = (x_2388 * x_2390);
  let x_2392 : vec3<f32> = u_xlat2;
  let x_2394 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(x_2392, vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2399 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2399, 0.0f, 1.0f);
  let x_2402 : f32 = u_xlat50;
  let x_2404 : f32 = u_xlat3.x;
  u_xlat50 = (x_2402 * x_2404);
  let x_2406 : f32 = u_xlat50;
  let x_2409 : vec4<f32> = x_111.x_MainLightColor;
  let x_2411 : vec3<f32> = (vec3<f32>(x_2406, x_2406, x_2406) * vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
  let x_2412 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2411.x, x_2412.y, x_2411.y, x_2411.z);
  let x_2414 : vec4<f32> = u_xlat1;
  let x_2417 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2419 : vec3<f32> = (vec3<f32>(x_2414.x, x_2414.y, x_2414.z) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
  let x_2422 : vec4<f32> = u_xlat7;
  let x_2424 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2422.x, x_2422.y, x_2422.z), vec3<f32>(x_2424.x, x_2424.y, x_2424.z));
  let x_2427 : f32 = u_xlat50;
  u_xlat50 = max(x_2427, 1.17549435e-38f);
  let x_2430 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2430);
  let x_2432 : f32 = u_xlat50;
  let x_2434 : vec4<f32> = u_xlat7;
  let x_2436 : vec3<f32> = (vec3<f32>(x_2432, x_2432, x_2432) * vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
  let x_2439 : vec3<f32> = u_xlat2;
  let x_2440 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_2439, vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
  let x_2443 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2443, 0.0f, 1.0f);
  let x_2446 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2448 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2446.x, x_2446.y, x_2446.z), vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
  let x_2451 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2451, 0.0f, 1.0f);
  let x_2453 : f32 = u_xlat50;
  let x_2454 : f32 = u_xlat50;
  u_xlat50 = (x_2453 * x_2454);
  let x_2456 : f32 = u_xlat50;
  let x_2458 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2456 * x_2458) + 1.00001001358032226562f);
  let x_2462 : f32 = u_xlat80;
  let x_2463 : f32 = u_xlat80;
  u_xlat80 = (x_2462 * x_2463);
  let x_2465 : f32 = u_xlat50;
  let x_2466 : f32 = u_xlat50;
  u_xlat50 = (x_2465 * x_2466);
  let x_2468 : f32 = u_xlat80;
  u_xlat80 = max(x_2468, 0.10000000149011611938f);
  let x_2471 : f32 = u_xlat50;
  let x_2472 : f32 = u_xlat80;
  u_xlat50 = (x_2471 * x_2472);
  let x_2474 : f32 = u_xlat79;
  let x_2475 : f32 = u_xlat50;
  u_xlat50 = (x_2474 * x_2475);
  let x_2477 : f32 = u_xlat77;
  let x_2478 : f32 = u_xlat50;
  u_xlat50 = (x_2477 / x_2478);
  let x_2480 : vec4<f32> = u_xlat5;
  let x_2482 : f32 = u_xlat50;
  let x_2485 : vec4<f32> = u_xlat6;
  let x_2487 : vec3<f32> = ((vec3<f32>(x_2480.x, x_2480.y, x_2480.z) * vec3<f32>(x_2482, x_2482, x_2482)) + vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
  let x_2490 : vec4<f32> = u_xlat3;
  let x_2492 : vec4<f32> = u_xlat7;
  let x_2494 : vec3<f32> = (vec3<f32>(x_2490.x, x_2490.z, x_2490.w) * vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2495 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2494.x, x_2495.y, x_2494.y, x_2494.z);
  let x_2498 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2500 : f32 = x_2294.unity_LightData.y;
  u_xlat50 = min(x_2498, x_2500);
  let x_2503 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2503));
  let x_2506 : f32 = u_xlat28;
  let x_2508 : f32 = x_575.x_AdditionalShadowFadeParams.x;
  let x_2511 : f32 = x_575.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_2506 * x_2508) + x_2511);
  let x_2513 : f32 = u_xlat28;
  u_xlat28 = clamp(x_2513, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2525 : u32 = u_xlatu_loop_1;
    let x_2526 : u32 = u_xlatu50;
    if ((x_2525 < x_2526)) {
    } else {
      break;
    }
    let x_2529 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2529 >> 2u);
    let x_2532 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2532 & 3u));
    let x_2535 : u32 = u_xlatu81;
    let x_2538 : vec4<f32> = x_2294.unity_LightIndices[bitcast<i32>(x_2535)];
    let x_2548 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2553 : vec4<u32> = indexable[x_2548];
    u_xlat81 = dot(x_2538, bitcast<vec4<f32>>(x_2553));
    let x_2557 : f32 = u_xlat81;
    u_xlati81 = i32(x_2557);
    let x_2559 : vec3<f32> = vs_TEXCOORD7;
    let x_2570 : i32 = u_xlati81;
    let x_2572 : vec4<f32> = x_2569.x_AdditionalLightsPosition[x_2570];
    let x_2575 : i32 = u_xlati81;
    let x_2577 : vec4<f32> = x_2569.x_AdditionalLightsPosition[x_2575];
    let x_2579 : vec3<f32> = ((-(x_2559) * vec3<f32>(x_2572.w, x_2572.w, x_2572.w)) + vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
    let x_2580 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
    let x_2583 : vec4<f32> = u_xlat8;
    let x_2585 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2583.x, x_2583.y, x_2583.z), vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
    let x_2588 : f32 = u_xlat82;
    u_xlat82 = max(x_2588, 0.00006103515625f);
    let x_2591 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2591);
    let x_2593 : f32 = u_xlat83;
    let x_2595 : vec4<f32> = u_xlat8;
    let x_2597 : vec3<f32> = (vec3<f32>(x_2593, x_2593, x_2593) * vec3<f32>(x_2595.x, x_2595.y, x_2595.z));
    let x_2598 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);
    let x_2601 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2601);
    let x_2603 : f32 = u_xlat82;
    let x_2604 : i32 = u_xlati81;
    let x_2606 : f32 = x_2569.x_AdditionalLightsAttenuation[x_2604].x;
    u_xlat82 = (x_2603 * x_2606);
    let x_2608 : f32 = u_xlat82;
    let x_2610 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2608) * x_2610) + 1.0f);
    let x_2613 : f32 = u_xlat82;
    u_xlat82 = max(x_2613, 0.0f);
    let x_2615 : f32 = u_xlat82;
    let x_2616 : f32 = u_xlat82;
    u_xlat82 = (x_2615 * x_2616);
    let x_2618 : f32 = u_xlat82;
    let x_2619 : f32 = u_xlat84;
    u_xlat82 = (x_2618 * x_2619);
    let x_2621 : i32 = u_xlati81;
    let x_2623 : vec4<f32> = x_2569.x_AdditionalLightsSpotDir[x_2621];
    let x_2625 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2623.x, x_2623.y, x_2623.z), vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
    let x_2628 : f32 = u_xlat84;
    let x_2629 : i32 = u_xlati81;
    let x_2631 : f32 = x_2569.x_AdditionalLightsAttenuation[x_2629].z;
    let x_2633 : i32 = u_xlati81;
    let x_2635 : f32 = x_2569.x_AdditionalLightsAttenuation[x_2633].w;
    u_xlat84 = ((x_2628 * x_2631) + x_2635);
    let x_2637 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2637, 0.0f, 1.0f);
    let x_2639 : f32 = u_xlat84;
    let x_2640 : f32 = u_xlat84;
    u_xlat84 = (x_2639 * x_2640);
    let x_2642 : f32 = u_xlat82;
    let x_2643 : f32 = u_xlat84;
    u_xlat82 = (x_2642 * x_2643);
    let x_2646 : i32 = u_xlati81;
    let x_2648 : f32 = x_575.x_AdditionalShadowParams[x_2646].w;
    u_xlati84 = i32(x_2648);
    let x_2653 : i32 = u_xlati84;
    u_xlatb10.x = (x_2653 >= 0i);
    let x_2657 : bool = u_xlatb10.x;
    if (x_2657) {
      let x_2661 : i32 = u_xlati81;
      let x_2663 : f32 = x_575.x_AdditionalShadowParams[x_2661].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2663, x_2663, x_2663, x_2663))));
      let x_2669 : bool = u_xlatb10.x;
      if (x_2669) {
        let x_2672 : vec4<f32> = u_xlat9;
        let x_2675 : vec4<f32> = u_xlat9;
        let x_2678 : vec4<bool> = (abs(vec4<f32>(x_2672.z, x_2672.z, x_2672.y, x_2672.z)) >= abs(vec4<f32>(x_2675.x, x_2675.y, x_2675.x, x_2675.x)));
        u_xlatb10 = vec3<bool>(x_2678.x, x_2678.y, x_2678.z);
        let x_2681 : bool = u_xlatb10.y;
        let x_2683 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2681 & x_2683);
        let x_2687 : vec4<f32> = u_xlat9;
        let x_2690 : vec4<bool> = (-(vec4<f32>(x_2687.z, x_2687.y, x_2687.x, x_2687.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2690.x, x_2690.y, x_2690.z);
        let x_2694 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2694);
        let x_2699 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2699);
        let x_2703 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2703);
        let x_2707 : bool = u_xlatb10.z;
        if (x_2707) {
          let x_2712 : f32 = u_xlat35.z;
          x_2708 = x_2712;
        } else {
          let x_2715 : f32 = u_xlat11.x;
          x_2708 = x_2715;
        }
        let x_2716 : f32 = x_2708;
        u_xlat60.x = x_2716;
        let x_2719 : bool = u_xlatb10.x;
        if (x_2719) {
          let x_2724 : f32 = u_xlat35.x;
          x_2720 = x_2724;
        } else {
          let x_2727 : f32 = u_xlat60.x;
          x_2720 = x_2727;
        }
        let x_2728 : f32 = x_2720;
        u_xlat10.x = x_2728;
        let x_2730 : i32 = u_xlati81;
        let x_2732 : f32 = x_575.x_AdditionalShadowParams[x_2730].w;
        u_xlat35.x = trunc(x_2732);
        let x_2736 : f32 = u_xlat10.x;
        let x_2738 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2736 + x_2738);
        let x_2742 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2742);
      }
      let x_2744 : i32 = u_xlati84;
      u_xlati84 = (x_2744 << bitcast<u32>(2i));
      let x_2746 : vec3<f32> = vs_TEXCOORD7;
      let x_2748 : i32 = u_xlati84;
      let x_2751 : i32 = u_xlati84;
      let x_2755 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_2748 + 1i) / 4i)][((x_2751 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2746.y, x_2746.y, x_2746.y, x_2746.y) * x_2755);
      let x_2757 : i32 = u_xlati84;
      let x_2759 : i32 = u_xlati84;
      let x_2762 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[(x_2757 / 4i)][(x_2759 % 4i)];
      let x_2763 : vec3<f32> = vs_TEXCOORD7;
      let x_2766 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2762 * vec4<f32>(x_2763.x, x_2763.x, x_2763.x, x_2763.x)) + x_2766);
      let x_2768 : i32 = u_xlati84;
      let x_2771 : i32 = u_xlati84;
      let x_2775 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_2768 + 2i) / 4i)][((x_2771 + 2i) % 4i)];
      let x_2776 : vec3<f32> = vs_TEXCOORD7;
      let x_2779 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2775 * vec4<f32>(x_2776.z, x_2776.z, x_2776.z, x_2776.z)) + x_2779);
      let x_2781 : vec4<f32> = u_xlat10;
      let x_2782 : i32 = u_xlati84;
      let x_2785 : i32 = u_xlati84;
      let x_2789 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_2782 + 3i) / 4i)][((x_2785 + 3i) % 4i)];
      u_xlat10 = (x_2781 + x_2789);
      let x_2791 : vec4<f32> = u_xlat10;
      let x_2793 : vec4<f32> = u_xlat10;
      let x_2795 : vec3<f32> = (vec3<f32>(x_2791.x, x_2791.y, x_2791.z) / vec3<f32>(x_2793.w, x_2793.w, x_2793.w));
      let x_2796 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
      let x_2799 : i32 = u_xlati81;
      let x_2801 : f32 = x_575.x_AdditionalShadowParams[x_2799].y;
      u_xlatb84 = (0.0f < x_2801);
      let x_2803 : bool = u_xlatb84;
      if (x_2803) {
        let x_2806 : i32 = u_xlati81;
        let x_2808 : f32 = x_575.x_AdditionalShadowParams[x_2806].y;
        u_xlatb84 = (1.0f == x_2808);
        let x_2810 : bool = u_xlatb84;
        if (x_2810) {
          let x_2813 : vec4<f32> = u_xlat10;
          let x_2816 : vec4<f32> = x_575.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2813.x, x_2813.y, x_2813.x, x_2813.y) + x_2816);
          let x_2819 : vec4<f32> = u_xlat11;
          let x_2820 : vec2<f32> = vec2<f32>(x_2819.x, x_2819.y);
          let x_2822 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2820.x, x_2820.y, x_2822);
          let x_2830 : vec3<f32> = txVec30;
          let x_2832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2830.xy, x_2830.z);
          u_xlat12.x = x_2832;
          let x_2835 : vec4<f32> = u_xlat11;
          let x_2836 : vec2<f32> = vec2<f32>(x_2835.z, x_2835.w);
          let x_2838 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2836.x, x_2836.y, x_2838);
          let x_2845 : vec3<f32> = txVec31;
          let x_2847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2845.xy, x_2845.z);
          u_xlat12.y = x_2847;
          let x_2849 : vec4<f32> = u_xlat10;
          let x_2852 : vec4<f32> = x_575.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2849.x, x_2849.y, x_2849.x, x_2849.y) + x_2852);
          let x_2855 : vec4<f32> = u_xlat11;
          let x_2856 : vec2<f32> = vec2<f32>(x_2855.x, x_2855.y);
          let x_2858 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2856.x, x_2856.y, x_2858);
          let x_2865 : vec3<f32> = txVec32;
          let x_2867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2865.xy, x_2865.z);
          u_xlat12.z = x_2867;
          let x_2870 : vec4<f32> = u_xlat11;
          let x_2871 : vec2<f32> = vec2<f32>(x_2870.z, x_2870.w);
          let x_2873 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2871.x, x_2871.y, x_2873);
          let x_2880 : vec3<f32> = txVec33;
          let x_2882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
          u_xlat12.w = x_2882;
          let x_2884 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2884, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2888 : i32 = u_xlati81;
          let x_2890 : f32 = x_575.x_AdditionalShadowParams[x_2888].y;
          u_xlatb85 = (2.0f == x_2890);
          let x_2892 : bool = u_xlatb85;
          if (x_2892) {
            let x_2895 : vec4<f32> = u_xlat10;
            let x_2898 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_2901 : vec2<f32> = ((vec2<f32>(x_2895.x, x_2895.y) * vec2<f32>(x_2898.z, x_2898.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2902 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
            let x_2904 : vec4<f32> = u_xlat11;
            let x_2906 : vec2<f32> = floor(vec2<f32>(x_2904.x, x_2904.y));
            let x_2907 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2910 : vec4<f32> = u_xlat10;
            let x_2913 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_2916 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2910.x, x_2910.y) * vec2<f32>(x_2913.z, x_2913.w)) + -(vec2<f32>(x_2916.x, x_2916.y)));
            let x_2920 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2920.x, x_2920.x, x_2920.y, x_2920.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2923 : vec4<f32> = u_xlat12;
            let x_2925 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2923.x, x_2923.x, x_2923.z, x_2923.z) * vec4<f32>(x_2925.x, x_2925.x, x_2925.z, x_2925.z));
            let x_2928 : vec4<f32> = u_xlat13;
            let x_2930 : vec2<f32> = (vec2<f32>(x_2928.y, x_2928.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2931 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2930.x, x_2931.y, x_2930.y, x_2931.w);
            let x_2933 : vec4<f32> = u_xlat13;
            let x_2936 : vec2<f32> = u_xlat61;
            let x_2938 : vec2<f32> = ((vec2<f32>(x_2933.x, x_2933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2936));
            let x_2939 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2938.x, x_2938.y, x_2939.z, x_2939.w);
            let x_2942 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2942) + vec2<f32>(1.0f, 1.0f));
            let x_2945 : vec2<f32> = u_xlat61;
            let x_2946 : vec2<f32> = min(x_2945, vec2<f32>(0.0f, 0.0f));
            let x_2947 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2946.x, x_2946.y, x_2947.z, x_2947.w);
            let x_2949 : vec4<f32> = u_xlat14;
            let x_2952 : vec4<f32> = u_xlat14;
            let x_2955 : vec2<f32> = u_xlat63;
            let x_2956 : vec2<f32> = ((-(vec2<f32>(x_2949.x, x_2949.y)) * vec2<f32>(x_2952.x, x_2952.y)) + x_2955);
            let x_2957 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
            let x_2959 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2959, vec2<f32>(0.0f, 0.0f));
            let x_2961 : vec2<f32> = u_xlat61;
            let x_2963 : vec2<f32> = u_xlat61;
            let x_2965 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2961) * x_2963) + vec2<f32>(x_2965.y, x_2965.w));
            let x_2968 : vec4<f32> = u_xlat14;
            let x_2970 : vec2<f32> = (vec2<f32>(x_2968.x, x_2968.y) + vec2<f32>(1.0f, 1.0f));
            let x_2971 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2970.x, x_2970.y, x_2971.z, x_2971.w);
            let x_2973 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2973 + vec2<f32>(1.0f, 1.0f));
            let x_2975 : vec4<f32> = u_xlat13;
            let x_2977 : vec2<f32> = (vec2<f32>(x_2975.x, x_2975.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2978 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2977.x, x_2977.y, x_2978.z, x_2978.w);
            let x_2980 : vec2<f32> = u_xlat63;
            let x_2981 : vec2<f32> = (x_2980 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2982 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2981.x, x_2981.y, x_2982.z, x_2982.w);
            let x_2984 : vec4<f32> = u_xlat14;
            let x_2986 : vec2<f32> = (vec2<f32>(x_2984.x, x_2984.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2987 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2986.x, x_2986.y, x_2987.z, x_2987.w);
            let x_2989 : vec2<f32> = u_xlat61;
            let x_2990 : vec2<f32> = (x_2989 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2991 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2990.x, x_2990.y, x_2991.z, x_2991.w);
            let x_2993 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2993.y, x_2993.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2997 : f32 = u_xlat14.x;
            u_xlat15.z = x_2997;
            let x_3000 : f32 = u_xlat61.x;
            u_xlat15.w = x_3000;
            let x_3003 : f32 = u_xlat16.x;
            u_xlat13.z = x_3003;
            let x_3006 : f32 = u_xlat12.x;
            u_xlat13.w = x_3006;
            let x_3008 : vec4<f32> = u_xlat13;
            let x_3010 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3008.z, x_3008.w, x_3008.x, x_3008.z) + vec4<f32>(x_3010.z, x_3010.w, x_3010.x, x_3010.z));
            let x_3014 : f32 = u_xlat15.y;
            u_xlat14.z = x_3014;
            let x_3017 : f32 = u_xlat61.y;
            u_xlat14.w = x_3017;
            let x_3020 : f32 = u_xlat13.y;
            u_xlat16.z = x_3020;
            let x_3023 : f32 = u_xlat12.z;
            u_xlat16.w = x_3023;
            let x_3025 : vec4<f32> = u_xlat14;
            let x_3027 : vec4<f32> = u_xlat16;
            let x_3029 : vec3<f32> = (vec3<f32>(x_3025.z, x_3025.y, x_3025.w) + vec3<f32>(x_3027.z, x_3027.y, x_3027.w));
            let x_3030 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3029.x, x_3029.y, x_3029.z, x_3030.w);
            let x_3032 : vec4<f32> = u_xlat13;
            let x_3034 : vec4<f32> = u_xlat17;
            let x_3036 : vec3<f32> = (vec3<f32>(x_3032.x, x_3032.z, x_3032.w) / vec3<f32>(x_3034.z, x_3034.w, x_3034.y));
            let x_3037 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3036.x, x_3036.y, x_3036.z, x_3037.w);
            let x_3039 : vec4<f32> = u_xlat13;
            let x_3041 : vec3<f32> = (vec3<f32>(x_3039.x, x_3039.y, x_3039.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3042 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3041.x, x_3041.y, x_3041.z, x_3042.w);
            let x_3044 : vec4<f32> = u_xlat16;
            let x_3046 : vec4<f32> = u_xlat12;
            let x_3048 : vec3<f32> = (vec3<f32>(x_3044.z, x_3044.y, x_3044.w) / vec3<f32>(x_3046.x, x_3046.y, x_3046.z));
            let x_3049 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3049.w);
            let x_3051 : vec4<f32> = u_xlat14;
            let x_3053 : vec3<f32> = (vec3<f32>(x_3051.x, x_3051.y, x_3051.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3054 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3053.x, x_3053.y, x_3053.z, x_3054.w);
            let x_3056 : vec4<f32> = u_xlat13;
            let x_3059 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3061 : vec3<f32> = (vec3<f32>(x_3056.y, x_3056.x, x_3056.z) * vec3<f32>(x_3059.x, x_3059.x, x_3059.x));
            let x_3062 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3061.x, x_3061.y, x_3061.z, x_3062.w);
            let x_3064 : vec4<f32> = u_xlat14;
            let x_3067 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3069 : vec3<f32> = (vec3<f32>(x_3064.x, x_3064.y, x_3064.z) * vec3<f32>(x_3067.y, x_3067.y, x_3067.y));
            let x_3070 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3069.x, x_3069.y, x_3069.z, x_3070.w);
            let x_3073 : f32 = u_xlat14.x;
            u_xlat13.w = x_3073;
            let x_3075 : vec4<f32> = u_xlat11;
            let x_3078 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3081 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y) * vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y)) + vec4<f32>(x_3081.y, x_3081.w, x_3081.x, x_3081.w));
            let x_3084 : vec4<f32> = u_xlat11;
            let x_3087 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(x_3087.x, x_3087.y)) + vec2<f32>(x_3090.z, x_3090.w));
            let x_3094 : f32 = u_xlat13.y;
            u_xlat14.w = x_3094;
            let x_3096 : vec4<f32> = u_xlat14;
            let x_3097 : vec2<f32> = vec2<f32>(x_3096.y, x_3096.z);
            let x_3098 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3098.x, x_3097.x, x_3098.z, x_3097.y);
            let x_3100 : vec4<f32> = u_xlat11;
            let x_3103 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3106 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y) * vec4<f32>(x_3103.x, x_3103.y, x_3103.x, x_3103.y)) + vec4<f32>(x_3106.x, x_3106.y, x_3106.z, x_3106.y));
            let x_3109 : vec4<f32> = u_xlat11;
            let x_3112 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.y) * vec4<f32>(x_3112.x, x_3112.y, x_3112.x, x_3112.y)) + vec4<f32>(x_3115.w, x_3115.y, x_3115.w, x_3115.z));
            let x_3118 : vec4<f32> = u_xlat11;
            let x_3121 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3124 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y) * vec4<f32>(x_3121.x, x_3121.y, x_3121.x, x_3121.y)) + vec4<f32>(x_3124.x, x_3124.w, x_3124.z, x_3124.w));
            let x_3127 : vec4<f32> = u_xlat12;
            let x_3129 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3127.x, x_3127.x, x_3127.x, x_3127.y) * vec4<f32>(x_3129.z, x_3129.w, x_3129.y, x_3129.z));
            let x_3132 : vec4<f32> = u_xlat12;
            let x_3134 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3132.y, x_3132.y, x_3132.z, x_3132.z) * x_3134);
            let x_3138 : f32 = u_xlat12.z;
            let x_3140 : f32 = u_xlat17.y;
            u_xlat85 = (x_3138 * x_3140);
            let x_3143 : vec4<f32> = u_xlat15;
            let x_3144 : vec2<f32> = vec2<f32>(x_3143.x, x_3143.y);
            let x_3146 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec34;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat11.x = x_3155;
            let x_3158 : vec4<f32> = u_xlat15;
            let x_3159 : vec2<f32> = vec2<f32>(x_3158.z, x_3158.w);
            let x_3161 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
            let x_3169 : vec3<f32> = txVec35;
            let x_3171 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3169.xy, x_3169.z);
            u_xlat36 = x_3171;
            let x_3172 : f32 = u_xlat36;
            let x_3174 : f32 = u_xlat18.y;
            u_xlat36 = (x_3172 * x_3174);
            let x_3177 : f32 = u_xlat18.x;
            let x_3179 : f32 = u_xlat11.x;
            let x_3181 : f32 = u_xlat36;
            u_xlat11.x = ((x_3177 * x_3179) + x_3181);
            let x_3185 : vec2<f32> = u_xlat61;
            let x_3187 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
            let x_3194 : vec3<f32> = txVec36;
            let x_3196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3194.xy, x_3194.z);
            u_xlat36 = x_3196;
            let x_3198 : f32 = u_xlat18.z;
            let x_3199 : f32 = u_xlat36;
            let x_3202 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3198 * x_3199) + x_3202);
            let x_3206 : vec4<f32> = u_xlat14;
            let x_3207 : vec2<f32> = vec2<f32>(x_3206.x, x_3206.y);
            let x_3209 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
            let x_3216 : vec3<f32> = txVec37;
            let x_3218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
            u_xlat36 = x_3218;
            let x_3220 : f32 = u_xlat18.w;
            let x_3221 : f32 = u_xlat36;
            let x_3224 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3220 * x_3221) + x_3224);
            let x_3228 : vec4<f32> = u_xlat16;
            let x_3229 : vec2<f32> = vec2<f32>(x_3228.x, x_3228.y);
            let x_3231 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec38;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat36 = x_3240;
            let x_3242 : f32 = u_xlat19.x;
            let x_3243 : f32 = u_xlat36;
            let x_3246 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3242 * x_3243) + x_3246);
            let x_3250 : vec4<f32> = u_xlat16;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.z, x_3250.w);
            let x_3253 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
            let x_3260 : vec3<f32> = txVec39;
            let x_3262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
            u_xlat36 = x_3262;
            let x_3264 : f32 = u_xlat19.y;
            let x_3265 : f32 = u_xlat36;
            let x_3268 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3264 * x_3265) + x_3268);
            let x_3272 : vec4<f32> = u_xlat14;
            let x_3273 : vec2<f32> = vec2<f32>(x_3272.z, x_3272.w);
            let x_3275 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec40;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat36 = x_3284;
            let x_3286 : f32 = u_xlat19.z;
            let x_3287 : f32 = u_xlat36;
            let x_3290 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3286 * x_3287) + x_3290);
            let x_3294 : vec4<f32> = u_xlat13;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.x, x_3294.y);
            let x_3297 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec41;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat36 = x_3306;
            let x_3308 : f32 = u_xlat19.w;
            let x_3309 : f32 = u_xlat36;
            let x_3312 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3308 * x_3309) + x_3312);
            let x_3316 : vec4<f32> = u_xlat13;
            let x_3317 : vec2<f32> = vec2<f32>(x_3316.z, x_3316.w);
            let x_3319 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3317.x, x_3317.y, x_3319);
            let x_3326 : vec3<f32> = txVec42;
            let x_3328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3326.xy, x_3326.z);
            u_xlat36 = x_3328;
            let x_3329 : f32 = u_xlat85;
            let x_3330 : f32 = u_xlat36;
            let x_3333 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3329 * x_3330) + x_3333);
          } else {
            let x_3336 : vec4<f32> = u_xlat10;
            let x_3339 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3342 : vec2<f32> = ((vec2<f32>(x_3336.x, x_3336.y) * vec2<f32>(x_3339.z, x_3339.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3343 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3342.x, x_3342.y, x_3343.z, x_3343.w);
            let x_3345 : vec4<f32> = u_xlat11;
            let x_3347 : vec2<f32> = floor(vec2<f32>(x_3345.x, x_3345.y));
            let x_3348 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3347.x, x_3347.y, x_3348.z, x_3348.w);
            let x_3350 : vec4<f32> = u_xlat10;
            let x_3353 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3356 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3350.x, x_3350.y) * vec2<f32>(x_3353.z, x_3353.w)) + -(vec2<f32>(x_3356.x, x_3356.y)));
            let x_3360 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3360.x, x_3360.x, x_3360.y, x_3360.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3363 : vec4<f32> = u_xlat12;
            let x_3365 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3363.x, x_3363.x, x_3363.z, x_3363.z) * vec4<f32>(x_3365.x, x_3365.x, x_3365.z, x_3365.z));
            let x_3368 : vec4<f32> = u_xlat13;
            let x_3370 : vec2<f32> = (vec2<f32>(x_3368.y, x_3368.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3371 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3371.x, x_3370.x, x_3371.z, x_3370.y);
            let x_3373 : vec4<f32> = u_xlat13;
            let x_3376 : vec2<f32> = u_xlat61;
            let x_3378 : vec2<f32> = ((vec2<f32>(x_3373.x, x_3373.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3376));
            let x_3379 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3378.x, x_3379.y, x_3378.y, x_3379.w);
            let x_3381 : vec2<f32> = u_xlat61;
            let x_3383 : vec2<f32> = (-(x_3381) + vec2<f32>(1.0f, 1.0f));
            let x_3384 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3383.x, x_3383.y, x_3384.z, x_3384.w);
            let x_3386 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3386, vec2<f32>(0.0f, 0.0f));
            let x_3388 : vec2<f32> = u_xlat63;
            let x_3390 : vec2<f32> = u_xlat63;
            let x_3392 : vec4<f32> = u_xlat13;
            let x_3394 : vec2<f32> = ((-(x_3388) * x_3390) + vec2<f32>(x_3392.x, x_3392.y));
            let x_3395 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3394.x, x_3394.y, x_3395.z, x_3395.w);
            let x_3397 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3397, vec2<f32>(0.0f, 0.0f));
            let x_3400 : vec2<f32> = u_xlat63;
            let x_3402 : vec2<f32> = u_xlat63;
            let x_3404 : vec4<f32> = u_xlat12;
            let x_3406 : vec2<f32> = ((-(x_3400) * x_3402) + vec2<f32>(x_3404.y, x_3404.w));
            let x_3407 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3406.x, x_3407.y, x_3406.y);
            let x_3409 : vec4<f32> = u_xlat13;
            let x_3411 : vec2<f32> = (vec2<f32>(x_3409.x, x_3409.y) + vec2<f32>(2.0f, 2.0f));
            let x_3412 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3411.x, x_3411.y, x_3412.z, x_3412.w);
            let x_3414 : vec3<f32> = u_xlat37;
            let x_3416 : vec2<f32> = (vec2<f32>(x_3414.x, x_3414.z) + vec2<f32>(2.0f, 2.0f));
            let x_3417 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3417.x, x_3416.x, x_3417.z, x_3416.y);
            let x_3420 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3420 * 0.08163200318813323975f);
            let x_3423 : vec4<f32> = u_xlat12;
            let x_3425 : vec3<f32> = (vec3<f32>(x_3423.z, x_3423.x, x_3423.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3426 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
            let x_3428 : vec4<f32> = u_xlat13;
            let x_3430 : vec2<f32> = (vec2<f32>(x_3428.x, x_3428.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3431 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3430.x, x_3430.y, x_3431.z, x_3431.w);
            let x_3434 : f32 = u_xlat16.y;
            u_xlat15.x = x_3434;
            let x_3436 : vec2<f32> = u_xlat61;
            let x_3439 : vec2<f32> = ((vec2<f32>(x_3436.x, x_3436.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3440 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3440.x, x_3439.x, x_3440.z, x_3439.y);
            let x_3442 : vec2<f32> = u_xlat61;
            let x_3445 : vec2<f32> = ((vec2<f32>(x_3442.x, x_3442.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3446 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3445.x, x_3446.y, x_3445.y, x_3446.w);
            let x_3449 : f32 = u_xlat12.x;
            u_xlat13.y = x_3449;
            let x_3452 : f32 = u_xlat14.y;
            u_xlat13.w = x_3452;
            let x_3454 : vec4<f32> = u_xlat13;
            let x_3455 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3454 + x_3455);
            let x_3457 : vec2<f32> = u_xlat61;
            let x_3460 : vec2<f32> = ((vec2<f32>(x_3457.y, x_3457.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3461 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3461.x, x_3460.x, x_3461.z, x_3460.y);
            let x_3463 : vec2<f32> = u_xlat61;
            let x_3466 : vec2<f32> = ((vec2<f32>(x_3463.y, x_3463.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3467 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3466.x, x_3467.y, x_3466.y, x_3467.w);
            let x_3470 : f32 = u_xlat12.y;
            u_xlat14.y = x_3470;
            let x_3472 : vec4<f32> = u_xlat14;
            let x_3473 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3472 + x_3473);
            let x_3475 : vec4<f32> = u_xlat13;
            let x_3476 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3475 / x_3476);
            let x_3478 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3478 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3480 : vec4<f32> = u_xlat14;
            let x_3481 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3480 / x_3481);
            let x_3483 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3483 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3485 : vec4<f32> = u_xlat13;
            let x_3488 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3485.w, x_3485.x, x_3485.y, x_3485.z) * vec4<f32>(x_3488.x, x_3488.x, x_3488.x, x_3488.x));
            let x_3491 : vec4<f32> = u_xlat14;
            let x_3494 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3491.x, x_3491.w, x_3491.y, x_3491.z) * vec4<f32>(x_3494.y, x_3494.y, x_3494.y, x_3494.y));
            let x_3497 : vec4<f32> = u_xlat13;
            let x_3498 : vec3<f32> = vec3<f32>(x_3497.y, x_3497.z, x_3497.w);
            let x_3499 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3498.x, x_3499.y, x_3498.y, x_3498.z);
            let x_3502 : f32 = u_xlat14.x;
            u_xlat16.y = x_3502;
            let x_3504 : vec4<f32> = u_xlat11;
            let x_3507 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3510 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3504.x, x_3504.y, x_3504.x, x_3504.y) * vec4<f32>(x_3507.x, x_3507.y, x_3507.x, x_3507.y)) + vec4<f32>(x_3510.x, x_3510.y, x_3510.z, x_3510.y));
            let x_3513 : vec4<f32> = u_xlat11;
            let x_3516 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3519 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3513.x, x_3513.y) * vec2<f32>(x_3516.x, x_3516.y)) + vec2<f32>(x_3519.w, x_3519.y));
            let x_3523 : f32 = u_xlat16.y;
            u_xlat13.y = x_3523;
            let x_3526 : f32 = u_xlat14.z;
            u_xlat16.y = x_3526;
            let x_3528 : vec4<f32> = u_xlat11;
            let x_3531 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3534 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3528.x, x_3528.y, x_3528.x, x_3528.y) * vec4<f32>(x_3531.x, x_3531.y, x_3531.x, x_3531.y)) + vec4<f32>(x_3534.x, x_3534.y, x_3534.z, x_3534.y));
            let x_3537 : vec4<f32> = u_xlat11;
            let x_3540 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3543 : vec4<f32> = u_xlat16;
            let x_3545 : vec2<f32> = ((vec2<f32>(x_3537.x, x_3537.y) * vec2<f32>(x_3540.x, x_3540.y)) + vec2<f32>(x_3543.w, x_3543.y));
            let x_3546 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3545.x, x_3545.y, x_3546.z, x_3546.w);
            let x_3549 : f32 = u_xlat16.y;
            u_xlat13.z = x_3549;
            let x_3551 : vec4<f32> = u_xlat11;
            let x_3554 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3557 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3551.x, x_3551.y, x_3551.x, x_3551.y) * vec4<f32>(x_3554.x, x_3554.y, x_3554.x, x_3554.y)) + vec4<f32>(x_3557.x, x_3557.y, x_3557.x, x_3557.z));
            let x_3561 : f32 = u_xlat14.w;
            u_xlat16.y = x_3561;
            let x_3564 : vec4<f32> = u_xlat11;
            let x_3567 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3570 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3564.x, x_3564.y, x_3564.x, x_3564.y) * vec4<f32>(x_3567.x, x_3567.y, x_3567.x, x_3567.y)) + vec4<f32>(x_3570.x, x_3570.y, x_3570.z, x_3570.y));
            let x_3574 : vec4<f32> = u_xlat11;
            let x_3577 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3580 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3574.x, x_3574.y) * vec2<f32>(x_3577.x, x_3577.y)) + vec2<f32>(x_3580.w, x_3580.y));
            let x_3584 : f32 = u_xlat16.y;
            u_xlat13.w = x_3584;
            let x_3587 : vec4<f32> = u_xlat11;
            let x_3590 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3593 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3587.x, x_3587.y) * vec2<f32>(x_3590.x, x_3590.y)) + vec2<f32>(x_3593.x, x_3593.w));
            let x_3596 : vec4<f32> = u_xlat16;
            let x_3597 : vec3<f32> = vec3<f32>(x_3596.x, x_3596.z, x_3596.w);
            let x_3598 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3597.x, x_3598.y, x_3597.y, x_3597.z);
            let x_3600 : vec4<f32> = u_xlat11;
            let x_3603 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3606 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3600.x, x_3600.y, x_3600.x, x_3600.y) * vec4<f32>(x_3603.x, x_3603.y, x_3603.x, x_3603.y)) + vec4<f32>(x_3606.x, x_3606.y, x_3606.z, x_3606.y));
            let x_3610 : vec4<f32> = u_xlat11;
            let x_3613 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3616 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3610.x, x_3610.y) * vec2<f32>(x_3613.x, x_3613.y)) + vec2<f32>(x_3616.w, x_3616.y));
            let x_3620 : f32 = u_xlat13.x;
            u_xlat14.x = x_3620;
            let x_3622 : vec4<f32> = u_xlat11;
            let x_3625 : vec4<f32> = x_575.x_AdditionalShadowmapSize;
            let x_3628 : vec4<f32> = u_xlat14;
            let x_3630 : vec2<f32> = ((vec2<f32>(x_3622.x, x_3622.y) * vec2<f32>(x_3625.x, x_3625.y)) + vec2<f32>(x_3628.x, x_3628.y));
            let x_3631 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3630.x, x_3630.y, x_3631.z, x_3631.w);
            let x_3634 : vec4<f32> = u_xlat12;
            let x_3636 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3634.x, x_3634.x, x_3634.x, x_3634.x) * x_3636);
            let x_3639 : vec4<f32> = u_xlat12;
            let x_3641 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3639.y, x_3639.y, x_3639.y, x_3639.y) * x_3641);
            let x_3644 : vec4<f32> = u_xlat12;
            let x_3646 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3644.z, x_3644.z, x_3644.z, x_3644.z) * x_3646);
            let x_3648 : vec4<f32> = u_xlat12;
            let x_3650 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3648.w, x_3648.w, x_3648.w, x_3648.w) * x_3650);
            let x_3653 : vec4<f32> = u_xlat17;
            let x_3654 : vec2<f32> = vec2<f32>(x_3653.x, x_3653.y);
            let x_3656 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3654.x, x_3654.y, x_3656);
            let x_3663 : vec3<f32> = txVec43;
            let x_3665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3663.xy, x_3663.z);
            u_xlat85 = x_3665;
            let x_3667 : vec4<f32> = u_xlat17;
            let x_3668 : vec2<f32> = vec2<f32>(x_3667.z, x_3667.w);
            let x_3670 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3668.x, x_3668.y, x_3670);
            let x_3677 : vec3<f32> = txVec44;
            let x_3679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3677.xy, x_3677.z);
            u_xlat13.x = x_3679;
            let x_3682 : f32 = u_xlat13.x;
            let x_3684 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3682 * x_3684);
            let x_3688 : f32 = u_xlat22.x;
            let x_3689 : f32 = u_xlat85;
            let x_3692 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3688 * x_3689) + x_3692);
            let x_3695 : vec2<f32> = u_xlat61;
            let x_3697 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3695.x, x_3695.y, x_3697);
            let x_3704 : vec3<f32> = txVec45;
            let x_3706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3704.xy, x_3704.z);
            u_xlat61.x = x_3706;
            let x_3709 : f32 = u_xlat22.z;
            let x_3711 : f32 = u_xlat61.x;
            let x_3713 : f32 = u_xlat85;
            u_xlat85 = ((x_3709 * x_3711) + x_3713);
            let x_3716 : vec4<f32> = u_xlat20;
            let x_3717 : vec2<f32> = vec2<f32>(x_3716.x, x_3716.y);
            let x_3719 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3717.x, x_3717.y, x_3719);
            let x_3726 : vec3<f32> = txVec46;
            let x_3728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3726.xy, x_3726.z);
            u_xlat61.x = x_3728;
            let x_3731 : f32 = u_xlat22.w;
            let x_3733 : f32 = u_xlat61.x;
            let x_3735 : f32 = u_xlat85;
            u_xlat85 = ((x_3731 * x_3733) + x_3735);
            let x_3738 : vec4<f32> = u_xlat18;
            let x_3739 : vec2<f32> = vec2<f32>(x_3738.x, x_3738.y);
            let x_3741 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3739.x, x_3739.y, x_3741);
            let x_3748 : vec3<f32> = txVec47;
            let x_3750 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3748.xy, x_3748.z);
            u_xlat61.x = x_3750;
            let x_3753 : f32 = u_xlat23.x;
            let x_3755 : f32 = u_xlat61.x;
            let x_3757 : f32 = u_xlat85;
            u_xlat85 = ((x_3753 * x_3755) + x_3757);
            let x_3760 : vec4<f32> = u_xlat18;
            let x_3761 : vec2<f32> = vec2<f32>(x_3760.z, x_3760.w);
            let x_3763 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3761.x, x_3761.y, x_3763);
            let x_3770 : vec3<f32> = txVec48;
            let x_3772 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3770.xy, x_3770.z);
            u_xlat61.x = x_3772;
            let x_3775 : f32 = u_xlat23.y;
            let x_3777 : f32 = u_xlat61.x;
            let x_3779 : f32 = u_xlat85;
            u_xlat85 = ((x_3775 * x_3777) + x_3779);
            let x_3782 : vec4<f32> = u_xlat19;
            let x_3783 : vec2<f32> = vec2<f32>(x_3782.x, x_3782.y);
            let x_3785 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3783.x, x_3783.y, x_3785);
            let x_3792 : vec3<f32> = txVec49;
            let x_3794 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3792.xy, x_3792.z);
            u_xlat61.x = x_3794;
            let x_3797 : f32 = u_xlat23.z;
            let x_3799 : f32 = u_xlat61.x;
            let x_3801 : f32 = u_xlat85;
            u_xlat85 = ((x_3797 * x_3799) + x_3801);
            let x_3804 : vec4<f32> = u_xlat20;
            let x_3805 : vec2<f32> = vec2<f32>(x_3804.z, x_3804.w);
            let x_3807 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3805.x, x_3805.y, x_3807);
            let x_3814 : vec3<f32> = txVec50;
            let x_3816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3814.xy, x_3814.z);
            u_xlat61.x = x_3816;
            let x_3819 : f32 = u_xlat23.w;
            let x_3821 : f32 = u_xlat61.x;
            let x_3823 : f32 = u_xlat85;
            u_xlat85 = ((x_3819 * x_3821) + x_3823);
            let x_3826 : vec4<f32> = u_xlat21;
            let x_3827 : vec2<f32> = vec2<f32>(x_3826.x, x_3826.y);
            let x_3829 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3827.x, x_3827.y, x_3829);
            let x_3836 : vec3<f32> = txVec51;
            let x_3838 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3836.xy, x_3836.z);
            u_xlat61.x = x_3838;
            let x_3841 : f32 = u_xlat24.x;
            let x_3843 : f32 = u_xlat61.x;
            let x_3845 : f32 = u_xlat85;
            u_xlat85 = ((x_3841 * x_3843) + x_3845);
            let x_3848 : vec4<f32> = u_xlat21;
            let x_3849 : vec2<f32> = vec2<f32>(x_3848.z, x_3848.w);
            let x_3851 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3849.x, x_3849.y, x_3851);
            let x_3858 : vec3<f32> = txVec52;
            let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
            u_xlat61.x = x_3860;
            let x_3863 : f32 = u_xlat24.y;
            let x_3865 : f32 = u_xlat61.x;
            let x_3867 : f32 = u_xlat85;
            u_xlat85 = ((x_3863 * x_3865) + x_3867);
            let x_3870 : vec2<f32> = u_xlat38;
            let x_3872 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3870.x, x_3870.y, x_3872);
            let x_3879 : vec3<f32> = txVec53;
            let x_3881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3879.xy, x_3879.z);
            u_xlat61.x = x_3881;
            let x_3884 : f32 = u_xlat24.z;
            let x_3886 : f32 = u_xlat61.x;
            let x_3888 : f32 = u_xlat85;
            u_xlat85 = ((x_3884 * x_3886) + x_3888);
            let x_3891 : vec2<f32> = u_xlat69;
            let x_3893 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3891.x, x_3891.y, x_3893);
            let x_3900 : vec3<f32> = txVec54;
            let x_3902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3900.xy, x_3900.z);
            u_xlat61.x = x_3902;
            let x_3905 : f32 = u_xlat24.w;
            let x_3907 : f32 = u_xlat61.x;
            let x_3909 : f32 = u_xlat85;
            u_xlat85 = ((x_3905 * x_3907) + x_3909);
            let x_3912 : vec4<f32> = u_xlat16;
            let x_3913 : vec2<f32> = vec2<f32>(x_3912.x, x_3912.y);
            let x_3915 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3913.x, x_3913.y, x_3915);
            let x_3922 : vec3<f32> = txVec55;
            let x_3924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3922.xy, x_3922.z);
            u_xlat61.x = x_3924;
            let x_3927 : f32 = u_xlat12.x;
            let x_3929 : f32 = u_xlat61.x;
            let x_3931 : f32 = u_xlat85;
            u_xlat85 = ((x_3927 * x_3929) + x_3931);
            let x_3934 : vec4<f32> = u_xlat16;
            let x_3935 : vec2<f32> = vec2<f32>(x_3934.z, x_3934.w);
            let x_3937 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3935.x, x_3935.y, x_3937);
            let x_3944 : vec3<f32> = txVec56;
            let x_3946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3944.xy, x_3944.z);
            u_xlat61.x = x_3946;
            let x_3949 : f32 = u_xlat12.y;
            let x_3951 : f32 = u_xlat61.x;
            let x_3953 : f32 = u_xlat85;
            u_xlat85 = ((x_3949 * x_3951) + x_3953);
            let x_3956 : vec2<f32> = u_xlat64;
            let x_3958 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3956.x, x_3956.y, x_3958);
            let x_3965 : vec3<f32> = txVec57;
            let x_3967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3965.xy, x_3965.z);
            u_xlat61.x = x_3967;
            let x_3970 : f32 = u_xlat12.z;
            let x_3972 : f32 = u_xlat61.x;
            let x_3974 : f32 = u_xlat85;
            u_xlat85 = ((x_3970 * x_3972) + x_3974);
            let x_3977 : vec4<f32> = u_xlat11;
            let x_3978 : vec2<f32> = vec2<f32>(x_3977.x, x_3977.y);
            let x_3980 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3978.x, x_3978.y, x_3980);
            let x_3987 : vec3<f32> = txVec58;
            let x_3989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3987.xy, x_3987.z);
            u_xlat11.x = x_3989;
            let x_3992 : f32 = u_xlat12.w;
            let x_3994 : f32 = u_xlat11.x;
            let x_3996 : f32 = u_xlat85;
            u_xlat84 = ((x_3992 * x_3994) + x_3996);
          }
        }
      } else {
        let x_4000 : vec4<f32> = u_xlat10;
        let x_4001 : vec2<f32> = vec2<f32>(x_4000.x, x_4000.y);
        let x_4003 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4001.x, x_4001.y, x_4003);
        let x_4010 : vec3<f32> = txVec59;
        let x_4012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4010.xy, x_4010.z);
        u_xlat84 = x_4012;
      }
      let x_4013 : i32 = u_xlati81;
      let x_4015 : f32 = x_575.x_AdditionalShadowParams[x_4013].x;
      u_xlat10.x = (1.0f + -(x_4015));
      let x_4019 : f32 = u_xlat84;
      let x_4020 : i32 = u_xlati81;
      let x_4022 : f32 = x_575.x_AdditionalShadowParams[x_4020].x;
      let x_4025 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4019 * x_4022) + x_4025);
      let x_4028 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4028);
      let x_4033 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4033 >= 1.0f);
      let x_4035 : bool = u_xlatb35;
      let x_4037 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4035 | x_4037);
      let x_4041 : bool = u_xlatb10.x;
      let x_4042 : f32 = u_xlat84;
      u_xlat84 = select(x_4042, 1.0f, x_4041);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4045 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4045) + 1.0f);
    let x_4049 : f32 = u_xlat28;
    let x_4051 : f32 = u_xlat10.x;
    let x_4053 : f32 = u_xlat84;
    u_xlat84 = ((x_4049 * x_4051) + x_4053);
    let x_4055 : f32 = u_xlat82;
    let x_4056 : f32 = u_xlat84;
    u_xlat82 = (x_4055 * x_4056);
    let x_4058 : vec3<f32> = u_xlat2;
    let x_4059 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4058, vec3<f32>(x_4059.x, x_4059.y, x_4059.z));
    let x_4062 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4062, 0.0f, 1.0f);
    let x_4064 : f32 = u_xlat82;
    let x_4065 : f32 = u_xlat84;
    u_xlat82 = (x_4064 * x_4065);
    let x_4067 : f32 = u_xlat82;
    let x_4069 : i32 = u_xlati81;
    let x_4071 : vec4<f32> = x_2569.x_AdditionalLightsColor[x_4069];
    let x_4073 : vec3<f32> = (vec3<f32>(x_4067, x_4067, x_4067) * vec3<f32>(x_4071.x, x_4071.y, x_4071.z));
    let x_4074 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4073.x, x_4073.y, x_4073.z, x_4074.w);
    let x_4076 : vec4<f32> = u_xlat8;
    let x_4078 : f32 = u_xlat83;
    let x_4081 : vec4<f32> = u_xlat1;
    let x_4083 : vec3<f32> = ((vec3<f32>(x_4076.x, x_4076.y, x_4076.z) * vec3<f32>(x_4078, x_4078, x_4078)) + vec3<f32>(x_4081.x, x_4081.y, x_4081.z));
    let x_4084 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4083.x, x_4083.y, x_4083.z, x_4084.w);
    let x_4086 : vec4<f32> = u_xlat8;
    let x_4088 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4086.x, x_4086.y, x_4086.z), vec3<f32>(x_4088.x, x_4088.y, x_4088.z));
    let x_4091 : f32 = u_xlat81;
    u_xlat81 = max(x_4091, 1.17549435e-38f);
    let x_4093 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4093);
    let x_4095 : f32 = u_xlat81;
    let x_4097 : vec4<f32> = u_xlat8;
    let x_4099 : vec3<f32> = (vec3<f32>(x_4095, x_4095, x_4095) * vec3<f32>(x_4097.x, x_4097.y, x_4097.z));
    let x_4100 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4099.x, x_4099.y, x_4099.z, x_4100.w);
    let x_4102 : vec3<f32> = u_xlat2;
    let x_4103 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_4102, vec3<f32>(x_4103.x, x_4103.y, x_4103.z));
    let x_4106 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4106, 0.0f, 1.0f);
    let x_4108 : vec4<f32> = u_xlat9;
    let x_4110 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4108.x, x_4108.y, x_4108.z), vec3<f32>(x_4110.x, x_4110.y, x_4110.z));
    let x_4113 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4113, 0.0f, 1.0f);
    let x_4115 : f32 = u_xlat81;
    let x_4116 : f32 = u_xlat81;
    u_xlat81 = (x_4115 * x_4116);
    let x_4118 : f32 = u_xlat81;
    let x_4120 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4118 * x_4120) + 1.00001001358032226562f);
    let x_4123 : f32 = u_xlat82;
    let x_4124 : f32 = u_xlat82;
    u_xlat82 = (x_4123 * x_4124);
    let x_4126 : f32 = u_xlat81;
    let x_4127 : f32 = u_xlat81;
    u_xlat81 = (x_4126 * x_4127);
    let x_4129 : f32 = u_xlat82;
    u_xlat82 = max(x_4129, 0.10000000149011611938f);
    let x_4131 : f32 = u_xlat81;
    let x_4132 : f32 = u_xlat82;
    u_xlat81 = (x_4131 * x_4132);
    let x_4134 : f32 = u_xlat79;
    let x_4135 : f32 = u_xlat81;
    u_xlat81 = (x_4134 * x_4135);
    let x_4137 : f32 = u_xlat77;
    let x_4138 : f32 = u_xlat81;
    u_xlat81 = (x_4137 / x_4138);
    let x_4140 : vec4<f32> = u_xlat5;
    let x_4142 : f32 = u_xlat81;
    let x_4145 : vec4<f32> = u_xlat6;
    let x_4147 : vec3<f32> = ((vec3<f32>(x_4140.x, x_4140.y, x_4140.z) * vec3<f32>(x_4142, x_4142, x_4142)) + vec3<f32>(x_4145.x, x_4145.y, x_4145.z));
    let x_4148 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4147.x, x_4147.y, x_4147.z, x_4148.w);
    let x_4150 : vec4<f32> = u_xlat8;
    let x_4152 : vec4<f32> = u_xlat10;
    let x_4155 : vec4<f32> = u_xlat7;
    let x_4157 : vec3<f32> = ((vec3<f32>(x_4150.x, x_4150.y, x_4150.z) * vec3<f32>(x_4152.x, x_4152.y, x_4152.z)) + vec3<f32>(x_4155.x, x_4155.y, x_4155.z));
    let x_4158 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4157.x, x_4157.y, x_4157.z, x_4158.w);

    continuing {
      let x_4160 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4160 + bitcast<u32>(1i));
    }
  }
  let x_4162 : vec4<f32> = u_xlat4;
  let x_4164 : f32 = u_xlat25;
  let x_4167 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_4162.x, x_4162.y, x_4162.z) * vec3<f32>(x_4164, x_4164, x_4164)) + vec3<f32>(x_4167.x, x_4167.z, x_4167.w));
  let x_4170 : vec4<f32> = u_xlat7;
  let x_4172 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4170.x, x_4170.y, x_4170.z) + x_4172);
  let x_4174 : f32 = u_xlat76;
  let x_4175 : f32 = u_xlat76;
  u_xlat1.x = (x_4174 * -(x_4175));
  let x_4180 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4180);
  let x_4183 : vec3<f32> = u_xlat0;
  let x_4184 : f32 = u_xlat75;
  let x_4188 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_4183 * vec3<f32>(x_4184, x_4184, x_4184)) + -(vec3<f32>(x_4188.x, x_4188.y, x_4188.z)));
  let x_4194 : vec4<f32> = u_xlat1;
  let x_4196 : vec3<f32> = u_xlat0;
  let x_4199 : vec4<f32> = x_111.unity_FogColor;
  let x_4201 : vec3<f32> = ((vec3<f32>(x_4194.x, x_4194.x, x_4194.x) * x_4196) + vec3<f32>(x_4199.x, x_4199.y, x_4199.z));
  let x_4202 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4201.x, x_4201.y, x_4201.z, x_4202.w);
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


