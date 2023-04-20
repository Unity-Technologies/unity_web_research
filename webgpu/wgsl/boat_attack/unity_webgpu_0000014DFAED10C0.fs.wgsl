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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlatb77 : bool;

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

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_721 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2105 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2379 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu79 : u32;

fn main_1() {
  var x_550 : f32;
  var x_561 : f32;
  var x_572 : f32;
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
  var x_2517 : f32;
  var x_2527 : f32;
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
  let x_367 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_367;
  let x_370 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_370;
  let x_373 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_373;
  let x_376 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_376;
  let x_379 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_379;
  let x_382 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_382;
  let x_385 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_385;
  let x_388 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_388;
  let x_390 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_390 + x_391);
  let x_394 : f32 = u_xlat0.z;
  u_xlat7.x = x_394;
  let x_397 : f32 = u_xlat1.z;
  u_xlat7.y = x_397;
  let x_400 : f32 = u_xlat2.z;
  u_xlat7.z = x_400;
  let x_403 : f32 = u_xlat3.y;
  u_xlat7.w = x_403;
  let x_405 : vec4<f32> = u_xlat9;
  let x_408 : f32 = x_13.x_Smoothness0;
  let x_410 : f32 = x_13.x_Smoothness1;
  let x_412 : f32 = x_13.x_Smoothness2;
  let x_414 : f32 = x_13.x_Smoothness3;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_405) * vec4<f32>(x_408, x_410, x_412, x_414)) + x_417);
  let x_421 : f32 = x_13.x_LayerHasMask0;
  let x_424 : f32 = x_13.x_LayerHasMask1;
  let x_427 : f32 = x_13.x_LayerHasMask2;
  let x_430 : f32 = x_13.x_LayerHasMask3;
  let x_432 : vec4<f32> = u_xlat7;
  let x_434 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_421, x_424, x_427, x_430) * x_432) + x_434);
  let x_437 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_437, x_438);
  let x_441 : f32 = u_xlat0.x;
  u_xlat7.x = x_441;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.y = x_444;
  let x_447 : f32 = u_xlat2.x;
  u_xlat7.z = x_447;
  let x_450 : f32 = u_xlat3.x;
  u_xlat7.w = x_450;
  let x_452 : vec4<f32> = u_xlat7;
  let x_455 : f32 = x_13.x_Metallic0;
  let x_458 : f32 = x_13.x_Metallic1;
  let x_461 : f32 = x_13.x_Metallic2;
  let x_464 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_452 + -(vec4<f32>(x_455, x_458, x_461, x_464)));
  let x_469 : f32 = x_13.x_LayerHasMask0;
  let x_471 : f32 = x_13.x_LayerHasMask1;
  let x_473 : f32 = x_13.x_LayerHasMask2;
  let x_475 : f32 = x_13.x_LayerHasMask3;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_13.x_Metallic0;
  let x_482 : f32 = x_13.x_Metallic1;
  let x_484 : f32 = x_13.x_Metallic2;
  let x_486 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_469, x_471, x_473, x_475) * x_477) + vec4<f32>(x_480, x_482, x_484, x_486));
  let x_489 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_489, x_490);
  let x_494 : f32 = u_xlat0.y;
  u_xlat3.x = x_494;
  let x_497 : f32 = u_xlat1.y;
  u_xlat3.y = x_497;
  let x_500 : f32 = u_xlat2.y;
  u_xlat3.z = x_500;
  let x_502 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_502) + x_504);
  let x_507 : f32 = x_13.x_LayerHasMask0;
  let x_509 : f32 = x_13.x_LayerHasMask1;
  let x_511 : f32 = x_13.x_LayerHasMask2;
  let x_513 : f32 = x_13.x_LayerHasMask3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_507, x_509, x_511, x_513) * x_515) + x_517);
  let x_520 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_520, x_521);
  let x_525 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_525 == 0.0f);
  let x_530 : vec3<f32> = vs_TEXCOORD7;
  let x_534 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_530) + x_534);
  let x_536 : vec3<f32> = u_xlat26;
  let x_537 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_536, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_541);
  let x_544 : vec3<f32> = u_xlat26;
  let x_545 : vec3<f32> = u_xlat2;
  u_xlat26 = (x_544 * vec3<f32>(x_545.x, x_545.x, x_545.x));
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_554 : f32 = u_xlat26.x;
    x_550 = x_554;
  } else {
    let x_557 : f32 = x_111.unity_MatrixV[0i].z;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  u_xlat2.x = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat26.y;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_111.unity_MatrixV[1i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.y = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat26.z;
    x_572 = x_576;
  } else {
    let x_580 : f32 = x_111.unity_MatrixV[2i].z;
    x_572 = x_580;
  }
  let x_581 : f32 = x_572;
  u_xlat2.z = x_581;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_584, x_585);
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_589);
  let x_592 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * x_594);
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_603 : vec4<f32> = vs_TEXCOORD0;
  let x_606 : f32 = x_111.x_GlobalMipBias.x;
  let x_607 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_603.z, x_603.w), x_606);
  u_xlat3 = x_607;
  let x_612 : vec4<f32> = vs_TEXCOORD0;
  let x_615 : f32 = x_111.x_GlobalMipBias.x;
  let x_616 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_612.z, x_612.w), x_615);
  let x_617 : vec3<f32> = vec3<f32>(x_616.x, x_616.y, x_616.z);
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : f32 = u_xlat76;
  u_xlat76 = (x_632 + 0.5f);
  let x_634 : f32 = u_xlat76;
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : vec3<f32> = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_642 : f32 = u_xlat3.w;
  u_xlat76 = max(x_642, 0.00009999999747378752f);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : f32 = u_xlat76;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) / vec3<f32>(x_647, x_647, x_647));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_653) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_659 : f32 = u_xlat50;
  let x_660 : f32 = u_xlat76;
  u_xlat77 = (x_659 + -(x_660));
  let x_663 : f32 = u_xlat76;
  let x_665 : vec4<f32> = u_xlat5;
  let x_667 : vec3<f32> = (vec3<f32>(x_663, x_663, x_663) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat5;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = u_xlat0;
  let x_679 : vec4<f32> = u_xlat5;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_685 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : f32 = u_xlat50;
  u_xlat0.x = (-(x_687) + 1.0f);
  let x_692 : f32 = u_xlat0.x;
  let x_694 : f32 = u_xlat0.x;
  u_xlat50 = (x_692 * x_694);
  let x_696 : f32 = u_xlat50;
  u_xlat50 = max(x_696, 0.0078125f);
  let x_699 : f32 = u_xlat50;
  let x_700 : f32 = u_xlat50;
  u_xlat76 = (x_699 * x_700);
  let x_702 : f32 = u_xlat77;
  u_xlat77 = (x_702 + 1.0f);
  let x_704 : f32 = u_xlat77;
  u_xlat77 = clamp(x_704, 0.0f, 1.0f);
  let x_707 : f32 = u_xlat50;
  u_xlat78 = ((x_707 * 4.0f) + 2.0f);
  let x_711 : f32 = u_xlat25;
  u_xlat25 = min(x_711, 1.0f);
  let x_723 : f32 = x_721.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_723);
  let x_725 : bool = u_xlatb79;
  if (x_725) {
    let x_729 : f32 = x_721.x_MainLightShadowParams.y;
    u_xlatb79 = (x_729 == 1.0f);
    let x_731 : bool = u_xlatb79;
    if (x_731) {
      let x_735 : vec4<f32> = vs_TEXCOORD8;
      let x_738 : vec4<f32> = x_721.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.y) + x_738);
      let x_742 : vec4<f32> = u_xlat6;
      let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
      let x_746 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_743.x, x_743.y, x_746);
      let x_758 : vec3<f32> = txVec0;
      let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_758.xy, x_758.z);
      u_xlat7.x = x_760;
      let x_763 : vec4<f32> = u_xlat6;
      let x_764 : vec2<f32> = vec2<f32>(x_763.z, x_763.w);
      let x_766 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_764.x, x_764.y, x_766);
      let x_773 : vec3<f32> = txVec1;
      let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
      u_xlat7.y = x_775;
      let x_777 : vec4<f32> = vs_TEXCOORD8;
      let x_780 : vec4<f32> = x_721.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y) + x_780);
      let x_783 : vec4<f32> = u_xlat6;
      let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
      let x_786 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_784.x, x_784.y, x_786);
      let x_793 : vec3<f32> = txVec2;
      let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_793.xy, x_793.z);
      u_xlat7.z = x_795;
      let x_798 : vec4<f32> = u_xlat6;
      let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
      let x_801 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_799.x, x_799.y, x_801);
      let x_808 : vec3<f32> = txVec3;
      let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_808.xy, x_808.z);
      u_xlat7.w = x_810;
      let x_813 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_813, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_820 : f32 = x_721.x_MainLightShadowParams.y;
      u_xlatb80 = (x_820 == 2.0f);
      let x_822 : bool = u_xlatb80;
      if (x_822) {
        let x_825 : vec4<f32> = vs_TEXCOORD8;
        let x_828 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_831 : vec2<f32> = ((vec2<f32>(x_825.x, x_825.y) * vec2<f32>(x_828.z, x_828.w)) + vec2<f32>(0.5f, 0.5f));
        let x_832 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_834 : vec4<f32> = u_xlat6;
        let x_836 : vec2<f32> = floor(vec2<f32>(x_834.x, x_834.y));
        let x_837 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_837.w);
        let x_841 : vec4<f32> = vs_TEXCOORD8;
        let x_844 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_847 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_844.z, x_844.w)) + -(vec2<f32>(x_847.x, x_847.y)));
        let x_851 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_851.x, x_851.x, x_851.y, x_851.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_855 : vec4<f32> = u_xlat7;
        let x_857 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_855.x, x_855.x, x_855.z, x_855.z) * vec4<f32>(x_857.x, x_857.x, x_857.z, x_857.z));
        let x_860 : vec4<f32> = u_xlat8;
        let x_864 : vec2<f32> = (vec2<f32>(x_860.y, x_860.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_865 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_864.x, x_865.y, x_864.y, x_865.w);
        let x_867 : vec4<f32> = u_xlat8;
        let x_870 : vec2<f32> = u_xlat56;
        let x_872 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.z) * vec2<f32>(0.5f, 0.5f)) + -(x_870));
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_876 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_876) + vec2<f32>(1.0f, 1.0f));
        let x_880 : vec2<f32> = u_xlat56;
        let x_882 : vec2<f32> = min(x_880, vec2<f32>(0.0f, 0.0f));
        let x_883 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_885 : vec4<f32> = u_xlat9;
        let x_888 : vec4<f32> = u_xlat9;
        let x_891 : vec2<f32> = u_xlat58;
        let x_892 : vec2<f32> = ((-(vec2<f32>(x_885.x, x_885.y)) * vec2<f32>(x_888.x, x_888.y)) + x_891);
        let x_893 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_895, vec2<f32>(0.0f, 0.0f));
        let x_897 : vec2<f32> = u_xlat56;
        let x_899 : vec2<f32> = u_xlat56;
        let x_901 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_897) * x_899) + vec2<f32>(x_901.y, x_901.w));
        let x_904 : vec4<f32> = u_xlat9;
        let x_906 : vec2<f32> = (vec2<f32>(x_904.x, x_904.y) + vec2<f32>(1.0f, 1.0f));
        let x_907 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_909 + vec2<f32>(1.0f, 1.0f));
        let x_911 : vec4<f32> = u_xlat8;
        let x_915 : vec2<f32> = (vec2<f32>(x_911.x, x_911.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_916 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec2<f32> = u_xlat58;
        let x_919 : vec2<f32> = (x_918 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec4<f32> = u_xlat9;
        let x_924 : vec2<f32> = (vec2<f32>(x_922.x, x_922.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_925 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
        let x_927 : vec2<f32> = u_xlat56;
        let x_928 : vec2<f32> = (x_927 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_929 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_931.y, x_931.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_935 : f32 = u_xlat9.x;
        u_xlat10.z = x_935;
        let x_938 : f32 = u_xlat56.x;
        u_xlat10.w = x_938;
        let x_941 : f32 = u_xlat11.x;
        u_xlat8.z = x_941;
        let x_944 : f32 = u_xlat7.x;
        u_xlat8.w = x_944;
        let x_946 : vec4<f32> = u_xlat8;
        let x_948 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_946.z, x_946.w, x_946.x, x_946.z) + vec4<f32>(x_948.z, x_948.w, x_948.x, x_948.z));
        let x_952 : f32 = u_xlat10.y;
        u_xlat9.z = x_952;
        let x_955 : f32 = u_xlat56.y;
        u_xlat9.w = x_955;
        let x_958 : f32 = u_xlat8.y;
        u_xlat11.z = x_958;
        let x_961 : f32 = u_xlat7.z;
        u_xlat11.w = x_961;
        let x_963 : vec4<f32> = u_xlat9;
        let x_965 : vec4<f32> = u_xlat11;
        let x_967 : vec3<f32> = (vec3<f32>(x_963.z, x_963.y, x_963.w) + vec3<f32>(x_965.z, x_965.y, x_965.w));
        let x_968 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat8;
        let x_972 : vec4<f32> = u_xlat12;
        let x_974 : vec3<f32> = (vec3<f32>(x_970.x, x_970.z, x_970.w) / vec3<f32>(x_972.z, x_972.w, x_972.y));
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat8;
        let x_982 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat11;
        let x_987 : vec4<f32> = u_xlat7;
        let x_989 : vec3<f32> = (vec3<f32>(x_985.z, x_985.y, x_985.w) / vec3<f32>(x_987.x, x_987.y, x_987.z));
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat9;
        let x_994 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat8;
        let x_1000 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1002 : vec3<f32> = (vec3<f32>(x_997.y, x_997.x, x_997.z) * vec3<f32>(x_1000.x, x_1000.x, x_1000.x));
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1008 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1010 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) * vec3<f32>(x_1008.y, x_1008.y, x_1008.y));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
        let x_1014 : f32 = u_xlat9.x;
        u_xlat8.w = x_1014;
        let x_1016 : vec4<f32> = u_xlat6;
        let x_1019 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.y, x_1022.w, x_1022.x, x_1022.w));
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1028 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y)) + vec2<f32>(x_1031.z, x_1031.w));
        let x_1035 : f32 = u_xlat8.y;
        u_xlat9.w = x_1035;
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.y, x_1037.z);
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1039.x, x_1038.x, x_1039.z, x_1038.y);
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1053 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.w, x_1056.y, x_1056.w, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat6;
        let x_1062 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.x, x_1065.w, x_1065.z, x_1065.w));
        let x_1068 : vec4<f32> = u_xlat7;
        let x_1070 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1068.x, x_1068.x, x_1068.x, x_1068.y) * vec4<f32>(x_1070.z, x_1070.w, x_1070.y, x_1070.z));
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1074.y, x_1074.y, x_1074.z, x_1074.z) * x_1076);
        let x_1080 : f32 = u_xlat7.z;
        let x_1082 : f32 = u_xlat12.y;
        u_xlat80 = (x_1080 * x_1082);
        let x_1085 : vec4<f32> = u_xlat10;
        let x_1086 : vec2<f32> = vec2<f32>(x_1085.x, x_1085.y);
        let x_1088 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
        let x_1095 : vec3<f32> = txVec4;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1095.xy, x_1095.z);
        u_xlat6.x = x_1097;
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1111 : vec3<f32> = txVec5;
        let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1111.xy, x_1111.z);
        u_xlat31 = x_1113;
        let x_1114 : f32 = u_xlat31;
        let x_1116 : f32 = u_xlat13.y;
        u_xlat31 = (x_1114 * x_1116);
        let x_1119 : f32 = u_xlat13.x;
        let x_1121 : f32 = u_xlat6.x;
        let x_1123 : f32 = u_xlat31;
        u_xlat6.x = ((x_1119 * x_1121) + x_1123);
        let x_1127 : vec2<f32> = u_xlat56;
        let x_1129 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec6;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat31 = x_1138;
        let x_1140 : f32 = u_xlat13.z;
        let x_1141 : f32 = u_xlat31;
        let x_1144 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1140 * x_1141) + x_1144);
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.x, x_1148.y);
        let x_1151 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec7;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1158.xy, x_1158.z);
        u_xlat31 = x_1160;
        let x_1162 : f32 = u_xlat13.w;
        let x_1163 : f32 = u_xlat31;
        let x_1166 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1162 * x_1163) + x_1166);
        let x_1170 : vec4<f32> = u_xlat11;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.x, x_1170.y);
        let x_1173 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec8;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1180.xy, x_1180.z);
        u_xlat31 = x_1182;
        let x_1184 : f32 = u_xlat14.x;
        let x_1185 : f32 = u_xlat31;
        let x_1188 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1184 * x_1185) + x_1188);
        let x_1192 : vec4<f32> = u_xlat11;
        let x_1193 : vec2<f32> = vec2<f32>(x_1192.z, x_1192.w);
        let x_1195 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1202 : vec3<f32> = txVec9;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1202.xy, x_1202.z);
        u_xlat31 = x_1204;
        let x_1206 : f32 = u_xlat14.y;
        let x_1207 : f32 = u_xlat31;
        let x_1210 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1206 * x_1207) + x_1210);
        let x_1214 : vec4<f32> = u_xlat9;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec10;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat31 = x_1226;
        let x_1228 : f32 = u_xlat14.z;
        let x_1229 : f32 = u_xlat31;
        let x_1232 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1228 * x_1229) + x_1232);
        let x_1236 : vec4<f32> = u_xlat8;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1246 : vec3<f32> = txVec11;
        let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1246.xy, x_1246.z);
        u_xlat31 = x_1248;
        let x_1250 : f32 = u_xlat14.w;
        let x_1251 : f32 = u_xlat31;
        let x_1254 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1250 * x_1251) + x_1254);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.z, x_1258.w);
        let x_1261 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec12;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
        u_xlat31 = x_1270;
        let x_1271 : f32 = u_xlat80;
        let x_1272 : f32 = u_xlat31;
        let x_1275 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1271 * x_1272) + x_1275);
      } else {
        let x_1278 : vec4<f32> = vs_TEXCOORD8;
        let x_1281 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.z, x_1281.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1285 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1289 : vec2<f32> = floor(vec2<f32>(x_1287.x, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec4<f32> = vs_TEXCOORD8;
        let x_1295 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(x_1295.z, x_1295.w)) + -(vec2<f32>(x_1298.x, x_1298.y)));
        let x_1302 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1302.x, x_1302.x, x_1302.y, x_1302.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1305 : vec4<f32> = u_xlat7;
        let x_1307 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1305.x, x_1305.x, x_1305.z, x_1305.z) * vec4<f32>(x_1307.x, x_1307.x, x_1307.z, x_1307.z));
        let x_1310 : vec4<f32> = u_xlat8;
        let x_1314 : vec2<f32> = (vec2<f32>(x_1310.y, x_1310.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1315.x, x_1314.x, x_1315.z, x_1314.y);
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1320 : vec2<f32> = u_xlat56;
        let x_1322 : vec2<f32> = ((vec2<f32>(x_1317.x, x_1317.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1320));
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1323.w);
        let x_1325 : vec2<f32> = u_xlat56;
        let x_1327 : vec2<f32> = (-(x_1325) + vec2<f32>(1.0f, 1.0f));
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
        let x_1330 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1330, vec2<f32>(0.0f, 0.0f));
        let x_1332 : vec2<f32> = u_xlat58;
        let x_1334 : vec2<f32> = u_xlat58;
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1338 : vec2<f32> = ((-(x_1332) * x_1334) + vec2<f32>(x_1336.x, x_1336.y));
        let x_1339 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1341, vec2<f32>(0.0f, 0.0f));
        let x_1344 : vec2<f32> = u_xlat58;
        let x_1346 : vec2<f32> = u_xlat58;
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1350 : vec2<f32> = ((-(x_1344) * x_1346) + vec2<f32>(x_1348.y, x_1348.w));
        let x_1351 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1350.x, x_1351.y, x_1350.y);
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1356 : vec2<f32> = (vec2<f32>(x_1353.x, x_1353.y) + vec2<f32>(2.0f, 2.0f));
        let x_1357 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1359 : vec3<f32> = u_xlat32;
        let x_1361 : vec2<f32> = (vec2<f32>(x_1359.x, x_1359.z) + vec2<f32>(2.0f, 2.0f));
        let x_1362 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1362.x, x_1361.x, x_1362.z, x_1361.y);
        let x_1365 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1365 * 0.08163200318813323975f);
        let x_1369 : vec4<f32> = u_xlat7;
        let x_1372 : vec3<f32> = (vec3<f32>(x_1369.z, x_1369.x, x_1369.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1378 : vec2<f32> = (vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1379 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1382 : f32 = u_xlat11.y;
        u_xlat10.x = x_1382;
        let x_1384 : vec2<f32> = u_xlat56;
        let x_1391 : vec2<f32> = ((vec2<f32>(x_1384.x, x_1384.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1392 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1392.x, x_1391.x, x_1392.z, x_1391.y);
        let x_1394 : vec2<f32> = u_xlat56;
        let x_1398 : vec2<f32> = ((vec2<f32>(x_1394.x, x_1394.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1398.x, x_1399.y, x_1398.y, x_1399.w);
        let x_1402 : f32 = u_xlat7.x;
        u_xlat8.y = x_1402;
        let x_1405 : f32 = u_xlat9.y;
        u_xlat8.w = x_1405;
        let x_1407 : vec4<f32> = u_xlat8;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1407 + x_1408);
        let x_1410 : vec2<f32> = u_xlat56;
        let x_1413 : vec2<f32> = ((vec2<f32>(x_1410.y, x_1410.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1414.x, x_1413.x, x_1414.z, x_1413.y);
        let x_1416 : vec2<f32> = u_xlat56;
        let x_1419 : vec2<f32> = ((vec2<f32>(x_1416.y, x_1416.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1419.x, x_1420.y, x_1419.y, x_1420.w);
        let x_1423 : f32 = u_xlat7.y;
        u_xlat9.y = x_1423;
        let x_1425 : vec4<f32> = u_xlat9;
        let x_1426 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1425 + x_1426);
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1429 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1428 / x_1429);
        let x_1431 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1431 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1437 : vec4<f32> = u_xlat9;
        let x_1438 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1437 / x_1438);
        let x_1440 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1440 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1445 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1442.w, x_1442.x, x_1442.y, x_1442.z) * vec4<f32>(x_1445.x, x_1445.x, x_1445.x, x_1445.x));
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1448.x, x_1448.w, x_1448.y, x_1448.z) * vec4<f32>(x_1451.y, x_1451.y, x_1451.y, x_1451.y));
        let x_1454 : vec4<f32> = u_xlat8;
        let x_1455 : vec3<f32> = vec3<f32>(x_1454.y, x_1454.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1455.x, x_1456.y, x_1455.y, x_1455.z);
        let x_1459 : f32 = u_xlat9.x;
        u_xlat11.y = x_1459;
        let x_1461 : vec4<f32> = u_xlat6;
        let x_1464 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1461.x, x_1461.y, x_1461.x, x_1461.y) * vec4<f32>(x_1464.x, x_1464.y, x_1464.x, x_1464.y)) + vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat6;
        let x_1473 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1476.w, x_1476.y));
        let x_1480 : f32 = u_xlat11.y;
        u_xlat8.y = x_1480;
        let x_1483 : f32 = u_xlat9.z;
        u_xlat11.y = x_1483;
        let x_1485 : vec4<f32> = u_xlat6;
        let x_1488 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1491 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y) * vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.y)) + vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1491.y));
        let x_1494 : vec4<f32> = u_xlat6;
        let x_1497 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat11;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(x_1497.x, x_1497.y)) + vec2<f32>(x_1500.w, x_1500.y));
        let x_1503 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat11.y;
        u_xlat8.z = x_1506;
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y) * vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y)) + vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.z));
        let x_1519 : f32 = u_xlat9.w;
        u_xlat11.y = x_1519;
        let x_1522 : vec4<f32> = u_xlat6;
        let x_1525 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y) * vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y)) + vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1528.y));
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.x, x_1535.y)) + vec2<f32>(x_1538.w, x_1538.y));
        let x_1542 : f32 = u_xlat11.y;
        u_xlat8.w = x_1542;
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1548.x, x_1548.y)) + vec2<f32>(x_1551.x, x_1551.w));
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1555 : vec3<f32> = vec3<f32>(x_1554.x, x_1554.z, x_1554.w);
        let x_1556 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1555.x, x_1556.y, x_1555.y, x_1555.z);
        let x_1558 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1558.x, x_1558.y, x_1558.x, x_1558.y) * vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.y)) + vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1564.y));
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.w, x_1574.y));
        let x_1578 : f32 = u_xlat8.x;
        u_xlat9.x = x_1578;
        let x_1580 : vec4<f32> = u_xlat6;
        let x_1583 : vec4<f32> = x_721.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat9;
        let x_1588 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.y) * vec2<f32>(x_1583.x, x_1583.y)) + vec2<f32>(x_1586.x, x_1586.y));
        let x_1589 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1588.x, x_1588.y, x_1589.z, x_1589.w);
        let x_1592 : vec4<f32> = u_xlat7;
        let x_1594 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1592.x, x_1592.x, x_1592.x, x_1592.x) * x_1594);
        let x_1597 : vec4<f32> = u_xlat7;
        let x_1599 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1597.y, x_1597.y, x_1597.y, x_1597.y) * x_1599);
        let x_1602 : vec4<f32> = u_xlat7;
        let x_1604 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1602.z, x_1602.z, x_1602.z, x_1602.z) * x_1604);
        let x_1606 : vec4<f32> = u_xlat7;
        let x_1608 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1606.w, x_1606.w, x_1606.w, x_1606.w) * x_1608);
        let x_1611 : vec4<f32> = u_xlat12;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec13;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat80 = x_1623;
        let x_1625 : vec4<f32> = u_xlat12;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec14;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat8.x = x_1637;
        let x_1640 : f32 = u_xlat8.x;
        let x_1642 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1640 * x_1642);
        let x_1646 : f32 = u_xlat17.x;
        let x_1647 : f32 = u_xlat80;
        let x_1650 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1646 * x_1647) + x_1650);
        let x_1653 : vec2<f32> = u_xlat56;
        let x_1655 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec15;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat56.x = x_1664;
        let x_1667 : f32 = u_xlat17.z;
        let x_1669 : f32 = u_xlat56.x;
        let x_1671 : f32 = u_xlat80;
        u_xlat80 = ((x_1667 * x_1669) + x_1671);
        let x_1674 : vec4<f32> = u_xlat15;
        let x_1675 : vec2<f32> = vec2<f32>(x_1674.x, x_1674.y);
        let x_1677 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec16;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
        u_xlat56.x = x_1686;
        let x_1689 : f32 = u_xlat17.w;
        let x_1691 : f32 = u_xlat56.x;
        let x_1693 : f32 = u_xlat80;
        u_xlat80 = ((x_1689 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat13;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec17;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1706.xy, x_1706.z);
        u_xlat56.x = x_1708;
        let x_1711 : f32 = u_xlat18.x;
        let x_1713 : f32 = u_xlat56.x;
        let x_1715 : f32 = u_xlat80;
        u_xlat80 = ((x_1711 * x_1713) + x_1715);
        let x_1718 : vec4<f32> = u_xlat13;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.z, x_1718.w);
        let x_1721 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec18;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat56.x = x_1730;
        let x_1733 : f32 = u_xlat18.y;
        let x_1735 : f32 = u_xlat56.x;
        let x_1737 : f32 = u_xlat80;
        u_xlat80 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat14;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
        let x_1743 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec19;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
        u_xlat56.x = x_1752;
        let x_1755 : f32 = u_xlat18.z;
        let x_1757 : f32 = u_xlat56.x;
        let x_1759 : f32 = u_xlat80;
        u_xlat80 = ((x_1755 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat15;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.z, x_1762.w);
        let x_1765 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec20;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat56.x = x_1774;
        let x_1777 : f32 = u_xlat18.w;
        let x_1779 : f32 = u_xlat56.x;
        let x_1781 : f32 = u_xlat80;
        u_xlat80 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec4<f32> = u_xlat16;
        let x_1785 : vec2<f32> = vec2<f32>(x_1784.x, x_1784.y);
        let x_1787 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec21;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1794.xy, x_1794.z);
        u_xlat56.x = x_1796;
        let x_1799 : f32 = u_xlat19.x;
        let x_1801 : f32 = u_xlat56.x;
        let x_1803 : f32 = u_xlat80;
        u_xlat80 = ((x_1799 * x_1801) + x_1803);
        let x_1806 : vec4<f32> = u_xlat16;
        let x_1807 : vec2<f32> = vec2<f32>(x_1806.z, x_1806.w);
        let x_1809 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1807.x, x_1807.y, x_1809);
        let x_1816 : vec3<f32> = txVec22;
        let x_1818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1816.xy, x_1816.z);
        u_xlat56.x = x_1818;
        let x_1821 : f32 = u_xlat19.y;
        let x_1823 : f32 = u_xlat56.x;
        let x_1825 : f32 = u_xlat80;
        u_xlat80 = ((x_1821 * x_1823) + x_1825);
        let x_1828 : vec2<f32> = u_xlat33;
        let x_1830 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec23;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1837.xy, x_1837.z);
        u_xlat56.x = x_1839;
        let x_1842 : f32 = u_xlat19.z;
        let x_1844 : f32 = u_xlat56.x;
        let x_1846 : f32 = u_xlat80;
        u_xlat80 = ((x_1842 * x_1844) + x_1846);
        let x_1849 : vec2<f32> = u_xlat64;
        let x_1851 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec24;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1858.xy, x_1858.z);
        u_xlat56.x = x_1860;
        let x_1863 : f32 = u_xlat19.w;
        let x_1865 : f32 = u_xlat56.x;
        let x_1867 : f32 = u_xlat80;
        u_xlat80 = ((x_1863 * x_1865) + x_1867);
        let x_1870 : vec4<f32> = u_xlat11;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
        let x_1873 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec25;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
        u_xlat56.x = x_1882;
        let x_1885 : f32 = u_xlat7.x;
        let x_1887 : f32 = u_xlat56.x;
        let x_1889 : f32 = u_xlat80;
        u_xlat80 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec4<f32> = u_xlat11;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.z, x_1892.w);
        let x_1895 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec26;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1902.xy, x_1902.z);
        u_xlat56.x = x_1904;
        let x_1907 : f32 = u_xlat7.y;
        let x_1909 : f32 = u_xlat56.x;
        let x_1911 : f32 = u_xlat80;
        u_xlat80 = ((x_1907 * x_1909) + x_1911);
        let x_1914 : vec2<f32> = u_xlat59;
        let x_1916 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
        let x_1923 : vec3<f32> = txVec27;
        let x_1925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1923.xy, x_1923.z);
        u_xlat56.x = x_1925;
        let x_1928 : f32 = u_xlat7.z;
        let x_1930 : f32 = u_xlat56.x;
        let x_1932 : f32 = u_xlat80;
        u_xlat80 = ((x_1928 * x_1930) + x_1932);
        let x_1935 : vec4<f32> = u_xlat6;
        let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
        let x_1938 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec28;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat6.x = x_1947;
        let x_1950 : f32 = u_xlat7.w;
        let x_1952 : f32 = u_xlat6.x;
        let x_1954 : f32 = u_xlat80;
        u_xlat79 = ((x_1950 * x_1952) + x_1954);
      }
    }
  } else {
    let x_1958 : vec4<f32> = vs_TEXCOORD8;
    let x_1959 : vec2<f32> = vec2<f32>(x_1958.x, x_1958.y);
    let x_1961 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
    let x_1968 : vec3<f32> = txVec29;
    let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1968.xy, x_1968.z);
    u_xlat79 = x_1970;
  }
  let x_1972 : f32 = x_721.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1972) + 1.0f);
  let x_1975 : f32 = u_xlat79;
  let x_1977 : f32 = x_721.x_MainLightShadowParams.x;
  let x_1979 : f32 = u_xlat80;
  u_xlat79 = ((x_1975 * x_1977) + x_1979);
  let x_1982 : f32 = vs_TEXCOORD8.z;
  u_xlatb80 = (0.0f >= x_1982);
  let x_1986 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1986 >= 1.0f);
  let x_1988 : bool = u_xlatb80;
  let x_1989 : bool = u_xlatb6;
  u_xlatb80 = (x_1988 | x_1989);
  let x_1991 : bool = u_xlatb80;
  let x_1992 : f32 = u_xlat79;
  u_xlat79 = select(x_1992, 1.0f, x_1991);
  let x_1994 : vec3<f32> = vs_TEXCOORD7;
  let x_1996 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_1998 : vec3<f32> = (x_1994 + -(x_1996));
  let x_1999 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec4<f32> = u_xlat6;
  let x_2003 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : f32 = u_xlat80;
  let x_2008 : f32 = x_721.x_MainLightShadowParams.z;
  let x_2011 : f32 = x_721.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2006 * x_2008) + x_2011);
  let x_2015 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2015, 0.0f, 1.0f);
  let x_2018 : f32 = u_xlat79;
  u_xlat31 = (-(x_2018) + 1.0f);
  let x_2022 : f32 = u_xlat6.x;
  let x_2023 : f32 = u_xlat31;
  let x_2025 : f32 = u_xlat79;
  u_xlat79 = ((x_2022 * x_2023) + x_2025);
  let x_2027 : vec3<f32> = u_xlat2;
  let x_2029 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(x_2027), vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2034 : f32 = u_xlat6.x;
  let x_2036 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2034 + x_2036);
  let x_2039 : vec4<f32> = u_xlat1;
  let x_2041 : vec4<f32> = u_xlat6;
  let x_2045 : vec3<f32> = u_xlat2;
  let x_2047 : vec3<f32> = ((vec3<f32>(x_2039.x, x_2039.y, x_2039.z) * -(vec3<f32>(x_2041.x, x_2041.x, x_2041.x))) + -(x_2045));
  let x_2048 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
  let x_2051 : vec4<f32> = u_xlat1;
  let x_2053 : vec3<f32> = u_xlat2;
  u_xlat81 = dot(vec3<f32>(x_2051.x, x_2051.y, x_2051.z), x_2053);
  let x_2055 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2055, 0.0f, 1.0f);
  let x_2057 : f32 = u_xlat81;
  u_xlat81 = (-(x_2057) + 1.0f);
  let x_2060 : f32 = u_xlat81;
  let x_2061 : f32 = u_xlat81;
  u_xlat81 = (x_2060 * x_2061);
  let x_2063 : f32 = u_xlat81;
  let x_2064 : f32 = u_xlat81;
  u_xlat81 = (x_2063 * x_2064);
  let x_2067 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_2067) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2075 : f32 = u_xlat0.x;
  let x_2077 : f32 = u_xlat7.x;
  u_xlat0.x = (x_2075 * x_2077);
  let x_2081 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2081 * 6.0f);
  let x_2093 : vec4<f32> = u_xlat6;
  let x_2096 : f32 = u_xlat0.x;
  let x_2097 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2093.x, x_2093.y, x_2093.z), x_2096);
  u_xlat7 = x_2097;
  let x_2099 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2099 + -1.0f);
  let x_2107 : f32 = x_2105.unity_SpecCube0_HDR.w;
  let x_2109 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2107 * x_2109) + 1.0f);
  let x_2114 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2114, 0.0f);
  let x_2118 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2118);
  let x_2122 : f32 = u_xlat0.x;
  let x_2124 : f32 = x_2105.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2122 * x_2124);
  let x_2128 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2128);
  let x_2132 : f32 = u_xlat0.x;
  let x_2134 : f32 = x_2105.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2132 * x_2134);
  let x_2137 : vec4<f32> = u_xlat7;
  let x_2139 : vec3<f32> = u_xlat0;
  let x_2141 : vec3<f32> = (vec3<f32>(x_2137.x, x_2137.y, x_2137.z) * vec3<f32>(x_2139.x, x_2139.x, x_2139.x));
  let x_2142 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
  let x_2144 : f32 = u_xlat50;
  let x_2146 : f32 = u_xlat50;
  let x_2150 : vec2<f32> = ((vec2<f32>(x_2144, x_2144) * vec2<f32>(x_2146, x_2146)) + vec2<f32>(-1.0f, 1.0f));
  let x_2151 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2150.x, x_2151.y, x_2150.y);
  let x_2154 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2154);
  let x_2156 : vec4<f32> = u_xlat5;
  let x_2159 : f32 = u_xlat77;
  let x_2161 : vec3<f32> = (-(vec3<f32>(x_2156.x, x_2156.y, x_2156.z)) + vec3<f32>(x_2159, x_2159, x_2159));
  let x_2162 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  let x_2164 : f32 = u_xlat81;
  let x_2166 : vec4<f32> = u_xlat7;
  let x_2169 : vec4<f32> = u_xlat5;
  let x_2171 : vec3<f32> = ((vec3<f32>(x_2164, x_2164, x_2164) * vec3<f32>(x_2166.x, x_2166.y, x_2166.z)) + vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
  let x_2172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : f32 = u_xlat50;
  let x_2176 : vec4<f32> = u_xlat7;
  let x_2178 : vec3<f32> = (vec3<f32>(x_2174, x_2174, x_2174) * vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
  let x_2179 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
  let x_2181 : vec4<f32> = u_xlat6;
  let x_2183 : vec4<f32> = u_xlat7;
  let x_2185 : vec3<f32> = (vec3<f32>(x_2181.x, x_2181.y, x_2181.z) * vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
  let x_2186 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2188 : vec4<f32> = u_xlat3;
  let x_2190 : vec4<f32> = u_xlat4;
  let x_2193 : vec4<f32> = u_xlat6;
  let x_2195 : vec3<f32> = ((vec3<f32>(x_2188.x, x_2188.y, x_2188.z) * vec3<f32>(x_2190.x, x_2190.y, x_2190.z)) + vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2198 : f32 = u_xlat79;
  let x_2200 : f32 = x_2105.unity_LightData.z;
  u_xlat50 = (x_2198 * x_2200);
  let x_2202 : vec4<f32> = u_xlat1;
  let x_2205 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2202.x, x_2202.y, x_2202.z), vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2208, 0.0f, 1.0f);
  let x_2210 : f32 = u_xlat50;
  let x_2211 : f32 = u_xlat77;
  u_xlat50 = (x_2210 * x_2211);
  let x_2213 : f32 = u_xlat50;
  let x_2216 : vec4<f32> = x_111.x_MainLightColor;
  let x_2218 : vec3<f32> = (vec3<f32>(x_2213, x_2213, x_2213) * vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2219 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
  let x_2221 : vec3<f32> = u_xlat2;
  let x_2223 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2225 : vec3<f32> = (x_2221 + vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
  let x_2226 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  let x_2228 : vec4<f32> = u_xlat7;
  let x_2230 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2228.x, x_2228.y, x_2228.z), vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
  let x_2233 : f32 = u_xlat50;
  u_xlat50 = max(x_2233, 1.17549435e-38f);
  let x_2236 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2236);
  let x_2238 : f32 = u_xlat50;
  let x_2240 : vec4<f32> = u_xlat7;
  let x_2242 : vec3<f32> = (vec3<f32>(x_2238, x_2238, x_2238) * vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
  let x_2245 : vec4<f32> = u_xlat1;
  let x_2247 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2245.x, x_2245.y, x_2245.z), vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
  let x_2250 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2250, 0.0f, 1.0f);
  let x_2253 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2255 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_2253.x, x_2253.y, x_2253.z), vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
  let x_2258 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2258, 0.0f, 1.0f);
  let x_2260 : f32 = u_xlat50;
  let x_2261 : f32 = u_xlat50;
  u_xlat50 = (x_2260 * x_2261);
  let x_2263 : f32 = u_xlat50;
  let x_2265 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2263 * x_2265) + 1.00001001358032226562f);
  let x_2269 : f32 = u_xlat77;
  let x_2270 : f32 = u_xlat77;
  u_xlat77 = (x_2269 * x_2270);
  let x_2272 : f32 = u_xlat50;
  let x_2273 : f32 = u_xlat50;
  u_xlat50 = (x_2272 * x_2273);
  let x_2275 : f32 = u_xlat77;
  u_xlat77 = max(x_2275, 0.10000000149011611938f);
  let x_2278 : f32 = u_xlat50;
  let x_2279 : f32 = u_xlat77;
  u_xlat50 = (x_2278 * x_2279);
  let x_2281 : f32 = u_xlat78;
  let x_2282 : f32 = u_xlat50;
  u_xlat50 = (x_2281 * x_2282);
  let x_2284 : f32 = u_xlat76;
  let x_2285 : f32 = u_xlat50;
  u_xlat50 = (x_2284 / x_2285);
  let x_2287 : vec4<f32> = u_xlat5;
  let x_2289 : f32 = u_xlat50;
  let x_2292 : vec4<f32> = u_xlat4;
  let x_2294 : vec3<f32> = ((vec3<f32>(x_2287.x, x_2287.y, x_2287.z) * vec3<f32>(x_2289, x_2289, x_2289)) + vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
  let x_2295 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
  let x_2297 : vec4<f32> = u_xlat6;
  let x_2299 : vec4<f32> = u_xlat7;
  let x_2301 : vec3<f32> = (vec3<f32>(x_2297.x, x_2297.y, x_2297.z) * vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
  let x_2302 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
  let x_2306 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2308 : f32 = x_2105.unity_LightData.y;
  u_xlat50 = min(x_2306, x_2308);
  let x_2312 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2312));
  let x_2315 : f32 = u_xlat80;
  let x_2317 : f32 = x_721.x_AdditionalShadowFadeParams.x;
  let x_2320 : f32 = x_721.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2315 * x_2317) + x_2320);
  let x_2322 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2322, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2334 : u32 = u_xlatu_loop_1;
    let x_2335 : u32 = u_xlatu50;
    if ((x_2334 < x_2335)) {
    } else {
      break;
    }
    let x_2338 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2338 >> 2u);
    let x_2342 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2342 & 3u));
    let x_2345 : u32 = u_xlatu80;
    let x_2348 : vec4<f32> = x_2105.unity_LightIndices[bitcast<i32>(x_2345)];
    let x_2358 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2363 : vec4<u32> = indexable[x_2358];
    u_xlat80 = dot(x_2348, bitcast<vec4<f32>>(x_2363));
    let x_2367 : f32 = u_xlat80;
    u_xlati80 = i32(x_2367);
    let x_2369 : vec3<f32> = vs_TEXCOORD7;
    let x_2380 : i32 = u_xlati80;
    let x_2382 : vec4<f32> = x_2379.x_AdditionalLightsPosition[x_2380];
    let x_2385 : i32 = u_xlati80;
    let x_2387 : vec4<f32> = x_2379.x_AdditionalLightsPosition[x_2385];
    let x_2389 : vec3<f32> = ((-(x_2369) * vec3<f32>(x_2382.w, x_2382.w, x_2382.w)) + vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
    let x_2390 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
    let x_2392 : vec4<f32> = u_xlat8;
    let x_2394 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2392.x, x_2392.y, x_2392.z), vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
    let x_2397 : f32 = u_xlat81;
    u_xlat81 = max(x_2397, 0.00006103515625f);
    let x_2400 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2400);
    let x_2402 : f32 = u_xlat82;
    let x_2404 : vec4<f32> = u_xlat8;
    let x_2406 : vec3<f32> = (vec3<f32>(x_2402, x_2402, x_2402) * vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
    let x_2407 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
    let x_2410 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2410);
    let x_2412 : f32 = u_xlat81;
    let x_2413 : i32 = u_xlati80;
    let x_2415 : f32 = x_2379.x_AdditionalLightsAttenuation[x_2413].x;
    u_xlat81 = (x_2412 * x_2415);
    let x_2417 : f32 = u_xlat81;
    let x_2419 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2417) * x_2419) + 1.0f);
    let x_2422 : f32 = u_xlat81;
    u_xlat81 = max(x_2422, 0.0f);
    let x_2424 : f32 = u_xlat81;
    let x_2425 : f32 = u_xlat81;
    u_xlat81 = (x_2424 * x_2425);
    let x_2427 : f32 = u_xlat81;
    let x_2428 : f32 = u_xlat83;
    u_xlat81 = (x_2427 * x_2428);
    let x_2430 : i32 = u_xlati80;
    let x_2432 : vec4<f32> = x_2379.x_AdditionalLightsSpotDir[x_2430];
    let x_2434 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2432.x, x_2432.y, x_2432.z), vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
    let x_2437 : f32 = u_xlat83;
    let x_2438 : i32 = u_xlati80;
    let x_2440 : f32 = x_2379.x_AdditionalLightsAttenuation[x_2438].z;
    let x_2442 : i32 = u_xlati80;
    let x_2444 : f32 = x_2379.x_AdditionalLightsAttenuation[x_2442].w;
    u_xlat83 = ((x_2437 * x_2440) + x_2444);
    let x_2446 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2446, 0.0f, 1.0f);
    let x_2448 : f32 = u_xlat83;
    let x_2449 : f32 = u_xlat83;
    u_xlat83 = (x_2448 * x_2449);
    let x_2451 : f32 = u_xlat81;
    let x_2452 : f32 = u_xlat83;
    u_xlat81 = (x_2451 * x_2452);
    let x_2455 : i32 = u_xlati80;
    let x_2457 : f32 = x_721.x_AdditionalShadowParams[x_2455].w;
    u_xlati83 = i32(x_2457);
    let x_2460 : i32 = u_xlati83;
    u_xlatb84 = (x_2460 >= 0i);
    let x_2462 : bool = u_xlatb84;
    if (x_2462) {
      let x_2466 : i32 = u_xlati80;
      let x_2468 : f32 = x_721.x_AdditionalShadowParams[x_2466].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2468, x_2468, x_2468, x_2468))));
      let x_2472 : bool = u_xlatb84;
      if (x_2472) {
        let x_2477 : vec4<f32> = u_xlat9;
        let x_2480 : vec4<f32> = u_xlat9;
        let x_2483 : vec4<bool> = (abs(vec4<f32>(x_2477.z, x_2477.z, x_2477.y, x_2477.z)) >= abs(vec4<f32>(x_2480.x, x_2480.y, x_2480.x, x_2480.x)));
        let x_2485 : vec3<bool> = vec3<bool>(x_2483.x, x_2483.y, x_2483.z);
        let x_2486 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
        let x_2489 : bool = u_xlatb10.y;
        let x_2491 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2489 & x_2491);
        let x_2493 : vec4<f32> = u_xlat9;
        let x_2496 : vec4<bool> = (-(vec4<f32>(x_2493.z, x_2493.y, x_2493.z, x_2493.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2497 : vec3<bool> = vec3<bool>(x_2496.x, x_2496.y, x_2496.w);
        let x_2498 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2497.x, x_2497.y, x_2498.z, x_2497.z);
        let x_2501 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2501);
        let x_2506 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2506);
        let x_2512 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2512);
        let x_2516 : bool = u_xlatb10.z;
        if (x_2516) {
          let x_2521 : f32 = u_xlat10.y;
          x_2517 = x_2521;
        } else {
          let x_2523 : f32 = u_xlat85;
          x_2517 = x_2523;
        }
        let x_2524 : f32 = x_2517;
        u_xlat35 = x_2524;
        let x_2526 : bool = u_xlatb84;
        if (x_2526) {
          let x_2531 : f32 = u_xlat10.x;
          x_2527 = x_2531;
        } else {
          let x_2533 : f32 = u_xlat35;
          x_2527 = x_2533;
        }
        let x_2534 : f32 = x_2527;
        u_xlat84 = x_2534;
        let x_2535 : i32 = u_xlati80;
        let x_2537 : f32 = x_721.x_AdditionalShadowParams[x_2535].w;
        u_xlat10.x = trunc(x_2537);
        let x_2540 : f32 = u_xlat84;
        let x_2542 : f32 = u_xlat10.x;
        u_xlat84 = (x_2540 + x_2542);
        let x_2544 : f32 = u_xlat84;
        u_xlati83 = i32(x_2544);
      }
      let x_2546 : i32 = u_xlati83;
      u_xlati83 = (x_2546 << bitcast<u32>(2i));
      let x_2548 : vec3<f32> = vs_TEXCOORD7;
      let x_2550 : i32 = u_xlati83;
      let x_2553 : i32 = u_xlati83;
      let x_2557 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[((x_2550 + 1i) / 4i)][((x_2553 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2548.y, x_2548.y, x_2548.y, x_2548.y) * x_2557);
      let x_2559 : i32 = u_xlati83;
      let x_2561 : i32 = u_xlati83;
      let x_2564 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[(x_2559 / 4i)][(x_2561 % 4i)];
      let x_2565 : vec3<f32> = vs_TEXCOORD7;
      let x_2568 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2564 * vec4<f32>(x_2565.x, x_2565.x, x_2565.x, x_2565.x)) + x_2568);
      let x_2570 : i32 = u_xlati83;
      let x_2573 : i32 = u_xlati83;
      let x_2577 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[((x_2570 + 2i) / 4i)][((x_2573 + 2i) % 4i)];
      let x_2578 : vec3<f32> = vs_TEXCOORD7;
      let x_2581 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2577 * vec4<f32>(x_2578.z, x_2578.z, x_2578.z, x_2578.z)) + x_2581);
      let x_2583 : vec4<f32> = u_xlat10;
      let x_2584 : i32 = u_xlati83;
      let x_2587 : i32 = u_xlati83;
      let x_2591 : vec4<f32> = x_721.x_AdditionalLightsWorldToShadow[((x_2584 + 3i) / 4i)][((x_2587 + 3i) % 4i)];
      u_xlat10 = (x_2583 + x_2591);
      let x_2593 : vec4<f32> = u_xlat10;
      let x_2595 : vec4<f32> = u_xlat10;
      let x_2597 : vec3<f32> = (vec3<f32>(x_2593.x, x_2593.y, x_2593.z) / vec3<f32>(x_2595.w, x_2595.w, x_2595.w));
      let x_2598 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);
      let x_2601 : i32 = u_xlati80;
      let x_2603 : f32 = x_721.x_AdditionalShadowParams[x_2601].y;
      u_xlatb83 = (0.0f < x_2603);
      let x_2605 : bool = u_xlatb83;
      if (x_2605) {
        let x_2608 : i32 = u_xlati80;
        let x_2610 : f32 = x_721.x_AdditionalShadowParams[x_2608].y;
        u_xlatb83 = (1.0f == x_2610);
        let x_2612 : bool = u_xlatb83;
        if (x_2612) {
          let x_2615 : vec4<f32> = u_xlat10;
          let x_2618 : vec4<f32> = x_721.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y) + x_2618);
          let x_2621 : vec4<f32> = u_xlat11;
          let x_2622 : vec2<f32> = vec2<f32>(x_2621.x, x_2621.y);
          let x_2624 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2622.x, x_2622.y, x_2624);
          let x_2632 : vec3<f32> = txVec30;
          let x_2634 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2632.xy, x_2632.z);
          u_xlat12.x = x_2634;
          let x_2637 : vec4<f32> = u_xlat11;
          let x_2638 : vec2<f32> = vec2<f32>(x_2637.z, x_2637.w);
          let x_2640 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2638.x, x_2638.y, x_2640);
          let x_2647 : vec3<f32> = txVec31;
          let x_2649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2647.xy, x_2647.z);
          u_xlat12.y = x_2649;
          let x_2651 : vec4<f32> = u_xlat10;
          let x_2654 : vec4<f32> = x_721.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2651.x, x_2651.y, x_2651.x, x_2651.y) + x_2654);
          let x_2657 : vec4<f32> = u_xlat11;
          let x_2658 : vec2<f32> = vec2<f32>(x_2657.x, x_2657.y);
          let x_2660 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
          let x_2667 : vec3<f32> = txVec32;
          let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
          u_xlat12.z = x_2669;
          let x_2672 : vec4<f32> = u_xlat11;
          let x_2673 : vec2<f32> = vec2<f32>(x_2672.z, x_2672.w);
          let x_2675 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2673.x, x_2673.y, x_2675);
          let x_2682 : vec3<f32> = txVec33;
          let x_2684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2682.xy, x_2682.z);
          u_xlat12.w = x_2684;
          let x_2686 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2686, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2689 : i32 = u_xlati80;
          let x_2691 : f32 = x_721.x_AdditionalShadowParams[x_2689].y;
          u_xlatb84 = (2.0f == x_2691);
          let x_2693 : bool = u_xlatb84;
          if (x_2693) {
            let x_2696 : vec4<f32> = u_xlat10;
            let x_2699 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2702 : vec2<f32> = ((vec2<f32>(x_2696.x, x_2696.y) * vec2<f32>(x_2699.z, x_2699.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2703 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2702.x, x_2702.y, x_2703.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat11;
            let x_2707 : vec2<f32> = floor(vec2<f32>(x_2705.x, x_2705.y));
            let x_2708 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2707.x, x_2707.y, x_2708.z, x_2708.w);
            let x_2711 : vec4<f32> = u_xlat10;
            let x_2714 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2717 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2711.x, x_2711.y) * vec2<f32>(x_2714.z, x_2714.w)) + -(vec2<f32>(x_2717.x, x_2717.y)));
            let x_2721 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2721.x, x_2721.x, x_2721.y, x_2721.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2724 : vec4<f32> = u_xlat12;
            let x_2726 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2724.x, x_2724.x, x_2724.z, x_2724.z) * vec4<f32>(x_2726.x, x_2726.x, x_2726.z, x_2726.z));
            let x_2729 : vec4<f32> = u_xlat13;
            let x_2731 : vec2<f32> = (vec2<f32>(x_2729.y, x_2729.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2732 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2731.x, x_2732.y, x_2731.y, x_2732.w);
            let x_2734 : vec4<f32> = u_xlat13;
            let x_2737 : vec2<f32> = u_xlat61;
            let x_2739 : vec2<f32> = ((vec2<f32>(x_2734.x, x_2734.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2737));
            let x_2740 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
            let x_2743 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2743) + vec2<f32>(1.0f, 1.0f));
            let x_2746 : vec2<f32> = u_xlat61;
            let x_2747 : vec2<f32> = min(x_2746, vec2<f32>(0.0f, 0.0f));
            let x_2748 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2747.x, x_2747.y, x_2748.z, x_2748.w);
            let x_2750 : vec4<f32> = u_xlat14;
            let x_2753 : vec4<f32> = u_xlat14;
            let x_2756 : vec2<f32> = u_xlat63;
            let x_2757 : vec2<f32> = ((-(vec2<f32>(x_2750.x, x_2750.y)) * vec2<f32>(x_2753.x, x_2753.y)) + x_2756);
            let x_2758 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2757.x, x_2757.y, x_2758.z, x_2758.w);
            let x_2760 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2760, vec2<f32>(0.0f, 0.0f));
            let x_2762 : vec2<f32> = u_xlat61;
            let x_2764 : vec2<f32> = u_xlat61;
            let x_2766 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2762) * x_2764) + vec2<f32>(x_2766.y, x_2766.w));
            let x_2769 : vec4<f32> = u_xlat14;
            let x_2771 : vec2<f32> = (vec2<f32>(x_2769.x, x_2769.y) + vec2<f32>(1.0f, 1.0f));
            let x_2772 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2771.x, x_2771.y, x_2772.z, x_2772.w);
            let x_2774 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2774 + vec2<f32>(1.0f, 1.0f));
            let x_2776 : vec4<f32> = u_xlat13;
            let x_2778 : vec2<f32> = (vec2<f32>(x_2776.x, x_2776.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2779 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2778.x, x_2778.y, x_2779.z, x_2779.w);
            let x_2781 : vec2<f32> = u_xlat63;
            let x_2782 : vec2<f32> = (x_2781 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2783 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2782.x, x_2782.y, x_2783.z, x_2783.w);
            let x_2785 : vec4<f32> = u_xlat14;
            let x_2787 : vec2<f32> = (vec2<f32>(x_2785.x, x_2785.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2788 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2790 : vec2<f32> = u_xlat61;
            let x_2791 : vec2<f32> = (x_2790 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2792 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
            let x_2794 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2794.y, x_2794.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2798 : f32 = u_xlat14.x;
            u_xlat15.z = x_2798;
            let x_2801 : f32 = u_xlat61.x;
            u_xlat15.w = x_2801;
            let x_2804 : f32 = u_xlat16.x;
            u_xlat13.z = x_2804;
            let x_2807 : f32 = u_xlat12.x;
            u_xlat13.w = x_2807;
            let x_2809 : vec4<f32> = u_xlat13;
            let x_2811 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2809.z, x_2809.w, x_2809.x, x_2809.z) + vec4<f32>(x_2811.z, x_2811.w, x_2811.x, x_2811.z));
            let x_2815 : f32 = u_xlat15.y;
            u_xlat14.z = x_2815;
            let x_2818 : f32 = u_xlat61.y;
            u_xlat14.w = x_2818;
            let x_2821 : f32 = u_xlat13.y;
            u_xlat16.z = x_2821;
            let x_2824 : f32 = u_xlat12.z;
            u_xlat16.w = x_2824;
            let x_2826 : vec4<f32> = u_xlat14;
            let x_2828 : vec4<f32> = u_xlat16;
            let x_2830 : vec3<f32> = (vec3<f32>(x_2826.z, x_2826.y, x_2826.w) + vec3<f32>(x_2828.z, x_2828.y, x_2828.w));
            let x_2831 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat13;
            let x_2835 : vec4<f32> = u_xlat17;
            let x_2837 : vec3<f32> = (vec3<f32>(x_2833.x, x_2833.z, x_2833.w) / vec3<f32>(x_2835.z, x_2835.w, x_2835.y));
            let x_2838 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2837.x, x_2837.y, x_2837.z, x_2838.w);
            let x_2840 : vec4<f32> = u_xlat13;
            let x_2842 : vec3<f32> = (vec3<f32>(x_2840.x, x_2840.y, x_2840.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2843 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);
            let x_2845 : vec4<f32> = u_xlat16;
            let x_2847 : vec4<f32> = u_xlat12;
            let x_2849 : vec3<f32> = (vec3<f32>(x_2845.z, x_2845.y, x_2845.w) / vec3<f32>(x_2847.x, x_2847.y, x_2847.z));
            let x_2850 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2849.x, x_2849.y, x_2849.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat14;
            let x_2854 : vec3<f32> = (vec3<f32>(x_2852.x, x_2852.y, x_2852.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2855 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2855.w);
            let x_2857 : vec4<f32> = u_xlat13;
            let x_2860 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2862 : vec3<f32> = (vec3<f32>(x_2857.y, x_2857.x, x_2857.z) * vec3<f32>(x_2860.x, x_2860.x, x_2860.x));
            let x_2863 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2862.x, x_2862.y, x_2862.z, x_2863.w);
            let x_2865 : vec4<f32> = u_xlat14;
            let x_2868 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2870 : vec3<f32> = (vec3<f32>(x_2865.x, x_2865.y, x_2865.z) * vec3<f32>(x_2868.y, x_2868.y, x_2868.y));
            let x_2871 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
            let x_2874 : f32 = u_xlat14.x;
            u_xlat13.w = x_2874;
            let x_2876 : vec4<f32> = u_xlat11;
            let x_2879 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y) * vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y)) + vec4<f32>(x_2882.y, x_2882.w, x_2882.x, x_2882.w));
            let x_2885 : vec4<f32> = u_xlat11;
            let x_2888 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2885.x, x_2885.y) * vec2<f32>(x_2888.x, x_2888.y)) + vec2<f32>(x_2891.z, x_2891.w));
            let x_2895 : f32 = u_xlat13.y;
            u_xlat14.w = x_2895;
            let x_2897 : vec4<f32> = u_xlat14;
            let x_2898 : vec2<f32> = vec2<f32>(x_2897.y, x_2897.z);
            let x_2899 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2899.x, x_2898.x, x_2899.z, x_2898.y);
            let x_2901 : vec4<f32> = u_xlat11;
            let x_2904 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2907 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2901.x, x_2901.y, x_2901.x, x_2901.y) * vec4<f32>(x_2904.x, x_2904.y, x_2904.x, x_2904.y)) + vec4<f32>(x_2907.x, x_2907.y, x_2907.z, x_2907.y));
            let x_2910 : vec4<f32> = u_xlat11;
            let x_2913 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2916 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2910.x, x_2910.y, x_2910.x, x_2910.y) * vec4<f32>(x_2913.x, x_2913.y, x_2913.x, x_2913.y)) + vec4<f32>(x_2916.w, x_2916.y, x_2916.w, x_2916.z));
            let x_2919 : vec4<f32> = u_xlat11;
            let x_2922 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_2925 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2919.x, x_2919.y, x_2919.x, x_2919.y) * vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.y)) + vec4<f32>(x_2925.x, x_2925.w, x_2925.z, x_2925.w));
            let x_2928 : vec4<f32> = u_xlat12;
            let x_2930 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2928.x, x_2928.x, x_2928.x, x_2928.y) * vec4<f32>(x_2930.z, x_2930.w, x_2930.y, x_2930.z));
            let x_2933 : vec4<f32> = u_xlat12;
            let x_2935 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2933.y, x_2933.y, x_2933.z, x_2933.z) * x_2935);
            let x_2938 : f32 = u_xlat12.z;
            let x_2940 : f32 = u_xlat17.y;
            u_xlat84 = (x_2938 * x_2940);
            let x_2943 : vec4<f32> = u_xlat15;
            let x_2944 : vec2<f32> = vec2<f32>(x_2943.x, x_2943.y);
            let x_2946 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec34;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat85 = x_2955;
            let x_2957 : vec4<f32> = u_xlat15;
            let x_2958 : vec2<f32> = vec2<f32>(x_2957.z, x_2957.w);
            let x_2960 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
            let x_2967 : vec3<f32> = txVec35;
            let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
            u_xlat11.x = x_2969;
            let x_2972 : f32 = u_xlat11.x;
            let x_2974 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2972 * x_2974);
            let x_2978 : f32 = u_xlat18.x;
            let x_2979 : f32 = u_xlat85;
            let x_2982 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2978 * x_2979) + x_2982);
            let x_2985 : vec2<f32> = u_xlat61;
            let x_2987 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
            let x_2994 : vec3<f32> = txVec36;
            let x_2996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
            u_xlat11.x = x_2996;
            let x_2999 : f32 = u_xlat18.z;
            let x_3001 : f32 = u_xlat11.x;
            let x_3003 : f32 = u_xlat85;
            u_xlat85 = ((x_2999 * x_3001) + x_3003);
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3007 : vec2<f32> = vec2<f32>(x_3006.x, x_3006.y);
            let x_3009 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec37;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat11.x = x_3018;
            let x_3021 : f32 = u_xlat18.w;
            let x_3023 : f32 = u_xlat11.x;
            let x_3025 : f32 = u_xlat85;
            u_xlat85 = ((x_3021 * x_3023) + x_3025);
            let x_3028 : vec4<f32> = u_xlat16;
            let x_3029 : vec2<f32> = vec2<f32>(x_3028.x, x_3028.y);
            let x_3031 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3038 : vec3<f32> = txVec38;
            let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
            u_xlat11.x = x_3040;
            let x_3043 : f32 = u_xlat19.x;
            let x_3045 : f32 = u_xlat11.x;
            let x_3047 : f32 = u_xlat85;
            u_xlat85 = ((x_3043 * x_3045) + x_3047);
            let x_3050 : vec4<f32> = u_xlat16;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.z, x_3050.w);
            let x_3053 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec39;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat11.x = x_3062;
            let x_3065 : f32 = u_xlat19.y;
            let x_3067 : f32 = u_xlat11.x;
            let x_3069 : f32 = u_xlat85;
            u_xlat85 = ((x_3065 * x_3067) + x_3069);
            let x_3072 : vec4<f32> = u_xlat14;
            let x_3073 : vec2<f32> = vec2<f32>(x_3072.z, x_3072.w);
            let x_3075 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
            let x_3082 : vec3<f32> = txVec40;
            let x_3084 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
            u_xlat11.x = x_3084;
            let x_3087 : f32 = u_xlat19.z;
            let x_3089 : f32 = u_xlat11.x;
            let x_3091 : f32 = u_xlat85;
            u_xlat85 = ((x_3087 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat13;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
            let x_3097 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec41;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat11.x = x_3106;
            let x_3109 : f32 = u_xlat19.w;
            let x_3111 : f32 = u_xlat11.x;
            let x_3113 : f32 = u_xlat85;
            u_xlat85 = ((x_3109 * x_3111) + x_3113);
            let x_3116 : vec4<f32> = u_xlat13;
            let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
            let x_3119 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
            let x_3126 : vec3<f32> = txVec42;
            let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
            u_xlat11.x = x_3128;
            let x_3130 : f32 = u_xlat84;
            let x_3132 : f32 = u_xlat11.x;
            let x_3134 : f32 = u_xlat85;
            u_xlat83 = ((x_3130 * x_3132) + x_3134);
          } else {
            let x_3137 : vec4<f32> = u_xlat10;
            let x_3140 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3143 : vec2<f32> = ((vec2<f32>(x_3137.x, x_3137.y) * vec2<f32>(x_3140.z, x_3140.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3144 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3143.x, x_3143.y, x_3144.z, x_3144.w);
            let x_3146 : vec4<f32> = u_xlat11;
            let x_3148 : vec2<f32> = floor(vec2<f32>(x_3146.x, x_3146.y));
            let x_3149 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3148.x, x_3148.y, x_3149.z, x_3149.w);
            let x_3151 : vec4<f32> = u_xlat10;
            let x_3154 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3157 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3151.x, x_3151.y) * vec2<f32>(x_3154.z, x_3154.w)) + -(vec2<f32>(x_3157.x, x_3157.y)));
            let x_3161 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3161.x, x_3161.x, x_3161.y, x_3161.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3164 : vec4<f32> = u_xlat12;
            let x_3166 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3164.x, x_3164.x, x_3164.z, x_3164.z) * vec4<f32>(x_3166.x, x_3166.x, x_3166.z, x_3166.z));
            let x_3169 : vec4<f32> = u_xlat13;
            let x_3171 : vec2<f32> = (vec2<f32>(x_3169.y, x_3169.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3172 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3172.x, x_3171.x, x_3172.z, x_3171.y);
            let x_3174 : vec4<f32> = u_xlat13;
            let x_3177 : vec2<f32> = u_xlat61;
            let x_3179 : vec2<f32> = ((vec2<f32>(x_3174.x, x_3174.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3177));
            let x_3180 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3179.x, x_3180.y, x_3179.y, x_3180.w);
            let x_3182 : vec2<f32> = u_xlat61;
            let x_3184 : vec2<f32> = (-(x_3182) + vec2<f32>(1.0f, 1.0f));
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3184.x, x_3184.y, x_3185.z, x_3185.w);
            let x_3187 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3187, vec2<f32>(0.0f, 0.0f));
            let x_3189 : vec2<f32> = u_xlat63;
            let x_3191 : vec2<f32> = u_xlat63;
            let x_3193 : vec4<f32> = u_xlat13;
            let x_3195 : vec2<f32> = ((-(x_3189) * x_3191) + vec2<f32>(x_3193.x, x_3193.y));
            let x_3196 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3195.x, x_3195.y, x_3196.z, x_3196.w);
            let x_3198 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3198, vec2<f32>(0.0f, 0.0f));
            let x_3201 : vec2<f32> = u_xlat63;
            let x_3203 : vec2<f32> = u_xlat63;
            let x_3205 : vec4<f32> = u_xlat12;
            let x_3207 : vec2<f32> = ((-(x_3201) * x_3203) + vec2<f32>(x_3205.y, x_3205.w));
            let x_3208 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3207.x, x_3208.y, x_3207.y);
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3212 : vec2<f32> = (vec2<f32>(x_3210.x, x_3210.y) + vec2<f32>(2.0f, 2.0f));
            let x_3213 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3212.x, x_3212.y, x_3213.z, x_3213.w);
            let x_3215 : vec3<f32> = u_xlat37;
            let x_3217 : vec2<f32> = (vec2<f32>(x_3215.x, x_3215.z) + vec2<f32>(2.0f, 2.0f));
            let x_3218 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3218.x, x_3217.x, x_3218.z, x_3217.y);
            let x_3221 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3221 * 0.08163200318813323975f);
            let x_3224 : vec4<f32> = u_xlat12;
            let x_3226 : vec3<f32> = (vec3<f32>(x_3224.z, x_3224.x, x_3224.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3227 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3226.x, x_3226.y, x_3226.z, x_3227.w);
            let x_3229 : vec4<f32> = u_xlat13;
            let x_3231 : vec2<f32> = (vec2<f32>(x_3229.x, x_3229.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3232 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3231.x, x_3231.y, x_3232.z, x_3232.w);
            let x_3235 : f32 = u_xlat16.y;
            u_xlat15.x = x_3235;
            let x_3237 : vec2<f32> = u_xlat61;
            let x_3240 : vec2<f32> = ((vec2<f32>(x_3237.x, x_3237.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3241 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3241.x, x_3240.x, x_3241.z, x_3240.y);
            let x_3243 : vec2<f32> = u_xlat61;
            let x_3246 : vec2<f32> = ((vec2<f32>(x_3243.x, x_3243.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3247 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3246.x, x_3247.y, x_3246.y, x_3247.w);
            let x_3250 : f32 = u_xlat12.x;
            u_xlat13.y = x_3250;
            let x_3253 : f32 = u_xlat14.y;
            u_xlat13.w = x_3253;
            let x_3255 : vec4<f32> = u_xlat13;
            let x_3256 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3255 + x_3256);
            let x_3258 : vec2<f32> = u_xlat61;
            let x_3261 : vec2<f32> = ((vec2<f32>(x_3258.y, x_3258.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3262 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3262.x, x_3261.x, x_3262.z, x_3261.y);
            let x_3264 : vec2<f32> = u_xlat61;
            let x_3267 : vec2<f32> = ((vec2<f32>(x_3264.y, x_3264.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3268 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3267.x, x_3268.y, x_3267.y, x_3268.w);
            let x_3271 : f32 = u_xlat12.y;
            u_xlat14.y = x_3271;
            let x_3273 : vec4<f32> = u_xlat14;
            let x_3274 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3273 + x_3274);
            let x_3276 : vec4<f32> = u_xlat13;
            let x_3277 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3276 / x_3277);
            let x_3279 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3279 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3281 : vec4<f32> = u_xlat14;
            let x_3282 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3281 / x_3282);
            let x_3284 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3284 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3286 : vec4<f32> = u_xlat13;
            let x_3289 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3286.w, x_3286.x, x_3286.y, x_3286.z) * vec4<f32>(x_3289.x, x_3289.x, x_3289.x, x_3289.x));
            let x_3292 : vec4<f32> = u_xlat14;
            let x_3295 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3292.x, x_3292.w, x_3292.y, x_3292.z) * vec4<f32>(x_3295.y, x_3295.y, x_3295.y, x_3295.y));
            let x_3298 : vec4<f32> = u_xlat13;
            let x_3299 : vec3<f32> = vec3<f32>(x_3298.y, x_3298.z, x_3298.w);
            let x_3300 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3299.x, x_3300.y, x_3299.y, x_3299.z);
            let x_3303 : f32 = u_xlat14.x;
            u_xlat16.y = x_3303;
            let x_3305 : vec4<f32> = u_xlat11;
            let x_3308 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3311 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3305.x, x_3305.y, x_3305.x, x_3305.y) * vec4<f32>(x_3308.x, x_3308.y, x_3308.x, x_3308.y)) + vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3311.y));
            let x_3314 : vec4<f32> = u_xlat11;
            let x_3317 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3320 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3314.x, x_3314.y) * vec2<f32>(x_3317.x, x_3317.y)) + vec2<f32>(x_3320.w, x_3320.y));
            let x_3324 : f32 = u_xlat16.y;
            u_xlat13.y = x_3324;
            let x_3327 : f32 = u_xlat14.z;
            u_xlat16.y = x_3327;
            let x_3329 : vec4<f32> = u_xlat11;
            let x_3332 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3335 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3329.x, x_3329.y, x_3329.x, x_3329.y) * vec4<f32>(x_3332.x, x_3332.y, x_3332.x, x_3332.y)) + vec4<f32>(x_3335.x, x_3335.y, x_3335.z, x_3335.y));
            let x_3338 : vec4<f32> = u_xlat11;
            let x_3341 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3344 : vec4<f32> = u_xlat16;
            let x_3346 : vec2<f32> = ((vec2<f32>(x_3338.x, x_3338.y) * vec2<f32>(x_3341.x, x_3341.y)) + vec2<f32>(x_3344.w, x_3344.y));
            let x_3347 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3346.x, x_3346.y, x_3347.z, x_3347.w);
            let x_3350 : f32 = u_xlat16.y;
            u_xlat13.z = x_3350;
            let x_3353 : vec4<f32> = u_xlat11;
            let x_3356 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3359 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3353.x, x_3353.y, x_3353.x, x_3353.y) * vec4<f32>(x_3356.x, x_3356.y, x_3356.x, x_3356.y)) + vec4<f32>(x_3359.x, x_3359.y, x_3359.x, x_3359.z));
            let x_3363 : f32 = u_xlat14.w;
            u_xlat16.y = x_3363;
            let x_3366 : vec4<f32> = u_xlat11;
            let x_3369 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3372 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3366.x, x_3366.y, x_3366.x, x_3366.y) * vec4<f32>(x_3369.x, x_3369.y, x_3369.x, x_3369.y)) + vec4<f32>(x_3372.x, x_3372.y, x_3372.z, x_3372.y));
            let x_3376 : vec4<f32> = u_xlat11;
            let x_3379 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3382 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3376.x, x_3376.y) * vec2<f32>(x_3379.x, x_3379.y)) + vec2<f32>(x_3382.w, x_3382.y));
            let x_3386 : f32 = u_xlat16.y;
            u_xlat13.w = x_3386;
            let x_3389 : vec4<f32> = u_xlat11;
            let x_3392 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3395 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3389.x, x_3389.y) * vec2<f32>(x_3392.x, x_3392.y)) + vec2<f32>(x_3395.x, x_3395.w));
            let x_3398 : vec4<f32> = u_xlat16;
            let x_3399 : vec3<f32> = vec3<f32>(x_3398.x, x_3398.z, x_3398.w);
            let x_3400 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3399.x, x_3400.y, x_3399.y, x_3399.z);
            let x_3402 : vec4<f32> = u_xlat11;
            let x_3405 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3408 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3402.x, x_3402.y, x_3402.x, x_3402.y) * vec4<f32>(x_3405.x, x_3405.y, x_3405.x, x_3405.y)) + vec4<f32>(x_3408.x, x_3408.y, x_3408.z, x_3408.y));
            let x_3411 : vec4<f32> = u_xlat11;
            let x_3414 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3417 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3411.x, x_3411.y) * vec2<f32>(x_3414.x, x_3414.y)) + vec2<f32>(x_3417.w, x_3417.y));
            let x_3421 : f32 = u_xlat13.x;
            u_xlat14.x = x_3421;
            let x_3423 : vec4<f32> = u_xlat11;
            let x_3426 : vec4<f32> = x_721.x_AdditionalShadowmapSize;
            let x_3429 : vec4<f32> = u_xlat14;
            let x_3431 : vec2<f32> = ((vec2<f32>(x_3423.x, x_3423.y) * vec2<f32>(x_3426.x, x_3426.y)) + vec2<f32>(x_3429.x, x_3429.y));
            let x_3432 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3431.x, x_3431.y, x_3432.z, x_3432.w);
            let x_3435 : vec4<f32> = u_xlat12;
            let x_3437 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3435.x, x_3435.x, x_3435.x, x_3435.x) * x_3437);
            let x_3440 : vec4<f32> = u_xlat12;
            let x_3442 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3440.y, x_3440.y, x_3440.y, x_3440.y) * x_3442);
            let x_3445 : vec4<f32> = u_xlat12;
            let x_3447 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3445.z, x_3445.z, x_3445.z, x_3445.z) * x_3447);
            let x_3449 : vec4<f32> = u_xlat12;
            let x_3451 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3449.w, x_3449.w, x_3449.w, x_3449.w) * x_3451);
            let x_3454 : vec4<f32> = u_xlat17;
            let x_3455 : vec2<f32> = vec2<f32>(x_3454.x, x_3454.y);
            let x_3457 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
            let x_3464 : vec3<f32> = txVec43;
            let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
            u_xlat84 = x_3466;
            let x_3468 : vec4<f32> = u_xlat17;
            let x_3469 : vec2<f32> = vec2<f32>(x_3468.z, x_3468.w);
            let x_3471 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3469.x, x_3469.y, x_3471);
            let x_3478 : vec3<f32> = txVec44;
            let x_3480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3478.xy, x_3478.z);
            u_xlat85 = x_3480;
            let x_3481 : f32 = u_xlat85;
            let x_3483 : f32 = u_xlat22.y;
            u_xlat85 = (x_3481 * x_3483);
            let x_3486 : f32 = u_xlat22.x;
            let x_3487 : f32 = u_xlat84;
            let x_3489 : f32 = u_xlat85;
            u_xlat84 = ((x_3486 * x_3487) + x_3489);
            let x_3492 : vec2<f32> = u_xlat61;
            let x_3494 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3492.x, x_3492.y, x_3494);
            let x_3501 : vec3<f32> = txVec45;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat85 = x_3503;
            let x_3505 : f32 = u_xlat22.z;
            let x_3506 : f32 = u_xlat85;
            let x_3508 : f32 = u_xlat84;
            u_xlat84 = ((x_3505 * x_3506) + x_3508);
            let x_3511 : vec4<f32> = u_xlat20;
            let x_3512 : vec2<f32> = vec2<f32>(x_3511.x, x_3511.y);
            let x_3514 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3512.x, x_3512.y, x_3514);
            let x_3521 : vec3<f32> = txVec46;
            let x_3523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3521.xy, x_3521.z);
            u_xlat85 = x_3523;
            let x_3525 : f32 = u_xlat22.w;
            let x_3526 : f32 = u_xlat85;
            let x_3528 : f32 = u_xlat84;
            u_xlat84 = ((x_3525 * x_3526) + x_3528);
            let x_3531 : vec4<f32> = u_xlat18;
            let x_3532 : vec2<f32> = vec2<f32>(x_3531.x, x_3531.y);
            let x_3534 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3532.x, x_3532.y, x_3534);
            let x_3541 : vec3<f32> = txVec47;
            let x_3543 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3541.xy, x_3541.z);
            u_xlat85 = x_3543;
            let x_3545 : f32 = u_xlat23.x;
            let x_3546 : f32 = u_xlat85;
            let x_3548 : f32 = u_xlat84;
            u_xlat84 = ((x_3545 * x_3546) + x_3548);
            let x_3551 : vec4<f32> = u_xlat18;
            let x_3552 : vec2<f32> = vec2<f32>(x_3551.z, x_3551.w);
            let x_3554 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3552.x, x_3552.y, x_3554);
            let x_3561 : vec3<f32> = txVec48;
            let x_3563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3561.xy, x_3561.z);
            u_xlat85 = x_3563;
            let x_3565 : f32 = u_xlat23.y;
            let x_3566 : f32 = u_xlat85;
            let x_3568 : f32 = u_xlat84;
            u_xlat84 = ((x_3565 * x_3566) + x_3568);
            let x_3571 : vec4<f32> = u_xlat19;
            let x_3572 : vec2<f32> = vec2<f32>(x_3571.x, x_3571.y);
            let x_3574 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3572.x, x_3572.y, x_3574);
            let x_3581 : vec3<f32> = txVec49;
            let x_3583 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3581.xy, x_3581.z);
            u_xlat85 = x_3583;
            let x_3585 : f32 = u_xlat23.z;
            let x_3586 : f32 = u_xlat85;
            let x_3588 : f32 = u_xlat84;
            u_xlat84 = ((x_3585 * x_3586) + x_3588);
            let x_3591 : vec4<f32> = u_xlat20;
            let x_3592 : vec2<f32> = vec2<f32>(x_3591.z, x_3591.w);
            let x_3594 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
            let x_3601 : vec3<f32> = txVec50;
            let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
            u_xlat85 = x_3603;
            let x_3605 : f32 = u_xlat23.w;
            let x_3606 : f32 = u_xlat85;
            let x_3608 : f32 = u_xlat84;
            u_xlat84 = ((x_3605 * x_3606) + x_3608);
            let x_3611 : vec4<f32> = u_xlat21;
            let x_3612 : vec2<f32> = vec2<f32>(x_3611.x, x_3611.y);
            let x_3614 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3612.x, x_3612.y, x_3614);
            let x_3621 : vec3<f32> = txVec51;
            let x_3623 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3621.xy, x_3621.z);
            u_xlat85 = x_3623;
            let x_3625 : f32 = u_xlat24.x;
            let x_3626 : f32 = u_xlat85;
            let x_3628 : f32 = u_xlat84;
            u_xlat84 = ((x_3625 * x_3626) + x_3628);
            let x_3631 : vec4<f32> = u_xlat21;
            let x_3632 : vec2<f32> = vec2<f32>(x_3631.z, x_3631.w);
            let x_3634 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3632.x, x_3632.y, x_3634);
            let x_3641 : vec3<f32> = txVec52;
            let x_3643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3641.xy, x_3641.z);
            u_xlat85 = x_3643;
            let x_3645 : f32 = u_xlat24.y;
            let x_3646 : f32 = u_xlat85;
            let x_3648 : f32 = u_xlat84;
            u_xlat84 = ((x_3645 * x_3646) + x_3648);
            let x_3651 : vec2<f32> = u_xlat38;
            let x_3653 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec53;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat85 = x_3662;
            let x_3664 : f32 = u_xlat24.z;
            let x_3665 : f32 = u_xlat85;
            let x_3667 : f32 = u_xlat84;
            u_xlat84 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec2<f32> = u_xlat69;
            let x_3672 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3670.x, x_3670.y, x_3672);
            let x_3679 : vec3<f32> = txVec54;
            let x_3681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3679.xy, x_3679.z);
            u_xlat85 = x_3681;
            let x_3683 : f32 = u_xlat24.w;
            let x_3684 : f32 = u_xlat85;
            let x_3686 : f32 = u_xlat84;
            u_xlat84 = ((x_3683 * x_3684) + x_3686);
            let x_3689 : vec4<f32> = u_xlat16;
            let x_3690 : vec2<f32> = vec2<f32>(x_3689.x, x_3689.y);
            let x_3692 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3690.x, x_3690.y, x_3692);
            let x_3699 : vec3<f32> = txVec55;
            let x_3701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3699.xy, x_3699.z);
            u_xlat85 = x_3701;
            let x_3703 : f32 = u_xlat12.x;
            let x_3704 : f32 = u_xlat85;
            let x_3706 : f32 = u_xlat84;
            u_xlat84 = ((x_3703 * x_3704) + x_3706);
            let x_3709 : vec4<f32> = u_xlat16;
            let x_3710 : vec2<f32> = vec2<f32>(x_3709.z, x_3709.w);
            let x_3712 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3710.x, x_3710.y, x_3712);
            let x_3719 : vec3<f32> = txVec56;
            let x_3721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3719.xy, x_3719.z);
            u_xlat85 = x_3721;
            let x_3723 : f32 = u_xlat12.y;
            let x_3724 : f32 = u_xlat85;
            let x_3726 : f32 = u_xlat84;
            u_xlat84 = ((x_3723 * x_3724) + x_3726);
            let x_3729 : vec2<f32> = u_xlat64;
            let x_3731 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3729.x, x_3729.y, x_3731);
            let x_3738 : vec3<f32> = txVec57;
            let x_3740 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3738.xy, x_3738.z);
            u_xlat85 = x_3740;
            let x_3742 : f32 = u_xlat12.z;
            let x_3743 : f32 = u_xlat85;
            let x_3745 : f32 = u_xlat84;
            u_xlat84 = ((x_3742 * x_3743) + x_3745);
            let x_3748 : vec4<f32> = u_xlat11;
            let x_3749 : vec2<f32> = vec2<f32>(x_3748.x, x_3748.y);
            let x_3751 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3749.x, x_3749.y, x_3751);
            let x_3758 : vec3<f32> = txVec58;
            let x_3760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3758.xy, x_3758.z);
            u_xlat85 = x_3760;
            let x_3762 : f32 = u_xlat12.w;
            let x_3763 : f32 = u_xlat85;
            let x_3765 : f32 = u_xlat84;
            u_xlat83 = ((x_3762 * x_3763) + x_3765);
          }
        }
      } else {
        let x_3769 : vec4<f32> = u_xlat10;
        let x_3770 : vec2<f32> = vec2<f32>(x_3769.x, x_3769.y);
        let x_3772 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3770.x, x_3770.y, x_3772);
        let x_3779 : vec3<f32> = txVec59;
        let x_3781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3779.xy, x_3779.z);
        u_xlat83 = x_3781;
      }
      let x_3782 : i32 = u_xlati80;
      let x_3784 : f32 = x_721.x_AdditionalShadowParams[x_3782].x;
      u_xlat84 = (1.0f + -(x_3784));
      let x_3787 : f32 = u_xlat83;
      let x_3788 : i32 = u_xlati80;
      let x_3790 : f32 = x_721.x_AdditionalShadowParams[x_3788].x;
      let x_3792 : f32 = u_xlat84;
      u_xlat83 = ((x_3787 * x_3790) + x_3792);
      let x_3795 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3795);
      let x_3798 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3798 >= 1.0f);
      let x_3801 : bool = u_xlatb84;
      let x_3803 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3801 | x_3803);
      let x_3805 : bool = u_xlatb84;
      let x_3806 : f32 = u_xlat83;
      u_xlat83 = select(x_3806, 1.0f, x_3805);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3809 : f32 = u_xlat83;
    u_xlat84 = (-(x_3809) + 1.0f);
    let x_3812 : f32 = u_xlat77;
    let x_3813 : f32 = u_xlat84;
    let x_3815 : f32 = u_xlat83;
    u_xlat83 = ((x_3812 * x_3813) + x_3815);
    let x_3817 : f32 = u_xlat81;
    let x_3818 : f32 = u_xlat83;
    u_xlat81 = (x_3817 * x_3818);
    let x_3820 : vec4<f32> = u_xlat1;
    let x_3822 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3820.x, x_3820.y, x_3820.z), vec3<f32>(x_3822.x, x_3822.y, x_3822.z));
    let x_3825 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3825, 0.0f, 1.0f);
    let x_3827 : f32 = u_xlat81;
    let x_3828 : f32 = u_xlat83;
    u_xlat81 = (x_3827 * x_3828);
    let x_3830 : f32 = u_xlat81;
    let x_3832 : i32 = u_xlati80;
    let x_3834 : vec4<f32> = x_2379.x_AdditionalLightsColor[x_3832];
    let x_3836 : vec3<f32> = (vec3<f32>(x_3830, x_3830, x_3830) * vec3<f32>(x_3834.x, x_3834.y, x_3834.z));
    let x_3837 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3836.x, x_3836.y, x_3836.z, x_3837.w);
    let x_3839 : vec4<f32> = u_xlat8;
    let x_3841 : f32 = u_xlat82;
    let x_3844 : vec3<f32> = u_xlat2;
    let x_3845 : vec3<f32> = ((vec3<f32>(x_3839.x, x_3839.y, x_3839.z) * vec3<f32>(x_3841, x_3841, x_3841)) + x_3844);
    let x_3846 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3845.x, x_3845.y, x_3845.z, x_3846.w);
    let x_3848 : vec4<f32> = u_xlat8;
    let x_3850 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3848.x, x_3848.y, x_3848.z), vec3<f32>(x_3850.x, x_3850.y, x_3850.z));
    let x_3853 : f32 = u_xlat80;
    u_xlat80 = max(x_3853, 1.17549435e-38f);
    let x_3855 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3855);
    let x_3857 : f32 = u_xlat80;
    let x_3859 : vec4<f32> = u_xlat8;
    let x_3861 : vec3<f32> = (vec3<f32>(x_3857, x_3857, x_3857) * vec3<f32>(x_3859.x, x_3859.y, x_3859.z));
    let x_3862 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3861.x, x_3861.y, x_3861.z, x_3862.w);
    let x_3864 : vec4<f32> = u_xlat1;
    let x_3866 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3864.x, x_3864.y, x_3864.z), vec3<f32>(x_3866.x, x_3866.y, x_3866.z));
    let x_3869 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3869, 0.0f, 1.0f);
    let x_3871 : vec4<f32> = u_xlat9;
    let x_3873 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3871.x, x_3871.y, x_3871.z), vec3<f32>(x_3873.x, x_3873.y, x_3873.z));
    let x_3876 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3876, 0.0f, 1.0f);
    let x_3878 : f32 = u_xlat80;
    let x_3879 : f32 = u_xlat80;
    u_xlat80 = (x_3878 * x_3879);
    let x_3881 : f32 = u_xlat80;
    let x_3883 : f32 = u_xlat0.x;
    u_xlat80 = ((x_3881 * x_3883) + 1.00001001358032226562f);
    let x_3886 : f32 = u_xlat81;
    let x_3887 : f32 = u_xlat81;
    u_xlat81 = (x_3886 * x_3887);
    let x_3889 : f32 = u_xlat80;
    let x_3890 : f32 = u_xlat80;
    u_xlat80 = (x_3889 * x_3890);
    let x_3892 : f32 = u_xlat81;
    u_xlat81 = max(x_3892, 0.10000000149011611938f);
    let x_3894 : f32 = u_xlat80;
    let x_3895 : f32 = u_xlat81;
    u_xlat80 = (x_3894 * x_3895);
    let x_3897 : f32 = u_xlat78;
    let x_3898 : f32 = u_xlat80;
    u_xlat80 = (x_3897 * x_3898);
    let x_3900 : f32 = u_xlat76;
    let x_3901 : f32 = u_xlat80;
    u_xlat80 = (x_3900 / x_3901);
    let x_3903 : vec4<f32> = u_xlat5;
    let x_3905 : f32 = u_xlat80;
    let x_3908 : vec4<f32> = u_xlat4;
    let x_3910 : vec3<f32> = ((vec3<f32>(x_3903.x, x_3903.y, x_3903.z) * vec3<f32>(x_3905, x_3905, x_3905)) + vec3<f32>(x_3908.x, x_3908.y, x_3908.z));
    let x_3911 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3910.x, x_3910.y, x_3910.z, x_3911.w);
    let x_3913 : vec4<f32> = u_xlat8;
    let x_3915 : vec4<f32> = u_xlat10;
    let x_3918 : vec4<f32> = u_xlat7;
    let x_3920 : vec3<f32> = ((vec3<f32>(x_3913.x, x_3913.y, x_3913.z) * vec3<f32>(x_3915.x, x_3915.y, x_3915.z)) + vec3<f32>(x_3918.x, x_3918.y, x_3918.z));
    let x_3921 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3920.x, x_3920.y, x_3920.z, x_3921.w);

    continuing {
      let x_3923 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3923 + bitcast<u32>(1i));
    }
  }
  let x_3925 : vec4<f32> = u_xlat3;
  let x_3927 : f32 = u_xlat25;
  let x_3930 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_3925.x, x_3925.y, x_3925.z) * vec3<f32>(x_3927, x_3927, x_3927)) + vec3<f32>(x_3930.x, x_3930.y, x_3930.z));
  let x_3933 : vec4<f32> = u_xlat7;
  let x_3935 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3933.x, x_3933.y, x_3933.z) + x_3935);
  let x_3939 : f32 = u_xlat75;
  let x_3941 : vec3<f32> = u_xlat0;
  let x_3942 : vec3<f32> = (vec3<f32>(x_3939, x_3939, x_3939) * x_3941);
  let x_3943 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3942.x, x_3942.y, x_3942.z, x_3943.w);
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


