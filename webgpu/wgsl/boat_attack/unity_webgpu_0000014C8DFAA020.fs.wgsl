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

@group(1) @binding(4) var<uniform> x_606 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

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

@group(1) @binding(2) var<uniform> x_2259 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2531 : AdditionalLights;

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

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

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
  var x_2146 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2667 : f32;
  var x_2677 : f32;
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
  let x_598 : vec3<f32> = vs_TEXCOORD7;
  let x_608 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres0;
  let x_611 : vec3<f32> = (x_598 + -(vec3<f32>(x_608.x, x_608.y, x_608.z)));
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres1;
  let x_619 : vec3<f32> = (x_614 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_625 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres2;
  let x_628 : vec3<f32> = (x_622 + -(vec3<f32>(x_625.x, x_625.y, x_625.z)));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_606.x_CascadeShadowSplitSpheres3;
  let x_636 : vec3<f32> = (x_631 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_657 : vec4<f32> = u_xlat7;
  let x_659 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_657.x, x_657.y, x_657.z), vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec4<f32> = x_606.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_665 < x_667);
  let x_670 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_686);
  let x_691 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_691);
  let x_695 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_695);
  let x_698 : vec4<f32> = u_xlat3;
  let x_700 : vec4<f32> = u_xlat4;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(x_700.y, x_700.z, x_700.w));
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat3;
  let x_708 : vec3<f32> = max(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_709.x, x_708.x, x_708.y, x_708.z);
  let x_711 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_711, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_716 : f32 = u_xlat76;
  u_xlat76 = (-(x_716) + 4.0f);
  let x_721 : f32 = u_xlat76;
  u_xlatu76 = u32(x_721);
  let x_725 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_725) << bitcast<u32>(2i));
  let x_728 : vec3<f32> = vs_TEXCOORD7;
  let x_730 : i32 = u_xlati76;
  let x_733 : i32 = u_xlati76;
  let x_737 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_730 + 1i) / 4i)][((x_733 + 1i) % 4i)];
  let x_739 : vec3<f32> = (vec3<f32>(x_728.y, x_728.y, x_728.y) * vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : i32 = u_xlati76;
  let x_744 : i32 = u_xlati76;
  let x_747 : vec4<f32> = x_606.x_MainLightWorldToShadow[(x_742 / 4i)][(x_744 % 4i)];
  let x_749 : vec3<f32> = vs_TEXCOORD7;
  let x_752 : vec4<f32> = u_xlat3;
  let x_754 : vec3<f32> = ((vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749.x, x_749.x, x_749.x)) + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : i32 = u_xlati76;
  let x_760 : i32 = u_xlati76;
  let x_764 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_757 + 2i) / 4i)][((x_760 + 2i) % 4i)];
  let x_766 : vec3<f32> = vs_TEXCOORD7;
  let x_769 : vec4<f32> = u_xlat3;
  let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_766.z, x_766.z, x_766.z)) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat3;
  let x_776 : i32 = u_xlati76;
  let x_779 : i32 = u_xlati76;
  let x_783 : vec4<f32> = x_606.x_MainLightWorldToShadow[((x_776 + 3i) / 4i)][((x_779 + 3i) % 4i)];
  let x_785 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_793 : vec4<f32> = vs_TEXCOORD0;
  let x_796 : f32 = x_111.x_GlobalMipBias.x;
  let x_797 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_793.z, x_793.w), x_796);
  u_xlat4 = x_797;
  let x_802 : vec4<f32> = vs_TEXCOORD0;
  let x_805 : f32 = x_111.x_GlobalMipBias.x;
  let x_806 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_802.z, x_802.w), x_805);
  let x_807 : vec3<f32> = vec3<f32>(x_806.x, x_806.y, x_806.z);
  let x_808 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat4;
  let x_814 : vec3<f32> = (vec3<f32>(x_810.x, x_810.y, x_810.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat76;
  u_xlat76 = (x_822 + 0.5f);
  let x_824 : f32 = u_xlat76;
  let x_826 : vec4<f32> = u_xlat6;
  let x_828 : vec3<f32> = (vec3<f32>(x_824, x_824, x_824) * vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_832 : f32 = u_xlat4.w;
  u_xlat76 = max(x_832, 0.00009999999747378752f);
  let x_835 : vec4<f32> = u_xlat4;
  let x_837 : f32 = u_xlat76;
  let x_839 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) / vec3<f32>(x_837, x_837, x_837));
  let x_840 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_843 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_843) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_849 : f32 = u_xlat50;
  let x_850 : f32 = u_xlat76;
  u_xlat77 = (x_849 + -(x_850));
  let x_853 : f32 = u_xlat76;
  let x_855 : vec4<f32> = u_xlat5;
  let x_857 : vec3<f32> = (vec3<f32>(x_853, x_853, x_853) * vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat5;
  let x_864 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_865 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec3<f32> = u_xlat0;
  let x_869 : vec4<f32> = u_xlat5;
  let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.x, x_867.x) * vec3<f32>(x_869.x, x_869.y, x_869.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : f32 = u_xlat50;
  u_xlat0.x = (-(x_877) + 1.0f);
  let x_882 : f32 = u_xlat0.x;
  let x_884 : f32 = u_xlat0.x;
  u_xlat50 = (x_882 * x_884);
  let x_886 : f32 = u_xlat50;
  u_xlat50 = max(x_886, 0.0078125f);
  let x_889 : f32 = u_xlat50;
  let x_890 : f32 = u_xlat50;
  u_xlat76 = (x_889 * x_890);
  let x_892 : f32 = u_xlat77;
  u_xlat77 = (x_892 + 1.0f);
  let x_894 : f32 = u_xlat77;
  u_xlat77 = clamp(x_894, 0.0f, 1.0f);
  let x_897 : f32 = u_xlat50;
  u_xlat78 = ((x_897 * 4.0f) + 2.0f);
  let x_900 : f32 = u_xlat25;
  u_xlat25 = min(x_900, 1.0f);
  let x_904 : f32 = x_606.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_904);
  let x_906 : bool = u_xlatb79;
  if (x_906) {
    let x_910 : f32 = x_606.x_MainLightShadowParams.y;
    u_xlatb79 = (x_910 == 1.0f);
    let x_912 : bool = u_xlatb79;
    if (x_912) {
      let x_915 : vec4<f32> = u_xlat3;
      let x_918 : vec4<f32> = x_606.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_915.x, x_915.y, x_915.x, x_915.y) + x_918);
      let x_922 : vec4<f32> = u_xlat7;
      let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
      let x_925 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_923.x, x_923.y, x_925);
      let x_937 : vec3<f32> = txVec0;
      let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
      u_xlat8.x = x_939;
      let x_942 : vec4<f32> = u_xlat7;
      let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
      let x_945 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_943.x, x_943.y, x_945);
      let x_952 : vec3<f32> = txVec1;
      let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
      u_xlat8.y = x_954;
      let x_956 : vec4<f32> = u_xlat3;
      let x_959 : vec4<f32> = x_606.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y) + x_959);
      let x_962 : vec4<f32> = u_xlat7;
      let x_963 : vec2<f32> = vec2<f32>(x_962.x, x_962.y);
      let x_965 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_963.x, x_963.y, x_965);
      let x_972 : vec3<f32> = txVec2;
      let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_972.xy, x_972.z);
      u_xlat8.z = x_974;
      let x_977 : vec4<f32> = u_xlat7;
      let x_978 : vec2<f32> = vec2<f32>(x_977.z, x_977.w);
      let x_980 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_978.x, x_978.y, x_980);
      let x_987 : vec3<f32> = txVec3;
      let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_987.xy, x_987.z);
      u_xlat8.w = x_989;
      let x_992 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_992, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_999 : f32 = x_606.x_MainLightShadowParams.y;
      u_xlatb80 = (x_999 == 2.0f);
      let x_1001 : bool = u_xlatb80;
      if (x_1001) {
        let x_1004 : vec4<f32> = u_xlat3;
        let x_1007 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.z, x_1007.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1015 : vec2<f32> = floor(vec2<f32>(x_1013.x, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1020 : vec4<f32> = u_xlat3;
        let x_1023 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1026 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1020.x, x_1020.y) * vec2<f32>(x_1023.z, x_1023.w)) + -(vec2<f32>(x_1026.x, x_1026.y)));
        let x_1030 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1030.x, x_1030.x, x_1030.y, x_1030.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1034.x, x_1034.x, x_1034.z, x_1034.z) * vec4<f32>(x_1036.x, x_1036.x, x_1036.z, x_1036.z));
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1043 : vec2<f32> = (vec2<f32>(x_1039.y, x_1039.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat9;
        let x_1049 : vec2<f32> = u_xlat57;
        let x_1051 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1049));
        let x_1052 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1055 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1055) + vec2<f32>(1.0f, 1.0f));
        let x_1059 : vec2<f32> = u_xlat57;
        let x_1061 : vec2<f32> = min(x_1059, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat10;
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1070 : vec2<f32> = u_xlat59;
        let x_1071 : vec2<f32> = ((-(vec2<f32>(x_1064.x, x_1064.y)) * vec2<f32>(x_1067.x, x_1067.y)) + x_1070);
        let x_1072 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1074, vec2<f32>(0.0f, 0.0f));
        let x_1076 : vec2<f32> = u_xlat57;
        let x_1078 : vec2<f32> = u_xlat57;
        let x_1080 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_1076) * x_1078) + vec2<f32>(x_1080.y, x_1080.w));
        let x_1083 : vec4<f32> = u_xlat10;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) + vec2<f32>(1.0f, 1.0f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1088 + vec2<f32>(1.0f, 1.0f));
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1094 : vec2<f32> = (vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1095 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec2<f32> = u_xlat59;
        let x_1098 : vec2<f32> = (x_1097 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1099 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1103 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1103.x, x_1103.y, x_1104.z, x_1104.w);
        let x_1106 : vec2<f32> = u_xlat57;
        let x_1107 : vec2<f32> = (x_1106 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1108 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1110.y, x_1110.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1114 : f32 = u_xlat10.x;
        u_xlat11.z = x_1114;
        let x_1117 : f32 = u_xlat57.x;
        u_xlat11.w = x_1117;
        let x_1120 : f32 = u_xlat12.x;
        u_xlat9.z = x_1120;
        let x_1123 : f32 = u_xlat8.x;
        u_xlat9.w = x_1123;
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1125.z, x_1125.w, x_1125.x, x_1125.z) + vec4<f32>(x_1127.z, x_1127.w, x_1127.x, x_1127.z));
        let x_1131 : f32 = u_xlat11.y;
        u_xlat10.z = x_1131;
        let x_1134 : f32 = u_xlat57.y;
        u_xlat10.w = x_1134;
        let x_1137 : f32 = u_xlat9.y;
        u_xlat12.z = x_1137;
        let x_1140 : f32 = u_xlat8.z;
        u_xlat12.w = x_1140;
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1144 : vec4<f32> = u_xlat12;
        let x_1146 : vec3<f32> = (vec3<f32>(x_1142.z, x_1142.y, x_1142.w) + vec3<f32>(x_1144.z, x_1144.y, x_1144.w));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
        let x_1149 : vec4<f32> = u_xlat9;
        let x_1151 : vec4<f32> = u_xlat13;
        let x_1153 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.z, x_1149.w) / vec3<f32>(x_1151.z, x_1151.w, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat9;
        let x_1161 : vec3<f32> = (vec3<f32>(x_1156.x, x_1156.y, x_1156.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
        let x_1164 : vec4<f32> = u_xlat12;
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1168 : vec3<f32> = (vec3<f32>(x_1164.z, x_1164.y, x_1164.w) / vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
        let x_1169 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1173 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.y, x_1171.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1179 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1181 : vec3<f32> = (vec3<f32>(x_1176.y, x_1176.x, x_1176.z) * vec3<f32>(x_1179.x, x_1179.x, x_1179.x));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat10;
        let x_1187 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1189 : vec3<f32> = (vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1187.y, x_1187.y, x_1187.y));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
        let x_1193 : f32 = u_xlat10.x;
        u_xlat9.w = x_1193;
        let x_1195 : vec4<f32> = u_xlat7;
        let x_1198 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.y, x_1201.w, x_1201.x, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1207 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.z, x_1210.w));
        let x_1214 : f32 = u_xlat9.y;
        u_xlat10.w = x_1214;
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.y, x_1216.z);
        let x_1218 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1223 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.y) * vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y)) + vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1232 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.w, x_1235.y, x_1235.w, x_1235.z));
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1241 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) * vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y)) + vec4<f32>(x_1244.x, x_1244.w, x_1244.z, x_1244.w));
        let x_1248 : vec4<f32> = u_xlat8;
        let x_1250 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1248.x, x_1248.x, x_1248.x, x_1248.y) * vec4<f32>(x_1250.z, x_1250.w, x_1250.y, x_1250.z));
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1256 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1254.y, x_1254.y, x_1254.z, x_1254.z) * x_1256);
        let x_1260 : f32 = u_xlat8.z;
        let x_1262 : f32 = u_xlat13.y;
        u_xlat80 = (x_1260 * x_1262);
        let x_1265 : vec4<f32> = u_xlat11;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.x, x_1265.y);
        let x_1268 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1276 : vec3<f32> = txVec4;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1276.xy, x_1276.z);
        u_xlat81 = x_1278;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec5;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat7.x = x_1292;
        let x_1295 : f32 = u_xlat7.x;
        let x_1297 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1295 * x_1297);
        let x_1301 : f32 = u_xlat14.x;
        let x_1302 : f32 = u_xlat81;
        let x_1305 : f32 = u_xlat7.x;
        u_xlat81 = ((x_1301 * x_1302) + x_1305);
        let x_1308 : vec2<f32> = u_xlat57;
        let x_1310 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec6;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat7.x = x_1319;
        let x_1322 : f32 = u_xlat14.z;
        let x_1324 : f32 = u_xlat7.x;
        let x_1326 : f32 = u_xlat81;
        u_xlat81 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat10;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec7;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat7.x = x_1341;
        let x_1344 : f32 = u_xlat14.w;
        let x_1346 : f32 = u_xlat7.x;
        let x_1348 : f32 = u_xlat81;
        u_xlat81 = ((x_1344 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat12;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.x, x_1351.y);
        let x_1354 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec8;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat7.x = x_1363;
        let x_1366 : f32 = u_xlat15.x;
        let x_1368 : f32 = u_xlat7.x;
        let x_1370 : f32 = u_xlat81;
        u_xlat81 = ((x_1366 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat12;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec9;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat7.x = x_1385;
        let x_1388 : f32 = u_xlat15.y;
        let x_1390 : f32 = u_xlat7.x;
        let x_1392 : f32 = u_xlat81;
        u_xlat81 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat10;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec10;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat7.x = x_1407;
        let x_1410 : f32 = u_xlat15.z;
        let x_1412 : f32 = u_xlat7.x;
        let x_1414 : f32 = u_xlat81;
        u_xlat81 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat9;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec11;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat7.x = x_1429;
        let x_1432 : f32 = u_xlat15.w;
        let x_1434 : f32 = u_xlat7.x;
        let x_1436 : f32 = u_xlat81;
        u_xlat81 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat9;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec12;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat7.x = x_1451;
        let x_1453 : f32 = u_xlat80;
        let x_1455 : f32 = u_xlat7.x;
        let x_1457 : f32 = u_xlat81;
        u_xlat79 = ((x_1453 * x_1455) + x_1457);
      } else {
        let x_1460 : vec4<f32> = u_xlat3;
        let x_1463 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1466 : vec2<f32> = ((vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(x_1463.z, x_1463.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1467 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1466.x, x_1466.y, x_1467.z, x_1467.w);
        let x_1469 : vec4<f32> = u_xlat7;
        let x_1471 : vec2<f32> = floor(vec2<f32>(x_1469.x, x_1469.y));
        let x_1472 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1471.x, x_1471.y, x_1472.z, x_1472.w);
        let x_1474 : vec4<f32> = u_xlat3;
        let x_1477 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1474.x, x_1474.y) * vec2<f32>(x_1477.z, x_1477.w)) + -(vec2<f32>(x_1480.x, x_1480.y)));
        let x_1484 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1484.x, x_1484.x, x_1484.y, x_1484.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1487 : vec4<f32> = u_xlat8;
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1487.x, x_1487.x, x_1487.z, x_1487.z) * vec4<f32>(x_1489.x, x_1489.x, x_1489.z, x_1489.z));
        let x_1492 : vec4<f32> = u_xlat9;
        let x_1496 : vec2<f32> = (vec2<f32>(x_1492.y, x_1492.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1497.x, x_1496.x, x_1497.z, x_1496.y);
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1502 : vec2<f32> = u_xlat57;
        let x_1504 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1502));
        let x_1505 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1504.x, x_1505.y, x_1504.y, x_1505.w);
        let x_1507 : vec2<f32> = u_xlat57;
        let x_1509 : vec2<f32> = (-(x_1507) + vec2<f32>(1.0f, 1.0f));
        let x_1510 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1509.x, x_1509.y, x_1510.z, x_1510.w);
        let x_1512 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1512, vec2<f32>(0.0f, 0.0f));
        let x_1514 : vec2<f32> = u_xlat59;
        let x_1516 : vec2<f32> = u_xlat59;
        let x_1518 : vec4<f32> = u_xlat9;
        let x_1520 : vec2<f32> = ((-(x_1514) * x_1516) + vec2<f32>(x_1518.x, x_1518.y));
        let x_1521 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
        let x_1523 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1523, vec2<f32>(0.0f, 0.0f));
        let x_1526 : vec2<f32> = u_xlat59;
        let x_1528 : vec2<f32> = u_xlat59;
        let x_1530 : vec4<f32> = u_xlat8;
        let x_1532 : vec2<f32> = ((-(x_1526) * x_1528) + vec2<f32>(x_1530.y, x_1530.w));
        let x_1533 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1532.x, x_1533.y, x_1532.y);
        let x_1535 : vec4<f32> = u_xlat9;
        let x_1538 : vec2<f32> = (vec2<f32>(x_1535.x, x_1535.y) + vec2<f32>(2.0f, 2.0f));
        let x_1539 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1538.x, x_1538.y, x_1539.z, x_1539.w);
        let x_1541 : vec3<f32> = u_xlat33;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1541.x, x_1541.z) + vec2<f32>(2.0f, 2.0f));
        let x_1544 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1547 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1547 * 0.08163200318813323975f);
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1554 : vec3<f32> = (vec3<f32>(x_1551.z, x_1551.x, x_1551.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1555 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1555.w);
        let x_1557 : vec4<f32> = u_xlat9;
        let x_1560 : vec2<f32> = (vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1561 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1560.x, x_1560.y, x_1561.z, x_1561.w);
        let x_1564 : f32 = u_xlat12.y;
        u_xlat11.x = x_1564;
        let x_1566 : vec2<f32> = u_xlat57;
        let x_1573 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1574 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1574.x, x_1573.x, x_1574.z, x_1573.y);
        let x_1576 : vec2<f32> = u_xlat57;
        let x_1580 : vec2<f32> = ((vec2<f32>(x_1576.x, x_1576.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1580.x, x_1581.y, x_1580.y, x_1581.w);
        let x_1584 : f32 = u_xlat8.x;
        u_xlat9.y = x_1584;
        let x_1587 : f32 = u_xlat10.y;
        u_xlat9.w = x_1587;
        let x_1589 : vec4<f32> = u_xlat9;
        let x_1590 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1589 + x_1590);
        let x_1592 : vec2<f32> = u_xlat57;
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1592.y, x_1592.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1596.x, x_1595.x, x_1596.z, x_1595.y);
        let x_1598 : vec2<f32> = u_xlat57;
        let x_1601 : vec2<f32> = ((vec2<f32>(x_1598.y, x_1598.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1602 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1601.x, x_1602.y, x_1601.y, x_1602.w);
        let x_1605 : f32 = u_xlat8.y;
        u_xlat10.y = x_1605;
        let x_1607 : vec4<f32> = u_xlat10;
        let x_1608 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1607 + x_1608);
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1611 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1610 / x_1611);
        let x_1613 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1613 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1619 : vec4<f32> = u_xlat10;
        let x_1620 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1619 / x_1620);
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1622 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1624 : vec4<f32> = u_xlat9;
        let x_1627 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1624.w, x_1624.x, x_1624.y, x_1624.z) * vec4<f32>(x_1627.x, x_1627.x, x_1627.x, x_1627.x));
        let x_1630 : vec4<f32> = u_xlat10;
        let x_1633 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1630.x, x_1630.w, x_1630.y, x_1630.z) * vec4<f32>(x_1633.y, x_1633.y, x_1633.y, x_1633.y));
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1637 : vec3<f32> = vec3<f32>(x_1636.y, x_1636.z, x_1636.w);
        let x_1638 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1637.x, x_1638.y, x_1637.y, x_1637.z);
        let x_1641 : f32 = u_xlat10.x;
        u_xlat12.y = x_1641;
        let x_1643 : vec4<f32> = u_xlat7;
        let x_1646 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1649 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1643.x, x_1643.y, x_1643.x, x_1643.y) * vec4<f32>(x_1646.x, x_1646.y, x_1646.x, x_1646.y)) + vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1649.y));
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1655 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1658 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1652.x, x_1652.y) * vec2<f32>(x_1655.x, x_1655.y)) + vec2<f32>(x_1658.w, x_1658.y));
        let x_1662 : f32 = u_xlat12.y;
        u_xlat9.y = x_1662;
        let x_1665 : f32 = u_xlat10.z;
        u_xlat12.y = x_1665;
        let x_1667 : vec4<f32> = u_xlat7;
        let x_1670 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1673 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1667.x, x_1667.y, x_1667.x, x_1667.y) * vec4<f32>(x_1670.x, x_1670.y, x_1670.x, x_1670.y)) + vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1673.y));
        let x_1676 : vec4<f32> = u_xlat7;
        let x_1679 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1682 : vec4<f32> = u_xlat12;
        let x_1684 : vec2<f32> = ((vec2<f32>(x_1676.x, x_1676.y) * vec2<f32>(x_1679.x, x_1679.y)) + vec2<f32>(x_1682.w, x_1682.y));
        let x_1685 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1684.x, x_1684.y, x_1685.z, x_1685.w);
        let x_1688 : f32 = u_xlat12.y;
        u_xlat9.z = x_1688;
        let x_1691 : vec4<f32> = u_xlat7;
        let x_1694 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1697 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1691.x, x_1691.y, x_1691.x, x_1691.y) * vec4<f32>(x_1694.x, x_1694.y, x_1694.x, x_1694.y)) + vec4<f32>(x_1697.x, x_1697.y, x_1697.x, x_1697.z));
        let x_1701 : f32 = u_xlat10.w;
        u_xlat12.y = x_1701;
        let x_1704 : vec4<f32> = u_xlat7;
        let x_1707 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1704.x, x_1704.y, x_1704.x, x_1704.y) * vec4<f32>(x_1707.x, x_1707.y, x_1707.x, x_1707.y)) + vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1710.y));
        let x_1714 : vec4<f32> = u_xlat7;
        let x_1717 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1717.x, x_1717.y)) + vec2<f32>(x_1720.w, x_1720.y));
        let x_1724 : f32 = u_xlat12.y;
        u_xlat9.w = x_1724;
        let x_1727 : vec4<f32> = u_xlat7;
        let x_1730 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1733 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1727.x, x_1727.y) * vec2<f32>(x_1730.x, x_1730.y)) + vec2<f32>(x_1733.x, x_1733.w));
        let x_1736 : vec4<f32> = u_xlat12;
        let x_1737 : vec3<f32> = vec3<f32>(x_1736.x, x_1736.z, x_1736.w);
        let x_1738 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1737.x, x_1738.y, x_1737.y, x_1737.z);
        let x_1740 : vec4<f32> = u_xlat7;
        let x_1743 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1746 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1740.x, x_1740.y, x_1740.x, x_1740.y) * vec4<f32>(x_1743.x, x_1743.y, x_1743.x, x_1743.y)) + vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1746.y));
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1753 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1750.x, x_1750.y) * vec2<f32>(x_1753.x, x_1753.y)) + vec2<f32>(x_1756.w, x_1756.y));
        let x_1760 : f32 = u_xlat9.x;
        u_xlat10.x = x_1760;
        let x_1762 : vec4<f32> = u_xlat7;
        let x_1765 : vec4<f32> = x_606.x_MainLightShadowmapSize;
        let x_1768 : vec4<f32> = u_xlat10;
        let x_1770 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1765.x, x_1765.y)) + vec2<f32>(x_1768.x, x_1768.y));
        let x_1771 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1770.x, x_1770.y, x_1771.z, x_1771.w);
        let x_1774 : vec4<f32> = u_xlat8;
        let x_1776 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1774.x, x_1774.x, x_1774.x, x_1774.x) * x_1776);
        let x_1779 : vec4<f32> = u_xlat8;
        let x_1781 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1779.y, x_1779.y, x_1779.y, x_1779.y) * x_1781);
        let x_1784 : vec4<f32> = u_xlat8;
        let x_1786 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1784.z, x_1784.z, x_1784.z, x_1784.z) * x_1786);
        let x_1788 : vec4<f32> = u_xlat8;
        let x_1790 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1788.w, x_1788.w, x_1788.w, x_1788.w) * x_1790);
        let x_1793 : vec4<f32> = u_xlat13;
        let x_1794 : vec2<f32> = vec2<f32>(x_1793.x, x_1793.y);
        let x_1796 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
        let x_1803 : vec3<f32> = txVec13;
        let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1803.xy, x_1803.z);
        u_xlat80 = x_1805;
        let x_1807 : vec4<f32> = u_xlat13;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.z, x_1807.w);
        let x_1810 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec14;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat81 = x_1819;
        let x_1820 : f32 = u_xlat81;
        let x_1822 : f32 = u_xlat18.y;
        u_xlat81 = (x_1820 * x_1822);
        let x_1825 : f32 = u_xlat18.x;
        let x_1826 : f32 = u_xlat80;
        let x_1828 : f32 = u_xlat81;
        u_xlat80 = ((x_1825 * x_1826) + x_1828);
        let x_1831 : vec2<f32> = u_xlat57;
        let x_1833 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec15;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1840.xy, x_1840.z);
        u_xlat81 = x_1842;
        let x_1844 : f32 = u_xlat18.z;
        let x_1845 : f32 = u_xlat81;
        let x_1847 : f32 = u_xlat80;
        u_xlat80 = ((x_1844 * x_1845) + x_1847);
        let x_1850 : vec4<f32> = u_xlat16;
        let x_1851 : vec2<f32> = vec2<f32>(x_1850.x, x_1850.y);
        let x_1853 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec16;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1860.xy, x_1860.z);
        u_xlat81 = x_1862;
        let x_1864 : f32 = u_xlat18.w;
        let x_1865 : f32 = u_xlat81;
        let x_1867 : f32 = u_xlat80;
        u_xlat80 = ((x_1864 * x_1865) + x_1867);
        let x_1870 : vec4<f32> = u_xlat14;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
        let x_1873 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec17;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1880.xy, x_1880.z);
        u_xlat81 = x_1882;
        let x_1884 : f32 = u_xlat19.x;
        let x_1885 : f32 = u_xlat81;
        let x_1887 : f32 = u_xlat80;
        u_xlat80 = ((x_1884 * x_1885) + x_1887);
        let x_1890 : vec4<f32> = u_xlat14;
        let x_1891 : vec2<f32> = vec2<f32>(x_1890.z, x_1890.w);
        let x_1893 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
        let x_1900 : vec3<f32> = txVec18;
        let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1900.xy, x_1900.z);
        u_xlat81 = x_1902;
        let x_1904 : f32 = u_xlat19.y;
        let x_1905 : f32 = u_xlat81;
        let x_1907 : f32 = u_xlat80;
        u_xlat80 = ((x_1904 * x_1905) + x_1907);
        let x_1910 : vec4<f32> = u_xlat15;
        let x_1911 : vec2<f32> = vec2<f32>(x_1910.x, x_1910.y);
        let x_1913 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1920 : vec3<f32> = txVec19;
        let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1920.xy, x_1920.z);
        u_xlat81 = x_1922;
        let x_1924 : f32 = u_xlat19.z;
        let x_1925 : f32 = u_xlat81;
        let x_1927 : f32 = u_xlat80;
        u_xlat80 = ((x_1924 * x_1925) + x_1927);
        let x_1930 : vec4<f32> = u_xlat16;
        let x_1931 : vec2<f32> = vec2<f32>(x_1930.z, x_1930.w);
        let x_1933 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1931.x, x_1931.y, x_1933);
        let x_1940 : vec3<f32> = txVec20;
        let x_1942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1940.xy, x_1940.z);
        u_xlat81 = x_1942;
        let x_1944 : f32 = u_xlat19.w;
        let x_1945 : f32 = u_xlat81;
        let x_1947 : f32 = u_xlat80;
        u_xlat80 = ((x_1944 * x_1945) + x_1947);
        let x_1950 : vec4<f32> = u_xlat17;
        let x_1951 : vec2<f32> = vec2<f32>(x_1950.x, x_1950.y);
        let x_1953 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1951.x, x_1951.y, x_1953);
        let x_1960 : vec3<f32> = txVec21;
        let x_1962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1960.xy, x_1960.z);
        u_xlat81 = x_1962;
        let x_1964 : f32 = u_xlat20.x;
        let x_1965 : f32 = u_xlat81;
        let x_1967 : f32 = u_xlat80;
        u_xlat80 = ((x_1964 * x_1965) + x_1967);
        let x_1970 : vec4<f32> = u_xlat17;
        let x_1971 : vec2<f32> = vec2<f32>(x_1970.z, x_1970.w);
        let x_1973 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
        let x_1980 : vec3<f32> = txVec22;
        let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1980.xy, x_1980.z);
        u_xlat81 = x_1982;
        let x_1984 : f32 = u_xlat20.y;
        let x_1985 : f32 = u_xlat81;
        let x_1987 : f32 = u_xlat80;
        u_xlat80 = ((x_1984 * x_1985) + x_1987);
        let x_1990 : vec2<f32> = u_xlat34;
        let x_1992 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1990.x, x_1990.y, x_1992);
        let x_1999 : vec3<f32> = txVec23;
        let x_2001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1999.xy, x_1999.z);
        u_xlat81 = x_2001;
        let x_2003 : f32 = u_xlat20.z;
        let x_2004 : f32 = u_xlat81;
        let x_2006 : f32 = u_xlat80;
        u_xlat80 = ((x_2003 * x_2004) + x_2006);
        let x_2009 : vec2<f32> = u_xlat65;
        let x_2011 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2009.x, x_2009.y, x_2011);
        let x_2018 : vec3<f32> = txVec24;
        let x_2020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2018.xy, x_2018.z);
        u_xlat81 = x_2020;
        let x_2022 : f32 = u_xlat20.w;
        let x_2023 : f32 = u_xlat81;
        let x_2025 : f32 = u_xlat80;
        u_xlat80 = ((x_2022 * x_2023) + x_2025);
        let x_2028 : vec4<f32> = u_xlat12;
        let x_2029 : vec2<f32> = vec2<f32>(x_2028.x, x_2028.y);
        let x_2031 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
        let x_2038 : vec3<f32> = txVec25;
        let x_2040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2038.xy, x_2038.z);
        u_xlat81 = x_2040;
        let x_2042 : f32 = u_xlat8.x;
        let x_2043 : f32 = u_xlat81;
        let x_2045 : f32 = u_xlat80;
        u_xlat80 = ((x_2042 * x_2043) + x_2045);
        let x_2048 : vec4<f32> = u_xlat12;
        let x_2049 : vec2<f32> = vec2<f32>(x_2048.z, x_2048.w);
        let x_2051 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2049.x, x_2049.y, x_2051);
        let x_2058 : vec3<f32> = txVec26;
        let x_2060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2058.xy, x_2058.z);
        u_xlat81 = x_2060;
        let x_2062 : f32 = u_xlat8.y;
        let x_2063 : f32 = u_xlat81;
        let x_2065 : f32 = u_xlat80;
        u_xlat80 = ((x_2062 * x_2063) + x_2065);
        let x_2068 : vec2<f32> = u_xlat60;
        let x_2070 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec27;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
        u_xlat81 = x_2079;
        let x_2081 : f32 = u_xlat8.z;
        let x_2082 : f32 = u_xlat81;
        let x_2084 : f32 = u_xlat80;
        u_xlat80 = ((x_2081 * x_2082) + x_2084);
        let x_2087 : vec4<f32> = u_xlat7;
        let x_2088 : vec2<f32> = vec2<f32>(x_2087.x, x_2087.y);
        let x_2090 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
        let x_2097 : vec3<f32> = txVec28;
        let x_2099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2097.xy, x_2097.z);
        u_xlat81 = x_2099;
        let x_2101 : f32 = u_xlat8.w;
        let x_2102 : f32 = u_xlat81;
        let x_2104 : f32 = u_xlat80;
        u_xlat79 = ((x_2101 * x_2102) + x_2104);
      }
    }
  } else {
    let x_2108 : vec4<f32> = u_xlat3;
    let x_2109 : vec2<f32> = vec2<f32>(x_2108.x, x_2108.y);
    let x_2111 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2109.x, x_2109.y, x_2111);
    let x_2118 : vec3<f32> = txVec29;
    let x_2120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2118.xy, x_2118.z);
    u_xlat79 = x_2120;
  }
  let x_2122 : f32 = x_606.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2122) + 1.0f);
  let x_2126 : f32 = u_xlat79;
  let x_2128 : f32 = x_606.x_MainLightShadowParams.x;
  let x_2131 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2126 * x_2128) + x_2131);
  let x_2136 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_2136);
  let x_2140 : f32 = u_xlat3.z;
  u_xlatb53 = (x_2140 >= 1.0f);
  let x_2142 : bool = u_xlatb53;
  let x_2143 : bool = u_xlatb28;
  u_xlatb28 = (x_2142 | x_2143);
  let x_2145 : bool = u_xlatb28;
  if (x_2145) {
    x_2146 = 1.0f;
  } else {
    let x_2151 : f32 = u_xlat3.x;
    x_2146 = x_2151;
  }
  let x_2152 : f32 = x_2146;
  u_xlat3.x = x_2152;
  let x_2154 : vec3<f32> = vs_TEXCOORD7;
  let x_2156 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_2158 : vec3<f32> = (x_2154 + -(x_2156));
  let x_2159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2158.x, x_2158.y, x_2158.z, x_2159.w);
  let x_2162 : vec4<f32> = u_xlat7;
  let x_2164 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2168 : f32 = u_xlat28;
  let x_2170 : f32 = x_606.x_MainLightShadowParams.z;
  let x_2173 : f32 = x_606.x_MainLightShadowParams.w;
  u_xlat53 = ((x_2168 * x_2170) + x_2173);
  let x_2175 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2175, 0.0f, 1.0f);
  let x_2178 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_2178) + 1.0f);
  let x_2181 : f32 = u_xlat53;
  let x_2182 : f32 = u_xlat79;
  let x_2185 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2181 * x_2182) + x_2185);
  let x_2188 : vec3<f32> = u_xlat2;
  let x_2190 : vec4<f32> = u_xlat1;
  u_xlat53 = dot(-(x_2188), vec3<f32>(x_2190.x, x_2190.y, x_2190.z));
  let x_2193 : f32 = u_xlat53;
  let x_2194 : f32 = u_xlat53;
  u_xlat53 = (x_2193 + x_2194);
  let x_2196 : vec4<f32> = u_xlat1;
  let x_2198 : f32 = u_xlat53;
  let x_2202 : vec3<f32> = u_xlat2;
  let x_2204 : vec3<f32> = ((vec3<f32>(x_2196.x, x_2196.y, x_2196.z) * -(vec3<f32>(x_2198, x_2198, x_2198))) + -(x_2202));
  let x_2205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2204.x, x_2204.y, x_2204.z, x_2205.w);
  let x_2207 : vec4<f32> = u_xlat1;
  let x_2209 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_2207.x, x_2207.y, x_2207.z), x_2209);
  let x_2211 : f32 = u_xlat53;
  u_xlat53 = clamp(x_2211, 0.0f, 1.0f);
  let x_2213 : f32 = u_xlat53;
  u_xlat53 = (-(x_2213) + 1.0f);
  let x_2216 : f32 = u_xlat53;
  let x_2217 : f32 = u_xlat53;
  u_xlat53 = (x_2216 * x_2217);
  let x_2219 : f32 = u_xlat53;
  let x_2220 : f32 = u_xlat53;
  u_xlat53 = (x_2219 * x_2220);
  let x_2223 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2223) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2230 : f32 = u_xlat0.x;
  let x_2231 : f32 = u_xlat79;
  u_xlat0.x = (x_2230 * x_2231);
  let x_2235 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2235 * 6.0f);
  let x_2247 : vec4<f32> = u_xlat7;
  let x_2250 : f32 = u_xlat0.x;
  let x_2251 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2247.x, x_2247.y, x_2247.z), x_2250);
  u_xlat7 = x_2251;
  let x_2253 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2253 + -1.0f);
  let x_2261 : f32 = x_2259.unity_SpecCube0_HDR.w;
  let x_2263 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2261 * x_2263) + 1.0f);
  let x_2268 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2268, 0.0f);
  let x_2272 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2272);
  let x_2276 : f32 = u_xlat0.x;
  let x_2278 : f32 = x_2259.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2276 * x_2278);
  let x_2282 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2282);
  let x_2286 : f32 = u_xlat0.x;
  let x_2288 : f32 = x_2259.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2286 * x_2288);
  let x_2291 : vec4<f32> = u_xlat7;
  let x_2293 : vec3<f32> = u_xlat0;
  let x_2295 : vec3<f32> = (vec3<f32>(x_2291.x, x_2291.y, x_2291.z) * vec3<f32>(x_2293.x, x_2293.x, x_2293.x));
  let x_2296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
  let x_2298 : f32 = u_xlat50;
  let x_2300 : f32 = u_xlat50;
  let x_2304 : vec2<f32> = ((vec2<f32>(x_2298, x_2298) * vec2<f32>(x_2300, x_2300)) + vec2<f32>(-1.0f, 1.0f));
  let x_2305 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2304.x, x_2305.y, x_2304.y);
  let x_2308 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2308);
  let x_2310 : vec4<f32> = u_xlat5;
  let x_2313 : f32 = u_xlat77;
  let x_2315 : vec3<f32> = (-(vec3<f32>(x_2310.x, x_2310.y, x_2310.z)) + vec3<f32>(x_2313, x_2313, x_2313));
  let x_2316 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
  let x_2318 : f32 = u_xlat53;
  let x_2320 : vec4<f32> = u_xlat8;
  let x_2323 : vec4<f32> = u_xlat5;
  let x_2325 : vec3<f32> = ((vec3<f32>(x_2318, x_2318, x_2318) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z)) + vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
  let x_2326 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
  let x_2328 : f32 = u_xlat50;
  let x_2330 : vec4<f32> = u_xlat8;
  let x_2332 : vec3<f32> = (vec3<f32>(x_2328, x_2328, x_2328) * vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
  let x_2333 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
  let x_2335 : vec4<f32> = u_xlat7;
  let x_2337 : vec4<f32> = u_xlat8;
  let x_2339 : vec3<f32> = (vec3<f32>(x_2335.x, x_2335.y, x_2335.z) * vec3<f32>(x_2337.x, x_2337.y, x_2337.z));
  let x_2340 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : vec4<f32> = u_xlat4;
  let x_2344 : vec4<f32> = u_xlat6;
  let x_2347 : vec4<f32> = u_xlat7;
  let x_2349 : vec3<f32> = ((vec3<f32>(x_2342.x, x_2342.y, x_2342.z) * vec3<f32>(x_2344.x, x_2344.y, x_2344.z)) + vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
  let x_2353 : f32 = u_xlat3.x;
  let x_2355 : f32 = x_2259.unity_LightData.z;
  u_xlat50 = (x_2353 * x_2355);
  let x_2357 : vec4<f32> = u_xlat1;
  let x_2360 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2357.x, x_2357.y, x_2357.z), vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
  let x_2363 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2363, 0.0f, 1.0f);
  let x_2365 : f32 = u_xlat50;
  let x_2366 : f32 = u_xlat77;
  u_xlat50 = (x_2365 * x_2366);
  let x_2368 : f32 = u_xlat50;
  let x_2371 : vec4<f32> = x_111.x_MainLightColor;
  let x_2373 : vec3<f32> = (vec3<f32>(x_2368, x_2368, x_2368) * vec3<f32>(x_2371.x, x_2371.y, x_2371.z));
  let x_2374 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
  let x_2376 : vec3<f32> = u_xlat2;
  let x_2378 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2380 : vec3<f32> = (x_2376 + vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
  let x_2381 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
  let x_2383 : vec4<f32> = u_xlat8;
  let x_2385 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_2383.x, x_2383.y, x_2383.z), vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
  let x_2388 : f32 = u_xlat50;
  u_xlat50 = max(x_2388, 1.17549435e-38f);
  let x_2391 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2391);
  let x_2393 : f32 = u_xlat50;
  let x_2395 : vec4<f32> = u_xlat8;
  let x_2397 : vec3<f32> = (vec3<f32>(x_2393, x_2393, x_2393) * vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
  let x_2400 : vec4<f32> = u_xlat1;
  let x_2402 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_2400.x, x_2400.y, x_2400.z), vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
  let x_2405 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2405, 0.0f, 1.0f);
  let x_2408 : vec4<f32> = x_111.x_MainLightPosition;
  let x_2410 : vec4<f32> = u_xlat8;
  u_xlat77 = dot(vec3<f32>(x_2408.x, x_2408.y, x_2408.z), vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2413, 0.0f, 1.0f);
  let x_2415 : f32 = u_xlat50;
  let x_2416 : f32 = u_xlat50;
  u_xlat50 = (x_2415 * x_2416);
  let x_2418 : f32 = u_xlat50;
  let x_2420 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2418 * x_2420) + 1.00001001358032226562f);
  let x_2424 : f32 = u_xlat77;
  let x_2425 : f32 = u_xlat77;
  u_xlat77 = (x_2424 * x_2425);
  let x_2427 : f32 = u_xlat50;
  let x_2428 : f32 = u_xlat50;
  u_xlat50 = (x_2427 * x_2428);
  let x_2430 : f32 = u_xlat77;
  u_xlat77 = max(x_2430, 0.10000000149011611938f);
  let x_2433 : f32 = u_xlat50;
  let x_2434 : f32 = u_xlat77;
  u_xlat50 = (x_2433 * x_2434);
  let x_2436 : f32 = u_xlat78;
  let x_2437 : f32 = u_xlat50;
  u_xlat50 = (x_2436 * x_2437);
  let x_2439 : f32 = u_xlat76;
  let x_2440 : f32 = u_xlat50;
  u_xlat50 = (x_2439 / x_2440);
  let x_2442 : vec4<f32> = u_xlat5;
  let x_2444 : f32 = u_xlat50;
  let x_2447 : vec4<f32> = u_xlat6;
  let x_2449 : vec3<f32> = ((vec3<f32>(x_2442.x, x_2442.y, x_2442.z) * vec3<f32>(x_2444, x_2444, x_2444)) + vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
  let x_2450 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2449.x, x_2449.y, x_2449.z, x_2450.w);
  let x_2452 : vec4<f32> = u_xlat7;
  let x_2454 : vec4<f32> = u_xlat8;
  let x_2456 : vec3<f32> = (vec3<f32>(x_2452.x, x_2452.y, x_2452.z) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
  let x_2457 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
  let x_2460 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_2462 : f32 = x_2259.unity_LightData.y;
  u_xlat50 = min(x_2460, x_2462);
  let x_2465 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2465));
  let x_2468 : f32 = u_xlat28;
  let x_2470 : f32 = x_606.x_AdditionalShadowFadeParams.x;
  let x_2473 : f32 = x_606.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2468 * x_2470) + x_2473);
  let x_2475 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2475, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2487 : u32 = u_xlatu_loop_1;
    let x_2488 : u32 = u_xlatu50;
    if ((x_2487 < x_2488)) {
    } else {
      break;
    }
    let x_2491 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2491 >> 2u);
    let x_2494 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2494 & 3u));
    let x_2497 : u32 = u_xlatu80;
    let x_2500 : vec4<f32> = x_2259.unity_LightIndices[bitcast<i32>(x_2497)];
    let x_2510 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2515 : vec4<u32> = indexable[x_2510];
    u_xlat80 = dot(x_2500, bitcast<vec4<f32>>(x_2515));
    let x_2519 : f32 = u_xlat80;
    u_xlati80 = i32(x_2519);
    let x_2521 : vec3<f32> = vs_TEXCOORD7;
    let x_2532 : i32 = u_xlati80;
    let x_2534 : vec4<f32> = x_2531.x_AdditionalLightsPosition[x_2532];
    let x_2537 : i32 = u_xlati80;
    let x_2539 : vec4<f32> = x_2531.x_AdditionalLightsPosition[x_2537];
    let x_2541 : vec3<f32> = ((-(x_2521) * vec3<f32>(x_2534.w, x_2534.w, x_2534.w)) + vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
    let x_2542 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2541.x, x_2541.y, x_2541.z, x_2542.w);
    let x_2544 : vec4<f32> = u_xlat8;
    let x_2546 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2544.x, x_2544.y, x_2544.z), vec3<f32>(x_2546.x, x_2546.y, x_2546.z));
    let x_2549 : f32 = u_xlat81;
    u_xlat81 = max(x_2549, 0.00006103515625f);
    let x_2552 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2552);
    let x_2554 : f32 = u_xlat82;
    let x_2556 : vec4<f32> = u_xlat8;
    let x_2558 : vec3<f32> = (vec3<f32>(x_2554, x_2554, x_2554) * vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
    let x_2559 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
    let x_2562 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2562);
    let x_2564 : f32 = u_xlat81;
    let x_2565 : i32 = u_xlati80;
    let x_2567 : f32 = x_2531.x_AdditionalLightsAttenuation[x_2565].x;
    u_xlat81 = (x_2564 * x_2567);
    let x_2569 : f32 = u_xlat81;
    let x_2571 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2569) * x_2571) + 1.0f);
    let x_2574 : f32 = u_xlat81;
    u_xlat81 = max(x_2574, 0.0f);
    let x_2576 : f32 = u_xlat81;
    let x_2577 : f32 = u_xlat81;
    u_xlat81 = (x_2576 * x_2577);
    let x_2579 : f32 = u_xlat81;
    let x_2580 : f32 = u_xlat83;
    u_xlat81 = (x_2579 * x_2580);
    let x_2582 : i32 = u_xlati80;
    let x_2584 : vec4<f32> = x_2531.x_AdditionalLightsSpotDir[x_2582];
    let x_2586 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2584.x, x_2584.y, x_2584.z), vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
    let x_2589 : f32 = u_xlat83;
    let x_2590 : i32 = u_xlati80;
    let x_2592 : f32 = x_2531.x_AdditionalLightsAttenuation[x_2590].z;
    let x_2594 : i32 = u_xlati80;
    let x_2596 : f32 = x_2531.x_AdditionalLightsAttenuation[x_2594].w;
    u_xlat83 = ((x_2589 * x_2592) + x_2596);
    let x_2598 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2598, 0.0f, 1.0f);
    let x_2600 : f32 = u_xlat83;
    let x_2601 : f32 = u_xlat83;
    u_xlat83 = (x_2600 * x_2601);
    let x_2603 : f32 = u_xlat81;
    let x_2604 : f32 = u_xlat83;
    u_xlat81 = (x_2603 * x_2604);
    let x_2607 : i32 = u_xlati80;
    let x_2609 : f32 = x_606.x_AdditionalShadowParams[x_2607].w;
    u_xlati83 = i32(x_2609);
    let x_2612 : i32 = u_xlati83;
    u_xlatb84 = (x_2612 >= 0i);
    let x_2614 : bool = u_xlatb84;
    if (x_2614) {
      let x_2618 : i32 = u_xlati80;
      let x_2620 : f32 = x_606.x_AdditionalShadowParams[x_2618].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2620, x_2620, x_2620, x_2620))));
      let x_2624 : bool = u_xlatb84;
      if (x_2624) {
        let x_2628 : vec4<f32> = u_xlat9;
        let x_2631 : vec4<f32> = u_xlat9;
        let x_2634 : vec4<bool> = (abs(vec4<f32>(x_2628.z, x_2628.z, x_2628.y, x_2628.z)) >= abs(vec4<f32>(x_2631.x, x_2631.y, x_2631.x, x_2631.x)));
        let x_2636 : vec3<bool> = vec3<bool>(x_2634.x, x_2634.y, x_2634.z);
        let x_2637 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
        let x_2640 : bool = u_xlatb10.y;
        let x_2642 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2640 & x_2642);
        let x_2644 : vec4<f32> = u_xlat9;
        let x_2647 : vec4<bool> = (-(vec4<f32>(x_2644.z, x_2644.y, x_2644.z, x_2644.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2648 : vec3<bool> = vec3<bool>(x_2647.x, x_2647.y, x_2647.w);
        let x_2649 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2648.x, x_2648.y, x_2649.z, x_2648.z);
        let x_2652 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2652);
        let x_2657 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2657);
        let x_2662 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2662);
        let x_2666 : bool = u_xlatb10.z;
        if (x_2666) {
          let x_2671 : f32 = u_xlat10.y;
          x_2667 = x_2671;
        } else {
          let x_2673 : f32 = u_xlat85;
          x_2667 = x_2673;
        }
        let x_2674 : f32 = x_2667;
        u_xlat35 = x_2674;
        let x_2676 : bool = u_xlatb84;
        if (x_2676) {
          let x_2681 : f32 = u_xlat10.x;
          x_2677 = x_2681;
        } else {
          let x_2683 : f32 = u_xlat35;
          x_2677 = x_2683;
        }
        let x_2684 : f32 = x_2677;
        u_xlat84 = x_2684;
        let x_2685 : i32 = u_xlati80;
        let x_2687 : f32 = x_606.x_AdditionalShadowParams[x_2685].w;
        u_xlat10.x = trunc(x_2687);
        let x_2690 : f32 = u_xlat84;
        let x_2692 : f32 = u_xlat10.x;
        u_xlat84 = (x_2690 + x_2692);
        let x_2694 : f32 = u_xlat84;
        u_xlati83 = i32(x_2694);
      }
      let x_2696 : i32 = u_xlati83;
      u_xlati83 = (x_2696 << bitcast<u32>(2i));
      let x_2698 : vec3<f32> = vs_TEXCOORD7;
      let x_2700 : i32 = u_xlati83;
      let x_2703 : i32 = u_xlati83;
      let x_2707 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2700 + 1i) / 4i)][((x_2703 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2698.y, x_2698.y, x_2698.y, x_2698.y) * x_2707);
      let x_2709 : i32 = u_xlati83;
      let x_2711 : i32 = u_xlati83;
      let x_2714 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[(x_2709 / 4i)][(x_2711 % 4i)];
      let x_2715 : vec3<f32> = vs_TEXCOORD7;
      let x_2718 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2714 * vec4<f32>(x_2715.x, x_2715.x, x_2715.x, x_2715.x)) + x_2718);
      let x_2720 : i32 = u_xlati83;
      let x_2723 : i32 = u_xlati83;
      let x_2727 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2720 + 2i) / 4i)][((x_2723 + 2i) % 4i)];
      let x_2728 : vec3<f32> = vs_TEXCOORD7;
      let x_2731 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2727 * vec4<f32>(x_2728.z, x_2728.z, x_2728.z, x_2728.z)) + x_2731);
      let x_2733 : vec4<f32> = u_xlat10;
      let x_2734 : i32 = u_xlati83;
      let x_2737 : i32 = u_xlati83;
      let x_2741 : vec4<f32> = x_606.x_AdditionalLightsWorldToShadow[((x_2734 + 3i) / 4i)][((x_2737 + 3i) % 4i)];
      u_xlat10 = (x_2733 + x_2741);
      let x_2743 : vec4<f32> = u_xlat10;
      let x_2745 : vec4<f32> = u_xlat10;
      let x_2747 : vec3<f32> = (vec3<f32>(x_2743.x, x_2743.y, x_2743.z) / vec3<f32>(x_2745.w, x_2745.w, x_2745.w));
      let x_2748 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2747.x, x_2747.y, x_2747.z, x_2748.w);
      let x_2751 : i32 = u_xlati80;
      let x_2753 : f32 = x_606.x_AdditionalShadowParams[x_2751].y;
      u_xlatb83 = (0.0f < x_2753);
      let x_2755 : bool = u_xlatb83;
      if (x_2755) {
        let x_2758 : i32 = u_xlati80;
        let x_2760 : f32 = x_606.x_AdditionalShadowParams[x_2758].y;
        u_xlatb83 = (1.0f == x_2760);
        let x_2762 : bool = u_xlatb83;
        if (x_2762) {
          let x_2765 : vec4<f32> = u_xlat10;
          let x_2768 : vec4<f32> = x_606.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y) + x_2768);
          let x_2771 : vec4<f32> = u_xlat11;
          let x_2772 : vec2<f32> = vec2<f32>(x_2771.x, x_2771.y);
          let x_2774 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2772.x, x_2772.y, x_2774);
          let x_2782 : vec3<f32> = txVec30;
          let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
          u_xlat12.x = x_2784;
          let x_2787 : vec4<f32> = u_xlat11;
          let x_2788 : vec2<f32> = vec2<f32>(x_2787.z, x_2787.w);
          let x_2790 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
          let x_2797 : vec3<f32> = txVec31;
          let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
          u_xlat12.y = x_2799;
          let x_2801 : vec4<f32> = u_xlat10;
          let x_2804 : vec4<f32> = x_606.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y) + x_2804);
          let x_2807 : vec4<f32> = u_xlat11;
          let x_2808 : vec2<f32> = vec2<f32>(x_2807.x, x_2807.y);
          let x_2810 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2808.x, x_2808.y, x_2810);
          let x_2817 : vec3<f32> = txVec32;
          let x_2819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2817.xy, x_2817.z);
          u_xlat12.z = x_2819;
          let x_2822 : vec4<f32> = u_xlat11;
          let x_2823 : vec2<f32> = vec2<f32>(x_2822.z, x_2822.w);
          let x_2825 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2823.x, x_2823.y, x_2825);
          let x_2832 : vec3<f32> = txVec33;
          let x_2834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2832.xy, x_2832.z);
          u_xlat12.w = x_2834;
          let x_2836 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2836, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2839 : i32 = u_xlati80;
          let x_2841 : f32 = x_606.x_AdditionalShadowParams[x_2839].y;
          u_xlatb84 = (2.0f == x_2841);
          let x_2843 : bool = u_xlatb84;
          if (x_2843) {
            let x_2846 : vec4<f32> = u_xlat10;
            let x_2849 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_2852 : vec2<f32> = ((vec2<f32>(x_2846.x, x_2846.y) * vec2<f32>(x_2849.z, x_2849.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2853 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
            let x_2855 : vec4<f32> = u_xlat11;
            let x_2857 : vec2<f32> = floor(vec2<f32>(x_2855.x, x_2855.y));
            let x_2858 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2857.x, x_2857.y, x_2858.z, x_2858.w);
            let x_2861 : vec4<f32> = u_xlat10;
            let x_2864 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_2867 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2861.x, x_2861.y) * vec2<f32>(x_2864.z, x_2864.w)) + -(vec2<f32>(x_2867.x, x_2867.y)));
            let x_2871 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2871.x, x_2871.x, x_2871.y, x_2871.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2874 : vec4<f32> = u_xlat12;
            let x_2876 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2874.x, x_2874.x, x_2874.z, x_2874.z) * vec4<f32>(x_2876.x, x_2876.x, x_2876.z, x_2876.z));
            let x_2879 : vec4<f32> = u_xlat13;
            let x_2881 : vec2<f32> = (vec2<f32>(x_2879.y, x_2879.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2882 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2881.x, x_2882.y, x_2881.y, x_2882.w);
            let x_2884 : vec4<f32> = u_xlat13;
            let x_2887 : vec2<f32> = u_xlat61;
            let x_2889 : vec2<f32> = ((vec2<f32>(x_2884.x, x_2884.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2887));
            let x_2890 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2889.x, x_2889.y, x_2890.z, x_2890.w);
            let x_2893 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2893) + vec2<f32>(1.0f, 1.0f));
            let x_2896 : vec2<f32> = u_xlat61;
            let x_2897 : vec2<f32> = min(x_2896, vec2<f32>(0.0f, 0.0f));
            let x_2898 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2897.x, x_2897.y, x_2898.z, x_2898.w);
            let x_2900 : vec4<f32> = u_xlat14;
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2906 : vec2<f32> = u_xlat63;
            let x_2907 : vec2<f32> = ((-(vec2<f32>(x_2900.x, x_2900.y)) * vec2<f32>(x_2903.x, x_2903.y)) + x_2906);
            let x_2908 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2907.x, x_2907.y, x_2908.z, x_2908.w);
            let x_2910 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2910, vec2<f32>(0.0f, 0.0f));
            let x_2912 : vec2<f32> = u_xlat61;
            let x_2914 : vec2<f32> = u_xlat61;
            let x_2916 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2912) * x_2914) + vec2<f32>(x_2916.y, x_2916.w));
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2921 : vec2<f32> = (vec2<f32>(x_2919.x, x_2919.y) + vec2<f32>(1.0f, 1.0f));
            let x_2922 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2921.x, x_2921.y, x_2922.z, x_2922.w);
            let x_2924 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2924 + vec2<f32>(1.0f, 1.0f));
            let x_2926 : vec4<f32> = u_xlat13;
            let x_2928 : vec2<f32> = (vec2<f32>(x_2926.x, x_2926.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2929 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2928.x, x_2928.y, x_2929.z, x_2929.w);
            let x_2931 : vec2<f32> = u_xlat63;
            let x_2932 : vec2<f32> = (x_2931 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2933 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2932.x, x_2932.y, x_2933.z, x_2933.w);
            let x_2935 : vec4<f32> = u_xlat14;
            let x_2937 : vec2<f32> = (vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2938 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2937.x, x_2937.y, x_2938.z, x_2938.w);
            let x_2940 : vec2<f32> = u_xlat61;
            let x_2941 : vec2<f32> = (x_2940 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2942 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2941.x, x_2941.y, x_2942.z, x_2942.w);
            let x_2944 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2944.y, x_2944.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2948 : f32 = u_xlat14.x;
            u_xlat15.z = x_2948;
            let x_2951 : f32 = u_xlat61.x;
            u_xlat15.w = x_2951;
            let x_2954 : f32 = u_xlat16.x;
            u_xlat13.z = x_2954;
            let x_2957 : f32 = u_xlat12.x;
            u_xlat13.w = x_2957;
            let x_2959 : vec4<f32> = u_xlat13;
            let x_2961 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2959.z, x_2959.w, x_2959.x, x_2959.z) + vec4<f32>(x_2961.z, x_2961.w, x_2961.x, x_2961.z));
            let x_2965 : f32 = u_xlat15.y;
            u_xlat14.z = x_2965;
            let x_2968 : f32 = u_xlat61.y;
            u_xlat14.w = x_2968;
            let x_2971 : f32 = u_xlat13.y;
            u_xlat16.z = x_2971;
            let x_2974 : f32 = u_xlat12.z;
            u_xlat16.w = x_2974;
            let x_2976 : vec4<f32> = u_xlat14;
            let x_2978 : vec4<f32> = u_xlat16;
            let x_2980 : vec3<f32> = (vec3<f32>(x_2976.z, x_2976.y, x_2976.w) + vec3<f32>(x_2978.z, x_2978.y, x_2978.w));
            let x_2981 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2980.x, x_2980.y, x_2980.z, x_2981.w);
            let x_2983 : vec4<f32> = u_xlat13;
            let x_2985 : vec4<f32> = u_xlat17;
            let x_2987 : vec3<f32> = (vec3<f32>(x_2983.x, x_2983.z, x_2983.w) / vec3<f32>(x_2985.z, x_2985.w, x_2985.y));
            let x_2988 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2987.x, x_2987.y, x_2987.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat13;
            let x_2992 : vec3<f32> = (vec3<f32>(x_2990.x, x_2990.y, x_2990.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2992.x, x_2992.y, x_2992.z, x_2993.w);
            let x_2995 : vec4<f32> = u_xlat16;
            let x_2997 : vec4<f32> = u_xlat12;
            let x_2999 : vec3<f32> = (vec3<f32>(x_2995.z, x_2995.y, x_2995.w) / vec3<f32>(x_2997.x, x_2997.y, x_2997.z));
            let x_3000 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_3000.w);
            let x_3002 : vec4<f32> = u_xlat14;
            let x_3004 : vec3<f32> = (vec3<f32>(x_3002.x, x_3002.y, x_3002.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3005 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3004.x, x_3004.y, x_3004.z, x_3005.w);
            let x_3007 : vec4<f32> = u_xlat13;
            let x_3010 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3012 : vec3<f32> = (vec3<f32>(x_3007.y, x_3007.x, x_3007.z) * vec3<f32>(x_3010.x, x_3010.x, x_3010.x));
            let x_3013 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3013.w);
            let x_3015 : vec4<f32> = u_xlat14;
            let x_3018 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3020 : vec3<f32> = (vec3<f32>(x_3015.x, x_3015.y, x_3015.z) * vec3<f32>(x_3018.y, x_3018.y, x_3018.y));
            let x_3021 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3020.x, x_3020.y, x_3020.z, x_3021.w);
            let x_3024 : f32 = u_xlat14.x;
            u_xlat13.w = x_3024;
            let x_3026 : vec4<f32> = u_xlat11;
            let x_3029 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3032 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y) * vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y)) + vec4<f32>(x_3032.y, x_3032.w, x_3032.x, x_3032.w));
            let x_3035 : vec4<f32> = u_xlat11;
            let x_3038 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3041 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3035.x, x_3035.y) * vec2<f32>(x_3038.x, x_3038.y)) + vec2<f32>(x_3041.z, x_3041.w));
            let x_3045 : f32 = u_xlat13.y;
            u_xlat14.w = x_3045;
            let x_3047 : vec4<f32> = u_xlat14;
            let x_3048 : vec2<f32> = vec2<f32>(x_3047.y, x_3047.z);
            let x_3049 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3049.x, x_3048.x, x_3049.z, x_3048.y);
            let x_3051 : vec4<f32> = u_xlat11;
            let x_3054 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3057 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3051.x, x_3051.y, x_3051.x, x_3051.y) * vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y)) + vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3057.y));
            let x_3060 : vec4<f32> = u_xlat11;
            let x_3063 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3060.x, x_3060.y, x_3060.x, x_3060.y) * vec4<f32>(x_3063.x, x_3063.y, x_3063.x, x_3063.y)) + vec4<f32>(x_3066.w, x_3066.y, x_3066.w, x_3066.z));
            let x_3069 : vec4<f32> = u_xlat11;
            let x_3072 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y) * vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y)) + vec4<f32>(x_3075.x, x_3075.w, x_3075.z, x_3075.w));
            let x_3078 : vec4<f32> = u_xlat12;
            let x_3080 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3078.x, x_3078.x, x_3078.x, x_3078.y) * vec4<f32>(x_3080.z, x_3080.w, x_3080.y, x_3080.z));
            let x_3083 : vec4<f32> = u_xlat12;
            let x_3085 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3083.y, x_3083.y, x_3083.z, x_3083.z) * x_3085);
            let x_3088 : f32 = u_xlat12.z;
            let x_3090 : f32 = u_xlat17.y;
            u_xlat84 = (x_3088 * x_3090);
            let x_3093 : vec4<f32> = u_xlat15;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.x, x_3093.y);
            let x_3096 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
            let x_3103 : vec3<f32> = txVec34;
            let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
            u_xlat85 = x_3105;
            let x_3107 : vec4<f32> = u_xlat15;
            let x_3108 : vec2<f32> = vec2<f32>(x_3107.z, x_3107.w);
            let x_3110 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
            let x_3117 : vec3<f32> = txVec35;
            let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
            u_xlat11.x = x_3119;
            let x_3122 : f32 = u_xlat11.x;
            let x_3124 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3122 * x_3124);
            let x_3128 : f32 = u_xlat18.x;
            let x_3129 : f32 = u_xlat85;
            let x_3132 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3128 * x_3129) + x_3132);
            let x_3135 : vec2<f32> = u_xlat61;
            let x_3137 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec36;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat11.x = x_3146;
            let x_3149 : f32 = u_xlat18.z;
            let x_3151 : f32 = u_xlat11.x;
            let x_3153 : f32 = u_xlat85;
            u_xlat85 = ((x_3149 * x_3151) + x_3153);
            let x_3156 : vec4<f32> = u_xlat14;
            let x_3157 : vec2<f32> = vec2<f32>(x_3156.x, x_3156.y);
            let x_3159 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
            let x_3166 : vec3<f32> = txVec37;
            let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
            u_xlat11.x = x_3168;
            let x_3171 : f32 = u_xlat18.w;
            let x_3173 : f32 = u_xlat11.x;
            let x_3175 : f32 = u_xlat85;
            u_xlat85 = ((x_3171 * x_3173) + x_3175);
            let x_3178 : vec4<f32> = u_xlat16;
            let x_3179 : vec2<f32> = vec2<f32>(x_3178.x, x_3178.y);
            let x_3181 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
            let x_3188 : vec3<f32> = txVec38;
            let x_3190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
            u_xlat11.x = x_3190;
            let x_3193 : f32 = u_xlat19.x;
            let x_3195 : f32 = u_xlat11.x;
            let x_3197 : f32 = u_xlat85;
            u_xlat85 = ((x_3193 * x_3195) + x_3197);
            let x_3200 : vec4<f32> = u_xlat16;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.z, x_3200.w);
            let x_3203 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec39;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat11.x = x_3212;
            let x_3215 : f32 = u_xlat19.y;
            let x_3217 : f32 = u_xlat11.x;
            let x_3219 : f32 = u_xlat85;
            u_xlat85 = ((x_3215 * x_3217) + x_3219);
            let x_3222 : vec4<f32> = u_xlat14;
            let x_3223 : vec2<f32> = vec2<f32>(x_3222.z, x_3222.w);
            let x_3225 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
            let x_3232 : vec3<f32> = txVec40;
            let x_3234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3232.xy, x_3232.z);
            u_xlat11.x = x_3234;
            let x_3237 : f32 = u_xlat19.z;
            let x_3239 : f32 = u_xlat11.x;
            let x_3241 : f32 = u_xlat85;
            u_xlat85 = ((x_3237 * x_3239) + x_3241);
            let x_3244 : vec4<f32> = u_xlat13;
            let x_3245 : vec2<f32> = vec2<f32>(x_3244.x, x_3244.y);
            let x_3247 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
            let x_3254 : vec3<f32> = txVec41;
            let x_3256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
            u_xlat11.x = x_3256;
            let x_3259 : f32 = u_xlat19.w;
            let x_3261 : f32 = u_xlat11.x;
            let x_3263 : f32 = u_xlat85;
            u_xlat85 = ((x_3259 * x_3261) + x_3263);
            let x_3266 : vec4<f32> = u_xlat13;
            let x_3267 : vec2<f32> = vec2<f32>(x_3266.z, x_3266.w);
            let x_3269 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec42;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat11.x = x_3278;
            let x_3280 : f32 = u_xlat84;
            let x_3282 : f32 = u_xlat11.x;
            let x_3284 : f32 = u_xlat85;
            u_xlat83 = ((x_3280 * x_3282) + x_3284);
          } else {
            let x_3287 : vec4<f32> = u_xlat10;
            let x_3290 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3293 : vec2<f32> = ((vec2<f32>(x_3287.x, x_3287.y) * vec2<f32>(x_3290.z, x_3290.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3294 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3293.x, x_3293.y, x_3294.z, x_3294.w);
            let x_3296 : vec4<f32> = u_xlat11;
            let x_3298 : vec2<f32> = floor(vec2<f32>(x_3296.x, x_3296.y));
            let x_3299 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3298.x, x_3298.y, x_3299.z, x_3299.w);
            let x_3301 : vec4<f32> = u_xlat10;
            let x_3304 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3307 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3301.x, x_3301.y) * vec2<f32>(x_3304.z, x_3304.w)) + -(vec2<f32>(x_3307.x, x_3307.y)));
            let x_3311 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3311.x, x_3311.x, x_3311.y, x_3311.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3314 : vec4<f32> = u_xlat12;
            let x_3316 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3314.x, x_3314.x, x_3314.z, x_3314.z) * vec4<f32>(x_3316.x, x_3316.x, x_3316.z, x_3316.z));
            let x_3319 : vec4<f32> = u_xlat13;
            let x_3321 : vec2<f32> = (vec2<f32>(x_3319.y, x_3319.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3322 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3322.x, x_3321.x, x_3322.z, x_3321.y);
            let x_3324 : vec4<f32> = u_xlat13;
            let x_3327 : vec2<f32> = u_xlat61;
            let x_3329 : vec2<f32> = ((vec2<f32>(x_3324.x, x_3324.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3327));
            let x_3330 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3329.x, x_3330.y, x_3329.y, x_3330.w);
            let x_3332 : vec2<f32> = u_xlat61;
            let x_3334 : vec2<f32> = (-(x_3332) + vec2<f32>(1.0f, 1.0f));
            let x_3335 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3334.x, x_3334.y, x_3335.z, x_3335.w);
            let x_3337 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3337, vec2<f32>(0.0f, 0.0f));
            let x_3339 : vec2<f32> = u_xlat63;
            let x_3341 : vec2<f32> = u_xlat63;
            let x_3343 : vec4<f32> = u_xlat13;
            let x_3345 : vec2<f32> = ((-(x_3339) * x_3341) + vec2<f32>(x_3343.x, x_3343.y));
            let x_3346 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3345.x, x_3345.y, x_3346.z, x_3346.w);
            let x_3348 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3348, vec2<f32>(0.0f, 0.0f));
            let x_3351 : vec2<f32> = u_xlat63;
            let x_3353 : vec2<f32> = u_xlat63;
            let x_3355 : vec4<f32> = u_xlat12;
            let x_3357 : vec2<f32> = ((-(x_3351) * x_3353) + vec2<f32>(x_3355.y, x_3355.w));
            let x_3358 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3357.x, x_3358.y, x_3357.y);
            let x_3360 : vec4<f32> = u_xlat13;
            let x_3362 : vec2<f32> = (vec2<f32>(x_3360.x, x_3360.y) + vec2<f32>(2.0f, 2.0f));
            let x_3363 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3362.x, x_3362.y, x_3363.z, x_3363.w);
            let x_3365 : vec3<f32> = u_xlat37;
            let x_3367 : vec2<f32> = (vec2<f32>(x_3365.x, x_3365.z) + vec2<f32>(2.0f, 2.0f));
            let x_3368 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3368.x, x_3367.x, x_3368.z, x_3367.y);
            let x_3371 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3371 * 0.08163200318813323975f);
            let x_3374 : vec4<f32> = u_xlat12;
            let x_3376 : vec3<f32> = (vec3<f32>(x_3374.z, x_3374.x, x_3374.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3377 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3376.x, x_3376.y, x_3376.z, x_3377.w);
            let x_3379 : vec4<f32> = u_xlat13;
            let x_3381 : vec2<f32> = (vec2<f32>(x_3379.x, x_3379.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3382 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3381.x, x_3381.y, x_3382.z, x_3382.w);
            let x_3385 : f32 = u_xlat16.y;
            u_xlat15.x = x_3385;
            let x_3387 : vec2<f32> = u_xlat61;
            let x_3390 : vec2<f32> = ((vec2<f32>(x_3387.x, x_3387.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3391 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3391.x, x_3390.x, x_3391.z, x_3390.y);
            let x_3393 : vec2<f32> = u_xlat61;
            let x_3396 : vec2<f32> = ((vec2<f32>(x_3393.x, x_3393.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3397 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3396.x, x_3397.y, x_3396.y, x_3397.w);
            let x_3400 : f32 = u_xlat12.x;
            u_xlat13.y = x_3400;
            let x_3403 : f32 = u_xlat14.y;
            u_xlat13.w = x_3403;
            let x_3405 : vec4<f32> = u_xlat13;
            let x_3406 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3405 + x_3406);
            let x_3408 : vec2<f32> = u_xlat61;
            let x_3411 : vec2<f32> = ((vec2<f32>(x_3408.y, x_3408.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3412 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3412.x, x_3411.x, x_3412.z, x_3411.y);
            let x_3414 : vec2<f32> = u_xlat61;
            let x_3417 : vec2<f32> = ((vec2<f32>(x_3414.y, x_3414.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3418 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3417.x, x_3418.y, x_3417.y, x_3418.w);
            let x_3421 : f32 = u_xlat12.y;
            u_xlat14.y = x_3421;
            let x_3423 : vec4<f32> = u_xlat14;
            let x_3424 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3423 + x_3424);
            let x_3426 : vec4<f32> = u_xlat13;
            let x_3427 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3426 / x_3427);
            let x_3429 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3429 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3431 : vec4<f32> = u_xlat14;
            let x_3432 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3431 / x_3432);
            let x_3434 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3434 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3436 : vec4<f32> = u_xlat13;
            let x_3439 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3436.w, x_3436.x, x_3436.y, x_3436.z) * vec4<f32>(x_3439.x, x_3439.x, x_3439.x, x_3439.x));
            let x_3442 : vec4<f32> = u_xlat14;
            let x_3445 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3442.x, x_3442.w, x_3442.y, x_3442.z) * vec4<f32>(x_3445.y, x_3445.y, x_3445.y, x_3445.y));
            let x_3448 : vec4<f32> = u_xlat13;
            let x_3449 : vec3<f32> = vec3<f32>(x_3448.y, x_3448.z, x_3448.w);
            let x_3450 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3449.x, x_3450.y, x_3449.y, x_3449.z);
            let x_3453 : f32 = u_xlat14.x;
            u_xlat16.y = x_3453;
            let x_3455 : vec4<f32> = u_xlat11;
            let x_3458 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3461 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3455.x, x_3455.y, x_3455.x, x_3455.y) * vec4<f32>(x_3458.x, x_3458.y, x_3458.x, x_3458.y)) + vec4<f32>(x_3461.x, x_3461.y, x_3461.z, x_3461.y));
            let x_3464 : vec4<f32> = u_xlat11;
            let x_3467 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3470 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3464.x, x_3464.y) * vec2<f32>(x_3467.x, x_3467.y)) + vec2<f32>(x_3470.w, x_3470.y));
            let x_3474 : f32 = u_xlat16.y;
            u_xlat13.y = x_3474;
            let x_3477 : f32 = u_xlat14.z;
            u_xlat16.y = x_3477;
            let x_3479 : vec4<f32> = u_xlat11;
            let x_3482 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3485 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3479.x, x_3479.y, x_3479.x, x_3479.y) * vec4<f32>(x_3482.x, x_3482.y, x_3482.x, x_3482.y)) + vec4<f32>(x_3485.x, x_3485.y, x_3485.z, x_3485.y));
            let x_3488 : vec4<f32> = u_xlat11;
            let x_3491 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3494 : vec4<f32> = u_xlat16;
            let x_3496 : vec2<f32> = ((vec2<f32>(x_3488.x, x_3488.y) * vec2<f32>(x_3491.x, x_3491.y)) + vec2<f32>(x_3494.w, x_3494.y));
            let x_3497 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3496.x, x_3496.y, x_3497.z, x_3497.w);
            let x_3500 : f32 = u_xlat16.y;
            u_xlat13.z = x_3500;
            let x_3502 : vec4<f32> = u_xlat11;
            let x_3505 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3508 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3502.x, x_3502.y, x_3502.x, x_3502.y) * vec4<f32>(x_3505.x, x_3505.y, x_3505.x, x_3505.y)) + vec4<f32>(x_3508.x, x_3508.y, x_3508.x, x_3508.z));
            let x_3512 : f32 = u_xlat14.w;
            u_xlat16.y = x_3512;
            let x_3515 : vec4<f32> = u_xlat11;
            let x_3518 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3521 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3515.x, x_3515.y, x_3515.x, x_3515.y) * vec4<f32>(x_3518.x, x_3518.y, x_3518.x, x_3518.y)) + vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3521.y));
            let x_3525 : vec4<f32> = u_xlat11;
            let x_3528 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3531 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3525.x, x_3525.y) * vec2<f32>(x_3528.x, x_3528.y)) + vec2<f32>(x_3531.w, x_3531.y));
            let x_3535 : f32 = u_xlat16.y;
            u_xlat13.w = x_3535;
            let x_3538 : vec4<f32> = u_xlat11;
            let x_3541 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3544 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3538.x, x_3538.y) * vec2<f32>(x_3541.x, x_3541.y)) + vec2<f32>(x_3544.x, x_3544.w));
            let x_3547 : vec4<f32> = u_xlat16;
            let x_3548 : vec3<f32> = vec3<f32>(x_3547.x, x_3547.z, x_3547.w);
            let x_3549 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3548.x, x_3549.y, x_3548.y, x_3548.z);
            let x_3551 : vec4<f32> = u_xlat11;
            let x_3554 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3557 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3551.x, x_3551.y, x_3551.x, x_3551.y) * vec4<f32>(x_3554.x, x_3554.y, x_3554.x, x_3554.y)) + vec4<f32>(x_3557.x, x_3557.y, x_3557.z, x_3557.y));
            let x_3561 : vec4<f32> = u_xlat11;
            let x_3564 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3561.x, x_3561.y) * vec2<f32>(x_3564.x, x_3564.y)) + vec2<f32>(x_3567.w, x_3567.y));
            let x_3571 : f32 = u_xlat13.x;
            u_xlat14.x = x_3571;
            let x_3573 : vec4<f32> = u_xlat11;
            let x_3576 : vec4<f32> = x_606.x_AdditionalShadowmapSize;
            let x_3579 : vec4<f32> = u_xlat14;
            let x_3581 : vec2<f32> = ((vec2<f32>(x_3573.x, x_3573.y) * vec2<f32>(x_3576.x, x_3576.y)) + vec2<f32>(x_3579.x, x_3579.y));
            let x_3582 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3581.x, x_3581.y, x_3582.z, x_3582.w);
            let x_3585 : vec4<f32> = u_xlat12;
            let x_3587 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3585.x, x_3585.x, x_3585.x, x_3585.x) * x_3587);
            let x_3590 : vec4<f32> = u_xlat12;
            let x_3592 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3590.y, x_3590.y, x_3590.y, x_3590.y) * x_3592);
            let x_3595 : vec4<f32> = u_xlat12;
            let x_3597 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3595.z, x_3595.z, x_3595.z, x_3595.z) * x_3597);
            let x_3599 : vec4<f32> = u_xlat12;
            let x_3601 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3599.w, x_3599.w, x_3599.w, x_3599.w) * x_3601);
            let x_3604 : vec4<f32> = u_xlat17;
            let x_3605 : vec2<f32> = vec2<f32>(x_3604.x, x_3604.y);
            let x_3607 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3605.x, x_3605.y, x_3607);
            let x_3614 : vec3<f32> = txVec43;
            let x_3616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3614.xy, x_3614.z);
            u_xlat84 = x_3616;
            let x_3618 : vec4<f32> = u_xlat17;
            let x_3619 : vec2<f32> = vec2<f32>(x_3618.z, x_3618.w);
            let x_3621 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3619.x, x_3619.y, x_3621);
            let x_3628 : vec3<f32> = txVec44;
            let x_3630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3628.xy, x_3628.z);
            u_xlat85 = x_3630;
            let x_3631 : f32 = u_xlat85;
            let x_3633 : f32 = u_xlat22.y;
            u_xlat85 = (x_3631 * x_3633);
            let x_3636 : f32 = u_xlat22.x;
            let x_3637 : f32 = u_xlat84;
            let x_3639 : f32 = u_xlat85;
            u_xlat84 = ((x_3636 * x_3637) + x_3639);
            let x_3642 : vec2<f32> = u_xlat61;
            let x_3644 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3642.x, x_3642.y, x_3644);
            let x_3651 : vec3<f32> = txVec45;
            let x_3653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3651.xy, x_3651.z);
            u_xlat85 = x_3653;
            let x_3655 : f32 = u_xlat22.z;
            let x_3656 : f32 = u_xlat85;
            let x_3658 : f32 = u_xlat84;
            u_xlat84 = ((x_3655 * x_3656) + x_3658);
            let x_3661 : vec4<f32> = u_xlat20;
            let x_3662 : vec2<f32> = vec2<f32>(x_3661.x, x_3661.y);
            let x_3664 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3662.x, x_3662.y, x_3664);
            let x_3671 : vec3<f32> = txVec46;
            let x_3673 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3671.xy, x_3671.z);
            u_xlat85 = x_3673;
            let x_3675 : f32 = u_xlat22.w;
            let x_3676 : f32 = u_xlat85;
            let x_3678 : f32 = u_xlat84;
            u_xlat84 = ((x_3675 * x_3676) + x_3678);
            let x_3681 : vec4<f32> = u_xlat18;
            let x_3682 : vec2<f32> = vec2<f32>(x_3681.x, x_3681.y);
            let x_3684 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3682.x, x_3682.y, x_3684);
            let x_3691 : vec3<f32> = txVec47;
            let x_3693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3691.xy, x_3691.z);
            u_xlat85 = x_3693;
            let x_3695 : f32 = u_xlat23.x;
            let x_3696 : f32 = u_xlat85;
            let x_3698 : f32 = u_xlat84;
            u_xlat84 = ((x_3695 * x_3696) + x_3698);
            let x_3701 : vec4<f32> = u_xlat18;
            let x_3702 : vec2<f32> = vec2<f32>(x_3701.z, x_3701.w);
            let x_3704 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3702.x, x_3702.y, x_3704);
            let x_3711 : vec3<f32> = txVec48;
            let x_3713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3711.xy, x_3711.z);
            u_xlat85 = x_3713;
            let x_3715 : f32 = u_xlat23.y;
            let x_3716 : f32 = u_xlat85;
            let x_3718 : f32 = u_xlat84;
            u_xlat84 = ((x_3715 * x_3716) + x_3718);
            let x_3721 : vec4<f32> = u_xlat19;
            let x_3722 : vec2<f32> = vec2<f32>(x_3721.x, x_3721.y);
            let x_3724 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3722.x, x_3722.y, x_3724);
            let x_3731 : vec3<f32> = txVec49;
            let x_3733 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3731.xy, x_3731.z);
            u_xlat85 = x_3733;
            let x_3735 : f32 = u_xlat23.z;
            let x_3736 : f32 = u_xlat85;
            let x_3738 : f32 = u_xlat84;
            u_xlat84 = ((x_3735 * x_3736) + x_3738);
            let x_3741 : vec4<f32> = u_xlat20;
            let x_3742 : vec2<f32> = vec2<f32>(x_3741.z, x_3741.w);
            let x_3744 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3742.x, x_3742.y, x_3744);
            let x_3751 : vec3<f32> = txVec50;
            let x_3753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3751.xy, x_3751.z);
            u_xlat85 = x_3753;
            let x_3755 : f32 = u_xlat23.w;
            let x_3756 : f32 = u_xlat85;
            let x_3758 : f32 = u_xlat84;
            u_xlat84 = ((x_3755 * x_3756) + x_3758);
            let x_3761 : vec4<f32> = u_xlat21;
            let x_3762 : vec2<f32> = vec2<f32>(x_3761.x, x_3761.y);
            let x_3764 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3762.x, x_3762.y, x_3764);
            let x_3771 : vec3<f32> = txVec51;
            let x_3773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3771.xy, x_3771.z);
            u_xlat85 = x_3773;
            let x_3775 : f32 = u_xlat24.x;
            let x_3776 : f32 = u_xlat85;
            let x_3778 : f32 = u_xlat84;
            u_xlat84 = ((x_3775 * x_3776) + x_3778);
            let x_3781 : vec4<f32> = u_xlat21;
            let x_3782 : vec2<f32> = vec2<f32>(x_3781.z, x_3781.w);
            let x_3784 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3782.x, x_3782.y, x_3784);
            let x_3791 : vec3<f32> = txVec52;
            let x_3793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3791.xy, x_3791.z);
            u_xlat85 = x_3793;
            let x_3795 : f32 = u_xlat24.y;
            let x_3796 : f32 = u_xlat85;
            let x_3798 : f32 = u_xlat84;
            u_xlat84 = ((x_3795 * x_3796) + x_3798);
            let x_3801 : vec2<f32> = u_xlat38;
            let x_3803 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3801.x, x_3801.y, x_3803);
            let x_3810 : vec3<f32> = txVec53;
            let x_3812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3810.xy, x_3810.z);
            u_xlat85 = x_3812;
            let x_3814 : f32 = u_xlat24.z;
            let x_3815 : f32 = u_xlat85;
            let x_3817 : f32 = u_xlat84;
            u_xlat84 = ((x_3814 * x_3815) + x_3817);
            let x_3820 : vec2<f32> = u_xlat69;
            let x_3822 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3820.x, x_3820.y, x_3822);
            let x_3829 : vec3<f32> = txVec54;
            let x_3831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3829.xy, x_3829.z);
            u_xlat85 = x_3831;
            let x_3833 : f32 = u_xlat24.w;
            let x_3834 : f32 = u_xlat85;
            let x_3836 : f32 = u_xlat84;
            u_xlat84 = ((x_3833 * x_3834) + x_3836);
            let x_3839 : vec4<f32> = u_xlat16;
            let x_3840 : vec2<f32> = vec2<f32>(x_3839.x, x_3839.y);
            let x_3842 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3840.x, x_3840.y, x_3842);
            let x_3849 : vec3<f32> = txVec55;
            let x_3851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3849.xy, x_3849.z);
            u_xlat85 = x_3851;
            let x_3853 : f32 = u_xlat12.x;
            let x_3854 : f32 = u_xlat85;
            let x_3856 : f32 = u_xlat84;
            u_xlat84 = ((x_3853 * x_3854) + x_3856);
            let x_3859 : vec4<f32> = u_xlat16;
            let x_3860 : vec2<f32> = vec2<f32>(x_3859.z, x_3859.w);
            let x_3862 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
            let x_3869 : vec3<f32> = txVec56;
            let x_3871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3869.xy, x_3869.z);
            u_xlat85 = x_3871;
            let x_3873 : f32 = u_xlat12.y;
            let x_3874 : f32 = u_xlat85;
            let x_3876 : f32 = u_xlat84;
            u_xlat84 = ((x_3873 * x_3874) + x_3876);
            let x_3879 : vec2<f32> = u_xlat64;
            let x_3881 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3879.x, x_3879.y, x_3881);
            let x_3888 : vec3<f32> = txVec57;
            let x_3890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3888.xy, x_3888.z);
            u_xlat85 = x_3890;
            let x_3892 : f32 = u_xlat12.z;
            let x_3893 : f32 = u_xlat85;
            let x_3895 : f32 = u_xlat84;
            u_xlat84 = ((x_3892 * x_3893) + x_3895);
            let x_3898 : vec4<f32> = u_xlat11;
            let x_3899 : vec2<f32> = vec2<f32>(x_3898.x, x_3898.y);
            let x_3901 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3899.x, x_3899.y, x_3901);
            let x_3908 : vec3<f32> = txVec58;
            let x_3910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3908.xy, x_3908.z);
            u_xlat85 = x_3910;
            let x_3912 : f32 = u_xlat12.w;
            let x_3913 : f32 = u_xlat85;
            let x_3915 : f32 = u_xlat84;
            u_xlat83 = ((x_3912 * x_3913) + x_3915);
          }
        }
      } else {
        let x_3919 : vec4<f32> = u_xlat10;
        let x_3920 : vec2<f32> = vec2<f32>(x_3919.x, x_3919.y);
        let x_3922 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3920.x, x_3920.y, x_3922);
        let x_3929 : vec3<f32> = txVec59;
        let x_3931 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3929.xy, x_3929.z);
        u_xlat83 = x_3931;
      }
      let x_3932 : i32 = u_xlati80;
      let x_3934 : f32 = x_606.x_AdditionalShadowParams[x_3932].x;
      u_xlat84 = (1.0f + -(x_3934));
      let x_3937 : f32 = u_xlat83;
      let x_3938 : i32 = u_xlati80;
      let x_3940 : f32 = x_606.x_AdditionalShadowParams[x_3938].x;
      let x_3942 : f32 = u_xlat84;
      u_xlat83 = ((x_3937 * x_3940) + x_3942);
      let x_3945 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3945);
      let x_3948 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3948 >= 1.0f);
      let x_3951 : bool = u_xlatb84;
      let x_3953 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3951 | x_3953);
      let x_3955 : bool = u_xlatb84;
      let x_3956 : f32 = u_xlat83;
      u_xlat83 = select(x_3956, 1.0f, x_3955);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3959 : f32 = u_xlat83;
    u_xlat84 = (-(x_3959) + 1.0f);
    let x_3962 : f32 = u_xlat77;
    let x_3963 : f32 = u_xlat84;
    let x_3965 : f32 = u_xlat83;
    u_xlat83 = ((x_3962 * x_3963) + x_3965);
    let x_3967 : f32 = u_xlat81;
    let x_3968 : f32 = u_xlat83;
    u_xlat81 = (x_3967 * x_3968);
    let x_3970 : vec4<f32> = u_xlat1;
    let x_3972 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3970.x, x_3970.y, x_3970.z), vec3<f32>(x_3972.x, x_3972.y, x_3972.z));
    let x_3975 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3975, 0.0f, 1.0f);
    let x_3977 : f32 = u_xlat81;
    let x_3978 : f32 = u_xlat83;
    u_xlat81 = (x_3977 * x_3978);
    let x_3980 : f32 = u_xlat81;
    let x_3982 : i32 = u_xlati80;
    let x_3984 : vec4<f32> = x_2531.x_AdditionalLightsColor[x_3982];
    let x_3986 : vec3<f32> = (vec3<f32>(x_3980, x_3980, x_3980) * vec3<f32>(x_3984.x, x_3984.y, x_3984.z));
    let x_3987 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3986.x, x_3986.y, x_3986.z, x_3987.w);
    let x_3989 : vec4<f32> = u_xlat8;
    let x_3991 : f32 = u_xlat82;
    let x_3994 : vec3<f32> = u_xlat2;
    let x_3995 : vec3<f32> = ((vec3<f32>(x_3989.x, x_3989.y, x_3989.z) * vec3<f32>(x_3991, x_3991, x_3991)) + x_3994);
    let x_3996 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3995.x, x_3995.y, x_3995.z, x_3996.w);
    let x_3998 : vec4<f32> = u_xlat8;
    let x_4000 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3998.x, x_3998.y, x_3998.z), vec3<f32>(x_4000.x, x_4000.y, x_4000.z));
    let x_4003 : f32 = u_xlat80;
    u_xlat80 = max(x_4003, 1.17549435e-38f);
    let x_4005 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4005);
    let x_4007 : f32 = u_xlat80;
    let x_4009 : vec4<f32> = u_xlat8;
    let x_4011 : vec3<f32> = (vec3<f32>(x_4007, x_4007, x_4007) * vec3<f32>(x_4009.x, x_4009.y, x_4009.z));
    let x_4012 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4011.x, x_4011.y, x_4011.z, x_4012.w);
    let x_4014 : vec4<f32> = u_xlat1;
    let x_4016 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_4014.x, x_4014.y, x_4014.z), vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
    let x_4019 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4019, 0.0f, 1.0f);
    let x_4021 : vec4<f32> = u_xlat9;
    let x_4023 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4021.x, x_4021.y, x_4021.z), vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
    let x_4026 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4026, 0.0f, 1.0f);
    let x_4028 : f32 = u_xlat80;
    let x_4029 : f32 = u_xlat80;
    u_xlat80 = (x_4028 * x_4029);
    let x_4031 : f32 = u_xlat80;
    let x_4033 : f32 = u_xlat0.x;
    u_xlat80 = ((x_4031 * x_4033) + 1.00001001358032226562f);
    let x_4036 : f32 = u_xlat81;
    let x_4037 : f32 = u_xlat81;
    u_xlat81 = (x_4036 * x_4037);
    let x_4039 : f32 = u_xlat80;
    let x_4040 : f32 = u_xlat80;
    u_xlat80 = (x_4039 * x_4040);
    let x_4042 : f32 = u_xlat81;
    u_xlat81 = max(x_4042, 0.10000000149011611938f);
    let x_4044 : f32 = u_xlat80;
    let x_4045 : f32 = u_xlat81;
    u_xlat80 = (x_4044 * x_4045);
    let x_4047 : f32 = u_xlat78;
    let x_4048 : f32 = u_xlat80;
    u_xlat80 = (x_4047 * x_4048);
    let x_4050 : f32 = u_xlat76;
    let x_4051 : f32 = u_xlat80;
    u_xlat80 = (x_4050 / x_4051);
    let x_4053 : vec4<f32> = u_xlat5;
    let x_4055 : f32 = u_xlat80;
    let x_4058 : vec4<f32> = u_xlat6;
    let x_4060 : vec3<f32> = ((vec3<f32>(x_4053.x, x_4053.y, x_4053.z) * vec3<f32>(x_4055, x_4055, x_4055)) + vec3<f32>(x_4058.x, x_4058.y, x_4058.z));
    let x_4061 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4060.x, x_4060.y, x_4060.z, x_4061.w);
    let x_4063 : vec4<f32> = u_xlat8;
    let x_4065 : vec4<f32> = u_xlat10;
    let x_4068 : vec4<f32> = u_xlat3;
    let x_4070 : vec3<f32> = ((vec3<f32>(x_4063.x, x_4063.y, x_4063.z) * vec3<f32>(x_4065.x, x_4065.y, x_4065.z)) + vec3<f32>(x_4068.x, x_4068.y, x_4068.z));
    let x_4071 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_4070.x, x_4070.y, x_4070.z, x_4071.w);

    continuing {
      let x_4073 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4073 + bitcast<u32>(1i));
    }
  }
  let x_4075 : vec4<f32> = u_xlat4;
  let x_4077 : f32 = u_xlat25;
  let x_4080 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4075.x, x_4075.y, x_4075.z) * vec3<f32>(x_4077, x_4077, x_4077)) + vec3<f32>(x_4080.x, x_4080.y, x_4080.z));
  let x_4083 : vec4<f32> = u_xlat3;
  let x_4085 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4083.x, x_4083.y, x_4083.z) + x_4085);
  let x_4089 : f32 = u_xlat75;
  let x_4091 : vec3<f32> = u_xlat0;
  let x_4092 : vec3<f32> = (vec3<f32>(x_4089, x_4089, x_4089) * x_4091);
  let x_4093 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4092.x, x_4092.y, x_4092.z, x_4093.w);
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


